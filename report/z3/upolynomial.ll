Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/upolynomial?download=true
inline.NumInlined: 2516
inline.NumDeleted: 362
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN11upolynomial12core_manager8mul_coreEjPK3mpzjS3_R7svectorIS1_jE:bb.a
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !30
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
  store i32 0, ptr %.019.i.i, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4 ; 2 uses
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, -4
  store i8 %i.an, ptr %i.al, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.ap, %i.ai
  br i1 %.not12.i.i, label %_ZN6vectorI3mpzLb0EjE7reserveEj.exit, label %.lr.ph.i.i44, !llvm.loop !43

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
  %i.as = load ptr, ptr %5, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.at)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !82

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
  %i.ay = load ptr, ptr %5, align 8, !tbaa !31    ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i46

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i46:           ; preds = %bb.l
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !30 ; 2 uses
  %i.bc = icmp ult i32 %i.v, %i.bb
  br i1 %i.bc, label %.lr.ph.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i47

.lr.ph.i:                                         ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i46
  %i.bd = zext i32 %i.v to i64
  br label %bb.o

._crit_edge.i:                                    ; preds = %bb.o
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !31  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i47

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i47:         ; preds = %._crit_edge.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i46
  %i.be = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ay, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i46 ] ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -4
  store i32 %i.v, ptr %i.bf, align 4, !tbaa !30
  br i1 %.not95, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i47
  %i.bg = zext i32 %i.v to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i49
  %indvars.iv.i.i50 = phi i64 [ %i.bg, %.lr.ph.i.i49 ], [ %i.bh, %bb.n ] ; 2 uses
  %i.bh = add nsw i64 %indvars.iv.i.i50, -1       ; 3 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !11
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.n, label %.critedge.thread.loopexit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bj)
  %.not.wide.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.wide.i.i, label %.critedge.i.i, label %bb.m, !llvm.loop !44

.critedge.i.i:                                    ; preds = %bb.n
  %.pr.pre.i.i51 = load ptr, ptr %5, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %.pr.pre.i.i51, null
  br i1 %.not.i.i.i52, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split

.critedge.thread.loopexit.i.i:                    ; preds = %bb.m
  %i.bn = trunc nuw i64 %indvars.iv.i.i50 to i32
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split

bb.o:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.bo = load ptr, ptr %5, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.bq = load ptr, ptr %i.av, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bp)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bb, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !39

bb.p:                                             ; preds = %bb.k, %.loopexit
  %indvars.iv79 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next80, %.loopexit ] ; 3 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !65, !nonnull !19, !align !27
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
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !11
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit, %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit ], [ 0, %_ZN11upolynomial12core_manager10checkpointEv.exit ] ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.062, i64 %indvars.iv74 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !11
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit, label %bb.t

bb.t:                                             ; preds = %.preheader
  %i.cb = add nuw i64 %indvars.iv74, %indvars.iv79
  %i.cc = load ptr, ptr %5, align 8, !tbaa !31
  %i.cd = and i64 %i.cb, 4294967295
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cd ; 3 uses
  %i.cf = load ptr, ptr %i.av, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE6addmulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.ce)
  %i.cg = load i8, ptr %i.aw, align 8, !tbaa !14, !range !18, !noundef !19
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.ce)
  br label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit

_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit:  ; preds = %bb.u, %bb.t, %.preheader
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %.loopexit, label %.preheader, !llvm.loop !83

.loopexit:                                        ; preds = %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit, %_ZN11upolynomial12core_manager10checkpointEv.exit
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.ci = icmp samesign ult i64 %indvars.iv.next80, %i.ax
  br i1 %i.ci, label %bb.p, label %bb.l, !llvm.loop !84

