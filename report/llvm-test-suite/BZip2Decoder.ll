Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/BZip2Decoder?download=true
inline.NumInlined: 186
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN9NCompress6NBZip28CDecoder4FreeEv:bb.a

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.y = phi ptr [ %i.z, %.preheader ], [ %i.x, %.preheader.preheader ]
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -608 ; 3 uses
  tail call void @_ZN9NCompress6NBZip26CStateD2Ev(ptr noundef nonnull align 8 dead_on_return(608) dereferenceable(608) %i.z) #20
  %i.aa = icmp eq ptr %i.z, %i.i
  br i1 %i.aa, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.f
  %i.ab = or disjoint i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.u, i64 noundef %i.ab) #21
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %._crit_edge
  store ptr null, ptr %i.a, align 8, !tbaa !86
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !guid !138 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn8_N9NCompress6NBZip28CDecoderD1Ev(ptr noundef initializes((-8, 8)) %0) unnamed_addr #7 align 2 !guid !139 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN9NCompress6NBZip28CDecoderD2Ev(ptr noundef nonnull align 8 dereferenceable(28988) %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9NCompress6NBZip28CDecoderD0Ev(ptr noundef nonnull align 8 dereferenceable(28988) initializes((0, 16)) %0) unnamed_addr #4 align 2 !guid !140 {
bb.a:
  tail call void @_ZN9NCompress6NBZip28CDecoderD2Ev(ptr noundef nonnull align 8 dereferenceable(28988) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 28992) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn8_N9NCompress6NBZip28CDecoderD0Ev(ptr noundef initializes((-8, 8)) %0) unnamed_addr #7 align 2 !guid !141 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN9NCompress6NBZip28CDecoderD2Ev(ptr noundef nonnull align 8 dereferenceable(28988) %i.a) #20, !inline_history !142
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(28988) %i.a, i64 noundef 28992) #21, !inline_history !142
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip28CDecoder6CreateEv(ptr noundef nonnull align 8 dereferenceable(28988) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !146 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28712 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit, label %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit.thread

_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit: ; preds = %bb.a
  %i.c = tail call i32 @ManualResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.a) ; 2 uses
  %.not.not = icmp eq i32 %i.c, 0
  br i1 %.not.not, label %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit.thread, label %.loopexit

_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit.thread: ; preds = %bb.a, %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28872 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !76
  %.not.i43 = icmp eq i32 %i.e, 0
  br i1 %.not.i43, label %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45, label %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45.thread

_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45: ; preds = %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit.thread
  %i.f = tail call i32 @ManualResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.d) ; 2 uses
  %.not32.not = icmp eq i32 %i.f, 0
  br i1 %.not32.not, label %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45.thread, label %.loopexit

