Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/invert_diag?download=true
inline.NumInlined: 625
inline.NumDeleted: 229
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_:bb.a
  %.sink.i = phi i64 [ %i.bk, %bb.h ], [ %i.bo, %bb.i ] ; 2 uses
  %i.bp = icmp sgt i64 %.sink.i, %i.bf
  br i1 %i.bp, label %.lr.ph159.preheader, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit

.lr.ph159.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %.pre173 = load i64, ptr %i.g, align 8, !tbaa !45
  br label %.lr.ph159

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %bb.m, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bq = add nuw nsw i64 %.037161, 1             ; 2 uses
  %exitcond167.not = icmp eq i64 %i.bq, %i.b
  br i1 %exitcond167.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, label %bb.g, !llvm.loop !77

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %bb.m
  %i.br = phi i64 [ %i.cc, %bb.m ], [ %.pre173, %.lr.ph159.preheader ] ; 5 uses
  %.sroa.8131.0158 = phi i64 [ %i.dc, %bb.m ], [ %i.bf, %.lr.ph159.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %.sroa.8131.0158
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !26
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.sroa.8131.0158
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !22
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %.037161
  %i.by = getelementptr i8, ptr %i.bx, i64 4      ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !22 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add nsw i32 %i.bz, 1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !22
  %i.cc = add nsw i64 %i.br, 1                    ; 4 uses
  %i.cd = load i64, ptr %i.ab, align 8, !tbaa !50
  %.not150 = icmp sgt i64 %i.cd, %i.br
  br i1 %.not150, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph159
  %i.ce = sitofp i64 %i.cc to double
  %i.cf = fptosi double %i.ce to i64
  %i.cg = add nsw i64 %i.cc, %i.cf
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cg, i64 2147483647) ; 7 uses
  %.not151 = icmp sgt i64 %.sroa.speculated.i, %i.br
  br i1 %.not151, label %.noexc74, label %.noexc73

.noexc73:                                         ; preds = %bb.j
  %i.ch = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ch, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

.noexc74:                                         ; preds = %bb.j
  %i.ci = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  %i.cj = shl nuw i64 %.sroa.speculated.i, 3
  %i.ck = select i1 %i.ci, i64 -1, i64 %i.cj
  %i.cl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #20 ; 3 uses
  %i.cm = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  %i.cn = shl nuw i64 %.sroa.speculated.i, 2
  %i.co = select i1 %i.cm, i64 -1, i64 %i.cn
  %i.cp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.co) #20
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i: ; preds = %.noexc74
  %i.cq = load i64, ptr %i.g, align 8, !tbaa !51
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.cq, i64 %.sroa.speculated.i) ; 3 uses
  %i.cr = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.v, align 8, !tbaa !52 ; 3 uses
  br i1 %i.cr, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.pre23.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !53
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr align 8 %.pre.i.i, i64 %.idx.i.i, i1 false)
  %.idx22.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 2
  %i.cs = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !20 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cp, ptr align 4 %i.cs, i64 %.idx22.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i: ; preds = %.noexc74
  %i.ct = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.cl) #21
  br label %.body75

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.cu = phi ptr [ %.pre23.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.cs, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.cl, ptr %i.v, align 8, !tbaa !52
  store ptr %i.cp, ptr %.phi.trans.insert.i.i, align 8, !tbaa !53
  store i64 %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !50
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.cu) #21
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %bb.k, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  %i.cw = icmp eq ptr %.pre.i.i, null
  br i1 %i.cw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #21
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph159, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %bb.l
  store i64 %i.cc, ptr %i.g, align 8, !tbaa !45
  %i.cx = load ptr, ptr %i.v, align 8, !tbaa !19  ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.br
  store double 0.000000e+00, ptr %i.cy, align 8, !tbaa !26
  %i.cz = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !20
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.br
  store i32 %i.bv, ptr %i.da, align 4, !tbaa !22
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ca
  store double %i.bt, ptr %i.db, align 8, !tbaa !26
  %i.dc = add nsw i64 %.sroa.8131.0158, 1         ; 2 uses
  %exitcond166.not = icmp eq i64 %i.dc, %.sink.i
  br i1 %exitcond166.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, label %.lr.ph159, !llvm.loop !78

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !30 ; 3 uses
  store i8 0, ptr %2, align 8, !tbaa !27
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.df, i8 0, i64 64, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 %i.de, ptr %i.dg, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.dj = shl i64 %i.b, 2
  %i.dk = add i64 %i.dj, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.dk) ; 2 uses
  store ptr %calloc, ptr %i.di, align 8, !tbaa !21
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dl = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dl, align 8, !tbaa !47
  invoke void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc78 unwind label %bb.p

.noexc78:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dn) #17
  br label %.body

bb.q:                                             ; preds = %bb.n
  store i64 %i.b, ptr %i.df, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dp = mul nsw i64 %i.b, %i.de
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.de, i64 %i.b)
  %i.dq = shl nsw i64 %.sroa.speculated, 1
  %.sroa.speculated123 = tail call i64 @llvm.smin.i64(i64 %i.dq, i64 %i.dp) ; 9 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dt = icmp sgt i64 %.sroa.speculated123, 0
  br i1 %i.dt, label %bb.r, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53