_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split: ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i47, %.critedge.i.i, %.critedge.thread.loopexit.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i32, %._crit_edge.i.i38, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i, %._crit_edge.i.i
  %.sink98 = phi ptr [ %i.l, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i32 ], [ %i.b, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ], [ %.pre.i.i, %._crit_edge.i.i ], [ %.pre.i.i39, %._crit_edge.i.i38 ], [ %.pr.pre.i.i51, %.critedge.i.i ], [ %i.bi, %.critedge.thread.loopexit.i.i ], [ %i.be, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i47 ]
  %.011.i.i.sink = phi i32 [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i32 ], [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ], [ 0, %._crit_edge.i.i ], [ 0, %._crit_edge.i.i38 ], [ 0, %.critedge.i.i ], [ %i.bn, %.critedge.thread.loopexit.i.i ], [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i47 ]
  %i.cj = getelementptr inbounds i8, ptr %.sink98, i64 -4
  store i32 %.011.i.i.sink, ptr %i.cj, align 4, !tbaa !30
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit

_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit: ; preds = %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split, %.critedge.i.i, %._crit_edge.i, %bb.l, %._crit_edge.i.i38, %bb.e, %._crit_edge.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial12core_manager10derivativeEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.mpz, align 8                 ; 7 uses
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !31     ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i:           ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30   ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %zext.i = zext i32 %i.e to i64
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.j = icmp eq i64 %indvars.iv.next.i.i, %zext.i
  br i1 %i.j, label %._crit_edge.i.i, label %bb.c, !llvm.loop !39

bb.d:                                             ; preds = %bb.a
  %i.k = add i32 %1, -1                           ; 9 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !31     ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i15.preheader, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i:      ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30   ; 2 uses
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
  %i.t = load i32, ptr %i.s, align 4, !tbaa !30
  %i.u = icmp ugt i32 %i.k, %i.t
  br i1 %i.u, label %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i, label %bb.e

_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i15
  tail call void @_ZN6vectorI3mpzLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pr.pre.i.i = load ptr, ptr %3, align 8, !tbaa !31
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i15, !llvm.loop !41

bb.e:                                             ; preds = %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 -4
  store i32 %i.k, ptr %i.v, align 4, !tbaa !30
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
  store i32 0, ptr %.019.i.i, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, -4
  store i8 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.ae, %i.x
  br i1 %.not12.i.i, label %.lr.ph, label %.lr.ph.i.i16, !llvm.loop !43

.lr.ph:                                           ; preds = %.lr.ph.i.i16, %bb.e, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %1, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit
  %i.aj = load ptr, ptr %3, align 8, !tbaa !31    ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18:           ; preds = %._crit_edge
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !30 ; 2 uses
  %i.an = icmp ult i32 %i.k, %i.am
  br i1 %i.an, label %.lr.ph.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18._ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19_crit_edge

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18._ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19_crit_edge: ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18
  %.pre.a = zext i32 %i.k to i64
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19

.lr.ph.i:                                         ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = zext i32 %i.k to i64                    ; 2 uses
  br label %bb.h

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !31  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19:         ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18._ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19_crit_edge, %._crit_edge.i
  %.pre-phi = phi i64 [ %.pre.a, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18._ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19_crit_edge ], [ %i.ap, %._crit_edge.i ]
  %i.aq = phi ptr [ %i.aj, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i18._ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19_crit_edge ], [ %.pre.i, %._crit_edge.i ]
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4
  store i32 %i.k, ptr %i.ar, align 4, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19
  %indvars.iv.i.i22 = phi i64 [ %.pre-phi, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i19 ], [ %i.at, %bb.g ] ; 2 uses
  %i.at = add nsw i64 %indvars.iv.i.i22, -1       ; 3 uses
  %i.au = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !11
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %.critedge.thread.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !36, !nonnull !19, !align !27
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.av)
  %.not.wide.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.wide.i.i, label %.critedge.i.i, label %bb.f, !llvm.loop !44

.critedge.i.i:                                    ; preds = %bb.g
  %.pr.pre.i.i23 = load ptr, ptr %3, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %.pr.pre.i.i23, null
  br i1 %.not.i.i.i24, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split

