Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/is_symmetric?download=true
inline.NumInlined: 840
inline.NumDeleted: 433
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS3_S7_EEEEvRT_RKT0_:bb.a
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.el, i64 %.sroa.speculated.i) ; 3 uses
  %i.em = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.ac, align 8, !tbaa !62 ; 3 uses
  br i1 %i.em, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.pre23.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !60
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr align 8 %.pre.i.i, i64 %.idx.i.i, i1 false)
  %.idx22.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 2
  %i.en = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr align 4 %i.en, i64 %.idx22.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i: ; preds = %.noexc84
  %i.eo = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.eg) #19
  br label %.body85

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.ep = phi ptr [ %.pre23.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.en, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.eg, ptr %i.ac, align 8, !tbaa !62
  store ptr %i.ek, ptr %.phi.trans.insert.i.i, align 8, !tbaa !60
  store i64 %.sroa.speculated.i, ptr %i.am, align 8, !tbaa !64
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ep) #19
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %bb.r, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  %i.er = icmp eq ptr %.pre.i.i, null
  br i1 %i.er, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #19
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph189, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %bb.s
  store i64 %i.dx, ptr %i.k, align 8, !tbaa !65
  %i.es = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.dq
  store double 0.000000e+00, ptr %i.et, align 8, !tbaa !52
  %i.eu = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !43
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.dq
  store i32 %.sroa.47157.0186, ptr %i.ev, align 4, !tbaa !37
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.dv
  store double %.sroa.38156.0187, ptr %i.ew, align 8, !tbaa !52
  %i.ex = icmp slt i64 %.sroa.10144.0188, %.sink.i.i
  %i.ey = icmp slt i64 %.sroa.26151.0185, %i.cp   ; 2 uses
  br i1 %i.ex, label %bb.u, label %.thread2.i

bb.u:                                             ; preds = %bb.t
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %.sroa.10144.0188
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !37 ; 5 uses
  br i1 %i.ey, label %bb.v, label %._crit_edge6.i

bb.v:                                             ; preds = %bb.u
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %.sroa.26151.0185
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !37 ; 4 uses
  %i.fd = icmp eq i32 %i.fa, %i.fc
  br i1 %i.fd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %.sroa.10144.0188
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %.sroa.26151.0185
  %i.fg = load double, ptr %i.fe, align 8, !tbaa !52
  %i.fh = load double, ptr %i.ff, align 8, !tbaa !52
  %i.fi = fsub double %i.fg, %i.fh
  %i.fj = add nsw i64 %.sroa.10144.0188, 1
  %i.fk = add nsw i64 %.sroa.26151.0185, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit

bb.x:                                             ; preds = %bb.v
  %i.fl = icmp slt i32 %i.fa, %i.fc
  br i1 %i.fl, label %._crit_edge6.i, label %bb.y

._crit_edge6.i:                                   ; preds = %bb.x, %bb.u
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %.sroa.10144.0188
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !52
  %i.fo = add nsw i64 %.sroa.10144.0188, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit

.thread2.i:                                       ; preds = %bb.t
  br i1 %i.ey, label %.thread2..thread3_crit_edge.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit

.thread2..thread3_crit_edge.i:                    ; preds = %.thread2.i
  %.phi.trans.insert4.i = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %.sroa.26151.0185
  %.pre5.i = load i32, ptr %.phi.trans.insert4.i, align 4, !tbaa !37
  br label %.thread3.i

bb.y:                                             ; preds = %bb.x
  %i.fp = icmp sgt i32 %i.fa, %i.fc
  br i1 %i.fp, label %.thread3.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit

.thread3.i:                                       ; preds = %bb.y, %.thread2..thread3_crit_edge.i
  %i.fq = phi i32 [ %.pre5.i, %.thread2..thread3_crit_edge.i ], [ %i.fc, %bb.y ]
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %.sroa.26151.0185
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !52
  %i.ft = fsub double 0.000000e+00, %i.fs
  %i.fu = add nsw i64 %.sroa.26151.0185, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit

_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit: ; preds = %bb.w, %._crit_edge6.i, %.thread3.i
  %.sroa.26151.2 = phi i64 [ %i.fk, %bb.w ], [ %.sroa.26151.0185, %._crit_edge6.i ], [ %i.fu, %.thread3.i ]
  %.sroa.47157.2 = phi i32 [ %i.fa, %bb.w ], [ %i.fa, %._crit_edge6.i ], [ %i.fq, %.thread3.i ] ; 2 uses
  %.sroa.38156.2 = phi double [ %i.fi, %bb.w ], [ %i.fn, %._crit_edge6.i ], [ %i.ft, %.thread3.i ]
  %.sroa.10144.2 = phi i64 [ %i.fj, %bb.w ], [ %i.fo, %._crit_edge6.i ], [ %.sroa.10144.0188, %.thread3.i ]
  %i.fv = icmp sgt i32 %.sroa.47157.2, -1
  br i1 %i.fv, label %.lr.ph189, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, !llvm.loop !115

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.fw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !28 ; 3 uses
  store i8 0, ptr %2, align 8, !tbaa !30
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fy, i8 0, i64 64, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.fx, ptr %i.fz, align 8, !tbaa !28
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.gc = shl i64 %i.f, 2
  %i.gd = add i64 %i.gc, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.gd) ; 2 uses
  store ptr %calloc, ptr %i.gb, align 8, !tbaa !36
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ge = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ge, align 8, !tbaa !59
  invoke void @__cxa_throw(ptr nonnull %i.ge, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc89 unwind label %bb.ab

.noexc89:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.gf = landingpad { ptr, i32 }
          cleanup
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.gg) #18
  br label %.body

bb.ac:                                            ; preds = %bb.z
  store i64 %i.f, ptr %i.fy, align 8, !tbaa !29
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.gi = mul nsw i64 %i.f, %i.fx
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.fx, i64 %i.f)
  %i.gj = shl nsw i64 %.sroa.speculated, 1
  %.sroa.speculated134 = tail call i64 @llvm.smin.i64(i64 %i.gj, i64 %i.gi) ; 9 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.gm = icmp sgt i64 %.sroa.speculated134, 0
  br i1 %i.gm, label %bb.ad, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53

