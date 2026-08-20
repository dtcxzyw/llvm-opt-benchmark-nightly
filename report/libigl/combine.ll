inline.NumInlined: 975
inline.NumDeleted: 592
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3igl7combineIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEES5_EEvRKSt6vectorIT_SaIS7_EERKS6_IT0_SaISC_EERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EERNSH_IT4_EE:bb.a
  br i1 %i.ac, label %bb.e, label %.sink.split.i.i61

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i63
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

.sink.split.i.i61:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i63, %bb.d
  %.sink.i.i62 = phi ptr [ %i.ab, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i63 ], [ null, %bb.d ]
  store ptr %.sink.i.i62, ptr %5, align 8, !tbaa !9
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i61
  store i64 %i.v, ptr %i.w, align 8, !tbaa !18
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !17    ; 6 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = sdiv exact i64 %i.ai, 24                ; 3 uses
  %.not = icmp eq ptr %i.ae, %i.af                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !25
  %sext = shl i64 %i.al, 32
  %i.am = ashr exact i64 %sext, 32
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64, %bb.f
  %i.an = phi i64 [ %i.am, %bb.f ], [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64 ] ; 5 uses
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.ap = load ptr, ptr %1, align 8, !tbaa !24    ; 5 uses
  %.not59 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !28
  %sext70 = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext70, 32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.at = phi i64 [ %i.as, %bb.h ], [ 0, %bb.g ]  ; 5 uses
  br i1 %.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.au = load ptr, ptr %4, align 8, !tbaa !9     ; 3 uses
  %i.av = load ptr, ptr %5, align 8, !tbaa !9     ; 3 uses
  %xtraiter = and i64 %i.aj, 1
  %i.aw = icmp eq i64 %i.ai, 24
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.aj, -2
  br label %bb.n

._crit_edge.unr-lcssa:                            ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %.05574.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.dx, %._crit_edge.unr-lcssa ]
  %.05673.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.ds, %._crit_edge.unr-lcssa ]
  %lcmp.mod106 = trunc i64 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod106)
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv.epil.init
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv.epil.init
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !30
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.epil.init
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !31
  %i.bd = add i32 %.05673.epil.init, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !32
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.epil.init
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !31
  %i.bi = add i32 %.05574.epil.init, %i.bg
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa103 = phi i32 [ %i.ds, %._crit_edge.unr-lcssa ], [ %i.bd, %.epil.preheader ] ; 2 uses
  %.lcssa = phi i32 [ %i.dx, %._crit_edge.unr-lcssa ], [ %i.bi, %.epil.preheader ] ; 2 uses
  %i.bj = sext i32 %.lcssa103 to i64              ; 3 uses
  %i.bk = icmp eq i32 %.lcssa103, 0
  %i.bl = icmp eq i64 %i.an, 0
  %or.cond.i.i = or i1 %i.bl, %i.bk
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bm = sdiv i64 9223372036854775807, %i.an
  %i.bn = icmp slt i64 %i.bm, %i.bj
  br i1 %i.bn, label %bb.k, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.k:                                             ; preds = %bb.j
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bo, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.i, %._crit_edge, %bb.j
  %i.bp = phi i64 [ %i.bj, %bb.j ], [ %i.bj, %._crit_edge ], [ 0, %bb.i ] ; 2 uses
  %.055.lcssa100 = phi i32 [ %.lcssa, %bb.j ], [ %.lcssa, %._crit_edge ], [ 0, %bb.i ] ; 2 uses
  %i.bq = mul nsw i64 %i.an, %i.bp
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bq, i64 noundef %i.bp, i64 noundef %i.an)
  %i.br = sext i32 %.055.lcssa100 to i64          ; 3 uses
  %i.bs = icmp eq i32 %.055.lcssa100, 0
  %i.bt = icmp eq i64 %i.at, 0
  %or.cond.i.i65 = or i1 %i.bt, %i.bs
  br i1 %or.cond.i.i65, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.bu = sdiv i64 9223372036854775807, %i.at
  %i.bv = icmp slt i64 %i.bu, %i.br
  br i1 %i.bv, label %bb.m, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bw, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.l
  %i.bx = mul nsw i64 %i.at, %i.br
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bx, i64 noundef %i.br, i64 noundef %i.at)
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.bz = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %.not83 = icmp eq ptr %i.by, %i.bz
  br i1 %.not83, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.o

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.n ] ; 6 uses
  %.05574 = phi i32 [ 0, %.lr.ph.new ], [ %i.dx, %bb.n ]
  %.05673 = phi i32 [ 0, %.lr.ph.new ], [ %i.ds, %bb.n ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.n ]
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !30
  %i.de = trunc i64 %i.dd to i32                  ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  store i32 %i.de, ptr %i.df, align 4, !tbaa !31
  %i.dg = add i32 %.05673, %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !32
  %i.dj = trunc i64 %i.di to i32                  ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !31
  %i.dl = add i32 %.05574, %i.dj
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv.next
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !30
  %i.dq = trunc i64 %i.dp to i32                  ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !31
  %i.ds = add i32 %i.dg, %i.dq                    ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !32
  %i.dv = trunc i64 %i.du to i32                  ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !31
  %i.dx = add i32 %i.dl, %i.dv                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.n, !llvm.loop !33

._crit_edge81:                                    ; preds = %bb.s, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

