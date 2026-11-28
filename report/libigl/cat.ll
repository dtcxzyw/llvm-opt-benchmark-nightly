Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/cat?download=true
inline.NumInlined: 2760
inline.NumDeleted: 1279
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_:bb.a
  %.sink.i = phi i64 [ %i.bk, %bb.h ], [ %i.bo, %bb.i ] ; 2 uses
  %i.bp = icmp sgt i64 %.sink.i, %i.bf
  br i1 %i.bp, label %.lr.ph146.preheader, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit

.lr.ph146.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %.pre156 = load i64, ptr %i.g, align 8, !tbaa !132
  br label %.lr.ph146

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %bb.m, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bq = add nuw nsw i64 %.037148, 1             ; 2 uses
  %exitcond154.not = icmp eq i64 %i.bq, %i.b
  br i1 %exitcond154.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, label %bb.g, !llvm.loop !623

.lr.ph146:                                        ; preds = %.lr.ph146.preheader, %bb.m
  %i.br = phi i64 [ %i.cc, %bb.m ], [ %.pre156, %.lr.ph146.preheader ] ; 5 uses
  %.sroa.8119.0145 = phi i64 [ %i.dc, %bb.m ], [ %i.bf, %.lr.ph146.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %.sroa.8119.0145
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !86
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.sroa.8119.0145
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !103
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %.037148
  %i.by = getelementptr i8, ptr %i.bx, i64 4      ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !103 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add nsw i32 %i.bz, 1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !103
  %i.cc = add nsw i64 %i.br, 1                    ; 4 uses
  %i.cd = load i64, ptr %i.ab, align 8, !tbaa !136
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
  %i.ch = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ch, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

.noexc67:                                         ; preds = %bb.j
  %i.ci = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  %i.cj = shl nuw i64 %.sroa.speculated.i, 3
  %i.ck = select i1 %i.ci, i64 -1, i64 %i.cj
  %i.cl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #25 ; 3 uses
  %i.cm = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  %i.cn = shl nuw i64 %.sroa.speculated.i, 2
  %i.co = select i1 %i.cm, i64 -1, i64 %i.cn
  %i.cp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.co) #25
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i: ; preds = %.noexc67
  %i.cq = load i64, ptr %i.g, align 8, !tbaa !135
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.cq, i64 %.sroa.speculated.i) ; 3 uses
  %i.cr = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.v, align 8, !tbaa !139 ; 3 uses
  br i1 %i.cr, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.pre23.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !134
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr align 8 %.pre.i.i, i64 %.idx.i.i, i1 false)
  %.idx22.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 2
  %i.cs = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !102 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cp, ptr align 4 %i.cs, i64 %.idx22.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i: ; preds = %.noexc67
  %i.ct = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.cl) #24
  br label %.body68

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.cu = phi ptr [ %.pre23.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.cs, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.cl, ptr %i.v, align 8, !tbaa !139
  store ptr %i.cp, ptr %.phi.trans.insert.i.i, align 8, !tbaa !134
  store i64 %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !136
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.cu) #24
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %bb.k, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  %i.cw = icmp eq ptr %.pre.i.i, null
  br i1 %i.cw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph146, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %bb.l
  store i64 %i.cc, ptr %i.g, align 8, !tbaa !132
  %i.cx = load ptr, ptr %i.v, align 8, !tbaa !101 ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.br
  store double 0.000000e+00, ptr %i.cy, align 8, !tbaa !86
  %i.cz = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !102
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.br
  store i32 %i.bv, ptr %i.da, align 4, !tbaa !103
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ca
  store double %i.bt, ptr %i.db, align 8, !tbaa !86
  %i.dc = add nsw i64 %.sroa.8119.0145, 1         ; 2 uses
  %exitcond153.not = icmp eq i64 %i.dc, %.sink.i
  br i1 %exitcond153.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, label %.lr.ph146, !llvm.loop !624

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !98 ; 3 uses
  store i8 0, ptr %2, align 8, !tbaa !93
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.df, i8 0, i64 64, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.de, ptr %i.dg, align 8, !tbaa !98
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.dj = shl i64 %i.b, 2
  %i.dk = add i64 %i.dj, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.dk) ; 2 uses
  store ptr %calloc, ptr %i.di, align 8, !tbaa !99
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dl = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dl, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc71 unwind label %bb.p

