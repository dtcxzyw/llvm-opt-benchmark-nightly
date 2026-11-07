Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/BZip2Encoder?download=true
inline.NumInlined: 188
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN9NCompress6NBZip28CEncoder4FreeEv:bb.a

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !guid !142 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn8_N9NCompress6NBZip28CEncoderD1Ev(ptr noundef initializes((-8, 16)) %0) unnamed_addr #8 align 2 !guid !143 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN9NCompress6NBZip28CEncoderD2Ev(ptr noundef nonnull align 8 dereferenceable(712) %i.a) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn16_N9NCompress6NBZip28CEncoderD1Ev(ptr noundef initializes((-16, 8)) %0) unnamed_addr #8 align 2 !guid !144 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN9NCompress6NBZip28CEncoderD2Ev(ptr noundef nonnull align 8 dereferenceable(712) %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9NCompress6NBZip28CEncoderD0Ev(ptr noundef nonnull align 8 dereferenceable(712) initializes((0, 24)) %0) unnamed_addr #5 align 2 !guid !145 {
bb.a:
  tail call void @_ZN9NCompress6NBZip28CEncoderD2Ev(ptr noundef nonnull align 8 dereferenceable(712) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 712) #22
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn8_N9NCompress6NBZip28CEncoderD0Ev(ptr noundef initializes((-8, 16)) %0) unnamed_addr #8 align 2 !guid !146 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN9NCompress6NBZip28CEncoderD2Ev(ptr noundef nonnull align 8 dereferenceable(712) %i.a) #20, !inline_history !111
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(712) %i.a, i64 noundef 712) #22, !inline_history !111
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn16_N9NCompress6NBZip28CEncoderD0Ev(ptr noundef initializes((-16, 8)) %0) unnamed_addr #8 align 2 !guid !147 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN9NCompress6NBZip28CEncoderD2Ev(ptr noundef nonnull align 8 dereferenceable(712) %i.a) #20, !inline_history !111
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(712) %i.a, i64 noundef 712) #22, !inline_history !111
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip28CEncoder6CreateEv(ptr noundef nonnull align 8 dereferenceable(712) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !151 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !108
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit, label %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit.thread

_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit: ; preds = %bb.a
  %i.c = tail call i32 @ManualResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.a) ; 2 uses
  %.not.not = icmp eq i32 %i.c, 0
  br i1 %.not.not, label %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit.thread, label %.loopexit

_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit.thread: ; preds = %bb.a, %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !108
  %.not.i43 = icmp eq i32 %i.e, 0
  br i1 %.not.i43, label %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45, label %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45.thread

_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45: ; preds = %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit.thread
  %i.f = tail call i32 @ManualResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.d) ; 2 uses
  %.not32.not = icmp eq i32 %i.f, 0
  br i1 %.not32.not, label %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45.thread, label %.loopexit

