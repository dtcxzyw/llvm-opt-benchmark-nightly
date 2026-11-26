Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/CoderMixer2MT?download=true
inline.NumInlined: 275
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11NCoderMixer7CCoder24CodeEP21ICompressProgressInfo:bb.a
._crit_edge36:                                    ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit, %.preheader
  ret void
}

declare void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11NCoderMixer7CCoder212SetCoderInfoEPPKyS3_(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 !guid !145 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load i32, ptr %i.c, align 8, !tbaa !81
  tail call fastcc void @_ZN11NCoderMixerL8SetSizesEPPKyR13CRecordVectorIyERS3_IS1_Ej(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.h = load i32, ptr %i.g, align 4, !tbaa !82
  tail call fastcc void @_ZN11NCoderMixerL8SetSizesEPPKyR13CRecordVectorIyERS3_IS1_Ej(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef %i.h)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11NCoderMixerL8SetSizesEPPKyR13CRecordVectorIyERS3_IS1_Ej(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #0 !guid !147 {
bb.a:
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp eq ptr %0, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  br i1 %i.a, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext i32 %3 to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.016.us = phi i32 [ %i.p, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.g = load i32, ptr %i.c, align 4, !tbaa !92   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.h
  store i64 0, ptr %i.i, align 8, !tbaa !110
  %i.j = add nsw i32 %i.g, 1
  store i32 %i.j, ptr %i.c, align 4, !tbaa !92
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.l = load i32, ptr %i.e, align 4, !tbaa !92   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m
  store ptr null, ptr %i.n, align 8, !tbaa !87
  %i.o = add nsw i32 %i.l, 1
  store i32 %i.o, ptr %i.e, align 4, !tbaa !92
  %i.p = add nuw i32 %.016.us, 1                  ; 2 uses
  %exitcond19.not = icmp eq i32 %i.p, %3
  br i1 %exitcond19.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !146

._crit_edge:                                      ; preds = %bb.d, %.lr.ph.split.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !87   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.u = load i32, ptr %i.c, align 4, !tbaa !92   ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.v
  store i64 0, ptr %i.w, align 8, !tbaa !110
  %i.x = add nsw i32 %i.u, 1
  store i32 %i.x, ptr %i.c, align 4, !tbaa !92
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %i.y = load i64, ptr %i.r, align 8, !tbaa !110
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !92  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  store i64 %i.y, ptr %i.ac, align 8, !tbaa !110
  %i.ad = add nsw i32 %i.aa, 1                    ; 2 uses
  store i32 %i.ad, ptr %i.c, align 4, !tbaa !92
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %i.z, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi ptr [ null, %bb.b ], [ %i.ag, %bb.c ]
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.ai = load i32, ptr %i.e, align 4, !tbaa !92  ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.aj
  store ptr %.sink, ptr %i.ak, align 8, !tbaa !87
  %storemerge = add nsw i32 %i.ai, 1
  store i32 %storemerge, ptr %i.e, align 4, !tbaa !92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !146
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NCoderMixer14CCoderMixer2MT11SetBindInfoERKNS_9CBindInfoE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !149 {
bb.a:
  %2 = alloca %class.CStreamBinder, align 8       ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN11NCoderMixer9CBindInfoaSERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !92
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN13CStreamBinderD2Ev.exit
  %i.p = add nuw nsw i32 %.01017, 1               ; 2 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !92
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %._crit_edge, !llvm.loop !148

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01017 = phi i32 [ 0, %.lr.ph ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr null, ptr %i.g, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE, i64 16), ptr %2, align 8, !tbaa !70
  store i32 0, ptr %i.h, align 8, !tbaa !65
  store ptr null, ptr %i.j, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE, i64 16), ptr %i.i, align 8, !tbaa !70
  store ptr null, ptr %i.k, align 8, !tbaa !118
  %i.s = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #17
          to label %.noexc unwind label %bb.i     ; 9 uses

.noexc:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !113
  store ptr %i.u, ptr %i.t, align 8, !tbaa !113
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load i16, ptr %i.l, align 8
  store i16 %i.w, ptr %i.v, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE, i64 16), ptr %i.s, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !113
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !113
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.ac = load i16, ptr %i.m, align 8
  store i16 %i.ac, ptr %i.ab, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE, i64 16), ptr %i.y, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %.noexc
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !85
  %i.af = load i32, ptr %i.o, align 4, !tbaa !92  ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ag
  store ptr %i.s, ptr %i.ah, align 8, !tbaa !88
  %i.ai = add nsw i32 %i.af, 1
  store i32 %i.ai, ptr %i.o, align 4, !tbaa !92
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !118 ; 5 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !120, !range !121, !noundef !122
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.f, label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.an = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(89) %i.aj) #15 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.ap = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.ao) #15 ; 0 uses
  br label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i: ; preds = %bb.f, %bb.e
  store i8 0, ptr %i.ak, align 8, !tbaa !120
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 96) #18
  br label %bb.g

