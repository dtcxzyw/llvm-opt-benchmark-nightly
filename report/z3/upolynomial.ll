Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/upolynomial?download=true
inline.NumInlined: 2516
inline.NumDeleted: 362
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN11upolynomial12core_manager8mul_coreEjPK3mpzjS3_R7svectorIS1_jE:bb.a
  %i.ab = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i43.preheader ] ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i:       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i43
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !52
  %i.af = icmp ugt i32 %i.v, %i.ae
  br i1 %i.af, label %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i, label %bb.h

_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i43
  tail call void @_ZN6vectorI3mpzLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.pr.pre.i.i = load ptr, ptr %5, align 8, !tbaa !55
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i43, !llvm.loop !2

bb.h:                                             ; preds = %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 -4
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !52
  %i.ah = zext i32 %i.v to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ah
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %i.v
  br i1 %.not1218.i.i, label %_ZN6vectorI3mpzLb0EjE7reserveEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %i.aj = zext i32 %.0.i16.i.i.ph to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.aj
  br label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %.lr.ph.i.i44, %.lr.ph.preheader.i.i
  %.019.i.i = phi ptr [ %i.ap, %.lr.ph.i.i44 ], [ %i.ak, %.lr.ph.preheader.i.i ] ; 4 uses
  store i32 0, ptr %.019.i.i, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4 ; 2 uses
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, -4
  store i8 %i.an, ptr %i.al, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.ap, %i.ai
  br i1 %.not12.i.i, label %_ZN6vectorI3mpzLb0EjE7reserveEj.exit, label %.lr.ph.i.i44, !llvm.loop !3

_ZN6vectorI3mpzLb0EjE7reserveEj.exit:             ; preds = %.lr.ph.i.i44, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i, %bb.h
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorI3mpzLb0EjE7reserveEj.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext i32 %i.v to i64
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i, %_ZN6vectorI3mpzLb0EjE7reserveEj.exit
  %.not95 = phi i1 [ true, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i ], [ true, %_ZN6vectorI3mpzLb0EjE7reserveEj.exit ], [ false, %bb.i ]
  %i.ar = icmp ult i32 %1, %3
  br i1 %i.ar, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.as = load ptr, ptr %5, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.at)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !143

bb.j:                                             ; preds = %._crit_edge
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.065 = phi i32 [ %3, %bb.j ], [ %1, %._crit_edge ]
  %.064 = phi ptr [ %4, %bb.j ], [ %2, %._crit_edge ]
  %.063 = phi i32 [ %1, %bb.j ], [ %3, %._crit_edge ]
  %.062 = phi ptr [ %2, %bb.j ], [ %4, %._crit_edge ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = zext i32 %.065 to i64
  %wide.trip.count77 = zext i32 %.063 to i64
  br label %bb.p

bb.l:                                             ; preds = %.loopexit
  %i.ay = load ptr, ptr %5, align 8, !tbaa !55    ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i46

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i46:           ; preds = %bb.l
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !52 ; 2 uses
  %i.bc = icmp ult i32 %i.v, %i.bb
  br i1 %i.bc, label %.lr.ph.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i47

.lr.ph.i:                                         ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i46
  %i.bd = zext i32 %i.v to i64
  br label %bb.o

._crit_edge.i:                                    ; preds = %bb.o
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !55  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i47

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i47:         ; preds = %._crit_edge.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i46
  %i.be = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ay, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i46 ] ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -4
  store i32 %i.v, ptr %i.bf, align 4, !tbaa !52
  br i1 %.not95, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i47
  %i.bg = zext i32 %i.v to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i49
  %indvars.iv.i.i50 = phi i64 [ %i.bg, %.lr.ph.i.i49 ], [ %i.bh, %bb.n ] ; 2 uses
  %i.bh = add nsw i64 %indvars.iv.i.i50, -1       ; 3 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !55    ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !35
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.n, label %.critedge.thread.loopexit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bj)
  %.not.wide.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.wide.i.i, label %.critedge.i.i, label %bb.m, !llvm.loop !4