bb.o:                                             ; preds = %.lr.ph80, %bb.s
  %indvars.iv86 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next87, %bb.s ] ; 3 uses
  %i.dy = phi ptr [ %i.bz, %.lr.ph80 ], [ %i.fi, %bb.s ]
  %.05378 = phi i32 [ 0, %.lr.ph80 ], [ %i.eu, %bb.s ] ; 2 uses
  %.06977 = phi i32 [ 0, %.lr.ph80 ], [ %i.fg, %bb.s ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %indvars.iv86 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 3 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !30 ; 3 uses
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = load ptr, ptr %1, align 8, !tbaa !24
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv86 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !32 ; 3 uses
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !28
  %i.ek = mul nsw i64 %i.ej, %i.eg
  %i.el = icmp sgt i64 %i.ek, 0
  br i1 %i.el, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.em = sext i32 %.05378 to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %sext71 = shl i64 %i.eg, 32
  %i.en = ashr exact i64 %sext71, 32
  %i.eo = load ptr, ptr %3, align 8, !tbaa !38, !noalias !35
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.em ; 2 uses
  %i.eq = load i64, ptr %i.ca, align 8, !tbaa !32, !noalias !35 ; 2 uses
  store ptr %i.ep, ptr %14, align 8, !tbaa !39, !alias.scope !35
  store i64 %i.en, ptr %i.cb, align 8, !tbaa !42, !alias.scope !35
  store i64 %i.at, ptr %i.cc, align 8, !tbaa !42, !alias.scope !35
  store ptr %3, ptr %i.cd, align 8, !tbaa !43, !alias.scope !35
  store i64 %i.em, ptr %i.ce, align 8, !tbaa !42, !alias.scope !35
  store i64 0, ptr %i.cf, align 8, !tbaa !42, !alias.scope !35
  store i64 %i.eq, ptr %i.cg, align 8, !tbaa !44, !alias.scope !35
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.er = load ptr, ptr %i.ee, align 8, !tbaa !38
  %i.es = load i64, ptr %i.ef, align 8, !tbaa !32
  store ptr %i.er, ptr %i.ch, align 8, !tbaa !47
  store i64 %i.es, ptr %i.ci, align 8, !tbaa !49
  store i32 %.06977, ptr %i.cj, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  store ptr %i.ep, ptr %11, align 8, !tbaa !52
  store i64 %i.eq, ptr %i.ck, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store ptr %11, ptr %12, align 8, !tbaa !55
  store ptr %10, ptr %i.cl, align 8, !tbaa !57
  store ptr %13, ptr %i.cm, align 8, !tbaa !59
  store ptr %14, ptr %i.cn, align 8, !tbaa !61
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSS_(ptr noundef nonnull align 8 dereferenceable(32) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %.pre = load i64, ptr %i.ea, align 8, !tbaa !30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.et = phi i64 [ %.pre, %bb.p ], [ %i.eb, %bb.o ]
  %i.eu = add nsw i32 %.05378, %i.eh
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !25
  %i.ex = mul nsw i64 %i.ew, %i.et
  %i.ey = icmp sgt i64 %i.ex, 0
  br i1 %i.ey, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.ez = sext i32 %.06977 to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %sext72 = shl i64 %i.eb, 32
  %i.fa = ashr exact i64 %sext72, 32
  %i.fb = load ptr, ptr %2, align 8, !tbaa !66, !noalias !63
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.ez ; 2 uses
  %i.fd = load i64, ptr %i.co, align 8, !tbaa !30, !noalias !63 ; 2 uses
  store ptr %i.fc, ptr %15, align 8, !tbaa !67, !alias.scope !63
  store i64 %i.fa, ptr %i.cp, align 8, !tbaa !42, !alias.scope !63
  store i64 %i.an, ptr %i.cq, align 8, !tbaa !42, !alias.scope !63
  store ptr %2, ptr %i.cr, align 8, !tbaa !69, !alias.scope !63
  store i64 %i.ez, ptr %i.cs, align 8, !tbaa !42, !alias.scope !63
  store i64 0, ptr %i.ct, align 8, !tbaa !42, !alias.scope !63
  store i64 %i.fd, ptr %i.cu, align 8, !tbaa !70, !alias.scope !63
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.fe = load ptr, ptr %i.dz, align 8, !tbaa !66
  %i.ff = load i64, ptr %i.ea, align 8, !tbaa !30
  store ptr %i.fe, ptr %6, align 8, !tbaa !73
  store i64 %i.ff, ptr %i.cv, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.fc, ptr %7, align 8, !tbaa !76
  store i64 %i.fd, ptr %i.cw, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store ptr %7, ptr %8, align 8, !tbaa !78
  store ptr %6, ptr %i.cx, align 8, !tbaa !80
  store ptr %9, ptr %i.cy, align 8, !tbaa !82
  store ptr %15, ptr %i.cz, align 8, !tbaa !84
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIffEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fg = add nsw i32 %.06977, %i.ec
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.fi = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 24
  %i.fn = icmp ugt i64 %i.fm, %indvars.iv.next87
  br i1 %i.fn, label %bb.o, label %._crit_edge81, !llvm.loop !86
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl7combineIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S4_NS2_ImLin1ELi1ELi0ELin1ELi1EEES5_EEvRKSt6vectorIT_SaIS7_EERKS6_IT0_SaISC_EERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EERNSH_IT4_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Eigen::internal::evaluator.158", align 8 ; 5 uses
  %7 = alloca %"struct.Eigen::internal::evaluator.163", align 8 ; 5 uses
  %8 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.168", align 8 ; 7 uses
  %9 = alloca %"struct.Eigen::internal::assign_op.156", align 1 ; 3 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.133", align 8 ; 6 uses
  %11 = alloca %"struct.Eigen::internal::evaluator.150", align 8 ; 5 uses
  %12 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.155", align 8 ; 7 uses
  %13 = alloca %"struct.Eigen::internal::assign_op.131", align 1 ; 3 uses
  %14 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %15 = alloca %"class.Eigen::Block.55", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = load ptr, ptr %0, align 8, !tbaa !90
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !91
  %.not.i.i = icmp eq i64 %i.g, %i.i
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixImLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %4, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.j) #13
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %_ZN5Eigen8internal23check_size_for_overflowImEEvm.exit.i.i.i, label %.sink.split.i.i

_ZN5Eigen8internal23check_size_for_overflowImEEvm.exit.i.i.i: ; preds = %bb.b
  %i.l = shl nuw nsw i64 %i.g, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #14 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %.sink.split.i.i

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowImEEvm.exit.i.i.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowImEEvm.exit.i.i.i, %bb.b
  %.sink.i.i = phi ptr [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowImEEvm.exit.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i, ptr %4, align 8, !tbaa !94
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixImLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixImLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i
  store i64 %i.g, ptr %i.h, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = load ptr, ptr %1, align 8, !tbaa !24
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = sdiv exact i64 %i.u, 24                  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !91
  %.not.i.i60 = icmp eq i64 %i.v, %i.x
  br i1 %.not.i.i60, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixImLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixImLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.y = load ptr, ptr %5, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.y) #13
  %i.z = icmp sgt i64 %i.u, 0
  br i1 %i.z, label %_ZN5Eigen8internal23check_size_for_overflowImEEvm.exit.i.i.i63, label %.sink.split.i.i61

_ZN5Eigen8internal23check_size_for_overflowImEEvm.exit.i.i.i63: ; preds = %bb.d
  %i.aa = shl nuw nsw i64 %i.v, 3
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #14 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3igl7combineIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S4_NS2_ImLin1ELi1ELi0ELin1ELi1EEES5_EEvRKSt6vectorIT_SaIS7_EERKS6_IT0_SaISC_EERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EERNSH_IT4_EE:bb.a
  br i1 %i.ac, label %bb.e, label %.sink.split.i.i61

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowImEEvm.exit.i.i.i63
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

.sink.split.i.i61:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowImEEvm.exit.i.i.i63, %bb.d
  %.sink.i.i62 = phi ptr [ %i.ab, %_ZN5Eigen8internal23check_size_for_overflowImEEvm.exit.i.i.i63 ], [ null, %bb.d ]
  store ptr %.sink.i.i62, ptr %5, align 8, !tbaa !94
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixImLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64

_ZN5Eigen15PlainObjectBaseINS_6MatrixImLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixImLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i61
  store i64 %i.v, ptr %i.w, align 8, !tbaa !91
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !90    ; 6 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = sdiv exact i64 %i.ai, 24                ; 3 uses
  %.not = icmp eq ptr %i.ae, %i.af                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixImLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !95
  %sext = shl i64 %i.al, 32
  %i.am = ashr exact i64 %sext, 32
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixImLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64, %bb.f
  %i.an = phi i64 [ %i.am, %bb.f ], [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixImLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64 ] ; 5 uses
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.ap = load ptr, ptr %1, align 8, !tbaa !24    ; 5 uses
  %.not59 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !28
  %sext70 = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext70, 32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.at = phi i64 [ %i.as, %bb.h ], [ 0, %bb.g ]  ; 5 uses
  br i1 %.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.au = load ptr, ptr %4, align 8, !tbaa !94    ; 3 uses
  %i.av = load ptr, ptr %5, align 8, !tbaa !94    ; 3 uses
  %xtraiter = and i64 %i.aj, 1
  %i.aw = icmp eq i64 %i.ai, 24
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.aj, -2
  br label %bb.n

._crit_edge.unr-lcssa:                            ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %.05574.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.dx, %._crit_edge.unr-lcssa ]
  %.05673.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.ds, %._crit_edge.unr-lcssa ]
  %lcmp.mod106 = trunc i64 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod106)
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv.epil.init
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv.epil.init
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !98 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.epil.init
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !99
  %i.bc = trunc i64 %i.ba to i32
  %i.bd = add i32 %.05673.epil.init, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !32 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.epil.init
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !99
  %i.bh = trunc i64 %i.bf to i32
  %i.bi = add i32 %.05574.epil.init, %i.bh
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa103 = phi i32 [ %i.ds, %._crit_edge.unr-lcssa ], [ %i.bd, %.epil.preheader ] ; 2 uses
  %.lcssa = phi i32 [ %i.dx, %._crit_edge.unr-lcssa ], [ %i.bi, %.epil.preheader ] ; 2 uses
  %i.bj = sext i32 %.lcssa103 to i64              ; 3 uses
  %i.bk = icmp eq i32 %.lcssa103, 0
  %i.bl = icmp eq i64 %i.an, 0
  %or.cond.i.i = or i1 %i.bl, %i.bk
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bm = sdiv i64 9223372036854775807, %i.an
  %i.bn = icmp slt i64 %i.bm, %i.bj
  br i1 %i.bn, label %bb.k, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.k:                                             ; preds = %bb.j
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bo, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.i, %._crit_edge, %bb.j
  %i.bp = phi i64 [ %i.bj, %bb.j ], [ %i.bj, %._crit_edge ], [ 0, %bb.i ] ; 2 uses
  %.055.lcssa100 = phi i32 [ %.lcssa, %bb.j ], [ %.lcssa, %._crit_edge ], [ 0, %bb.i ] ; 2 uses
  %i.bq = mul nsw i64 %i.an, %i.bp
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bq, i64 noundef %i.bp, i64 noundef %i.an)
  %i.br = sext i32 %.055.lcssa100 to i64          ; 3 uses
  %i.bs = icmp eq i32 %.055.lcssa100, 0
  %i.bt = icmp eq i64 %i.at, 0
  %or.cond.i.i65 = or i1 %i.bt, %i.bs
  br i1 %or.cond.i.i65, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.bu = sdiv i64 9223372036854775807, %i.at
  %i.bv = icmp slt i64 %i.bu, %i.br
  br i1 %i.bv, label %bb.m, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bw, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.l
  %i.bx = mul nsw i64 %i.at, %i.br
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bx, i64 noundef %i.br, i64 noundef %i.at)
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.bz = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %.not83 = icmp eq ptr %i.by, %i.bz
  br i1 %.not83, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.o

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.n ] ; 6 uses
  %.05574 = phi i32 [ 0, %.lr.ph.new ], [ %i.dx, %bb.n ]
  %.05673 = phi i32 [ 0, %.lr.ph.new ], [ %i.ds, %bb.n ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.n ]
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !98 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !99
  %i.df = trunc i64 %i.dd to i32
  %i.dg = add i32 %.05673, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !32 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !99
  %i.dk = trunc i64 %i.di to i32
  %i.dl = add i32 %.05574, %i.dk
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv.next
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !98 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !99
  %i.dr = trunc i64 %i.dp to i32
  %i.ds = add i32 %i.dg, %i.dr                    ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !32 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !99
  %i.dw = trunc i64 %i.du to i32
  %i.dx = add i32 %i.dl, %i.dw                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.n, !llvm.loop !100

