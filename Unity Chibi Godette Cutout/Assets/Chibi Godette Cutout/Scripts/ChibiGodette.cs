using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace ChibiGodetteCutout {

    public class ChibiGodette : MonoBehaviour {


        public Sprite mainFace;
        public SpriteRenderer faceRenderer;
        public AnimationClip[] animationClips;
        public AnimationClip placeHolderClip;

        private AnimatorOverrideController animatorOverride;
        private Animator animator;


        private void Start() {
            animator = GetComponentInChildren<Animator>();
            animatorOverride = new AnimatorOverrideController(animator.runtimeAnimatorController);
            animator.runtimeAnimatorController = animatorOverride;
 
        }


        public void ChangeAnimationClip(int index) {

            faceRenderer.sprite = mainFace;
            animatorOverride[placeHolderClip] = animationClips[index];
            animator.Play("Idle", 0, 0f);
        }

    }

}
