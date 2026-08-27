Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/upolynomial?download=true
inline.NumInlined: 2516
inline.NumDeleted: 362
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN11upolynomial12core_manager7dividesEjPK3mpzjS3_:bb.a
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i:             ; preds = %_ZN13mpzzp_manager5resetER3mpz.exit
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !30 ; 2 uses
  %.not12.i = icmp eq i32 %i.bg, 0
  br i1 %.not12.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i
  %i.bh = zext i32 %i.bg to i64
  br label %bb.j

bb.j:                                             ; preds = %.noexc61, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bh, %.lr.ph.i ], [ %i.bi, %.noexc61 ] ; 2 uses
  %i.bi = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.bj = load ptr, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bi ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !11
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.k, label %.critedge.thread.loopexit.i

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !36, !nonnull !19, !align !27
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bk)
          to label %.noexc61 unwind label %.loopexit

.noexc61:                                         ; preds = %bb.k
  %.not.wide.i = icmp eq i64 %i.bi, 0
  br i1 %.not.wide.i, label %.critedge.i, label %bb.j, !llvm.loop !44

.critedge.i:                                      ; preds = %.noexc61
  %.pr.pre.i = load ptr, ptr %i.z, align 8, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.sink.split

.critedge.thread.loopexit.i:                      ; preds = %bb.j
  %i.bo = trunc nuw i64 %indvars.iv.i to i32
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.sink.split

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.sink.split:    ; preds = %.critedge.thread.loopexit.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i, %.critedge.i
  %.pr.pre.i.sink = phi ptr [ %.pr.pre.i, %.critedge.i ], [ %i.bd, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i ], [ %i.bj, %.critedge.thread.loopexit.i ] ; 2 uses
  %.sink = phi i32 [ 0, %.critedge.i ], [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i ], [ %i.bo, %.critedge.thread.loopexit.i ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.pr.pre.i.sink, i64 -4
  store i32 %.sink, ptr %i.bp, align 4, !tbaa !30
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit:               ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.sink.split, %_ZN13mpzzp_manager5resetER3mpz.exit, %.critedge.i
  %.pre9193 = phi ptr [ null, %.critedge.i ], [ null, %_ZN13mpzzp_manager5resetER3mpz.exit ], [ %.pr.pre.i.sink, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.sink.split ]
  %.0.i = phi i32 [ 0, %.critedge.i ], [ 0, %_ZN13mpzzp_manager5resetER3mpz.exit ], [ %.sink, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.sink.split ] ; 3 uses
  %i.bq = icmp ugt i32 %3, %.0.i
  br i1 %i.bq, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit57._crit_edge, label %bb.e, !llvm.loop !101

_ZN13mpzzp_manager7dividesERK3mpzS2_.exit57._crit_edge: ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit57
  %.049.lcssa.ph = phi i32 [ %.0.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit ], [ %.04982, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit57 ]
  %i.br = load ptr, ptr %5, align 8, !tbaa !89, !nonnull !19, !align !27
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !36, !nonnull !19, !align !27
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit57._crit_edge
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #24
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit:   ; preds = %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit57._crit_edge
  %i.bv = icmp eq i32 %.049.lcssa.ph, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.n

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit67, %.loopexit.split-lp68, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp70, %.loopexit.split-lp68 ], [ %i.bc, %bb.i ], [ %lpad.loopexit69, %.loopexit67 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn.pn

bb.n:                                             ; preds = %bb.c, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit, %bb.b, %bb.a, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit
  %.148 = phi i1 [ %i.bv, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit ], [ false, %bb.a ], [ true, %bb.b ], [ false, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit ], [ false, %bb.c ]
  ret i1 %.148
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11upolynomial12core_manager9exact_divEjPK3mpzjS3_R7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %5, align 8, !tbaa !31     ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i:           ; preds = %bb.c
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !30   ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %zext.i = zext i32 %i.f to i64
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i:         ; preds = %._crit_edge.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.h = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.c, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ]
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -4
  store i32 0, ptr %i.i, align 4, !tbaa !30
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %5, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.m = icmp eq i64 %indvars.iv.next.i.i, %zext.i
  br i1 %i.m, label %._crit_edge.i.i, label %bb.d, !llvm.loop !39

bb.e:                                             ; preds = %bb.b
  %i.n = icmp ugt i32 %3, %1
  br i1 %i.n, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.p = add i32 %3, -1                           ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.q ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !14, !range !18, !noundef !19
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.w = load i8, ptr %i.v, align 8, !range !18
  %i.x = trunc nuw i8 %i.w to i1
  %.not5.i = xor i1 %i.x, true
  %.not.i65 = select i1 %i.u, i1 true, i1 %.not5.i
  %i.y = load i32, ptr %i.r, align 8
  %i.z = icmp eq i32 %i.y, 0
  %or.cond.i = select i1 %.not.i65, i1 true, i1 %i.z
  br i1 %or.cond.i, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit.thread

_ZN13mpzzp_manager7dividesERK3mpzS2_.exit:        ; preds = %bb.f
  %i.aa = add i32 %1, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ab
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !36, !nonnull !19, !align !27
  %i.ae = tail call noundef zeroext i1 @_ZN11mpz_managerILb0EE7dividesERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
  br i1 %i.ae, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit._ZN13mpzzp_manager7dividesERK3mpzS2_.exit.thread_crit_edge, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit

_ZN13mpzzp_manager7dividesERK3mpzS2_.exit._ZN13mpzzp_manager7dividesERK3mpzS2_.exit.thread_crit_edge: ; preds = %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit
  %.pre = load i8, ptr %i.s, align 8, !tbaa !14, !range !18
  %.pre119 = load i8, ptr %i.v, align 8, !range !18
  %i.af = trunc nuw i8 %.pre to i1
  %i.ag = trunc nuw i8 %.pre119 to i1
  %i.ah = xor i1 %i.ag, true
  %i.ai = select i1 %i.af, i1 true, i1 %i.ah
  br label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit.thread