bb.ad:                                            ; preds = %bb.ac
  %i.gn = icmp samesign ugt i64 %.sroa.speculated134, 2305843009213693951
  %i.go = shl nuw i64 %.sroa.speculated134, 3
  %i.gp = select i1 %i.gn, i64 -1, i64 %i.go
  %i.gq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gp) #23
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc102:                                        ; preds = %bb.ad
  %i.gr = icmp samesign ugt i64 %.sroa.speculated134, 4611686018427387903
  %i.gs = shl nuw i64 %.sroa.speculated134, 2
  %i.gt = select i1 %i.gr, i64 -1, i64 %i.gs
  %i.gu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gt) #23
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i91 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i90 ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i91: ; preds = %.noexc102
  %i.gv = load i64, ptr %i.ga, align 8, !tbaa !61 ; 2 uses
  %i.gw = icmp sgt i64 %i.gv, 0
  %.pre.i.i93 = load ptr, ptr %i.gk, align 8, !tbaa !62 ; 3 uses
  br i1 %i.gw, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i99, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i94

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i94: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i91
  %.phi.trans.insert.i.i95 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre23.i.i96 = load ptr, ptr %.phi.trans.insert.i.i95, align 8, !tbaa !60
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i97

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i99: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i91
  %i.gx = tail call i64 @llvm.umin.i64(i64 %i.gv, i64 %.sroa.speculated134) ; 2 uses
  %.idx.i.i100 = shl nuw nsw i64 %i.gx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gq, ptr align 8 %.pre.i.i93, i64 %.idx.i.i100, i1 false)
  %.idx22.i.i101 = shl nuw nsw i64 %i.gx, 2
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gu, ptr align 4 %i.gz, i64 %.idx22.i.i101, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i97

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i90: ; preds = %.noexc102
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %.body103.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i97: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i99, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i94
  %i.hb = phi ptr [ %.pre23.i.i96, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i94 ], [ %i.gz, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i99 ] ; 2 uses
  store ptr %i.gq, ptr %i.gk, align 8, !tbaa !62
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.gu, ptr %i.hc, align 8, !tbaa !60
  store i64 %.sroa.speculated134, ptr %i.gl, align 8, !tbaa !64
  %i.hd = icmp eq ptr %i.hb, null
  br i1 %i.hd, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i98, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i97
  tail call void @_ZdaPv(ptr noundef nonnull %i.hb) #19
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i98

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i98: ; preds = %bb.ae, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i97
  %i.he = icmp eq ptr %.pre.i.i93, null
  br i1 %i.he, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53, label %bb.af

bb.af:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i98
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i93) #19
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53: ; preds = %bb.ac, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i98, %bb.af
  %i.hf = phi i64 [ 0, %bb.ac ], [ %.sroa.speculated134, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i98 ], [ %.sroa.speculated134, %bb.af ]
  %i.hg = icmp sgt i64 %i.f, 0
  br i1 %i.hg, label %.lr.ph183, label %._crit_edge184

.lr.ph183:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.phi.trans.insert.i.i111 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  br label %bb.aj

._crit_edge184:                                   ; preds = %._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53
  %i.hp = load ptr, ptr %i.gh, align 8, !tbaa !35
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %._crit_edge184
  %i.hr = load i64, ptr %i.ga, align 8, !tbaa !65
  %i.hs = trunc i64 %i.hr to i32                  ; 2 uses
  %i.ht = load i64, ptr %i.fy, align 8, !tbaa !29 ; 5 uses
  %i.hu = icmp sgt i64 %i.ht, -1
  br i1 %i.hu, label %.lr.ph.i54, label %.loopexit

.lr.ph.i54:                                       ; preds = %bb.ag
  %i.hv = load ptr, ptr %i.gb, align 8, !tbaa !36 ; 3 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph.i54
  %.08.i55 = phi i64 [ %i.ht, %.lr.ph.i54 ], [ %i.hz, %bb.ai ] ; 4 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %.08.i55
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !37
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.ai, label %.critedge.i56

bb.ai:                                            ; preds = %bb.ah
  %i.hz = add nsw i64 %.08.i55, -1
  %i.ia = icmp sgt i64 %.08.i55, 0
  br i1 %i.ia, label %bb.ah, label %.critedge.i56, !llvm.loop !4

.critedge.i56:                                    ; preds = %bb.ai, %bb.ah
  %.0.lcssa.i57 = phi i64 [ -1, %bb.ai ], [ %.08.i55, %bb.ah ] ; 5 uses
  %.not.not11.i58 = icmp slt i64 %.0.lcssa.i57, %i.ht
  br i1 %.not.not11.i58, label %.lr.ph13.i59.preheader, label %.loopexit

.lr.ph13.i59.preheader:                           ; preds = %.critedge.i56
  %i.ib = sub i64 %i.ht, %.0.lcssa.i57            ; 3 uses
  %min.iters.check = icmp ult i64 %i.ib, 8
  br i1 %min.iters.check, label %.lr.ph13.i59.preheader270, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph13.i59.preheader
  %n.vec = and i64 %i.ib, -8                      ; 3 uses
  %i.ic = add i64 %.0.lcssa.i57, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.hs, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %i.hv, i64 %.0.lcssa.i57
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ie = getelementptr [4 x i8], ptr %i.id, i64 %index ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 4
  %i.ig = getelementptr i8, ptr %i.ie, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.if, align 4, !tbaa !37
  store <4 x i32> %broadcast.splat, ptr %i.ig, align 4, !tbaa !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ih = icmp eq i64 %index.next, %n.vec
  br i1 %i.ih, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ib, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph13.i59.preheader270

.lr.ph13.i59.preheader270:                        ; preds = %.lr.ph13.i59.preheader, %middle.block
  %.1.in12.i60.ph = phi i64 [ %.0.lcssa.i57, %.lr.ph13.i59.preheader ], [ %i.ic, %middle.block ]
  br label %.lr.ph13.i59

.lr.ph13.i59:                                     ; preds = %.lr.ph13.i59.preheader270, %.lr.ph13.i59
  %.1.in12.i60 = phi i64 [ %.1.i61, %.lr.ph13.i59 ], [ %.1.in12.i60.ph, %.lr.ph13.i59.preheader270 ]
  %.1.i61 = add nsw i64 %.1.in12.i60, 1           ; 3 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %.1.i61
  store i32 %i.hs, ptr %i.ii, align 4, !tbaa !37
  %exitcond.not.i62 = icmp eq i64 %.1.i61, %i.ht
  br i1 %exitcond.not.i62, label %.loopexit, label %.lr.ph13.i59, !llvm.loop !117

bb.aj:                                            ; preds = %.lr.ph183, %._crit_edge
  %i.ij = phi i64 [ %i.hf, %.lr.ph183 ], [ %i.ks, %._crit_edge ] ; 4 uses
  %.0182 = phi i64 [ 0, %.lr.ph183 ], [ %i.kt, %._crit_edge ] ; 7 uses
  %i.ik = load ptr, ptr %i.gb, align 8, !tbaa !36
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %.0182 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !37
  %i.in = getelementptr i8, ptr %i.il, i64 4
  store i32 %i.im, ptr %i.in, align 4, !tbaa !37
  %i.io = load ptr, ptr %i.hh, align 8, !tbaa !42 ; 4 uses
  %i.ip = load ptr, ptr %i.hi, align 8, !tbaa !43 ; 2 uses
  %i.iq = load ptr, ptr %i.hj, align 8, !tbaa !36
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %.0182 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !37
  %i.it = sext i32 %i.is to i64                   ; 8 uses
  %i.iu = load ptr, ptr %i.hk, align 8, !tbaa !35 ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.iw = getelementptr i8, ptr %i.ir, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !37
  %i.iy = sext i32 %i.ix to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i64

