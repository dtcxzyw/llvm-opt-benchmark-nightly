Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/slice_cached?download=true
inline.NumInlined: 611
inline.NumDeleted: 271
begin_hunk_0_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIjLi0EiEENS_12CwiseUnaryOpINS0_14scalar_cast_opIdjEEKNS2_IdLi0EiEEEEEEvRT_RKT0_:bb.a
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.037147
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !20
  %i.bs = sext i32 %i.br to i64
  %i.bt = add nsw i64 %i.bs, %i.bk
  br label %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEjE13InnerIteratorC2ERKSA_l.exit

_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEjE13InnerIteratorC2ERKSA_l.exit: ; preds = %bb.h, %bb.i
  %.sink.i.i = phi i64 [ %i.bp, %bb.h ], [ %i.bt, %bb.i ] ; 2 uses
  %i.bu = icmp sgt i64 %.sink.i.i, %i.bk
  br i1 %i.bu, label %.lr.ph145.preheader, label %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit

.lr.ph145.preheader:                              ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEjE13InnerIteratorC2ERKSA_l.exit
  %.pre155 = load i64, ptr %i.i, align 8, !tbaa !59
  br label %.lr.ph145

_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit:   ; preds = %bb.m, %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEjE13InnerIteratorC2ERKSA_l.exit
  %i.bv = add nuw nsw i64 %.037147, 1             ; 2 uses
  %exitcond153.not = icmp eq i64 %i.bv, %i.d
  br i1 %exitcond153.not, label %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit._crit_edge, label %bb.g, !llvm.loop !92

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %bb.m
  %i.bw = phi i64 [ %i.ci, %bb.m ], [ %.pre155, %.lr.ph145.preheader ] ; 5 uses
  %.sroa.8117.0144 = phi i64 [ %i.df, %bb.m ], [ %i.bk, %.lr.ph145.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %.sroa.8117.0144
  %i.by = load double, ptr %i.bx, align 8, !tbaa !22
  %i.bz = fptoui double %i.by to i32
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.sroa.8117.0144
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !20
  %i.cc = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.cd = getelementptr [4 x i8], ptr %i.cc, i64 %.037147
  %i.ce = getelementptr i8, ptr %i.cd, i64 4      ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !20 ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = add nsw i32 %i.cf, 1
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !20
  %i.ci = add nsw i64 %i.bw, 1                    ; 4 uses
  %i.cj = load i64, ptr %i.ag, align 8, !tbaa !62
  %.not136 = icmp sgt i64 %i.cj, %i.bw
  br i1 %.not136, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph145
  %i.ck = sitofp i64 %i.ci to double
  %i.cl = fptosi double %i.ck to i64
  %i.cm = add nsw i64 %i.ci, %i.cl
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cm, i64 2147483647) ; 5 uses
  %.not137 = icmp sgt i64 %.sroa.speculated.i, %i.bw
  br i1 %.not137, label %.noexc67, label %.noexc

.noexc:                                           ; preds = %bb.j
  %i.cn = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cn, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

.noexc67:                                         ; preds = %bb.j
  %i.co = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  %i.cp = shl nuw i64 %.sroa.speculated.i, 2
  %i.cq = select i1 %i.co, i64 -1, i64 %i.cp      ; 2 uses
  %i.cr = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cq) #21 ; 3 uses
  %i.cs = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cq) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i: ; preds = %.noexc67
  %i.ct = load i64, ptr %i.i, align 8, !tbaa !63
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.ct, i64 %.sroa.speculated.i) ; 2 uses
  %i.cu = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.aa, align 8, !tbaa !64 ; 3 uses
  br i1 %i.cu, label %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.pre23.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr align 4 %.pre.i.i, i64 %.idx.i.i, i1 false)
  %i.cv = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !44 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cs, ptr align 4 %i.cv, i64 %.idx.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i: ; preds = %.noexc67
  %i.cw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.cr) #20
  br label %.body68

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.cx = phi ptr [ %.pre23.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.cv, %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.cr, ptr %i.aa, align 8, !tbaa !64
  store ptr %i.cs, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64
  store i64 %.sroa.speculated.i, ptr %i.ag, align 8, !tbaa !62
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.cx) #20
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %bb.k, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  %i.cz = icmp eq ptr %.pre.i.i, null
  br i1 %i.cz, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #20
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph145, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %bb.l
  store i64 %i.ci, ptr %i.i, align 8, !tbaa !59
  %i.da = load ptr, ptr %i.aa, align 8, !tbaa !43 ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.bw
  store i32 0, ptr %i.db, align 4, !tbaa !20
  %i.dc = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !44
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.bw
  store i32 %i.cb, ptr %i.dd, align 4, !tbaa !20
  %i.de = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.cg
  store i32 %i.bz, ptr %i.de, align 4, !tbaa !20
  %i.df = add nsw i64 %.sroa.8117.0144, 1         ; 2 uses
  %exitcond152.not = icmp eq i64 %i.df, %.sink.i.i
  br i1 %exitcond152.not, label %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit, label %.lr.ph145

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !58 ; 3 uses
  store i8 0, ptr %2, align 8, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.di, i8 0, i64 64, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.dh, ptr %i.dj, align 8, !tbaa !52
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.dm = shl i64 %i.d, 2
  %i.dn = add i64 %i.dm, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.dn) ; 2 uses
  store ptr %calloc, ptr %i.dl, align 8, !tbaa !37
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.do = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.do, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.do, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc71 unwind label %bb.p

.noexc71:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIjiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dq) #17
  br label %.body

bb.q:                                             ; preds = %bb.n
  store i64 %i.d, ptr %i.di, align 8, !tbaa !36
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ds = mul nsw i64 %i.d, %i.dh
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.dh, i64 %i.d)
  %i.dt = shl nsw i64 %.sroa.speculated, 1
  %.sroa.speculated109 = tail call i64 @llvm.smin.i64(i64 %i.dt, i64 %i.ds) ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dw = icmp sgt i64 %.sroa.speculated109, 0
  br i1 %i.dw, label %bb.r, label %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit53

bb.r:                                             ; preds = %bb.q
  %i.dx = icmp samesign ugt i64 %.sroa.speculated109, 4611686018427387903
  %i.dy = shl nuw i64 %.sroa.speculated109, 2
  %i.dz = select i1 %i.dx, i64 -1, i64 %i.dy      ; 2 uses
  %i.ea = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dz) #21
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc83:                                         ; preds = %bb.r
  %i.eb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dz) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73 unwind label %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i72 ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73: ; preds = %.noexc83
  %i.ec = load i64, ptr %i.dk, align 8, !tbaa !63 ; 2 uses
  %i.ed = icmp sgt i64 %i.ec, 0
  %.pre.i.i75 = load ptr, ptr %i.du, align 8, !tbaa !64 ; 3 uses
  br i1 %i.ed, label %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i81, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73
  %.phi.trans.insert.i.i77 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre23.i.i78 = load ptr, ptr %.phi.trans.insert.i.i77, align 8, !tbaa !64
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i81: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73
  %i.ee = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 %.sroa.speculated109)
  %.idx.i.i82 = shl nuw nsw i64 %i.ee, 2          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr align 4 %.pre.i.i75, i64 %.idx.i.i82, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !44 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr align 4 %i.eg, i64 %.idx.i.i82, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i72: ; preds = %.noexc83
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body84.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79: ; preds = %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i81, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76
  %i.ei = phi ptr [ %.pre23.i.i78, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76 ], [ %i.eg, %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i81 ] ; 2 uses
  store ptr %i.ea, ptr %i.du, align 8, !tbaa !64
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.eb, ptr %i.ej, align 8, !tbaa !64
  store i64 %.sroa.speculated109, ptr %i.dv, align 8, !tbaa !62
  %i.ek = icmp eq ptr %i.ei, null
  br i1 %i.ek, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79
  tail call void @_ZdaPv(ptr noundef nonnull %i.ei) #20
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80: ; preds = %bb.s, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79
  %i.el = icmp eq ptr %.pre.i.i75, null
  br i1 %i.el, label %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit53, label %bb.t

bb.t:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i75) #20
  br label %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit53

_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit53: ; preds = %bb.q, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80, %bb.t
  %i.em = phi i64 [ 0, %bb.q ], [ %.sroa.speculated109, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80 ], [ %.sroa.speculated109, %bb.t ]
  %i.en = icmp sgt i64 %i.d, 0
  br i1 %i.en, label %.lr.ph142, label %._crit_edge143

.lr.ph142:                                        ; preds = %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit53
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.phi.trans.insert.i.i92 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  br label %bb.x

._crit_edge143:                                   ; preds = %._crit_edge, %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit53
  %i.es = load ptr, ptr %i.dr, align 8, !tbaa !33
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge143
  %i.eu = load i64, ptr %i.dk, align 8, !tbaa !59
  %i.ev = trunc i64 %i.eu to i32                  ; 2 uses
  %i.ew = load i64, ptr %i.di, align 8, !tbaa !36 ; 5 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  br i1 %i.ex, label %.lr.ph.i54, label %.loopexit