_ZN13mpzzp_manager7dividesERK3mpzS2_.exit.thread: ; preds = %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit._ZN13mpzzp_manager7dividesERK3mpzS2_.exit.thread_crit_edge, %bb.f
  %.not.i67 = phi i1 [ %i.ai, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit._ZN13mpzzp_manager7dividesERK3mpzS2_.exit.thread_crit_edge ], [ false, %bb.f ]
  %i.aj = load i32, ptr %4, align 8
  %i.ak = icmp eq i32 %i.aj, 0
  %or.cond.i68 = select i1 %.not.i67, i1 true, i1 %i.ak
  br i1 %or.cond.i68, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit69, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit69.thread

_ZN13mpzzp_manager7dividesERK3mpzS2_.exit69:      ; preds = %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit.thread
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !36, !nonnull !19, !align !27
  %i.am = tail call noundef zeroext i1 @_ZN11mpz_managerILb0EE7dividesERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.am, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit69.thread, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit

_ZN13mpzzp_manager7dividesERK3mpzS2_.exit69.thread: ; preds = %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit.thread, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit69
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 9 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i70

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i70:         ; preds = %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit69.thread
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !30 ; 2 uses
  %.not.i71 = icmp eq i32 %i.ar, 0
  br i1 %.not.i71, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit80, label %.lr.ph.i.i72

.lr.ph.i.i72:                                     ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i70
  %zext.i73 = zext i32 %i.ar to i64
  br label %bb.g

._crit_edge.i.i76:                                ; preds = %bb.g
  %.pre.i.i77 = load ptr, ptr %i.an, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i78 = icmp eq ptr %.pre.i.i77, null
  br i1 %.not.i.i.i78, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit80.thread104

_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit80.thread104: ; preds = %._crit_edge.i.i76
  %6 = getelementptr inbounds i8, ptr %.pre.i.i77, i64 -4
  store i32 0, ptr %6, align 4, !tbaa !30
  %7 = add i32 %1, 1
  %8 = sub i32 %7, %3
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i72
  %indvars.iv.i.i74 = phi i64 [ 0, %.lr.ph.i.i72 ], [ %indvars.iv.next.i.i75, %bb.g ] ; 2 uses
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv.i.i74
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.at)
  %indvars.iv.next.i.i75 = add nuw nsw i64 %indvars.iv.i.i74, 1 ; 2 uses
  %i.av = icmp eq i64 %indvars.iv.next.i.i75, %zext.i73
  br i1 %i.av, label %._crit_edge.i.i76, label %bb.g, !llvm.loop !39

_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit80: ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i70
  %i.aw = sub i32 %1, %3
  %i.ax = add i32 %i.aw, 1
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i:             ; preds = %._crit_edge.i.i76, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit69.thread
  %i.ay = add i32 %1, 1
  %i.az = sub i32 %i.ay, %3                       ; 2 uses
  %.not.i83 = icmp eq i32 %i.az, 0
  br i1 %.not.i83, label %_ZN6vectorI3mpzLb0EjE7reserveEj.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i81.preheader

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i:      ; preds = %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit80, %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit80.thread104
  %9 = phi i32 [ %8, %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit80.thread104 ], [ %i.ax, %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit80 ] ; 2 uses
  %.pr106 = phi ptr [ %.pre.i.i77, %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit80.thread104 ], [ %i.ao, %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit80 ]
  %.not141 = icmp eq i32 %9, 0
  br i1 %.not141, label %_ZN6vectorI3mpzLb0EjE7reserveEj.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i81.preheader

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i81.preheader: ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i
  %.ph = phi i32 [ %9, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i ], [ %i.az, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i ] ; 5 uses
  %.ph164 = phi ptr [ %.pr106, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i ]
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i81

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i81:         ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i81.preheader, %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i
  %i.ba = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph164, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i81.preheader ] ; 6 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i:       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i81
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !30
  %i.be = icmp ugt i32 %.ph, %i.bd
  br i1 %i.be, label %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i, label %.lr.ph.preheader.i.i

_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i81
  tail call void @_ZN6vectorI3mpzLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %.pr.pre.i.i = load ptr, ptr %i.an, align 8, !tbaa !31
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i81, !llvm.loop !41

.lr.ph.preheader.i.i:                             ; preds = %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 -4
  store i32 %.ph, ptr %i.bf, align 4, !tbaa !30
  %i.bg = zext i32 %.ph to i64                    ; 3 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.bg
  %i.bi = add nuw nsw i64 %i.bg, 1152921504606846975
  %i.bj = and i64 %i.bi, 1152921504606846975
  %xtraiter = and i64 %i.bg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i82.prol.loopexit, label %.lr.ph.i.i82.prol

.lr.ph.i.i82.prol:                                ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i82.prol
  %.019.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.i82.prol ], [ %i.ba, %.lr.ph.preheader.i.i ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i82.prol ], [ 0, %.lr.ph.preheader.i.i ]
  store i32 0, ptr %.019.i.i.prol, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %.019.i.i.prol, i64 4 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4
  %i.bm = and i8 %i.bl, -4
  store i8 %i.bm, ptr %i.bk, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.019.i.i.prol, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !42
  %i.bo = getelementptr inbounds nuw i8, ptr %.019.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i82.prol.loopexit, label %.lr.ph.i.i82.prol, !llvm.loop !102

.lr.ph.i.i82.prol.loopexit:                       ; preds = %.lr.ph.i.i82.prol, %.lr.ph.preheader.i.i
  %.019.i.i.unr = phi ptr [ %i.ba, %.lr.ph.preheader.i.i ], [ %i.bo, %.lr.ph.i.i82.prol ]
  %i.bp = icmp samesign ult i64 %i.bj, 3
  br i1 %i.bp, label %_ZN6vectorI3mpzLb0EjE7reserveEj.exit, label %.lr.ph.i.i82