bb.al:                                            ; preds = %bb.aj
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.0182
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !37
  %i.jb = sext i32 %i.ja to i64
  %i.jc = add nsw i64 %i.jb, %i.it
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i64

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i64: ; preds = %bb.al, %bb.ak
  %.sink.i.i65 = phi i64 [ %i.iy, %bb.ak ], [ %i.jc, %bb.al ] ; 2 uses
  %i.jd = load ptr, ptr %i.hl, align 8, !tbaa !42 ; 4 uses
  %i.je = load ptr, ptr %i.hm, align 8, !tbaa !43 ; 4 uses
  %i.jf = load ptr, ptr %i.hn, align 8, !tbaa !36
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %.0182 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !37
  %i.ji = sext i32 %i.jh to i64                   ; 9 uses
  %i.jj = load ptr, ptr %i.ho, align 8, !tbaa !35 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i64
  %i.jl = getelementptr i8, ptr %i.jg, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !37
  %i.jn = sext i32 %i.jm to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit6.i66

bb.an:                                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.0182
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !37
  %i.jq = sext i32 %i.jp to i64
  %i.jr = add nsw i64 %i.jq, %i.ji
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit6.i66

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit6.i66: ; preds = %bb.an, %bb.am
  %i.js = phi i64 [ %i.jn, %bb.am ], [ %i.jr, %bb.an ] ; 2 uses
  %i.jt = icmp sgt i64 %.sink.i.i65, %i.it
  %i.ju = icmp sgt i64 %i.js, %i.ji               ; 2 uses
  br i1 %i.jt, label %bb.ao, label %.thread2.i.i67

bb.ao:                                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit6.i66
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.it
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !37 ; 5 uses
  br i1 %i.ju, label %bb.ap, label %._crit_edge6.i.i72

bb.ap:                                            ; preds = %bb.ao
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.ji
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !37 ; 4 uses
  %i.jz = icmp eq i32 %i.jw, %i.jy
  br i1 %i.jz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.it
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.ji
  %i.kc = load double, ptr %i.ka, align 8, !tbaa !52
  %i.kd = load double, ptr %i.kb, align 8, !tbaa !52
  %i.ke = fsub double %i.kc, %i.kd
  %i.kf = add nsw i64 %i.it, 1
  %i.kg = add nsw i64 %i.ji, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorC2ERKSA_l.exit73

bb.ar:                                            ; preds = %bb.ap
  %i.kh = icmp slt i32 %i.jw, %i.jy
  br i1 %i.kh, label %._crit_edge6.i.i72, label %bb.as

._crit_edge6.i.i72:                               ; preds = %bb.ar, %bb.ao
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.it
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !52
  %i.kk = add nsw i64 %i.it, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorC2ERKSA_l.exit73

.thread2.i.i67:                                   ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit6.i66
  br i1 %i.ju, label %.thread2..thread3_crit_edge.i.i68, label %._crit_edge

.thread2..thread3_crit_edge.i.i68:                ; preds = %.thread2.i.i67
  %.phi.trans.insert4.i.i69 = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.ji
  %.pre5.i.i70 = load i32, ptr %.phi.trans.insert4.i.i69, align 4, !tbaa !37
  br label %.thread3.i.i71

bb.as:                                            ; preds = %bb.ar
  %i.kl = icmp sgt i32 %i.jw, %i.jy
  br i1 %i.kl, label %.thread3.i.i71, label %._crit_edge

.thread3.i.i71:                                   ; preds = %bb.as, %.thread2..thread3_crit_edge.i.i68
  %i.km = phi i32 [ %.pre5.i.i70, %.thread2..thread3_crit_edge.i.i68 ], [ %i.jy, %bb.as ]
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.ji
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !52
  %i.kp = fsub double 0.000000e+00, %i.ko
  %i.kq = add nsw i64 %i.ji, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorC2ERKSA_l.exit73

_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorC2ERKSA_l.exit73: ; preds = %bb.aq, %._crit_edge6.i.i72, %.thread3.i.i71
  %.sroa.26.1 = phi i64 [ %i.kg, %bb.aq ], [ %i.ji, %._crit_edge6.i.i72 ], [ %i.kq, %.thread3.i.i71 ]
  %.sroa.47.1 = phi i32 [ %i.jw, %bb.aq ], [ %i.jw, %._crit_edge6.i.i72 ], [ %i.km, %.thread3.i.i71 ] ; 2 uses
  %.sroa.38.1 = phi double [ %i.ke, %bb.aq ], [ %i.kj, %._crit_edge6.i.i72 ], [ %i.kp, %.thread3.i.i71 ]
  %.sroa.10.1 = phi i64 [ %i.kf, %bb.aq ], [ %i.kk, %._crit_edge6.i.i72 ], [ %i.it, %.thread3.i.i71 ]
  %i.kr = icmp sgt i32 %.sroa.47.1, -1
  br i1 %i.kr, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.thread2.i75, %bb.bd, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit83, %.thread2.i.i67, %bb.as, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorC2ERKSA_l.exit73
  %i.ks = phi i64 [ %i.ij, %.thread2.i.i67 ], [ %i.ij, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorC2ERKSA_l.exit73 ], [ %i.ij, %bb.as ], [ %i.lu, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit83 ], [ %i.lu, %bb.bd ], [ %i.lu, %.thread2.i75 ]
  %i.kt = add nuw nsw i64 %.0182, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.kt, %i.f
  br i1 %exitcond.not, label %._crit_edge184, label %bb.aj, !llvm.loop !118

.lr.ph:                                           ; preds = %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorC2ERKSA_l.exit73, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit83
  %i.ku = phi i64 [ %i.lu, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit83 ], [ %i.ij, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorC2ERKSA_l.exit73 ] ; 2 uses
  %.sroa.10.0181 = phi i64 [ %.sroa.10.2, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit83 ], [ %.sroa.10.1, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorC2ERKSA_l.exit73 ] ; 7 uses
  %.sroa.38.0180 = phi double [ %.sroa.38.2, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit83 ], [ %.sroa.38.1, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorC2ERKSA_l.exit73 ]
  %.sroa.47.0179 = phi i32 [ %.sroa.47.2, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit83 ], [ %.sroa.47.1, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorC2ERKSA_l.exit73 ]
  %.sroa.26.0178 = phi i64 [ %.sroa.26.2, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit83 ], [ %.sroa.26.1, %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorC2ERKSA_l.exit73 ] ; 8 uses
  %i.kv = load ptr, ptr %i.gb, align 8, !tbaa !36
  %i.kw = getelementptr [4 x i8], ptr %i.kv, i64 %.0182
  %i.kx = getelementptr i8, ptr %i.kw, i64 4      ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !37 ; 2 uses
  %i.kz = sext i32 %i.ky to i64
  %i.la = add nsw i32 %i.ky, 1
  store i32 %i.la, ptr %i.kx, align 4, !tbaa !37
  %i.lb = load i64, ptr %i.ga, align 8, !tbaa !65 ; 5 uses
  %i.lc = add nsw i64 %i.lb, 1                    ; 3 uses
  %.not = icmp sgt i64 %i.ku, %i.lb
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.at

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.gk, align 8, !tbaa !42
  %.pre196 = load ptr, ptr %.phi.trans.insert.i.i111, align 8, !tbaa !43
  br label %bb.ay