bb.g:                                             ; preds = %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i, %bb.d
  store ptr null, ptr %i.k, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, i64 16), ptr %i.i, align 8, !tbaa !70
  store ptr null, ptr %i.j, align 8, !tbaa !113
  %i.aq = invoke noundef i32 @Event_Close(ptr noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %_ZN13CStreamBinderD2Ev.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #16
  unreachable

_ZN13CStreamBinderD2Ev.exit:                      ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.at = load i32, ptr %i.o, align 4, !tbaa !92
  %i.au = load ptr, ptr %i.n, align 8, !tbaa !85
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88
  %i.az = call noundef i32 @_ZN13CStreamBinder12CreateEventsEv(ptr noundef nonnull align 8 dereferenceable(184) %i.ay) ; 2 uses
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.b, label %._crit_edge

bb.i:                                             ; preds = %.noexc, %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13CStreamBinderD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.ba

._crit_edge:                                      ; preds = %_ZN13CStreamBinderD2Ev.exit, %bb.b, %bb.a
  %i.bb = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.az, %_ZN13CStreamBinderD2Ev.exit ]
  ret i32 %i.bb
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(128) ptr @_ZN11NCoderMixer9CBindInfoaSERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #6 comdat align 2 !guid !153 {
bb.a:
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !92   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !92
  %i.e = add nsw i32 %i.d, %i.b
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.e)
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %.lr.ph.i.i, label %_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEEaSERKS2_.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 4, !tbaa !9
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !85
  %i.l = load i32, ptr %i.c, align 4, !tbaa !92
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.n, align 4, !tbaa !9
  %i.o = load i32, ptr %i.c, align 4, !tbaa !92
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.c, align 4, !tbaa !92
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEEaSERKS2_.exit, label %bb.b, !llvm.loop !150

_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEEaSERKS2_.exit: ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !92   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !92
  %i.v = add nsw i32 %i.u, %i.s
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 noundef %i.v)
  %i.w = icmp sgt i32 %i.s, 0
  br i1 %i.w, label %.lr.ph.i.i5, label %_ZN13CRecordVectorIN11NCoderMixer9CBindPairEEaSERKS2_.exit

.lr.ph.i.i5:                                      ; preds = %_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEEaSERKS2_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count.i.i6 = zext nneg i32 %i.s to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i5
  %indvars.iv.i.i7 = phi i64 [ 0, %.lr.ph.i.i5 ], [ %indvars.iv.next.i.i9, %bb.c ] ; 2 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i.i7
  %.sroa.0.0.copyload.i.i8 = load i64, ptr %i.aa, align 4, !tbaa !9
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !85
  %i.ac = load i32, ptr %i.t, align 4, !tbaa !92
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ad
  store i64 %.sroa.0.0.copyload.i.i8, ptr %i.ae, align 4, !tbaa !9
  %i.af = load i32, ptr %i.t, align 4, !tbaa !92
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.t, align 4, !tbaa !92
  %indvars.iv.next.i.i9 = add nuw nsw i64 %indvars.iv.i.i7, 1 ; 2 uses
  %exitcond.not.i.i10 = icmp eq i64 %indvars.iv.next.i.i9, %wide.trip.count.i.i6
  br i1 %exitcond.not.i.i10, label %_ZN13CRecordVectorIN11NCoderMixer9CBindPairEEaSERKS2_.exit, label %bb.c, !llvm.loop !151

_ZN13CRecordVectorIN11NCoderMixer9CBindPairEEaSERKS2_.exit: ; preds = %bb.c, %_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEEaSERKS2_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !92 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !92
  %i.am = add nsw i32 %i.al, %i.aj
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef %i.am)
  %i.an = icmp sgt i32 %i.aj, 0
  br i1 %i.an, label %.lr.ph.i.i11, label %_ZN13CRecordVectorIjEaSERKS0_.exit