.lr.ph.i.i82:                                     ; preds = %.lr.ph.i.i82.prol.loopexit, %.lr.ph.i.i82
  %.019.i.i = phi ptr [ %i.cj, %.lr.ph.i.i82 ], [ %.019.i.i.unr, %.lr.ph.i.i82.prol.loopexit ] ; 13 uses
  store i32 0, ptr %.019.i.i, align 8, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 4
  %i.bs = and i8 %i.br, -4
  store i8 %i.bs, ptr %i.bq, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  store ptr null, ptr %i.bt, align 8, !tbaa !42
  %i.bu = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  store i32 0, ptr %i.bu, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 20 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 4
  %i.bx = and i8 %i.bw, -4
  store i8 %i.bx, ptr %i.bv, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  store ptr null, ptr %i.by, align 8, !tbaa !42
  %i.bz = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 32
  store i32 0, ptr %i.bz, align 8, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 36 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 4
  %i.cc = and i8 %i.cb, -4
  store i8 %i.cc, ptr %i.ca, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 40
  store ptr null, ptr %i.cd, align 8, !tbaa !42
  %i.ce = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 48
  store i32 0, ptr %i.ce, align 8, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 52 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 4
  %i.ch = and i8 %i.cg, -4
  store i8 %i.ch, ptr %i.cf, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 56
  store ptr null, ptr %i.ci, align 8, !tbaa !42
  %i.cj = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 64 ; 2 uses
  %.not12.i.i.3 = icmp eq ptr %i.cj, %i.bh
  br i1 %.not12.i.i.3, label %_ZN6vectorI3mpzLb0EjE7reserveEj.exit, label %.lr.ph.i.i82, !llvm.loop !43

_ZN6vectorI3mpzLb0EjE7reserveEj.exit:             ; preds = %.lr.ph.i.i82.prol.loopexit, %.lr.ph.i.i82, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i
  %i.ck = phi i32 [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i ], [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i ], [ %.ph, %.lr.ph.i.i82 ], [ %.ph, %.lr.ph.i.i82.prol.loopexit ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  tail call void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
  %.not = icmp eq i32 %i.p, 0
  %i.cm = icmp ugt i32 %3, %1
  br i1 %i.cm, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91._crit_edge, label %.lr.ph157

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.sink.split: ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i103, %.critedge.i
  %.pr.pre.i.sink = phi ptr [ %.pr.pre.i, %.critedge.i ], [ %i.ec, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i103 ]
  %i.cn = getelementptr inbounds i8, ptr %.pr.pre.i.sink, i64 -4
  store i32 0, ptr %i.cn, align 4, !tbaa !30
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread:        ; preds = %._crit_edge, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.sink.split, %.critedge.i
  tail call void @_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %i.co = load ptr, ptr %5, align 8, !tbaa !46
  %i.cp = load ptr, ptr %i.an, align 8, !tbaa !46
  store ptr %i.cp, ptr %5, align 8, !tbaa !46
  store ptr %i.co, ptr %i.an, align 8, !tbaa !46
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit

.lr.ph157:                                        ; preds = %_ZN6vectorI3mpzLb0EjE7reserveEj.exit, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit
  %.062115156 = phi i32 [ %i.en, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit ], [ %1, %_ZN6vectorI3mpzLb0EjE7reserveEj.exit ] ; 2 uses
  %i.cq = add i32 %.062115156, -1
  %i.cr = zext i32 %i.cq to i64                   ; 3 uses
  %i.cs = load i8, ptr %i.s, align 8, !tbaa !14, !range !18, !noundef !19
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = load i8, ptr %i.v, align 8, !range !18
  %i.cv = trunc nuw i8 %i.cu to i1
  %.not5.i84 = xor i1 %i.cv, true
  %.not.i85 = select i1 %i.ct, i1 true, i1 %.not5.i84
  %i.cw = load i32, ptr %i.r, align 8
  %i.cx = icmp eq i32 %i.cw, 0
  %or.cond.i86 = select i1 %.not.i85, i1 true, i1 %i.cx
  %.pre123.pre124 = load ptr, ptr %i.cl, align 8, !tbaa !31 ; 2 uses
  br i1 %or.cond.i86, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87.thread

_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87:      ; preds = %.lr.ph157
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.pre123.pre124, i64 %i.cr
  %i.cz = load ptr, ptr %i.o, align 8, !tbaa !36, !nonnull !19, !align !27
  %i.da = tail call noundef zeroext i1 @_ZN11mpz_managerILb0EE7dividesERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.cy)
  br i1 %i.da, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87._ZN13mpzzp_manager7dividesERK3mpzS2_.exit87.thread_crit_edge, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91._crit_edge

_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87._ZN13mpzzp_manager7dividesERK3mpzS2_.exit87.thread_crit_edge: ; preds = %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87
  %.pre120 = load i8, ptr %i.s, align 8, !tbaa !14, !range !18
  %.pre121 = load i8, ptr %i.v, align 8, !range !18
  %.pre123.pre = load ptr, ptr %i.cl, align 8, !tbaa !31
  %i.db = trunc nuw i8 %.pre120 to i1
  %i.dc = trunc nuw i8 %.pre121 to i1
  %i.dd = xor i1 %i.dc, true
  %i.de = select i1 %i.db, i1 true, i1 %i.dd
  br label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87.thread

_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87.thread: ; preds = %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87._ZN13mpzzp_manager7dividesERK3mpzS2_.exit87.thread_crit_edge, %.lr.ph157
  %.pre123 = phi ptr [ %.pre123.pre, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87._ZN13mpzzp_manager7dividesERK3mpzS2_.exit87.thread_crit_edge ], [ %.pre123.pre124, %.lr.ph157 ] ; 2 uses
  %.not.i89 = phi i1 [ %i.de, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87._ZN13mpzzp_manager7dividesERK3mpzS2_.exit87.thread_crit_edge ], [ false, %.lr.ph157 ]
  %i.df = load i32, ptr %4, align 8
  %i.dg = icmp eq i32 %i.df, 0
  %or.cond.i90 = select i1 %.not.i89, i1 true, i1 %i.dg
  br i1 %or.cond.i90, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91.thread