bb.at:                                            ; preds = %.lr.ph
  %i.ld = sitofp i64 %i.lc to double
  %i.le = fptosi double %i.ld to i64
  %i.lf = add nsw i64 %i.lc, %i.le
  %.sroa.speculated.i105 = tail call i64 @llvm.smin.i64(i64 %i.lf, i64 2147483647) ; 7 uses
  %.not173 = icmp sgt i64 %.sroa.speculated.i105, %i.lb
  br i1 %.not173, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lg = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.lg, align 8, !tbaa !59
  invoke void @__cxa_throw(ptr nonnull %i.lg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc118:                                        ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.lh = shl nuw nsw i64 %.sroa.speculated.i105, 3
  %i.li = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lh) #23
          to label %.noexc119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc119:                                        ; preds = %bb.av
  %i.lj = shl nuw nsw i64 %.sroa.speculated.i105, 2
  %i.lk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lj) #23
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i107 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i106 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i107: ; preds = %.noexc119
  %i.ll = load i64, ptr %i.ga, align 8, !tbaa !61
  %.sroa.speculated.i.i108 = tail call i64 @llvm.smin.i64(i64 %i.ll, i64 %.sroa.speculated.i105) ; 3 uses
  %i.lm = icmp sgt i64 %.sroa.speculated.i.i108, 0
  %.pre.i.i109 = load ptr, ptr %i.gk, align 8, !tbaa !62 ; 3 uses
  br i1 %i.lm, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i115, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i110

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i110: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i107
  %.pre23.i.i112 = load ptr, ptr %.phi.trans.insert.i.i111, align 8, !tbaa !60
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i113

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i115: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i107
  %.idx.i.i116 = shl nuw nsw i64 %.sroa.speculated.i.i108, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.li, ptr align 8 %.pre.i.i109, i64 %.idx.i.i116, i1 false)
  %.idx22.i.i117 = shl nuw nsw i64 %.sroa.speculated.i.i108, 2
  %i.ln = load ptr, ptr %.phi.trans.insert.i.i111, align 8, !tbaa !43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.lk, ptr align 4 %i.ln, i64 %.idx22.i.i117, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i113

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i106: ; preds = %.noexc119
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %.body103.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i113: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i115, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i110
  %i.lp = phi ptr [ %.pre23.i.i112, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i110 ], [ %i.ln, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i115 ] ; 2 uses
  store ptr %i.li, ptr %i.gk, align 8, !tbaa !62
  store ptr %i.lk, ptr %.phi.trans.insert.i.i111, align 8, !tbaa !60
  store i64 %.sroa.speculated.i105, ptr %i.gl, align 8, !tbaa !64
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114, label %bb.aw

bb.aw:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i113
  tail call void @_ZdaPv(ptr noundef nonnull %i.lp) #19
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114: ; preds = %bb.aw, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i113
  %i.lr = icmp eq ptr %.pre.i.i109, null
  br i1 %i.lr, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i109) #19
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph._crit_edge, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114, %bb.ax
  %i.ls = phi ptr [ %.pre196, %.lr.ph._crit_edge ], [ %i.lk, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114 ], [ %i.lk, %bb.ax ]
  %i.lt = phi ptr [ %.pre, %.lr.ph._crit_edge ], [ %i.li, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114 ], [ %i.li, %bb.ax ] ; 2 uses
  %i.lu = phi i64 [ %i.ku, %.lr.ph._crit_edge ], [ %.sroa.speculated.i105, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i114 ], [ %.sroa.speculated.i105, %bb.ax ] ; 4 uses
  store i64 %i.lc, ptr %i.ga, align 8, !tbaa !65
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.lb
  store double 0.000000e+00, ptr %i.lv, align 8, !tbaa !52
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.lb
  store i32 %.sroa.47.0179, ptr %i.lw, align 4, !tbaa !37
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.kz
  store double %.sroa.38.0180, ptr %i.lx, align 8, !tbaa !52
  %i.ly = icmp slt i64 %.sroa.10.0181, %.sink.i.i65
  %i.lz = icmp slt i64 %.sroa.26.0178, %i.js      ; 2 uses
  br i1 %i.ly, label %bb.az, label %.thread2.i75

bb.az:                                            ; preds = %bb.ay
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %.sroa.10.0181
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !37 ; 5 uses
  br i1 %i.lz, label %bb.ba, label %._crit_edge6.i82

bb.ba:                                            ; preds = %bb.az
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.je, i64 %.sroa.26.0178
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !37 ; 4 uses
  %i.me = icmp eq i32 %i.mb, %i.md
  br i1 %i.me, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.io, i64 %.sroa.10.0181
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %.sroa.26.0178
  %i.mh = load double, ptr %i.mf, align 8, !tbaa !52
  %i.mi = load double, ptr %i.mg, align 8, !tbaa !52
  %i.mj = fsub double %i.mh, %i.mi
  %i.mk = add nsw i64 %.sroa.10.0181, 1
  %i.ml = add nsw i64 %.sroa.26.0178, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit83

bb.bc:                                            ; preds = %bb.ba
  %i.mm = icmp slt i32 %i.mb, %i.md
  br i1 %i.mm, label %._crit_edge6.i82, label %bb.bd

._crit_edge6.i82:                                 ; preds = %bb.bc, %bb.az
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.io, i64 %.sroa.10.0181
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !52
  %i.mp = add nsw i64 %.sroa.10.0181, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit83

.thread2.i75:                                     ; preds = %bb.ay
  br i1 %i.lz, label %.thread2..thread3_crit_edge.i76, label %._crit_edge

.thread2..thread3_crit_edge.i76:                  ; preds = %.thread2.i75
  %.phi.trans.insert4.i79 = getelementptr inbounds [4 x i8], ptr %i.je, i64 %.sroa.26.0178
  %.pre5.i80 = load i32, ptr %.phi.trans.insert4.i79, align 4, !tbaa !37
  br label %.thread3.i81

bb.bd:                                            ; preds = %bb.bc
  %i.mq = icmp sgt i32 %i.mb, %i.md
  br i1 %i.mq, label %.thread3.i81, label %._crit_edge