.noexc71:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dn) #20
  br label %.body

bb.q:                                             ; preds = %bb.n
  store i64 %i.b, ptr %i.df, align 8, !tbaa !97
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
  %i.dx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dw) #25
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc84:                                         ; preds = %bb.r
  %i.dy = icmp samesign ugt i64 %.sroa.speculated111, 4611686018427387903
  %i.dz = shl nuw i64 %.sroa.speculated111, 2
  %i.ea = select i1 %i.dy, i64 -1, i64 %i.dz
  %i.eb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ea) #25
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73: ; preds = %.noexc84
  %i.ec = load i64, ptr %i.dh, align 8, !tbaa !135 ; 2 uses
  %i.ed = icmp sgt i64 %i.ec, 0
  %.pre.i.i75 = load ptr, ptr %i.dr, align 8, !tbaa !139 ; 3 uses
  br i1 %i.ed, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73
  %.phi.trans.insert.i.i77 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre23.i.i78 = load ptr, ptr %.phi.trans.insert.i.i77, align 8, !tbaa !134
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73
  %i.ee = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 %.sroa.speculated111) ; 2 uses
  %.idx.i.i82 = shl nuw nsw i64 %i.ee, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr align 8 %.pre.i.i75, i64 %.idx.i.i82, i1 false)
  %.idx22.i.i83 = shl nuw nsw i64 %i.ee, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !102 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr align 4 %i.eg, i64 %.idx22.i.i83, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72: ; preds = %.noexc84
  %i.eh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.dx) #24
  br label %.body85

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76
  %i.ei = phi ptr [ %.pre23.i.i78, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76 ], [ %i.eg, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81 ] ; 2 uses
  store ptr %i.dx, ptr %i.dr, align 8, !tbaa !139
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.eb, ptr %i.ej, align 8, !tbaa !134
  store i64 %.sroa.speculated111, ptr %i.ds, align 8, !tbaa !136
  %i.ek = icmp eq ptr %i.ei, null
  br i1 %i.ek, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79
  tail call void @_ZdaPv(ptr noundef nonnull %i.ei) #24
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80: ; preds = %bb.s, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79
  %i.el = icmp eq ptr %.pre.i.i75, null
  br i1 %i.el, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53, label %bb.t

bb.t:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i75) #24
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
  %i.es = load ptr, ptr %i.do, align 8, !tbaa !100
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge144
  %i.eu = load i64, ptr %i.dh, align 8, !tbaa !132
  %i.ev = trunc i64 %i.eu to i32                  ; 2 uses
  %i.ew = load i64, ptr %i.df, align 8, !tbaa !97 ; 5 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  br i1 %i.ex, label %.lr.ph.i54, label %.loopexit