_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91:      ; preds = %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87.thread
  %i.dh = load ptr, ptr %i.o, align 8, !tbaa !36, !nonnull !19, !align !27
  %i.di = tail call noundef zeroext i1 @_ZN11mpz_managerILb0EE7dividesERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.pre123)
  br i1 %i.di, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91._ZN13mpzzp_manager7dividesERK3mpzS2_.exit91.thread_crit_edge, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91._crit_edge

_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91._ZN13mpzzp_manager7dividesERK3mpzS2_.exit91.thread_crit_edge: ; preds = %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91
  %.pre122 = load ptr, ptr %i.cl, align 8, !tbaa !31
  br label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91.thread

_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91._crit_edge: ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91, %_ZN6vectorI3mpzLb0EjE7reserveEj.exit
  %i.dj = load ptr, ptr %5, align 8, !tbaa !31    ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i92

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i92:         ; preds = %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91._crit_edge
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !30 ; 2 uses
  %.not.i93 = icmp eq i32 %i.dm, 0
  br i1 %.not.i93, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i101, label %.lr.ph.i.i94

.lr.ph.i.i94:                                     ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i92
  %zext.i95 = zext i32 %i.dm to i64
  br label %bb.h

._crit_edge.i.i98:                                ; preds = %bb.h
  %.pre.i.i99 = load ptr, ptr %5, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %.pre.i.i99, null
  br i1 %.not.i.i.i100, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i101

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i101:      ; preds = %._crit_edge.i.i98, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i92
  %i.dn = phi ptr [ %.pre.i.i99, %._crit_edge.i.i98 ], [ %i.dj, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i92 ]
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -4
  store i32 0, ptr %i.do, align 4, !tbaa !30
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i94
  %indvars.iv.i.i96 = phi i64 [ 0, %.lr.ph.i.i94 ], [ %indvars.iv.next.i.i97, %bb.h ] ; 2 uses
  %i.dp = load ptr, ptr %5, align 8, !tbaa !31
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %indvars.iv.i.i96
  %i.dr = load ptr, ptr %i.o, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.dq)
  %indvars.iv.next.i.i97 = add nuw nsw i64 %indvars.iv.i.i96, 1 ; 2 uses
  %i.ds = icmp eq i64 %indvars.iv.next.i.i97, %zext.i95
  br i1 %i.ds, label %._crit_edge.i.i98, label %bb.h, !llvm.loop !39

_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91.thread: ; preds = %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91._ZN13mpzzp_manager7dividesERK3mpzS2_.exit91.thread_crit_edge, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87.thread
  %i.dt = phi ptr [ %.pre122, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91._ZN13mpzzp_manager7dividesERK3mpzS2_.exit91.thread_crit_edge ], [ %.pre123, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit87.thread ]
  %i.du = sub i32 %.062115156, %3                 ; 2 uses
  %i.dv = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.dw = zext i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.cr
  tail call void @_ZN13mpzzp_manager3divERK3mpzS2_RS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.dx)
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91.thread
  %i.dz = load ptr, ptr %i.cl, align 8, !tbaa !31
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.cr
  %i.eb = load ptr, ptr %i.o, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %i.ea)
  %i.ec = load ptr, ptr %i.cl, align 8, !tbaa !31 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i103

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i103:          ; preds = %._crit_edge
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 -4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !30 ; 2 uses
  %.not12.i = icmp eq i32 %i.ef, 0
  br i1 %.not12.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i103
  %i.eg = zext i32 %i.ef to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.eg, %.lr.ph.i ], [ %i.eh, %bb.j ] ; 2 uses
  %i.eh = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.ei = load ptr, ptr %i.cl, align 8, !tbaa !31 ; 2 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.eh ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !11
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.j, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit

bb.j:                                             ; preds = %bb.i
  %i.em = load ptr, ptr %i.o, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %i.ej)
  %.not.wide.i = icmp eq i64 %i.eh, 0
  br i1 %.not.wide.i, label %.critedge.i, label %bb.i, !llvm.loop !44

.critedge.i:                                      ; preds = %bb.j
  %.pr.pre.i = load ptr, ptr %i.cl, align 8, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.sink.split

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit:               ; preds = %bb.i
  %i.en = trunc nuw i64 %indvars.iv.i to i32      ; 3 uses
  %i.eo = getelementptr inbounds i8, ptr %i.ei, i64 -4
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !30
  %i.ep = icmp ugt i32 %3, %i.en
  br i1 %i.ep, label %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91._crit_edge, label %.lr.ph157, !llvm.loop !104

.lr.ph:                                           ; preds = %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91.thread, %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit ], [ 0, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91.thread ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !11
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.et = trunc nuw i64 %indvars.iv to i32
  %i.eu = add i32 %i.du, %i.et
  %i.ev = load ptr, ptr %i.cl, align 8, !tbaa !31
  %i.ew = zext i32 %i.eu to i64
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.ew ; 3 uses
  %i.ey = load ptr, ptr %i.o, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE6submulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ey, ptr noundef nonnull align 8 dereferenceable(16) %i.ex, ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 8 dereferenceable(16) %i.ex)
  %i.ez = load i8, ptr %i.s, align 8, !tbaa !14, !range !18, !noundef !19
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.ex)
  br label %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit

_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit:  ; preds = %bb.l, %bb.k, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !105