._crit_edge81:                                    ; preds = %bb.s, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

bb.o:                                             ; preds = %.lr.ph80, %bb.s
  %indvars.iv86 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next87, %bb.s ] ; 3 uses
  %i.dy = phi ptr [ %i.bz, %.lr.ph80 ], [ %i.fi, %bb.s ]
  %.05378 = phi i32 [ 0, %.lr.ph80 ], [ %i.eu, %bb.s ] ; 2 uses
  %.06977 = phi i32 [ 0, %.lr.ph80 ], [ %i.fg, %bb.s ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %indvars.iv86 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 3 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !98 ; 3 uses
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = load ptr, ptr %1, align 8, !tbaa !24
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv86 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !32 ; 3 uses
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !28
  %i.ek = mul nsw i64 %i.ej, %i.eg
  %i.el = icmp sgt i64 %i.ek, 0
  br i1 %i.el, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.em = sext i32 %.05378 to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %sext71 = shl i64 %i.eg, 32
  %i.en = ashr exact i64 %sext71, 32
  %i.eo = load ptr, ptr %3, align 8, !tbaa !38, !noalias !101
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.em ; 2 uses
  %i.eq = load i64, ptr %i.ca, align 8, !tbaa !32, !noalias !101 ; 2 uses
  store ptr %i.ep, ptr %14, align 8, !tbaa !39, !alias.scope !101
  store i64 %i.en, ptr %i.cb, align 8, !tbaa !42, !alias.scope !101
  store i64 %i.at, ptr %i.cc, align 8, !tbaa !42, !alias.scope !101
  store ptr %3, ptr %i.cd, align 8, !tbaa !43, !alias.scope !101
  store i64 %i.em, ptr %i.ce, align 8, !tbaa !42, !alias.scope !101
  store i64 0, ptr %i.cf, align 8, !tbaa !42, !alias.scope !101
  store i64 %i.eq, ptr %i.cg, align 8, !tbaa !44, !alias.scope !101
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.er = load ptr, ptr %i.ee, align 8, !tbaa !38
  %i.es = load i64, ptr %i.ef, align 8, !tbaa !32
  store ptr %i.er, ptr %i.ch, align 8, !tbaa !47
  store i64 %i.es, ptr %i.ci, align 8, !tbaa !49
  store i32 %.06977, ptr %i.cj, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  store ptr %i.ep, ptr %11, align 8, !tbaa !52
  store i64 %i.eq, ptr %i.ck, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store ptr %11, ptr %12, align 8, !tbaa !55
  store ptr %10, ptr %i.cl, align 8, !tbaa !57
  store ptr %13, ptr %i.cm, align 8, !tbaa !59
  store ptr %14, ptr %i.cn, align 8, !tbaa !61
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSS_(ptr noundef nonnull align 8 dereferenceable(32) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %.pre = load i64, ptr %i.ea, align 8, !tbaa !98
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.et = phi i64 [ %.pre, %bb.p ], [ %i.eb, %bb.o ]
  %i.eu = add nsw i32 %.05378, %i.eh
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !95
  %i.ex = mul nsw i64 %i.ew, %i.et
  %i.ey = icmp sgt i64 %i.ex, 0
  br i1 %i.ey, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.ez = sext i32 %.06977 to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %sext72 = shl i64 %i.eb, 32
  %i.fa = ashr exact i64 %sext72, 32
  %i.fb = load ptr, ptr %2, align 8, !tbaa !107, !noalias !104
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.ez ; 2 uses
  %i.fd = load i64, ptr %i.co, align 8, !tbaa !98, !noalias !104 ; 2 uses
  store ptr %i.fc, ptr %15, align 8, !tbaa !108, !alias.scope !104
  store i64 %i.fa, ptr %i.cp, align 8, !tbaa !42, !alias.scope !104
  store i64 %i.an, ptr %i.cq, align 8, !tbaa !42, !alias.scope !104
  store ptr %2, ptr %i.cr, align 8, !tbaa !110, !alias.scope !104
  store i64 %i.ez, ptr %i.cs, align 8, !tbaa !42, !alias.scope !104
  store i64 0, ptr %i.ct, align 8, !tbaa !42, !alias.scope !104
  store i64 %i.fd, ptr %i.cu, align 8, !tbaa !111, !alias.scope !104
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.fe = load ptr, ptr %i.dz, align 8, !tbaa !107
  %i.ff = load i64, ptr %i.ea, align 8, !tbaa !98
  store ptr %i.fe, ptr %6, align 8, !tbaa !114
  store i64 %i.ff, ptr %i.cv, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.fc, ptr %7, align 8, !tbaa !117
  store i64 %i.fd, ptr %i.cw, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store ptr %7, ptr %8, align 8, !tbaa !119
  store ptr %6, ptr %i.cx, align 8, !tbaa !121
  store ptr %9, ptr %i.cy, align 8, !tbaa !123
  store ptr %15, ptr %i.cz, align 8, !tbaa !125
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fg = add nsw i32 %.06977, %i.ec
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.fi = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 24
  %i.fn = icmp ugt i64 %i.fm, %indvars.iv.next87
  br i1 %i.fn, label %bb.o, label %._crit_edge81, !llvm.loop !127
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl7combineIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEES3_S4_EEvRKSt6vectorIT_SaIS6_EERKS5_IT0_SaISB_EERNS1_15PlainObjectBaseIT1_EERNSG_IT2_EE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 7 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl7combineIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEES5_EEvRKSt6vectorIT_SaIS7_EERKS6_IT0_SaISC_EERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EERNSH_IT4_EE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !9
  call void @free(ptr noundef %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.b = load ptr, ptr %4, align 8, !tbaa !9
  call void @free(ptr noundef %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %5, align 8, !tbaa !9
  call void @free(ptr noundef %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.e = load ptr, ptr %4, align 8, !tbaa !9
  call void @free(ptr noundef %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl7combineIN5Eigen6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEES5_EEvRKSt6vectorIT_SaIS7_EERKS6_IT0_SaISC_EERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EERNSH_IT4_EE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.c = load ptr, ptr %0, align 8, !tbaa !131
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  %.not.i.i = icmp eq i64 %i.g, %i.i
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %4, align 8, !tbaa !9
  tail call void @free(ptr noundef %i.j) #13
  %i.k = icmp sgt i64 %i.g, 0
  br i1 %i.k, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, label %.sink.split.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.b
  %i.l = lshr exact i64 %i.f, 2
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #14 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %.sink.split.i.i

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.b
  %.sink.i.i = phi ptr [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i, ptr %4, align 8, !tbaa !9
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i
  store i64 %i.g, ptr %i.h, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !132  ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !135    ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = ashr exact i64 %i.u, 4                   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18
  %.not.i.i60 = icmp eq i64 %i.v, %i.x
  br i1 %.not.i.i60, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.y = load ptr, ptr %5, align 8, !tbaa !9
  tail call void @free(ptr noundef %i.y) #13
  %i.z = icmp sgt i64 %i.v, 0
  br i1 %i.z, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i63, label %.sink.split.i.i61

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i63: ; preds = %bb.d
  %i.aa = lshr exact i64 %i.u, 2
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #14 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.e, label %.sink.split.i.i61

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i63
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

.sink.split.i.i61:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i63, %bb.d
  %.sink.i.i62 = phi ptr [ %i.ab, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i63 ], [ null, %bb.d ]
  store ptr %.sink.i.i62, ptr %5, align 8, !tbaa !9
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !132
  %.pre112 = load ptr, ptr %1, align 8, !tbaa !135
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i61
  %i.ae = phi ptr [ %i.r, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ %.pre112, %.sink.split.i.i61 ] ; 6 uses
  %i.af = phi ptr [ %i.q, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ %.pre, %.sink.split.i.i61 ]
  store i64 %i.v, ptr %i.w, align 8, !tbaa !18
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !128 ; 3 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !131   ; 8 uses
  %.not = icmp ne ptr %i.ag, %i.ah                ; 3 uses
  %.not59 = icmp ne ptr %i.af, %i.ae              ; 2 uses
  %.not97 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not97, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 4                 ; 6 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !9     ; 5 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !9     ; 5 uses
  %min.iters.check = icmp ult i64 %i.al, 5
  %i.ao = ptrtoaddr ptr %i.an to i64
  %i.ap = ptrtoaddr ptr %i.am to i64
  %i.aq = sub i64 %i.ap, %i.ao
  %diff.check = icmp ugt i64 %i.aq, -16
  %or.cond174 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond174, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.ar = and i64 %i.al, 3                        ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = select i1 %i.as, i64 4, i64 %i.ar
  %n.vec = sub nsw i64 %i.al, %i.at               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bn, %vector.body ]
  %vec.phi134 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi135 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi136 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %i.au = or disjoint i64 %index, 2               ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %index
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.au
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %wide.vec = load <4 x i64>, ptr %i.az, align 8, !tbaa !136
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec137 = load <4 x i64>, ptr %i.ba, align 8, !tbaa !136
  %strided.vec138 = shufflevector <4 x i64> %wide.vec137, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.bb = trunc <2 x i64> %strided.vec to <2 x i32> ; 2 uses
  %i.bc = trunc <2 x i64> %strided.vec138 to <2 x i32> ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store <2 x i32> %i.bb, ptr %i.bd, align 4, !tbaa !31
  store <2 x i32> %i.bc, ptr %i.be, align 4, !tbaa !31
  %i.bf = add <2 x i32> %vec.phi135, %i.bb        ; 2 uses
  %i.bg = add <2 x i32> %vec.phi136, %i.bc        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %wide.vec139 = load <4 x i64>, ptr %i.bh, align 8, !tbaa !138
  %strided.vec140 = shufflevector <4 x i64> %wide.vec139, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec141 = load <4 x i64>, ptr %i.bi, align 8, !tbaa !138
  %strided.vec142 = shufflevector <4 x i64> %wide.vec141, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.bj = trunc <2 x i64> %strided.vec140 to <2 x i32> ; 2 uses
  %i.bk = trunc <2 x i64> %strided.vec142 to <2 x i32> ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store <2 x i32> %i.bj, ptr %i.bl, align 4, !tbaa !31
  store <2 x i32> %i.bk, ptr %i.bm, align 4, !tbaa !31
  %i.bn = add <2 x i32> %vec.phi, %i.bj           ; 2 uses
  %i.bo = add <2 x i32> %vec.phi134, %i.bk        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bo, %i.bn
  %i.bq = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %bin.rdx143 = add <2 x i32> %i.bg, %i.bf
  %i.br = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx143)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 8 uses
  %.05588.ph = phi i32 [ 0, %.lr.ph ], [ %i.bq, %middle.block ] ; 2 uses
  %.05687.ph = phi i32 [ 0, %.lr.ph ], [ %i.br, %middle.block ] ; 2 uses
  %i.bs = sub nsw i64 %i.al, %indvars.iv.ph
  %.neg = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.bs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.ph
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv.ph
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !136
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.ph
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !31
  %i.bz = add i32 %.05687.ph, %i.bx               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !138
  %i.cc = trunc i64 %i.cb to i32                  ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.ph
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !31
  %i.ce = add i32 %.05588.ph, %i.cc               ; 2 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa178.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.bz, %scalar.ph.prol ]
  %.lcssa.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.ce, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.05588.unr = phi i32 [ %.05588.ph, %scalar.ph.preheader ], [ %i.ce, %scalar.ph.prol ]
  %.05687.unr = phi i32 [ %.05687.ph, %scalar.ph.preheader ], [ %i.bz, %scalar.ph.prol ]
  %i.cf = icmp eq i64 %i.al, %.neg
  br i1 %i.cf, label %._crit_edge.loopexit, label %scalar.ph

._crit_edge.loopexit:                             ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %.lcssa178 = phi i32 [ %.lcssa178.unr, %scalar.ph.prol.loopexit ], [ %i.dg, %scalar.ph ]
  %.lcssa = phi i32 [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.dl, %scalar.ph ]
  %i.cg = sext i32 %.lcssa178 to i64
  %i.ch = sext i32 %.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64
  %.056.lcssa = phi i64 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64 ], [ %i.cg, %._crit_edge.loopexit ]
  %.055.lcssa = phi i64 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64 ], [ %i.ch, %._crit_edge.loopexit ]
  %i.ci = select i1 %.not, i64 3, i64 0           ; 9 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.056.lcssa, i64 noundef %i.ci)
  %i.cj = select i1 %.not59, i64 3, i64 0         ; 4 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %.055.lcssa, i64 noundef %i.cj)
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !128 ; 2 uses
  %i.cl = load ptr, ptr %0, align 8, !tbaa !131   ; 2 uses
  %.not98 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not98, label %._crit_edge96, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %._crit_edge
  %i.cm = add nsw i64 %i.ci, -1
  %n.vec164 = and i64 %i.cj, 2                    ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 3
  br label %.lr.ph95

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.05588 = phi i32 [ %i.dl, %scalar.ph ], [ %.05588.unr, %scalar.ph.prol.loopexit ]
  %.05687 = phi i32 [ %i.dg, %scalar.ph ], [ %.05687.unr, %scalar.ph.prol.loopexit ]
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !136
  %i.cs = trunc i64 %i.cr to i32                  ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !31
  %i.cu = add i32 %.05687, %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !138
  %i.cx = trunc i64 %i.cw to i32                  ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !31
  %i.cz = add i32 %.05588, %i.cx
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.next
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv.next
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !136
  %i.de = trunc i64 %i.dd to i32                  ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next
  store i32 %i.de, ptr %i.df, align 4, !tbaa !31
  %i.dg = add i32 %i.cu, %i.de                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !138
  %i.dj = trunc i64 %i.di to i32                  ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !31
  %i.dl = add i32 %i.cz, %i.dj                    ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.al
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !143