.lr.ph.i54:                                       ; preds = %bb.u
  %i.ey = load ptr, ptr %i.di, align 8, !tbaa !99 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i54
  %.08.i55 = phi i64 [ %i.ew, %.lr.ph.i54 ], [ %i.fc, %bb.w ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.08.i55
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !103
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.w, label %.critedge.i56

bb.w:                                             ; preds = %bb.v
  %i.fc = add nsw i64 %.08.i55, -1
  %i.fd = icmp sgt i64 %.08.i55, 0
  br i1 %i.fd, label %bb.v, label %.critedge.i56, !llvm.loop !620

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
  store <4 x i32> %broadcast.splat, ptr %i.fi, align 4, !tbaa !103
  store <4 x i32> %broadcast.splat, ptr %i.fj, align 4, !tbaa !103
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !625

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
  store i32 %i.ev, ptr %i.fl, align 4, !tbaa !103
  %exitcond.not.i62 = icmp eq i64 %.1.i61, %i.ew
  br i1 %exitcond.not.i62, label %.loopexit, label %.lr.ph13.i59, !llvm.loop !626

bb.x:                                             ; preds = %.lr.ph143, %._crit_edge
  %i.fm = phi i64 [ %i.em, %.lr.ph143 ], [ %i.gh, %._crit_edge ] ; 2 uses
  %.0142 = phi i64 [ 0, %.lr.ph143 ], [ %i.gi, %._crit_edge ] ; 5 uses
  %i.fn = load ptr, ptr %i.di, align 8, !tbaa !99
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.0142 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !103
  %i.fq = getelementptr i8, ptr %i.fo, i64 4
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !103
  %i.fr = load ptr, ptr %i.eo, align 8, !tbaa !101
  %i.fs = load ptr, ptr %i.ep, align 8, !tbaa !102
  %i.ft = load ptr, ptr %i.eq, align 8, !tbaa !99
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.0142 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !103
  %i.fw = sext i32 %i.fv to i64                   ; 3 uses
  %i.fx = load ptr, ptr %i.er, align 8, !tbaa !100 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fz = getelementptr i8, ptr %i.fu, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !103
  %i.gb = sext i32 %i.ga to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65

bb.z:                                             ; preds = %bb.x
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %.0142
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !103
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
  br i1 %exitcond152.not, label %._crit_edge144, label %bb.x, !llvm.loop !627

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65, %bb.af
  %i.gj = phi i64 [ %i.hn, %bb.af ], [ %i.fm, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 2 uses
  %.sroa.8.0141 = phi i64 [ %i.hr, %bb.af ], [ %i.fw, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 3 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %.sroa.8.0141
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !86
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %.sroa.8.0141
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !103
  %i.go = load ptr, ptr %i.di, align 8, !tbaa !99
  %i.gp = getelementptr [4 x i8], ptr %i.go, i64 %.0142
  %i.gq = getelementptr i8, ptr %i.gp, i64 4      ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !103 ; 2 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = add nsw i32 %i.gr, 1
  store i32 %i.gt, ptr %i.gq, align 4, !tbaa !103
  %i.gu = load i64, ptr %i.dh, align 8, !tbaa !132 ; 5 uses
  %i.gv = add nsw i64 %i.gu, 1                    ; 3 uses
  %.not = icmp sgt i64 %i.gj, %i.gu
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.aa

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.dr, align 8, !tbaa !101
  %.pre155 = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !102
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph
  %i.gw = sitofp i64 %i.gv to double
  %i.gx = fptosi double %i.gw to i64
  %i.gy = add nsw i64 %i.gv, %i.gx
  %.sroa.speculated.i87 = tail call i64 @llvm.smin.i64(i64 %i.gy, i64 2147483647) ; 7 uses
  %.not136 = icmp sgt i64 %.sroa.speculated.i87, %i.gu
  br i1 %.not136, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gz = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gz, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.gz, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ha = shl nuw nsw i64 %.sroa.speculated.i87, 3
  %i.hb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ha) #25
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc101:                                        ; preds = %bb.ac
  %i.hc = shl nuw nsw i64 %.sroa.speculated.i87, 2
  %i.hd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hc) #25
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89: ; preds = %.noexc101
  %i.he = load i64, ptr %i.dh, align 8, !tbaa !135
  %.sroa.speculated.i.i90 = tail call i64 @llvm.smin.i64(i64 %i.he, i64 %.sroa.speculated.i87) ; 3 uses
  %i.hf = icmp sgt i64 %.sroa.speculated.i.i90, 0
  %.pre.i.i91 = load ptr, ptr %i.dr, align 8, !tbaa !139 ; 3 uses
  br i1 %i.hf, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89
  %.pre23.i.i94 = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !134
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89
  %.idx.i.i98 = shl nuw nsw i64 %.sroa.speculated.i.i90, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hb, ptr align 8 %.pre.i.i91, i64 %.idx.i.i98, i1 false)
  %.idx22.i.i99 = shl nuw nsw i64 %.sroa.speculated.i.i90, 2
  %i.hg = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !102 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr align 4 %i.hg, i64 %.idx22.i.i99, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88: ; preds = %.noexc101
  %i.hh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.hb) #24
  br label %.body85

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92
  %i.hi = phi ptr [ %.pre23.i.i94, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92 ], [ %i.hg, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97 ] ; 2 uses
  store ptr %i.hb, ptr %i.dr, align 8, !tbaa !139
  store ptr %i.hd, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !134
  store i64 %.sroa.speculated.i87, ptr %i.ds, align 8, !tbaa !136
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96, label %bb.ad