.lr.ph.i.i11:                                     ; preds = %_ZN13CRecordVectorIN11NCoderMixer9CBindPairEEaSERKS2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count.i.i12 = zext nneg i32 %i.aj to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i11
  %indvars.iv.i.i13 = phi i64 [ 0, %.lr.ph.i.i11 ], [ %indvars.iv.next.i.i14, %bb.d ] ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !85
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i.i13
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !9
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !85
  %i.au = load i32, ptr %i.ak, align 4, !tbaa !92
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.av
  store i32 %i.as, ptr %i.aw, align 4, !tbaa !9
  %i.ax = load i32, ptr %i.ak, align 4, !tbaa !92
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ak, align 4, !tbaa !92
  %indvars.iv.next.i.i14 = add nuw nsw i64 %indvars.iv.i.i13, 1 ; 2 uses
  %exitcond.not.i.i15 = icmp eq i64 %indvars.iv.next.i.i14, %wide.trip.count.i.i12
  br i1 %exitcond.not.i.i15, label %_ZN13CRecordVectorIjEaSERKS0_.exit, label %bb.d, !llvm.loop !152

_ZN13CRecordVectorIjEaSERKS0_.exit:               ; preds = %bb.d, %_ZN13CRecordVectorIN11NCoderMixer9CBindPairEEaSERKS2_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !92 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !92
  %i.be = add nsw i32 %i.bd, %i.bb
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i32 noundef %i.be)
  %i.bf = icmp sgt i32 %i.bb, 0
  br i1 %i.bf, label %.lr.ph.i.i16, label %_ZN13CRecordVectorIjEaSERKS0_.exit21

.lr.ph.i.i16:                                     ; preds = %_ZN13CRecordVectorIjEaSERKS0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %wide.trip.count.i.i17 = zext nneg i32 %i.bb to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i16
  %indvars.iv.i.i18 = phi i64 [ 0, %.lr.ph.i.i16 ], [ %indvars.iv.next.i.i19, %bb.e ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !85
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i18
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !9
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.az)
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !85
  %i.bm = load i32, ptr %i.bc, align 4, !tbaa !92
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bn
  store i32 %i.bk, ptr %i.bo, align 4, !tbaa !9
  %i.bp = load i32, ptr %i.bc, align 4, !tbaa !92
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bc, align 4, !tbaa !92
  %indvars.iv.next.i.i19 = add nuw nsw i64 %indvars.iv.i.i18, 1 ; 2 uses
  %exitcond.not.i.i20 = icmp eq i64 %indvars.iv.next.i.i19, %wide.trip.count.i.i17
  br i1 %exitcond.not.i.i20, label %_ZN13CRecordVectorIjEaSERKS0_.exit21, label %bb.e, !llvm.loop !152

_ZN13CRecordVectorIjEaSERKS0_.exit21:             ; preds = %bb.e, %_ZN13CRecordVectorIjEaSERKS0_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CStreamBinderD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !154 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !120, !range !121, !noundef !122
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(89) %i.b) #15 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.g) #15 ; 0 uses
  br label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit

_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit: ; preds = %bb.b, %bb.c
  store i8 0, ptr %i.c, align 8, !tbaa !120
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #18
  br label %bb.d

bb.d:                                             ; preds = %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, i64 16), ptr %i.i, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.j, align 8, !tbaa !113
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = invoke noundef i32 @Event_Close(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #16
  unreachable

_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit: ; preds = %bb.d
  ret void
}

declare noundef i32 @_ZN13CStreamBinder12CreateEventsEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn8_N11NCoderMixer14CCoderMixer2MT11SetBindInfoERKNS_9CBindInfoE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #7 align 2 !guid !155 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN11NCoderMixer14CCoderMixer2MT11SetBindInfoERKNS_9CBindInfoE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %1)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11NCoderMixer14CCoderMixer2MT14AddCoderCommonEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !156 {
bb.a:
  %1 = alloca %"struct.NCoderMixer::CCoder2", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.h = load i32, ptr %i.g, align 4, !tbaa !124
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !125
  call void @_ZN11NCoderMixer7CCoder2C2Ejj(ptr noundef nonnull align 8 dereferenceable(528) %1, i32 noundef %i.h, i32 noundef %i.j)
  %i.k = invoke noalias noundef nonnull dereferenceable(528) ptr @_Znwm(i64 noundef 528) #17
          to label %.noexc unwind label %bb.e     ; 3 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN11NCoderMixer7CCoder2C2ERKS0_(ptr noundef nonnull align 8 dereferenceable(528) %i.k, ptr noundef nonnull align 8 dereferenceable(528) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.e

bb.c:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 528) #18
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !85
  %i.o = load i32, ptr %i.b, align 4, !tbaa !92   ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.p
  store ptr %i.k, ptr %i.q, align 8, !tbaa !88
  %i.r = add nsw i32 %i.o, 1
  store i32 %i.r, ptr %i.b, align 4, !tbaa !92
  call void @_ZN11NCoderMixer7CCoder2D2Ev(ptr noundef nonnull align 8 dereferenceable(528) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.l, %bb.c ]
  call void @_ZN11NCoderMixer7CCoder2D2Ev(ptr noundef nonnull align 8 dereferenceable(528) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11NCoderMixer7CCoder2D2Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !guid !157 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN11NCoderMixer7CCoder2E, i64 16), ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE, i64 16), ptr %i.c, align 8, !tbaa !70
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit unwind label %bb.b, !inline_history !126

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #16, !inline_history !126
  unreachable

