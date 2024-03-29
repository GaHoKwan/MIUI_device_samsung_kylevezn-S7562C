.class final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$PrivateHandler;,
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;,
        Landroid/view/AccessibilityInteractionController$SomeArgs;
    }
.end annotation


# static fields
.field private static final POOL_SIZE:I = 0x5


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mMyLooperThreadId:J

.field private final mMyProcessId:I

.field private final mPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/view/AccessibilityInteractionController$SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

.field private mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 3
    .parameter "viewRootImpl"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 79
    new-instance v1, Landroid/view/AccessibilityInteractionController$1;

    invoke-direct {v1, p0}, Landroid/view/AccessibilityInteractionController$1;-><init>(Landroid/view/AccessibilityInteractionController;)V

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v1

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    .line 68
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 69
    .local v0, looper:Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    .line 70
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    .line 71
    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 73
    new-instance v1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 74
    return-void
.end method

.method static synthetic access$300(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->perfromAccessibilityActionUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByViewIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    return-void
.end method

.method private findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 12
    .parameter "message"

    .prologue
    const/4 v9, 0x0

    .line 174
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 176
    .local v3, flags:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 177
    .local v1, args:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iget v0, v1, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 178
    .local v0, accessibilityViewId:I
    iget v8, v1, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 179
    .local v8, virtualDescendantId:I
    iget v5, v1, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 180
    .local v5, interactionId:I
    iget-object v2, v1, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 183
    .local v2, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v6, v1, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 184
    .local v6, moreArgs:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v11, v6, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    iput v11, v10, Landroid/view/View$AttachInfo;->mActualWindowLeft:I

    .line 185
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v11, v6, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    iput v11, v10, Landroid/view/View$AttachInfo;->mActualWindowTop:I

    .line 187
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v10, v6}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 188
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v10, v1}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 190
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 191
    .local v4, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 193
    :try_start_0
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 209
    :cond_0
    :try_start_1
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 210
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 211
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    :goto_0
    return-void

    .line 196
    :cond_1
    :try_start_2
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    and-int/lit8 v11, v3, 0x8

    if-eqz v11, :cond_2

    const/4 v9, 0x1

    :cond_2
    iput-boolean v9, v10, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 198
    const/4 v7, 0x0

    .line 199
    .local v7, root:Landroid/view/View;
    const/4 v9, -0x1

    if-ne v0, v9, :cond_4

    .line 200
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 204
    :goto_1
    if-eqz v7, :cond_3

    invoke-direct {p0, v7}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 205
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    invoke-virtual {v9, v7, v8, v3, v4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    :cond_3
    :try_start_3
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 210
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 211
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 212
    .end local v7           #root:Landroid/view/View;
    :catch_0
    move-exception v9

    goto :goto_0

    .line 202
    .restart local v7       #root:Landroid/view/View;
    :cond_4
    :try_start_4
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    goto :goto_1

    .line 208
    .end local v7           #root:Landroid/view/View;
    :catchall_0
    move-exception v9

    .line 209
    :try_start_5
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 210
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 211
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 208
    :goto_2
    throw v9

    .line 212
    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method private findAccessibilityNodeInfoByViewIdUiThread(Landroid/os/Message;)V
    .locals 13
    .parameter "message"

    .prologue
    const/4 v10, 0x0

    .line 252
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 253
    .local v3, flags:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 255
    .local v0, accessibilityViewId:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 256
    .local v1, args:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iget v9, v1, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 257
    .local v9, viewId:I
    iget v5, v1, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 258
    .local v5, interactionId:I
    iget-object v2, v1, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 261
    .local v2, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v6, v1, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 262
    .local v6, moreArgs:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v12, v6, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    iput v12, v11, Landroid/view/View$AttachInfo;->mActualWindowLeft:I

    .line 263
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v12, v6, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    iput v12, v11, Landroid/view/View$AttachInfo;->mActualWindowTop:I

    .line 265
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v11, v6}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 266
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v11, v1}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 268
    const/4 v4, 0x0

    .line 270
    .local v4, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_1

    .line 289
    :cond_0
    :try_start_1
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 290
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    :goto_0
    return-void

    .line 273
    :cond_1
    :try_start_2
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    and-int/lit8 v12, v3, 0x8

    if-eqz v12, :cond_2

    const/4 v10, 0x1

    :cond_2
    iput-boolean v10, v11, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 275
    const/4 v7, 0x0

    .line 276
    .local v7, root:Landroid/view/View;
    const/4 v10, -0x1

    if-eq v0, v10, :cond_4

    .line 277
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v7

    .line 281
    :goto_1
    if-eqz v7, :cond_3

    .line 282
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 283
    .local v8, target:Landroid/view/View;
    if-eqz v8, :cond_3

    invoke-direct {p0, v8}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 284
    invoke-virtual {v8}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 289
    .end local v8           #target:Landroid/view/View;
    :cond_3
    :try_start_3
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 290
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 291
    .end local v7           #root:Landroid/view/View;
    :catch_0
    move-exception v10

    goto :goto_0

    .line 279
    .restart local v7       #root:Landroid/view/View;
    :cond_4
    :try_start_4
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 288
    .end local v7           #root:Landroid/view/View;
    :catchall_0
    move-exception v10

    .line 289
    :try_start_5
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 290
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 288
    :goto_2
    throw v10

    .line 291
    :catch_1
    move-exception v11

    goto :goto_2