.lr.ph.i54:                                       ; preds = %bb.u
  %i.ey = load ptr, ptr %i.dl, align 8, !tbaa !37 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i54
  %.08.i55 = phi i64 [ %i.ew, %.lr.ph.i54 ], [ %i.fc, %bb.w ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.08.i55
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !20
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.w, label %.critedge.i56

bb.w:                                             ; preds = %bb.v
  %i.fc = add nsw i64 %.08.i55, -1
  %i.fd = icmp sgt i64 %.08.i55, 0
  br i1 %i.fd, label %bb.v, label %.critedge.i56, !llvm.loop !0

.critedge.i56:                                    ; preds = %bb.w, %bb.v
  %.0.lcssa.i57 = phi i64 [ -1, %bb.w ], [ %.08.i55, %bb.v ] ; 5 uses
  %.not.not11.i58 = icmp slt i64 %.0.lcssa.i57, %i.ew
  br i1 %.not.not11.i58, label %.lr.ph13.i59.preheader, label %.loopexit

.lr.ph13.i59.preheader:                           ; preds = %.critedge.i56
  %i.fe = sub i64 %i.ew, %.0.lcssa.i57            ; 3 uses
  %min.iters.check = icmp ult i64 %i.fe, 8
  br i1 %min.iters.check, label %.lr.ph13.i59.preheader193, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph13.i59.preheader
  %n.vec = and i64 %i.fe, -8                      ; 3 uses
  %i.ff = add i64 %.0.lcssa.i57, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fg = getelementptr [4 x i8], ptr %i.ey, i64 %.0.lcssa.i57
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %index ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 4
  %i.fj = getelementptr i8, ptr %i.fh, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.fi, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat, ptr %i.fj, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fe, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph13.i59.preheader193

.lr.ph13.i59.preheader193:                        ; preds = %.lr.ph13.i59.preheader, %middle.block
  %.1.in12.i60.ph = phi i64 [ %.0.lcssa.i57, %.lr.ph13.i59.preheader ], [ %i.ff, %middle.block ]
  br label %.lr.ph13.i59

.lr.ph13.i59:                                     ; preds = %.lr.ph13.i59.preheader193, %.lr.ph13.i59
  %.1.in12.i60 = phi i64 [ %.1.i61, %.lr.ph13.i59 ], [ %.1.in12.i60.ph, %.lr.ph13.i59.preheader193 ]
  %.1.i61 = add nsw i64 %.1.in12.i60, 1           ; 3 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %.1.i61
  store i32 %i.ev, ptr %i.fl, align 4, !tbaa !20
  %exitcond.not.i62 = icmp eq i64 %.1.i61, %i.ew
  br i1 %exitcond.not.i62, label %.loopexit, label %.lr.ph13.i59, !llvm.loop !94

bb.x:                                             ; preds = %.lr.ph142, %._crit_edge
  %i.fm = phi i64 [ %i.em, %.lr.ph142 ], [ %i.gh, %._crit_edge ] ; 2 uses
  %.0141 = phi i64 [ 0, %.lr.ph142 ], [ %i.gi, %._crit_edge ] ; 5 uses
  %i.fn = load ptr, ptr %i.dl, align 8, !tbaa !37
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.0141 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !20
  %i.fq = getelementptr i8, ptr %i.fo, i64 4
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !20
  %i.fr = load ptr, ptr %i.eo, align 8, !tbaa !18
  %i.fs = load ptr, ptr %i.ep, align 8, !tbaa !60
  %i.ft = load ptr, ptr %i.eq, align 8, !tbaa !61
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.0141 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !20
  %i.fw = sext i32 %i.fv to i64                   ; 3 uses
  %i.fx = load ptr, ptr %i.er, align 8, !tbaa !56 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fz = getelementptr i8, ptr %i.fu, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !20
  %i.gb = sext i32 %i.ga to i64
  br label %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEjE13InnerIteratorC2ERKSA_l.exit65

bb.z:                                             ; preds = %bb.x
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %.0141
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !20
  %i.ge = sext i32 %i.gd to i64
  %i.gf = add nsw i64 %i.ge, %i.fw
  br label %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEjE13InnerIteratorC2ERKSA_l.exit65

_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEjE13InnerIteratorC2ERKSA_l.exit65: ; preds = %bb.y, %bb.z
  %.sink.i.i64 = phi i64 [ %i.gb, %bb.y ], [ %i.gf, %bb.z ] ; 2 uses
  %i.gg = icmp sgt i64 %.sink.i.i64, %i.fw
  br i1 %i.gg, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.af, %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEjE13InnerIteratorC2ERKSA_l.exit65
  %i.gh = phi i64 [ %i.fm, %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEjE13InnerIteratorC2ERKSA_l.exit65 ], [ %i.hn, %bb.af ]
  %i.gi = add nuw nsw i64 %.0141, 1               ; 2 uses
  %exitcond151.not = icmp eq i64 %i.gi, %i.d
  br i1 %exitcond151.not, label %._crit_edge143, label %bb.x, !llvm.loop !95

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEjE13InnerIteratorC2ERKSA_l.exit65, %bb.af
  %i.gj = phi i64 [ %i.hn, %bb.af ], [ %i.fm, %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEjE13InnerIteratorC2ERKSA_l.exit65 ] ; 2 uses
  %.sroa.8.0140 = phi i64 [ %i.hr, %bb.af ], [ %i.fw, %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEjE13InnerIteratorC2ERKSA_l.exit65 ] ; 3 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %.sroa.8.0140
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !22
  %i.gm = fptoui double %i.gl to i32
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %.sroa.8.0140
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !20
  %i.gp = load ptr, ptr %i.dl, align 8, !tbaa !37
  %i.gq = getelementptr [4 x i8], ptr %i.gp, i64 %.0141
  %i.gr = getelementptr i8, ptr %i.gq, i64 4      ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !20 ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = add nsw i32 %i.gs, 1
  store i32 %i.gu, ptr %i.gr, align 4, !tbaa !20
  %i.gv = load i64, ptr %i.dk, align 8, !tbaa !59 ; 5 uses
  %i.gw = add nsw i64 %i.gv, 1                    ; 3 uses
  %.not = icmp sgt i64 %i.gj, %i.gv
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.aa

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.du, align 8, !tbaa !43
  %.pre154 = load ptr, ptr %.phi.trans.insert.i.i92, align 8, !tbaa !44
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph
  %i.gx = sitofp i64 %i.gw to double
  %i.gy = fptosi double %i.gx to i64
  %i.gz = add nsw i64 %i.gw, %i.gy
  %.sroa.speculated.i86 = tail call i64 @llvm.smin.i64(i64 %i.gz, i64 2147483647) ; 6 uses
  %.not135 = icmp sgt i64 %.sroa.speculated.i86, %i.gv
  br i1 %.not135, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ha = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ha, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.ha, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc98:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.hb = shl nuw nsw i64 %.sroa.speculated.i86, 2 ; 2 uses
  %i.hc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hb) #21
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc99:                                         ; preds = %bb.ac
  %i.hd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hb) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i88 unwind label %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i87 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i88: ; preds = %.noexc99
  %i.he = load i64, ptr %i.dk, align 8, !tbaa !63
  %.sroa.speculated.i.i89 = tail call i64 @llvm.smin.i64(i64 %i.he, i64 %.sroa.speculated.i86) ; 2 uses
  %i.hf = icmp sgt i64 %.sroa.speculated.i.i89, 0
  %.pre.i.i90 = load ptr, ptr %i.du, align 8, !tbaa !64 ; 3 uses
  br i1 %i.hf, label %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i96, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i91

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i91: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i88
  %.pre23.i.i93 = load ptr, ptr %.phi.trans.insert.i.i92, align 8, !tbaa !64
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i94

_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i96: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i88
  %.idx.i.i97 = shl nuw nsw i64 %.sroa.speculated.i.i89, 2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hc, ptr align 4 %.pre.i.i90, i64 %.idx.i.i97, i1 false)
  %i.hg = load ptr, ptr %.phi.trans.insert.i.i92, align 8, !tbaa !44 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr align 4 %i.hg, i64 %.idx.i.i97, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i94

_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i87: ; preds = %.noexc99
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body84.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i94: ; preds = %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i96, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i91
  %i.hi = phi ptr [ %.pre23.i.i93, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i91 ], [ %i.hg, %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i96 ] ; 2 uses
  store ptr %i.hc, ptr %i.du, align 8, !tbaa !64
  store ptr %i.hd, ptr %.phi.trans.insert.i.i92, align 8, !tbaa !64
  store i64 %.sroa.speculated.i86, ptr %i.dv, align 8, !tbaa !62
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95, label %bb.ad

bb.ad:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i94
  tail call void @_ZdaPv(ptr noundef nonnull %i.hi) #20
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95: ; preds = %bb.ad, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i94
  %i.hk = icmp eq ptr %.pre.i.i90, null
  br i1 %i.hk, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i90) #20
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph._crit_edge, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95, %bb.ae
  %i.hl = phi ptr [ %.pre154, %.lr.ph._crit_edge ], [ %i.hd, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95 ], [ %i.hd, %bb.ae ]
  %i.hm = phi ptr [ %.pre, %.lr.ph._crit_edge ], [ %i.hc, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95 ], [ %i.hc, %bb.ae ] ; 2 uses
  %i.hn = phi i64 [ %i.gj, %.lr.ph._crit_edge ], [ %.sroa.speculated.i86, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95 ], [ %.sroa.speculated.i86, %bb.ae ] ; 2 uses
  store i64 %i.gw, ptr %i.dk, align 8, !tbaa !59
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.gv
  store i32 0, ptr %i.ho, align 4, !tbaa !20
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.gv
  store i32 %i.go, ptr %i.hp, align 4, !tbaa !20
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.gt
  store i32 %i.gm, ptr %i.hq, align 4, !tbaa !20
  %i.hr = add nsw i64 %.sroa.8.0140, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hr, %.sink.i.i64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph13.i59, %middle.block, %._crit_edge143, %bb.u, %.critedge.i56
  store i8 1, ptr %2, align 8, !tbaa !29
  %i.hs = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIjLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %.loopexit
  %i.ht = load ptr, ptr %i.dl, align 8, !tbaa !37
  call void @free(ptr noundef %i.ht) #17
  %i.hu = load ptr, ptr %i.dr, align 8, !tbaa !33
  call void @free(ptr noundef %i.hu) #17
  %i.hv = load ptr, ptr %i.du, align 8, !tbaa !43 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.hv) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !44 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %_ZN5Eigen12SparseMatrixIjLi0EiED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.hy) #20
  br label %_ZN5Eigen12SparseMatrixIjLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIjLi0EiED2Ev.exit:         ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN5Eigen12SparseMatrixIjLi0EiE8finalizeEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.ab, %bb.r, %.loopexit
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %.body84

.body84.sink.split:                               ; preds = %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i72, %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i87
  %.lcssa176.sink = phi ptr [ %i.hc, %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i87 ], [ %i.ea, %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i72 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.hh, %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i87 ], [ %i.eh, %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i72 ]
  tail call void @_ZdaPv(ptr noundef nonnull %.lcssa176.sink) #20
  br label %.body84

.body84:                                          ; preds = %.body84.sink.split, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp194, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.ph, %.body84.sink.split ]
  call void @_ZN5Eigen12SparseMatrixIjLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #17
  br label %.body

.body:                                            ; preds = %bb.p, %.body84
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body84 ], [ %i.dp, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.body68

_ZN5Eigen12SparseMatrixIjLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block189, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIjLi0EiED2Ev.exit
  ret void

.body68:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.cw, %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIjLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.a, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.b, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %.not = icmp ne i64 %i.d, %2
  %i.e = icmp eq i64 %i.d, 0
  %or.cond = or i1 %.not, %i.e
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  tail call void @free(ptr noundef %i.g) #17
  %i.h = shl i64 %2, 2
  %i.i = add i64 %i.h, 4
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #18 ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !37
  %.not6 = icmp eq ptr %i.j, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %2, ptr %i.c, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %.not7 = icmp eq ptr %i.m, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #17
  store ptr null, ptr %i.l, align 8, !tbaa !33
  %.pre = load i64, ptr %i.c, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i64 [ %.pre, %bb.f ], [ %2, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.q = shl i64 %i.n, 2
  %i.r = add i64 %i.q, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.r, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIjLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !29, !range !45, !noundef !46
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !64
  store ptr %i.f, ptr %i.c, align 8, !tbaa !64
  store ptr %i.e, ptr %i.d, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !tbaa !63
  %i.j = load i64, ptr %i.h, align 8, !tbaa !63
  store i64 %i.j, ptr %i.g, align 8, !tbaa !63
  store i64 %i.i, ptr %i.h, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !63
  %i.n = load i64, ptr %i.l, align 8, !tbaa !63
  store i64 %i.n, ptr %i.k, align 8, !tbaa !63
  store i64 %i.m, ptr %i.l, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !64
  store ptr %i.r, ptr %i.o, align 8, !tbaa !64
  store ptr %i.q, ptr %i.p, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !64
  store ptr %i.v, ptr %i.s, align 8, !tbaa !64
  store ptr %i.u, ptr %i.t, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !64
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !64
  store ptr %i.z, ptr %i.w, align 8, !tbaa !64
  store ptr %i.y, ptr %i.x, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !63
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !63
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !63
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !63
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !63
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !63
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !63
  br label %_ZN5Eigen8internal17CompressedStorageIjiEaSERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZN5Eigen8internal17CompressedStorageIjiEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !36
  tail call void @_ZN5Eigen12SparseMatrixIjLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.aj, i64 noundef %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIjLi0EiE14initAssignmentIS1_EEvRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.an) #17
  store ptr null, ptr %i.am, align 8, !tbaa !33
  br label %_ZN5Eigen12SparseMatrixIjLi0EiE14initAssignmentIS1_EEvRKT_.exit

_ZN5Eigen12SparseMatrixIjLi0EiE14initAssignmentIS1_EEvRKT_.exit: ; preds = %bb.d, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN5Eigen12SparseMatrixIjLi0EiE14initAssignmentIS1_EEvRKT_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %.idx = shl nsw i64 %i.as, 2
  %i.at = add nsw i64 %.idx, 4                    ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ay, ptr align 4 %i.aw, i64 %i.at, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit: ; preds = %bb.f, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !59
  tail call void @_ZN5Eigen8internal17CompressedStorageIjiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 noundef %i.bc, double noundef 0.000000e+00)
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !59
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %bb.h, label %_ZN5Eigen8internal17CompressedStorageIjiEaSERKS2_.exit