.thread3.i81:                                     ; preds = %bb.bd, %.thread2..thread3_crit_edge.i76
  %i.mr = phi i32 [ %.pre5.i80, %.thread2..thread3_crit_edge.i76 ], [ %i.md, %bb.bd ]
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %.sroa.26.0178
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !52
  %i.mu = fsub double 0.000000e+00, %i.mt
  %i.mv = add nsw i64 %.sroa.26.0178, 1
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit83

_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EENS0_13IteratorBasedES9_ddE13InnerIteratorppEv.exit83: ; preds = %bb.bb, %._crit_edge6.i82, %.thread3.i81
  %.sroa.26.2 = phi i64 [ %i.ml, %bb.bb ], [ %.sroa.26.0178, %._crit_edge6.i82 ], [ %i.mv, %.thread3.i81 ]
  %.sroa.47.2 = phi i32 [ %i.mb, %bb.bb ], [ %i.mb, %._crit_edge6.i82 ], [ %i.mr, %.thread3.i81 ] ; 2 uses
  %.sroa.38.2 = phi double [ %i.mj, %bb.bb ], [ %i.mo, %._crit_edge6.i82 ], [ %i.mu, %.thread3.i81 ]
  %.sroa.10.2 = phi i64 [ %i.mk, %bb.bb ], [ %i.mp, %._crit_edge6.i82 ], [ %.sroa.10.0181, %.thread3.i81 ]
  %i.mw = icmp sgt i32 %.sroa.47.2, -1
  br i1 %i.mw, label %.lr.ph, label %._crit_edge, !llvm.loop !119

.loopexit:                                        ; preds = %.lr.ph13.i59, %middle.block, %._crit_edge184, %bb.ag, %.critedge.i56
  store i8 1, ptr %2, align 8, !tbaa !30
  %i.mx = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.be:                                            ; preds = %.loopexit
  %i.my = load ptr, ptr %i.gb, align 8, !tbaa !36
  call void @free(ptr noundef %i.my) #18
  %i.mz = load ptr, ptr %i.gh, align 8, !tbaa !35
  call void @free(ptr noundef %i.mz) #18
  %i.na = load ptr, ptr %i.gk, align 8, !tbaa !42 ; 2 uses
  %i.nb = icmp eq ptr %i.na, null
  br i1 %i.nb, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZdaPv(ptr noundef nonnull %i.na) #19
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !43 ; 2 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.nd) #19
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.av, %bb.au, %bb.ad, %.loopexit
  %lpad.loopexit.split-lp271 = landingpad { ptr, i32 }
          cleanup
  br label %.body103

.body103.sink.split:                              ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i90, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i106
  %.lcssa253.sink = phi ptr [ %i.li, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i106 ], [ %i.gq, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i90 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.lo, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i106 ], [ %i.ha, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i90 ]
  tail call void @_ZdaPv(ptr noundef nonnull %.lcssa253.sink) #19
  br label %.body103

.body103:                                         ; preds = %.body103.sink.split, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp271, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.ph, %.body103.sink.split ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #18
  br label %.body

.body:                                            ; preds = %bb.ab, %.body103
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body103 ], [ %i.gf, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.body85

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block266, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  ret void

.body85:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.eo, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !30, !range !66, !noundef !56
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !60
  store ptr %i.f, ptr %i.c, align 8, !tbaa !60
  store ptr %i.e, ptr %i.d, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !tbaa !61
  %i.j = load i64, ptr %i.h, align 8, !tbaa !61
  store i64 %i.j, ptr %i.g, align 8, !tbaa !61
  store i64 %i.i, ptr %i.h, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !61
  %i.n = load i64, ptr %i.l, align 8, !tbaa !61
  store i64 %i.n, ptr %i.k, align 8, !tbaa !61
  store i64 %i.m, ptr %i.l, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !63
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !63
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !63
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !60
  store ptr %i.v, ptr %i.s, align 8, !tbaa !60
  store ptr %i.u, ptr %i.t, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !61
  %i.z = load i64, ptr %i.x, align 8, !tbaa !61
  store i64 %i.z, ptr %i.w, align 8, !tbaa !61
  store i64 %i.y, ptr %i.x, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !61
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !61
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !61
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !61
  br label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !29
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.af, i64 noundef %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.aj) #18
  store ptr null, ptr %i.ai, align 8, !tbaa !35
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit

_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit: ; preds = %bb.d, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !29
  %.idx = shl nsw i64 %i.ao, 2
  %i.ap = add nsw i64 %.idx, 4                    ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36
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
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !42
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bf, ptr align 8 %i.be, i64 %.idx.i, i1 false)
  %.pre.i = load i64, ptr %i.bb, align 8, !tbaa !65 ; 2 uses
  %i.bg = icmp eq i64 %.pre.i, 0
  br i1 %i.bg, label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i
  %.idx7.i = shl nsw i64 %.pre.i, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.bi, i64 %.idx7.i, i1 false)
  br label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

bb.j:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentIS1_EEvRKT_.exit
  tail call void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1), !inline_history !124
  br label %_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit

_ZN5Eigen8internal17CompressedStorageIdiEaSERKS2_.exit: ; preds = %bb.i, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %bb.h, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit, %bb.c, %bb.j, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65
  %i.c = add nsw i64 %i.b, %1                     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  %i.h = shl nuw i64 %i.c, 3
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #23 ; 3 uses
  %i.k = icmp ugt i64 %i.c, 4611686018427387903
  %i.l = shl nuw i64 %i.c, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #23
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.b
  %i.o = load i64, ptr %i.a, align 8, !tbaa !61
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.o, i64 %i.c) ; 3 uses
  %i.p = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !62  ; 3 uses
  br i1 %i.p, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !60
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.r, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #19
  resume { ptr, i32 } %i.s
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEES3_EEvRT_RKT0_:bb.a
  %.sink.i = phi i64 [ %i.bk, %bb.h ], [ %i.bo, %bb.i ] ; 2 uses
  %i.bp = icmp sgt i64 %.sink.i, %i.bf
  br i1 %i.bp, label %.lr.ph146.preheader, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit

.lr.ph146.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %.pre156 = load i64, ptr %i.g, align 8, !tbaa !65
  br label %.lr.ph146

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %bb.m, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bq = add nuw nsw i64 %.037148, 1             ; 2 uses
  %exitcond154.not = icmp eq i64 %i.bq, %i.b
  br i1 %exitcond154.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, label %bb.g, !llvm.loop !127