bb.r:                                             ; preds = %bb.q
  %i.du = icmp samesign ugt i64 %.sroa.speculated123, 2305843009213693951
  %i.dv = shl nuw i64 %.sroa.speculated123, 3
  %i.dw = select i1 %i.du, i64 -1, i64 %i.dv
  %i.dx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dw) #20
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc91:                                         ; preds = %bb.r
  %i.dy = icmp samesign ugt i64 %.sroa.speculated123, 4611686018427387903
  %i.dz = shl nuw i64 %.sroa.speculated123, 2
  %i.ea = select i1 %i.dy, i64 -1, i64 %i.dz
  %i.eb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ea) #20
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i80 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i79 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i80: ; preds = %.noexc91
  %i.ec = load i64, ptr %i.dh, align 8, !tbaa !51 ; 4 uses
  %i.ed = icmp sgt i64 %i.ec, 0
  %.pre.i.i82 = load ptr, ptr %i.dr, align 8, !tbaa !52 ; 3 uses
  br i1 %i.ed, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i88, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i83

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i83: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i80
  %.phi.trans.insert.i.i84 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre23.i.i85 = load ptr, ptr %.phi.trans.insert.i.i84, align 8, !tbaa !53
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i86

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i88: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i80
  %i.ee = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 %.sroa.speculated123) ; 2 uses
  %.idx.i.i89 = shl nuw nsw i64 %i.ee, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr align 8 %.pre.i.i82, i64 %.idx.i.i89, i1 false)
  %.idx22.i.i90 = shl nuw nsw i64 %i.ee, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !20 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr align 4 %i.eg, i64 %.idx22.i.i90, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i86

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i79: ; preds = %.noexc91
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body92.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i86: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i88, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i83
  %i.ei = phi ptr [ %.pre23.i.i85, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i83 ], [ %i.eg, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i88 ] ; 2 uses
  store ptr %i.dx, ptr %i.dr, align 8, !tbaa !52
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.eb, ptr %i.ej, align 8, !tbaa !53
  store i64 %.sroa.speculated123, ptr %i.ds, align 8, !tbaa !50
  %i.ek = icmp eq ptr %i.ei, null
  br i1 %i.ek, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i86
  tail call void @_ZdaPv(ptr noundef nonnull %i.ei) #21
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87: ; preds = %bb.s, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i86
  %i.el = icmp eq ptr %.pre.i.i82, null
  br i1 %i.el, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53, label %bb.t

bb.t:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i82) #21
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53: ; preds = %bb.q, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87, %bb.t
  %.pre172175 = phi i64 [ 0, %bb.q ], [ %i.ec, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87 ], [ %i.ec, %bb.t ]
  %i.em = phi ptr [ null, %bb.q ], [ %i.eb, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87 ], [ %i.eb, %bb.t ] ; 2 uses
  %i.en = phi ptr [ null, %bb.q ], [ %i.dx, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87 ], [ %i.dx, %bb.t ] ; 2 uses
  %i.eo = phi i64 [ 0, %bb.q ], [ %.sroa.speculated123, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87 ], [ %.sroa.speculated123, %bb.t ] ; 2 uses
  %i.ep = icmp sgt i64 %i.b, 0
  br i1 %i.ep, label %.lr.ph156, label %._crit_edge157

.lr.ph156:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.phi.trans.insert.i.i100 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  br label %bb.x

._crit_edge157.loopexit:                          ; preds = %._crit_edge
  %.pre172.pre = load i64, ptr %i.dh, align 8, !tbaa !51
  br label %._crit_edge157

._crit_edge157:                                   ; preds = %._crit_edge157.loopexit, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53
  %.pre171 = phi i64 [ %.pre172.pre, %._crit_edge157.loopexit ], [ %.pre172175, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53 ] ; 2 uses
  %i.eu = phi i64 [ %i.go, %._crit_edge157.loopexit ], [ %i.eo, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53 ]
  %i.ev = phi ptr [ %i.gm, %._crit_edge157.loopexit ], [ %i.em, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53 ]
  %i.ew = phi ptr [ %i.gn, %._crit_edge157.loopexit ], [ %i.en, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53 ]
  %i.ex = load ptr, ptr %i.do, align 8, !tbaa !23 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, null
  %.pre170 = load i64, ptr %i.df, align 8, !tbaa !51 ; 6 uses
  br i1 %i.ey, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge157
  %i.ez = trunc i64 %.pre171 to i32               ; 2 uses
  %i.fa = icmp sgt i64 %.pre170, -1
  br i1 %i.fa, label %.lr.ph.i54, label %.loopexit

.lr.ph.i54:                                       ; preds = %bb.u
  %i.fb = load ptr, ptr %i.di, align 8, !tbaa !21 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i54
  %.08.i55 = phi i64 [ %.pre170, %.lr.ph.i54 ], [ %i.ff, %bb.w ] ; 4 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.08.i55
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !22
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.w, label %.critedge.i56

bb.w:                                             ; preds = %bb.v
  %i.ff = add nsw i64 %.08.i55, -1
  %i.fg = icmp sgt i64 %.08.i55, 0
  br i1 %i.fg, label %bb.v, label %.critedge.i56, !llvm.loop !74

.critedge.i56:                                    ; preds = %bb.w, %bb.v
  %.0.lcssa.i57 = phi i64 [ -1, %bb.w ], [ %.08.i55, %bb.v ] ; 5 uses
  %.not.not11.i58 = icmp slt i64 %.0.lcssa.i57, %.pre170
  br i1 %.not.not11.i58, label %.lr.ph13.i59.preheader, label %.loopexit