._crit_edge96:                                    ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit, %._crit_edge
  ret void

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit
  %i.dm = phi ptr [ %i.hx, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit ], [ %i.cl, %.lr.ph95.preheader ] ; 5 uses
  %i.dn = phi ptr [ %i.hy, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit ], [ %i.ck, %.lr.ph95.preheader ] ; 4 uses
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit ], [ 0, %.lr.ph95.preheader ] ; 3 uses
  %.05392 = phi i32 [ %i.fl, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit ], [ 0, %.lr.ph95.preheader ] ; 2 uses
  %.08391 = phi i32 [ %i.hz, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit ], [ 0, %.lr.ph95.preheader ] ; 8 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %indvars.iv109 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !136 ; 3 uses
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = load ptr, ptr %1, align 8, !tbaa !135
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %indvars.iv109 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !138 ; 3 uses
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = icmp sgt i64 %i.dv, 0
  br i1 %i.dx, label %bb.f, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS2_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

bb.f:                                             ; preds = %.lr.ph95
  %i.dy = sext i32 %.05392 to i64
  %sext = shl i64 %i.dv, 32
  %i.dz = ashr exact i64 %sext, 32                ; 2 uses
  %i.ea = load ptr, ptr %3, align 8, !tbaa !144, !noalias !145 ; 2 uses
  %.idx.i.i.i.i = mul nsw i64 %i.dy, 12           ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %.idx.i.i.i.i
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !144 ; 2 uses
  %i.ed = icmp sgt i64 %i.dz, 0
  %or.cond = and i1 %.not59, %i.ed
  br i1 %or.cond, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS2_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.f
  %i.ee = ptrtoaddr ptr %i.ec to i64
  %i.ef = ptrtoaddr ptr %i.ea to i64
  %i.eg = add i64 %.idx.i.i.i.i, %i.ef
  %i.eh = sub i64 %i.ee, %i.eg
  %diff.check160 = icmp ult i64 %i.eh, -7
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.08391, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eu, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 12 ; 2 uses
  %invariant.gep.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.eb, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.ei = getelementptr i8, ptr %i.ec, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  br i1 %diff.check160, label %vector.body165, label %scalar.ph161.preheader