bb.h:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !59 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZN5Eigen8internal17CompressedStorageIjiEaSERKS2_.exit, label %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i: ; preds = %bb.h
  %.idx.i = shl nsw i64 %i.bg, 2
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !43
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bj, ptr align 4 %i.bi, i64 %.idx.i, i1 false)
  %.pre.i = load i64, ptr %i.bf, align 8, !tbaa !59 ; 2 uses
  %i.bk = icmp eq i64 %.pre.i, 0
  br i1 %i.bk, label %_ZN5Eigen8internal17CompressedStorageIjiEaSERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i
  %.idx7.i = shl nsw i64 %.pre.i, 2
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIjLi0EiEES3_EEvRT_RKT0_:bb.a
bb.i:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.037147
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !20
  %i.bn = sext i32 %i.bm to i64
  %i.bo = add nsw i64 %i.bn, %i.bf
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIjLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIjLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.bk, %bb.h ], [ %i.bo, %bb.i ] ; 2 uses
  %i.bp = icmp sgt i64 %.sink.i, %i.bf
  br i1 %i.bp, label %.lr.ph145.preheader, label %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit

.lr.ph145.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIjLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %.pre155 = load i64, ptr %i.g, align 8, !tbaa !59
  br label %.lr.ph145

_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit:   ; preds = %bb.m, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIjLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bq = add nuw nsw i64 %.037147, 1             ; 2 uses
  %exitcond153.not = icmp eq i64 %i.bq, %i.b
  br i1 %exitcond153.not, label %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit._crit_edge, label %bb.g, !llvm.loop !103

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %bb.m
  %i.br = phi i64 [ %i.cc, %bb.m ], [ %.pre155, %.lr.ph145.preheader ] ; 5 uses
  %.sroa.8117.0144 = phi i64 [ %i.cz, %bb.m ], [ %i.bf, %.lr.ph145.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %.sroa.8117.0144
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !20
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.sroa.8117.0144
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !20
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %.037147
  %i.by = getelementptr i8, ptr %i.bx, i64 4      ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !20 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add nsw i32 %i.bz, 1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !20
  %i.cc = add nsw i64 %i.br, 1                    ; 4 uses
  %i.cd = load i64, ptr %i.ab, align 8, !tbaa !62
  %.not136 = icmp sgt i64 %i.cd, %i.br
  br i1 %.not136, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph145
  %i.ce = sitofp i64 %i.cc to double
  %i.cf = fptosi double %i.ce to i64
  %i.cg = add nsw i64 %i.cc, %i.cf
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cg, i64 2147483647) ; 5 uses
  %.not137 = icmp sgt i64 %.sroa.speculated.i, %i.br
  br i1 %.not137, label %.noexc67, label %.noexc

.noexc:                                           ; preds = %bb.j
  %i.ch = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ch, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

.noexc67:                                         ; preds = %bb.j
  %i.ci = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  %i.cj = shl nuw i64 %.sroa.speculated.i, 2
  %i.ck = select i1 %i.ci, i64 -1, i64 %i.cj      ; 2 uses
  %i.cl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #21 ; 3 uses
  %i.cm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i: ; preds = %.noexc67
  %i.cn = load i64, ptr %i.g, align 8, !tbaa !63
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.cn, i64 %.sroa.speculated.i) ; 2 uses
  %i.co = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.v, align 8, !tbaa !64 ; 3 uses
  br i1 %i.co, label %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.pre23.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %.pre.i.i, i64 %.idx.i.i, i1 false)
  %i.cp = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !44 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cm, ptr align 4 %i.cp, i64 %.idx.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i: ; preds = %.noexc67
  %i.cq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.cl) #20
  br label %.body68

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.cr = phi ptr [ %.pre23.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.cp, %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.cl, ptr %i.v, align 8, !tbaa !64
  store ptr %i.cm, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64
  store i64 %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !62
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.cr) #20
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %bb.k, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  %i.ct = icmp eq ptr %.pre.i.i, null
  br i1 %i.ct, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #20
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph145, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %bb.l
  store i64 %i.cc, ptr %i.g, align 8, !tbaa !59
  %i.cu = load ptr, ptr %i.v, align 8, !tbaa !43  ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.br
  store i32 0, ptr %i.cv, align 4, !tbaa !20
  %i.cw = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !44
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.br
  store i32 %i.bv, ptr %i.cx, align 4, !tbaa !20
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.ca
  store i32 %i.bt, ptr %i.cy, align 4, !tbaa !20
  %i.cz = add nsw i64 %.sroa.8117.0144, 1         ; 2 uses
  %exitcond152.not = icmp eq i64 %i.cz, %.sink.i
  br i1 %exitcond152.not, label %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit, label %.lr.ph145, !llvm.loop !104

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !52 ; 3 uses
  store i8 0, ptr %2, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dc, i8 0, i64 64, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !52
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.dg = shl i64 %i.b, 2
  %i.dh = add i64 %i.dg, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.dh) ; 2 uses
  store ptr %calloc, ptr %i.df, align 8, !tbaa !37
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.di = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.di, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.di, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc71 unwind label %bb.p

.noexc71:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIjiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dk) #17
  br label %.body

bb.q:                                             ; preds = %bb.n
  store i64 %i.b, ptr %i.dc, align 8, !tbaa !36
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.dm = mul nsw i64 %i.b, %i.db
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.db, i64 %i.b)
  %i.dn = shl nsw i64 %.sroa.speculated, 1
  %.sroa.speculated109 = tail call i64 @llvm.smin.i64(i64 %i.dn, i64 %i.dm) ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dq = icmp sgt i64 %.sroa.speculated109, 0
  br i1 %i.dq, label %bb.r, label %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit53

bb.r:                                             ; preds = %bb.q
  %i.dr = icmp samesign ugt i64 %.sroa.speculated109, 4611686018427387903
  %i.ds = shl nuw i64 %.sroa.speculated109, 2
  %i.dt = select i1 %i.dr, i64 -1, i64 %i.ds      ; 2 uses
  %i.du = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #21
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc83:                                         ; preds = %bb.r
  %i.dv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73 unwind label %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i72 ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73: ; preds = %.noexc83
  %i.dw = load i64, ptr %i.de, align 8, !tbaa !63 ; 2 uses
  %i.dx = icmp sgt i64 %i.dw, 0
  %.pre.i.i75 = load ptr, ptr %i.do, align 8, !tbaa !64 ; 3 uses
  br i1 %i.dx, label %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i81, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73
  %.phi.trans.insert.i.i77 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre23.i.i78 = load ptr, ptr %.phi.trans.insert.i.i77, align 8, !tbaa !64
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i81: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73
  %i.dy = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 %.sroa.speculated109)
  %.idx.i.i82 = shl nuw nsw i64 %i.dy, 2          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.du, ptr align 4 %.pre.i.i75, i64 %.idx.i.i82, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !44 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dv, ptr align 4 %i.ea, i64 %.idx.i.i82, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i72: ; preds = %.noexc83
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body84.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79: ; preds = %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i81, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76
  %i.ec = phi ptr [ %.pre23.i.i78, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76 ], [ %i.ea, %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i81 ] ; 2 uses
  store ptr %i.du, ptr %i.do, align 8, !tbaa !64
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.dv, ptr %i.ed, align 8, !tbaa !64
  store i64 %.sroa.speculated109, ptr %i.dp, align 8, !tbaa !62
  %i.ee = icmp eq ptr %i.ec, null
  br i1 %i.ee, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79
  tail call void @_ZdaPv(ptr noundef nonnull %i.ec) #20
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80: ; preds = %bb.s, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79
  %i.ef = icmp eq ptr %.pre.i.i75, null
  br i1 %i.ef, label %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit53, label %bb.t

bb.t:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i75) #20
  br label %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit53

_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit53: ; preds = %bb.q, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80, %bb.t
  %i.eg = phi i64 [ 0, %bb.q ], [ %.sroa.speculated109, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80 ], [ %.sroa.speculated109, %bb.t ]
  %i.eh = icmp sgt i64 %i.b, 0
  br i1 %i.eh, label %.lr.ph142, label %._crit_edge143

.lr.ph142:                                        ; preds = %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit53
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.phi.trans.insert.i.i92 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  br label %bb.x

._crit_edge143:                                   ; preds = %._crit_edge, %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit53
  %i.em = load ptr, ptr %i.dl, align 8, !tbaa !33
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge143
  %i.eo = load i64, ptr %i.de, align 8, !tbaa !59
  %i.ep = trunc i64 %i.eo to i32                  ; 2 uses
  %i.eq = load i64, ptr %i.dc, align 8, !tbaa !36 ; 5 uses
  %i.er = icmp sgt i64 %i.eq, -1
  br i1 %i.er, label %.lr.ph.i54, label %.loopexit

.lr.ph.i54:                                       ; preds = %bb.u
  %i.es = load ptr, ptr %i.df, align 8, !tbaa !37 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i54
  %.08.i55 = phi i64 [ %i.eq, %.lr.ph.i54 ], [ %i.ew, %bb.w ] ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.08.i55
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !20
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.w, label %.critedge.i56

bb.w:                                             ; preds = %bb.v
  %i.ew = add nsw i64 %.08.i55, -1
  %i.ex = icmp sgt i64 %.08.i55, 0
  br i1 %i.ex, label %bb.v, label %.critedge.i56, !llvm.loop !0

.critedge.i56:                                    ; preds = %bb.w, %bb.v
  %.0.lcssa.i57 = phi i64 [ -1, %bb.w ], [ %.08.i55, %bb.v ] ; 5 uses
  %.not.not11.i58 = icmp slt i64 %.0.lcssa.i57, %i.eq
  br i1 %.not.not11.i58, label %.lr.ph13.i59.preheader, label %.loopexit

.lr.ph13.i59.preheader:                           ; preds = %.critedge.i56
  %i.ey = sub i64 %i.eq, %.0.lcssa.i57            ; 3 uses
  %min.iters.check = icmp ult i64 %i.ey, 8
  br i1 %min.iters.check, label %.lr.ph13.i59.preheader193, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph13.i59.preheader
  %n.vec = and i64 %i.ey, -8                      ; 3 uses
  %i.ez = add i64 %.0.lcssa.i57, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ep, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = getelementptr [4 x i8], ptr %i.es, i64 %.0.lcssa.i57
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fb = getelementptr [4 x i8], ptr %i.fa, i64 %index ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 4
  %i.fd = getelementptr i8, ptr %i.fb, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.fc, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat, ptr %i.fd, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ey, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph13.i59.preheader193

.lr.ph13.i59.preheader193:                        ; preds = %.lr.ph13.i59.preheader, %middle.block
  %.1.in12.i60.ph = phi i64 [ %.0.lcssa.i57, %.lr.ph13.i59.preheader ], [ %i.ez, %middle.block ]
  br label %.lr.ph13.i59

.lr.ph13.i59:                                     ; preds = %.lr.ph13.i59.preheader193, %.lr.ph13.i59
  %.1.in12.i60 = phi i64 [ %.1.i61, %.lr.ph13.i59 ], [ %.1.in12.i60.ph, %.lr.ph13.i59.preheader193 ]
  %.1.i61 = add nsw i64 %.1.in12.i60, 1           ; 3 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.es, i64 %.1.i61
  store i32 %i.ep, ptr %i.ff, align 4, !tbaa !20
  %exitcond.not.i62 = icmp eq i64 %.1.i61, %i.eq
  br i1 %exitcond.not.i62, label %.loopexit, label %.lr.ph13.i59, !llvm.loop !106

