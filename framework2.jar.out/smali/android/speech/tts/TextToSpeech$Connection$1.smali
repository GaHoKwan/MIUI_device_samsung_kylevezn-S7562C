.class Landroid/speech/tts/TextToSpeech$Connection$1;
.super Landroid/speech/tts/ITextToSpeechCallback$Stub;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/tts/TextToSpeech$Connection;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech$Connection;)V
    .locals 0
    .parameter

    .prologue
    .line 1277
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 2
    .parameter "utteranceId"

    .prologue
    .line 1280
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$800(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 1281
    .local v0, listener:Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 1282
    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    .line 1284
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .parameter "utteranceId"

    .prologue
    .line 1288
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$800(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 1289
    .local v0, listener:Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 1290
    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    .line 1292
    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 2
    .parameter "utteranceId"

    .prologue
    .line 1296
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$800(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .line 1297
    .local v0, listener:Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    .line 1298
    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Ljava/lang/String;)V

    .line 1300
    :cond_0
    return-void
.end method