scalar.ph161.preheader:                           ; preds = %vector.body165, %.preheader.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %n.vec164, %vector.body165 ] ; 4 uses
  %i.ej = sub nsw i64 %i.cj, %.09.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter183 = and i64 %i.ej, 3                 ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %scalar.ph161.prol.loopexit, label %scalar.ph161.prol

scalar.ph161.prol:                                ; preds = %scalar.ph161.preheader, %scalar.ph161.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.en, %scalar.ph161.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph161.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph161.prol ], [ 0, %scalar.ph161.preheader ]
  %gep.i.i.i.i.i.i.i.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %i.ek = getelementptr [4 x i8], ptr %i.ei, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !31
  %i.em = add nsw i32 %i.el, %.08391
  store i32 %i.em, ptr %gep.i.i.i.i.i.i.i.i.i.i.prol, align 4, !tbaa !31
  %i.en = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter183
  br i1 %prol.iter.cmp.not, label %scalar.ph161.prol.loopexit, label %scalar.ph161.prol, !llvm.loop !148

scalar.ph161.prol.loopexit:                       ; preds = %scalar.ph161.prol, %scalar.ph161.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph161.preheader ], [ %i.en, %scalar.ph161.prol ]
  %i.eo = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.ph, %i.cj
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph161

vector.body165:                                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body165
  %index166 = phi i64 [ %index.next168, %vector.body165 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.eq = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i, i64 %index166
  %i.er = getelementptr [4 x i8], ptr %i.ei, i64 %index166
  %wide.load167 = load <2 x i32>, ptr %i.er, align 4, !tbaa !31
  %i.es = add nsw <2 x i32> %wide.load167, %broadcast.splat
  store <2 x i32> %i.es, ptr %i.eq, align 4, !tbaa !31
  %index.next168 = add nuw i64 %index166, 2       ; 2 uses
  %i.et = icmp eq i64 %index.next168, %n.vec164
  br i1 %i.et, label %scalar.ph161.preheader, label %vector.body165, !llvm.loop !150

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %scalar.ph161.prol.loopexit
  %i.eu = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eu, %i.dz
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS2_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !151

scalar.ph161:                                     ; preds = %scalar.ph161.prol.loopexit, %scalar.ph161
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fk, %scalar.ph161 ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph161.prol.loopexit ] ; 6 uses
  %gep.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %i.ev = getelementptr [4 x i8], ptr %i.ei, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !31
  %i.ex = add nsw i32 %i.ew, %.08391
  store i32 %i.ex, ptr %gep.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !31
  %i.ey = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %gep.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i, i64 %i.ey
  %i.ez = getelementptr [4 x i8], ptr %i.ei, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !31
  %i.fb = add nsw i32 %i.fa, %.08391
  store i32 %i.fb, ptr %gep.i.i.i.i.i.i.i.i.i.i.1, align 4, !tbaa !31
  %i.fc = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %gep.i.i.i.i.i.i.i.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i, i64 %i.fc
  %i.fd = getelementptr [4 x i8], ptr %i.ei, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !31
  %i.ff = add nsw i32 %i.fe, %.08391
  store i32 %i.ff, ptr %gep.i.i.i.i.i.i.i.i.i.i.2, align 4, !tbaa !31
  %i.fg = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %gep.i.i.i.i.i.i.i.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i, i64 %i.fg
  %i.fh = getelementptr [4 x i8], ptr %i.ei, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !31
  %i.fj = add nsw i32 %i.fi, %.08391
  store i32 %i.fj, ptr %gep.i.i.i.i.i.i.i.i.i.i.3, align 4, !tbaa !31
  %i.fk = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 4
  br label %scalar.ph161, !llvm.loop !152

_ZN5Eigen5BlockINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS2_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph95
  %i.fl = add nsw i32 %.05392, %i.dw
  %i.fm = icmp sgt i64 %i.dq, 0
  br i1 %i.fm, label %bb.g, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit

bb.g:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS2_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.fn = sext i32 %.08391 to i64
  %sext85 = shl i64 %i.dq, 32
  %i.fo = ashr exact i64 %sext85, 32              ; 3 uses
  %i.fp = load ptr, ptr %2, align 8, !tbaa !153, !noalias !154 ; 2 uses
  %i.fq = ptrtoaddr ptr %i.fp to i64
  %.idx.i.i.i.i65 = mul nsw i64 %i.fn, 24         ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 %.idx.i.i.i.i65 ; 5 uses
  %i.fs = load ptr, ptr %i.do, align 8, !tbaa !153 ; 5 uses
  %i.ft = ptrtoaddr ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fv = and i64 %i.fu, 7
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fv, 0
  %i.fw = icmp sgt i64 %i.fo, 0                   ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %or.cond84 = and i1 %.not, %i.fw
  br i1 %or.cond84, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gb, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.h ] ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 24 ; 2 uses
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.fr, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.fx = getelementptr i8, ptr %i.fs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  br i1 %i.cn, label %.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.new

.epil.preheader:                                  ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %.not)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ 0, %.epil.preheader ], [ %i.ga, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %gep.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.fy = getelementptr [8 x i8], ptr %i.fx, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !157
  store double %i.fz, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !tbaa !157
  %i.ga = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.ci
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, !llvm.loop !159

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.i
  %i.gb = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond13.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gb, %i.fo
  br i1 %exitcond13.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !160

.preheader.i.i.i.i.i.i.i.i.i.i.i.new:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.new
  %niter = phi i64 [ %niter.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.new ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %niter
  %i.gc = getelementptr [8 x i8], ptr %i.fx, i64 %niter
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !157
  store double %i.gd, ptr %gep.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !157
  %i.ge = or disjoint i64 %niter, 1               ; 2 uses
  %gep.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ge
  %i.gf = getelementptr [8 x i8], ptr %i.fx, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !157
  store double %i.gg, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !157
  %i.gh = or disjoint i64 %niter, 2               ; 2 uses
  %gep.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %i.gh
  %i.gi = getelementptr [8 x i8], ptr %i.fx, i64 %i.gh
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !157
  store double %i.gj, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !157
  %i.gk = or disjoint i64 %niter, 3               ; 2 uses
  %gep.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %i.gk
  %i.gl = getelementptr [8 x i8], ptr %i.fx, i64 %i.gk
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !157
  store double %i.gm, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !tbaa !157
  %niter.next.3 = add nuw nsw i64 %niter, 4
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.new, !llvm.loop !161

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  br i1 %i.fw, label %.lr.ph56.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph56.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.gn = lshr exact i64 %i.fu, 3
  %i.go = and i64 %i.gn, 1
  %i.gp = tail call i64 @llvm.smin.i64(i64 %i.go, i64 %i.ci)
  %i.gq = add i64 %.idx.i.i.i.i65, %i.fq
  %i.gr = sub i64 %i.ft, %i.gq
  %diff.check146 = icmp ugt i64 %i.gr, -32
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i67, %.lr.ph56.i.i.i.i.i.i.i.i.i.i
  %.03455.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph56.i.i.i.i.i.i.i.i.i.i ], [ %i.hs, %._crit_edge.i.i.i.i.i.i.i.i.i.i67 ] ; 4 uses
  %.03554.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gp, %.lr.ph56.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i67 ] ; 6 uses
  %i.gs = sub nsw i64 %i.ci, %.03554.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.gt = and i64 %i.gs, -2
  %i.gu = add nuw nsw i64 %i.gt, %.03554.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.gv = icmp sgt i64 %.03554.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gv, label %.preheader45.loopexit.i.i.i.i.i.i.i.i.i.i, label %.preheader45.i.i.i.i.i.i.i.i.i.i

.preheader45.loopexit.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.j
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i68 = mul nuw nsw i64 %.03455.i.i.i.i.i.i.i.i.i.i, 24 ; 2 uses
  %i.gw = getelementptr i8, ptr %i.fs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i68
  %invariant.gep.i.i.i.i.i.i.i.i.i.i69 = getelementptr i8, ptr %i.fr, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i68
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !157
  store double %i.gx, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i69, align 8, !tbaa !157
  br label %.preheader45.i.i.i.i.i.i.i.i.i.i

.preheader45.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader45.loopexit.i.i.i.i.i.i.i.i.i.i, %bb.j
  %i.gy = icmp sgt i64 %i.gs, 1
  br i1 %i.gy, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i66

.lr.ph49.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader45.i.i.i.i.i.i.i.i.i.i
  %.idx.i.i.i37.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.03455.i.i.i.i.i.i.i.i.i.i, 24 ; 2 uses
  %invariant.gep.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.fr, i64 %.idx.i.i.i37.i.i.i.i.i.i.i.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.idx.i.i.i37.i.i.i.i.i.i.i.i.i.i
  br label %bb.k

.preheader.i.i.i.i.i.i.i.i.i.i66:                 ; preds = %bb.k, %.preheader45.i.i.i.i.i.i.i.i.i.i
  %i.ha = icmp slt i64 %i.gu, %i.ci
  br i1 %i.ha, label %.lr.ph51.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i67

.lr.ph51.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i66
  %.idx.i.i.i38.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.03455.i.i.i.i.i.i.i.i.i.i, 24 ; 2 uses
  %invariant.gep52.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.fr, i64 %.idx.i.i.i38.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.hb = getelementptr i8, ptr %i.fs, i64 %.idx.i.i.i38.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.hc = and i64 %i.gs, -2
  %i.hd = add nsw i64 %.03554.i.i.i.i.i.i.i.i.i.i, %i.hc
  %i.he = sub i64 %i.ci, %i.hd                    ; 3 uses
  %min.iters.check148 = icmp ult i64 %i.he, 4
  %or.cond176 = select i1 %min.iters.check148, i1 true, i1 %diff.check146
  br i1 %or.cond176, label %scalar.ph147.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %.lr.ph51.i.i.i.i.i.i.i.i.i.i
  %n.vec150 = and i64 %i.he, -4                   ; 3 uses
  %i.hf = add i64 %i.gu, %n.vec150
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next154, %vector.body151 ] ; 2 uses
  %i.hg = add i64 %i.gu, %index152                ; 2 uses
  %i.hh = getelementptr [8 x i8], ptr %invariant.gep52.i.i.i.i.i.i.i.i.i.i, i64 %i.hg ; 2 uses
  %i.hi = getelementptr [8 x i8], ptr %i.hb, i64 %i.hg ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 16
  %wide.load = load <2 x double>, ptr %i.hi, align 8, !tbaa !157
  %wide.load153 = load <2 x double>, ptr %i.hj, align 8, !tbaa !157
  %i.hk = getelementptr i8, ptr %i.hh, i64 16
  store <2 x double> %wide.load, ptr %i.hh, align 8, !tbaa !157
  store <2 x double> %wide.load153, ptr %i.hk, align 8, !tbaa !157
  %index.next154 = add nuw i64 %index152, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next154, %n.vec150
  br i1 %i.hl, label %middle.block155, label %vector.body151, !llvm.loop !162

middle.block155:                                  ; preds = %vector.body151
  %cmp.n = icmp eq i64 %i.he, %n.vec150
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i67, label %scalar.ph147.preheader

scalar.ph147.preheader:                           ; preds = %.lr.ph51.i.i.i.i.i.i.i.i.i.i, %middle.block155
  %.050.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.gu, %.lr.ph51.i.i.i.i.i.i.i.i.i.i ], [ %i.hf, %middle.block155 ]
  br label %scalar.ph147

