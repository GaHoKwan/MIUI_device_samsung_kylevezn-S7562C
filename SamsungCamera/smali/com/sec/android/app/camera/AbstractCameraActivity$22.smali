.class Lcom/sec/android/app/camera/AbstractCameraActivity$22;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1862
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$22;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 1867
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$22;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 1868
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$22;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-boolean v2, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 1869
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$22;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-boolean v2, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    .line 1871
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$22;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$22;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/camera/CameraSettings;->mPreviousShootingMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 1872
    return-void
.end method