bb.x:                                             ; preds = %.lr.ph142, %._crit_edge
  %i.fg = phi i64 [ %i.eg, %.lr.ph142 ], [ %i.gb, %._crit_edge ] ; 2 uses
  %.0141 = phi i64 [ 0, %.lr.ph142 ], [ %i.gc, %._crit_edge ] ; 5 uses
  %i.fh = load ptr, ptr %i.df, align 8, !tbaa !37
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.0141 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !20
  %i.fk = getelementptr i8, ptr %i.fi, i64 4
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !20
  %i.fl = load ptr, ptr %i.ei, align 8, !tbaa !43
  %i.fm = load ptr, ptr %i.ej, align 8, !tbaa !44
  %i.fn = load ptr, ptr %i.ek, align 8, !tbaa !37
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.0141 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !20
  %i.fq = sext i32 %i.fp to i64                   ; 3 uses
  %i.fr = load ptr, ptr %i.el, align 8, !tbaa !33 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ft = getelementptr i8, ptr %i.fo, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !20
  %i.fv = sext i32 %i.fu to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIjLi0EiEEE13InnerIteratorC2ERKS3_l.exit65

bb.z:                                             ; preds = %bb.x
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.0141
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !20
  %i.fy = sext i32 %i.fx to i64
  %i.fz = add nsw i64 %i.fy, %i.fq
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIjLi0EiEEE13InnerIteratorC2ERKS3_l.exit65

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIjLi0EiEEE13InnerIteratorC2ERKS3_l.exit65: ; preds = %bb.y, %bb.z
  %.sink.i64 = phi i64 [ %i.fv, %bb.y ], [ %i.fz, %bb.z ] ; 2 uses
  %i.ga = icmp sgt i64 %.sink.i64, %i.fq
  br i1 %i.ga, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.af, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIjLi0EiEEE13InnerIteratorC2ERKS3_l.exit65
  %i.gb = phi i64 [ %i.fg, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIjLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ], [ %i.hg, %bb.af ]
  %i.gc = add nuw nsw i64 %.0141, 1               ; 2 uses
  %exitcond151.not = icmp eq i64 %i.gc, %i.b
  br i1 %exitcond151.not, label %._crit_edge143, label %bb.x, !llvm.loop !107

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIjLi0EiEEE13InnerIteratorC2ERKS3_l.exit65, %bb.af
  %i.gd = phi i64 [ %i.hg, %bb.af ], [ %i.fg, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIjLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 2 uses
  %.sroa.8.0140 = phi i64 [ %i.hk, %bb.af ], [ %i.fq, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIjLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 3 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %.sroa.8.0140
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !20
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %.sroa.8.0140
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !20
  %i.gi = load ptr, ptr %i.df, align 8, !tbaa !37
  %i.gj = getelementptr [4 x i8], ptr %i.gi, i64 %.0141
  %i.gk = getelementptr i8, ptr %i.gj, i64 4      ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !20 ; 2 uses
  %i.gm = sext i32 %i.gl to i64
  %i.gn = add nsw i32 %i.gl, 1
  store i32 %i.gn, ptr %i.gk, align 4, !tbaa !20
  %i.go = load i64, ptr %i.de, align 8, !tbaa !59 ; 5 uses
  %i.gp = add nsw i64 %i.go, 1                    ; 3 uses
  %.not = icmp sgt i64 %i.gd, %i.go
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.aa

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.do, align 8, !tbaa !43
  %.pre154 = load ptr, ptr %.phi.trans.insert.i.i92, align 8, !tbaa !44
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph
  %i.gq = sitofp i64 %i.gp to double
  %i.gr = fptosi double %i.gq to i64
  %i.gs = add nsw i64 %i.gp, %i.gr
  %.sroa.speculated.i86 = tail call i64 @llvm.smin.i64(i64 %i.gs, i64 2147483647) ; 6 uses
  %.not135 = icmp sgt i64 %.sroa.speculated.i86, %i.go
  br i1 %.not135, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gt = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gt, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.gt, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc98:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.gu = shl nuw nsw i64 %.sroa.speculated.i86, 2 ; 2 uses
  %i.gv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gu) #21
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc99:                                         ; preds = %bb.ac
  %i.gw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gu) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i88 unwind label %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i87 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i88: ; preds = %.noexc99
  %i.gx = load i64, ptr %i.de, align 8, !tbaa !63
  %.sroa.speculated.i.i89 = tail call i64 @llvm.smin.i64(i64 %i.gx, i64 %.sroa.speculated.i86) ; 2 uses
  %i.gy = icmp sgt i64 %.sroa.speculated.i.i89, 0
  %.pre.i.i90 = load ptr, ptr %i.do, align 8, !tbaa !64 ; 3 uses
  br i1 %i.gy, label %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i96, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i91

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i91: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i88
  %.pre23.i.i93 = load ptr, ptr %.phi.trans.insert.i.i92, align 8, !tbaa !64
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i94

_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i96: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i88
  %.idx.i.i97 = shl nuw nsw i64 %.sroa.speculated.i.i89, 2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gv, ptr align 4 %.pre.i.i90, i64 %.idx.i.i97, i1 false)
  %i.gz = load ptr, ptr %.phi.trans.insert.i.i92, align 8, !tbaa !44 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gw, ptr align 4 %i.gz, i64 %.idx.i.i97, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i94

_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i87: ; preds = %.noexc99
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %.body84.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i94: ; preds = %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i96, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i91
  %i.hb = phi ptr [ %.pre23.i.i93, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i91 ], [ %i.gz, %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i.i96 ] ; 2 uses
  store ptr %i.gv, ptr %i.do, align 8, !tbaa !64
  store ptr %i.gw, ptr %.phi.trans.insert.i.i92, align 8, !tbaa !64
  store i64 %.sroa.speculated.i86, ptr %i.dp, align 8, !tbaa !62
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95, label %bb.ad

bb.ad:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i94
  tail call void @_ZdaPv(ptr noundef nonnull %i.hb) #20
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95: ; preds = %bb.ad, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i94
  %i.hd = icmp eq ptr %.pre.i.i90, null
  br i1 %i.hd, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i90) #20
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph._crit_edge, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95, %bb.ae
  %i.he = phi ptr [ %.pre154, %.lr.ph._crit_edge ], [ %i.gw, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95 ], [ %i.gw, %bb.ae ]
  %i.hf = phi ptr [ %.pre, %.lr.ph._crit_edge ], [ %i.gv, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95 ], [ %i.gv, %bb.ae ] ; 2 uses
  %i.hg = phi i64 [ %i.gd, %.lr.ph._crit_edge ], [ %.sroa.speculated.i86, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i95 ], [ %.sroa.speculated.i86, %bb.ae ] ; 2 uses
  store i64 %i.gp, ptr %i.de, align 8, !tbaa !59
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.go
  store i32 0, ptr %i.hh, align 4, !tbaa !20
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.go
  store i32 %i.gh, ptr %i.hi, align 4, !tbaa !20
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.gm
  store i32 %i.gf, ptr %i.hj, align 4, !tbaa !20
  %i.hk = add nsw i64 %.sroa.8.0140, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hk, %.sink.i64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !108

.loopexit:                                        ; preds = %.lr.ph13.i59, %middle.block, %._crit_edge143, %bb.u, %.critedge.i56
  store i8 1, ptr %2, align 8, !tbaa !29
  %i.hl = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIjLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %.loopexit
  %i.hm = load ptr, ptr %i.df, align 8, !tbaa !37
  call void @free(ptr noundef %i.hm) #17
  %i.hn = load ptr, ptr %i.dl, align 8, !tbaa !33
  call void @free(ptr noundef %i.hn) #17
  %i.ho = load ptr, ptr %i.do, align 8, !tbaa !43 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.ho) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !44 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %_ZN5Eigen12SparseMatrixIjLi0EiED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.hr) #20
  br label %_ZN5Eigen12SparseMatrixIjLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIjLi0EiED2Ev.exit:         ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN5Eigen12SparseMatrixIjLi0EiE8finalizeEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.ab, %bb.r, %.loopexit
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %.body84

.body84.sink.split:                               ; preds = %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i72, %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i87
  %.lcssa176.sink = phi ptr [ %i.gv, %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i87 ], [ %i.du, %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i72 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ha, %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i87 ], [ %i.eb, %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i72 ]
  tail call void @_ZdaPv(ptr noundef nonnull %.lcssa176.sink) #20
  br label %.body84

.body84:                                          ; preds = %.body84.sink.split, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp194, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.ph, %.body84.sink.split ]
  call void @_ZN5Eigen12SparseMatrixIjLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #17
  br label %.body

.body:                                            ; preds = %bb.p, %.body84
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body84 ], [ %i.dj, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.body68

_ZN5Eigen12SparseMatrixIjLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block189, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIjLi0EiE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIjLi0EiED2Ev.exit
  ret void

.body68:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.cq, %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIjiE7squeezeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !59   ; 5 uses
  %i.e = icmp sgt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIjiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  %i.g = shl nuw i64 %i.d, 2
  %i.h = select i1 %i.f, i64 -1, i64 %i.g         ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #21 ; 3 uses
  %i.j = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.b
  %i.k = load i64, ptr %i.c, align 8, !tbaa !63
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %i.d) ; 2 uses
  %i.l = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !64  ; 3 uses
  br i1 %i.l, label %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !64
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 4 %.pre.i, i64 %.idx.i, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.n, i64 %.idx.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIjED2Ev.exit9.i:  ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #20
  resume { ptr, i32 } %i.o

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.p = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.n, %_ZN5Eigen8internal10smart_copyIjEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.q, align 8, !tbaa !64
  store i64 %i.d, ptr %i.a, align 8, !tbaa !62
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #20
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.c, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.s = icmp eq ptr %.pre.i, null
  br i1 %i.s, label %_ZN5Eigen8internal17CompressedStorageIjiE10reallocateEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #20
  br label %_ZN5Eigen8internal17CompressedStorageIjiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIjiE10reallocateEl.exit: ; preds = %bb.d, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.a, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.b, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not = icmp ne i64 %i.d, %2
  %i.e = icmp eq i64 %i.d, 0
  %or.cond = or i1 %.not, %i.e
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  tail call void @free(ptr noundef %i.g) #17
  %i.h = shl i64 %2, 2
  %i.i = add i64 %i.h, 4
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #18 ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !61
  %.not6 = icmp eq ptr %i.j, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %2, ptr %i.c, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 2 uses
  %.not7 = icmp eq ptr %i.m, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #17
  store ptr null, ptr %i.l, align 8, !tbaa !56
  %.pre = load i64, ptr %i.c, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i64 [ %.pre, %bb.f ], [ %2, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.q = shl i64 %i.n, 2
  %i.r = add i64 %i.q, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.r, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_12CwiseUnaryOpINS0_14scalar_cast_opIjdEEKNS2_IjLi0EiEEEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !46, !align !51 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36   ; 9 uses
  %i.e = load i8, ptr %1, align 8, !tbaa !41, !range !45, !noundef !46
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !52
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.h, i64 noundef %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store i64 0, ptr %i.i, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !57
  %i.n = shl i64 %i.m, 2
  %i.o = add i64 %i.n, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56   ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.l, align 8, !tbaa !57
  %i.s = shl i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 0, i64 %i.s, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %bb.b, %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !46, !align !51 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !52   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36   ; 2 uses
  %i.y = mul nsw i64 %i.x, %i.v
  %.sroa.speculated125 = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.x)
  %i.z = shl nsw i64 %.sroa.speculated125, 1
  %.sroa.speculated130 = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 noundef %.sroa.speculated130)
  %i.ab = icmp sgt i64 %i.d, 0
  br i1 %i.ab, label %.lr.ph151, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge

.lr.ph151:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_12CwiseUnaryOpINS0_14scalar_cast_opIjdEEKNS2_IjLi0EiEEEEEEvRT_RKT0_:bb.a
  %i.bu = icmp sgt i64 %.sink.i.i, %i.bk
  br i1 %i.bu, label %.lr.ph148.preheader, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit

.lr.ph148.preheader:                              ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIjdEEKNS_12SparseMatrixIjLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKSA_l.exit
  %.pre158 = load i64, ptr %i.i, align 8, !tbaa !65
  br label %.lr.ph148

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %bb.m, %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIjdEEKNS_12SparseMatrixIjLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKSA_l.exit
  %i.bv = add nuw nsw i64 %.037150, 1             ; 2 uses
  %exitcond156.not = icmp eq i64 %i.bv, %i.d
  br i1 %exitcond156.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, label %bb.g, !llvm.loop !111

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %bb.m
  %i.bw = phi i64 [ %i.ci, %bb.m ], [ %.pre158, %.lr.ph148.preheader ] ; 5 uses
  %.sroa.8119.0147 = phi i64 [ %i.di, %bb.m ], [ %i.bk, %.lr.ph148.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %.sroa.8119.0147
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !20
  %i.bz = uitofp i32 %i.by to double
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.sroa.8119.0147
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !20
  %i.cc = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.cd = getelementptr [4 x i8], ptr %i.cc, i64 %.037150
  %i.ce = getelementptr i8, ptr %i.cd, i64 4      ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !20 ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = add nsw i32 %i.cf, 1
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !20
  %i.ci = add nsw i64 %i.bw, 1                    ; 4 uses
  %i.cj = load i64, ptr %i.ag, align 8, !tbaa !66
  %.not139 = icmp sgt i64 %i.cj, %i.bw
  br i1 %.not139, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph148
  %i.ck = sitofp i64 %i.ci to double
  %i.cl = fptosi double %i.ck to i64
  %i.cm = add nsw i64 %i.ci, %i.cl
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cm, i64 2147483647) ; 7 uses
  %.not140 = icmp sgt i64 %.sroa.speculated.i, %i.bw
  br i1 %.not140, label %.noexc67, label %.noexc

.noexc:                                           ; preds = %bb.j
  %i.cn = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cn, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

.noexc67:                                         ; preds = %bb.j
  %i.co = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  %i.cp = shl nuw i64 %.sroa.speculated.i, 3
  %i.cq = select i1 %i.co, i64 -1, i64 %i.cp
  %i.cr = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cq) #21 ; 3 uses
  %i.cs = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  %i.ct = shl nuw i64 %.sroa.speculated.i, 2
  %i.cu = select i1 %i.cs, i64 -1, i64 %i.ct
  %i.cv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i: ; preds = %.noexc67
  %i.cw = load i64, ptr %i.i, align 8, !tbaa !63
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.cw, i64 %.sroa.speculated.i) ; 3 uses
  %i.cx = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.aa, align 8, !tbaa !67 ; 3 uses
  br i1 %i.cx, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.pre23.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cr, ptr align 8 %.pre.i.i, i64 %.idx.i.i, i1 false)
  %.idx22.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 2
  %i.cy = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !60 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cv, ptr align 4 %i.cy, i64 %.idx22.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i: ; preds = %.noexc67
  %i.cz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.cr) #20
  br label %.body68

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.da = phi ptr [ %.pre23.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.cy, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.cr, ptr %i.aa, align 8, !tbaa !67
  store ptr %i.cv, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64
  store i64 %.sroa.speculated.i, ptr %i.ag, align 8, !tbaa !66
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.da) #20
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %bb.k, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  %i.dc = icmp eq ptr %.pre.i.i, null
  br i1 %i.dc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #20
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph148, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %bb.l
  store i64 %i.ci, ptr %i.i, align 8, !tbaa !65
  %i.dd = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.bw
  store double 0.000000e+00, ptr %i.de, align 8, !tbaa !22
  %i.df = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !60
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.bw
  store i32 %i.cb, ptr %i.dg, align 4, !tbaa !20
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.cg
  store double %i.bz, ptr %i.dh, align 8, !tbaa !22
  %i.di = add nsw i64 %.sroa.8119.0147, 1         ; 2 uses
  %exitcond155.not = icmp eq i64 %i.di, %.sink.i.i
  br i1 %exitcond155.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, label %.lr.ph148, !llvm.loop !112

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !52 ; 3 uses
  store i8 0, ptr %2, align 8, !tbaa !68
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dl, i8 0, i64 64, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.dk, ptr %i.dm, align 8, !tbaa !58
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.dp = shl i64 %i.d, 2
  %i.dq = add i64 %i.dp, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.dq) ; 2 uses
  store ptr %calloc, ptr %i.do, align 8, !tbaa !61
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dr = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc71 unwind label %bb.p

.noexc71:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dt) #17
  br label %.body

bb.q:                                             ; preds = %bb.n
  store i64 %i.d, ptr %i.dl, align 8, !tbaa !57
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.dv = mul nsw i64 %i.d, %i.dk
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.dk, i64 %i.d)
  %i.dw = shl nsw i64 %.sroa.speculated, 1
  %.sroa.speculated111 = tail call i64 @llvm.smin.i64(i64 %i.dw, i64 %i.dv) ; 9 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dz = icmp sgt i64 %.sroa.speculated111, 0
  br i1 %i.dz, label %bb.r, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53

bb.r:                                             ; preds = %bb.q
  %i.ea = icmp samesign ugt i64 %.sroa.speculated111, 2305843009213693951
  %i.eb = shl nuw i64 %.sroa.speculated111, 3
  %i.ec = select i1 %i.ea, i64 -1, i64 %i.eb
  %i.ed = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ec) #21
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc84:                                         ; preds = %bb.r
  %i.ee = icmp samesign ugt i64 %.sroa.speculated111, 4611686018427387903
  %i.ef = shl nuw i64 %.sroa.speculated111, 2
  %i.eg = select i1 %i.ee, i64 -1, i64 %i.ef
  %i.eh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eg) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73: ; preds = %.noexc84
  %i.ei = load i64, ptr %i.dn, align 8, !tbaa !63 ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, 0
  %.pre.i.i75 = load ptr, ptr %i.dx, align 8, !tbaa !67 ; 3 uses
  br i1 %i.ej, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73
  %.phi.trans.insert.i.i77 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre23.i.i78 = load ptr, ptr %.phi.trans.insert.i.i77, align 8, !tbaa !64
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73
  %i.ek = tail call i64 @llvm.umin.i64(i64 %i.ei, i64 %.sroa.speculated111) ; 2 uses
  %.idx.i.i82 = shl nuw nsw i64 %i.ek, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr align 8 %.pre.i.i75, i64 %.idx.i.i82, i1 false)
  %.idx22.i.i83 = shl nuw nsw i64 %i.ek, 2
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !60 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eh, ptr align 4 %i.em, i64 %.idx22.i.i83, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72: ; preds = %.noexc84
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body85.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76
  %i.eo = phi ptr [ %.pre23.i.i78, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76 ], [ %i.em, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81 ] ; 2 uses
  store ptr %i.ed, ptr %i.dx, align 8, !tbaa !67
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.eh, ptr %i.ep, align 8, !tbaa !64
  store i64 %.sroa.speculated111, ptr %i.dy, align 8, !tbaa !66
  %i.eq = icmp eq ptr %i.eo, null
  br i1 %i.eq, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79
  tail call void @_ZdaPv(ptr noundef nonnull %i.eo) #20
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80: ; preds = %bb.s, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79
  %i.er = icmp eq ptr %.pre.i.i75, null
  br i1 %i.er, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53, label %bb.t

bb.t:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i75) #20
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53: ; preds = %bb.q, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80, %bb.t
  %i.es = phi i64 [ 0, %bb.q ], [ %.sroa.speculated111, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80 ], [ %.sroa.speculated111, %bb.t ]
  %i.et = icmp sgt i64 %i.d, 0
  br i1 %i.et, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.phi.trans.insert.i.i93 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  br label %bb.x

._crit_edge146:                                   ; preds = %._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53
  %i.ey = load ptr, ptr %i.du, align 8, !tbaa !56
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge146
  %i.fa = load i64, ptr %i.dn, align 8, !tbaa !65
  %i.fb = trunc i64 %i.fa to i32                  ; 2 uses
  %i.fc = load i64, ptr %i.dl, align 8, !tbaa !57 ; 5 uses
  %i.fd = icmp sgt i64 %i.fc, -1
  br i1 %i.fd, label %.lr.ph.i54, label %.loopexit

.lr.ph.i54:                                       ; preds = %bb.u
  %i.fe = load ptr, ptr %i.do, align 8, !tbaa !61 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i54
  %.08.i55 = phi i64 [ %i.fc, %.lr.ph.i54 ], [ %i.fi, %bb.w ] ; 4 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.08.i55
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !20
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.w, label %.critedge.i56

bb.w:                                             ; preds = %bb.v
  %i.fi = add nsw i64 %.08.i55, -1
  %i.fj = icmp sgt i64 %.08.i55, 0
  br i1 %i.fj, label %bb.v, label %.critedge.i56, !llvm.loop !1

.critedge.i56:                                    ; preds = %bb.w, %bb.v
  %.0.lcssa.i57 = phi i64 [ -1, %bb.w ], [ %.08.i55, %bb.v ] ; 5 uses
  %.not.not11.i58 = icmp slt i64 %.0.lcssa.i57, %i.fc
  br i1 %.not.not11.i58, label %.lr.ph13.i59.preheader, label %.loopexit

.lr.ph13.i59.preheader:                           ; preds = %.critedge.i56
  %i.fk = sub i64 %i.fc, %.0.lcssa.i57            ; 3 uses
  %min.iters.check = icmp ult i64 %i.fk, 8
  br i1 %min.iters.check, label %.lr.ph13.i59.preheader196, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph13.i59.preheader
  %n.vec = and i64 %i.fk, -8                      ; 3 uses
  %i.fl = add i64 %.0.lcssa.i57, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fm = getelementptr [4 x i8], ptr %i.fe, i64 %.0.lcssa.i57
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fn = getelementptr [4 x i8], ptr %i.fm, i64 %index ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 4
  %i.fp = getelementptr i8, ptr %i.fn, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.fo, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat, ptr %i.fp, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fk, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph13.i59.preheader196

.lr.ph13.i59.preheader196:                        ; preds = %.lr.ph13.i59.preheader, %middle.block
  %.1.in12.i60.ph = phi i64 [ %.0.lcssa.i57, %.lr.ph13.i59.preheader ], [ %i.fl, %middle.block ]
  br label %.lr.ph13.i59

.lr.ph13.i59:                                     ; preds = %.lr.ph13.i59.preheader196, %.lr.ph13.i59
  %.1.in12.i60 = phi i64 [ %.1.i61, %.lr.ph13.i59 ], [ %.1.in12.i60.ph, %.lr.ph13.i59.preheader196 ]
  %.1.i61 = add nsw i64 %.1.in12.i60, 1           ; 3 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %.1.i61
  store i32 %i.fb, ptr %i.fr, align 4, !tbaa !20
  %exitcond.not.i62 = icmp eq i64 %.1.i61, %i.fc
  br i1 %exitcond.not.i62, label %.loopexit, label %.lr.ph13.i59, !llvm.loop !114

