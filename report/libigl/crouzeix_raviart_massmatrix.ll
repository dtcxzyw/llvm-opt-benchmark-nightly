Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/crouzeix_raviart_massmatrix?download=true
inline.NumInlined: 810
inline.NumDeleted: 459
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_:bb.a
.lr.ph:                                           ; preds = %.preheader92
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !74 ; 4 uses
  %i.ed = load ptr, ptr %1, align 8, !tbaa !9     ; 3 uses
  %.pre = load i32, ptr %i.ec, align 4, !tbaa !31 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.ee = icmp eq i64 %i.e, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ef = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ef, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.ef, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %i.fq, %._crit_edge.loopexit.unr-lcssa ]
  %.07194.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fo, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %.07293.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod148 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.07194.epil.init
  store i32 %.07293.epil.init, ptr %i.eg, align 4, !tbaa !31
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.07194.epil.init
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !31
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194.epil.init
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !31 ; 2 uses
  %i.em = add i32 %.epil.init, %i.el
  %i.en = sub i32 %i.ej, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194.epil.init
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !31
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 %i.en)
  %i.eq = add i32 %i.el, %.07293.epil.init
  %i.er = add i32 %i.eq, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader92
  %.072.lcssa = phi i32 [ 0, %.preheader92 ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ], [ %i.er, %.epil.preheader ] ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.e
  store i32 %.072.lcssa, ptr %i.es, align 4, !tbaa !31
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eu = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 noundef %i.eu, double noundef 0.000000e+00)
  %i.ev = load i64, ptr %i.d, align 8, !tbaa !75  ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !91 ; 2 uses
  br i1 %i.ew, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %._crit_edge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %i.fa = phi i32 [ %.pre, %.lr.ph.new ], [ %i.fq, %bb.h ]
  %.07194 = phi i64 [ 0, %.lr.ph.new ], [ %i.fo, %bb.h ] ; 5 uses
  %.07293 = phi i32 [ 0, %.lr.ph.new ], [ %i.fy, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.07194
  store i32 %.07293, ptr %i.fb, align 4, !tbaa !31
  %i.fc = or disjoint i64 %.07194, 1              ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !31 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !31 ; 2 uses
  %i.fh = add i32 %i.fa, %i.fg
  %i.fi = sub i32 %i.fe, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !31
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 %i.fi)
  %i.fl = add i32 %i.fg, %.07293
  %i.fm = add i32 %i.fl, %.sroa.speculated        ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fc
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !31
  %i.fo = add nuw nsw i64 %.07194, 2              ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !31 ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fc
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !31 ; 2 uses
  %i.ft = add i32 %i.fe, %i.fs
  %i.fu = sub i32 %i.fq, %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.fc
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !31
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.fw, i32 %i.fu)
  %i.fx = add i32 %i.fs, %i.fm
  %i.fy = add i32 %i.fx, %.sroa.speculated.1      ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !101

