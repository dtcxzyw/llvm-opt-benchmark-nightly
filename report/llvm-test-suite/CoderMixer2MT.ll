Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/CoderMixer2MT?download=true
inline.NumInlined: 275
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11NCoderMixer7CCoder24CodeEP21ICompressProgressInfo:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 416
  br label %bb.k

.preheader:                                       ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit, %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !38 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph35, label %._crit_edge36

.lr.ph35:                                         ; preds = %.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph33, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit
  %i.co = phi i32 [ %i.ch, %.lr.ph33 ], [ %i.cx, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit ] ; 2 uses
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !31
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !34 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !35 ; 3 uses
  %.not.i = icmp eq ptr %i.cs, null
  br i1 %.not.i, label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call noundef i32 %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs), !inline_history !57 ; 0 uses
  store ptr null, ptr %i.cr, align 8, !tbaa !35
  %.pre = load i32, ptr %i.cg, align 4, !tbaa !38
  br label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit

_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit: ; preds = %bb.k, %bb.l
  %i.cx = phi i32 [ %i.co, %bb.k ], [ %.pre, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i64 %indvars.iv.next, %i.cy
  br i1 %i.cz, label %bb.k, label %.preheader, !llvm.loop !58

bb.m:                                             ; preds = %.lr.ph35, %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit
  %i.da = phi i32 [ %i.cl, %.lr.ph35 ], [ %i.dj, %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit ]
  %indvars.iv41 = phi i64 [ 0, %.lr.ph35 ], [ %indvars.iv.next42, %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit ] ; 2 uses
  %i.db = load ptr, ptr %i.cn, align 8, !tbaa !31
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv41
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !34 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !42 ; 3 uses
  %.not.i24 = icmp eq ptr %i.de, null
  br i1 %.not.i24, label %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef i32 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.de), !inline_history !59 ; 0 uses
  store ptr null, ptr %i.dd, align 8, !tbaa !42
  %.pre44 = load i32, ptr %i.ck, align 4, !tbaa !38
  br label %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit

_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit: ; preds = %bb.m, %bb.n
  %i.dj = phi i32 [ %i.da, %bb.m ], [ %.pre44, %bb.n ] ; 2 uses
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next42, %i.dk
  br i1 %i.dl, label %bb.m, label %._crit_edge36, !llvm.loop !60

._crit_edge36:                                    ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamE7ReleaseEv.exit, %.preheader
  ret void
}

declare void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11NCoderMixer7CCoder212SetCoderInfoEPPKyS3_(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20
  tail call fastcc void @_ZN11NCoderMixerL8SetSizesEPPKyR13CRecordVectorIyERS3_IS1_Ej(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  tail call fastcc void @_ZN11NCoderMixerL8SetSizesEPPKyR13CRecordVectorIyERS3_IS1_Ej(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef %i.h)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11NCoderMixerL8SetSizesEPPKyR13CRecordVectorIyERS3_IS1_Ej(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #0 {
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
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.g = load i32, ptr %i.c, align 4, !tbaa !38   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.h
  store i64 0, ptr %i.i, align 8, !tbaa !61
  %i.j = add nsw i32 %i.g, 1
  store i32 %i.j, ptr %i.c, align 4, !tbaa !38
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.l = load i32, ptr %i.e, align 4, !tbaa !38   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m
  store ptr null, ptr %i.n, align 8, !tbaa !32
  %i.o = add nsw i32 %i.l, 1
  store i32 %i.o, ptr %i.e, align 4, !tbaa !38
  %i.p = add nuw i32 %.016.us, 1                  ; 2 uses
  %exitcond19.not = icmp eq i32 %i.p, %3
  br i1 %exitcond19.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.d, %.lr.ph.split.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.u = load i32, ptr %i.c, align 4, !tbaa !38   ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.v
  store i64 0, ptr %i.w, align 8, !tbaa !61
  %i.x = add nsw i32 %i.u, 1
  store i32 %i.x, ptr %i.c, align 4, !tbaa !38
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %i.y = load i64, ptr %i.r, align 8, !tbaa !61
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !38  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  store i64 %i.y, ptr %i.ac, align 8, !tbaa !61
  %i.ad = add nsw i32 %i.aa, 1                    ; 2 uses
  store i32 %i.ad, ptr %i.c, align 4, !tbaa !38
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %i.z, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi ptr [ null, %bb.b ], [ %i.ag, %bb.c ]
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.ai = load i32, ptr %i.e, align 4, !tbaa !38  ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.aj
  store ptr %.sink, ptr %i.ak, align 8, !tbaa !32
  %storemerge = add nsw i32 %i.ai, 1
  store i32 %storemerge, ptr %i.e, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !63
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NCoderMixer14CCoderMixer2MT11SetBindInfoERKNS_9CBindInfoE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CStreamBinder, align 8       ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN11NCoderMixer9CBindInfoaSERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !38
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
  %i.q = load i32, ptr %i.d, align 4, !tbaa !38
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %._crit_edge, !llvm.loop !64

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01017 = phi i32 [ 0, %.lr.ph ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr null, ptr %i.g, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE, i64 16), ptr %2, align 8, !tbaa !15
  store i32 0, ptr %i.h, align 8, !tbaa !8
  store ptr null, ptr %i.j, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE, i64 16), ptr %i.i, align 8, !tbaa !15
  store ptr null, ptr %i.k, align 8, !tbaa !68
  %i.s = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #17
          to label %.noexc unwind label %bb.i     ; 9 uses

.noexc:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %3 = load ptr, ptr %i.g, align 8, !tbaa !65
  store ptr %3, ptr %i.t, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i16, ptr %i.l, align 8
  store i16 %i.v, ptr %i.u, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE, i64 16), ptr %i.s, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %4 = load ptr, ptr %i.j, align 8, !tbaa !65
  store ptr %4, ptr %i.y, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.aa = load i16, ptr %i.m, align 8
  store i16 %i.aa, ptr %i.z, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization21CManualResetEventWFMOE, i64 16), ptr %i.x, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %.noexc
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.ad = load i32, ptr %i.o, align 4, !tbaa !38  ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ae
  store ptr %i.s, ptr %i.af, align 8, !tbaa !34
  %i.ag = add nsw i32 %i.ad, 1
  store i32 %i.ag, ptr %i.o, align 4, !tbaa !38
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !68  ; 5 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !73, !range !75, !noundef !76
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.al = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(89) %i.ah) #15 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.an = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.am) #15 ; 0 uses
  br label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i: ; preds = %bb.f, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 96) #18
  br label %bb.g