bb.ad:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95
  tail call void @_ZdaPv(ptr noundef nonnull %i.hi) #24
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96: ; preds = %bb.ad, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95
  %i.hk = icmp eq ptr %.pre.i.i91, null
  br i1 %i.hk, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i91) #24
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph._crit_edge, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96, %bb.ae
  %i.hl = phi ptr [ %.pre155, %.lr.ph._crit_edge ], [ %i.hd, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %i.hd, %bb.ae ]
  %i.hm = phi ptr [ %.pre, %.lr.ph._crit_edge ], [ %i.hb, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %i.hb, %bb.ae ] ; 2 uses
  %i.hn = phi i64 [ %i.gj, %.lr.ph._crit_edge ], [ %.sroa.speculated.i87, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %.sroa.speculated.i87, %bb.ae ] ; 2 uses
  store i64 %i.gv, ptr %i.dh, align 8, !tbaa !132
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.gu
  store double 0.000000e+00, ptr %i.ho, align 8, !tbaa !86
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.gu
  store i32 %i.gn, ptr %i.hp, align 4, !tbaa !103
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.gs
  store double %i.gl, ptr %i.hq, align 8, !tbaa !86
  %i.hr = add nsw i64 %.sroa.8.0141, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hr, %.sink.i64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !628

.loopexit:                                        ; preds = %.lr.ph13.i59, %middle.block, %._crit_edge144, %bb.u, %.critedge.i56
  store i8 1, ptr %2, align 8, !tbaa !93
  %i.hs = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %.loopexit
  %i.ht = load ptr, ptr %i.di, align 8, !tbaa !99
  call void @free(ptr noundef %i.ht) #20
  %i.hu = load ptr, ptr %i.do, align 8, !tbaa !100
  call void @free(ptr noundef %i.hu) #20
  %i.hv = load ptr, ptr %i.dr, align 8, !tbaa !101 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.hv) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !102 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.hy) #24
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.ab, %bb.r, %.loopexit
  %lpad.loopexit.split-lp195 = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.body85:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72
  %.pn.pn = phi { ptr, i32 } [ %i.eh, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ], [ %i.hh, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ], [ %lpad.loopexit.split-lp195, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #20
  br label %.body

.body:                                            ; preds = %bb.p, %.body85
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body85 ], [ %i.dm, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.body68

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block190, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  ret void

.body68:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.ct, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !132
  %i.c = add nsw i64 %i.b, %1                     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !136
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  %i.h = shl nuw i64 %i.c, 3
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #25 ; 3 uses
  %i.k = icmp ugt i64 %i.c, 4611686018427387903
  %i.l = shl nuw i64 %i.c, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #25
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.b
  %i.o = load i64, ptr %i.a, align 8, !tbaa !135
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.o, i64 %i.c) ; 3 uses
  %i.p = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !139 ; 3 uses
  br i1 %i.p, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !134
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !102  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.r, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #24
  resume { ptr, i32 } %i.s

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.t = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.r, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !139
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.u, align 8, !tbaa !134
  store i64 %i.c, ptr %i.d, align 8, !tbaa !136
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #24
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.c, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.w = icmp eq ptr %.pre.i, null
  br i1 %i.w, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #24
  br label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit: ; preds = %bb.d, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !97   ; 12 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #23 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !100
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader
  %i.i = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99   ; 4 uses
  %xtraiter155 = and i64 %i.e, 1
  %i.l = icmp eq i64 %i.e, 1
  br i1 %i.l, label %.epil.preheader154, label %.lr.ph108.new