._crit_edge102:                                   ; preds = %.loopexit, %._crit_edge
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dz, ptr %i.fz, align 8, !tbaa !91
  tail call void @free(ptr noundef %i.ey) #19
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph101, %.loopexit
  %.06999.in = phi i64 [ %i.ev, %.lr.ph101 ], [ %.06999, %.loopexit ] ; 2 uses
  %.06999 = add nsw i64 %.06999.in, -1            ; 4 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06999
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !31 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.06999 ; 4 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !31 ; 3 uses
  %i.ge = icmp sgt i32 %i.gb, %i.gd
  br i1 %i.ge, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %.06999
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !31 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %bb.j
  %i.gj = add nsw i32 %i.gh, -1                   ; 2 uses
  %i.gk = zext i32 %i.gj to i64                   ; 4 uses
  %i.gl = load ptr, ptr %i.ez, align 8, !tbaa !81 ; 3 uses
  %i.gm = load ptr, ptr %i.et, align 8, !tbaa !82 ; 3 uses
  %i.gn = sext i32 %i.gb to i64                   ; 6 uses
  %i.go = and i32 %i.gh, 1
  %lcmp.mod150.not = icmp eq i32 %i.go, 0
  br i1 %lcmp.mod150.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph97
  %i.gp = sext i32 %i.gd to i64
  %i.gq = getelementptr [4 x i8], ptr %i.gl, i64 %i.gk ; 2 uses
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %i.gp
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !31
  %i.gt = getelementptr [4 x i8], ptr %i.gq, i64 %i.gn
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !31
  %i.gu = load i32, ptr %i.gc, align 4, !tbaa !31 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr [8 x i8], ptr %i.gm, i64 %i.gk ; 2 uses
  %i.gx = getelementptr [8 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !22
  %i.gz = getelementptr [8 x i8], ptr %i.gw, i64 %i.gn
  store double %i.gy, ptr %i.gz, align 8, !tbaa !22
  %i.ha = add nsw i64 %i.gk, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph97
  %.unr151 = phi i32 [ %i.gd, %.lr.ph97 ], [ %i.gu, %.prol.loopexit.unr-lcssa ]
  %.095.unr = phi i64 [ %i.gk, %.lr.ph97 ], [ %i.ha, %.prol.loopexit.unr-lcssa ]
  %i.hb = icmp eq i32 %i.gj, 0
  br i1 %i.hb, label %.loopexit, label %.lr.ph97.new

.lr.ph97.new:                                     ; preds = %.prol.loopexit, %.lr.ph97.new
  %i.hc = phi i32 [ %i.hu, %.lr.ph97.new ], [ %.unr151, %.prol.loopexit ]
  %.095 = phi i64 [ %i.ia, %.lr.ph97.new ], [ %.095.unr, %.prol.loopexit ] ; 4 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr [4 x i8], ptr %i.gl, i64 %.095 ; 2 uses
  %i.hf = getelementptr [4 x i8], ptr %i.he, i64 %i.hd
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !31
  %i.hh = getelementptr [4 x i8], ptr %i.he, i64 %i.gn
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !31
  %i.hi = load i32, ptr %i.gc, align 4, !tbaa !31 ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr [8 x i8], ptr %i.gm, i64 %.095 ; 2 uses
  %i.hl = getelementptr [8 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !22
  %i.hn = getelementptr [8 x i8], ptr %i.hk, i64 %i.gn
  store double %i.hm, ptr %i.hn, align 8, !tbaa !22
  %i.ho = add nsw i64 %.095, -1                   ; 3 uses
  %i.hp = sext i32 %i.hi to i64
  %i.hq = getelementptr [4 x i8], ptr %i.gl, i64 %i.ho ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !31
  %i.ht = getelementptr [4 x i8], ptr %i.hq, i64 %i.gn
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !31
  %i.hu = load i32, ptr %i.gc, align 4, !tbaa !31 ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr [8 x i8], ptr %i.gm, i64 %i.ho ; 2 uses
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !22
  %i.hz = getelementptr [8 x i8], ptr %i.hw, i64 %i.gn
  store double %i.hy, ptr %i.hz, align 8, !tbaa !22
  %i.ia = add nsw i64 %.095, -2
  %.not139.1 = icmp eq i64 %i.ho, 0
  br i1 %.not139.1, label %.loopexit, label %.lr.ph97.new, !llvm.loop !102

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph97.new, %bb.j, %bb.i
  %i.ib = icmp samesign ugt i64 %.06999.in, 1
  br i1 %i.ib, label %bb.i, label %._crit_edge102, !llvm.loop !103

bb.k:                                             ; preds = %._crit_edge102, %._crit_edge118._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40
  %i.c = add nsw i64 %i.b, %1                     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !104
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  %i.h = shl nuw i64 %i.c, 3
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #21 ; 3 uses
  %i.k = icmp ugt i64 %i.c, 4611686018427387903
  %i.l = shl nuw i64 %i.c, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.b
  %2 = load i64, ptr %i.a, align 8, !tbaa !95
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.c) ; 3 uses
  %i.o = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !96  ; 3 uses
  br i1 %i.o, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !91
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.q, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #22
  resume { ptr, i32 } %i.r

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.s = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.q, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !96
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.t, align 8, !tbaa !91
  store i64 %i.c, ptr %i.d, align 8, !tbaa !104
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #22
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.c, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.v = icmp eq ptr %.pre.i, null
  br i1 %i.v, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #22
  br label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit: ; preds = %bb.d, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, double noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !104
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
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %.sroa.speculated, 2305843009213693951
  %i.k = shl nuw i64 %.sroa.speculated, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #21 ; 3 uses
  %i.n = icmp ugt i64 %.sroa.speculated, 4611686018427387903
  %i.o = shl nuw i64 %.sroa.speculated, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !95
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %.sroa.speculated) ; 3 uses
  %i.t = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !96  ; 3 uses
  br i1 %i.t, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !91
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.v, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #22
  resume { ptr, i32 } %i.w

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.x = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.v, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.y, align 8, !tbaa !91
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !104
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #22
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.e, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.aa = icmp eq ptr %.pre.i, null
  br i1 %i.aa, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #22
  br label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit: ; preds = %bb.f, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.ab, align 8, !tbaa !40
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  tail call void @free(ptr noundef %i.d) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #22
  br label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIfiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIfLi0EiEENS0_13scalar_sum_opIffEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef align 1 dead_on_return %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::SparseMatrix.105", align 8 ; 17 uses
  %5 = alloca %"class.Eigen::Matrix.3", align 8   ; 9 uses
  %6 = alloca %"struct.Eigen::internal::scalar_sum_op.103", align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62
  store i8 0, ptr %4, align 8, !tbaa !105
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.h = shl i64 %i.b, 2                          ; 2 uses
  %i.i = add i64 %i.h, 4
  %calloc41 = tail call ptr @calloc(i64 1, i64 %i.i) ; 2 uses
  store ptr %calloc41, ptr %i.g, align 8, !tbaa !110
  %.not6.i = icmp eq ptr %calloc41, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIfLi1EiEC2Ell.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !43