.end method

.method private findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .locals 21
    .parameter "message"

    .prologue
    .line 332
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 334
    .local v5, flags:I
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 335
    .local v3, args:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iget-object v15, v3, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 336
    .local v15, text:Ljava/lang/String;
    iget v2, v3, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 337
    .local v2, accessibilityViewId:I
    iget v0, v3, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    move/from16 v17, v0

    .line 338
    .local v17, virtualDescendantId:I
    iget v11, v3, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 340
    .local v11, interactionId:I
    iget-object v12, v3, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v12, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 341
    .local v12, moreArgs:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iget-object v4, v12, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 343
    .local v4, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v18, v0

    iget v0, v12, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/View$AttachInfo;->mActualWindowLeft:I

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v18, v0

    iget v0, v12, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/View$AttachInfo;->mActualWindowTop:I

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 349
    const/4 v9, 0x0

    .line 351
    .local v9, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v18, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v18, :cond_1

    .line 398
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 399
    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 404
    :goto_0
    return-void

    .line 354
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v19, v0

    and-int/lit8 v18, v5, 0x8

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 356
    const/4 v14, 0x0

    .line 357
    .local v14, root:Landroid/view/View;
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_4

    .line 358
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v14

    .line 362
    :goto_2
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 363
    invoke-virtual {v14}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v13

    .line 364
    .local v13, provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v13, :cond_5

    .line 365
    move/from16 v0, v17

    invoke-virtual {v13, v15, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 398
    .end local v13           #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 399
    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 400
    .end local v14           #root:Landroid/view/View;
    :catch_0
    move-exception v18

    goto :goto_0

    .line 354
    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 360
    .restart local v14       #root:Landroid/view/View;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_2

    .line 367
    .restart local v13       #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_5
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 368
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 369
    .local v7, foundViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 370
    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-virtual {v14, v7, v15, v0}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 373
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    .line 374
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 375
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 376
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 377
    .local v16, viewCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    move/from16 v0, v16

    if-ge v8, v0, :cond_2

    .line 378
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 379
    .local v6, foundView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 380
    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v13

    .line 381
    if-eqz v13, :cond_7

    .line 382
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v13, v15, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 385
    .local v10, infosFromProvider:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v10, :cond_6

    .line 386
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 377
    .end local v10           #infosFromProvider:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 389
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 397
    .end local v6           #foundView:Landroid/view/View;
    .end local v7           #foundViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v8           #i:I
    .end local v13           #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v14           #root:Landroid/view/View;
    .end local v16           #viewCount:I
    :catchall_0
    move-exception v18

    .line 398
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 399
    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 397
    :goto_5
    throw v18

    .line 400
    :catch_1
    move-exception v19

    goto :goto_5
.end method

.method private findFocusUiThread(Landroid/os/Message;)V
    .locals 17
    .parameter "message"

    .prologue
    .line 440
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 441
    .local v4, flags:I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 443
    .local v5, focusType:I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 444
    .local v2, args:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iget v8, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 445
    .local v8, interactionId:I
    iget v1, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 446
    .local v1, accessibilityViewId:I
    iget v13, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 447
    .local v13, virtualDescendantId:I
    iget-object v3, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 450
    .local v3, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v9, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 451
    .local v9, moreArgs:Landroid/view/AccessibilityInteractionController$SomeArgs;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v15, v9, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    iput v15, v14, Landroid/view/View$AttachInfo;->mActualWindowLeft:I

    .line 452
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v15, v9, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    iput v15, v14, Landroid/view/View$AttachInfo;->mActualWindowTop:I

    .line 454
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v14, v9}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v14, v2}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 457
    const/4 v6, 0x0

    .line 459
    .local v6, focused:Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_1

    .line 504
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 505
    invoke-interface {v3, v6, v8}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    :goto_0
    return-void

    .line 462
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v15, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    and-int/lit8 v14, v4, 0x8

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    :goto_1
    iput-boolean v14, v15, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 464
    const/4 v11, 0x0

    .line 465
    .local v11, root:Landroid/view/View;
    const/4 v14, -0x1

    if-eq v1, v14, :cond_3

    .line 466
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v11

    .line 470
    :goto_2
    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 471
    packed-switch v5, :pswitch_data_0

    .line 499
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown focus type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    .end local v11           #root:Landroid/view/View;
    :catchall_0
    move-exception v14

    .line 504
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v15, v15, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 505
    invoke-interface {v3, v6, v8}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 503
    :goto_3
    throw v14

    .line 462
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 468
    .restart local v11       #root:Landroid/view/View;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_2

    .line 473
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v14, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 476
    .local v7, host:Landroid/view/View;
    if-eqz v7, :cond_4

    invoke-static {v7, v11}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v14

    if-nez v14, :cond_5

    .line 504
    .end local v7           #host:Landroid/view/View;
    :cond_4
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 505
    invoke-interface {v3, v6, v8}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 506
    .end local v11           #root:Landroid/view/View;
    :catch_0
    move-exception v14

    goto :goto_0

    .line 481
    .restart local v7       #host:Landroid/view/View;
    .restart local v11       #root:Landroid/view/View;
    :cond_5
    :try_start_6
    invoke-virtual {v7}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v10

    .line 482
    .local v10, provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v10, :cond_6

    .line 483
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v14, :cond_4

    .line 484
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    goto :goto_4

    .line 487
    :cond_6
    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    .line 488
    invoke-virtual {v7}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    goto :goto_4

    .line 493
    .end local v7           #host:Landroid/view/View;
    .end local v10           #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    :pswitch_1
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 494
    .local v12, target:Landroid/view/View;
    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 495
    invoke-virtual {v12}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    goto :goto_4

    .line 506
    .end local v11           #root:Landroid/view/View;
    .end local v12           #target:Landroid/view/View;
    :catch_1
    move-exception v15

    goto :goto_3

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findViewByAccessibilityId(I)Landroid/view/View;
    .locals 4
    .parameter "accessibilityId"

    .prologue
    const/4 v2, 0x0

    .line 698
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 699
    .local v1, root:Landroid/view/View;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 706
    :cond_0
    :goto_0
    return-object v0

    .line 702
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 703
    .local v0, foundView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 704
    goto :goto_0