.lr.ph146:                                        ; preds = %.lr.ph146.preheader, %bb.m
  %i.br = phi i64 [ %i.cc, %bb.m ], [ %.pre156, %.lr.ph146.preheader ] ; 5 uses
  %.sroa.8119.0145 = phi i64 [ %i.dc, %bb.m ], [ %i.bf, %.lr.ph146.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %.sroa.8119.0145
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !52
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.sroa.8119.0145
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !37
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %.037148
  %i.by = getelementptr i8, ptr %i.bx, i64 4      ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !37 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add nsw i32 %i.bz, 1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !37
  %i.cc = add nsw i64 %i.br, 1                    ; 4 uses
  %i.cd = load i64, ptr %i.ab, align 8, !tbaa !64
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
  %i.ch = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ch, align 8, !tbaa !59
  tail call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.noexc67:                                         ; preds = %bb.j
  %i.ci = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  %i.cj = shl nuw i64 %.sroa.speculated.i, 3
  %i.ck = select i1 %i.ci, i64 -1, i64 %i.cj
  %i.cl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #23 ; 3 uses
  %i.cm = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  %i.cn = shl nuw i64 %.sroa.speculated.i, 2
  %i.co = select i1 %i.cm, i64 -1, i64 %i.cn
  %i.cp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.co) #23
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i: ; preds = %.noexc67
  %i.cq = load i64, ptr %i.g, align 8, !tbaa !61
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.cq, i64 %.sroa.speculated.i) ; 3 uses
  %i.cr = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.v, align 8, !tbaa !62 ; 3 uses
  br i1 %i.cr, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.pre23.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !60
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr align 8 %.pre.i.i, i64 %.idx.i.i, i1 false)
  %.idx22.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 2
  %i.cs = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cp, ptr align 4 %i.cs, i64 %.idx22.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i: ; preds = %.noexc67
  %i.ct = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.cl) #19
  br label %.body68

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.cu = phi ptr [ %.pre23.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.cs, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.cl, ptr %i.v, align 8, !tbaa !62
  store ptr %i.cp, ptr %.phi.trans.insert.i.i, align 8, !tbaa !60
  store i64 %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !64
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.cu) #19
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %bb.k, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  %i.cw = icmp eq ptr %.pre.i.i, null
  br i1 %i.cw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #19
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph146, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %bb.l
  store i64 %i.cc, ptr %i.g, align 8, !tbaa !65
  %i.cx = load ptr, ptr %i.v, align 8, !tbaa !42  ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.br
  store double 0.000000e+00, ptr %i.cy, align 8, !tbaa !52
  %i.cz = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !43
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.br
  store i32 %i.bv, ptr %i.da, align 4, !tbaa !37
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ca
  store double %i.bt, ptr %i.db, align 8, !tbaa !52
  %i.dc = add nsw i64 %.sroa.8119.0145, 1         ; 2 uses
  %exitcond153.not = icmp eq i64 %i.dc, %.sink.i
  br i1 %exitcond153.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, label %.lr.ph146, !llvm.loop !128

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !28 ; 3 uses
  store i8 0, ptr %2, align 8, !tbaa !30
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.df, i8 0, i64 64, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.de, ptr %i.dg, align 8, !tbaa !28
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.dj = shl i64 %i.b, 2
  %i.dk = add i64 %i.dj, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.dk) ; 2 uses
  store ptr %calloc, ptr %i.di, align 8, !tbaa !36
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dl = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dl, align 8, !tbaa !59
  invoke void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc71 unwind label %bb.p

.noexc71:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dn) #18
  br label %.body

bb.q:                                             ; preds = %bb.n
  store i64 %i.b, ptr %i.df, align 8, !tbaa !29
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
  %i.dx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dw) #23
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc84:                                         ; preds = %bb.r
  %i.dy = icmp samesign ugt i64 %.sroa.speculated111, 4611686018427387903
  %i.dz = shl nuw i64 %.sroa.speculated111, 2
  %i.ea = select i1 %i.dy, i64 -1, i64 %i.dz
  %i.eb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ea) #23
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73: ; preds = %.noexc84
  %i.ec = load i64, ptr %i.dh, align 8, !tbaa !61 ; 2 uses
  %i.ed = icmp sgt i64 %i.ec, 0
  %.pre.i.i75 = load ptr, ptr %i.dr, align 8, !tbaa !62 ; 3 uses
  br i1 %i.ed, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73
  %.phi.trans.insert.i.i77 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre23.i.i78 = load ptr, ptr %.phi.trans.insert.i.i77, align 8, !tbaa !60
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i73
  %i.ee = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 %.sroa.speculated111) ; 2 uses
  %.idx.i.i82 = shl nuw nsw i64 %i.ee, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr align 8 %.pre.i.i75, i64 %.idx.i.i82, i1 false)
  %.idx22.i.i83 = shl nuw nsw i64 %i.ee, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr align 4 %i.eg, i64 %.idx22.i.i83, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72: ; preds = %.noexc84
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body85.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76
  %i.ei = phi ptr [ %.pre23.i.i78, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i76 ], [ %i.eg, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i81 ] ; 2 uses
  store ptr %i.dx, ptr %i.dr, align 8, !tbaa !62
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.eb, ptr %i.ej, align 8, !tbaa !60
  store i64 %.sroa.speculated111, ptr %i.ds, align 8, !tbaa !64
  %i.ek = icmp eq ptr %i.ei, null
  br i1 %i.ek, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80, label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79
  tail call void @_ZdaPv(ptr noundef nonnull %i.ei) #19
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80: ; preds = %bb.s, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i79
  %i.el = icmp eq ptr %.pre.i.i75, null
  br i1 %i.el, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit53, label %bb.t

bb.t:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i80
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i75) #19
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
  %i.es = load ptr, ptr %i.do, align 8, !tbaa !35
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge144
  %i.eu = load i64, ptr %i.dh, align 8, !tbaa !65
  %i.ev = trunc i64 %i.eu to i32                  ; 2 uses
  %i.ew = load i64, ptr %i.df, align 8, !tbaa !29 ; 5 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  br i1 %i.ex, label %.lr.ph.i54, label %.loopexit