end_hunk_0
begin_hunk_1_@_ZN5Eigen12SparseMatrixIfLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_:bb.a
.lr.ph:                                           ; preds = %.preheader92
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !110 ; 4 uses
  %i.ed = load ptr, ptr %1, align 8, !tbaa !9     ; 3 uses
  %.pre = load i32, ptr %i.ec, align 4, !tbaa !31 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.ee = icmp eq i64 %i.e, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ef = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ef, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.ef, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %i.fq, %._crit_edge.loopexit.unr-lcssa ]
  %.07194.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fo, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %.07293.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod148 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.07194.epil.init
  store i32 %.07293.epil.init, ptr %i.eg, align 4, !tbaa !31
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.07194.epil.init
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !31
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194.epil.init
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !31 ; 2 uses
  %i.em = add i32 %.epil.init, %i.el
  %i.en = sub i32 %i.ej, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194.epil.init
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !31
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 %i.en)
  %i.eq = add i32 %i.el, %.07293.epil.init
  %i.er = add i32 %i.eq, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader92
  %.072.lcssa = phi i32 [ 0, %.preheader92 ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ], [ %i.er, %.epil.preheader ] ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.e
  store i32 %.072.lcssa, ptr %i.es, align 4, !tbaa !31
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eu = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIfiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 noundef %i.eu, double noundef 0.000000e+00)
  %i.ev = load i64, ptr %i.d, align 8, !tbaa !111 ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !91 ; 2 uses
  br i1 %i.ew, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %._crit_edge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %i.fa = phi i32 [ %.pre, %.lr.ph.new ], [ %i.fq, %bb.h ]
  %.07194 = phi i64 [ 0, %.lr.ph.new ], [ %i.fo, %bb.h ] ; 5 uses
  %.07293 = phi i32 [ 0, %.lr.ph.new ], [ %i.fy, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.07194
  store i32 %.07293, ptr %i.fb, align 4, !tbaa !31
  %i.fc = or disjoint i64 %.07194, 1              ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !31 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !31 ; 2 uses
  %i.fh = add i32 %i.fa, %i.fg
  %i.fi = sub i32 %i.fe, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !31
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 %i.fi)
  %i.fl = add i32 %i.fg, %.07293
  %i.fm = add i32 %i.fl, %.sroa.speculated        ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fc
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !31
  %i.fo = add nuw nsw i64 %.07194, 2              ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !31 ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fc
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !31 ; 2 uses
  %i.ft = add i32 %i.fe, %i.fs
  %i.fu = sub i32 %i.fq, %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.fc
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !31
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.fw, i32 %i.fu)
  %i.fx = add i32 %i.fs, %i.fm
  %i.fy = add i32 %i.fx, %.sroa.speculated.1      ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !132