_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45.thread: ; preds = %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit.thread, %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95
  %.not33 = icmp eq ptr %i.h, null
  br i1 %.not33, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45.thread
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !109
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.l = load i32, ptr %i.k, align 8, !tbaa !82
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45.thread
  invoke void @_ZN9NCompress6NBZip28CEncoder4FreeEv(ptr noundef nonnull align 8 dereferenceable(712) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !82   ; 4 uses
  %i.p = icmp ugt i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 3 uses
  %i.r = zext i1 %i.p to i8
  store i8 %i.r, ptr %i.q, align 4, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.o, ptr %i.s, align 8, !tbaa !109
  %i.t = zext i32 %i.o to i64                     ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, 36688              ; 2 uses
  %i.v = or disjoint i64 %i.u, 8
  %i.w = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #23
          to label %bb.e unwind label %bb.g       ; 3 uses

bb.e:                                             ; preds = %bb.d
  store i64 %i.t, ptr %i.w, align 16
  %.ptr35 = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 10 uses
  %i.x = icmp eq i32 %i.o, 0
  br i1 %i.x, label %.loopexit64, label %.preheader

.preheader:                                       ; preds = %bb.e, %.preheader
  %.idx = phi i64 [ %.add, %.preheader ], [ 8, %bb.e ] ; 3 uses
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx ; 6 uses
  store ptr null, ptr %.ptr.ptr, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 24
  store ptr null, ptr %i.y, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 36104
  store i32 0, ptr %i.z, align 8, !tbaa !152
  %i.aa = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 36112
  store i32 0, ptr %i.aa, align 8, !tbaa !108
  %i.ab = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 36216
  store i32 0, ptr %i.ab, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 36320
  store i32 0, ptr %i.ac, align 8, !tbaa !108
  %.add = add nuw nsw i64 %.idx, 36688
  %i.ad = add nuw nsw i64 %.idx, 36680
  %i.ae = icmp eq i64 %i.ad, %i.u
  br i1 %i.ae, label %.loopexit64, label %.preheader

.loopexit64:                                      ; preds = %.preheader, %bb.e
  store ptr %.ptr35, ptr %i.g, align 8, !tbaa !95
  %i.af = load i32, ptr %i.n, align 8, !tbaa !82  ; 4 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit64
  %i.ag = load i8, ptr %i.q, align 4, !tbaa !94, !range !71, !noundef !72
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %wide.trip.count = zext i32 %i.af to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.ai = icmp ult i32 %i.af, 8
  br i1 %i.ai, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.split.us.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.new ], [ %indvars.iv.next.7, %bb.f ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter.next.7, %bb.f ]
  %i.aj = getelementptr inbounds nuw [36688 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 36088
  store ptr %0, ptr %i.ak, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw [36688 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72776
  store ptr %0, ptr %i.am, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw [36688 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 109464
  store ptr %0, ptr %i.ao, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw [36688 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 146152
  store ptr %0, ptr %i.aq, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw [36688 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 182840
  store ptr %0, ptr %i.as, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw [36688 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 219528
  store ptr %0, ptr %i.au, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw [36688 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 256216
  store ptr %0, ptr %i.aw, align 8, !tbaa !49
  %i.ax = getelementptr inbounds nuw [36688 x i8], ptr %.ptr35, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 292904
  store ptr %0, ptr %i.ay, align 8, !tbaa !49
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit83.unr-lcssa, label %bb.f, !llvm.loop !148

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %.020 = extractvalue { ptr, i32 } %i.az, 0
  %i.ba = tail call ptr @__cxa_begin_catch(ptr %.020) #20 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %bb.k
  %.pr = load i8, ptr %i.q, align 4, !tbaa !94
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %1 = phi i8 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 1, %.lr.ph ]
  %i.bb = phi i32 [ %i.bo, %.lr.ph.splitthread-pre-split ], [ %i.af, %.lr.ph ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 3 uses
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.bd = getelementptr inbounds nuw [36688 x i8], ptr %i.bc, i64 %indvars.iv70 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 36088
  store ptr %0, ptr %i.be, align 8, !tbaa !49
  %i.bf = trunc nuw i8 %1 to i1
  br i1 %i.bf, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.lr.ph.split
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 36112
  %i.bh = tail call noundef i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.bg) ; 2 uses
  %.not.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.not.i, label %bb.i, label %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 36216
  %i.bj = tail call noundef i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.bi) ; 2 uses
  %.not20.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not20.not.i, label %bb.j, label %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 36320
  %i.bl = tail call noundef i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.bk) ; 2 uses
  %.not21.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not21.not.i, label %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit, label %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit.thread

_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit:  ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 36096
  %i.bn = tail call noundef i32 @Thread_Create(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull @_ZN9NCompress6NBZip2L8MFThreadEPv, ptr noundef nonnull align 8 dereferenceable(36688) %i.bd) ; 2 uses
  %.not41 = icmp eq i32 %i.bn, 0
  br i1 %.not41, label %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit._crit_edge, label %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit.thread

_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit._crit_edge: ; preds = %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit
  %.pre = load i32, ptr %i.n, align 8, !tbaa !82
  br label %bb.k

bb.k:                                             ; preds = %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit._crit_edge, %.lr.ph.split
  %i.bo = phi i32 [ %.pre, %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit._crit_edge ], [ %i.bb, %.lr.ph.split ] ; 2 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next71, %i.bp
  br i1 %i.bq, label %.lr.ph.splitthread-pre-split, label %.loopexit, !llvm.loop !149

_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit.thread: ; preds = %bb.i, %bb.j, %bb.h, %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit
  %.4.i55 = phi i32 [ %i.bn, %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit ], [ %i.bj, %bb.i ], [ %i.bl, %bb.j ], [ %i.bh, %bb.h ]
  %i.br = trunc nuw i64 %indvars.iv70 to i32
  store i32 %i.br, ptr %i.n, align 8, !tbaa !82
  tail call void @_ZN9NCompress6NBZip28CEncoder4FreeEv(ptr noundef nonnull align 8 dereferenceable(712) %0)
  br label %.loopexit

.loopexit.loopexit83.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit83.unr-lcssa, %.lr.ph.split.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %indvars.iv.next.7, %.loopexit.loopexit83.unr-lcssa ]
  %lcmp.mod84 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.l ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.l ], [ 0, %.epil.preheader ]
  %i.bs = getelementptr inbounds nuw [36688 x i8], ptr %.ptr35, i64 %indvars.iv.epil
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 36088
  store ptr %0, ptr %i.bt, align 8, !tbaa !49
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.l, !llvm.loop !150

.loopexit:                                        ; preds = %.loopexit.loopexit83.unr-lcssa, %bb.l, %bb.k, %.loopexit64, %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit.thread, %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45, %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit, %bb.b, %bb.g
  %.7 = phi i32 [ %i.f, %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit45 ], [ %i.c, %_ZN8NWindows16NSynchronization17CManualResetEvent18CreateIfNotCreatedEv.exit ], [ 0, %bb.b ], [ -2147024882, %bb.g ], [ %.4.i55, %_ZN9NCompress6NBZip211CThreadInfo6CreateEv.exit.thread ], [ 0, %bb.k ], [ 0, %.loopexit64 ], [ 0, %bb.l ], [ 0, %.loopexit.loopexit83.unr-lcssa ]
  ret i32 %.7
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress6NBZip211CThreadInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(36688) dereferenceable(36688) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !154 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  invoke void @BigFree(ptr noundef %i.b)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !45
  %i.c = load ptr, ptr %0, align 8, !tbaa !46
  invoke void @MidFree(ptr noundef %i.c)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %.noexc
  store ptr null, ptr %0, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36320
  %i.e = invoke noundef i32 @Event_Close(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable

_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36216
  %i.i = invoke noundef i32 @Event_Close(ptr noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit2 unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #21
  unreachable

_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit2: ; preds = %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36112
  %i.m = invoke noundef i32 @Event_Close(ptr noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit3 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit2
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit3: ; preds = %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36096
  %i.q = invoke noundef i32 @Thread_Close(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZN8NWindows7CThreadD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit3
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #21
  unreachable

_ZN8NWindows7CThreadD2Ev.exit:                    ; preds = %_ZN8NWindows16NSynchronization10CBaseEventD2Ev.exit3
  ret void

bb.g:                                             ; preds = %.noexc, %bb.a
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #21
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36688) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 align 2 !guid !155 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 5 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !89
  %.pre16.i = load i8, ptr %i.e, align 8, !tbaa !90
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.g = phi i8 [ %.pre16.i, %.lr.ph.i ], [ %i.x, %bb.d ]
  %i.h = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.y, %bb.d ] ; 3 uses
  %.014.i = phi i32 [ %2, %.lr.ph.i ], [ %i.j, %bb.d ] ; 3 uses
  %.01213.i = phi i32 [ %1, %.lr.ph.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.i = tail call noundef i32 @llvm.smin.i32(i32 %.014.i, i32 %i.h) ; 3 uses
  %i.j = sub nsw i32 %.014.i, %i.i                ; 4 uses
  %i.k = zext i8 %i.g to i32
  %i.l = shl i32 %i.k, %i.i
  %i.m = lshr i32 %.01213.i, %i.j                 ; 2 uses
  %i.n = or i32 %i.m, %i.l
  %i.o = trunc i32 %i.n to i8                     ; 3 uses
  store i8 %i.o, ptr %i.e, align 8, !tbaa !90
  %i.p = shl i32 %i.m, %i.j
  %i.q = sub i32 %.01213.i, %i.p
  %i.r = sub nsw i32 %i.h, %i.i                   ; 2 uses
  store i32 %i.r, ptr %i.d, align 4, !tbaa !89
  %.not.i = icmp sgt i32 %i.h, %.014.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.t = load i32, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.b, align 8, !tbaa !88
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  store i8 %i.o, ptr %i.w, align 1, !tbaa !76
  store i32 8, ptr %i.d, align 4, !tbaa !89
  %.pre15.i = load i8, ptr %i.e, align 8, !tbaa !90
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi i8 [ %.pre15.i, %bb.c ], [ %i.o, %bb.b ]
  %i.y = phi i32 [ 8, %bb.c ], [ %i.r, %bb.b ]
  %i.z = icmp sgt i32 %i.j, 0
  br i1 %i.z, label %bb.b, label %_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit, !llvm.loop !1

_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36688) %0, i8 noundef zeroext %1) local_unnamed_addr #11 align 2 !guid !156 {
bb.a:
  %i.a = zext i8 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre.i.i = load i32, ptr %i.d, align 4, !tbaa !89
  %.pre16.i.i = load i8, ptr %i.e, align 8, !tbaa !90
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.g = phi i8 [ %.pre16.i.i, %bb.a ], [ %i.x, %bb.d ]
  %i.h = phi i32 [ %.pre.i.i, %bb.a ], [ %i.y, %bb.d ] ; 3 uses
  %.014.i.i = phi i32 [ 8, %bb.a ], [ %i.j, %bb.d ] ; 3 uses
  %.01213.i.i = phi i32 [ %i.a, %bb.a ], [ %i.q, %bb.d ] ; 2 uses
  %i.i = tail call noundef i32 @llvm.smin.i32(i32 %.014.i.i, i32 %i.h) ; 3 uses
  %i.j = sub nsw i32 %.014.i.i, %i.i              ; 4 uses
  %i.k = zext i8 %i.g to i32
  %i.l = shl i32 %i.k, %i.i
  %i.m = lshr i32 %.01213.i.i, %i.j               ; 2 uses
  %i.n = or i32 %i.m, %i.l
  %i.o = trunc i32 %i.n to i8                     ; 3 uses
  store i8 %i.o, ptr %i.e, align 8, !tbaa !90
  %i.p = shl i32 %i.m, %i.j
  %i.q = sub i32 %.01213.i.i, %i.p
end_hunk_0
