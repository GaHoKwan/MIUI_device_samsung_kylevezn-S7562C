.class Lcom/android/server/wm/WindowAnimator$SetAnimationParams;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetAnimationParams"
.end annotation


# instance fields
.field final mAnimDh:I

.field final mAnimDw:I

.field final mAnimation:Landroid/view/animation/Animation;

.field final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowStateAnimator;Landroid/view/animation/Animation;II)V
    .locals 0
    .parameter "winAnimator"
    .parameter "animation"
    .parameter "animDw"
    .parameter "animDh"

    .prologue
    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$SetAnimationParams;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 607
    iput-object p2, p0, Lcom/android/server/wm/WindowAnimator$SetAnimationParams;->mAnimation:Landroid/view/animation/Animation;

    .line 608
    iput p3, p0, Lcom/android/server/wm/WindowAnimator$SetAnimationParams;->mAnimDw:I

    .line 609
    iput p4, p0, Lcom/android/server/wm/WindowAnimator$SetAnimationParams;->mAnimDh:I

    .line 610
    return-void
.end method
