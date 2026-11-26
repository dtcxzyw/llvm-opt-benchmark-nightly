Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zDecode?download=true
inline.NumInlined: 267
inline.NumDeleted: 143
begin_hunk_0_@_ZNK8NArchive3N7z7CFolder14CheckStructureEv

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef i32 @_Z11CreateCoderyR9CMyComPtrI14ICompressCoderERS_I15ICompressCoder2Eb(i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN11NCoderMixer14CCoderMixer2MT8AddCoderEP14ICompressCoder(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #3

declare void @_ZN11NCoderMixer14CCoderMixer2MT9AddCoder2EP15ICompressCoder2(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #3

declare void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15CLockedInStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !188 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #15 ; 0 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !74     ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN9CMyComPtrI9IInStreamED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN9CMyComPtrI9IInStreamED2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #16
  unreachable

_ZN9CMyComPtrI9IInStreamED2Ev.exit:               ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !guid !189 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE, i64 16), ptr %0, align 8, !tbaa !54
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #16
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !guid !190 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

declare void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorIN11NCoderMixer9CBindPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !guid !191 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorIjED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !guid !192 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorIyED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !guid !193 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

declare i32 @CriticalSection_Init(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !guid !194 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI13CStreamBinderED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !guid !195 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI13CStreamBinderE, i64 16), ptr %0, align 8, !tbaa !54
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #16
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI13CStreamBinderED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !guid !196 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI13CStreamBinderE, i64 16), ptr %0, align 8, !tbaa !54
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI13CStreamBinderED2Ev.exit unwind label %bb.b, !inline_history !197

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #16, !inline_history !197
  unreachable

_ZN13CObjectVectorI13CStreamBinderED2Ev.exit:     ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15, !inline_history !197
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI13CStreamBinderE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !199 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !75   ; 2 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %1
  %spec.select = select i1 %i.d, i32 %i.e, i32 %2 ; 3 uses
  %i.f = icmp sgt i32 %spec.select, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %1 to i64
  %i.i = zext nneg i32 %spec.select to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.g, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81   ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 152 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !205  ; 5 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i8, ptr %i.q, align 8, !tbaa !207, !range !83, !noundef !84
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(89) %i.p) #15 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.v = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.u) #15 ; 0 uses
  br label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 96) #18
  br label %bb.e

bb.e:                                             ; preds = %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i, %bb.b
  store ptr null, ptr %i.o, align 8, !tbaa !205
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, i64 16), ptr %i.w, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  store ptr null, ptr %i.x, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.z = invoke noundef i32 @Event_Close(ptr noundef nonnull align 8 dereferenceable(104) %i.y)
          to label %_ZN13CStreamBinderD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #16
  unreachable

_ZN13CStreamBinderD2Ev.exit:                      ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 184) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN13CStreamBinderD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.ac, label %bb.a, label %._crit_edge, !llvm.loop !198
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #8 comdat align 2 !guid !209 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !210, !range !83, !noundef !84
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !83
  %i.f = icmp eq i8 %i.e, 0
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !210
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

declare i32 @Event_Close(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !guid !211 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE, i64 16), ptr %0, align 8, !tbaa !54
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #16
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !guid !212 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE, i64 16), ptr %0, align 8, !tbaa !54
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev.exit unwind label %bb.b, !inline_history !213

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #16, !inline_history !213
  unreachable

_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15, !inline_history !213
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !guid !215 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !75   ; 2 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %1
  %spec.select = select i1 %i.d, i32 %i.e, i32 %2 ; 3 uses
  %i.f = icmp sgt i32 %spec.select, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %1 to i64
  %i.i = zext nneg i32 %spec.select to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.c, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11NCoderMixer7CCoder2D2Ev(ptr noundef nonnull align 8 dereferenceable(528) %i.m) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 528) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.o, label %bb.a, label %._crit_edge, !llvm.loop !214
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11NCoderMixer7CCoder2D2Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !216 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN11NCoderMixer7CCoder2E, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE, i64 16), ptr %i.c, align 8, !tbaa !54
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit unwind label %bb.b, !inline_history !96

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #16, !inline_history !96
  unreachable

_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.c) #15, !inline_history !96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE, i64 16), ptr %i.f, align 8, !tbaa !54
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev.exit unwind label %bb.c, !inline_history !92

bb.c:                                             ; preds = %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #16, !inline_history !92
  unreachable

_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev.exit: ; preds = %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.f) #15, !inline_history !92
  tail call void @_ZN11CVirtThreadD2Ev(ptr noundef nonnull align 8 dead_on_return(233) dereferenceable(233) %0) #15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.j) #15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.k) #15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.l) #15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.m) #15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57   ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