_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.c) #15, !inline_history !126
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE, i64 16), ptr %i.f, align 8, !tbaa !70
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev.exit unwind label %bb.c, !inline_history !127

bb.c:                                             ; preds = %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #16, !inline_history !127
  unreachable

_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev.exit: ; preds = %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.f) #15, !inline_history !127
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
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83   ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #16
  unreachable

_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit.i:      ; preds = %bb.d, %_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev.exit
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !84   ; 3 uses
  %.not.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i1.i, label %_ZN11NCoderMixer11CCoderInfo2D2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN11NCoderMixer11CCoderInfo2D2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #16
  unreachable

_ZN11NCoderMixer11CCoderInfo2D2Ev.exit:           ; preds = %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11NCoderMixer14CCoderMixer2MT8AddCoderEP14ICompressCoder(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !guid !159 {
bb.a:
  tail call void @_ZN11NCoderMixer14CCoderMixer2MT14AddCoderCommonEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.b = load i32, ptr %i.a, align 4, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 240 ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
end_hunk_0
begin_hunk_1_@_ZN17CBaseRecordVector18ReserveOnePositionEv

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #2 comdat align 2 !guid !209 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !210, !range !121, !noundef !122
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !121
  %i.f = icmp eq i8 %i.e, 0
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !210
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

declare i32 @Event_Wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !211 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE, i64 16), ptr %0, align 8, !tbaa !70
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
define linkonce_odr dso_local void @_ZN13CObjectVectorI13CStreamBinderED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !212 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI13CStreamBinderE, i64 16), ptr %0, align 8, !tbaa !70
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
define linkonce_odr dso_local void @_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !213 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN11NCoderMixer7CCoder2EE, i64 16), ptr %0, align 8, !tbaa !70
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev.exit unwind label %bb.b, !inline_history !130

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #16, !inline_history !130
  unreachable

_ZN13CObjectVectorIN11NCoderMixer7CCoder2EED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15, !inline_history !130
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN11NCoderMixer7CCoder2EE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !guid !215 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !92   ; 2 uses
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
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 3 uses
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

declare void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI13CStreamBinderED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !216 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI13CStreamBinderE, i64 16), ptr %0, align 8, !tbaa !70
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI13CStreamBinderED2Ev.exit unwind label %bb.b, !inline_history !131

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #16, !inline_history !131
  unreachable

_ZN13CObjectVectorI13CStreamBinderED2Ev.exit:     ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15, !inline_history !131
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI13CStreamBinderE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !218 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !92   ; 2 uses
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
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 152 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118  ; 5 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !120, !range !121, !noundef !122
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(89) %i.p) #15 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.v = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.u) #15 ; 0 uses
  br label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i: ; preds = %bb.d, %bb.c
  store i8 0, ptr %i.q, align 8, !tbaa !120
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 96) #18
  br label %bb.e

bb.e:                                             ; preds = %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i, %bb.b
  store ptr null, ptr %i.o, align 8, !tbaa !118
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, i64 16), ptr %i.w, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  store ptr null, ptr %i.x, align 8, !tbaa !113
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
  br i1 %i.ac, label %bb.a, label %._crit_edge, !llvm.loop !217
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !219 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE, i64 16), ptr %0, align 8, !tbaa !70
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev.exit unwind label %bb.b, !inline_history !127

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #16, !inline_history !127
  unreachable

_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15, !inline_history !127
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI9CMyComPtrI19ISequentialInStreamEE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !221 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !92   ; 2 uses
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

._crit_edge:                                      ; preds = %bb.e, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !91   ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
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
  br i1 %i.v, label %bb.a, label %._crit_edge, !llvm.loop !220
}

; Function Attrs: nounwind
declare void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !222 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE, i64 16), ptr %0, align 8, !tbaa !70
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit unwind label %bb.b, !inline_history !126

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #16, !inline_history !126
  unreachable

_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15, !inline_history !126
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI9CMyComPtrI20ISequentialOutStreamEE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !224 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !92   ; 2 uses
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

._crit_edge:                                      ; preds = %bb.e, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !97   ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #16
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit:   ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 8) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.v, label %bb.a, label %._crit_edge, !llvm.loop !223
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorIP19ISequentialInStreamED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !guid !225 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}
end_hunk_1