.critedge.i.i:                                    ; preds = %bb.n
  %.pr.pre.i.i51 = load ptr, ptr %5, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %.pr.pre.i.i51, null
  br i1 %.not.i.i.i52, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split

.critedge.thread.loopexit.i.i:                    ; preds = %bb.m
  %i.bn = trunc nuw i64 %indvars.iv.i.i50 to i32
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split

bb.o:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.bo = load ptr, ptr %5, align 8, !tbaa !55
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.bq = load ptr, ptr %i.av, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bp)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bb, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !1

bb.p:                                             ; preds = %bb.k, %.loopexit
  %indvars.iv79 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next80, %.loopexit ] ; 3 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !41, !align !49
  %i.bs = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.br)
  br i1 %i.bs, label %_ZN11upolynomial12core_manager10checkpointEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN11upolynomial21upolynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN11upolynomial21upolynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #26
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bt) #23
  resume { ptr, i32 } %i.bu

_ZN11upolynomial12core_manager10checkpointEv.exit: ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.064, i64 %indvars.iv79 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !35
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit, %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit ], [ 0, %_ZN11upolynomial12core_manager10checkpointEv.exit ] ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.062, i64 %indvars.iv74 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !35
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit, label %bb.t

bb.t:                                             ; preds = %.preheader
  %i.cb = add nuw i64 %indvars.iv74, %indvars.iv79
  %i.cc = load ptr, ptr %5, align 8, !tbaa !55
  %i.cd = and i64 %i.cb, 4294967295
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cd ; 3 uses
  %i.cf = load ptr, ptr %i.av, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE6addmulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.ce)
  %i.cg = load i8, ptr %i.aw, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.ce)
  br label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit

_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit:  ; preds = %bb.u, %bb.t, %.preheader
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %.loopexit, label %.preheader, !llvm.loop !144

.loopexit:                                        ; preds = %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit, %_ZN11upolynomial12core_manager10checkpointEv.exit
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %6 = icmp samesign ult i64 %indvars.iv.next80, %i.ax
  br i1 %6, label %bb.p, label %bb.l, !llvm.loop !145

_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split: ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i47, %.critedge.i.i, %.critedge.thread.loopexit.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i32, %._crit_edge.i.i38, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i, %._crit_edge.i.i
  %.sink98 = phi ptr [ %i.l, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i32 ], [ %i.b, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ], [ %.pre.i.i, %._crit_edge.i.i ], [ %.pre.i.i39, %._crit_edge.i.i38 ], [ %.pr.pre.i.i51, %.critedge.i.i ], [ %i.bi, %.critedge.thread.loopexit.i.i ], [ %i.be, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i47 ]
  %.011.i.i.sink = phi i32 [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i32 ], [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ], [ 0, %._crit_edge.i.i ], [ 0, %._crit_edge.i.i38 ], [ 0, %.critedge.i.i ], [ %i.bn, %.critedge.thread.loopexit.i.i ], [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i47 ]
  %i.ci = getelementptr inbounds i8, ptr %.sink98, i64 -4
  store i32 %.011.i.i.sink, ptr %i.ci, align 4, !tbaa !52
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit

_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit: ; preds = %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split, %.critedge.i.i, %._crit_edge.i, %bb.l, %._crit_edge.i.i38, %bb.e, %._crit_edge.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial12core_manager10derivativeEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.mpz, align 8                 ; 9 uses
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !55     ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i:           ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !52   ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %zext.i = zext i32 %i.e to i64
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.j = icmp eq i64 %indvars.iv.next.i.i, %zext.i
  br i1 %i.j, label %._crit_edge.i.i, label %bb.c, !llvm.loop !1