bb.g:                                             ; preds = %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i, %bb.d
  store ptr null, ptr %i.k, align 8, !tbaa !68
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, i64 16), ptr %i.i, align 8, !tbaa !15
  store ptr null, ptr %i.j, align 8, !tbaa !65
  %i.ao = invoke noundef i32 @Event_Close(ptr noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %_ZN13CStreamBinderD2Ev.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #16
  unreachable

_ZN13CStreamBinderD2Ev.exit:                      ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.ar = load i32, ptr %i.o, align 4, !tbaa !38
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr [8 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !34
  %i.ax = call noundef i32 @_ZN13CStreamBinder12CreateEventsEv(ptr noundef nonnull align 8 dereferenceable(184) %i.aw) ; 2 uses
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.b, label %._crit_edge

bb.i:                                             ; preds = %.noexc, %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13CStreamBinderD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.ay

._crit_edge:                                      ; preds = %_ZN13CStreamBinderD2Ev.exit, %bb.b, %bb.a
  %i.az = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ax, %_ZN13CStreamBinderD2Ev.exit ]
  ret i32 %i.az
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(128) ptr @_ZN11NCoderMixer9CBindInfoaSERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
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
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 4
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.l = load i32, ptr %i.c, align 4, !tbaa !38
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.n, align 4
  %i.o = load i32, ptr %i.c, align 4, !tbaa !38
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.c, align 4, !tbaa !38
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEEaSERKS2_.exit, label %bb.b, !llvm.loop !77

_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEEaSERKS2_.exit: ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !38   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38
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
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i.i7
  %.sroa.0.0.copyload.i.i8 = load i64, ptr %i.aa, align 4
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.ac = load i32, ptr %i.t, align 4, !tbaa !38
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ad
  store i64 %.sroa.0.0.copyload.i.i8, ptr %i.ae, align 4
  %i.af = load i32, ptr %i.t, align 4, !tbaa !38
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.t, align 4, !tbaa !38
  %indvars.iv.next.i.i9 = add nuw nsw i64 %indvars.iv.i.i7, 1 ; 2 uses
  %exitcond.not.i.i10 = icmp eq i64 %indvars.iv.next.i.i9, %wide.trip.count.i.i6
  br i1 %exitcond.not.i.i10, label %_ZN13CRecordVectorIN11NCoderMixer9CBindPairEEaSERKS2_.exit, label %bb.c, !llvm.loop !78

_ZN13CRecordVectorIN11NCoderMixer9CBindPairEEaSERKS2_.exit: ; preds = %bb.c, %_ZN13CRecordVectorIN11NCoderMixer17CCoderStreamsInfoEEaSERKS2_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !38 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !38
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
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i.i13
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.au = load i32, ptr %i.ak, align 4, !tbaa !38
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.av
  store i32 %i.as, ptr %i.aw, align 4, !tbaa !4
  %i.ax = load i32, ptr %i.ak, align 4, !tbaa !38
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ak, align 4, !tbaa !38
  %indvars.iv.next.i.i14 = add nuw nsw i64 %indvars.iv.i.i13, 1 ; 2 uses
  %exitcond.not.i.i15 = icmp eq i64 %indvars.iv.next.i.i14, %wide.trip.count.i.i12
  br i1 %exitcond.not.i.i15, label %_ZN13CRecordVectorIjEaSERKS0_.exit, label %bb.d, !llvm.loop !79

_ZN13CRecordVectorIjEaSERKS0_.exit:               ; preds = %bb.d, %_ZN13CRecordVectorIN11NCoderMixer9CBindPairEEaSERKS2_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !38 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.be = add nsw i32 %i.bd, %i.bb
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i32 noundef %i.be)
  %i.bf = icmp sgt i32 %i.bb, 0
  br i1 %i.bf, label %.lr.ph.i.i16, label %_ZN13CRecordVectorIjEaSERKS0_.exit21

.lr.ph.i.i16:                                     ; preds = %_ZN13CRecordVectorIjEaSERKS0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %wide.trip.count.i.i17 = zext nneg i32 %i.bb to i64
end_hunk_0