.lr.ph.i54:                                       ; preds = %bb.u
  %i.ey = load ptr, ptr %i.di, align 8, !tbaa !36 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i54
  %.08.i55 = phi i64 [ %i.ew, %.lr.ph.i54 ], [ %i.fc, %bb.w ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.08.i55
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !37
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.w, label %.critedge.i56

bb.w:                                             ; preds = %bb.v
  %i.fc = add nsw i64 %.08.i55, -1
  %i.fd = icmp sgt i64 %.08.i55, 0
  br i1 %i.fd, label %bb.v, label %.critedge.i56, !llvm.loop !4

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
  store <4 x i32> %broadcast.splat, ptr %i.fi, align 4, !tbaa !37
  store <4 x i32> %broadcast.splat, ptr %i.fj, align 4, !tbaa !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !129

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
  store i32 %i.ev, ptr %i.fl, align 4, !tbaa !37
  %exitcond.not.i62 = icmp eq i64 %.1.i61, %i.ew
  br i1 %exitcond.not.i62, label %.loopexit, label %.lr.ph13.i59, !llvm.loop !130

bb.x:                                             ; preds = %.lr.ph143, %._crit_edge
  %i.fm = phi i64 [ %i.em, %.lr.ph143 ], [ %i.gh, %._crit_edge ] ; 2 uses
  %.0142 = phi i64 [ 0, %.lr.ph143 ], [ %i.gi, %._crit_edge ] ; 5 uses
  %i.fn = load ptr, ptr %i.di, align 8, !tbaa !36
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.0142 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !37
  %i.fq = getelementptr i8, ptr %i.fo, i64 4
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !37
  %i.fr = load ptr, ptr %i.eo, align 8, !tbaa !42
  %i.fs = load ptr, ptr %i.ep, align 8, !tbaa !43
  %i.ft = load ptr, ptr %i.eq, align 8, !tbaa !36
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.0142 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !37
  %i.fw = sext i32 %i.fv to i64                   ; 3 uses
  %i.fx = load ptr, ptr %i.er, align 8, !tbaa !35 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fz = getelementptr i8, ptr %i.fu, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !37
  %i.gb = sext i32 %i.ga to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65

bb.z:                                             ; preds = %bb.x
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %.0142
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !37
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
  br i1 %exitcond152.not, label %._crit_edge144, label %bb.x, !llvm.loop !131

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65, %bb.af
  %i.gj = phi i64 [ %i.hn, %bb.af ], [ %i.fm, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 2 uses
  %.sroa.8.0141 = phi i64 [ %i.hr, %bb.af ], [ %i.fw, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit65 ] ; 3 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %.sroa.8.0141
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !52
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %.sroa.8.0141
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !37
  %i.go = load ptr, ptr %i.di, align 8, !tbaa !36
  %i.gp = getelementptr [4 x i8], ptr %i.go, i64 %.0142
  %i.gq = getelementptr i8, ptr %i.gp, i64 4      ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !37 ; 2 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = add nsw i32 %i.gr, 1
  store i32 %i.gt, ptr %i.gq, align 4, !tbaa !37
  %i.gu = load i64, ptr %i.dh, align 8, !tbaa !65 ; 5 uses
  %i.gv = add nsw i64 %i.gu, 1                    ; 3 uses
  %.not = icmp sgt i64 %i.gj, %i.gu
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.aa

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.dr, align 8, !tbaa !42
  %.pre155 = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !43
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph
  %i.gw = sitofp i64 %i.gv to double
  %i.gx = fptosi double %i.gw to i64
  %i.gy = add nsw i64 %i.gv, %i.gx
  %.sroa.speculated.i87 = tail call i64 @llvm.smin.i64(i64 %i.gy, i64 2147483647) ; 7 uses
  %.not136 = icmp sgt i64 %.sroa.speculated.i87, %i.gu
  br i1 %.not136, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gz = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.gz, align 8, !tbaa !59
  invoke void @__cxa_throw(ptr nonnull %i.gz, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ha = shl nuw nsw i64 %.sroa.speculated.i87, 3
  %i.hb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ha) #23
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc101:                                        ; preds = %bb.ac
  %i.hc = shl nuw nsw i64 %.sroa.speculated.i87, 2
  %i.hd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hc) #23
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89 unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ; 4 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89: ; preds = %.noexc101
  %i.he = load i64, ptr %i.dh, align 8, !tbaa !61
  %.sroa.speculated.i.i90 = tail call i64 @llvm.smin.i64(i64 %i.he, i64 %.sroa.speculated.i87) ; 3 uses
  %i.hf = icmp sgt i64 %.sroa.speculated.i.i90, 0
  %.pre.i.i91 = load ptr, ptr %i.dr, align 8, !tbaa !62 ; 3 uses
  br i1 %i.hf, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89
  %.pre23.i.i94 = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !60
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i89
  %.idx.i.i98 = shl nuw nsw i64 %.sroa.speculated.i.i90, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hb, ptr align 8 %.pre.i.i91, i64 %.idx.i.i98, i1 false)
  %.idx22.i.i99 = shl nuw nsw i64 %.sroa.speculated.i.i90, 2
  %i.hg = load ptr, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr align 4 %i.hg, i64 %.idx22.i.i99, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88: ; preds = %.noexc101
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body85.sink.split

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92
  %i.hi = phi ptr [ %.pre23.i.i94, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i92 ], [ %i.hg, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i.i97 ] ; 2 uses
  store ptr %i.hb, ptr %i.dr, align 8, !tbaa !62
  store ptr %i.hd, ptr %.phi.trans.insert.i.i93, align 8, !tbaa !60
  store i64 %.sroa.speculated.i87, ptr %i.ds, align 8, !tbaa !64
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96, label %bb.ad

bb.ad:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95
  tail call void @_ZdaPv(ptr noundef nonnull %i.hi) #19
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96: ; preds = %bb.ad, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i95
  %i.hk = icmp eq ptr %.pre.i.i91, null
  br i1 %i.hk, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i91) #19
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph._crit_edge, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96, %bb.ae
  %i.hl = phi ptr [ %.pre155, %.lr.ph._crit_edge ], [ %i.hd, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %i.hd, %bb.ae ]
  %i.hm = phi ptr [ %.pre, %.lr.ph._crit_edge ], [ %i.hb, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %i.hb, %bb.ae ] ; 2 uses
  %i.hn = phi i64 [ %i.gj, %.lr.ph._crit_edge ], [ %.sroa.speculated.i87, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i96 ], [ %.sroa.speculated.i87, %bb.ae ] ; 2 uses
  store i64 %i.gv, ptr %i.dh, align 8, !tbaa !65
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.gu
  store double 0.000000e+00, ptr %i.ho, align 8, !tbaa !52
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.gu
  store i32 %i.gn, ptr %i.hp, align 4, !tbaa !37
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.gs
  store double %i.gl, ptr %i.hq, align 8, !tbaa !52
  %i.hr = add nsw i64 %.sroa.8.0141, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hr, %.sink.i64
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !132

.loopexit:                                        ; preds = %.lr.ph13.i59, %middle.block, %._crit_edge144, %bb.u, %.critedge.i56
  store i8 1, ptr %2, align 8, !tbaa !30
  %i.hs = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %.loopexit
  %i.ht = load ptr, ptr %i.di, align 8, !tbaa !36
  call void @free(ptr noundef %i.ht) #18
  %i.hu = load ptr, ptr %i.do, align 8, !tbaa !35
  call void @free(ptr noundef %i.hu) #18
  %i.hv = load ptr, ptr %i.dr, align 8, !tbaa !42 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.hv) #19
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !43 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.hy) #19
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %bb.ab, %bb.r, %.loopexit
  %lpad.loopexit.split-lp195 = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.body85.sink.split:                               ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88
  %.lcssa177.sink = phi ptr [ %i.hb, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ], [ %i.dx, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.hh, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i88 ], [ %i.eh, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i72 ]
  tail call void @_ZdaPv(ptr noundef nonnull %.lcssa177.sink) #19
  br label %.body85

.body85:                                          ; preds = %.body85.sink.split, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp195, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.ph, %.body85.sink.split ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #18
  br label %.body