_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45.thread: ; preds = %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit.thread, %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28696 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86
  %.not33 = icmp eq ptr %i.h, null
  br i1 %.not33, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45.thread
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28704
  %i.j = load i32, ptr %i.i, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28856
  %i.l = load i32, ptr %i.k, align 8, !tbaa !88
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45.thread
  tail call void @_ZN9NCompress6NBZip28CDecoder4FreeEv(ptr noundef nonnull align 8 dereferenceable(28988) %0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28856 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !88   ; 4 uses
  %i.p = icmp ugt i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28860 ; 3 uses
  %i.r = zext i1 %i.p to i8
  store i8 %i.r, ptr %i.q, align 4, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28704
  store i32 %i.o, ptr %i.s, align 8, !tbaa !87
  %i.t = zext i32 %i.o to i64                     ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, 608                ; 2 uses
  %i.v = or disjoint i64 %i.u, 8
  %i.w = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #22
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 %i.t, ptr %i.w, align 16
  %.ptr35 = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 10 uses
  %i.x = icmp eq i32 %i.o, 0
  br i1 %i.x, label %.loopexit64, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader
  %.idx = phi i64 [ %.add, %.preheader ], [ 8, %bb.d ] ; 3 uses
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx ; 5 uses
  store ptr null, ptr %.ptr.ptr, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 24
  store i32 0, ptr %i.y, align 8, !tbaa !147
  %i.z = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 40
  store i32 0, ptr %i.z, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 144
  store i32 0, ptr %i.aa, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 248
  store i32 0, ptr %i.ab, align 8, !tbaa !76
  %.add = add nuw nsw i64 %.idx, 608
  %i.ac = add nuw nsw i64 %.idx, 600
  %i.ad = icmp eq i64 %i.ac, %i.u
  br i1 %i.ad, label %.loopexit64, label %.preheader

.loopexit64:                                      ; preds = %.preheader, %bb.d
  store ptr %.ptr35, ptr %i.g, align 8, !tbaa !86
  %i.ae = load i32, ptr %i.n, align 8, !tbaa !88  ; 4 uses
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit64
  %i.af = load i8, ptr %i.q, align 4, !tbaa !92, !range !93, !noundef !94
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %wide.trip.count = zext i32 %i.ae to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.ah = icmp ult i32 %i.ae, 8
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.split.us.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.new ], [ %indvars.iv.next.7, %bb.e ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter.next.7, %bb.e ]
  %i.ai = getelementptr inbounds nuw [608 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %0, ptr %i.aj, align 8, !tbaa !95
  %i.ak = getelementptr inbounds nuw [608 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 616
  store ptr %0, ptr %i.al, align 8, !tbaa !95
  %i.am = getelementptr inbounds nuw [608 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1224
  store ptr %0, ptr %i.an, align 8, !tbaa !95
  %i.ao = getelementptr inbounds nuw [608 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1832
  store ptr %0, ptr %i.ap, align 8, !tbaa !95
  %i.aq = getelementptr inbounds nuw [608 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2440
  store ptr %0, ptr %i.ar, align 8, !tbaa !95
  %i.as = getelementptr inbounds nuw [608 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 3048
  store ptr %0, ptr %i.at, align 8, !tbaa !95
  %i.au = getelementptr inbounds nuw [608 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 3656
  store ptr %0, ptr %i.av, align 8, !tbaa !95
  %i.aw = getelementptr inbounds nuw [608 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4264
  store ptr %0, ptr %i.ax, align 8, !tbaa !95
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit83.unr-lcssa, label %bb.e, !llvm.loop !143

bb.f:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %.020 = extractvalue { ptr, i32 } %i.ay, 0
  %i.az = tail call ptr @__cxa_begin_catch(ptr %.020) #20 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %i.ba = phi i32 [ %i.bq, %bb.h ], [ %i.ae, %.lr.ph ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.bc = getelementptr inbounds nuw [608 x i8], ptr %i.bb, i64 %indvars.iv70 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %0, ptr %i.bd, align 8, !tbaa !95
  %1 = load i8, ptr %i.q, align 4, !tbaa !92, !range !93, !noundef !94
  %i.be = trunc nuw i8 %1 to i1
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !76
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i: ; preds = %bb.g
  %i.bh = tail call i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.bf) ; 2 uses
  %.not.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.not.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i, label %_ZN9NCompress6NBZip26CState6CreateEv.exit.thread

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i: ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i, %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 144 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !76
  %.not.i23.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i23.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.thread.i

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.i: ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i
  %i.bk = tail call i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.bi) ; 2 uses
  %.not20.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not20.not.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.thread.i, label %_ZN9NCompress6NBZip26CState6CreateEv.exit.thread

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.thread.i: ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.i, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 248 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !76
  %.not.i26.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i26.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28.i, label %_ZN9NCompress6NBZip26CState6CreateEv.exit

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28.i: ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.thread.i
  %i.bn = tail call i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.bl) ; 2 uses
  %.not21.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not21.not.i, label %_ZN9NCompress6NBZip26CState6CreateEv.exit, label %_ZN9NCompress6NBZip26CState6CreateEv.exit.thread

_ZN9NCompress6NBZip26CState6CreateEv.exit:        ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.thread.i, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bp = tail call noundef i32 @Thread_Create(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull @_ZN9NCompress6NBZip2L8MFThreadEPv, ptr noundef nonnull align 8 dereferenceable(608) %i.bc) ; 2 uses
  %.not41 = icmp eq i32 %i.bp, 0
  br i1 %.not41, label %_ZN9NCompress6NBZip26CState6CreateEv.exit._crit_edge, label %_ZN9NCompress6NBZip26CState6CreateEv.exit.thread

_ZN9NCompress6NBZip26CState6CreateEv.exit._crit_edge: ; preds = %_ZN9NCompress6NBZip26CState6CreateEv.exit
  %.pre = load i32, ptr %i.n, align 8, !tbaa !88
  br label %bb.h

bb.h:                                             ; preds = %_ZN9NCompress6NBZip26CState6CreateEv.exit._crit_edge, %.lr.ph.split
  %i.bq = phi i32 [ %.pre, %_ZN9NCompress6NBZip26CState6CreateEv.exit._crit_edge ], [ %i.ba, %.lr.ph.split ] ; 2 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp samesign ult i64 %indvars.iv.next71, %i.br
  br i1 %i.bs, label %.lr.ph.split, label %.loopexit, !llvm.loop !144

_ZN9NCompress6NBZip26CState6CreateEv.exit.thread: ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.i, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28.i, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i, %_ZN9NCompress6NBZip26CState6CreateEv.exit
  %.4.i55 = phi i32 [ %i.bp, %_ZN9NCompress6NBZip26CState6CreateEv.exit ], [ %i.bk, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.i ], [ %i.bn, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28.i ], [ %i.bh, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i ]
  %i.bt = trunc nuw i64 %indvars.iv70 to i32
  store i32 %i.bt, ptr %i.n, align 8, !tbaa !88
  tail call void @_ZN9NCompress6NBZip28CDecoder4FreeEv(ptr noundef nonnull align 8 dereferenceable(28988) %0)
  br label %.loopexit

.loopexit.loopexit83.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit83.unr-lcssa, %.lr.ph.split.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %indvars.iv.next.7, %.loopexit.loopexit83.unr-lcssa ]
  %lcmp.mod84 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.i ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.i ], [ 0, %.epil.preheader ]
  %i.bu = getelementptr inbounds nuw [608 x i8], ptr %.ptr35, i64 %indvars.iv.epil
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %0, ptr %i.bv, align 8, !tbaa !95
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.i, !llvm.loop !145

.loopexit:                                        ; preds = %.loopexit.loopexit83.unr-lcssa, %bb.i, %bb.h, %.loopexit64, %_ZN9NCompress6NBZip26CState6CreateEv.exit.thread, %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45, %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit, %bb.b, %bb.f
  %.7 = phi i32 [ %i.f, %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45 ], [ 0, %bb.b ], [ -2147024882, %bb.f ], [ %i.c, %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit ], [ %.4.i55, %_ZN9NCompress6NBZip26CState6CreateEv.exit.thread ], [ 0, %bb.h ], [ 0, %.loopexit64 ], [ 0, %bb.i ], [ 0, %.loopexit.loopexit83.unr-lcssa ]
  ret i32 %.7
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress6NBZip26CStateD2Ev(ptr noundef nonnull align 8 dead_on_return(608) dereferenceable(608) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !guid !149 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  invoke void @BigFree(ptr noundef %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = invoke noundef i32 @Event_Close(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #19
  unreachable

_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = invoke noundef i32 @Event_Close(ptr noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit1 unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #19
  unreachable

_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit1: ; preds = %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = invoke noundef i32 @Event_Close(ptr noundef nonnull align 8 dereferenceable(104) %i.j)
          to label %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit2 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit1
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #19
  unreachable

_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit2: ; preds = %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = invoke noundef i32 @Thread_Close(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_ZN8NWindows7CThreadD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit2
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #19
  unreachable

_ZN8NWindows7CThreadD2Ev.exit:                    ; preds = %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit2
  ret void

bb.g:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #19
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip26CState6CreateEv(ptr noundef nonnull align 8 dereferenceable(608) %0) local_unnamed_addr #0 align 2 !guid !150 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit: ; preds = %bb.a
  %i.c = tail call i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.a) ; 2 uses
  %.not.not = icmp eq i32 %i.c, 0
  br i1 %.not.not, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread, label %bb.b

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread: ; preds = %bb.a, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !76
  %.not.i23 = icmp eq i32 %i.e, 0
  br i1 %.not.i23, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.thread

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25: ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread
  %i.f = tail call i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.d) ; 2 uses
  %.not20.not = icmp eq i32 %i.f, 0
  br i1 %.not20.not, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.thread, label %bb.b

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.thread: ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !76
  %.not.i26 = icmp eq i32 %i.h, 0
  br i1 %.not.i26, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28.thread

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28: ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.thread
  %i.i = tail call i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.g) ; 2 uses
  %.not21.not = icmp eq i32 %i.i, 0
  br i1 %.not21.not, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28.thread, label %bb.b

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28.thread: ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25.thread, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = tail call noundef i32 @Thread_Create(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @_ZN9NCompress6NBZip2L8MFThreadEPv, ptr noundef nonnull %0)
  br label %bb.b

bb.b:                                             ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28.thread, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit
  %.4 = phi i32 [ %i.c, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit ], [ %i.k, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28.thread ], [ %i.i, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit28 ], [ %i.f, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit25 ]
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9NCompress6NBZip28CDecoder14ReadSignaturesERbRj(ptr noundef nonnull align 8 dereferenceable(28988) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 !guid !151 {
bb.a:
  store i8 0, ptr %1, align 1, !tbaa !97
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !58   ; 3 uses
  %i.f = load i32, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.g = add i32 %i.f, 8                          ; 3 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !59
  %i.h = icmp ult i32 %i.f, -8
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader.1

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i
  %i.i = phi i32 [ %i.t, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i ], [ %i.g, %bb.a ]
  %i.j = phi i32 [ %i.s, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i ], [ %i.e, %bb.a ]
  %i.k = shl i32 %i.j, 8
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !60   ; 3 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !61
  %.not.i.i.i.i.i.i = icmp ult ptr %i.l, %i.m
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.n = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.c)
  %.pre1.i.i.i.i.i = load i32, ptr %i.a, align 8, !tbaa !59
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.o, ptr %i.c, align 8, !tbaa !60
  %i.p = load i8, ptr %i.l, align 1, !tbaa !62
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i.i:          ; preds = %bb.c, %bb.b
  %i.q = phi i32 [ %.pre1.i.i.i.i.i, %bb.b ], [ %i.i, %bb.c ]
  %.0.i.i.i.i.i.i = phi i8 [ %i.n, %bb.b ], [ %i.p, %bb.c ]
  %i.r = zext i8 %.0.i.i.i.i.i.i to i32
  %i.s = or disjoint i32 %i.k, %i.r               ; 3 uses
  store i32 %i.s, ptr %i.b, align 4, !tbaa !58
  %i.t = add i32 %i.q, -8                         ; 4 uses
  store i32 %i.t, ptr %i.a, align 8, !tbaa !59
  %i.u = icmp ugt i32 %i.t, 7
  br i1 %i.u, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader.1, !llvm.loop !0

end_hunk_0