.lr.ph108.new:                                    ; preds = %.lr.ph108
  %unroll_iter159 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

._crit_edge109.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %._crit_edge109, label %.epil.preheader154

.epil.preheader154:                               ; preds = %._crit_edge109.loopexit.unr-lcssa, %.lr.ph108
  %.070107.epil.init = phi i64 [ 0, %.lr.ph108 ], [ %i.ba, %._crit_edge109.loopexit.unr-lcssa ]
  %.076106.epil.init = phi i64 [ 0, %.lr.ph108 ], [ %i.ar, %._crit_edge109.loopexit.unr-lcssa ] ; 2 uses
  %.077105.epil.init = phi i32 [ 0, %.lr.ph108 ], [ %i.ay, %._crit_edge109.loopexit.unr-lcssa ]
  %lcmp.mod158 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod158)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106.epil.init
  store i32 %.077105.epil.init, ptr %i.n, align 4, !tbaa !103
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.076106.epil.init
  %i.p = load i32, ptr %i.o, align 4, !tbaa !103
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i64 %.070107.epil.init, %i.q
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %.epil.preheader154, %._crit_edge109.loopexit.unr-lcssa, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.ba, %._crit_edge109.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader154 ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %.070.lcssa)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99   ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !97   ; 4 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = icmp sgt i64 %i.v, 0
  %i.y = load i32, ptr %i.w, align 4, !tbaa !103  ; 2 uses
  br i1 %i.x, label %.lr.ph119, label %._crit_edge120._crit_edge

.lr.ph119:                                        ; preds = %._crit_edge109
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !100
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph108.new
  %.070107 = phi i64 [ 0, %.lr.ph108.new ], [ %i.ba, %bb.d ]
  %.076106 = phi i64 [ 0, %.lr.ph108.new ], [ %i.ar, %bb.d ] ; 5 uses
  %.077105 = phi i32 [ 0, %.lr.ph108.new ], [ %i.ay, %bb.d ] ; 2 uses
  %niter160 = phi i64 [ 0, %.lr.ph108.new ], [ %niter160.next.1, %bb.d ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106
  store i32 %.077105, ptr %i.ab, align 4, !tbaa !103
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.076106
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !103 ; 2 uses
  %i.ae = or disjoint i64 %.076106, 1             ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !103
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.076106
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !103
  %i.aj = add i32 %i.ad, %.077105
  %i.ak = add i32 %i.aj, %i.ag
  %i.al = sub i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = sext i32 %i.ad to i64
  %i.an = add nsw i64 %.070107, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ae
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !103
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ae
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !103 ; 2 uses
  %i.ar = add nuw nsw i64 %.076106, 2             ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !103
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ae
  %i.av = load i32, ptr %i.au, align 4, !tbaa !103
  %i.aw = add i32 %i.aq, %i.al
  %i.ax = add i32 %i.aw, %i.at
  %i.ay = sub i32 %i.ax, %i.av                    ; 2 uses
  %i.az = sext i32 %i.aq to i64
  %i.ba = add nsw i64 %i.an, %i.az                ; 3 uses
  %niter160.next.1 = add nuw nsw i64 %niter160, 2 ; 2 uses
  %niter160.ncmp.1 = icmp eq i64 %niter160.next.1, %unroll_iter159
  br i1 %niter160.ncmp.1, label %._crit_edge109.loopexit.unr-lcssa, label %bb.d, !llvm.loop !629
end_hunk_0
