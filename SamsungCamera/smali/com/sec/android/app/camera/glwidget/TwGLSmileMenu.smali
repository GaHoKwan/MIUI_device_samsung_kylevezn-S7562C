.class public Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSmileMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_SIZE:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_Y:I = 0x0

.field private static final INT_10:I = 0xa

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field public static OnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener; = null

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SIDEMENU_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_BLINK_IMAGE_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_BLINK_IMAGE_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_BLINK_IMAGE_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_BLINK_IMAGE_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_RECT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_RECT_THICKNESS:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLSmileMenu"


# instance fields
.field public blinkAnimation:Landroid/view/animation/Animation;

.field private mBlinkImage:Lcom/sec/android/glview/TwGLImage;

.field private mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

.field public mHelpText:Lcom/sec/android/glview/TwGLText;

.field public mIsDetecting:Z

.field public mIsFrontCamera:Z

.field public mIsSelfFlipOn:Z

.field private mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPrevieWidth:I

.field private mPreviewResizeRatio:F

.field private mPreviewStartPositionX:I

.field private mPreviewStartPositionY:I

.field private mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const v0, 0x7f07001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    .line 36
    const v0, 0x7f07001d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    .line 37
    const v0, 0x7f080028

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_SIZE:F

    .line 38
    const v0, 0x7f070259

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    .line 39
    const v0, 0x7f0700a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    .line 40
    const v0, 0x7f0700a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_X:I

    .line 42
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_Y:I

    .line 43
    const v0, 0x7f070257

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_X:I

    .line 44
    const v0, 0x7f070258

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    .line 45
    const v0, 0x7f07001e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_WIDTH:I

    .line 46
    const v0, 0x7f07001f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_HEIGHT:I

    .line 48
    const v0, 0x7f07025a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_POS_X:I

    .line 49
    const v0, 0x7f070020

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_THICKNESS:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 12
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 83
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionX:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionY:I

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsFrontCamera:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsSelfFlipOn:Z

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPrevieWidth:I

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/glview/TwGLRectangle;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/glview/TwGLRectangle;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    .line 68
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setCaptureEnabled(Z)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 88
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0900e6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 91
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const v7, 0x7f020042

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    add-int/lit8 v3, v3, 0xa

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 103
    const v0, 0x7f040002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->blinkAnimation:Landroid/view/animation/Animation;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 116
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v0, 0x5

    if-ge v8, v0, :cond_0

    .line 117
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v10, 0x99

    const/4 v11, 0x0

    invoke-static {v6, v7, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_THICKNESS:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    aput-object v0, v9, v8

    .line 118
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/16 v10, 0xff

    const/4 v11, 0x0

    invoke-static {v6, v7, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_RECT_THICKNESS:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    aput-object v0, v9, v8

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 116
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 140
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->init()V

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SIDEMENU_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->HELP_TEXT_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 148
    return-void
.end method


# virtual methods
.method public cleanSmileRect()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 362
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 362
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_2
    return-void
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 266
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 241
    :cond_0
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 253
    return-void
.end method

.method public isDetecting()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    return v0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;->onSmileDetectingStopped()V

    .line 213
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 214
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;->onSmileDetectingStopped()V

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showPostCaptureLayout()V

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->hideHelpText()V

    .line 203
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    .line 229
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    .line 198
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 274
    const-string v0, "TwGLSmileMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 248
    :cond_0
    return-void
.end method

.method public setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    .line 194
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 270
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 235
    :cond_0
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 258
    return-void
.end method

.method public smileShotFaceRectChanged([B)V
    .locals 11
    .parameter "data"

    .prologue
    .line 282
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v6, 0x5

    if-ge v1, v6, :cond_3

    .line 283
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v2, v6, v7

    .line 286
    .local v2, left:I
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x5

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x6

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x7

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v5, v6, v7

    .line 289
    .local v5, top:I
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x8

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x9

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xa

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xb

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v3, v6, v7

    .line 292
    .local v3, right:I
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xc

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xd

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xe

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xf

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v0, v6, v7

    .line 298
    .local v0, bottom:I
    iget-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsFrontCamera:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsSelfFlipOn:Z

    if-nez v6, :cond_0

    .line 299
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPrevieWidth:I

    sub-int v2, v6, v2

    .line 300
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPrevieWidth:I

    sub-int v3, v6, v3

    .line 301
    move v4, v3

    .line 302
    .local v4, temp:I
    move v3, v2

    .line 303
    move v2, v4

    .line 305
    .end local v4           #temp:I
    :cond_0
    int-to-float v6, v2

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 306
    int-to-float v6, v5

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 307
    int-to-float v6, v3

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 308
    int-to-float v6, v0

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 310
    sub-int v6, v3, v2

    if-lez v6, :cond_2

    sub-int v6, v0, v5

    if-lez v6, :cond_2

    .line 311
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionX:I

    add-int/2addr v7, v2

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionY:I

    add-int/2addr v8, v5

    int-to-float v8, v8

    sub-int v9, v3, v2

    int-to-float v9, v9

    sub-int v10, v0, v5

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 312
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 282
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 313
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 314
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 315
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    goto :goto_1

    .line 318
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v5           #top:I
    :cond_3
    return-void
.end method

.method public smileShotSmileRectChanged([B)V
    .locals 11
    .parameter "data"

    .prologue
    .line 323
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v6, 0x5

    if-ge v1, v6, :cond_3

    .line 324
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v2, v6, v7

    .line 327
    .local v2, left:I
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x5

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x6

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x7

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v5, v6, v7

    .line 330
    .local v5, top:I
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x8

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0x9

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xa

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xb

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v3, v6, v7

    .line 333
    .local v3, right:I
    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xc

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xd

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xe

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x14

    add-int/lit8 v7, v7, 0xf

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v0, v6, v7

    .line 338
    .local v0, bottom:I
    iget-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsFrontCamera:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsSelfFlipOn:Z

    if-nez v6, :cond_0

    .line 339
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPrevieWidth:I

    sub-int v2, v6, v2

    .line 340
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPrevieWidth:I

    sub-int v3, v6, v3

    .line 341
    move v4, v3

    .line 342
    .local v4, temp:I
    move v3, v2

    .line 343
    move v2, v4

    .line 345
    .end local v4           #temp:I
    :cond_0
    int-to-float v6, v2

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 346
    int-to-float v6, v5

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 347
    int-to-float v6, v3

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 348
    int-to-float v6, v0

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 350
    sub-int v6, v3, v2

    if-lez v6, :cond_2

    sub-int v6, v0, v5

    if-lez v6, :cond_2

    .line 351
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionX:I

    add-int/2addr v7, v2

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionY:I

    add-int/2addr v8, v5

    int-to-float v8, v8

    sub-int v9, v3, v2

    int-to-float v9, v9

    sub-int v10, v0, v5

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 352
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 323
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 353
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 354
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 355
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    goto :goto_1

    .line 359
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v5           #top:I
    :cond_3
    return-void
.end method

.method public startDetect(III)V
    .locals 3
    .parameter "originalViewFinderWidth"
    .parameter "originalViewFinderHeight"
    .parameter "previewWidth"

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsFrontCamera:Z

    .line 156
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsSelfFlipOn:Z

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 162
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewResizeRatio:F

    .line 163
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPrevieWidth:I

    .line 164
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_WIDTH:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionX:I

    .line 165
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SCREEN_HEIGHT:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPreviewStartPositionY:I

    .line 166
    return-void
.end method

.method public stopDetect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 172
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 173
    return-void
.end method

.method public stopSmileShot()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenu()V

    .line 177
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    if-eq v0, v2, :cond_0

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 181
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    goto :goto_0
.end method