.lr.ph13.i59.preheader:                           ; preds = %.critedge.i56
  %i.fh = sub i64 %.pre170, %.0.lcssa.i57         ; 3 uses
  %min.iters.check = icmp ult i64 %i.fh, 8
  br i1 %min.iters.check, label %.lr.ph13.i59.preheader222, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph13.i59.preheader
  %n.vec = and i64 %i.fh, -8                      ; 3 uses
  %i.fi = add i64 %.0.lcssa.i57, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ez, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fj = getelementptr [4 x i8], ptr %i.fb, i64 %.0.lcssa.i57
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fk = getelementptr [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 4
  %i.fm = getelementptr i8, ptr %i.fk, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.fl, align 4, !tbaa !22
  store <4 x i32> %broadcast.splat, ptr %i.fm, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fh, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph13.i59.preheader222

.lr.ph13.i59.preheader222:                        ; preds = %.lr.ph13.i59.preheader, %middle.block
  %.1.in12.i60.ph = phi i64 [ %.0.lcssa.i57, %.lr.ph13.i59.preheader ], [ %i.fi, %middle.block ]
  br label %.lr.ph13.i59

.lr.ph13.i59:                                     ; preds = %.lr.ph13.i59.preheader222, %.lr.ph13.i59
  %.1.in12.i60 = phi i64 [ %.1.i61, %.lr.ph13.i59 ], [ %.1.in12.i60.ph, %.lr.ph13.i59.preheader222 ]
  %.1.i61 = add nsw i64 %.1.in12.i60, 1           ; 3 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %.1.i61
  store i32 %i.ez, ptr %i.fo, align 4, !tbaa !22
  %exitcond.not.i62 = icmp eq i64 %.1.i61, %.pre170
  br i1 %exitcond.not.i62, label %.loopexit, label %.lr.ph13.i59, !llvm.loop !80

bb.x:                                             ; preds = %.lr.ph156, %._crit_edge
  %i.fp = phi ptr [ %i.em, %.lr.ph156 ], [ %i.gm, %._crit_edge ]
  %i.fq = phi ptr [ %i.en, %.lr.ph156 ], [ %i.gn, %._crit_edge ]
  %i.fr = phi i64 [ %i.eo, %.lr.ph156 ], [ %i.go, %._crit_edge ] ; 2 uses
  %.0155 = phi i64 [ 0, %.lr.ph156 ], [ %i.gp, %._crit_edge ] ; 5 uses
  %i.fs = load ptr, ptr %i.di, align 8, !tbaa !21
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.0155 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !22
  %i.fv = getelementptr i8, ptr %i.ft, i64 4
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !22
  %i.fw = load ptr, ptr %i.eq, align 8, !tbaa !19
  %i.fx = load ptr, ptr %i.er, align 8, !tbaa !20
  %i.fy = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.0155 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !22
  %i.gb = sext i32 %i.ga to i64                   ; 3 uses
  %i.gc = load ptr, ptr %i.et, align 8, !tbaa !23 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ge = getelementptr i8, ptr %i.fz, i64 4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !22
  %i.gg = sext i32 %i.gf to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65

bb.z:                                             ; preds = %bb.x
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %.0155
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !22
  %i.gj = sext i32 %i.gi to i64
  %i.gk = add nsw i64 %i.gj, %i.gb
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65: ; preds = %bb.y, %bb.z
  %.sink.i64 = phi i64 [ %i.gg, %bb.y ], [ %i.gk, %bb.z ] ; 2 uses
  %i.gl = icmp sgt i64 %.sink.i64, %i.gb
  br i1 %i.gl, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.af, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65
  %i.gm = phi ptr [ %i.fp, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ], [ %i.hs, %bb.af ] ; 2 uses
  %i.gn = phi ptr [ %i.fq, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ], [ %i.ht, %bb.af ] ; 2 uses
  %i.go = phi i64 [ %i.fr, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ], [ %i.hu, %bb.af ] ; 2 uses
  %i.gp = add nuw nsw i64 %.0155, 1               ; 2 uses
  %exitcond165.not = icmp eq i64 %i.gp, %i.b
  br i1 %exitcond165.not, label %._crit_edge157.loopexit, label %bb.x, !llvm.loop !81

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65, %bb.af
  %i.gq = phi i64 [ %i.hu, %bb.af ], [ %i.fr, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 2 uses
  %.sroa.8.0154 = phi i64 [ %i.hy, %bb.af ], [ %i.gb, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 3 uses
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %.sroa.8.0154
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !26
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %.sroa.8.0154
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !22
  %i.gv = load ptr, ptr %i.di, align 8, !tbaa !21
  %i.gw = getelementptr [4 x i8], ptr %i.gv, i64 %.0155
  %i.gx = getelementptr i8, ptr %i.gw, i64 4      ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !22 ; 2 uses
  %i.gz = sext i32 %i.gy to i64
  %i.ha = add nsw i32 %i.gy, 1
  store i32 %i.ha, ptr %i.gx, align 4, !tbaa !22
  %i.hb = load i64, ptr %i.dh, align 8, !tbaa !45 ; 5 uses
  %i.hc = add nsw i64 %i.hb, 1                    ; 3 uses
  %.not = icmp sgt i64 %i.gq, %i.hb
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.aa

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.dr, align 8, !tbaa !19
  %.pre168 = load ptr, ptr %.phi.trans.insert.i.i100, align 8, !tbaa !20
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph
  %i.hd = sitofp i64 %i.hc to double
  %i.he = fptosi double %i.hd to i64
  %i.hf = add nsw i64 %i.hc, %i.he
  %.sroa.speculated.i94 = tail call i64 @llvm.smin.i64(i64 %i.hf, i64 2147483647) ; 7 uses
  %.not149 = icmp sgt i64 %.sroa.speculated.i94, %i.hb
  br i1 %.not149, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hg = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.hg, align 8, !tbaa !47
  invoke void @__cxa_throw(ptr nonnull %i.hg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc107:                                        ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.hh = shl nuw nsw i64 %.sroa.speculated.i94, 3
  %i.hi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hh) #20
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc108:                                        ; preds = %bb.ac
  %i.hj = shl nuw nsw i64 %.sroa.speculated.i94, 2
  %i.hk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hj) #20
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i96 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i95 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i96: ; preds = %.noexc108
  %i.hl = load i64, ptr %i.dh, align 8, !tbaa !51
  %.sroa.speculated.i.i97 = tail call i64 @llvm.smin.i64(i64 %i.hl, i64 %.sroa.speculated.i94) ; 3 uses
  %i.hm = icmp sgt i64 %.sroa.speculated.i.i97, 0
  %.pre.i.i98 = load ptr, ptr %i.dr, align 8, !tbaa !52 ; 3 uses
  br i1 %i.hm, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i104, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i99

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i99: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i96
  %.pre23.i.i101 = load ptr, ptr %.phi.trans.insert.i.i100, align 8, !tbaa !53
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i102

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i104: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i96
  %.idx.i.i105 = shl nuw nsw i64 %.sroa.speculated.i.i97, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hi, ptr align 8 %.pre.i.i98, i64 %.idx.i.i105, i1 false)
  %.idx22.i.i106 = shl nuw nsw i64 %.sroa.speculated.i.i97, 2
  %i.hn = load ptr, ptr %.phi.trans.insert.i.i100, align 8, !tbaa !20 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hk, ptr align 4 %i.hn, i64 %.idx22.i.i106, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i102

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i95: ; preds = %.noexc108
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body92.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i102: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i104, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i99
  %i.hp = phi ptr [ %.pre23.i.i101, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i99 ], [ %i.hn, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i104 ] ; 2 uses
  store ptr %i.hi, ptr %i.dr, align 8, !tbaa !52
  store ptr %i.hk, ptr %.phi.trans.insert.i.i100, align 8, !tbaa !53
  store i64 %.sroa.speculated.i94, ptr %i.ds, align 8, !tbaa !50
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i103, label %bb.ad

bb.ad:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i102
  tail call void @_ZdaPv(ptr noundef nonnull %i.hp) #21
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i103

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i103: ; preds = %bb.ad, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i102
  %i.hr = icmp eq ptr %.pre.i.i98, null
  br i1 %i.hr, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i103
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i98) #21
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph._crit_edge, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i103, %bb.ae
  %i.hs = phi ptr [ %.pre168, %.lr.ph._crit_edge ], [ %i.hk, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i103 ], [ %i.hk, %bb.ae ] ; 2 uses
  %i.ht = phi ptr [ %.pre, %.lr.ph._crit_edge ], [ %i.hi, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i103 ], [ %i.hi, %bb.ae ] ; 3 uses
  %i.hu = phi i64 [ %i.gq, %.lr.ph._crit_edge ], [ %.sroa.speculated.i94, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i103 ], [ %.sroa.speculated.i94, %bb.ae ] ; 2 uses
  store i64 %i.hc, ptr %i.dh, align 8, !tbaa !45
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.hb
  store double 0.000000e+00, ptr %i.hv, align 8, !tbaa !26
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.hb
  store i32 %i.gu, ptr %i.hw, align 4, !tbaa !22
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.gz
  store double %i.gs, ptr %i.hx, align 8, !tbaa !26
  %i.hy = add nsw i64 %.sroa.8.0154, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hy, %.sink.i64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.r, %bb.ab
  %lpad.loopexit.split-lp223 = landingpad { ptr, i32 }
          cleanup
  br label %.body92