_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit: ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i101, %._crit_edge.i.i98, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91._crit_edge, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i, %._crit_edge.i.i, %bb.c, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread, %bb.e, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit69, %bb.a
  %.1 = phi i1 [ false, %bb.e ], [ true, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread ], [ false, %bb.a ], [ false, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit69 ], [ false, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit ], [ true, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i ], [ true, %bb.c ], [ true, %._crit_edge.i.i ], [ false, %_ZN13mpzzp_manager7dividesERK3mpzS2_.exit91._crit_edge ], [ false, %._crit_edge.i.i98 ], [ false, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i101 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial12core_manager19flip_sign_if_lm_negER7svectorI3mpzjE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !31     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit:               ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30   ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit
  %i.f = add i32 %i.d, -1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.g
  %i.i = load i32, ptr %i.h, align 8, !tbaa !11
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %.preheader, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread

.preheader:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %_ZN13mpzzp_manager3negER3mpz.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN13mpzzp_manager3negER3mpz.exit ] ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  %i.p = load i8, ptr %i.l, align 8, !tbaa !14, !range !18, !noundef !19
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN13mpzzp_manager3negER3mpz.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  br label %_ZN13mpzzp_manager3negER3mpz.exit

_ZN13mpzzp_manager3negER3mpz.exit:                ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread, label %bb.c, !llvm.loop !106

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread:        ; preds = %_ZN13mpzzp_manager3negER3mpz.exit, %bb.a, %bb.b, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial12core_manager18CRA_combine_imagesERK7svectorI3mpzjERKS2_RS3_RS2_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class._scoped_numeral, align 8     ; 9 uses
  %6 = alloca %class._scoped_numeral, align 8     ; 9 uses
  %7 = alloca %class._scoped_numeral, align 8     ; 9 uses
  %8 = alloca %class._scoped_numeral, align 8     ; 9 uses
  %9 = alloca %class._scoped_numeral, align 8     ; 9 uses
  %10 = alloca %class._scoped_numeral, align 8    ; 9 uses
  %11 = alloca %class._scoped_numeral, align 8    ; 9 uses
  %12 = alloca %class._scoped_numeral, align 8    ; 9 uses
  %13 = alloca %class._scoped_numeral, align 8    ; 9 uses
  %14 = alloca %class._scoped_numeral, align 8    ; 9 uses
  %15 = alloca %class._scoped_numeral, align 8    ; 9 uses
  %16 = alloca %class._scoped_numeral, align 8    ; 9 uses
  %17 = alloca %class.mpz, align 8                ; 7 uses
  %18 = alloca %class.mpz, align 8                ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 17 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i:           ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30   ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %zext.i = zext i32 %i.e to i64
  br label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i:         ; preds = %._crit_edge.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.b, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -4
  store i32 0, ptr %i.h, align 4, !tbaa !30
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.i.i
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.l = icmp eq i64 %indvars.iv.next.i.i, %zext.i
  br i1 %i.l, label %._crit_edge.i.i, label %bb.b, !llvm.loop !39

_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit: ; preds = %bb.a, %._crit_edge.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 66 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i32 0, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, -4
  store i8 %i.q, ptr %i.o, align 4
end_hunk_0
begin_hunk_1_@_ZN11upolynomial7manager17has_one_half_rootEjPK3mpz:bb.a
bb.o:                                             ; preds = %bb.l, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.k ], [ %i.ao, %bb.l ]
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn

bb.p:                                             ; preds = %bb.a, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit29, %bb.b
  %.019 = phi i1 [ %i.aq, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit29 ], [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %.019
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial7manager20remove_one_half_rootEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %4 = alloca [2 x %class.mpz], align 16          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 -1, ptr %4, align 16, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, -4
  store i8 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 2, ptr %i.f, align 16, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, -4
  store i8 %i.i, ptr %i.g, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.j, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  call void @_ZN11upolynomial12core_manager12div_rem_coreEjPK3mpzjS3_RjR7svectorIS1_jES7_(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2, i32 noundef 2, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !31   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN11upolynomial12core_manager3divEjPK3mpzjS3_R7svectorIS1_jE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i:         ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !30   ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %zext.i.i = zext i32 %i.p to i64
  br label %bb.b

._crit_edge.i.i.i:                                ; preds = %bb.b
  %.pre.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN11upolynomial12core_manager3divEjPK3mpzjS3_R7svectorIS1_jE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i.i:       ; preds = %._crit_edge.i.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i
  %i.r = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.m, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  store i32 0, ptr %i.s, align 4, !tbaa !30
  br label %_ZN11upolynomial12core_manager3divEjPK3mpzjS3_R7svectorIS1_jE.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !36, !nonnull !19, !align !27
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.w = icmp eq i64 %indvars.iv.next.i.i.i, %zext.i.i
  br i1 %i.w, label %._crit_edge.i.i.i, label %bb.b, !llvm.loop !39

_ZN11upolynomial12core_manager3divEjPK3mpzjS3_R7svectorIS1_jE.exit: ; preds = %bb.a, %._crit_edge.i.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i.i
  %i.x = load ptr, ptr %3, align 8, !tbaa !46
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !46
  store ptr %i.y, ptr %3, align 8, !tbaa !46
  store ptr %i.x, ptr %i.l, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN11upolynomial7manager7sign_ofERK3mpz(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(312) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !11
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 0)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN11upolynomial7manager12sign_changesEjPK3mpz(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(312) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.01318 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.c ] ; 3 uses
  %.01417 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2, %bb.c ] ; 2 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %i.b, i32 0) ; 2 uses
  %i.d = icmp ne i32 %.0.i, %.01318
  %i.e = icmp ne i32 %.01318, 0
  %or.cond = and i1 %i.e, %i.d
  %i.f = zext i1 %or.cond to i32
  %spec.select = add i32 %.01417, %i.f
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %spec.select, %bb.b ], [ %.01417, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %.0.i, %bb.b ], [ %.01318, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !154

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.014.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %bb.c ]
  ret i32 %.014.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN11upolynomial7manager15descartes_boundEjPK3mpz(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(312) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN11upolynomial7manager12sign_changesEjPK3mpz.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %1 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.01318.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.c ] ; 3 uses
  %.01417.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.2.i, %bb.c ] ; 2 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.0.i.i = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %i.b, i32 0) ; 2 uses
  %i.d = icmp ne i32 %.0.i.i, %.01318.i
  %i.e = icmp ne i32 %.01318.i, 0
  %or.cond.i = and i1 %i.e, %i.d
  %i.f = zext i1 %or.cond.i to i32
  %spec.select.i = add i32 %.01417.i, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.2.i = phi i32 [ %spec.select.i, %bb.b ], [ %.01417.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i32 [ %.0.i.i, %bb.b ], [ %.01318.i, %.lr.ph.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11upolynomial7manager12sign_changesEjPK3mpz.exit, label %.lr.ph.i, !llvm.loop !154

_ZN11upolynomial7manager12sign_changesEjPK3mpz.exit: ; preds = %bb.c, %bb.a
  %.014.lcssa.i = phi i32 [ 0, %bb.a ], [ %.2.i, %bb.c ]
  ret i32 %.014.lcssa.i
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN11upolynomial7manager19descartes_bound_0_1EjPK3mpz(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  tail call void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.o
  %indvars.iv57 = phi i32 [ %1, %bb.b ], [ %indvars.iv.next58, %bb.o ] ; 2 uses
  %.03255 = phi i32 [ 0, %bb.b ], [ %i.bd, %bb.o ] ; 2 uses
  %.03354 = phi i32 [ 0, %bb.b ], [ %.2.ph, %bb.o ] ; 3 uses
  %.03553 = phi i32 [ 0, %bb.b ], [ %.136.ph, %bb.o ] ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !65, !nonnull !19, !align !27
  %i.k = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.j)
  br i1 %i.k, label %_ZN11upolynomial12core_manager10checkpointEv.exit.preheader, label %bb.d

_ZN11upolynomial12core_manager10checkpointEv.exit.preheader: ; preds = %bb.c
  %i.l = sub i32 %1, %.03255
  %i.m = icmp ugt i32 %i.l, 1
  br i1 %i.m, label %.lr.ph.preheader, label %_ZN11upolynomial12core_manager10checkpointEv.exit._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit.preheader
  %wide.trip.count = zext i32 %indvars.iv57 to i64
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN11upolynomial21upolynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN11upolynomial21upolynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #23
  resume { ptr, i32 } %i.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit ] ; 4 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv ; 14 uses
  %i.r = getelementptr [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
  %i.u = load i8, ptr %i.d, align 8, !tbaa !14, !range !18, !noundef !19
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !36, !nonnull !19, !align !27 ; 3 uses
  %i.y = load i8, ptr %i.g, align 4
  %i.z = and i8 %i.y, 1
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.h, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ac = load i8, ptr %i.ab, align 4             ; 2 uses
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.h
  %i.af = load i32, ptr %i.f, align 8, !tbaa !11
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !11
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.i, label %bb.j

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.h, %bb.g
  %i.ai = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
  %i.aj = icmp slt i32 %i.ai, 0
  %.pre12.i = load ptr, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  br i1 %i.aj, label %bb.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.pre10.i = load i8, ptr %.phi.trans.insert.i, align 4
  br label %bb.j

bb.i:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i, %.split.i
  %i.ak = phi ptr [ %i.x, %.split.i ], [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i ]
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
  br label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit

bb.j:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
  %i.al = phi i8 [ %.pre10.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.ac, %.split.i ]
  %i.am = phi ptr [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.x, %.split.i ] ; 2 uses
  %i.an = and i8 %i.al, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.k, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ap = load i8, ptr %i.i, align 4
  %i.aq = and i8 %i.ap, 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %.split9.i, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

.split9.i:                                        ; preds = %bb.k
  %i.as = load i32, ptr %i.q, align 8, !tbaa !11
  %i.at = load i32, ptr %i.h, align 8, !tbaa !11
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.l, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i:       ; preds = %bb.k, %bb.j
  %i.av = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i: ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i
  %.pre11.i = load ptr, ptr %i.c, align 8, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, %.split9.i
  %i.ax = phi ptr [ %.pre11.i, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i ], [ %i.am, %.split9.i ]
  tail call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
  br label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit

_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit:        ; preds = %bb.l, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i, %.split9.i, %bb.i, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN11upolynomial12core_manager10checkpointEv.exit._crit_edge, label %.lr.ph, !llvm.loop !155

_ZN11upolynomial12core_manager10checkpointEv.exit._crit_edge: ; preds = %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit, %_ZN11upolynomial12core_manager10checkpointEv.exit.preheader
  %.0.lcssa = phi i64 [ 0, %_ZN11upolynomial12core_manager10checkpointEv.exit.preheader ], [ %indvars.iv, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit ]
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.0.lcssa
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !11 ; 2 uses
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %i.ba, i32 0) ; 3 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit._crit_edge
  %.not = icmp eq i32 %.0.i, %.03553
  %i.bc = icmp eq i32 %.03553, 0
  %or.cond = or i1 %i.bc, %.not
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not62 = icmp eq i32 %.03354, 0
  br i1 %.not62, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n, %_ZN11upolynomial12core_manager10checkpointEv.exit._crit_edge, %bb.m
  %.136.ph = phi i32 [ %.03553, %_ZN11upolynomial12core_manager10checkpointEv.exit._crit_edge ], [ %.0.i, %bb.m ], [ %.0.i, %bb.n ]
  %.2.ph = phi i32 [ %.03354, %_ZN11upolynomial12core_manager10checkpointEv.exit._crit_edge ], [ %.03354, %bb.m ], [ 1, %bb.n ] ; 2 uses
  %i.bd = add nuw i32 %.03255, 1                  ; 2 uses
  %indvars.iv.next58 = add i32 %indvars.iv57, -1
  %exitcond59.not = icmp eq i32 %i.bd, %1
  br i1 %exitcond59.not, label %.loopexit, label %bb.c, !llvm.loop !156

.loopexit:                                        ; preds = %bb.o, %bb.n, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 2, %bb.n ], [ %.2.ph, %bb.o ]
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN11upolynomial7manager19descartes_bound_a_bEjPK3mpzR12mpbq_managerRK4mpbqS8_(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(20) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class._scoped_numeral.6, align 8   ; 10 uses
  %7 = alloca %class._scoped_numeral.6, align 8   ; 10 uses
  %8 = alloca %class._scoped_numeral.6, align 8   ; 10 uses
  %9 = alloca %class.mpbq, align 8                ; 8 uses
  %10 = alloca %class.mpbq, align 8               ; 8 uses
  %i.a = load i32, ptr %4, align 8, !tbaa !11
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  tail call void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call void @_ZN11upolynomial7manager12translate_bqEjP3mpzRK4mpbq(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(20) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %3, ptr %6, align 8, !tbaa !157
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.i, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %i.j, align 8, !tbaa !159
  invoke void @_ZN12mpbq_manager3subERK4mpbqS2_RS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(20) %i.e)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit:               ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.n, %bb.d ], [ 0, %bb.c ]
  invoke void @_ZN11upolynomial7manager13compose_p_b_xEjP3mpzRK4mpbq(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %.0.i, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(20) %i.e)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit76, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !30
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit76

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit76:             ; preds = %bb.e, %bb.f
end_hunk_1
begin_hunk_2_@_ZN11upolynomial7manager9translateEjP3mpz:bb.a
  %i.l = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k)
  br i1 %i.l, label %_ZN11upolynomial12core_manager10checkpointEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN11upolynomial21upolynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN11upolynomial21upolynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.m) #23
  resume { ptr, i32 } %i.n