bb.x:                                             ; preds = %.lr.ph145, %._crit_edge
  %i.fs = phi i64 [ %i.es, %.lr.ph145 ], [ %i.gn, %._crit_edge ] ; 2 uses
  %.0144 = phi i64 [ 0, %.lr.ph145 ], [ %i.go, %._crit_edge ] ; 5 uses
  %i.ft = load ptr, ptr %i.do, align 8, !tbaa !61
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.0144 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !20
  %i.fw = getelementptr i8, ptr %i.fu, i64 4
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !20
  %i.fx = load ptr, ptr %i.eu, align 8, !tbaa !43
  %i.fy = load ptr, ptr %i.ev, align 8, !tbaa !44
  %i.fz = load ptr, ptr %i.ew, align 8, !tbaa !37
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.0144 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !20
  %i.gc = sext i32 %i.gb to i64                   ; 3 uses
  %i.gd = load ptr, ptr %i.ex, align 8, !tbaa !33 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gf = getelementptr i8, ptr %i.ga, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !20
  %i.gh = sext i32 %i.gg to i64
  br label %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIjdEEKNS_12SparseMatrixIjLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKSA_l.exit65

bb.z:                                             ; preds = %bb.x
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.0144
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !20
  %i.gk = sext i32 %i.gj to i64
  %i.gl = add nsw i64 %i.gk, %i.gc
  br label %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIjdEEKNS_12SparseMatrixIjLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKSA_l.exit65

_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIjdEEKNS_12SparseMatrixIjLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKSA_l.exit65: ; preds = %bb.y, %bb.z
  %.sink.i.i64 = phi i64 [ %i.gh, %bb.y ], [ %i.gl, %bb.z ] ; 2 uses
  %i.gm = icmp sgt i64 %.sink.i.i64, %i.gc
  br i1 %i.gm, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.af, %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIjdEEKNS_12SparseMatrixIjLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKSA_l.exit65
  %i.gn = phi i64 [ %i.fs, %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIjdEEKNS_12SparseMatrixIjLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKSA_l.exit65 ], [ %i.hu, %bb.af ]
  %i.go = add nuw nsw i64 %.0144, 1               ; 2 uses
  %exitcond154.not = icmp eq i64 %i.go, %i.d
  br i1 %exitcond154.not, label %._crit_edge146, label %bb.x, !llvm.loop !115

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIjdEEKNS_12SparseMatrixIjLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKSA_l.exit65, %bb.af
  %i.gp = phi i64 [ %i.hu, %bb.af ], [ %i.fs, %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIjdEEKNS_12SparseMatrixIjLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKSA_l.exit65 ] ; 2 uses
  %.sroa.8.0143 = phi i64 [ %i.hy, %bb.af ], [ %i.gc, %_ZN5Eigen8internal15unary_evaluatorINS_12CwiseUnaryOpINS0_14scalar_cast_opIjdEEKNS_12SparseMatrixIjLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKSA_l.exit65 ] ; 3 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %.sroa.8.0143
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !20
  %i.gs = uitofp i32 %i.gr to double
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %.sroa.8.0143
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !20
  %i.gv = load ptr, ptr %i.do, align 8, !tbaa !61
  %i.gw = getelementptr [4 x i8], ptr %i.gv, i64 %.0144
  %i.gx = getelementptr i8, ptr %i.gw, i64 4      ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !20 ; 2 uses
  %i.gz = sext i32 %i.gy to i64
  %i.ha = add nsw i32 %i.gy, 1
  store i32 %i.ha, ptr %i.gx, align 4, !tbaa !20
  %i.hb = load i64, ptr %i.dn, align 8, !tbaa !65 ; 5 uses
  %i.hc = add nsw i64 %i.hb, 1                    ; 3 uses
  %.not = icmp sgt i64 %i.gp, %i.hb
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.aa

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.dx, align 8, !tbaa !18
  %.pre157 = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !60
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph
  %i.hd = sitofp i64 %i.hc to double
  %i.he = fptosi double %i.hd to i64
  %i.hf = add nsw i64 %i.hc, %i.he
  %.sroa.speculated.i87 = tail call i64 @llvm.smin.i64(i64 %i.hf, i64 2147483647) ; 7 uses
  %.not138 = icmp sgt i64 %.sroa.speculated.i87, %i.hb
  br i1 %.not138, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hg = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hg, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.hg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.hh = shl nuw nsw i64 %.sroa.speculated.i87, 3
  %i.hi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hh) #21
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc101:                                        ; preds = %bb.ac
  %i.hj = shl nuw nsw i64 %.sroa.speculated.i87, 2
  %i.hk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hj) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89: ; preds = %.noexc101
  %i.hl = load i64, ptr %i.dn, align 8, !tbaa !63
  %.sroa.speculated.i.i90 = tail call i64 @llvm.smin.i64(i64 %i.hl, i64 %.sroa.speculated.i87) ; 3 uses
  %i.hm = icmp sgt i64 %.sroa.speculated.i.i90, 0
  %.pre.i.i91 = load ptr, ptr %i.dx, align 8, !tbaa !67 ; 3 uses
  br i1 %i.hm, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89
  %.pre23.i.i94 = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !64
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89
  %.idx.i.i98 = shl nuw nsw i64 %.sroa.speculated.i.i90, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hi, ptr align 8 %.pre.i.i91, i64 %.idx.i.i98, i1 false)
  %.idx22.i.i99 = shl nuw nsw i64 %.sroa.speculated.i.i90, 2
  %i.hn = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !60 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hk, ptr align 4 %i.hn, i64 %.idx22.i.i99, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88: ; preds = %.noexc101
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body85.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92
  %i.hp = phi ptr [ %.pre23.i.i94, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92 ], [ %i.hn, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97 ] ; 2 uses
  store ptr %i.hi, ptr %i.dx, align 8, !tbaa !67
  store ptr %i.hk, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !64
  store i64 %.sroa.speculated.i87, ptr %i.dy, align 8, !tbaa !66
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96, label %bb.ad

bb.ad:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95
  tail call void @_ZdaPv(ptr noundef nonnull %i.hp) #20
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96: ; preds = %bb.ad, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95
  %i.hr = icmp eq ptr %.pre.i.i91, null
  br i1 %i.hr, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i91) #20
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph._crit_edge, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96, %bb.ae
  %i.hs = phi ptr [ %.pre157, %.lr.ph._crit_edge ], [ %i.hk, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %i.hk, %bb.ae ]
  %i.ht = phi ptr [ %.pre, %.lr.ph._crit_edge ], [ %i.hi, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %i.hi, %bb.ae ] ; 2 uses
  %i.hu = phi i64 [ %i.gp, %.lr.ph._crit_edge ], [ %.sroa.speculated.i87, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %.sroa.speculated.i87, %bb.ae ] ; 2 uses
  store i64 %i.hc, ptr %i.dn, align 8, !tbaa !65
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.hb
  store double 0.000000e+00, ptr %i.hv, align 8, !tbaa !22
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.hb
  store i32 %i.gu, ptr %i.hw, align 4, !tbaa !20
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.gz
  store double %i.gs, ptr %i.hx, align 8, !tbaa !22
  %i.hy = add nsw i64 %.sroa.8.0143, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hy, %.sink.i.i64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !116

.loopexit:                                        ; preds = %.lr.ph13.i59, %middle.block, %._crit_edge146, %bb.u, %.critedge.i56
  store i8 1, ptr %2, align 8, !tbaa !68
  %i.hz = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %.loopexit
  %i.ia = load ptr, ptr %i.do, align 8, !tbaa !61
  call void @free(ptr noundef %i.ia) #17
  %i.ib = load ptr, ptr %i.du, align 8, !tbaa !56
  call void @free(ptr noundef %i.ib) #17
  %i.ic = load ptr, ptr %i.dx, align 8, !tbaa !18 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.ic) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !60 ; 2 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.if) #20
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.ab, %bb.r, %.loopexit
  %lpad.loopexit.split-lp197 = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.body85.sink.split:                               ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88
  %.lcssa179.sink = phi ptr [ %i.hi, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ], [ %i.ed, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ho, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ], [ %i.en, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ]
  tail call void @_ZdaPv(ptr noundef nonnull %.lcssa179.sink) #20
  br label %.body85

.body85:                                          ; preds = %.body85.sink.split, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp197, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.ph, %.body85.sink.split ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #17
  br label %.body

.body:                                            ; preds = %bb.p, %.body85
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body85 ], [ %i.ds, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.body68

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block192, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  ret void

.body68:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.cz, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !68, !range !45, !noundef !46
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !64
  store ptr %i.f, ptr %i.c, align 8, !tbaa !64
  store ptr %i.e, ptr %i.d, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !tbaa !63
  %i.j = load i64, ptr %i.h, align 8, !tbaa !63
  store i64 %i.j, ptr %i.g, align 8, !tbaa !63
  store i64 %i.i, ptr %i.h, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !63
  %i.n = load i64, ptr %i.l, align 8, !tbaa !63
  store i64 %i.n, ptr %i.k, align 8, !tbaa !63
  store i64 %i.m, ptr %i.l, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !118
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !118
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !118
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !118
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !64
  store ptr %i.v, ptr %i.s, align 8, !tbaa !64
  store ptr %i.u, ptr %i.t, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !63
  %i.z = load i64, ptr %i.x, align 8, !tbaa !63
  store i64 %i.z, ptr %i.w, align 8, !tbaa !63
  store i64 %i.y, ptr %i.x, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !63
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !63
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !63
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !63
  br label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !57
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.af, i64 noundef %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.aj) #17
  store ptr null, ptr %i.ai, align 8, !tbaa !56
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit

_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit: ; preds = %bb.d, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !57
  %.idx = shl nsw i64 %i.ao, 2
  %i.ap = add nsw i64 %.idx, 4                    ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.au, ptr align 4 %i.as, i64 %i.ap, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit: ; preds = %bb.f, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !65
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 noundef %i.ay, double noundef 0.000000e+00)
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !65
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %bb.h, label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

bb.h:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !65 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %bb.h
  %.idx.i = shl nsw i64 %i.bc, 3
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !18
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bf, ptr align 8 %i.be, i64 %.idx.i, i1 false)
  %.pre.i = load i64, ptr %i.bb, align 8, !tbaa !65 ; 2 uses
  %i.bg = icmp eq i64 %.pre.i, 0
  br i1 %i.bg, label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i
  %.idx7.i = shl nsw i64 %.pre.i, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !60
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.bi, i64 %.idx7.i, i1 false)
  br label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

bb.j:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit
  tail call void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1), !inline_history !117
  br label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit: ; preds = %bb.i, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %bb.h, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit, %bb.c, %bb.j, %bb.b
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  tail call void @free(ptr noundef %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.d) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #20
  br label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65
  %i.c = add nsw i64 %i.b, %1                     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  %i.h = shl nuw i64 %i.c, 3
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #21 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_:bb.a
  %.sink.i = phi i64 [ %i.bk, %bb.h ], [ %i.bo, %bb.i ] ; 2 uses
  %i.bp = icmp sgt i64 %.sink.i, %i.bf
  br i1 %i.bp, label %.lr.ph146.preheader, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit

.lr.ph146.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %.pre156 = load i64, ptr %i.g, align 8, !tbaa !65
  br label %.lr.ph146

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %bb.m, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bq = add nuw nsw i64 %.037148, 1             ; 2 uses
  %exitcond154.not = icmp eq i64 %i.bq, %i.b
  br i1 %exitcond154.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, label %bb.g, !llvm.loop !121

.lr.ph146:                                        ; preds = %.lr.ph146.preheader, %bb.m
  %i.br = phi i64 [ %i.cc, %bb.m ], [ %.pre156, %.lr.ph146.preheader ] ; 5 uses
  %.sroa.8119.0145 = phi i64 [ %i.dc, %bb.m ], [ %i.bf, %.lr.ph146.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %.sroa.8119.0145
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !22
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.sroa.8119.0145
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !20
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %.037148
  %i.by = getelementptr i8, ptr %i.bx, i64 4      ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !20 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add nsw i32 %i.bz, 1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !20
  %i.cc = add nsw i64 %i.br, 1                    ; 4 uses
  %i.cd = load i64, ptr %i.ab, align 8, !tbaa !66
  %.not137 = icmp sgt i64 %i.cd, %i.br
  br i1 %.not137, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph146
  %i.ce = sitofp i64 %i.cc to double
  %i.cf = fptosi double %i.ce to i64
  %i.cg = add nsw i64 %i.cc, %i.cf
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cg, i64 2147483647) ; 7 uses
  %.not138 = icmp sgt i64 %.sroa.speculated.i, %i.br
  br i1 %.not138, label %.noexc67, label %.noexc