.loopexit:                                        ; preds = %.lr.ph13.i59, %middle.block, %._crit_edge157, %bb.u, %.critedge.i56
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !53
  %i.ib = load ptr, ptr %i.di, align 8, !tbaa !53
  store ptr %i.ib, ptr %i.hz, align 8, !tbaa !53
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.id = load i64, ptr %i.dg, align 8, !tbaa !51
  store i64 %i.id, ptr %i.ic, align 8, !tbaa !51
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pre170, ptr %i.ie, align 8, !tbaa !51
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !53
  store ptr %i.ex, ptr %i.if, align 8, !tbaa !53
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ew, ptr %i.ih, align 8, !tbaa !52
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !53 ; 2 uses
  store ptr %i.ev, ptr %i.ij, align 8, !tbaa !53
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.pre171, ptr %i.il, align 8, !tbaa !51
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.eu, ptr %i.im, align 8, !tbaa !51
  tail call void @free(ptr noundef %i.ia) #17
  tail call void @free(ptr noundef %i.ig) #17
  %i.in = icmp eq ptr %i.ii, null
  br i1 %i.in, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  tail call void @_ZdaPv(ptr noundef nonnull %i.ii) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit
  %i.io = icmp eq ptr %i.ik, null
  br i1 %i.io, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZdaPv(ptr noundef nonnull %i.ik) #21
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.body92.sink.split:                               ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i79, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i95
  %.lcssa195.sink = phi ptr [ %i.hi, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i95 ], [ %i.dx, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i79 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ho, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i95 ], [ %i.eh, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i79 ]
  tail call void @_ZdaPv(ptr noundef nonnull %.lcssa195.sink) #21
  br label %.body92

.body92:                                          ; preds = %.body92.sink.split, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp223, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.ph, %.body92.sink.split ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #17
  br label %.body

.body:                                            ; preds = %bb.p, %.body92
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body92 ], [ %i.dm, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.body75

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block218, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  ret void

.body75:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.ct, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.d) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #21
  br label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  %i.c = add nsw i64 %i.b, %1                     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  %i.h = shl nuw i64 %i.c, 3
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #20 ; 3 uses
  %i.k = icmp ugt i64 %i.c, 4611686018427387903
  %i.l = shl nuw i64 %i.c, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #20
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.b
  %i.o = load i64, ptr %i.a, align 8, !tbaa !51
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.o, i64 %i.c) ; 3 uses
  %i.p = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !52  ; 3 uses
  br i1 %i.p, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.r, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #21
  resume { ptr, i32 } %i.s

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.t = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.r, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.u, align 8, !tbaa !53
  store i64 %i.c, ptr %i.d, align 8, !tbaa !50
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #21
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.c, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.w = icmp eq ptr %.pre.i, null
  br i1 %i.w, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #21
  br label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit: ; preds = %bb.d, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, double noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  %i.c = icmp slt i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sitofp i64 %1 to double
  %i.e = fmul double %2, %i.d
  %i.f = fptosi double %i.e to i64
  %i.g = add nsw i64 %1, %i.f
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.g, i64 2147483647) ; 7 uses
  %i.h = icmp slt i64 %.sroa.speculated, %1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %.sroa.speculated, 2305843009213693951
  %i.k = shl nuw i64 %.sroa.speculated, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #20 ; 3 uses
  %i.n = icmp ugt i64 %.sroa.speculated, 4611686018427387903
  %i.o = shl nuw i64 %.sroa.speculated, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #20
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %.sroa.speculated) ; 3 uses
  %i.t = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !52  ; 3 uses
  br i1 %i.t, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.v, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #21
  resume { ptr, i32 } %i.w

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.x = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.v, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.y, align 8, !tbaa !53
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIfLi0EiEES3_EEvRT_RKT0_:bb.a
bb.i:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.037160
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !22
  %i.bn = sext i32 %i.bm to i64
  %i.bo = add nsw i64 %i.bn, %i.bf
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIfLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIfLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.h, %bb.i
  %.sink.i = phi i64 [ %i.bk, %bb.h ], [ %i.bo, %bb.i ] ; 2 uses
  %i.bp = icmp sgt i64 %.sink.i, %i.bf
  br i1 %i.bp, label %.lr.ph158.preheader, label %_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit

.lr.ph158.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIfLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %.pre172 = load i64, ptr %i.g, align 8, !tbaa !61
  br label %.lr.ph158