bb.d:                                             ; preds = %bb.a
  %i.k = add i32 %1, -1                           ; 9 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !55     ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i15.preheader, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i:      ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !52   ; 2 uses
  %i.p = icmp ugt i32 %i.k, %i.o
  br i1 %i.p, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i15.preheader, label %.lr.ph

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i15.preheader: ; preds = %bb.d, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.l, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i ], [ null, %bb.d ]
  %.0.i16.i.i.ph = phi i32 [ %i.o, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i ], [ 0, %bb.d ] ; 2 uses
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i15

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i15:         ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i15.preheader, %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i
  %i.q = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i15.preheader ] ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i:       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i15
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !52
  %i.u = icmp ugt i32 %i.k, %i.t
  br i1 %i.u, label %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i, label %bb.e

_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i15
  tail call void @_ZN6vectorI3mpzLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pr.pre.i.i = load ptr, ptr %3, align 8, !tbaa !55
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i15, !llvm.loop !2

bb.e:                                             ; preds = %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 -4
  store i32 %i.k, ptr %i.v, align 4, !tbaa !52
  %i.w = zext i32 %i.k to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.w
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %i.k
  br i1 %.not1218.i.i, label %.lr.ph, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.y = zext i32 %.0.i16.i.i.ph to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.y
  br label %.lr.ph.i.i16

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i.i16, %.lr.ph.preheader.i.i
  %.019.i.i = phi ptr [ %i.ae, %.lr.ph.i.i16 ], [ %i.z, %.lr.ph.preheader.i.i ] ; 4 uses
  store i32 0, ptr %.019.i.i, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, -4
  store i8 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.ae, %i.x
  br i1 %.not12.i.i, label %.lr.ph, label %.lr.ph.i.i16, !llvm.loop !3

.lr.ph:                                           ; preds = %.lr.ph.i.i16, %bb.e, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %1, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit
  %i.aj = load ptr, ptr %3, align 8, !tbaa !55    ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18:           ; preds = %._crit_edge
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !52 ; 2 uses
  %i.an = icmp ult i32 %i.k, %i.am
  br i1 %i.an, label %.lr.ph.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18._ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19_crit_edge

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18._ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19_crit_edge: ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18
  %.pre = zext i32 %i.k to i64
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19

.lr.ph.i:                                         ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = zext i32 %i.k to i64                    ; 2 uses
  br label %bb.h

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !55  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19:         ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18._ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19_crit_edge, %._crit_edge.i
  %.pre-phi = phi i64 [ %.pre, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18._ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19_crit_edge ], [ %i.ap, %._crit_edge.i ]
  %i.aq = phi ptr [ %i.aj, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18._ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19_crit_edge ], [ %.pre.i, %._crit_edge.i ]
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4
  store i32 %i.k, ptr %i.ar, align 4, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19
  %indvars.iv.i.i22 = phi i64 [ %.pre-phi, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19 ], [ %i.at, %bb.g ] ; 2 uses
  %i.at = add nsw i64 %indvars.iv.i.i22, -1       ; 3 uses
  %i.au = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !35
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %.critedge.thread.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !57, !nonnull !41, !align !49
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.av)
  %.not.wide.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.wide.i.i, label %.critedge.i.i, label %bb.f, !llvm.loop !4

.critedge.i.i:                                    ; preds = %bb.g
  %.pr.pre.i.i23 = load ptr, ptr %3, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %.pr.pre.i.i23, null
  br i1 %.not.i.i.i24, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split

.critedge.thread.loopexit.i.i:                    ; preds = %bb.f
  %i.az = trunc nuw i64 %indvars.iv.i.i22 to i32
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.bc = load ptr, ptr %i.ao, align 8, !tbaa !57, !nonnull !41, !align !49
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bb)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.am, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.h, !llvm.loop !1

bb.i:                                             ; preds = %.lr.ph, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 0, ptr %4, align 8, !tbaa !35
  %i.bd = load i8, ptr %i.af, align 4
  %i.be = and i8 %i.bd, -4                        ; 2 uses
  store i8 %i.be, ptr %i.af, align 4
  store ptr null, ptr %i.ag, align 8, !tbaa !60
  %i.bf = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.bf, ptr %4, align 8, !tbaa !35
  store i8 %i.be, ptr %i.af, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzj.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.ah, align 8, !tbaa !57, !nonnull !41, !align !49
  call void @_ZN11mpz_managerILb0EE11set_big_i64ER3mpzl(ptr noundef nonnull align 8 dereferenceable(600) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %indvars.iv)
  br label %_ZN11mpz_managerILb0EE3setER3mpzj.exit.i