._crit_edge102:                                   ; preds = %.loopexit, %._crit_edge
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dz, ptr %i.fz, align 8, !tbaa !91
  tail call void @free(ptr noundef %i.ey) #19
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph101, %.loopexit
  %.06999.in = phi i64 [ %i.ev, %.lr.ph101 ], [ %.06999, %.loopexit ] ; 2 uses
  %.06999 = add nsw i64 %.06999.in, -1            ; 4 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06999
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !31 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.06999 ; 4 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !31 ; 3 uses
  %i.ge = icmp sgt i32 %i.gb, %i.gd
  br i1 %i.ge, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %.06999
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !31 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %bb.j
  %i.gj = add nsw i32 %i.gh, -1                   ; 2 uses
  %i.gk = zext i32 %i.gj to i64                   ; 4 uses
  %i.gl = load ptr, ptr %i.ez, align 8, !tbaa !116 ; 3 uses
  %i.gm = load ptr, ptr %i.et, align 8, !tbaa !117 ; 3 uses
  %i.gn = sext i32 %i.gb to i64                   ; 6 uses
  %i.go = and i32 %i.gh, 1
  %lcmp.mod150.not = icmp eq i32 %i.go, 0
  br i1 %lcmp.mod150.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph97
  %i.gp = sext i32 %i.gd to i64
  %i.gq = getelementptr [4 x i8], ptr %i.gl, i64 %i.gk ; 2 uses
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %i.gp
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !31
  %i.gt = getelementptr [4 x i8], ptr %i.gq, i64 %i.gn
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !31
  %i.gu = load i32, ptr %i.gc, align 4, !tbaa !31 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr [4 x i8], ptr %i.gm, i64 %i.gk ; 2 uses
  %i.gx = getelementptr [4 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !51
  %i.gz = getelementptr [4 x i8], ptr %i.gw, i64 %i.gn
  store float %i.gy, ptr %i.gz, align 4, !tbaa !51
  %i.ha = add nsw i64 %i.gk, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph97
  %.unr151 = phi i32 [ %i.gd, %.lr.ph97 ], [ %i.gu, %.prol.loopexit.unr-lcssa ]
  %.095.unr = phi i64 [ %i.gk, %.lr.ph97 ], [ %i.ha, %.prol.loopexit.unr-lcssa ]
  %i.hb = icmp eq i32 %i.gj, 0
  br i1 %i.hb, label %.loopexit, label %.lr.ph97.new

.lr.ph97.new:                                     ; preds = %.prol.loopexit, %.lr.ph97.new
  %i.hc = phi i32 [ %i.hu, %.lr.ph97.new ], [ %.unr151, %.prol.loopexit ]
  %.095 = phi i64 [ %i.ia, %.lr.ph97.new ], [ %.095.unr, %.prol.loopexit ] ; 4 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr [4 x i8], ptr %i.gl, i64 %.095 ; 2 uses
  %i.hf = getelementptr [4 x i8], ptr %i.he, i64 %i.hd
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !31
  %i.hh = getelementptr [4 x i8], ptr %i.he, i64 %i.gn
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !31
  %i.hi = load i32, ptr %i.gc, align 4, !tbaa !31 ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr [4 x i8], ptr %i.gm, i64 %.095 ; 2 uses
  %i.hl = getelementptr [4 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !51
  %i.hn = getelementptr [4 x i8], ptr %i.hk, i64 %i.gn
  store float %i.hm, ptr %i.hn, align 4, !tbaa !51
  %i.ho = add nsw i64 %.095, -1                   ; 3 uses
  %i.hp = sext i32 %i.hi to i64
  %i.hq = getelementptr [4 x i8], ptr %i.gl, i64 %i.ho ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !31
  %i.ht = getelementptr [4 x i8], ptr %i.hq, i64 %i.gn
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !31
  %i.hu = load i32, ptr %i.gc, align 4, !tbaa !31 ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr [4 x i8], ptr %i.gm, i64 %i.ho ; 2 uses
  %i.hx = getelementptr [4 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !51
  %i.hz = getelementptr [4 x i8], ptr %i.hw, i64 %i.gn
  store float %i.hy, ptr %i.hz, align 4, !tbaa !51
  %i.ia = add nsw i64 %.095, -2
  %.not139.1 = icmp eq i64 %i.ho, 0
  br i1 %.not139.1, label %.loopexit, label %.lr.ph97.new, !llvm.loop !133

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph97.new, %bb.j, %bb.i
  %i.ib = icmp samesign ugt i64 %.06999.in, 1
  br i1 %i.ib, label %bb.i, label %._crit_edge102, !llvm.loop !134

bb.k:                                             ; preds = %._crit_edge102, %._crit_edge118._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIfiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !61
  %i.c = add nsw i64 %i.b, %1                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 4611686018427387903
  %i.h = shl nuw i64 %i.c, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h         ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #21 ; 3 uses
  %i.k = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.b
  %2 = load i64, ptr %i.a, align 8, !tbaa !95
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.c) ; 2 uses
  %i.l = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !128 ; 3 uses
  br i1 %i.l, label %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !91
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %.pre.i, i64 %.idx.i, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !116  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr align 4 %i.n, i64 %.idx.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i:  ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #22
  resume { ptr, i32 } %i.o

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.p = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.n, %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !128
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.q, align 8, !tbaa !91
  store i64 %i.c, ptr %i.d, align 8, !tbaa !135
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #22
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.c, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.s = icmp eq ptr %.pre.i, null
  br i1 %i.s, label %_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #22
  br label %_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit: ; preds = %bb.d, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIfiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, double noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !135
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
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !43
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %.sroa.speculated, 4611686018427387903
  %i.k = shl nuw i64 %.sroa.speculated, 2
  %i.l = select i1 %i.j, i64 -1, i64 %i.k         ; 2 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #21 ; 3 uses
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !95
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %.sroa.speculated) ; 2 uses
  %i.q = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !128 ; 3 uses
  br i1 %i.q, label %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !91
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %.pre.i, i64 %.idx.i, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !116  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.s, i64 %.idx.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIfED2Ev.exit9.i:  ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #22
  resume { ptr, i32 } %i.t

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.u = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.s, %_ZN5Eigen8internal10smart_copyIfEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !128
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.v, align 8, !tbaa !91
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !135
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #22
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.e, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.x = icmp eq ptr %.pre.i, null
  br i1 %i.x, label %_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #22
  br label %_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIfiE10reallocateEl.exit: ; preds = %bb.f, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.y, align 8, !tbaa !61
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIfLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  tail call void @free(ptr noundef %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  tail call void @free(ptr noundef %i.d) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIfiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #22
  br label %_ZN5Eigen8internal17CompressedStorageIfiED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIfiED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
end_hunk_1