_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit:   ; preds = %bb.m, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIfLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bq = add nuw nsw i64 %.037160, 1             ; 2 uses
  %exitcond166.not = icmp eq i64 %i.bq, %i.b
  br i1 %exitcond166.not, label %_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit._crit_edge, label %bb.g, !llvm.loop !119

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.m
  %i.br = phi i64 [ %i.cc, %bb.m ], [ %.pre172, %.lr.ph158.preheader ] ; 5 uses
  %.sroa.8129.0157 = phi i64 [ %i.cz, %bb.m ], [ %i.bf, %.lr.ph158.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %.sroa.8129.0157
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !42
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.sroa.8129.0157
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !22
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %.037160
  %i.by = getelementptr i8, ptr %i.bx, i64 4      ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !22 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add nsw i32 %i.bz, 1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !22
  %i.cc = add nsw i64 %i.br, 1                    ; 4 uses
  %i.cd = load i64, ptr %i.ab, align 8, !tbaa !62
  %.not149 = icmp sgt i64 %i.cd, %i.br
  br i1 %.not149, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph158
  %i.ce = sitofp i64 %i.cc to double
  %i.cf = fptosi double %i.ce to i64
  %i.cg = add nsw i64 %i.cc, %i.cf
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cg, i64 2147483647) ; 5 uses
  %.not150 = icmp sgt i64 %.sroa.speculated.i, %i.br
  br i1 %.not150, label %.noexc74, label %.noexc73

.noexc73:                                         ; preds = %bb.j
  %i.ch = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ch, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

.noexc74:                                         ; preds = %bb.j
  %i.ci = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  %i.cj = shl nuw i64 %.sroa.speculated.i, 2
  %i.ck = select i1 %i.ci, i64 -1, i64 %i.cj      ; 2 uses
  %i.cl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #20 ; 3 uses
  %i.cm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #20
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i: ; preds = %.noexc74
  %i.cn = load i64, ptr %i.g, align 8, !tbaa !51
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.cn, i64 %.sroa.speculated.i) ; 2 uses
  %i.co = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.v, align 8, !tbaa !63 ; 3 uses
  br i1 %i.co, label %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.pre23.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !53
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %.pre.i.i, i64 %.idx.i.i, i1 false)
  %i.cp = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !38 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cm, ptr align 4 %i.cp, i64 %.idx.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i.i: ; preds = %.noexc74
  %i.cq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.cl) #21
  br label %.body75

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.cr = phi ptr [ %.pre23.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.cp, %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.cl, ptr %i.v, align 8, !tbaa !63
  store ptr %i.cm, ptr %.phi.trans.insert.i.i, align 8, !tbaa !53
  store i64 %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !62
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.cr) #21
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %bb.k, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  %i.ct = icmp eq ptr %.pre.i.i, null
  br i1 %i.ct, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #21
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph158, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %bb.l
  store i64 %i.cc, ptr %i.g, align 8, !tbaa !61
  %i.cu = load ptr, ptr %i.v, align 8, !tbaa !37  ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.br
  store float 0.000000e+00, ptr %i.cv, align 4, !tbaa !42
  %i.cw = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !38
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.br
  store i32 %i.bv, ptr %i.cx, align 4, !tbaa !22
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.ca
  store float %i.bt, ptr %i.cy, align 4, !tbaa !42
  %i.cz = add nsw i64 %.sroa.8129.0157, 1         ; 2 uses
  %exitcond165.not = icmp eq i64 %i.cz, %.sink.i
  br i1 %exitcond165.not, label %_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit, label %.lr.ph158, !llvm.loop !120

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !44 ; 3 uses
  store i8 0, ptr %2, align 8, !tbaa !43
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dc, i8 0, i64 64, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !44
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.dg = shl i64 %i.b, 2
  %i.dh = add i64 %i.dg, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.dh) ; 2 uses
  store ptr %calloc, ptr %i.df, align 8, !tbaa !39
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.di = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.di, align 8, !tbaa !47
  invoke void @__cxa_throw(ptr nonnull %i.di, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc78 unwind label %bb.p

.noexc78:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIfiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dk) #17
  br label %.body

bb.q:                                             ; preds = %bb.n
  store i64 %i.b, ptr %i.dc, align 8, !tbaa !36
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dm = mul nsw i64 %i.b, %i.db
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.db, i64 %i.b)
  %i.dn = shl nsw i64 %.sroa.speculated, 1
  %.sroa.speculated121 = tail call i64 @llvm.smin.i64(i64 %i.dn, i64 %i.dm) ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dq = icmp sgt i64 %.sroa.speculated121, 0
  br i1 %i.dq, label %bb.r, label %_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit53

bb.r:                                             ; preds = %bb.q
  %i.dr = icmp samesign ugt i64 %.sroa.speculated121, 4611686018427387903
  %i.ds = shl nuw i64 %.sroa.speculated121, 2
  %i.dt = select i1 %i.dr, i64 -1, i64 %i.ds      ; 2 uses
  %i.du = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #20
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc90:                                         ; preds = %bb.r
  %i.dv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #20
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i80 unwind label %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i.i79 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i80: ; preds = %.noexc90
  %i.dw = load i64, ptr %i.de, align 8, !tbaa !51 ; 4 uses
  %i.dx = icmp sgt i64 %i.dw, 0
  %.pre.i.i82 = load ptr, ptr %i.do, align 8, !tbaa !63 ; 3 uses
  br i1 %i.dx, label %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i.i88, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i83

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i83: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i80
  %.phi.trans.insert.i.i84 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre23.i.i85 = load ptr, ptr %.phi.trans.insert.i.i84, align 8, !tbaa !53
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i86

_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i.i88: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i80
  %i.dy = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 %.sroa.speculated121)
  %.idx.i.i89 = shl nuw nsw i64 %i.dy, 2          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.du, ptr align 4 %.pre.i.i82, i64 %.idx.i.i89, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !38 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dv, ptr align 4 %i.ea, i64 %.idx.i.i89, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i86