.noexc:                                           ; preds = %bb.j
  %i.ch = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ch, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

.noexc67:                                         ; preds = %bb.j
  %i.ci = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  %i.cj = shl nuw i64 %.sroa.speculated.i, 3
  %i.ck = select i1 %i.ci, i64 -1, i64 %i.cj
  %i.cl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #21 ; 3 uses
  %i.cm = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  %i.cn = shl nuw i64 %.sroa.speculated.i, 2
  %i.co = select i1 %i.cm, i64 -1, i64 %i.cn
  %i.cp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.co) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i: ; preds = %.noexc67
  %i.cq = load i64, ptr %i.g, align 8, !tbaa !63
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.cq, i64 %.sroa.speculated.i) ; 3 uses
  %i.cr = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.v, align 8, !tbaa !67 ; 3 uses
  br i1 %i.cr, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.pre23.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr align 8 %.pre.i.i, i64 %.idx.i.i, i1 false)
  %.idx22.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 2
  %i.cs = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !60 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cp, ptr align 4 %i.cs, i64 %.idx22.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i: ; preds = %.noexc67
  %i.ct = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.cl) #20
  br label %.body68

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.cu = phi ptr [ %.pre23.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.cs, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.cl, ptr %i.v, align 8, !tbaa !67
  store ptr %i.cp, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64
  store i64 %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !66
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.cu) #20
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %bb.k, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  %i.cw = icmp eq ptr %.pre.i.i, null
  br i1 %i.cw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #20
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph146, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %bb.l
  store i64 %i.cc, ptr %i.g, align 8, !tbaa !65
  %i.cx = load ptr, ptr %i.v, align 8, !tbaa !18  ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.br
  store double 0.000000e+00, ptr %i.cy, align 8, !tbaa !22
  %i.cz = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !60
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.br
  store i32 %i.bv, ptr %i.da, align 4, !tbaa !20
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ca
  store double %i.bt, ptr %i.db, align 8, !tbaa !22
  %i.dc = add nsw i64 %.sroa.8119.0145, 1         ; 2 uses
  %exitcond153.not = icmp eq i64 %i.dc, %.sink.i
  br i1 %exitcond153.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, label %.lr.ph146, !llvm.loop !122

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !58 ; 3 uses
  store i8 0, ptr %2, align 8, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.df, i8 0, i64 64, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.de, ptr %i.dg, align 8, !tbaa !58
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.dj = shl i64 %i.b, 2
  %i.dk = add i64 %i.dj, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.dk) ; 2 uses
  store ptr %calloc, ptr %i.di, align 8, !tbaa !61
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dl = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dl, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc71 unwind label %bb.p

.noexc71:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dn) #17
  br label %.body

bb.q:                                             ; preds = %bb.n
  store i64 %i.b, ptr %i.df, align 8, !tbaa !57
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.dp = mul nsw i64 %i.b, %i.de
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.de, i64 %i.b)
  %i.dq = shl nsw i64 %.sroa.speculated, 1
  %.sroa.speculated111 = tail call i64 @llvm.smin.i64(i64 %i.dq, i64 %i.dp) ; 9 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dt = icmp sgt i64 %.sroa.speculated111, 0
  br i1 %i.dt, label %bb.r, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53

bb.r:                                             ; preds = %bb.q
  %i.du = icmp samesign ugt i64 %.sroa.speculated111, 2305843009213693951
  %i.dv = shl nuw i64 %.sroa.speculated111, 3
  %i.dw = select i1 %i.du, i64 -1, i64 %i.dv
  %i.dx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dw) #21
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc84:                                         ; preds = %bb.r
  %i.dy = icmp samesign ugt i64 %.sroa.speculated111, 4611686018427387903
  %i.dz = shl nuw i64 %.sroa.speculated111, 2
  %i.ea = select i1 %i.dy, i64 -1, i64 %i.dz
  %i.eb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ea) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73: ; preds = %.noexc84
  %i.ec = load i64, ptr %i.dh, align 8, !tbaa !63 ; 2 uses
  %i.ed = icmp sgt i64 %i.ec, 0
  %.pre.i.i75 = load ptr, ptr %i.dr, align 8, !tbaa !67 ; 3 uses
  br i1 %i.ed, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73
  %.phi.trans.insert.i.i77 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre23.i.i78 = load ptr, ptr %.phi.trans.insert.i.i77, align 8, !tbaa !64
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73
  %i.ee = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 %.sroa.speculated111) ; 2 uses
  %.idx.i.i82 = shl nuw nsw i64 %i.ee, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr align 8 %.pre.i.i75, i64 %.idx.i.i82, i1 false)
  %.idx22.i.i83 = shl nuw nsw i64 %i.ee, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !60 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr align 4 %i.eg, i64 %.idx22.i.i83, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72: ; preds = %.noexc84
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body85.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76
  %i.ei = phi ptr [ %.pre23.i.i78, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76 ], [ %i.eg, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81 ] ; 2 uses
  store ptr %i.dx, ptr %i.dr, align 8, !tbaa !67
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.eb, ptr %i.ej, align 8, !tbaa !64
  store i64 %.sroa.speculated111, ptr %i.ds, align 8, !tbaa !66
  %i.ek = icmp eq ptr %i.ei, null
  br i1 %i.ek, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79
  tail call void @_ZdaPv(ptr noundef nonnull %i.ei) #20
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80: ; preds = %bb.s, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79
  %i.el = icmp eq ptr %.pre.i.i75, null
  br i1 %i.el, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53, label %bb.t

bb.t:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i75) #20
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53: ; preds = %bb.q, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80, %bb.t
  %i.em = phi i64 [ 0, %bb.q ], [ %.sroa.speculated111, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80 ], [ %.sroa.speculated111, %bb.t ]
  %i.en = icmp sgt i64 %i.b, 0
  br i1 %i.en, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.phi.trans.insert.i.i93 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  br label %bb.x

._crit_edge144:                                   ; preds = %._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53
  %i.es = load ptr, ptr %i.do, align 8, !tbaa !56
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge144
  %i.eu = load i64, ptr %i.dh, align 8, !tbaa !65
  %i.ev = trunc i64 %i.eu to i32                  ; 2 uses
  %i.ew = load i64, ptr %i.df, align 8, !tbaa !57 ; 5 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  br i1 %i.ex, label %.lr.ph.i54, label %.loopexit

.lr.ph.i54:                                       ; preds = %bb.u
  %i.ey = load ptr, ptr %i.di, align 8, !tbaa !61 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i54
  %.08.i55 = phi i64 [ %i.ew, %.lr.ph.i54 ], [ %i.fc, %bb.w ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.08.i55
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !20
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.w, label %.critedge.i56

bb.w:                                             ; preds = %bb.v
  %i.fc = add nsw i64 %.08.i55, -1
  %i.fd = icmp sgt i64 %.08.i55, 0
  br i1 %i.fd, label %bb.v, label %.critedge.i56, !llvm.loop !1

.critedge.i56:                                    ; preds = %bb.w, %bb.v
  %.0.lcssa.i57 = phi i64 [ -1, %bb.w ], [ %.08.i55, %bb.v ] ; 5 uses
  %.not.not11.i58 = icmp slt i64 %.0.lcssa.i57, %i.ew
  br i1 %.not.not11.i58, label %.lr.ph13.i59.preheader, label %.loopexit

.lr.ph13.i59.preheader:                           ; preds = %.critedge.i56
  %i.fe = sub i64 %i.ew, %.0.lcssa.i57            ; 3 uses
  %min.iters.check = icmp ult i64 %i.fe, 8
  br i1 %min.iters.check, label %.lr.ph13.i59.preheader194, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph13.i59.preheader
  %n.vec = and i64 %i.fe, -8                      ; 3 uses
  %i.ff = add i64 %.0.lcssa.i57, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fg = getelementptr [4 x i8], ptr %i.ey, i64 %.0.lcssa.i57
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %index ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 4
  %i.fj = getelementptr i8, ptr %i.fh, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.fi, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat, ptr %i.fj, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fe, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph13.i59.preheader194

.lr.ph13.i59.preheader194:                        ; preds = %.lr.ph13.i59.preheader, %middle.block
  %.1.in12.i60.ph = phi i64 [ %.0.lcssa.i57, %.lr.ph13.i59.preheader ], [ %i.ff, %middle.block ]
  br label %.lr.ph13.i59

.lr.ph13.i59:                                     ; preds = %.lr.ph13.i59.preheader194, %.lr.ph13.i59
  %.1.in12.i60 = phi i64 [ %.1.i61, %.lr.ph13.i59 ], [ %.1.in12.i60.ph, %.lr.ph13.i59.preheader194 ]
  %.1.i61 = add nsw i64 %.1.in12.i60, 1           ; 3 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %.1.i61
  store i32 %i.ev, ptr %i.fl, align 4, !tbaa !20
  %exitcond.not.i62 = icmp eq i64 %.1.i61, %i.ew
  br i1 %exitcond.not.i62, label %.loopexit, label %.lr.ph13.i59, !llvm.loop !124

bb.x:                                             ; preds = %.lr.ph143, %._crit_edge
  %i.fm = phi i64 [ %i.em, %.lr.ph143 ], [ %i.gh, %._crit_edge ] ; 2 uses
  %.0142 = phi i64 [ 0, %.lr.ph143 ], [ %i.gi, %._crit_edge ] ; 5 uses
  %i.fn = load ptr, ptr %i.di, align 8, !tbaa !61
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.0142 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !20
  %i.fq = getelementptr i8, ptr %i.fo, i64 4
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !20
  %i.fr = load ptr, ptr %i.eo, align 8, !tbaa !18
  %i.fs = load ptr, ptr %i.ep, align 8, !tbaa !60
  %i.ft = load ptr, ptr %i.eq, align 8, !tbaa !61
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.0142 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !20
  %i.fw = sext i32 %i.fv to i64                   ; 3 uses
  %i.fx = load ptr, ptr %i.er, align 8, !tbaa !56 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fz = getelementptr i8, ptr %i.fu, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !20
  %i.gb = sext i32 %i.ga to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65

bb.z:                                             ; preds = %bb.x
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %.0142
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !20
  %i.ge = sext i32 %i.gd to i64
  %i.gf = add nsw i64 %i.ge, %i.fw
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65: ; preds = %bb.y, %bb.z
  %.sink.i64 = phi i64 [ %i.gb, %bb.y ], [ %i.gf, %bb.z ] ; 2 uses
  %i.gg = icmp sgt i64 %.sink.i64, %i.fw
  br i1 %i.gg, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.af, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65
  %i.gh = phi i64 [ %i.fm, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ], [ %i.hn, %bb.af ]
  %i.gi = add nuw nsw i64 %.0142, 1               ; 2 uses
  %exitcond152.not = icmp eq i64 %i.gi, %i.b
  br i1 %exitcond152.not, label %._crit_edge144, label %bb.x, !llvm.loop !125

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65, %bb.af
  %i.gj = phi i64 [ %i.hn, %bb.af ], [ %i.fm, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 2 uses
  %.sroa.8.0141 = phi i64 [ %i.hr, %bb.af ], [ %i.fw, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 3 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %.sroa.8.0141
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !22
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %.sroa.8.0141
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !20
  %i.go = load ptr, ptr %i.di, align 8, !tbaa !61
  %i.gp = getelementptr [4 x i8], ptr %i.go, i64 %.0142
  %i.gq = getelementptr i8, ptr %i.gp, i64 4      ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !20 ; 2 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = add nsw i32 %i.gr, 1
  store i32 %i.gt, ptr %i.gq, align 4, !tbaa !20
  %i.gu = load i64, ptr %i.dh, align 8, !tbaa !65 ; 5 uses
  %i.gv = add nsw i64 %i.gu, 1                    ; 3 uses
  %.not = icmp sgt i64 %i.gj, %i.gu
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.aa

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.dr, align 8, !tbaa !18
  %.pre155 = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !60
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph
  %i.gw = sitofp i64 %i.gv to double
  %i.gx = fptosi double %i.gw to i64
  %i.gy = add nsw i64 %i.gv, %i.gx
  %.sroa.speculated.i87 = tail call i64 @llvm.smin.i64(i64 %i.gy, i64 2147483647) ; 7 uses
  %.not136 = icmp sgt i64 %.sroa.speculated.i87, %i.gu
  br i1 %.not136, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gz = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gz, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.gz, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ha = shl nuw nsw i64 %.sroa.speculated.i87, 3
  %i.hb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ha) #21
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc101:                                        ; preds = %bb.ac
  %i.hc = shl nuw nsw i64 %.sroa.speculated.i87, 2
  %i.hd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hc) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89: ; preds = %.noexc101
  %i.he = load i64, ptr %i.dh, align 8, !tbaa !63
  %.sroa.speculated.i.i90 = tail call i64 @llvm.smin.i64(i64 %i.he, i64 %.sroa.speculated.i87) ; 3 uses
  %i.hf = icmp sgt i64 %.sroa.speculated.i.i90, 0
  %.pre.i.i91 = load ptr, ptr %i.dr, align 8, !tbaa !67 ; 3 uses
  br i1 %i.hf, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89
  %.pre23.i.i94 = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !64
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89
  %.idx.i.i98 = shl nuw nsw i64 %.sroa.speculated.i.i90, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hb, ptr align 8 %.pre.i.i91, i64 %.idx.i.i98, i1 false)
  %.idx22.i.i99 = shl nuw nsw i64 %.sroa.speculated.i.i90, 2
  %i.hg = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !60 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr align 4 %i.hg, i64 %.idx22.i.i99, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88: ; preds = %.noexc101
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body85.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92
  %i.hi = phi ptr [ %.pre23.i.i94, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92 ], [ %i.hg, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97 ] ; 2 uses
  store ptr %i.hb, ptr %i.dr, align 8, !tbaa !67
  store ptr %i.hd, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !64
  store i64 %.sroa.speculated.i87, ptr %i.ds, align 8, !tbaa !66
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96, label %bb.ad