.end method

.method private focusSearchUiThread(Landroid/os/Message;)V
    .locals 16
    .parameter "message"

    .prologue
    .line 546
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 547
    .local v5, flags:I
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    .line 549
    .local v1, accessibilityViewId:I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 550
    .local v2, args:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iget v12, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 551
    .local v12, virtualDescendantId:I
    iget v4, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 552
    .local v4, direction:I
    iget v6, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 553
    .local v6, interactionId:I
    iget-object v3, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 556
    .local v3, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v7, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 557
    .local v7, moreArgs:Landroid/view/AccessibilityInteractionController$SomeArgs;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v14, v7, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    iput v14, v13, Landroid/view/View$AttachInfo;->mActualWindowLeft:I

    .line 558
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v14, v7, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    iput v14, v13, Landroid/view/View$AttachInfo;->mActualWindowTop:I

    .line 560
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v13, v7}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v13, v2}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 563
    const/4 v8, 0x0

    .line 565
    .local v8, next:Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_1

    .line 613
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 614
    invoke-interface {v3, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 619
    :goto_0
    return-void

    .line 568
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    and-int/lit8 v13, v5, 0x8

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    :goto_1
    iput-boolean v13, v14, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 570
    const/4 v11, 0x0

    .line 571
    .local v11, root:Landroid/view/View;
    const/4 v13, -0x1

    if-eq v1, v13, :cond_3

    .line 572
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v11

    .line 576
    :goto_2
    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 577
    and-int/lit16 v13, v4, 0x1000

    const/16 v14, 0x1000

    if-ne v13, v14, :cond_8

    .line 578
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v10

    .line 579
    .local v10, provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v10, :cond_4

    .line 580
    invoke-virtual {v10, v4, v12}, Landroid/view/accessibility/AccessibilityNodeProvider;->accessibilityFocusSearch(II)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 581
    if-eqz v8, :cond_4

    .line 613
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 614
    invoke-interface {v3, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 615
    .end local v10           #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v11           #root:Landroid/view/View;
    :catch_0
    move-exception v13

    goto :goto_0

    .line 568
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 574
    .restart local v11       #root:Landroid/view/View;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_2

    .line 585
    .restart local v10       #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4
    invoke-virtual {v11, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v9

    .line 586
    .local v9, nextView:Landroid/view/View;
    :goto_3
    if-eqz v9, :cond_5

    .line 592
    invoke-virtual {v9}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v10

    .line 593
    if-eqz v10, :cond_7

    .line 594
    const/4 v13, -0x1

    invoke-virtual {v10, v4, v13}, Landroid/view/accessibility/AccessibilityNodeProvider;->accessibilityFocusSearch(II)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    .line 595
    if-eqz v8, :cond_6

    .line 613
    .end local v9           #nextView:Landroid/view/View;
    .end local v10           #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_5
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 614
    invoke-interface {v3, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 598
    .restart local v9       #nextView:Landroid/view/View;
    .restart local v10       #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_6
    :try_start_6
    invoke-virtual {v9, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v9

    goto :goto_3

    .line 600
    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 601
    goto :goto_4

    .line 605
    .end local v9           #nextView:Landroid/view/View;
    .end local v10           #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_8
    invoke-virtual {v11, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v9

    .line 606
    .restart local v9       #nextView:Landroid/view/View;
    if-eqz v9, :cond_5

    .line 607
    invoke-virtual {v9}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v8

    goto :goto_4

    .line 612
    .end local v9           #nextView:Landroid/view/View;
    .end local v11           #root:Landroid/view/View;
    :catchall_0
    move-exception v13

    .line 613
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 614
    invoke-interface {v3, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 612
    :goto_5
    throw v13

    .line 615
    :catch_1
    move-exception v14

    goto :goto_5
.end method

.method private isShown(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 135
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private perfromAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 14
    .parameter "message"

    .prologue
    .line 652
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 653
    .local v5, flags:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 655
    .local v0, accessibilityViewId:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 656
    .local v2, args:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iget v10, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 657
    .local v10, virtualDescendantId:I
    iget v1, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 658
    .local v1, action:I
    iget v6, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 659
    .local v6, interactionId:I
    iget-object v4, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 661
    .local v4, callback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v3, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 663
    .local v3, arguments:Landroid/os/Bundle;
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v11, v2}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 665
    const/4 v8, 0x0

    .line 667
    .local v8, succeeded:Z
    :try_start_0
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_1

    .line 689
    :cond_0
    :try_start_1
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 690
    invoke-interface {v4, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 695
    :goto_0
    return-void

    .line 670
    :cond_1
    :try_start_2
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v12, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    and-int/lit8 v11, v5, 0x8

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v12, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 672
    const/4 v9, 0x0

    .line 673
    .local v9, target:Landroid/view/View;
    const/4 v11, -0x1

    if-eq v0, v11, :cond_4

    .line 674
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v9

    .line 678
    :goto_2
    if-eqz v9, :cond_2

    invoke-direct {p0, v9}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 679
    invoke-virtual {v9}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v7

    .line 680
    .local v7, provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v7, :cond_5

    .line 681
    invoke-virtual {v7, v10, v1, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    .line 689
    .end local v7           #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2
    :goto_3
    :try_start_3
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 690
    invoke-interface {v4, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 691
    .end local v9           #target:Landroid/view/View;
    :catch_0
    move-exception v11

    goto :goto_0

    .line 670
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 676
    .restart local v9       #target:Landroid/view/View;
    :cond_4
    :try_start_4
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_2

    .line 683
    .restart local v7       #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_5
    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 684
    invoke-virtual {v9, v1, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    goto :goto_3

    .line 688
    .end local v7           #provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v9           #target:Landroid/view/View;
    :catchall_0
    move-exception v11

    .line 689
    :try_start_5
    iget-object v12, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v12, v12, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    .line 690
    invoke-interface {v4, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 688
    :goto_4
    throw v11

    .line 691
    :catch_1
    move-exception v12

    goto :goto_4
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityIdClientThread(JIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 5
    .parameter "accessibilityNodeId"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 144
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 145
    .local v1, message:Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 146
    iput p7, v1, Landroid/os/Message;->arg1:I

    .line 148
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v3}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 149
    .local v0, args:Landroid/view/AccessibilityInteractionController$SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    iput v3, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 150
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    iput v3, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 151
    iput p5, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 152
    iput-object p6, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    .line 154
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v3}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v2

    check-cast v2, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 155
    .local v2, moreArgs:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iput p3, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 156
    iput p4, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 157
    iput-object v2, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    .line 159
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    iget v3, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p8, v3, :cond_0

    iget-wide v3, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v3, p9, v3

    if-nez v3, :cond_0

    .line 166
    invoke-static {p9, p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfoByViewIdClientThread(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 5
    .parameter "accessibilityNodeId"
    .parameter "viewId"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 222
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 223
    .local v1, message:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 224
    iput p8, v1, Landroid/os/Message;->arg1:I

    .line 225
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 227
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v3}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 228
    .local v0, args:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iput p3, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 229
    iput p6, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 230
    iput-object p7, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    .line 232
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v3}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v2

    check-cast v2, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 233
    .local v2, moreArgs:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iput p4, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 234
    iput p5, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 235
    iput-object v2, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    .line 237
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 243
    iget v3, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p9, v3, :cond_0

    iget-wide v3, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v3, p10, v3

    if-nez v3, :cond_0

    .line 244
    invoke-static/range {p10 .. p11}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 5
    .parameter "accessibilityNodeId"
    .parameter "text"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 301
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 302
    .local v1, message:Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v1, Landroid/os/Message;->what:I

    .line 303
    iput p8, v1, Landroid/os/Message;->arg1:I

    .line 305
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v3}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 306
    .local v0, args:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iput-object p3, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    .line 307
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    iput v3, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 308
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    iput v3, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 309
    iput p6, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 311
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v3}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v2

    check-cast v2, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 312
    .local v2, moreArgs:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iput-object p7, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    .line 313
    iput p4, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 314
    iput p5, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 315
    iput-object v2, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    .line 317
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 323
    iget v3, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p9, v3, :cond_0

    iget-wide v3, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v3, p10, v3

    if-nez v3, :cond_0

    .line 324
    invoke-static/range {p10 .. p11}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public findFocusClientThread(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 5
    .parameter "accessibilityNodeId"
    .parameter "focusType"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 409
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 410
    .local v1, message:Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->what:I

    .line 411
    iput p8, v1, Landroid/os/Message;->arg1:I

    .line 412
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 414
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v3}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 415
    .local v0, args:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iput p6, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 416
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    iput v3, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 417
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    iput v3, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 418
    iput-object p7, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    .line 420
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v3}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v2

    check-cast v2, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 421
    .local v2, moreArgs:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iput p4, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 422
    iput p5, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 423
    iput-object v2, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    .line 425
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 431
    iget v3, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p9, v3, :cond_0

    iget-wide v3, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v3, p10, v3

    if-nez v3, :cond_0

    .line 432
    invoke-static/range {p10 .. p11}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public focusSearchClientThread(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 5
    .parameter "accessibilityNodeId"
    .parameter "direction"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 515
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 516
    .local v1, message:Landroid/os/Message;
    const/4 v3, 0x6

    iput v3, v1, Landroid/os/Message;->what:I

    .line 517
    iput p8, v1, Landroid/os/Message;->arg1:I

    .line 518
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 520
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v3}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 521
    .local v0, args:Landroid/view/AccessibilityInteractionController$SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    iput v3, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 522
    iput p3, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 523
    iput p6, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 524
    iput-object p7, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    .line 526
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v3}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v2

    check-cast v2, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 527
    .local v2, moreArgs:Landroid/view/AccessibilityInteractionController$SomeArgs;
    iput p4, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 528
    iput p5, v2, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 529
    iput-object v2, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    .line 531
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 537
    iget v3, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p9, v3, :cond_0

    iget-wide v3, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v3, p10, v3

    if-nez v3, :cond_0

    .line 538
    invoke-static/range {p10 .. p11}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 4
    .parameter "accessibilityNodeId"
    .parameter "action"
    .parameter "arguments"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 625
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 626
    .local v1, message:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 627
    iput p7, v1, Landroid/os/Message;->arg1:I

    .line 628
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 630
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mPool:Landroid/util/Pool;

    invoke-interface {v2}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .line 631
    .local v0, args:Landroid/view/AccessibilityInteractionController$SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    iput v2, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 632
    iput p3, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 633
    iput p5, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 634
    iput-object p6, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    .line 635
    iput-object p4, v0, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    .line 637
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 643
    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p8, v2, :cond_0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v2, p9, v2

    if-nez v2, :cond_0

    .line 644
    invoke-static {p9, p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