_ZN11mpz_managerILb0EE3setER3mpzj.exit.i:         ; preds = %bb.k, %bb.j
  %i.bi = load i8, ptr %i.ai, align 8, !tbaa !39, !range !40, !noundef !41
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %_ZN13mpzzp_manager3setER3mpzj.exit, label %bb.l

bb.l:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzj.exit.i
  call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN13mpzzp_manager3setER3mpzj.exit

_ZN13mpzzp_manager3setER3mpzj.exit:               ; preds = %_ZN11mpz_managerILb0EE3setER3mpzj.exit.i, %bb.l
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.bl = load ptr, ptr %3, align 8, !tbaa !55
  %i.bm = getelementptr [16 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bn = getelementptr i8, ptr %i.bm, i64 -16    ; 2 uses
  %i.bo = load ptr, ptr %i.ah, align 8, !tbaa !57, !nonnull !41, !align !49
  call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.bn)
  %i.bp = load i8, ptr %i.ai, align 8, !tbaa !39, !range !40, !noundef !41
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN13mpzzp_manager3setER3mpzj.exit
  call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.bn)
  br label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit:        ; preds = %_ZN13mpzzp_manager3setER3mpzj.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !146

_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split: ; preds = %.critedge.i.i, %.critedge.thread.loopexit.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i, %._crit_edge.i.i
  %.sink43 = phi ptr [ %i.b, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ], [ %.pre.i.i, %._crit_edge.i.i ], [ %.pr.pre.i.i23, %.critedge.i.i ], [ %i.au, %.critedge.thread.loopexit.i.i ]
  %.011.i.i.sink = phi i32 [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ], [ 0, %._crit_edge.i.i ], [ 0, %.critedge.i.i ], [ %i.az, %.critedge.thread.loopexit.i.i ]
  %i.br = getelementptr inbounds i8, ptr %.sink43, i64 -4
  store i32 %.011.i.i.sink, ptr %i.br, align 4, !tbaa !52
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit

_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit: ; preds = %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split, %.critedge.i.i, %._crit_edge.i, %._crit_edge, %._crit_edge.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial12core_manager9normalizeEjP3mpz(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class._scoped_numeral, align 8     ; 9 uses
  switch i32 %1, label %bb.g [
    i32 0, label %_ZN13mpzzp_manager3setER3mpzi.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %2, align 8, !tbaa !35
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 8, !tbaa !35
  %i.e = load i8, ptr %i.c, align 4
  %i.f = and i8 %i.e, -2
  store i8 %i.f, ptr %i.c, align 4
  %i.g = load i8, ptr %i.d, align 8, !tbaa !39, !range !40, !noundef !41
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN13mpzzp_manager3setER3mpzi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN13mpzzp_manager3setER3mpzi.exit

bb.e:                                             ; preds = %bb.b
  store i32 -1, ptr %2, align 8, !tbaa !35
  %i.j = load i8, ptr %i.c, align 4
  %i.k = and i8 %i.j, -2
  store i8 %i.k, ptr %i.c, align 4
  %i.l = load i8, ptr %i.d, align 8, !tbaa !39, !range !40, !noundef !41
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN13mpzzp_manager3setER3mpzi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN13mpzzp_manager3setER3mpzi.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.p, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, -4
  store i8 %i.s, ptr %i.q, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !60
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3gcdEjPK3mpzRS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.u, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = load i8, ptr %i.q, align 4
  %i.w = trunc i8 %i.v to i1
  %i.x = load i32, ptr %i.p, align 8
  %i.y = icmp ne i32 %i.x, 1
  %.not24 = select i1 %i.w, i1 true, i1 %i.y
  br i1 %.not24, label %.lr.ph.preheader, label %.loopexit
end_hunk_0