bb.k:                                             ; preds = %bb.k, %.lr.ph49.i.i.i.i.i.i.i.i.i.i
  %.03248.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.03554.i.i.i.i.i.i.i.i.i.i, %.lr.ph49.i.i.i.i.i.i.i.i.i.i ], [ %i.ho, %bb.k ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i, i64 %.03248.i.i.i.i.i.i.i.i.i.i
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %.03248.i.i.i.i.i.i.i.i.i.i
  %i.hn = load <2 x double>, ptr %i.hm, align 1, !tbaa !163
  store <2 x double> %i.hn, ptr %gep.i.i.i.i.i.i.i.i.i, align 16, !tbaa !163
  %i.ho = add nsw i64 %.03248.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hp = icmp slt i64 %i.ho, %i.gu
  br i1 %i.hp, label %bb.k, label %.preheader.i.i.i.i.i.i.i.i.i.i66, !llvm.loop !164

._crit_edge.i.i.i.i.i.i.i.i.i.i67:                ; preds = %scalar.ph147, %middle.block155, %.preheader.i.i.i.i.i.i.i.i.i.i66
  %i.hq = and i64 %.03554.i.i.i.i.i.i.i.i.i.i, 1
  %i.hr = xor i64 %i.hq, 1
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.ci, i64 %i.hr)
  %i.hs = add nuw nsw i64 %.03455.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond60.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hs, %i.fo
  br i1 %exitcond60.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %bb.j, !llvm.loop !165

scalar.ph147:                                     ; preds = %scalar.ph147.preheader, %scalar.ph147
  %.050.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hv, %scalar.ph147 ], [ %.050.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph147.preheader ] ; 3 uses
  %gep53.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep52.i.i.i.i.i.i.i.i.i.i, i64 %.050.i.i.i.i.i.i.i.i.i.i
  %i.ht = getelementptr [8 x i8], ptr %i.hb, i64 %.050.i.i.i.i.i.i.i.i.i.i
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !157
  store double %i.hu, ptr %gep53.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !157
  %i.hv = add nsw i64 %.050.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hw = icmp slt i64 %i.hv, %i.ci
  br i1 %i.hw, label %scalar.ph147, label %._crit_edge.i.i.i.i.i.i.i.i.i.i67, !llvm.loop !166

_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit.loopexit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i67
  %.pre113 = load ptr, ptr %i.a, align 8, !tbaa !128
  %.pre114 = load ptr, ptr %0, align 8, !tbaa !131
  br label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i, %bb.h, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS2_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.hx = phi ptr [ %i.dm, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS2_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit ], [ %.pre114, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit.loopexit ], [ %i.dm, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.dm, %bb.h ], [ %i.dm, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hy = phi ptr [ %i.dn, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS2_EEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit ], [ %.pre113, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEELin1ELin1ELb0EEaSIS2_EERS3_RKNS_9DenseBaseIT_EE.exit.loopexit ], [ %i.dn, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.dn, %bb.h ], [ %i.dn, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hz = add nsw i32 %.08391, %i.dr
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hx to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = ashr exact i64 %i.ic, 4
  %i.ie = icmp ugt i64 %i.id, %indvars.iv.next110
  br i1 %i.ie, label %.lr.ph95, label %._crit_edge96, !llvm.loop !167
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl7combineIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S4_EEvRKSt6vectorIT_SaIS6_EERKS5_IT0_SaISB_EERNS1_15PlainObjectBaseIT1_EERNSG_IT2_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 7 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl7combineIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEES5_EEvRKSt6vectorIT_SaIS7_EERKS6_IT0_SaISC_EERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EERNSH_IT4_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !9
  call void @free(ptr noundef %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.b = load ptr, ptr %4, align 8, !tbaa !9
  call void @free(ptr noundef %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %5, align 8, !tbaa !9
  call void @free(ptr noundef %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.e = load ptr, ptr %4, align 8, !tbaa !9
  call void @free(ptr noundef %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl7combineIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEES5_EEvRKSt6vectorIT_SaIS7_EERKS6_IT0_SaISC_EERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EERNSH_IT4_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Eigen::internal::evaluator.158", align 8 ; 5 uses
  %7 = alloca %"struct.Eigen::internal::evaluator.163", align 8 ; 5 uses
  %8 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.168", align 8 ; 7 uses
  %9 = alloca %"struct.Eigen::internal::assign_op.156", align 1 ; 3 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.133", align 8 ; 6 uses
  %11 = alloca %"struct.Eigen::internal::evaluator.150", align 8 ; 5 uses
  %12 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.155", align 8 ; 7 uses
  %13 = alloca %"struct.Eigen::internal::assign_op.131", align 1 ; 3 uses
  %14 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %15 = alloca %"class.Eigen::Block.55", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = load ptr, ptr %0, align 8, !tbaa !90
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  %.not.i.i = icmp eq i64 %i.g, %i.i
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %4, align 8, !tbaa !9
  tail call void @free(ptr noundef %i.j) #13
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, label %.sink.split.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.b
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #14 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %.sink.split.i.i

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
end_hunk_1
begin_hunk_2_@_ZN3igl7combineIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEES5_EEvRKSt6vectorIT_SaIS7_EERKS6_IT0_SaISC_EERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EERNSH_IT4_EE:bb.a
  br i1 %i.ac, label %bb.e, label %.sink.split.i.i61

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i63
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

.sink.split.i.i61:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i63, %bb.d
  %.sink.i.i62 = phi ptr [ %i.ab, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i63 ], [ null, %bb.d ]
  store ptr %.sink.i.i62, ptr %5, align 8, !tbaa !9
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i61
  store i64 %i.v, ptr %i.w, align 8, !tbaa !18
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !90    ; 6 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = sdiv exact i64 %i.ai, 24                ; 3 uses
  %.not = icmp eq ptr %i.ae, %i.af                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !95
  %sext = shl i64 %i.al, 32
  %i.am = ashr exact i64 %sext, 32
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64, %bb.f
  %i.an = phi i64 [ %i.am, %bb.f ], [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit64 ] ; 5 uses
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.ap = load ptr, ptr %1, align 8, !tbaa !24    ; 5 uses
  %.not59 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !28
  %sext70 = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext70, 32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.at = phi i64 [ %i.as, %bb.h ], [ 0, %bb.g ]  ; 5 uses
  br i1 %.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.au = load ptr, ptr %4, align 8, !tbaa !9     ; 3 uses
  %i.av = load ptr, ptr %5, align 8, !tbaa !9     ; 3 uses
  %xtraiter = and i64 %i.aj, 1
  %i.aw = icmp eq i64 %i.ai, 24
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.aj, -2
  br label %bb.n

._crit_edge.unr-lcssa:                            ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %.05574.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.dx, %._crit_edge.unr-lcssa ]
  %.05673.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.ds, %._crit_edge.unr-lcssa ]
  %lcmp.mod106 = trunc i64 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod106)
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv.epil.init
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv.epil.init
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !98
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.epil.init
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !31
  %i.bd = add i32 %.05673.epil.init, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !32
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.epil.init
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !31
  %i.bi = add i32 %.05574.epil.init, %i.bg
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa103 = phi i32 [ %i.ds, %._crit_edge.unr-lcssa ], [ %i.bd, %.epil.preheader ] ; 2 uses
  %.lcssa = phi i32 [ %i.dx, %._crit_edge.unr-lcssa ], [ %i.bi, %.epil.preheader ] ; 2 uses
  %i.bj = sext i32 %.lcssa103 to i64              ; 3 uses
  %i.bk = icmp eq i32 %.lcssa103, 0
  %i.bl = icmp eq i64 %i.an, 0
  %or.cond.i.i = or i1 %i.bl, %i.bk
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bm = sdiv i64 9223372036854775807, %i.an
  %i.bn = icmp slt i64 %i.bm, %i.bj
  br i1 %i.bn, label %bb.k, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.k:                                             ; preds = %bb.j
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bo, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.i, %._crit_edge, %bb.j
  %i.bp = phi i64 [ %i.bj, %bb.j ], [ %i.bj, %._crit_edge ], [ 0, %bb.i ] ; 2 uses
  %.055.lcssa100 = phi i32 [ %.lcssa, %bb.j ], [ %.lcssa, %._crit_edge ], [ 0, %bb.i ] ; 2 uses
  %i.bq = mul nsw i64 %i.an, %i.bp
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bq, i64 noundef %i.bp, i64 noundef %i.an)
  %i.br = sext i32 %.055.lcssa100 to i64          ; 3 uses
  %i.bs = icmp eq i32 %.055.lcssa100, 0
  %i.bt = icmp eq i64 %i.at, 0
  %or.cond.i.i65 = or i1 %i.bt, %i.bs
  br i1 %or.cond.i.i65, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.bu = sdiv i64 9223372036854775807, %i.at
  %i.bv = icmp slt i64 %i.bu, %i.br
  br i1 %i.bv, label %bb.m, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bw, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.l
  %i.bx = mul nsw i64 %i.at, %i.br
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bx, i64 noundef %i.br, i64 noundef %i.at)
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.bz = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %.not83 = icmp eq ptr %i.by, %i.bz
  br i1 %.not83, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.o

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.n ] ; 6 uses
  %.05574 = phi i32 [ 0, %.lr.ph.new ], [ %i.dx, %bb.n ]
  %.05673 = phi i32 [ 0, %.lr.ph.new ], [ %i.ds, %bb.n ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.n ]
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !98
  %i.de = trunc i64 %i.dd to i32                  ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  store i32 %i.de, ptr %i.df, align 4, !tbaa !31
  %i.dg = add i32 %.05673, %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !32
  %i.dj = trunc i64 %i.di to i32                  ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !31
  %i.dl = add i32 %.05574, %i.dj
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv.next
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !98
  %i.dq = trunc i64 %i.dp to i32                  ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !31
  %i.ds = add i32 %i.dg, %i.dq                    ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !32
  %i.dv = trunc i64 %i.du to i32                  ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !31
  %i.dx = add i32 %i.dl, %i.dv                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.n, !llvm.loop !168