.critedge.thread.loopexit.i.i:                    ; preds = %bb.f
  %i.az = trunc nuw i64 %indvars.iv.i.i22 to i32
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.bc = load ptr, ptr %i.ao, align 8, !tbaa !36, !nonnull !19, !align !27
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bb)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.am, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.h, !llvm.loop !39

bb.i:                                             ; preds = %.lr.ph, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bd = load i8, ptr %i.af, align 4
  %i.be = and i8 %i.bd, -4
  store ptr null, ptr %i.ag, align 8, !tbaa !42
  %5 = trunc nuw i64 %indvars.iv to i32
  store i32 %5, ptr %4, align 8, !tbaa !11
  store i8 %i.be, ptr %i.af, align 4
  %.pre = load i8, ptr %i.ai, align 8, !tbaa !14, !range !18
  %6 = trunc nuw i8 %.pre to i1
  br i1 %6, label %_ZN13mpzzp_manager3setER3mpzj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN13mpzzp_manager3setER3mpzj.exit

_ZN13mpzzp_manager3setER3mpzj.exit:               ; preds = %bb.i, %bb.j
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.bg = load ptr, ptr %3, align 8, !tbaa !31
  %i.bh = getelementptr [16 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bi = getelementptr i8, ptr %i.bh, i64 -16    ; 2 uses
  %i.bj = load ptr, ptr %i.ah, align 8, !tbaa !36, !nonnull !19, !align !27
  call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
  %i.bk = load i8, ptr %i.ai, align 8, !tbaa !14, !range !18, !noundef !19
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN13mpzzp_manager3setER3mpzj.exit
  call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
  br label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit:        ; preds = %_ZN13mpzzp_manager3setER3mpzj.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !85

_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit.sink.split: ; preds = %.critedge.i.i, %.critedge.thread.loopexit.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i, %._crit_edge.i.i
  %.sink43 = phi ptr [ %i.b, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ], [ %.pre.i.i, %._crit_edge.i.i ], [ %.pr.pre.i.i23, %.critedge.i.i ], [ %i.au, %.critedge.thread.loopexit.i.i ]
  %.011.i.i.sink = phi i32 [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ], [ 0, %._crit_edge.i.i ], [ 0, %.critedge.i.i ], [ %i.az, %.critedge.thread.loopexit.i.i ]
  %i.bm = getelementptr inbounds i8, ptr %.sink43, i64 -4
  store i32 %.011.i.i.sink, ptr %i.bm, align 4, !tbaa !30
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
  %i.a = load i32, ptr %2, align 8, !tbaa !11
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 8, !tbaa !11
  %i.e = load i8, ptr %i.c, align 4
  %i.f = and i8 %i.e, -2
  store i8 %i.f, ptr %i.c, align 4
  %i.g = load i8, ptr %i.d, align 8, !tbaa !14, !range !18, !noundef !19
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN13mpzzp_manager3setER3mpzi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN13mpzzp_manager3setER3mpzi.exit

bb.e:                                             ; preds = %bb.b
  store i32 -1, ptr %2, align 8, !tbaa !11
  %i.j = load i8, ptr %i.c, align 4
  %i.k = and i8 %i.j, -2
  store i8 %i.k, ptr %i.c, align 4
  %i.l = load i8, ptr %i.d, align 8, !tbaa !14, !range !18, !noundef !19
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN13mpzzp_manager3setER3mpzi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN13mpzzp_manager3setER3mpzi.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, -4
  store i8 %i.s, ptr %i.q, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !42
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !36, !nonnull !19, !align !27
  invoke void @_ZN11mpz_managerILb0EE3gcdEjPK3mpzRS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.u, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = load i8, ptr %i.q, align 4
  %i.w = trunc i8 %i.v to i1
  %i.x = load i32, ptr %i.p, align 8
  %i.y = icmp ne i32 %i.x, 1
  %.not24 = select i1 %i.w, i1 true, i1 %i.y
  br i1 %.not24, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  invoke void @_ZN13mpzzp_manager3divERK3mpzS2_RS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !88

bb.k:                                             ; preds = %.lr.ph
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit:                                        ; preds = %bb.j, %bb.h
  %i.ac = load ptr, ptr %3, align 8, !tbaa !89, !nonnull !19, !align !27
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36, !nonnull !19, !align !27
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #24
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit:   ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN13mpzzp_manager3setER3mpzi.exit

_ZN13mpzzp_manager3setER3mpzi.exit:               ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit
  ret void

bb.m:                                             ; preds = %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %i.z, %bb.i ]
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !19, !align !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !36, !nonnull !19, !align !27
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN13mpzzp_manager3delER3mpz.exit unwind label %bb.b