_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i.i79: ; preds = %.noexc90
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body91.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i86: ; preds = %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i.i88, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i83
  %i.ec = phi ptr [ %.pre23.i.i85, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i83 ], [ %i.ea, %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i.i88 ] ; 2 uses
  store ptr %i.du, ptr %i.do, align 8, !tbaa !63
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.dv, ptr %i.ed, align 8, !tbaa !53
  store i64 %.sroa.speculated121, ptr %i.dp, align 8, !tbaa !62
  %i.ee = icmp eq ptr %i.ec, null
  br i1 %i.ee, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i86
  tail call void @_ZdaPv(ptr noundef nonnull %i.ec) #21
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87: ; preds = %bb.s, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i86
  %i.ef = icmp eq ptr %.pre.i.i82, null
  br i1 %i.ef, label %_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit53, label %bb.t

bb.t:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i82) #21
  br label %_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit53

_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit53: ; preds = %bb.q, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87, %bb.t
  %.pre171174 = phi i64 [ 0, %bb.q ], [ %i.dw, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87 ], [ %i.dw, %bb.t ]
  %i.eg = phi ptr [ null, %bb.q ], [ %i.dv, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87 ], [ %i.dv, %bb.t ] ; 2 uses
  %i.eh = phi ptr [ null, %bb.q ], [ %i.du, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87 ], [ %i.du, %bb.t ] ; 2 uses
  %i.ei = phi i64 [ 0, %bb.q ], [ %.sroa.speculated121, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i87 ], [ %.sroa.speculated121, %bb.t ] ; 2 uses
  %i.ej = icmp sgt i64 %i.b, 0
  br i1 %i.ej, label %.lr.ph155, label %._crit_edge156

.lr.ph155:                                        ; preds = %_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit53
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.phi.trans.insert.i.i99 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  br label %bb.x

._crit_edge156.loopexit:                          ; preds = %._crit_edge
  %.pre171.pre = load i64, ptr %i.de, align 8, !tbaa !51
  br label %._crit_edge156

._crit_edge156:                                   ; preds = %._crit_edge156.loopexit, %_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit53
  %.pre170 = phi i64 [ %.pre171.pre, %._crit_edge156.loopexit ], [ %.pre171174, %_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit53 ] ; 2 uses
  %i.eo = phi i64 [ %i.gi, %._crit_edge156.loopexit ], [ %i.ei, %_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit53 ]
  %i.ep = phi ptr [ %i.gg, %._crit_edge156.loopexit ], [ %i.eg, %_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit53 ]
  %i.eq = phi ptr [ %i.gh, %._crit_edge156.loopexit ], [ %i.eh, %_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit53 ]
  %i.er = load ptr, ptr %i.dl, align 8, !tbaa !40 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  %.pre169 = load i64, ptr %i.dc, align 8, !tbaa !51 ; 6 uses
  br i1 %i.es, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge156
  %i.et = trunc i64 %.pre170 to i32               ; 2 uses
  %i.eu = icmp sgt i64 %.pre169, -1
  br i1 %i.eu, label %.lr.ph.i54, label %.loopexit

.lr.ph.i54:                                       ; preds = %bb.u
  %i.ev = load ptr, ptr %i.df, align 8, !tbaa !39 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i54
  %.08.i55 = phi i64 [ %.pre169, %.lr.ph.i54 ], [ %i.ez, %bb.w ] ; 4 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.08.i55
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !22
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.w, label %.critedge.i56

bb.w:                                             ; preds = %bb.v
  %i.ez = add nsw i64 %.08.i55, -1
  %i.fa = icmp sgt i64 %.08.i55, 0
  br i1 %i.fa, label %bb.v, label %.critedge.i56, !llvm.loop !116

.critedge.i56:                                    ; preds = %bb.w, %bb.v
  %.0.lcssa.i57 = phi i64 [ -1, %bb.w ], [ %.08.i55, %bb.v ] ; 5 uses
  %.not.not11.i58 = icmp slt i64 %.0.lcssa.i57, %.pre169
  br i1 %.not.not11.i58, label %.lr.ph13.i59.preheader, label %.loopexit

.lr.ph13.i59.preheader:                           ; preds = %.critedge.i56
  %i.fb = sub i64 %.pre169, %.0.lcssa.i57         ; 3 uses
  %min.iters.check = icmp ult i64 %i.fb, 8
  br i1 %min.iters.check, label %.lr.ph13.i59.preheader221, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph13.i59.preheader
  %n.vec = and i64 %i.fb, -8                      ; 3 uses
  %i.fc = add i64 %.0.lcssa.i57, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fd = getelementptr [4 x i8], ptr %i.ev, i64 %.0.lcssa.i57
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fe = getelementptr [4 x i8], ptr %i.fd, i64 %index ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 4
  %i.fg = getelementptr i8, ptr %i.fe, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.ff, align 4, !tbaa !22
  store <4 x i32> %broadcast.splat, ptr %i.fg, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph13.i59.preheader221

.lr.ph13.i59.preheader221:                        ; preds = %.lr.ph13.i59.preheader, %middle.block
  %.1.in12.i60.ph = phi i64 [ %.0.lcssa.i57, %.lr.ph13.i59.preheader ], [ %i.fc, %middle.block ]
  br label %.lr.ph13.i59

.lr.ph13.i59:                                     ; preds = %.lr.ph13.i59.preheader221, %.lr.ph13.i59
  %.1.in12.i60 = phi i64 [ %.1.i61, %.lr.ph13.i59 ], [ %.1.in12.i60.ph, %.lr.ph13.i59.preheader221 ]
  %.1.i61 = add nsw i64 %.1.in12.i60, 1           ; 3 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %.1.i61
  store i32 %i.et, ptr %i.fi, align 4, !tbaa !22
  %exitcond.not.i62 = icmp eq i64 %.1.i61, %.pre169
  br i1 %exitcond.not.i62, label %.loopexit, label %.lr.ph13.i59, !llvm.loop !122