bb.ad:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95
  tail call void @_ZdaPv(ptr noundef nonnull %i.hi) #20
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96: ; preds = %bb.ad, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95
  %i.hk = icmp eq ptr %.pre.i.i91, null
  br i1 %i.hk, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i91) #20
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph._crit_edge, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96, %bb.ae
  %i.hl = phi ptr [ %.pre155, %.lr.ph._crit_edge ], [ %i.hd, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %i.hd, %bb.ae ]
  %i.hm = phi ptr [ %.pre, %.lr.ph._crit_edge ], [ %i.hb, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %i.hb, %bb.ae ] ; 2 uses
  %i.hn = phi i64 [ %i.gj, %.lr.ph._crit_edge ], [ %.sroa.speculated.i87, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %.sroa.speculated.i87, %bb.ae ] ; 2 uses
  store i64 %i.gv, ptr %i.dh, align 8, !tbaa !65
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.gu
  store double 0.000000e+00, ptr %i.ho, align 8, !tbaa !22
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.gu
  store i32 %i.gn, ptr %i.hp, align 4, !tbaa !20
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.gs
  store double %i.gl, ptr %i.hq, align 8, !tbaa !22
  %i.hr = add nsw i64 %.sroa.8.0141, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hr, %.sink.i64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126

.loopexit:                                        ; preds = %.lr.ph13.i59, %middle.block, %._crit_edge144, %bb.u, %.critedge.i56
  store i8 1, ptr %2, align 8, !tbaa !68
  %i.hs = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %.loopexit
  %i.ht = load ptr, ptr %i.di, align 8, !tbaa !61
  call void @free(ptr noundef %i.ht) #17
  %i.hu = load ptr, ptr %i.do, align 8, !tbaa !56
  call void @free(ptr noundef %i.hu) #17
  %i.hv = load ptr, ptr %i.dr, align 8, !tbaa !18 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.hv) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !60 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.hy) #20
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.ab, %bb.r, %.loopexit
  %lpad.loopexit.split-lp195 = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.body85.sink.split:                               ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88
  %.lcssa177.sink = phi ptr [ %i.hb, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ], [ %i.dx, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.hh, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ], [ %i.eh, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ]
  tail call void @_ZdaPv(ptr noundef nonnull %.lcssa177.sink) #20
  br label %.body85

.body85:                                          ; preds = %.body85.sink.split, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp195, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.ph, %.body85.sink.split ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #17
  br label %.body

.body:                                            ; preds = %bb.p, %.body85
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body85 ], [ %i.dm, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.body68

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block190, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  ret void

.body68:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.ct, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !23}
!1 = distinct !{!1, !23}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !12, i64 0, !13, i64 8}
!15 = !{!14, !13, i64 8}
!16 = !{!"p1 double", !11, i64 0}
!17 = !{!"_ZTSN5Eigen8internal17CompressedStorageIdiEE", !16, i64 0, !12, i64 8, !13, i64 16, !13, i64 24}
!18 = !{!17, !16, i64 0}
!19 = !{!14, !12, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!"double", !7, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEEEEEE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"p1 _ZTSN5Eigen12SparseMatrixIdLi0EiEE", !11, i64 0}
!28 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIjLi0EiEEEE", !24, i64 0}
!29 = !{!28, !24, i64 0}
!30 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIjLi0EiEEEE", !28, i64 0}
!31 = !{!"_ZTSN5Eigen8internal17CompressedStorageIjiEE", !12, i64 0, !12, i64 8, !13, i64 16, !13, i64 24}
!32 = !{!"_ZTSN5Eigen12SparseMatrixIjLi0EiEE", !30, i64 0, !13, i64 8, !13, i64 16, !12, i64 24, !12, i64 32, !31, i64 40}
!33 = !{!32, !12, i64 32}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!32, !13, i64 8}
!37 = !{!32, !12, i64 24}
!38 = !{!"vtable pointer", !6, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIjdEEKNS_12SparseMatrixIjLi0EiEEEEEE", !24, i64 0}
!41 = !{!40, !24, i64 0}
!42 = !{!"p1 _ZTSN5Eigen12SparseMatrixIjLi0EiEE", !11, i64 0}
!43 = !{!31, !12, i64 0}
!44 = !{!31, !12, i64 8}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!"_ZTSN5Eigen16CwiseUnaryOpImplINS_8internal14scalar_cast_opIjdEEKNS_12SparseMatrixIjLi0EiEENS_6SparseEEE", !40, i64 0}
!48 = !{!"_ZTSN5Eigen8internal14scalar_cast_opIjdEE"}
!49 = !{!"_ZTSN5Eigen12CwiseUnaryOpINS_8internal14scalar_cast_opIjdEEKNS_12SparseMatrixIjLi0EiEEEE", !47, i64 0, !42, i64 8, !48, i64 16}
!50 = !{!49, !42, i64 8}
!51 = !{i64 8}
!52 = !{!32, !13, i64 16}
!53 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEE", !24, i64 0}
!54 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEE", !53, i64 0}
!55 = !{!"_ZTSN5Eigen12SparseMatrixIdLi0EiEE", !54, i64 0, !13, i64 8, !13, i64 16, !12, i64 24, !12, i64 32, !17, i64 40}
!56 = !{!55, !12, i64 32}
!57 = !{!55, !13, i64 8}
!58 = !{!55, !13, i64 16}
!59 = !{!31, !13, i64 16}
!60 = !{!17, !12, i64 8}
!61 = !{!55, !12, i64 24}
!62 = !{!31, !13, i64 24}
!63 = !{!13, !13, i64 0}
!64 = !{!12, !12, i64 0}
!65 = !{!17, !13, i64 16}
!66 = !{!17, !13, i64 24}
!67 = !{!16, !16, i64 0}
!68 = !{!53, !24, i64 0}
!69 = distinct !{!69, !23}
!70 = distinct !{!70, i1 true, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEE4castIjEENS3_7CastXprIT_E4TypeEv"}
!71 = distinct !{!71, !70, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEE4castIjEENS3_7CastXprIT_E4TypeEv: argument 0"}
!72 = distinct !{!72, !23}
!73 = distinct !{!73, !23}
!74 = distinct !{!74, !23, !34, !35}
!75 = distinct !{!75, !23, !34, !35}
!76 = distinct !{!76, !23, !35, !34}
!77 = distinct !{!77, !23, !35, !34}
!78 = distinct !{!78, !23, !34, !35}
!79 = distinct !{!79, !23, !35, !34}
!80 = distinct !{!80, i1 true, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIjLi0EiEEE4castIdEENS3_7CastXprIT_E4TypeEv"}
!81 = distinct !{!81, !80, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIjLi0EiEEE4castIdEENS3_7CastXprIT_E4TypeEv: argument 0"}
!82 = distinct !{!82, !23}
!83 = !{!71}
!84 = !{!27, !27, i64 0}
!85 = !{!7, !7, i64 0}
!86 = !{!81}
!87 = !{!42, !42, i64 0}
!88 = distinct !{!88, !23}
!89 = distinct !{!89, !23}
!90 = distinct !{!90, !23, !34, !35}
!91 = distinct !{!91, !23, !35, !34}
!92 = distinct !{!92, !23}
!93 = distinct !{!93, !23, !34, !35}
!94 = distinct !{!94, !23, !35, !34}
!95 = distinct !{!95, !23}
!96 = !{!"_ZTSN5Eigen16CwiseUnaryOpImplINS_8internal14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEENS_6SparseEEE", !25, i64 0}
!97 = !{!"_ZTSN5Eigen8internal14scalar_cast_opIdjEE"}
!98 = !{!"_ZTSN5Eigen12CwiseUnaryOpINS_8internal14scalar_cast_opIdjEEKNS_12SparseMatrixIdLi0EiEEEE", !96, i64 0, !27, i64 8, !97, i64 16}
!99 = !{!98, !27, i64 8}
!100 = distinct !{null, null, null, null}
!101 = distinct !{!101, !23, !34, !35}
!102 = distinct !{!102, !23, !35, !34}
!103 = distinct !{!103, !23}
!104 = distinct !{!104, !23}
!105 = distinct !{!105, !23, !34, !35}
!106 = distinct !{!106, !23, !35, !34}
!107 = distinct !{!107, !23}
!108 = distinct !{!108, !23}
!109 = distinct !{!109, !23, !34, !35}
!110 = distinct !{!110, !23, !35, !34}
!111 = distinct !{!111, !23}
!112 = distinct !{!112, !23}
!113 = distinct !{!113, !23, !34, !35}
!114 = distinct !{!114, !23, !35, !34}
!115 = distinct !{!115, !23}
!116 = distinct !{!116, !23}
!117 = distinct !{null, null, null, null}
!118 = !{!11, !11, i64 0}
!119 = distinct !{!119, !23, !34, !35}
!120 = distinct !{!120, !23, !35, !34}
!121 = distinct !{!121, !23}
!122 = distinct !{!122, !23}
!123 = distinct !{!123, !23, !34, !35}
!124 = distinct !{!124, !23, !35, !34}
!125 = distinct !{!125, !23}
!126 = distinct !{!126, !23}
end_hunk_3