_ZN13mpzzp_manager3delER3mpz.exit:                ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial12core_manager9normalizeER7svectorI3mpzjE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !31     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit:               ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN11upolynomial12core_manager9normalizeEjP3mpz(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %.0.i, ptr noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial12core_manager3divEjP3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = trunc i8 %i.b to i1
  %i.d = load i32, ptr %3, align 8
  %i.e = icmp ne i32 %i.d, 1
  %.not12 = select i1 %i.c, i1 true, i1 %i.e
  %i.f = icmp ne i32 %1, 0
  %or.cond = and i1 %.not12, %i.f
end_hunk_0
begin_hunk_1_@_ZN13mpzzp_manager16p_normalize_coreER3mpz:bb.a
  %i.n = load i32, ptr %1, align 8, !tbaa !11
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit:         ; preds = %bb.a, %bb.b
  %i.p = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.q = icmp slt i32 %i.p, 0
  %.pre12 = load ptr, ptr %0, align 8, !tbaa !36  ; 2 uses
  br i1 %i.q, label %bb.c, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge: ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre10 = load i8, ptr %.phi.trans.insert, align 4
  br label %bb.d

bb.c:                                             ; preds = %.split, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit
  %i.r = phi ptr [ %i.c, %.split ], [ %.pre12, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit ]
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.g

bb.d:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge, %.split
  %i.s = phi i8 [ %.pre10, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge ], [ %i.j, %.split ]
  %i.t = phi ptr [ %.pre12, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge ], [ %i.c, %.split ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = and i8 %i.s, 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.e, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.y = load i8, ptr %i.x, align 4
  %i.z = and i8 %i.y, 1
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %.split9, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit

.split9:                                          ; preds = %bb.e
  %i.ab = load i32, ptr %1, align 8, !tbaa !11
  %i.ac = load i32, ptr %i.u, align 8, !tbaa !11
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit:         ; preds = %bb.d, %bb.e
  %i.ae = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge, label %bb.g

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge: ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit
  %.pre11 = load ptr, ptr %0, align 8, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge, %.split9
  %i.ag = phi ptr [ %.pre11, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge ], [ %i.t, %.split9 ]
  tail call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.g

bb.g:                                             ; preds = %.split9, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit, %bb.f, %bb.c
  ret void
}

declare void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare void @_ZN6memory10deallocateEPv(ptr noundef) local_unnamed_addr #9

declare void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare void @_ZNK11mpz_managerILb0EE9to_stringB5cxx11ERK3mpz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !68
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #26
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !69

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !53
  store i64 %i.c, ptr %i.a, align 8, !tbaa !59
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !59
  store i8 %i.j, ptr %i.i, align 1, !tbaa !59
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !59
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11upolynomial21upolynomial_exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN17default_exceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !59
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZN17default_exceptionD2Ev.exit

_ZN17default_exceptionD2Ev.exit:                  ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #25
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK17default_exception4whatEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #16

declare noundef i32 @_ZNK12z3_exception10error_codeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #16

declare void @_ZN11mpz_managerILb0EE3gcdEjPK3mpzRS1_(ptr noundef nonnull align 8 dereferenceable(600), i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare void @_ZN11mpz_managerILb0EE6addmulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare void @_ZN11mpz_managerILb0EE6submulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN11mpz_managerILb0EE7dividesERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare void @_ZN11mpz_managerILb0EE3gcdERK3mpzS3_RS1_S4_S4_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare void @_ZN11mpz_managerILb0EE3gcdERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13mpzzp_manager7setup_pEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %class.mpz, align 8                 ; 6 uses
  %2 = alloca %class.mpz, align 8                 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 1
  %i.e = icmp eq i8 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.in.in.in.i = select i1 %i.e, ptr %i.a, ptr %i.h
  %.0.in.in.i = load i32, ptr %.0.in.in.in.i, align 4, !tbaa !30
  %.0.in.i = and i32 %.0.in.in.i, 1
  %.0.i = icmp eq i32 %.0.in.i, 0
  %i.i = load ptr, ptr %0, align 8, !tbaa !36, !nonnull !19, !align !27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 2, ptr %2, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -4
  store i8 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  call void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %i.n, align 8, !tbaa !11
  store i32 %i.t, ptr %i.o, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.u, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %0, align 8, !tbaa !36, !nonnull !19, !align !27
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %bb.b, %bb.c
  %i.y = load ptr, ptr %0, align 8, !tbaa !36, !nonnull !19, !align !27
  call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  br i1 %.0.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !36, !nonnull !19, !align !27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i32 1, ptr %1, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, -4
  store i8 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !42
  call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  ret void
}

declare void @_ZN11mpz_managerILb0EE3absER3mpz(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11upolynomialL20display_smt2_mumeralERSoR13mpzzp_managerRK3mpz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %class.mpz, align 8                 ; 12 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !11
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.20, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 0, ptr %3, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -4                          ; 2 uses
  store i8 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %2, align 8, !tbaa !11
  store i32 %i.l, ptr %3, align 8, !tbaa !11
  store i8 %i.f, ptr %i.d, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8, !tbaa !36, !nonnull !19, !align !27
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !14, !range !18, !noundef !19
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit

_ZN13mpzzp_manager3setER3mpzRKS0_.exit:           ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i, %bb.e
  %i.q = load ptr, ptr %1, align 8, !tbaa !36, !nonnull !19, !align !27
  call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.r = load i8, ptr %i.n, align 8, !tbaa !14, !range !18, !noundef !19
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN13mpzzp_manager3negER3mpz.exit, label %bb.f

bb.f:                                             ; preds = %_ZN13mpzzp_manager3setER3mpzRKS0_.exit
  call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN13mpzzp_manager3negER3mpz.exit

_ZN13mpzzp_manager3negER3mpz.exit:                ; preds = %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, %bb.f
  %i.t = load ptr, ptr %1, align 8, !tbaa !36, !nonnull !19, !align !27
  call void @_ZNK11mpz_managerILb0EE7displayERSoRK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.u = load ptr, ptr %1, align 8, !tbaa !36, !nonnull !19, !align !27
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.19, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %1, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZNK11mpz_managerILb0EE7displayERSoRK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN13mpzzp_manager3negER3mpz.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11upolynomialL21display_smt2_monomialERSoR13mpzzp_managerRK3mpzjPKcb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef range(i32 0, -1) %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN11upolynomialL20display_smt2_mumeralERSoR13mpzzp_managerRK3mpz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 1
  %i.e = icmp eq i8 %i.d, 0
  %i.f = load i32, ptr %2, align 8
  %i.g = icmp eq i32 %i.f, 1
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN11upolynomialL22display_smt2_var_powerERSoPKcjb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, i32 noundef %3, i1 noundef zeroext %5)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.21, i64 noundef 3) ; 0 uses
  tail call fastcc void @_ZN11upolynomialL20display_smt2_mumeralERSoR13mpzzp_managerRK3mpz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  tail call fastcc void @_ZN11upolynomialL22display_smt2_var_powerERSoPKcjb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, i32 noundef %3, i1 noundef zeroext %5)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.19, i64 noundef 1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

declare void @_ZNK11mpz_managerILb0EE7displayERSoRK3mpz(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11upolynomialL22display_smt2_var_powerERSoPKcjb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef range(i32 1, -1) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
end_hunk_1