begin_hunk_1_@_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.f = icmp sgt i32 %spec.select, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %1 to i64
  %i.i = zext nneg i32 %spec.select to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.e, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !79   ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #16
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit:    ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 8) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.v, label %bb.a, label %._crit_edge, !llvm.loop !233
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorIPKyED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !guid !235 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorIP19ISequentialInStreamED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !guid !236 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 7206244694728513739}
!9 = !{i64 4648688732215770415}
!10 = !{i64 904767894777312273}
!11 = !{i64 -196179500820939869}
!12 = !{i64 1225385758450181404}
!13 = !{i64 1591089372761494124}
!14 = !{i64 -2357982957243469772}
!15 = !{i64 2797198979667570308}
!16 = !{i64 534013326929199596}
!17 = !{i64 2378692183462229948}
!18 = !{i64 8342018034014008073}
!19 = !{i64 6673675245393771740}
!20 = !{i64 -201808936931505194}
!21 = !{i64 -8179015505035221015}
!22 = !{i64 3399393432502045903}
!23 = !{i64 -2758025757960456477}
!24 = !{i64 8265701763040414963}
!25 = !{i64 -5923388208327188831}
!26 = !{i64 1843954169970662034}
!27 = !{i64 1744373971489917586}
!28 = !{i64 -7921077387510476236}
!29 = !{i64 -4059459206514989949}
!30 = !{i64 -3795856331100511739}
!31 = !{i64 -7853226771528610836}
!32 = !{i64 -7854124542988117542}
!33 = !{i64 -3280684831830074477}
!34 = !{i64 438911576511307786}
!35 = !{i64 6710862722392386124}
!36 = !{i64 9142897609572956399}
!37 = !{i64 5446937401738543219}
!38 = !{i64 -5970227551696629177}
!39 = !{i64 -6758296391648769004}
!40 = !{i64 1832701141469566732}
!41 = !{i64 -7515025906892751557}
!42 = !{i64 5769385860419049722}
!43 = !{i64 8942958002015837760}
!44 = !{i64 8435138676539413598}
!45 = !{i64 -6396781329095498816}
!46 = !{i64 -7605877868034889694}
!47 = !{i64 -5919647739334487566}
!48 = !{i64 8184485904000031293}
!49 = !{!"any pointer", !5, i64 0}
!50 = !{!"long", !5, i64 0}
!51 = !{!"_ZTS17CBaseRecordVector", !6, i64 8, !6, i64 12, !49, i64 16, !50, i64 24}
!52 = !{!51, !50, i64 24}
!53 = !{!"vtable pointer", !4, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"p1 _ZTS15ICompressCoder2", !49, i64 0}
!56 = !{!"_ZTS9CMyComPtrI15ICompressCoder2E", !55, i64 0}
!57 = !{!56, !55, i64 0}
!58 = !{!"bool", !5, i64 0}
!59 = !{!"_ZTS13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEE", !51, i64 0}
!60 = !{!"_ZTS13CRecordVectorIN11NCoderMixer9CBindPairEE", !51, i64 0}
!61 = !{!"_ZTS13CRecordVectorIjE", !51, i64 0}
!62 = !{!"_ZTSN11NCoderMixer9CBindInfoE", !59, i64 0, !60, i64 32, !61, i64 64, !61, i64 96}
!63 = !{!"_ZTS13CRecordVectorIyE", !51, i64 0}
!64 = !{!"_ZTSN8NArchive3N7z11CBindInfoExE", !62, i64 0, !63, i64 128}
!65 = !{!"p1 _ZTSN11NCoderMixer14CCoderMixer2MTE", !49, i64 0}
!66 = !{!"p1 _ZTSN11NCoderMixer12CCoderMixer2E", !49, i64 0}
!67 = !{!"_ZTS13CRecordVectorIPvE", !51, i64 0}
!68 = !{!"_ZTS13CObjectVectorI9CMyComPtrI8IUnknownEE", !67, i64 0}
!69 = !{!"_ZTSN8NArchive3N7z8CDecoderE", !58, i64 0, !64, i64 8, !58, i64 168, !65, i64 176, !66, i64 184, !56, i64 192, !68, i64 200}
!70 = !{!69, !58, i64 168}
!71 = !{!69, !58, i64 0}
!72 = !{!"p1 _ZTS9IInStream", !49, i64 0}
!73 = !{!"_ZTS9CMyComPtrI9IInStreamE", !72, i64 0}
!74 = !{!73, !72, i64 0}
!75 = !{!51, !6, i64 12}
!76 = !{!"long long", !5, i64 0}
!77 = !{!"p1 _ZTS19ISequentialInStream", !49, i64 0}
!78 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !77, i64 0}
!79 = !{!78, !77, i64 0}
!80 = !{!51, !49, i64 16}
!81 = !{!49, !49, i64 0}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{i8 0, i8 2}
!84 = !{}
!85 = !{!"p1 _ZTS14ICompressCoder", !49, i64 0}
!86 = !{!"_ZTS9CMyComPtrI14ICompressCoderE", !85, i64 0}
!87 = !{!86, !85, i64 0}
!88 = !{!"p1 _ZTS8IUnknown", !49, i64 0}
!89 = !{!"_ZTS9CMyComPtrI8IUnknownE", !88, i64 0}
!90 = !{!89, !88, i64 0}
!91 = !{!"p1 _ZTS20ISequentialOutStream", !49, i64 0}
!92 = !{ptr @_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev}
!93 = !{!"p1 _ZTSN8NWindows16NSynchronization8CSynchroE", !49, i64 0}
!94 = !{!"_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE", !93, i64 8}
!95 = !{!"_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE", !94, i64 0, !58, i64 16, !58, i64 17}
!96 = !{ptr @_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev}
!97 = !{i64 -8540958033177551450}
!98 = !{i64 4726953570768109800}
!99 = distinct !{null}
!100 = distinct !{null}
!101 = distinct !{null}
!102 = distinct !{null}
!103 = distinct !{!103, !82}
!104 = distinct !{!104, !82}
!105 = distinct !{!105, !82}
!106 = distinct !{!106, !82}
!107 = distinct !{!107, !82}
!108 = distinct !{!108, !82}
!109 = distinct !{!109, !82}
!110 = distinct !{!110, !82}
!111 = distinct !{!111, !82}
!112 = distinct !{null}
!113 = distinct !{null}
!114 = distinct !{!114, !82}
!115 = distinct !{null}
!116 = distinct !{null}
!117 = distinct !{!117, !82}
!118 = distinct !{!118, !82}
!119 = distinct !{null}
!120 = distinct !{null}
!121 = distinct !{null}
!122 = distinct !{!122, !82}
!123 = distinct !{!123, !82, !172, !173}
!124 = distinct !{!124, !82, !173, !172}
!125 = distinct !{null}
!126 = distinct !{!126, !82}
!127 = distinct !{!127, !82}
!128 = distinct !{!128, !82}
!129 = distinct !{!129, !82}
!130 = distinct !{!130, !82}
!131 = distinct !{!131, !82}
!132 = !{i64 1951620259134656183}
!133 = !{!58, !58, i64 0}
!134 = !{!"_ZTS13CMyUnknownImp", !6, i64 0}
!135 = !{!134, !6, i64 0}
!136 = !{!"_ZTS8IUnknown"}
!137 = !{!"_ZTS19ISequentialInStream", !136, i64 0}
!138 = !{!"p1 _ZTS15CLockedInStream", !49, i64 0}
!139 = !{!"_ZTS28CLockedSequentialInStreamImp", !137, i64 0, !134, i64 8, !138, i64 16, !76, i64 24}
!140 = !{!139, !138, i64 16}
!141 = !{!139, !76, i64 24}
!142 = !{!76, !76, i64 0}
!143 = !{!"_ZTS26CLimitedSequentialInStream", !137, i64 0, !134, i64 8, !78, i64 16, !76, i64 24, !76, i64 32, !58, i64 40}
!144 = !{!143, !76, i64 24}
!145 = !{!143, !76, i64 32}
!146 = !{!143, !58, i64 40}
!147 = !{!"p1 omnipotent char", !49, i64 0}
!148 = !{!"_ZTS7CBufferIhE", !50, i64 8, !147, i64 16}
!149 = !{!"_ZTSN8NArchive3N7z10CCoderInfoE", !76, i64 0, !148, i64 8, !6, i64 32, !6, i64 36}
!150 = !{!149, !76, i64 0}
!151 = !{!"_ZTSN8NArchive3N7z9CBindPairE", !6, i64 0, !6, i64 4}
!152 = !{!151, !6, i64 4}
!153 = !{!69, !66, i64 184}
!154 = !{!69, !65, i64 176}
!155 = !{!149, !6, i64 32}
!156 = !{!"p1 _ZTS30ICompressSetDecoderProperties2", !49, i64 0}
!157 = !{!"_ZTS9CMyComPtrI30ICompressSetDecoderProperties2E", !156, i64 0}
!158 = !{!157, !156, i64 0}
!159 = !{!148, !50, i64 8}
!160 = !{!148, !147, i64 16}
!161 = !{!"p1 _ZTS19ICompressSetCoderMt", !49, i64 0}
!162 = !{!"_ZTS9CMyComPtrI19ICompressSetCoderMtE", !161, i64 0}
!163 = !{!162, !161, i64 0}
!164 = !{!"p1 _ZTS18ICryptoSetPassword", !49, i64 0}
!165 = !{!"_ZTS9CMyComPtrI18ICryptoSetPasswordE", !164, i64 0}
!166 = !{!165, !164, i64 0}
!167 = !{!"p1 wchar_t", !49, i64 0}
!168 = !{!"_ZTS10CMyComBSTR", !167, i64 0}
!169 = !{!168, !167, i64 0}
!170 = !{!"wchar_t", !5, i64 0}
!171 = !{!170, !170, i64 0}
!172 = !{!"llvm.loop.isvectorized", i32 1}
!173 = !{!"llvm.loop.unroll.runtime.disable"}
!174 = !{!149, !6, i64 36}
!175 = !{!"p1 long long", !49, i64 0}
!176 = !{!175, !175, i64 0}
!177 = !{!151, !6, i64 0}
!178 = !{!"_ZTSN11NCoderMixer17CCoderStreamsInfoE", !6, i64 0, !6, i64 4}
!179 = !{!178, !6, i64 4}
!180 = !{!"_ZTS15ICompressCoder2", !136, i64 0}
!181 = !{!"_ZTSN11NCoderMixer12CCoderMixer2E"}
!182 = !{!"_ZTS13CObjectVectorI13CStreamBinderE", !67, i64 0}
!183 = !{!"_ZTS13CObjectVectorIN11NCoderMixer7CCoder2EE", !67, i64 0}
!184 = !{!"_ZTSN11NCoderMixer14CCoderMixer2MTE", !180, i64 0, !181, i64 8, !134, i64 16, !62, i64 24, !182, i64 152, !6, i64 184, !183, i64 192}
!185 = !{!184, !6, i64 184}
!186 = !{!77, !77, i64 0}
!187 = !{!91, !91, i64 0}
!188 = !{i64 468547310945319523}
!189 = !{i64 -3413900965019301728}
!190 = !{i64 -5062565116786718582}
!191 = !{i64 -6776685252258189163}
!192 = !{i64 39856519780484159}
!193 = !{i64 99019300593077129}
!194 = !{i64 1080103601501470593}
!195 = !{i64 -2056916672551068818}
!196 = !{i64 2059703897934359055}
!197 = !{ptr @_ZN13CObjectVectorI13CStreamBinderED2Ev}
!198 = distinct !{!198, !82}
!199 = !{i64 -7961361927749557143}
!200 = !{!"_ZTSN8NWindows16NSynchronization21CManualResetEventWFMOE", !95, i64 0}
!201 = !{!"_ZTS7_CEvent", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 16, !5, i64 56}
!202 = !{!"_ZTSN8NWindows16NSynchronization10CBaseEventE", !201, i64 0}
!203 = !{!"_ZTSN8NWindows16NSynchronization17CManualResetEventE", !202, i64 0}
!204 = !{!"_ZTS13CStreamBinder", !200, i64 0, !203, i64 24, !200, i64 128, !93, i64 152, !6, i64 160, !49, i64 168, !76, i64 176}
!205 = !{!204, !93, i64 152}
!206 = !{!"_ZTSN8NWindows16NSynchronization8CSynchroE", !5, i64 0, !5, i64 40, !58, i64 88}
!207 = !{!206, !58, i64 88}
!208 = !{!94, !93, i64 8}
!209 = !{i64 -6936584376918989111}
!210 = !{!95, !58, i64 17}
!211 = !{i64 2575555558914779206}
!212 = !{i64 -5170317499909986550}
!213 = !{ptr @_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev}
!214 = distinct !{!214, !82}
!215 = !{i64 -9178871974130344495}
!216 = !{i64 3174189784598020177}
!217 = !{i64 -9001468274486135622}
!218 = !{i64 -4627315857636348946}
!219 = distinct !{!219, !82}
!220 = !{i64 8488033380117880321}
!221 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !91, i64 0}
!222 = !{!221, !91, i64 0}
!223 = distinct !{!223, !82}
!224 = distinct !{!224, !82}
!225 = distinct !{!225, !82}
!226 = !{i64 -2052515889378894433}
!227 = !{i64 3622740357086609239}
!228 = !{i64 5555327303499003375}
!229 = !{ptr @_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev}
!230 = distinct !{!230, !82}
!231 = !{i64 1622285424565614670}
!232 = !{i64 4351771414220217136}
!233 = distinct !{!233, !82}
!234 = !{i64 -3917949675197780112}
!235 = !{i64 -4114115721972883703}
!236 = !{i64 2290745218108562436}
end_hunk_1