.body:                                            ; preds = %bb.p, %.body85
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body85 ], [ %i.dm, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
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

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind memory(none) }
attributes #21 = { noreturn }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { builtin allocsize(0) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !39}
!1 = distinct !{!1, !39}
!2 = distinct !{!2, !39}
!3 = distinct !{!3, !39}
!4 = distinct !{!4, !39}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 double", !14, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !15, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !16, i64 16}
!20 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !14, i64 0}
!21 = !{!17, !15, i64 0}
!22 = !{!"bool", !10, i64 0}
!23 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEE", !22, i64 0}
!24 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEE", !23, i64 0}
!25 = !{!"p1 int", !14, i64 0}
!26 = !{!"_ZTSN5Eigen8internal17CompressedStorageIdiEE", !15, i64 0, !25, i64 8, !16, i64 16, !16, i64 24}
!27 = !{!"_ZTSN5Eigen12SparseMatrixIdLi0EiEE", !24, i64 0, !16, i64 8, !16, i64 16, !25, i64 24, !25, i64 32, !26, i64 40}
!28 = !{!27, !16, i64 16}
!29 = !{!27, !16, i64 8}
!30 = !{!23, !22, i64 0}
!31 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES7_EEEE", !22, i64 0}
!32 = !{!31, !22, i64 0}
!33 = !{!"p1 _ZTSN5Eigen12SparseMatrixIdLi0EiEE", !14, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!27, !25, i64 32}
!36 = !{!27, !25, i64 24}
!37 = !{!11, !11, i64 0}
!38 = !{!10, !10, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!26, !15, i64 0}
!43 = !{!26, !25, i64 8}
!44 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !25, i64 0, !16, i64 8}
!45 = !{!44, !16, i64 8}
!46 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !15, i64 0, !16, i64 8}
!47 = !{!46, !15, i64 0}
!48 = !{!44, !25, i64 0}
!49 = !{!46, !16, i64 8}
!50 = !{i64 6098469}
!51 = !{!"double", !10, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{i64 6096576}
!55 = !{!"_ZTSN5Eigen8internal20scalar_difference_opIddEE"}
!56 = !{}
!57 = !{i64 8}
!58 = !{!"vtable pointer", !9, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!25, !25, i64 0}
!61 = !{!16, !16, i64 0}
!62 = !{!15, !15, i64 0}
!63 = !{!14, !14, i64 0}
!64 = !{!26, !16, i64 24}
!65 = !{!26, !16, i64 16}
!66 = !{i8 0, i8 2}
!67 = distinct !{!67, i1 true, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmiINS_9TransposeIKS2_EEEEKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIdNS9_6traitsIT_E6ScalarEEES6_KSC_EERKNS0_ISC_EE"}
!68 = distinct !{!68, !67, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEmiINS_9TransposeIKS2_EEEEKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIdNS9_6traitsIT_E6ScalarEEES6_KSC_EERKNS0_ISC_EE: argument 0"}
!69 = !{!20, !20, i64 0}
!70 = !{!68}
!71 = distinct !{!71, i1 true, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEmiIS2_EEKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIdNS6_6traitsIT_E6ScalarEEEKS2_KS9_EERKNS0_IS9_EE"}
!72 = distinct !{!72, !71, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEmiIS2_EEKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIdNS6_6traitsIT_E6ScalarEEEKS2_KS9_EERKNS0_IS9_EE: argument 0"}
!73 = distinct !{!73, !39}
!74 = distinct !{!74, !39, !40, !41}
!75 = distinct !{!75, !39, !40, !41}
!76 = distinct !{!76, !39, !41, !40}
!77 = distinct !{!77, !39, !41, !40}
!78 = distinct !{!78, !39, !40, !41}
!79 = distinct !{!79, !39, !41, !40}
!80 = !{!72}
!81 = distinct !{!81, i1 true, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEmiIS2_EEKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIdNS6_6traitsIT_E6ScalarEEEKS2_KS9_EERKNS0_IS9_EE"}
!82 = distinct !{!82, !81, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEmiIS2_EEKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIdNS6_6traitsIT_E6ScalarEEEKS2_KS9_EERKNS0_IS9_EE: argument 0"}
!83 = distinct !{!83, !53}
!84 = distinct !{!84, !53}
!85 = !{!82}
!86 = distinct !{!86, i1 true, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEmiIS2_EEKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIdNS6_6traitsIT_E6ScalarEEEKS2_KS9_EERKNS0_IS9_EE"}
!87 = distinct !{!87, !86, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEmiIS2_EEKNS_13CwiseBinaryOpINS_8internal20scalar_difference_opIdNS6_6traitsIT_E6ScalarEEEKS2_KS9_EERKNS0_IS9_EE: argument 0"}
!88 = distinct !{!88, !53}
!89 = distinct !{!89, !53}
!90 = !{!87}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !91}
!95 = distinct !{!95, !39, !40, !41}
!96 = distinct !{!96, !39}
!97 = distinct !{!97, !39, !40}
!98 = !{!"_ZTSN5Eigen9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !20, i64 0}
!99 = !{!"_ZTSN5Eigen13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9TransposeIS6_EEEE", !20, i64 0, !98, i64 8, !55, i64 16}
!100 = !{!99, !20, i64 0}
!101 = !{!98, !20, i64 0}
!102 = !{!92}
!103 = !{!93}
!104 = !{!94}
!105 = !{!92, !93}
!106 = distinct !{!106, !53}
!107 = distinct !{!107, !39}
!108 = distinct !{!108, !39}
!109 = distinct !{!109, !39}
!110 = distinct !{!110, !39}
!111 = distinct !{!111, !39}
!112 = distinct !{!112, !39, !40, !41}
!113 = distinct !{!113, !39, !41, !40}
!114 = distinct !{!114, !39}
!115 = distinct !{!115, !39}
!116 = distinct !{!116, !39, !40, !41}
!117 = distinct !{!117, !39, !41, !40}
!118 = distinct !{!118, !39}
!119 = distinct !{!119, !39}
!120 = !{!"_ZTSN5Eigen17CwiseBinaryOpImplINS_8internal20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES6_NS_6SparseEEE", !31, i64 0}
!121 = !{!"_ZTSN5Eigen13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_12SparseMatrixIdLi0EiEES6_EE", !120, i64 0, !33, i64 8, !33, i64 16, !55, i64 24}
!122 = !{!121, !33, i64 8}
!123 = !{!121, !33, i64 16}
!124 = distinct !{null, null, null, null}
!125 = distinct !{!125, !39, !40, !41}
!126 = distinct !{!126, !39, !41, !40}
!127 = distinct !{!127, !39}
!128 = distinct !{!128, !39}
!129 = distinct !{!129, !39, !40, !41}
!130 = distinct !{!130, !39, !41, !40}
!131 = distinct !{!131, !39}
!132 = distinct !{!132, !39}
end_hunk_1