bb.x:                                             ; preds = %.lr.ph155, %._crit_edge
  %i.fj = phi ptr [ %i.eg, %.lr.ph155 ], [ %i.gg, %._crit_edge ]
  %i.fk = phi ptr [ %i.eh, %.lr.ph155 ], [ %i.gh, %._crit_edge ]
  %i.fl = phi i64 [ %i.ei, %.lr.ph155 ], [ %i.gi, %._crit_edge ] ; 2 uses
  %.0154 = phi i64 [ 0, %.lr.ph155 ], [ %i.gj, %._crit_edge ] ; 5 uses
  %i.fm = load ptr, ptr %i.df, align 8, !tbaa !39
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %.0154 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !22
  %i.fp = getelementptr i8, ptr %i.fn, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !22
  %i.fq = load ptr, ptr %i.ek, align 8, !tbaa !37
  %i.fr = load ptr, ptr %i.el, align 8, !tbaa !38
  %i.fs = load ptr, ptr %i.em, align 8, !tbaa !39
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.0154 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !22
  %i.fv = sext i32 %i.fu to i64                   ; 3 uses
  %i.fw = load ptr, ptr %i.en, align 8, !tbaa !40 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fy = getelementptr i8, ptr %i.ft, i64 4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !22
  %i.ga = sext i32 %i.fz to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIfLi0EiEEE13InnerIteratorC2ERKS3_l.exit65

bb.z:                                             ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.0154
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !22
  %i.gd = sext i32 %i.gc to i64
  %i.ge = add nsw i64 %i.gd, %i.fv
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIfLi0EiEEE13InnerIteratorC2ERKS3_l.exit65

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIfLi0EiEEE13InnerIteratorC2ERKS3_l.exit65: ; preds = %bb.y, %bb.z
  %.sink.i64 = phi i64 [ %i.ga, %bb.y ], [ %i.ge, %bb.z ] ; 2 uses
  %i.gf = icmp sgt i64 %.sink.i64, %i.fv
  br i1 %i.gf, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.af, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIfLi0EiEEE13InnerIteratorC2ERKS3_l.exit65
  %i.gg = phi ptr [ %i.fj, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIfLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ], [ %i.hl, %bb.af ] ; 2 uses
  %i.gh = phi ptr [ %i.fk, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIfLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ], [ %i.hm, %bb.af ] ; 2 uses
  %i.gi = phi i64 [ %i.fl, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIfLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ], [ %i.hn, %bb.af ] ; 2 uses
  %i.gj = add nuw nsw i64 %.0154, 1               ; 2 uses
  %exitcond164.not = icmp eq i64 %i.gj, %i.b
  br i1 %exitcond164.not, label %._crit_edge156.loopexit, label %bb.x, !llvm.loop !123

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIfLi0EiEEE13InnerIteratorC2ERKS3_l.exit65, %bb.af
  %i.gk = phi i64 [ %i.hn, %bb.af ], [ %i.fl, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIfLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 2 uses
  %.sroa.8.0153 = phi i64 [ %i.hr, %bb.af ], [ %i.fv, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIfLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 3 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %.sroa.8.0153
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !42
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %.sroa.8.0153
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !22
  %i.gp = load ptr, ptr %i.df, align 8, !tbaa !39
  %i.gq = getelementptr [4 x i8], ptr %i.gp, i64 %.0154
  %i.gr = getelementptr i8, ptr %i.gq, i64 4      ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !22 ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = add nsw i32 %i.gs, 1
  store i32 %i.gu, ptr %i.gr, align 4, !tbaa !22
  %i.gv = load i64, ptr %i.de, align 8, !tbaa !61 ; 5 uses
  %i.gw = add nsw i64 %i.gv, 1                    ; 3 uses
  %.not = icmp sgt i64 %i.gk, %i.gv
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.aa

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.do, align 8, !tbaa !37
  %.pre167 = load ptr, ptr %.phi.trans.insert.i.i99, align 8, !tbaa !38
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph
  %i.gx = sitofp i64 %i.gw to double
  %i.gy = fptosi double %i.gx to i64
  %i.gz = add nsw i64 %i.gw, %i.gy
  %.sroa.speculated.i93 = tail call i64 @llvm.smin.i64(i64 %i.gz, i64 2147483647) ; 6 uses
  %.not148 = icmp sgt i64 %.sroa.speculated.i93, %i.gv
  br i1 %.not148, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ha = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ha, align 8, !tbaa !47
  invoke void @__cxa_throw(ptr nonnull %i.ha, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105:                                        ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.hb = shl nuw nsw i64 %.sroa.speculated.i93, 2 ; 2 uses
  %i.hc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hb) #20
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc106:                                        ; preds = %bb.ac
  %i.hd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hb) #20
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i95 unwind label %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i.i94 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i95: ; preds = %.noexc106
  %i.he = load i64, ptr %i.de, align 8, !tbaa !51
  %.sroa.speculated.i.i96 = tail call i64 @llvm.smin.i64(i64 %i.he, i64 %.sroa.speculated.i93) ; 2 uses
  %i.hf = icmp sgt i64 %.sroa.speculated.i.i96, 0
  %.pre.i.i97 = load ptr, ptr %i.do, align 8, !tbaa !63 ; 3 uses
  br i1 %i.hf, label %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i.i103, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i98

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i98: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i95
  %.pre23.i.i100 = load ptr, ptr %.phi.trans.insert.i.i99, align 8, !tbaa !53
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i101

_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i.i103: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i95
  %.idx.i.i104 = shl nuw nsw i64 %.sroa.speculated.i.i96, 2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hc, ptr align 4 %.pre.i.i97, i64 %.idx.i.i104, i1 false)
  %i.hg = load ptr, ptr %.phi.trans.insert.i.i99, align 8, !tbaa !38 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr align 4 %i.hg, i64 %.idx.i.i104, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i101

_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i.i94: ; preds = %.noexc106
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body91.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i101: ; preds = %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i.i103, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i98
  %i.hi = phi ptr [ %.pre23.i.i100, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i98 ], [ %i.hg, %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i.i103 ] ; 2 uses
  store ptr %i.hc, ptr %i.do, align 8, !tbaa !63
  store ptr %i.hd, ptr %.phi.trans.insert.i.i99, align 8, !tbaa !53
  store i64 %.sroa.speculated.i93, ptr %i.dp, align 8, !tbaa !62
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i102, label %bb.ad