._crit_edge81:                                    ; preds = %bb.s, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

bb.o:                                             ; preds = %.lr.ph80, %bb.s
  %indvars.iv86 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next87, %bb.s ] ; 3 uses
  %i.dy = phi ptr [ %i.bz, %.lr.ph80 ], [ %i.fi, %bb.s ]
  %.05378 = phi i32 [ 0, %.lr.ph80 ], [ %i.eu, %bb.s ] ; 2 uses
  %.06977 = phi i32 [ 0, %.lr.ph80 ], [ %i.fg, %bb.s ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %indvars.iv86 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 3 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !98 ; 3 uses
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = load ptr, ptr %1, align 8, !tbaa !24
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv86 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !32 ; 3 uses
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !28
  %i.ek = mul nsw i64 %i.ej, %i.eg
  %i.el = icmp sgt i64 %i.ek, 0
  br i1 %i.el, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.em = sext i32 %.05378 to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %sext71 = shl i64 %i.eg, 32
  %i.en = ashr exact i64 %sext71, 32
  %i.eo = load ptr, ptr %3, align 8, !tbaa !38, !noalias !169
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.em ; 2 uses
  %i.eq = load i64, ptr %i.ca, align 8, !tbaa !32, !noalias !169 ; 2 uses
  store ptr %i.ep, ptr %14, align 8, !tbaa !39, !alias.scope !169
  store i64 %i.en, ptr %i.cb, align 8, !tbaa !42, !alias.scope !169
  store i64 %i.at, ptr %i.cc, align 8, !tbaa !42, !alias.scope !169
  store ptr %3, ptr %i.cd, align 8, !tbaa !43, !alias.scope !169
  store i64 %i.em, ptr %i.ce, align 8, !tbaa !42, !alias.scope !169
  store i64 0, ptr %i.cf, align 8, !tbaa !42, !alias.scope !169
  store i64 %i.eq, ptr %i.cg, align 8, !tbaa !44, !alias.scope !169
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.er = load ptr, ptr %i.ee, align 8, !tbaa !38
  %i.es = load i64, ptr %i.ef, align 8, !tbaa !32
  store ptr %i.er, ptr %i.ch, align 8, !tbaa !47
  store i64 %i.es, ptr %i.ci, align 8, !tbaa !49
  store i32 %.06977, ptr %i.cj, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  store ptr %i.ep, ptr %11, align 8, !tbaa !52
  store i64 %i.eq, ptr %i.ck, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store ptr %11, ptr %12, align 8, !tbaa !55
  store ptr %10, ptr %i.cl, align 8, !tbaa !57
  store ptr %13, ptr %i.cm, align 8, !tbaa !59
  store ptr %14, ptr %i.cn, align 8, !tbaa !61
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIKS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSS_(ptr noundef nonnull align 8 dereferenceable(32) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %.pre = load i64, ptr %i.ea, align 8, !tbaa !98
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.et = phi i64 [ %.pre, %bb.p ], [ %i.eb, %bb.o ]
  %i.eu = add nsw i32 %.05378, %i.eh
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !95
  %i.ex = mul nsw i64 %i.ew, %i.et
  %i.ey = icmp sgt i64 %i.ex, 0
  br i1 %i.ey, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.ez = sext i32 %.06977 to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %sext72 = shl i64 %i.eb, 32
  %i.fa = ashr exact i64 %sext72, 32
  %i.fb = load ptr, ptr %2, align 8, !tbaa !107, !noalias !172
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.ez ; 2 uses
  %i.fd = load i64, ptr %i.co, align 8, !tbaa !98, !noalias !172 ; 2 uses
  store ptr %i.fc, ptr %15, align 8, !tbaa !108, !alias.scope !172
  store i64 %i.fa, ptr %i.cp, align 8, !tbaa !42, !alias.scope !172
  store i64 %i.an, ptr %i.cq, align 8, !tbaa !42, !alias.scope !172
  store ptr %2, ptr %i.cr, align 8, !tbaa !110, !alias.scope !172
  store i64 %i.ez, ptr %i.cs, align 8, !tbaa !42, !alias.scope !172
  store i64 0, ptr %i.ct, align 8, !tbaa !42, !alias.scope !172
  store i64 %i.fd, ptr %i.cu, align 8, !tbaa !111, !alias.scope !172
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.fe = load ptr, ptr %i.dz, align 8, !tbaa !107
  %i.ff = load i64, ptr %i.ea, align 8, !tbaa !98
  store ptr %i.fe, ptr %6, align 8, !tbaa !114
  store i64 %i.ff, ptr %i.cv, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.fc, ptr %7, align 8, !tbaa !117
  store i64 %i.fd, ptr %i.cw, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store ptr %7, ptr %8, align 8, !tbaa !119
  store ptr %6, ptr %i.cx, align 8, !tbaa !121
  store ptr %9, ptr %i.cy, align 8, !tbaa !123
  store ptr %15, ptr %i.cz, align 8, !tbaa !125
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fg = add nsw i32 %.06977, %i.ec
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.fi = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 24
  %i.fn = icmp ugt i64 %i.fm, %indvars.iv.next87
  br i1 %i.fn, label %bb.o, label %._crit_edge81, !llvm.loop !175
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !66
  tail call void @free(ptr noundef %i.f) #13
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #14 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #13 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !30
  store i64 %3, ptr %i.c, align 8, !tbaa !25
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIffEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176, !nonnull !178, !align !179 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit, label %bb.b
end_hunk_2