_ZN11upolynomial12core_manager10checkpointEv.exit: ; preds = %bb.b
  %i.o = sub nuw i32 %i.b, %.01623
  %.not1920 = icmp ugt i32 %i.o, %i.c
  br i1 %.not1920, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit
  %i.p = zext i32 %indvars.iv to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit, %_ZN11upolynomial12core_manager10checkpointEv.exit
  %i.q = add i32 %.01623, 1                       ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond29.not = icmp eq i32 %i.q, %1
  br i1 %exitcond29.not, label %.loopexit, label %bb.b, !llvm.loop !167

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit ], [ %i.p, %.lr.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv26 ; 14 uses
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next27
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  %i.u = load i8, ptr %i.e, align 8, !tbaa !14, !range !18, !noundef !19
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !36, !nonnull !19, !align !27
  tail call void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !36, !nonnull !19, !align !27 ; 3 uses
  %i.y = load i8, ptr %i.h, align 4
  %i.z = and i8 %i.y, 1
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.g, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ac = load i8, ptr %i.ab, align 4             ; 2 uses
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.g
  %i.af = load i32, ptr %i.g, align 8, !tbaa !11
  %i.ag = load i32, ptr %i.r, align 8, !tbaa !11
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.g, %bb.f
  %i.ai = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  %i.aj = icmp slt i32 %i.ai, 0
  %.pre12.i = load ptr, ptr %i.d, align 8, !tbaa !36 ; 2 uses
  br i1 %i.aj, label %bb.h, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.pre10.i = load i8, ptr %.phi.trans.insert.i, align 4
  br label %bb.i

bb.h:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i, %.split.i
  %i.ak = phi ptr [ %i.x, %.split.i ], [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i ]
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit

bb.i:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
  %i.al = phi i8 [ %.pre10.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.ac, %.split.i ]
  %i.am = phi ptr [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.x, %.split.i ] ; 2 uses
  %i.an = and i8 %i.al, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.j, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ap = load i8, ptr %i.j, align 4
  %i.aq = and i8 %i.ap, 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %.split9.i, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

.split9.i:                                        ; preds = %bb.j
  %i.as = load i32, ptr %i.r, align 8, !tbaa !11
  %i.at = load i32, ptr %i.i, align 8, !tbaa !11
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.k, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i:       ; preds = %bb.j, %bb.i
  %i.av = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i: ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i
  %.pre11.i = load ptr, ptr %i.d, align 8, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, %.split9.i
  %i.ax = phi ptr [ %.pre11.i, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i ], [ %i.am, %.split9.i ]
  tail call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit

_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit:        ; preds = %bb.k, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i, %.split9.i, %bb.h, %.lr.ph
  %lftr.wideiv = trunc i64 %indvars.iv.next27 to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !168

.loopexit:                                        ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial7manager11translate_kEjP3mpzj(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class._scoped_numeral, align 8     ; 9 uses
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.v, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 16 uses
  store i32 0, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 6 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -4
  store i8 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !42
  %i.h = add i32 %1, -1                           ; 2 uses
  %i.i = add i32 %1, -2                           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  br label %bb.c

._crit_edge59:                                    ; preds = %._crit_edge
  %.pre = load ptr, ptr %4, align 8, !tbaa !89
  %i.p = load ptr, ptr %.pre, align 8, !tbaa !36, !nonnull !19, !align !27
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge59
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #24
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit:   ; preds = %._crit_edge59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.v

bb.c:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvars.iv = phi i32 [ %i.i, %.lr.ph58 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.02156 = phi i32 [ 1, %.lr.ph58 ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.s = zext i32 %indvars.iv to i64
  %i.t = load ptr, ptr %0, align 8, !tbaa !65, !nonnull !19, !align !27
  %i.u = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.c
  br i1 %i.u, label %_ZN11upolynomial12core_manager10checkpointEv.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.v = call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN11upolynomial21upolynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN11upolynomial21upolynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #26
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #23
  br label %.body

_ZN11upolynomial12core_manager10checkpointEv.exit: ; preds = %.noexc
  %i.x = sub i32 %i.h, %.02156
  %.not2453 = icmp ugt i32 %i.x, %i.i
  br i1 %.not2453, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit, %_ZN11upolynomial12core_manager10checkpointEv.exit
  %i.y = add i32 %.02156, 1                       ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond63.not = icmp eq i32 %i.y, %1
  br i1 %exitcond63.not, label %._crit_edge59, label %bb.c, !llvm.loop !169

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit ], [ %i.s, %_ZN11upolynomial12core_manager10checkpointEv.exit ] ; 3 uses
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next61 ; 3 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !36, !nonnull !19, !align !27 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.af = load i32, ptr %i.z, align 8, !tbaa !11
  store i32 %i.af, ptr %i.c, align 8, !tbaa !11
  %i.ag = load i8, ptr %i.d, align 4
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.d, align 4
  br label %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit.i

bb.h:                                             ; preds = %.lr.ph
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit.i unwind label %bb.u

_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit.i:  ; preds = %bb.h, %bb.g
  %i.ai = trunc nuw i64 %indvars.iv60 to i32
  invoke void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.ai)
          to label %.noexc28 unwind label %bb.u

.noexc28:                                         ; preds = %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit.i
  %i.aj = load i8, ptr %i.j, align 8, !tbaa !14, !range !18, !noundef !19
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit, label %bb.i

bb.i:                                             ; preds = %.noexc28
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !36, !nonnull !19, !align !27
  invoke void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc32 unwind label %bb.u

.noexc32:                                         ; preds = %bb.i
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !36, !nonnull !19, !align !27 ; 3 uses
  %i.an = load i8, ptr %i.m, align 4
  %i.ao = and i8 %i.an, 1
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

bb.j:                                             ; preds = %.noexc32
  %i.aq = load i8, ptr %i.d, align 4              ; 2 uses
  %i.ar = and i8 %i.aq, 1
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.j
  %i.at = load i32, ptr %i.l, align 8, !tbaa !11
  %i.au = load i32, ptr %i.c, align 8, !tbaa !11
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.k, label %bb.l

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.j, %.noexc32
  %i.aw = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc33 unwind label %bb.u

.noexc33:                                         ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %i.ax = icmp slt i32 %i.aw, 0
  %.pre12.i = load ptr, ptr %i.b, align 8, !tbaa !36 ; 2 uses
  br i1 %i.ax, label %bb.k, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %.noexc33
  %.pre10.i = load i8, ptr %i.d, align 4
  br label %bb.l

bb.k:                                             ; preds = %.noexc33, %.split.i
  %i.ay = phi ptr [ %i.am, %.split.i ], [ %.pre12.i, %.noexc33 ]
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit unwind label %bb.u

bb.l:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
  %i.az = phi i8 [ %.pre10.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.aq, %.split.i ]
  %i.ba = phi ptr [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.am, %.split.i ] ; 2 uses
  %i.bb = and i8 %i.az, 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bd = load i8, ptr %i.o, align 4
  %i.be = and i8 %i.bd, 1
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %.split9.i, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

.split9.i:                                        ; preds = %bb.m
  %i.bg = load i32, ptr %i.c, align 8, !tbaa !11
  %i.bh = load i32, ptr %i.n, align 8, !tbaa !11
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.n, label %_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i:       ; preds = %bb.m, %bb.l
  %i.bj = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.noexc35 unwind label %bb.u

.noexc35:                                         ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, label %_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i: ; preds = %.noexc35
  %.pre11.i = load ptr, ptr %i.b, align 8, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, %.split9.i
  %i.bl = phi ptr [ %.pre11.i, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i ], [ %i.ba, %.split9.i ]
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit unwind label %bb.u

_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit:        ; preds = %.noexc28, %.noexc35, %.split9.i, %bb.k, %bb.n
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv60 ; 14 uses
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !36, !nonnull !19, !align !27
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %.noexc30 unwind label %bb.u

.noexc30:                                         ; preds = %_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit
  %i.bo = load i8, ptr %i.j, align 8, !tbaa !14, !range !18, !noundef !19
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit, label %bb.o

bb.o:                                             ; preds = %.noexc30
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !36, !nonnull !19, !align !27
  invoke void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %.noexc47 unwind label %bb.u

.noexc47:                                         ; preds = %bb.o
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !36, !nonnull !19, !align !27 ; 3 uses
  %i.bs = load i8, ptr %i.m, align 4
  %i.bt = and i8 %i.bs, 1
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.p, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i37

bb.p:                                             ; preds = %.noexc47
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bw = load i8, ptr %i.bv, align 4             ; 2 uses
  %i.bx = and i8 %i.bw, 1
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %.split.i46, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i37

.split.i46:                                       ; preds = %bb.p
  %i.bz = load i32, ptr %i.l, align 8, !tbaa !11
  %i.ca = load i32, ptr %i.bm, align 8, !tbaa !11
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.q, label %bb.r

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i37:     ; preds = %bb.p, %.noexc47
  %i.cc = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %.noexc48 unwind label %bb.u

.noexc48:                                         ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i37
  %i.cd = icmp slt i32 %i.cc, 0
  %.pre12.i38 = load ptr, ptr %i.b, align 8, !tbaa !36 ; 2 uses
  br i1 %i.cd, label %bb.q, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i39

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i39: ; preds = %.noexc48
  %.phi.trans.insert.i40 = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.pre10.i41 = load i8, ptr %.phi.trans.insert.i40, align 4
  br label %bb.r

bb.q:                                             ; preds = %.noexc48, %.split.i46
  %i.ce = phi ptr [ %i.br, %.split.i46 ], [ %.pre12.i38, %.noexc48 ]
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit unwind label %bb.u

bb.r:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i39, %.split.i46
  %i.cf = phi i8 [ %.pre10.i41, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i39 ], [ %i.bw, %.split.i46 ]
  %i.cg = phi ptr [ %.pre12.i38, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i39 ], [ %i.br, %.split.i46 ] ; 2 uses
  %i.ch = and i8 %i.cf, 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.s, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i42

bb.s:                                             ; preds = %bb.r
  %i.cj = load i8, ptr %i.o, align 4
  %i.ck = and i8 %i.cj, 1
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.split9.i45, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i42

.split9.i45:                                      ; preds = %bb.s
  %i.cm = load i32, ptr %i.bm, align 8, !tbaa !11
end_hunk_2