bb.ad:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i101
  tail call void @_ZdaPv(ptr noundef nonnull %i.hi) #21
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i102

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i102: ; preds = %bb.ad, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i101
  %i.hk = icmp eq ptr %.pre.i.i97, null
  br i1 %i.hk, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i102
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i97) #21
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph._crit_edge, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i102, %bb.ae
  %i.hl = phi ptr [ %.pre167, %.lr.ph._crit_edge ], [ %i.hd, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i102 ], [ %i.hd, %bb.ae ] ; 2 uses
  %i.hm = phi ptr [ %.pre, %.lr.ph._crit_edge ], [ %i.hc, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i102 ], [ %i.hc, %bb.ae ] ; 3 uses
  %i.hn = phi i64 [ %i.gk, %.lr.ph._crit_edge ], [ %.sroa.speculated.i93, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i102 ], [ %.sroa.speculated.i93, %bb.ae ] ; 2 uses
  store i64 %i.gw, ptr %i.de, align 8, !tbaa !61
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.gv
  store float 0.000000e+00, ptr %i.ho, align 4, !tbaa !42
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.gv
  store i32 %i.go, ptr %i.hp, align 4, !tbaa !22
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.gt
  store float %i.gm, ptr %i.hq, align 4, !tbaa !42
  %i.hr = add nsw i64 %.sroa.8.0153, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hr, %.sink.i64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !124

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.r, %bb.ab
  %lpad.loopexit.split-lp222 = landingpad { ptr, i32 }
          cleanup
  br label %.body91

.loopexit:                                        ; preds = %.lr.ph13.i59, %middle.block, %._crit_edge156, %bb.u, %.critedge.i56
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !53
  %i.hu = load ptr, ptr %i.df, align 8, !tbaa !53
  store ptr %i.hu, ptr %i.hs, align 8, !tbaa !53
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load i64, ptr %i.dd, align 8, !tbaa !51
  store i64 %i.hw, ptr %i.hv, align 8, !tbaa !51
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pre169, ptr %i.hx, align 8, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !53
  store ptr %i.er, ptr %i.hy, align 8, !tbaa !53
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !63 ; 2 uses
  store ptr %i.eq, ptr %i.ia, align 8, !tbaa !63
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !53 ; 2 uses
  store ptr %i.ep, ptr %i.ic, align 8, !tbaa !53
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.pre170, ptr %i.ie, align 8, !tbaa !51
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.eo, ptr %i.if, align 8, !tbaa !51
  tail call void @free(ptr noundef %i.ht) #17
  tail call void @free(ptr noundef %i.hz) #17
  %i.ig = icmp eq ptr %i.ib, null
  br i1 %i.ig, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  tail call void @_ZdaPv(ptr noundef nonnull %i.ib) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit
  %i.ih = icmp eq ptr %i.id, null
  br i1 %i.ih, label %_ZN5Eigen12SparseMatrixIfLi0EiED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZdaPv(ptr noundef nonnull %i.id) #21
  br label %_ZN5Eigen12SparseMatrixIfLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIfLi0EiED2Ev.exit:         ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN5Eigen12SparseMatrixIfLi0EiE8finalizeEv.exit

.body91.sink.split:                               ; preds = %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i.i79, %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i.i94
  %.lcssa194.sink = phi ptr [ %i.hc, %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i.i94 ], [ %i.du, %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i.i79 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.hh, %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i.i94 ], [ %i.eb, %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i.i79 ]
  tail call void @_ZdaPv(ptr noundef nonnull %.lcssa194.sink) #21
  br label %.body91

.body91:                                          ; preds = %.body91.sink.split, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp222, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.ph, %.body91.sink.split ]
  call void @_ZN5Eigen12SparseMatrixIfLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #17
  br label %.body

.body:                                            ; preds = %bb.p, %.body91
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body91 ], [ %i.dj, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.body75

_ZN5Eigen12SparseMatrixIfLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block217, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIfLi0EiE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIfLi0EiED2Ev.exit
  ret void

.body75:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.cq, %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIfLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  tail call void @free(ptr noundef %i.d) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIfiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #21
  br label %_ZN5Eigen8internal17CompressedStorageIfiED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIfiED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIfiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !61
  %i.c = add nsw i64 %i.b, %1                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !62
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 4611686018427387903
  %i.h = shl nuw i64 %i.c, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h         ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #20 ; 3 uses
  %i.k = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #20
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.b
  %i.l = load i64, ptr %i.a, align 8, !tbaa !51
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %i.c) ; 2 uses
  %i.m = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !63  ; 3 uses
  br i1 %i.m, label %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %.pre.i, i64 %.idx.i, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr align 4 %i.o, i64 %.idx.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i:  ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #21
  resume { ptr, i32 } %i.p

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.q = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.o, %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.r, align 8, !tbaa !53
  store i64 %i.c, ptr %i.d, align 8, !tbaa !62
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #21
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.c, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.t = icmp eq ptr %.pre.i, null
  br i1 %i.t, label %_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #21
  br label %_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit: ; preds = %bb.d, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIfiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, double noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !62
  %i.c = icmp slt i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sitofp i64 %1 to double
  %i.e = fmul double %2, %i.d
  %i.f = fptosi double %i.e to i64
  %i.g = add nsw i64 %1, %i.f
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.g, i64 2147483647) ; 5 uses
  %i.h = icmp slt i64 %.sroa.speculated, %1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %.sroa.speculated, 4611686018427387903
  %i.k = shl nuw i64 %.sroa.speculated, 2
  %i.l = select i1 %i.j, i64 -1, i64 %i.k         ; 2 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #20 ; 3 uses
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #20
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !51
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %.sroa.speculated) ; 2 uses
  %i.q = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !63  ; 3 uses
  br i1 %i.q, label %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %.pre.i, i64 %.idx.i, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.s, i64 %.idx.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i:  ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #21
  resume { ptr, i32 } %i.t

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.u = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.s, %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.v, align 8, !tbaa !53
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !62
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #21
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.e, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.x = icmp eq ptr %.pre.i, null
  br i1 %i.x, label %_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #21
  br label %_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit: ; preds = %bb.f, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.y, align 8, !tbaa !61
end_hunk_1
