Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/height_field?download=true
inline.NumInlined: 198
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3CreateHeightField:bb.a
  unreachable, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  %i.ey = ptrtoint ptr %i.ev to i64, !nosanitize !9 ; 2 uses
  %i.ez = and i64 %i.ey, 3, !nosanitize !9
  %i.fa = icmp eq i64 %i.ez, 0, !nosanitize !9
  br i1 %i.fa, label %bb.ag, label %.split3575, !prof !10, !nosanitize !9

.split3575:                                       ; preds = %bb.af, %._crit_edge
  %.us-phi3576 = phi i64 [ 0, %._crit_edge ], [ %i.ey, %bb.af ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @31, i64 %.us-phi3576) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  store float %i.eu, ptr %i.ev, align 4, !tbaa !25
  %indvars.iv.next6936 = add nuw nsw i64 %indvars.iv6935, 1 ; 2 uses
  %exitcond6939.not = icmp eq i64 %indvars.iv.next6936, %wide.trip.count6938
  br i1 %exitcond6939.not, label %._crit_edge3557, label %.lr.ph3556.split.split, !llvm.loop !61

._crit_edge3557:                                  ; preds = %bb.ag, %._crit_edge.thread
  %.fr7006 = phi ptr [ %.fr7003, %._crit_edge.thread ], [ %.fr, %bb.ag ] ; 15 uses
  %i.fb = phi i64 [ %i.cq, %._crit_edge.thread ], [ %i.dh, %bb.ag ]
  %.0.lcssa7005 = phi float [ %i.cm, %._crit_edge.thread ], [ %i.el, %bb.ag ]
  %.0880.lcssa7004 = phi float [ %i.cn, %._crit_edge.thread ], [ %i.ej, %bb.ag ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !40
  %.not982 = icmp eq ptr %i.fd, null
  %i.fe = icmp sgt i32 %i.x, 0                    ; 2 uses
  br i1 %.not982, label %.preheader1393, label %.preheader1394

.preheader1394:                                   ; preds = %._crit_edge3557
  br i1 %i.fe, label %.lr.ph3579, label %.loopexit

.lr.ph3579:                                       ; preds = %.preheader1394
  %.not4265 = icmp eq i64 %i.bs, 0
  br i1 %.not4265, label %.split3591.us, label %.lr.ph3579.split.preheader, !prof !20

.lr.ph3579.split.preheader:                       ; preds = %.lr.ph3579
  %wide.trip.count6943 = zext nneg i32 %i.x to i64
  br label %.lr.ph3579.split

.preheader1393:                                   ; preds = %._crit_edge3557
  br i1 %i.fe, label %.lr.ph3595, label %.loopexit

.lr.ph3595:                                       ; preds = %.preheader1393
  %.not4275 = icmp eq i64 %i.bs, 0
  br i1 %.not4275, label %.split3600.us, label %.lr.ph3595.split.preheader, !prof !20

.lr.ph3595.split.preheader:                       ; preds = %.lr.ph3595
  %wide.trip.count6948 = zext nneg i32 %i.x to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count6948, 3     ; 3 uses
  %i.ff = icmp ult i32 %i.x, 4
  br i1 %i.ff, label %.lr.ph3595.split.epil.preheader, label %.lr.ph3595.split.preheader.new

.lr.ph3595.split.preheader.new:                   ; preds = %.lr.ph3595.split.preheader
  %unroll_iter = and i64 %wide.trip.count6948, 2147483644
  br label %.lr.ph3595.split

.lr.ph3579.split:                                 ; preds = %.lr.ph3579.split.preheader, %bb.aj
  %indvars.iv6940 = phi i64 [ 0, %.lr.ph3579.split.preheader ], [ %indvars.iv.next6941, %bb.aj ] ; 5 uses
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !40 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv6940 ; 2 uses
  %i.fi = ptrtoint ptr %i.fg to i64, !nosanitize !9 ; 3 uses
  %i.fj = add i64 %indvars.iv6940, %i.fi, !nosanitize !9 ; 3 uses
  %i.fk = icmp ne ptr %i.fg, null, !nosanitize !9 ; 2 uses
  %i.fl = icmp eq i64 %i.fj, 0
  %i.fm = xor i1 %i.fk, %i.fl
  %i.fn = icmp uge i64 %i.fj, %i.fi, !nosanitize !9
  %i.fo = and i1 %i.fn, %i.fm, !nosanitize !9
  br i1 %i.fo, label %bb.ah, label %.split3581.us, !prof !10, !nosanitize !9

.split3581.us:                                    ; preds = %.lr.ph3579.split
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @32, i64 %i.fi, i64 %i.fj) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ah:                                            ; preds = %.lr.ph3579.split
  br i1 %i.fk, label %bb.ai, label %.split3585.us, !prof !10, !nosanitize !9

.split3585.us:                                    ; preds = %bb.ah
  %i.fp = ptrtoint ptr %i.fh to i64, !nosanitize !9
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @33, i64 %i.fp) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  %i.fq = add i64 %i.bs, %indvars.iv6940, !nosanitize !9 ; 2 uses
  %.not4266 = icmp ult i64 %i.fq, %i.bs, !nosanitize !9
  br i1 %.not4266, label %.split3588.us, label %bb.aj, !prof !20, !nosanitize !9

.split3588.us:                                    ; preds = %bb.ai
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @34, i64 %i.bs, i64 %i.fq) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split3591.us:                                    ; preds = %.lr.ph3579
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @35, i64 0) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv6940
  %i.fs = load i8, ptr %i.fh, align 1, !tbaa !41
  store i8 %i.fs, ptr %i.fr, align 1, !tbaa !41
  %indvars.iv.next6941 = add nuw nsw i64 %indvars.iv6940, 1 ; 2 uses
  %exitcond6944.not = icmp eq i64 %indvars.iv.next6941, %wide.trip.count6943
  br i1 %exitcond6944.not, label %.loopexit, label %.lr.ph3579.split, !llvm.loop !62

.lr.ph3595.split:                                 ; preds = %bb.ak, %.lr.ph3595.split.preheader.new
  %indvars.iv6945 = phi i64 [ 0, %.lr.ph3595.split.preheader.new ], [ %indvars.iv.next6946.3, %bb.ak ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph3595.split.preheader.new ], [ %niter.next.3, %bb.ak ]
  %i.ft = add i64 %i.bs, %indvars.iv6945, !nosanitize !9 ; 2 uses
  %.not4276 = icmp ult i64 %i.ft, %i.bs, !nosanitize !9
  br i1 %.not4276, label %.split3597.us, label %.lr.ph3595.split.1, !prof !20, !nosanitize !9

.split3597.us:                                    ; preds = %.lr.ph3595.split.epil, %.lr.ph3595.split, %.lr.ph3595.split.1, %.lr.ph3595.split.2, %.lr.ph3595.split.3
  %.lcssa12903 = phi i64 [ %i.fz, %.lr.ph3595.split.3 ], [ %i.ft, %.lr.ph3595.split ], [ %i.fv, %.lr.ph3595.split.1 ], [ %i.fx, %.lr.ph3595.split.2 ], [ %i.gb, %.lr.ph3595.split.epil ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @36, i64 %i.bs, i64 %.lcssa12903) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split3600.us:                                    ; preds = %.lr.ph3595
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @37, i64 0) #12, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph3595.split.1:                               ; preds = %.lr.ph3595.split
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv6945
  store i8 0, ptr %i.fu, align 1, !tbaa !41
  %indvars.iv.next6946 = or disjoint i64 %indvars.iv6945, 1 ; 2 uses
  %i.fv = add i64 %i.bs, %indvars.iv.next6946, !nosanitize !9 ; 2 uses
  %.not4276.1 = icmp ult i64 %i.fv, %i.bs, !nosanitize !9
  br i1 %.not4276.1, label %.split3597.us, label %.lr.ph3595.split.2, !prof !20, !nosanitize !9

.lr.ph3595.split.2:                               ; preds = %.lr.ph3595.split.1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.next6946
  store i8 0, ptr %i.fw, align 1, !tbaa !41
  %indvars.iv.next6946.1 = or disjoint i64 %indvars.iv6945, 2 ; 2 uses
  %i.fx = add i64 %i.bs, %indvars.iv.next6946.1, !nosanitize !9 ; 2 uses
  %.not4276.2 = icmp ult i64 %i.fx, %i.bs, !nosanitize !9
  br i1 %.not4276.2, label %.split3597.us, label %.lr.ph3595.split.3, !prof !20, !nosanitize !9

.lr.ph3595.split.3:                               ; preds = %.lr.ph3595.split.2
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.next6946.1
  store i8 0, ptr %i.fy, align 1, !tbaa !41
  %indvars.iv.next6946.2 = or disjoint i64 %indvars.iv6945, 3 ; 2 uses
  %i.fz = add i64 %i.bs, %indvars.iv.next6946.2, !nosanitize !9 ; 2 uses
  %.not4276.3 = icmp ult i64 %i.fz, %i.bs, !nosanitize !9
  br i1 %.not4276.3, label %.split3597.us, label %bb.ak, !prof !20, !nosanitize !9

bb.ak:                                            ; preds = %.lr.ph3595.split.3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.next6946.2
  store i8 0, ptr %i.ga, align 1, !tbaa !41
  %indvars.iv.next6946.3 = add nuw nsw i64 %indvars.iv6945, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph3595.split, !llvm.loop !63

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ak
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph3595.split.epil.preheader

.lr.ph3595.split.epil.preheader:                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph3595.split.preheader
  %indvars.iv6945.epil.init = phi i64 [ 0, %.lr.ph3595.split.preheader ], [ %indvars.iv.next6946.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod12945 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12945)
  br label %.lr.ph3595.split.epil

.lr.ph3595.split.epil:                            ; preds = %bb.al, %.lr.ph3595.split.epil.preheader
  %indvars.iv6945.epil = phi i64 [ %indvars.iv6945.epil.init, %.lr.ph3595.split.epil.preheader ], [ %indvars.iv.next6946.epil, %bb.al ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph3595.split.epil.preheader ], [ %epil.iter.next, %bb.al ]
  %i.gb = add i64 %i.bs, %indvars.iv6945.epil, !nosanitize !9 ; 2 uses
  %.not4276.epil = icmp ult i64 %i.gb, %i.bs, !nosanitize !9
  br i1 %.not4276.epil, label %.split3597.us, label %bb.al, !prof !20, !nosanitize !9

bb.al:                                            ; preds = %.lr.ph3595.split.epil
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv6945.epil
  store i8 0, ptr %i.gc, align 1, !tbaa !41
  %indvars.iv.next6946.epil = add nuw nsw i64 %indvars.iv6945.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph3595.split.epil, !llvm.loop !64

.loopexit:                                        ; preds = %bb.aj, %.loopexit.loopexit.unr-lcssa, %bb.al, %.preheader1394, %.preheader1393
  %i.gd = getelementptr inbounds nuw i8, ptr %.fr4248, i64 20
  %i.ge = getelementptr inbounds nuw i8, ptr %.fr4248, i64 60
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !71 ; 2 uses
  %i.gg = fmul float %.0.lcssa7005, %i.gf
  store float 0.000000e+00, ptr %i.gd, align 4, !tbaa !25
  %.sroa.21365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fr4248, i64 24
  store float %i.gg, ptr %.sroa.21365.0..sroa_idx, align 8, !tbaa !25
  %.sroa.31366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fr4248, i64 28
  store float 0.000000e+00, ptr %.sroa.31366.0..sroa_idx, align 4, !tbaa !25
  %i.gh = getelementptr inbounds nuw i8, ptr %.fr4248, i64 32
  %i.gi = load i32, ptr %i.bc, align 4, !tbaa !27 ; 2 uses
  %i.gj = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.gi, i32 -1) ; 2 uses
  %i.gk = extractvalue { i32, i1 } %i.gj, 1, !nosanitize !9
  br i1 %i.gk, label %bb.am, label %bb.an, !prof !20, !nosanitize !9

bb.am:                                            ; preds = %.loopexit
  %i.gl = zext i32 %i.gi to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @38, i64 %i.gl, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.an:                                            ; preds = %.loopexit
  %i.gm = getelementptr inbounds nuw i8, ptr %.fr4248, i64 64
  %i.gn = load float, ptr %i.gm, align 8, !tbaa !72 ; 4 uses
  %i.go = load i32, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
  %i.gp = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.go, i32 -1) ; 2 uses
  %i.gq = extractvalue { i32, i1 } %i.gp, 1, !nosanitize !9
  br i1 %i.gq, label %bb.ao, label %.split3971, !prof !20, !nosanitize !9

bb.ao:                                            ; preds = %bb.an
  %i.gr = zext i32 %i.go to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @39, i64 %i.gr, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split3971:                                       ; preds = %bb.an
  %i.gs = fmul float %.0880.lcssa7004, %i.gf
  %i.gt = load float, ptr %i.ba, align 8, !tbaa !73
  %i.gu = extractvalue { i32, i1 } %i.gj, 0, !nosanitize !9
  %i.gv = sitofp i32 %i.gu to float
  %i.gw = fmul float %i.gt, %i.gv
  %i.gx = extractvalue { i32, i1 } %i.gp, 0, !nosanitize !9
  %i.gy = sitofp i32 %i.gx to float
  %i.gz = fmul float %i.gn, %i.gy
  store float %i.gw, ptr %i.gh, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fr4248, i64 36
  store float %i.gs, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !25
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fr4248, i64 40
  store float %i.gz, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !25
  %i.ha = icmp sgt i32 %i.t, 0
  br i1 %i.ha, label %.preheader.lr.ph, label %._crit_edge3974

.preheader.lr.ph:                                 ; preds = %.split3971
  %.sroa.0697.0.copyload = load <2 x float>, ptr %i.ba, align 8, !tbaa !25 ; 5 uses
  %i.hb = icmp sgt i32 %i.p, 0
  %.not4285 = icmp eq i64 %i.bs, 0
  %i.hc = ptrtoint ptr %.fr7006 to i64            ; 37 uses
  %i.hd = icmp ne ptr %.fr7006, null              ; 2 uses
  %.sroa.07.0.vec.extract.i = extractelement <2 x float> %.sroa.0697.0.copyload, i64 0 ; 2 uses
  %.sroa.07.4.vec.extract.i = extractelement <2 x float> %.sroa.0697.0.copyload, i64 1 ; 13 uses
  %.sroa.4590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.4577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.not983 = icmp ugt ptr %1, inttoptr (i64 -25 to ptr)
  %.sroa.4515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.4502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.not984 = icmp ugt ptr %2, inttoptr (i64 -25 to ptr)
  %.sroa.4407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.4394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.not987 = icmp ugt ptr %3, inttoptr (i64 -25 to ptr)
  %.sroa.4298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.4285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.not990 = icmp ugt ptr %4, inttoptr (i64 -25 to ptr)
  %.sroa.4188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.not993 = icmp ugt ptr %5, inttoptr (i64 -25 to ptr)
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.not996 = icmp ugt ptr %6, inttoptr (i64 -25 to ptr)
  %i.hk = icmp ne i64 %i.bx, 0                    ; 2 uses
  br i1 %i.hb, label %.preheader.us.preheader, label %._crit_edge3974

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.hl = shl i32 %i.g, 1                         ; 2 uses
  %i.hm = add i32 %i.hl, -2
  %7 = insertelement <2 x float> poison, float %i.gn, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %invariant.op = sub i32 2, %i.hl
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge3606.us
  %indvars.iv6954 = phi i32 [ 2147483647, %.preheader.us.preheader ], [ %indvars.iv.next6955.reass.reass, %._crit_edge3606.us ] ; 2 uses
  %.08853973.us = phi i32 [ 0, %.preheader.us.preheader ], [ %i.ix, %._crit_edge3606.us ] ; 3 uses
  %.08863972.us = phi i32 [ 0, %.preheader.us.preheader ], [ %i.hu, %._crit_edge3606.us ] ; 9 uses
  %i.hn = lshr i32 %indvars.iv6954, 1
  %i.ho = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.08863972.us, i32 %i.p)
  %.fr4286 = freeze { i32, i1 } %i.ho             ; 2 uses
  %i.hp = extractvalue { i32, i1 } %.fr4286, 0    ; 4 uses
  %i.hq = extractvalue { i32, i1 } %.fr4286, 1
  %i.hr = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.08863972.us, i32 %i.g) ; 2 uses
  %i.hs = extractvalue { i32, i1 } %i.hr, 0       ; 6 uses
  %i.ht = extractvalue { i32, i1 } %i.hr, 1
  %i.hu = add nuw nsw i32 %.08863972.us, 1        ; 8 uses
  %i.hv = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.hu, i32 %i.g) ; 2 uses
  %i.hw = extractvalue { i32, i1 } %i.hv, 0       ; 6 uses
  %i.hx = extractvalue { i32, i1 } %i.hv, 1
  %i.hy = uitofp nneg i32 %.08863972.us to float
  %i.hz = uitofp nneg i32 %i.hu to float
  %9 = insertelement <2 x float> poison, float %i.hy, i64 0
  %10 = insertelement <2 x float> %9, float %i.hz, i64 1
  %11 = fmul <2 x float> %8, %10                  ; 6 uses
  %12 = extractelement <2 x float> %11, i64 0     ; 9 uses
  %13 = extractelement <2 x float> %11, i64 1     ; 9 uses
  %i.ia = fsub float %13, %12                     ; 4 uses
  %foldExtExtBinop11052 = fsub <2 x float> %11, %11
  %14 = extractelement <2 x float> %foldExtExtBinop11052, i64 0 ; 6 uses
  %15 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %16 = fsub <2 x float> %11, %15                 ; 4 uses
  %i.ib = add nsw i32 %.08863972.us, -1           ; 5 uses
  %i.ic = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.ib, i32 %i.p) ; 2 uses
  %i.id = extractvalue { i32, i1 } %i.ic, 0       ; 2 uses
  %i.ie = extractvalue { i32, i1 } %i.ic, 1
  %.not6999 = icmp eq i32 %.08863972.us, 0
  %i.if = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.ib, i32 %i.g) ; 2 uses
  %i.ig = extractvalue { i32, i1 } %i.if, 0       ; 2 uses
  %i.ih = extractvalue { i32, i1 } %i.if, 1
  %i.ii = sitofp i32 %i.ib to float
  %i.ij = fmul float %i.gn, %i.ii                 ; 3 uses
  %i.ik = fsub float %i.ij, %12                   ; 2 uses
  %i.il = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.hu, i32 %i.p) ; 2 uses
  %i.im = extractvalue { i32, i1 } %i.il, 0       ; 2 uses
  %i.in = extractvalue { i32, i1 } %i.il, 1
  %i.io = icmp slt i32 %i.hu, %i.t
  %i.ip = add nuw nsw i32 %.08863972.us, 2        ; 3 uses
  %i.iq = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.ip, i32 %i.g) ; 2 uses
  %i.ir = extractvalue { i32, i1 } %i.iq, 0       ; 2 uses
  %i.is = extractvalue { i32, i1 } %i.iq, 1
  %i.it = uitofp nneg i32 %i.ip to float
  %i.iu = fmul float %i.gn, %i.it                 ; 3 uses
  %i.iv = fsub float %i.iu, %13                   ; 2 uses
  br i1 %i.hq, label %.lr.ph3605.split.us, label %.lr.ph3605.split.us3975, !prof !20, !nosanitize !9

.lr.ph3605.split.us3975:                          ; preds = %.preheader.us
  br i1 %.not4285, label %.lr.ph3605.split.split.us, label %.lr.ph3605.split.split.us3976.preheader, !prof !20

.lr.ph3605.split.split.us3976.preheader:          ; preds = %.lr.ph3605.split.us3975
  %i.iw = sext i32 %.08853973.us to i64
  %i.ix = add i32 %i.hm, %.08853973.us
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %18 = extractelement <2 x float> %16, i64 1     ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.dw, %.lr.ph3605.split.split.us3976.preheader
  %indvars.iv6951 = phi i64 [ %i.iw, %.lr.ph3605.split.split.us3976.preheader ], [ %indvars.iv.next6952, %bb.dw ] ; 7 uses
  %.08873603.us3978 = phi i32 [ 0, %.lr.ph3605.split.split.us3976.preheader ], [ %.pre-phi, %bb.dw ] ; 22 uses
  %indvars.iv.next6952 = add nsw i64 %indvars.iv6951, 2
  %exitcond6956 = icmp eq i32 %.08873603.us3978, %i.hn
  br i1 %exitcond6956, label %.split3612.us.loopexit, label %bb.aq, !prof !20, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap
  %i.iy = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.hp, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.iz = extractvalue { i32, i1 } %i.iy, 0, !nosanitize !9 ; 6 uses
  %i.ja = extractvalue { i32, i1 } %i.iy, 1, !nosanitize !9
  br i1 %i.ja, label %.split3793.us, label %bb.ar, !prof !20, !nosanitize !9

bb.ar:                                            ; preds = %bb.aq
  %i.jb = sext i32 %i.iz to i64                   ; 2 uses
  %i.jc = add i64 %i.bs, %i.jb, !nosanitize !9    ; 3 uses
  %i.jd = icmp ne i64 %i.jc, 0
  %i.je = icmp uge i64 %i.jc, %i.bs, !nosanitize !9
  %i.jf = icmp slt i32 %i.iz, 0
  %i.jg = xor i1 %i.jf, %i.je
  %i.jh = and i1 %i.jd, %i.jg, !nosanitize !9
  br i1 %i.jh, label %bb.as, label %.split3797.us, !prof !10, !nosanitize !9

bb.as:                                            ; preds = %bb.ar
  %i.ji = getelementptr inbounds i8, ptr %i.bu, i64 %i.jb
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !41
  %i.jk = icmp eq i8 %i.jj, -1
  br i1 %i.jk, label %._crit_edge6960, label %bb.at

._crit_edge6960:                                  ; preds = %bb.as
  %.pre = add nuw nsw i32 %.08873603.us3978, 1
  br label %bb.dw

bb.at:                                            ; preds = %bb.as
  br i1 %i.ht, label %.split3996.us, label %bb.au, !prof !20, !nosanitize !9

bb.au:                                            ; preds = %bb.at
  %i.jl = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.hs, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.jm = extractvalue { i32, i1 } %i.jl, 0, !nosanitize !9 ; 4 uses
  %i.jn = extractvalue { i32, i1 } %i.jl, 1, !nosanitize !9
  br i1 %i.jn, label %.split3999.us, label %bb.av, !prof !20, !nosanitize !9

bb.av:                                            ; preds = %bb.au
  %i.jo = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.jm, i32 1), !nosanitize !9 ; 2 uses
  %i.jp = extractvalue { i32, i1 } %i.jo, 0, !nosanitize !9 ; 2 uses
  %i.jq = extractvalue { i32, i1 } %i.jo, 1, !nosanitize !9
  br i1 %i.jq, label %.split4003.us, label %bb.aw, !prof !20, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  br i1 %i.hx, label %.split4009.us, label %bb.ax, !prof !20, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  %i.jr = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.hw, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.js = extractvalue { i32, i1 } %i.jr, 0, !nosanitize !9 ; 4 uses
  %i.jt = extractvalue { i32, i1 } %i.jr, 1, !nosanitize !9
  br i1 %i.jt, label %.split4012.us, label %bb.ay, !prof !20, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  %i.ju = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.js, i32 1), !nosanitize !9 ; 2 uses
  %i.jv = extractvalue { i32, i1 } %i.ju, 0, !nosanitize !9 ; 2 uses
  %i.jw = extractvalue { i32, i1 } %i.ju, 1, !nosanitize !9
  br i1 %i.jw, label %.split4016.us, label %bb.az, !prof !20, !nosanitize !9

bb.az:                                            ; preds = %bb.ay
  %i.jx = sext i32 %i.jm to i64                   ; 2 uses
  %i.jy = getelementptr inbounds [4 x i8], ptr %.fr7006, i64 %i.jx ; 3 uses
  %i.jz = shl nsw i64 %i.jx, 2
  %i.ka = add i64 %i.jz, %i.hc, !nosanitize !9    ; 3 uses
  %i.kb = icmp eq i64 %i.ka, 0                    ; 2 uses
  %i.kc = xor i1 %i.hd, %i.kb
  %i.kd = icmp uge i64 %i.ka, %i.hc, !nosanitize !9
  %i.ke = icmp slt i32 %i.jm, 0
  %i.kf = xor i1 %i.ke, %i.kd
  %i.kg = and i1 %i.kc, %i.kf, !nosanitize !9
  br i1 %i.kg, label %bb.ba, label %.split4019.us, !prof !10, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  %i.kh = ptrtoint ptr %i.jy to i64, !nosanitize !9 ; 2 uses
  %i.ki = and i64 %i.kh, 3, !nosanitize !9
  %i.kj = icmp eq i64 %i.ki, 0, !nosanitize !9
  %i.kk = and i1 %i.hd, %i.kj
  br i1 %i.kk, label %bb.bb, label %.split4023.us, !prof !10, !nosanitize !9

bb.bb:                                            ; preds = %bb.ba
  %i.kl = load float, ptr %i.jy, align 4, !tbaa !25
  %i.km = sext i32 %i.jp to i64                   ; 2 uses
  %i.kn = getelementptr inbounds [4 x i8], ptr %.fr7006, i64 %i.km ; 3 uses
  %i.ko = shl nsw i64 %i.km, 2
  %i.kp = add i64 %i.ko, %i.hc, !nosanitize !9    ; 3 uses
  %i.kq = icmp ne i64 %i.kp, 0
  %i.kr = icmp uge i64 %i.kp, %i.hc, !nosanitize !9
  %i.ks = icmp slt i32 %i.jp, 0
  %i.kt = xor i1 %i.ks, %i.kr
  %i.ku = and i1 %i.kq, %i.kt, !nosanitize !9
  br i1 %i.ku, label %bb.bc, label %.split4026.us, !prof !10, !nosanitize !9

bb.bc:                                            ; preds = %bb.bb
  %i.kv = ptrtoint ptr %i.kn to i64, !nosanitize !9 ; 2 uses
  %i.kw = and i64 %i.kv, 3, !nosanitize !9
  %i.kx = icmp eq i64 %i.kw, 0, !nosanitize !9
  br i1 %i.kx, label %bb.bd, label %.split4030.us, !prof !10, !nosanitize !9

bb.bd:                                            ; preds = %bb.bc
  %i.ky = load float, ptr %i.kn, align 4, !tbaa !25
  %i.kz = sext i32 %i.js to i64                   ; 2 uses
  %i.la = getelementptr inbounds [4 x i8], ptr %.fr7006, i64 %i.kz ; 3 uses
  %i.lb = shl nsw i64 %i.kz, 2
  %i.lc = add i64 %i.lb, %i.hc, !nosanitize !9    ; 3 uses
  %i.ld = icmp ne i64 %i.lc, 0
  %i.le = icmp uge i64 %i.lc, %i.hc, !nosanitize !9
  %i.lf = icmp slt i32 %i.js, 0
  %i.lg = xor i1 %i.lf, %i.le
  %i.lh = and i1 %i.ld, %i.lg, !nosanitize !9
  br i1 %i.lh, label %bb.be, label %.split4033.us, !prof !10, !nosanitize !9

bb.be:                                            ; preds = %bb.bd
  %i.li = ptrtoint ptr %i.la to i64, !nosanitize !9 ; 2 uses
  %i.lj = and i64 %i.li, 3, !nosanitize !9
  %i.lk = icmp eq i64 %i.lj, 0, !nosanitize !9
  br i1 %i.lk, label %bb.bf, label %.split4037.us, !prof !10, !nosanitize !9

bb.bf:                                            ; preds = %bb.be
  %i.ll = load float, ptr %i.la, align 4, !tbaa !25
  %i.lm = sext i32 %i.jv to i64                   ; 2 uses
  %i.ln = getelementptr inbounds [4 x i8], ptr %.fr7006, i64 %i.lm ; 3 uses
  %i.lo = shl nsw i64 %i.lm, 2
  %i.lp = add i64 %i.lo, %i.hc, !nosanitize !9    ; 3 uses
  %i.lq = icmp ne i64 %i.lp, 0
  %i.lr = icmp uge i64 %i.lp, %i.hc, !nosanitize !9
  %i.ls = icmp slt i32 %i.jv, 0
  %i.lt = xor i1 %i.ls, %i.lr
  %i.lu = and i1 %i.lq, %i.lt, !nosanitize !9
  br i1 %i.lu, label %bb.bg, label %.split4040.us, !prof !10, !nosanitize !9

bb.bg:                                            ; preds = %bb.bf
  %i.lv = ptrtoint ptr %i.ln to i64, !nosanitize !9 ; 2 uses
  %i.lw = and i64 %i.lv, 3, !nosanitize !9
  %i.lx = icmp eq i64 %i.lw, 0, !nosanitize !9
  br i1 %i.lx, label %bb.bh, label %.split4044.us, !prof !10, !nosanitize !9

bb.bh:                                            ; preds = %bb.bg
  %i.ly = load float, ptr %i.ln, align 4, !tbaa !25
  %i.lz = add nuw nsw i32 %.08873603.us3978, 1    ; 7 uses
  %i.ma = sitofp i32 %.08873603.us3978 to float
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.mb = fmul float %.sroa.07.0.vec.extract.i, %i.ma ; 7 uses
  %.sroa.05.0.vec.insert.i.us = insertelement <2 x float> poison, float %i.mb, i64 0 ; 4 uses
  %i.mc = fmul float %.sroa.07.4.vec.extract.i, %i.kl ; 4 uses
  %.sroa.05.4.vec.insert.i.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i.us, float %i.mc, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i.us, ptr %1, align 16, !tbaa !25
  store float %12, ptr %.sroa.4590.0..sroa_idx, align 8, !tbaa !25
  %i.md = fmul float %.sroa.07.4.vec.extract.i, %i.ll ; 3 uses
  %.sroa.05.4.vec.insert.i1036.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i.us, float %i.md, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1036.us, ptr %i.he, align 4, !tbaa !25
  store float %13, ptr %.sroa.4577.0..sroa_idx, align 4, !tbaa !25
  br i1 %.not983, label %.split4047.us, label %bb.bi, !prof !20, !nosanitize !9

bb.bi:                                            ; preds = %bb.bh
  %i.me = sitofp i32 %i.lz to float
  %i.mf = fmul float %.sroa.07.0.vec.extract.i, %i.me ; 6 uses
  %.sroa.05.0.vec.insert.i1041.us = insertelement <2 x float> poison, float %i.mf, i64 0 ; 6 uses
  %i.mg = fmul float %.sroa.07.4.vec.extract.i, %i.ky ; 3 uses
  %.sroa.05.4.vec.insert.i1042.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1041.us, float %i.mg, i64 1
  %i.mh = fsub float %i.mb, %i.mb                 ; 4 uses
  %i.mi = fsub float %i.md, %i.mc                 ; 2 uses
  %i.mj = fsub float %i.mf, %i.mb                 ; 4 uses
  %i.mk = fsub float %i.mg, %i.mc                 ; 2 uses
  %i.ml = fmul float %14, %i.mi
  %i.mm = fmul float %i.ia, %i.mk
  %i.mn = fsub float %i.ml, %i.mm                 ; 3 uses
  %i.mo = fmul float %i.ia, %i.mj
  %i.mp = fmul float %14, %i.mh
  %i.mq = fsub float %i.mo, %i.mp                 ; 3 uses
  %i.mr = fmul float %i.mh, %i.mk
  %i.ms = fmul float %i.mj, %i.mi
  %i.mt = fsub float %i.mr, %i.ms                 ; 3 uses
  %i.mu = fmul float %i.mn, %i.mn
  %i.mv = fmul float %i.mq, %i.mq
  %i.mw = fadd float %i.mv, %i.mu
  %i.mx = fmul float %i.mt, %i.mt
  %i.my = fadd float %i.mx, %i.mw                 ; 2 uses
  %i.mz = fcmp ogt float %i.my, f0x057A0000
  br i1 %i.mz, label %bb.bj, label %b3MakePlaneFromPoints.exit.us

bb.bj:                                            ; preds = %bb.bi
  %sqrt.i.us = call float @llvm.sqrt.f32(float %i.my)
  %i.na = fdiv float 1.000000e+00, %sqrt.i.us     ; 3 uses
  %i.nb = fmul float %i.mn, %i.na
  %.sroa.07.0.vec.insert.i.i.us = insertelement <2 x float> poison, float %i.nb, i64 0
  %i.nc = fmul float %i.mq, %i.na
  %.sroa.07.4.vec.insert.i.i.us = insertelement <2 x float> %.sroa.07.0.vec.insert.i.i.us, float %i.nc, i64 1
  %i.nd = fmul float %i.mt, %i.na
  br label %b3MakePlaneFromPoints.exit.us

b3MakePlaneFromPoints.exit.us:                    ; preds = %bb.bj, %bb.bi
  %.sroa.07.0.i.i.us = phi <2 x float> [ %.sroa.07.4.vec.insert.i.i.us, %bb.bj ], [ zeroinitializer, %bb.bi ] ; 6 uses
  %.sroa.5.0.i.i.us = phi float [ %i.nd, %bb.bj ], [ 0.000000e+00, %bb.bi ] ; 6 uses
  %.sroa.03.0.vec.extract.i.i.us = extractelement <2 x float> %.sroa.07.0.i.i.us, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i.i.us = extractelement <2 x float> %.sroa.07.0.i.i.us, i64 1 ; 3 uses
  %i.ne = fmul float %i.mb, %.sroa.03.0.vec.extract.i.i.us
  %i.nf = fmul float %i.mc, %.sroa.03.4.vec.extract.i.i.us
  %i.ng = fadd float %i.ne, %i.nf
  %i.nh = fmul float %12, %.sroa.5.0.i.i.us
  %i.ni = fadd float %i.nh, %i.ng                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.nj = fmul float %.sroa.07.4.vec.extract.i, %i.ly ; 4 uses
  %.sroa.05.4.vec.insert.i1072.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1041.us, float %i.nj, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1072.us, ptr %2, align 16, !tbaa !25
  store float %13, ptr %.sroa.4515.0..sroa_idx, align 8, !tbaa !25
  store <2 x float> %.sroa.05.4.vec.insert.i1042.us, ptr %i.hf, align 4, !tbaa !25
  store float %12, ptr %.sroa.4502.0..sroa_idx, align 4, !tbaa !25
  br i1 %.not984, label %.split4049.us, label %bb.bk, !prof !20, !nosanitize !9

bb.bk:                                            ; preds = %b3MakePlaneFromPoints.exit.us
  %19 = insertelement <2 x float> poison, float %i.md, i64 0
  %20 = insertelement <2 x float> %19, float %i.mf, i64 1 ; 2 uses
  %21 = insertelement <2 x float> %20, float %i.nj, i64 0 ; 2 uses
  %22 = fsub <2 x float> %20, %21                 ; 3 uses
  %23 = insertelement <2 x float> poison, float %i.mg, i64 0
  %24 = insertelement <2 x float> %23, float %i.mb, i64 1
  %25 = fsub <2 x float> %24, %21                 ; 3 uses
  %26 = fmul <2 x float> %17, %25
  %27 = fmul <2 x float> %16, %22
  %28 = fsub <2 x float> %26, %27                 ; 3 uses
  %29 = extractelement <2 x float> %22, i64 0
  %30 = extractelement <2 x float> %22, i64 1     ; 5 uses
  %i.nk = fmul float %30, %29
  %31 = extractelement <2 x float> %25, i64 0
  %32 = extractelement <2 x float> %25, i64 1     ; 3 uses
  %i.nl = fmul float %32, %31
  %i.nm = fsub float %i.nk, %i.nl                 ; 3 uses
  %33 = fmul <2 x float> %28, %28                 ; 2 uses
  %shift11054 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11055 = fadd <2 x float> %shift11054, %33
  %34 = extractelement <2 x float> %foldExtExtBinop11055, i64 0
  %i.nn = fmul float %i.nm, %i.nm
  %i.no = fadd float %i.nn, %34                   ; 2 uses
  %i.np = fcmp ogt float %i.no, f0x057A0000
  br i1 %i.np, label %bb.bl, label %b3MakePlaneFromPoints.exit1108.us

bb.bl:                                            ; preds = %bb.bk
  %sqrt.i1105.us = call float @llvm.sqrt.f32(float %i.no)
  %i.nq = fdiv float 1.000000e+00, %sqrt.i1105.us ; 2 uses
  %.sroa.07.0.vec.insert.i.i1106.us = insertelement <2 x float> poison, float %i.nq, i64 0
  %35 = shufflevector <2 x float> %.sroa.07.0.vec.insert.i.i1106.us, <2 x float> poison, <2 x i32> zeroinitializer
  %36 = fmul <2 x float> %28, %35
  %i.nr = fmul float %i.nm, %i.nq
  br label %b3MakePlaneFromPoints.exit1108.us

b3MakePlaneFromPoints.exit1108.us:                ; preds = %bb.bl, %bb.bk
  %.sroa.07.0.i.i1097.us = phi <2 x float> [ %36, %bb.bl ], [ zeroinitializer, %bb.bk ] ; 6 uses
  %.sroa.5.0.i.i1098.us = phi float [ %i.nr, %bb.bl ], [ 0.000000e+00, %bb.bk ] ; 6 uses
  %.sroa.03.0.vec.extract.i.i1100.us = extractelement <2 x float> %.sroa.07.0.i.i1097.us, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i.i1101.us = extractelement <2 x float> %.sroa.07.0.i.i1097.us, i64 1 ; 2 uses
  %i.ns = fmul float %i.mf, %.sroa.03.0.vec.extract.i.i1100.us
  %i.nt = fmul float %i.nj, %.sroa.03.4.vec.extract.i.i1101.us
  %i.nu = fadd float %i.ns, %i.nt
  %i.nv = fmul float %13, %.sroa.5.0.i.i1098.us
  %i.nw = fadd float %i.nv, %i.nu                 ; 2 uses
  %i.nx = fmul float %i.mf, %.sroa.03.0.vec.extract.i.i.us ; 2 uses
  %i.ny = fmul float %i.nj, %.sroa.03.4.vec.extract.i.i.us
  %i.nz = fadd float %i.nx, %i.ny
  %i.oa = fmul float %13, %.sroa.5.0.i.i.us       ; 2 uses
  %i.ob = fadd float %i.oa, %i.nz
  %i.oc = fsub float %i.ob, %i.ni                 ; 2 uses
  %i.od = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.07.0.i.i1097.us ; 2 uses
  %shift11052 = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11053 = fadd <2 x float> %i.od, %shift11052
  %i.oe = extractelement <2 x float> %foldExtExtBinop11053, i64 0
  %i.of = fmul float %.sroa.5.0.i.i.us, %.sroa.5.0.i.i1098.us
  %i.og = fadd float %i.of, %i.oe
  %i.oh = fcmp ogt float %i.oc, 0.000000e+00
  %i.oi = fcmp ogt float %i.og, 9.962000e-01      ; 2 uses
  %or.cond.us = select i1 %i.oh, i1 true, i1 %i.oi
  %.0888.us = select i1 %or.cond.us, i32 2, i32 0 ; 2 uses
  %i.oj = fcmp olt float %i.oc, 0.000000e+00
  %or.cond998.us = select i1 %i.oj, i1 true, i1 %i.oi
  %i.ok = or disjoint i32 %.0888.us, 32
  %.1891.us = select i1 %or.cond998.us, i32 %i.ok, i32 %.0888.us ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br i1 %i.ie, label %.split4051.us, label %bb.bm, !prof !20, !nosanitize !9

bb.bm:                                            ; preds = %b3MakePlaneFromPoints.exit1108.us
  %i.ol = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.id, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.om = extractvalue { i32, i1 } %i.ol, 0, !nosanitize !9 ; 2 uses
  %i.on = extractvalue { i32, i1 } %i.ol, 1, !nosanitize !9
  br i1 %i.on, label %.split4054.us, label %bb.bn, !prof !20, !nosanitize !9

bb.bn:                                            ; preds = %bb.bm
  br i1 %.not6999, label %bb.bz, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.oo = sext i32 %i.om to i64                   ; 2 uses
  %i.op = add i64 %i.bs, %i.oo, !nosanitize !9    ; 3 uses
  %i.oq = icmp ne i64 %i.op, 0
  %i.or = icmp uge i64 %i.op, %i.bs, !nosanitize !9
  %i.os = icmp slt i32 %i.om, 0
  %i.ot = xor i1 %i.os, %i.or
  %i.ou = and i1 %i.oq, %i.ot, !nosanitize !9
  br i1 %i.ou, label %bb.bp, label %.split4058.us, !prof !10, !nosanitize !9

bb.bp:                                            ; preds = %bb.bo
  %i.ov = getelementptr inbounds i8, ptr %i.bu, i64 %i.oo
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !41
  %.not986.us = icmp eq i8 %i.ow, -1
  br i1 %.not986.us, label %bb.bz, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.ih, label %.split4064.us, label %bb.br, !prof !20, !nosanitize !9

bb.br:                                            ; preds = %bb.bq
  %i.ox = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ig, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.oy = extractvalue { i32, i1 } %i.ox, 1, !nosanitize !9
  br i1 %i.oy, label %.split4067.us, label %bb.bs, !prof !20, !nosanitize !9

bb.bs:                                            ; preds = %bb.br
  %i.oz = extractvalue { i32, i1 } %i.ox, 0, !nosanitize !9 ; 2 uses
  %i.pa = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.oz, i32 1), !nosanitize !9 ; 2 uses
  %i.pb = extractvalue { i32, i1 } %i.pa, 1, !nosanitize !9
  br i1 %i.pb, label %.split4071.us, label %bb.bt, !prof !20, !nosanitize !9

bb.bt:                                            ; preds = %bb.bs
  %i.pc = extractvalue { i32, i1 } %i.pa, 0, !nosanitize !9 ; 2 uses
  %i.pd = sext i32 %i.pc to i64                   ; 2 uses
  %i.pe = getelementptr inbounds [4 x i8], ptr %.fr7006, i64 %i.pd ; 2 uses
  %i.pf = shl nsw i64 %i.pd, 2
  %i.pg = add i64 %i.pf, %i.hc, !nosanitize !9    ; 3 uses
  %i.ph = icmp ne i64 %i.pg, 0
  %i.pi = icmp uge i64 %i.pg, %i.hc, !nosanitize !9
  %i.pj = icmp slt i32 %i.pc, 0
  %i.pk = xor i1 %i.pj, %i.pi
  %i.pl = and i1 %i.ph, %i.pk, !nosanitize !9
  br i1 %i.pl, label %bb.bu, label %.split4087.us, !prof !10, !nosanitize !9

bb.bu:                                            ; preds = %bb.bt
  %i.pm = ptrtoint ptr %i.pe to i64, !nosanitize !9 ; 2 uses
  %i.pn = and i64 %i.pm, 3, !nosanitize !9
  %i.po = icmp eq i64 %i.pn, 0, !nosanitize !9
  br i1 %i.po, label %bb.bv, label %.split4091.us, !prof !10, !nosanitize !9

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.kb, label %.split4094.us, label %bb.bw, !prof !20, !nosanitize !9

bb.bw:                                            ; preds = %bb.bv
  %i.pp = load float, ptr %i.pe, align 4, !tbaa !25
  %i.pq = load float, ptr %i.jy, align 4, !tbaa !25
  %i.pr = load float, ptr %i.kn, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ps = fmul float %.sroa.07.4.vec.extract.i, %i.pr ; 3 uses
  %.sroa.05.4.vec.insert.i1142.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1041.us, float %i.ps, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1142.us, ptr %3, align 16, !tbaa !25
  store float %12, ptr %.sroa.4407.0..sroa_idx, align 8, !tbaa !25
  %i.pt = fmul float %.sroa.07.4.vec.extract.i, %i.pp ; 3 uses
  %.sroa.05.4.vec.insert.i1150.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1041.us, float %i.pt, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1150.us, ptr %i.hg, align 4, !tbaa !25
  store float %i.ij, ptr %.sroa.4394.0..sroa_idx, align 4, !tbaa !25
  br i1 %.not987, label %.split4108.us, label %bb.bx, !prof !20, !nosanitize !9

bb.bx:                                            ; preds = %bb.bw
  %i.pu = fmul float %.sroa.07.4.vec.extract.i, %i.pq
  %i.pv = fsub float %i.pt, %i.ps                 ; 2 uses
  %i.pw = fsub float %i.pu, %i.ps                 ; 2 uses
  %i.px = fmul float %14, %i.pv
  %i.py = fmul float %i.ik, %i.pw
  %i.pz = fsub float %i.px, %i.py                 ; 3 uses
  %i.qa = fmul float %i.ik, %32
  %i.qb = fmul float %14, %30
  %i.qc = fsub float %i.qa, %i.qb                 ; 3 uses
  %i.qd = fmul float %30, %i.pw
  %i.qe = fmul float %32, %i.pv
  %i.qf = fsub float %i.qd, %i.qe                 ; 3 uses
  %i.qg = fmul float %i.pz, %i.pz
  %i.qh = fmul float %i.qc, %i.qc
  %i.qi = fadd float %i.qh, %i.qg
  %i.qj = fmul float %i.qf, %i.qf
  %i.qk = fadd float %i.qj, %i.qi                 ; 2 uses
  %i.ql = fcmp ogt float %i.qk, f0x057A0000
  br i1 %i.ql, label %bb.by, label %b3Normalize.exit1030.us

bb.by:                                            ; preds = %bb.bx
  %sqrt.us = call float @llvm.sqrt.f32(float %i.qk)
  %i.qm = fdiv float 1.000000e+00, %sqrt.us       ; 3 uses
  %i.qn = fmul float %i.pz, %i.qm
  %.sroa.07.0.vec.insert.i1028.us = insertelement <2 x float> poison, float %i.qn, i64 0
  %i.qo = fmul float %i.qc, %i.qm
  %.sroa.07.4.vec.insert.i1029.us = insertelement <2 x float> %.sroa.07.0.vec.insert.i1028.us, float %i.qo, i64 1
  %i.qp = fmul float %i.qf, %i.qm
  br label %b3Normalize.exit1030.us

b3Normalize.exit1030.us:                          ; preds = %bb.by, %bb.bx
  %.sroa.07.0.i1024.us = phi <2 x float> [ %.sroa.07.4.vec.insert.i1029.us, %bb.by ], [ zeroinitializer, %bb.bx ]
  %.sroa.5.0.i1025.us = phi float [ %i.qp, %bb.by ], [ 0.000000e+00, %bb.bx ]
  %i.qq = fmul float %.sroa.03.4.vec.extract.i.i.us, %i.pt
  %i.qr = fadd float %i.nx, %i.qq
  %i.qs = fmul float %i.ij, %.sroa.5.0.i.i.us
  %i.qt = fadd float %i.qs, %i.qr
  %i.qu = fsub float %i.qt, %i.ni                 ; 2 uses
  %i.qv = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.07.0.i1024.us ; 2 uses
  %shift11055 = shufflevector <2 x float> %i.qv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11056 = fadd <2 x float> %i.qv, %shift11055
  %i.qw = extractelement <2 x float> %foldExtExtBinop11056, i64 0
  %i.qx = fmul float %.sroa.5.0.i.i.us, %.sroa.5.0.i1025.us
  %i.qy = fadd float %i.qx, %i.qw
  %i.qz = fcmp ogt float %i.qu, 0.000000e+00
  %i.ra = fcmp ogt float %i.qy, 9.962000e-01      ; 2 uses
  %or.cond999.us = select i1 %i.qz, i1 true, i1 %i.ra
  %i.rb = or disjoint i32 %.1891.us, 4
  %.2.us = select i1 %or.cond999.us, i32 %i.rb, i32 %.1891.us ; 2 uses
  %i.rc = fcmp olt float %i.qu, 0.000000e+00
  %or.cond1000.us = select i1 %i.rc, i1 true, i1 %i.ra
  %i.rd = or disjoint i32 %.2.us, 64
  %.3.us = select i1 %or.cond1000.us, i32 %i.rd, i32 %.2.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.bz

bb.bz:                                            ; preds = %b3Normalize.exit1030.us, %bb.bp, %bb.bn
  %.4.us = phi i32 [ %.3.us, %b3Normalize.exit1030.us ], [ %.1891.us, %bb.bp ], [ %.1891.us, %bb.bn ] ; 3 uses
  br i1 %i.in, label %.split4110.us, label %bb.ca, !prof !20, !nosanitize !9

bb.ca:                                            ; preds = %bb.bz
  %i.re = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.im, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.rf = extractvalue { i32, i1 } %i.re, 0, !nosanitize !9 ; 2 uses
  %i.rg = extractvalue { i32, i1 } %i.re, 1, !nosanitize !9
  br i1 %i.rg, label %.split4113.us, label %bb.cb, !prof !20, !nosanitize !9

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.io, label %bb.cc, label %bb.cl

bb.cc:                                            ; preds = %bb.cb
  %i.rh = sext i32 %i.rf to i64                   ; 2 uses
  %i.ri = add i64 %i.bs, %i.rh, !nosanitize !9    ; 3 uses
  %i.rj = icmp ne i64 %i.ri, 0
  %i.rk = icmp uge i64 %i.ri, %i.bs, !nosanitize !9
  %i.rl = icmp slt i32 %i.rf, 0
  %i.rm = xor i1 %i.rl, %i.rk
  %i.rn = and i1 %i.rj, %i.rm, !nosanitize !9
  br i1 %i.rn, label %bb.cd, label %.split4117.us, !prof !10, !nosanitize !9

bb.cd:                                            ; preds = %bb.cc
  %i.ro = getelementptr inbounds i8, ptr %i.bu, i64 %i.rh
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !41
  %.not989.us = icmp eq i8 %i.rp, -1
  br i1 %.not989.us, label %bb.cl, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.is, label %.split4123.us, label %bb.cf, !prof !20, !nosanitize !9

bb.cf:                                            ; preds = %bb.ce
  %i.rq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ir, i32 %.08873603.us3978), !nosanitize !9 ; 2 uses
  %i.rr = extractvalue { i32, i1 } %i.rq, 1, !nosanitize !9
  br i1 %i.rr, label %.split4126.us, label %bb.cg, !prof !20, !nosanitize !9

bb.cg:                                            ; preds = %bb.cf
  %i.rs = extractvalue { i32, i1 } %i.rq, 0, !nosanitize !9 ; 2 uses
  %i.rt = load float, ptr %i.la, align 4, !tbaa !25
  %i.ru = load float, ptr %i.ln, align 4, !tbaa !25
  %i.rv = sext i32 %i.rs to i64                   ; 2 uses
  %i.rw = getelementptr inbounds [4 x i8], ptr %.fr7006, i64 %i.rv ; 2 uses
  %i.rx = shl nsw i64 %i.rv, 2
  %i.ry = add i64 %i.rx, %i.hc, !nosanitize !9    ; 3 uses
  %i.rz = icmp ne i64 %i.ry, 0
  %i.sa = icmp uge i64 %i.ry, %i.hc, !nosanitize !9
  %i.sb = icmp slt i32 %i.rs, 0
  %i.sc = xor i1 %i.sb, %i.sa
  %i.sd = and i1 %i.rz, %i.sc, !nosanitize !9
  br i1 %i.sd, label %bb.ch, label %.split4130.us, !prof !10, !nosanitize !9

bb.ch:                                            ; preds = %bb.cg
  %i.se = ptrtoint ptr %i.rw to i64, !nosanitize !9 ; 2 uses
  %i.sf = and i64 %i.se, 3, !nosanitize !9
  %i.sg = icmp eq i64 %i.sf, 0, !nosanitize !9
  br i1 %i.sg, label %bb.ci, label %.split4134.us, !prof !10, !nosanitize !9

bb.ci:                                            ; preds = %bb.ch
  %i.sh = load float, ptr %i.rw, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.si = fmul float %.sroa.07.4.vec.extract.i, %i.rt ; 3 uses
  %.sroa.05.4.vec.insert.i1195.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i.us, float %i.si, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1195.us, ptr %4, align 16, !tbaa !25
  store float %13, ptr %.sroa.4298.0..sroa_idx, align 8, !tbaa !25
  %i.sj = fmul float %.sroa.07.4.vec.extract.i, %i.sh ; 3 uses
  %.sroa.05.4.vec.insert.i1203.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i.us, float %i.sj, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1203.us, ptr %i.hh, align 4, !tbaa !25
  store float %i.iu, ptr %.sroa.4285.0..sroa_idx, align 4, !tbaa !25
  br i1 %.not990, label %.split4137.us, label %bb.cj, !prof !20, !nosanitize !9

bb.cj:                                            ; preds = %bb.ci
  %i.sk = fmul float %.sroa.07.4.vec.extract.i, %i.ru
  %i.sl = fsub float %i.sj, %i.si                 ; 2 uses
  %i.sm = fsub float %i.sk, %i.si                 ; 2 uses
  %i.sn = fmul float %18, %i.sl
  %i.so = fmul float %i.iv, %i.sm
  %i.sp = fsub float %i.sn, %i.so                 ; 3 uses
  %i.sq = fmul float %i.iv, %i.mj
  %i.sr = fmul float %18, %i.mh
  %i.ss = fsub float %i.sq, %i.sr                 ; 3 uses
  %i.st = fmul float %i.mh, %i.sm
  %i.su = fmul float %i.mj, %i.sl
  %i.sv = fsub float %i.st, %i.su                 ; 3 uses
  %i.sw = fmul float %i.sp, %i.sp
  %i.sx = fmul float %i.ss, %i.ss
  %i.sy = fadd float %i.sx, %i.sw
  %i.sz = fmul float %i.sv, %i.sv
  %i.ta = fadd float %i.sz, %i.sy                 ; 2 uses
  %i.tb = fcmp ogt float %i.ta, f0x057A0000
  br i1 %i.tb, label %bb.ck, label %b3Normalize.exit1022.us

bb.ck:                                            ; preds = %bb.cj
  %sqrt1390.us = call float @llvm.sqrt.f32(float %i.ta)
  %i.tc = fdiv float 1.000000e+00, %sqrt1390.us   ; 3 uses
  %i.td = fmul float %i.sp, %i.tc
  %.sroa.07.0.vec.insert.i1020.us = insertelement <2 x float> poison, float %i.td, i64 0
  %i.te = fmul float %i.ss, %i.tc
  %.sroa.07.4.vec.insert.i1021.us = insertelement <2 x float> %.sroa.07.0.vec.insert.i1020.us, float %i.te, i64 1
  %i.tf = fmul float %i.sv, %i.tc
  br label %b3Normalize.exit1022.us

b3Normalize.exit1022.us:                          ; preds = %bb.ck, %bb.cj
  %.sroa.07.0.i1016.us = phi <2 x float> [ %.sroa.07.4.vec.insert.i1021.us, %bb.ck ], [ zeroinitializer, %bb.cj ]
  %.sroa.5.0.i1017.us = phi float [ %i.tf, %bb.ck ], [ 0.000000e+00, %bb.cj ]
  %i.tg = fmul float %i.mb, %.sroa.03.0.vec.extract.i.i1100.us
  %i.th = fmul float %.sroa.03.4.vec.extract.i.i1101.us, %i.sj
  %i.ti = fadd float %i.tg, %i.th
  %i.tj = fmul float %i.iu, %.sroa.5.0.i.i1098.us
  %i.tk = fadd float %i.tj, %i.ti
  %i.tl = fsub float %i.tk, %i.nw                 ; 2 uses
  %i.tm = fmul <2 x float> %.sroa.07.0.i.i1097.us, %.sroa.07.0.i1016.us ; 2 uses
  %shift11058 = shufflevector <2 x float> %i.tm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11059 = fadd <2 x float> %i.tm, %shift11058
  %i.tn = extractelement <2 x float> %foldExtExtBinop11059, i64 0
  %i.to = fmul float %.sroa.5.0.i.i1098.us, %.sroa.5.0.i1017.us
  %i.tp = fadd float %i.to, %i.tn
  %i.tq = fcmp ogt float %i.tl, 0.000000e+00
  %i.tr = fcmp ogt float %i.tp, 9.962000e-01      ; 2 uses
  %or.cond1001.us = select i1 %i.tq, i1 true, i1 %i.tr
  %i.ts = or disjoint i32 %.1891.us, 4
  %.2892.us = select i1 %or.cond1001.us, i32 %i.ts, i32 %.1891.us ; 2 uses
  %i.tt = fcmp olt float %i.tl, 0.000000e+00
  %or.cond1002.us = select i1 %i.tt, i1 true, i1 %i.tr
  %i.tu = or disjoint i32 %.2892.us, 64
  %.3893.us = select i1 %or.cond1002.us, i32 %i.tu, i32 %.2892.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.cl

bb.cl:                                            ; preds = %b3Normalize.exit1022.us, %bb.cd, %bb.cb
  %.4894.us = phi i32 [ %.3893.us, %b3Normalize.exit1022.us ], [ %.1891.us, %bb.cd ], [ %.1891.us, %bb.cb ] ; 3 uses
  %i.tv = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.iz, i32 -1) ; 2 uses
  %i.tw = extractvalue { i32, i1 } %i.tv, 0, !nosanitize !9 ; 2 uses
  %i.tx = extractvalue { i32, i1 } %i.tv, 1, !nosanitize !9
  br i1 %i.tx, label %.split4139.us, label %bb.cm, !prof !20, !nosanitize !9

bb.cm:                                            ; preds = %bb.cl
  %i.ty = add nsw i32 %.08873603.us3978, -1       ; 5 uses
  %.not7000 = icmp eq i32 %.08873603.us3978, 0
  br i1 %.not7000, label %bb.dc, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.tz = sext i32 %i.tw to i64                   ; 2 uses
  %i.ua = add i64 %i.bs, %i.tz, !nosanitize !9    ; 3 uses
  %i.ub = icmp ne i64 %i.ua, 0
  %i.uc = icmp uge i64 %i.ua, %i.bs, !nosanitize !9
  %i.ud = icmp slt i32 %i.tw, 0
  %i.ue = xor i1 %i.ud, %i.uc
  %i.uf = and i1 %i.ub, %i.ue, !nosanitize !9
  br i1 %i.uf, label %bb.co, label %.split4142.us, !prof !10, !nosanitize !9

bb.co:                                            ; preds = %bb.cn
  %i.ug = getelementptr inbounds i8, ptr %i.bu, i64 %i.tz
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !41
  %.not992.us = icmp eq i8 %i.uh, -1
  br i1 %.not992.us, label %bb.dc, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ui = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.hs, i32 %i.ty), !nosanitize !9 ; 2 uses
  %i.uj = extractvalue { i32, i1 } %i.ui, 1, !nosanitize !9
  br i1 %i.uj, label %.split4148.us, label %bb.cq, !prof !20, !nosanitize !9

bb.cq:                                            ; preds = %bb.cp
  %i.uk = extractvalue { i32, i1 } %i.ui, 0, !nosanitize !9 ; 2 uses
  %i.ul = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.uk, i32 1), !nosanitize !9 ; 2 uses
  %i.um = extractvalue { i32, i1 } %i.ul, 0, !nosanitize !9 ; 2 uses
  %i.un = extractvalue { i32, i1 } %i.ul, 1, !nosanitize !9
  br i1 %i.un, label %.split4152.us, label %bb.cr, !prof !20, !nosanitize !9

bb.cr:                                            ; preds = %bb.cq
  %i.uo = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.hw, i32 %i.ty), !nosanitize !9 ; 2 uses
  %i.up = extractvalue { i32, i1 } %i.uo, 0, !nosanitize !9 ; 4 uses
  %i.uq = extractvalue { i32, i1 } %i.uo, 1, !nosanitize !9
  br i1 %i.uq, label %.split4155.us, label %bb.cs, !prof !20, !nosanitize !9

bb.cs:                                            ; preds = %bb.cr
  %i.ur = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.up, i32 1), !nosanitize !9 ; 2 uses
  %i.us = extractvalue { i32, i1 } %i.ur, 0, !nosanitize !9 ; 2 uses
  %i.ut = extractvalue { i32, i1 } %i.ur, 1, !nosanitize !9
  br i1 %i.ut, label %.split4159.us, label %bb.ct, !prof !20, !nosanitize !9

bb.ct:                                            ; preds = %bb.cs
  %i.uu = sext i32 %i.um to i64                   ; 2 uses
  %i.uv = getelementptr inbounds [4 x i8], ptr %.fr7006, i64 %i.uu ; 2 uses
  %i.uw = shl nsw i64 %i.uu, 2
  %i.ux = add i64 %i.uw, %i.hc, !nosanitize !9    ; 3 uses
  %i.uy = icmp ne i64 %i.ux, 0
  %i.uz = icmp uge i64 %i.ux, %i.hc, !nosanitize !9
  %i.va = icmp slt i32 %i.um, 0
  %i.vb = xor i1 %i.va, %i.uz
  %i.vc = and i1 %i.uy, %i.vb, !nosanitize !9
  br i1 %i.vc, label %bb.cu, label %.split4162.us, !prof !10, !nosanitize !9

bb.cu:                                            ; preds = %bb.ct
  %i.vd = ptrtoint ptr %i.uv to i64, !nosanitize !9 ; 2 uses
  %i.ve = and i64 %i.vd, 3, !nosanitize !9
  %i.vf = icmp eq i64 %i.ve, 0, !nosanitize !9
  br i1 %i.vf, label %bb.cv, label %.split4166.us, !prof !10, !nosanitize !9

bb.cv:                                            ; preds = %bb.cu
  %i.vg = load float, ptr %i.uv, align 4, !tbaa !25
  %i.vh = sext i32 %i.up to i64                   ; 2 uses
  %i.vi = getelementptr inbounds [4 x i8], ptr %.fr7006, i64 %i.vh ; 2 uses
  %i.vj = shl nsw i64 %i.vh, 2
  %i.vk = add i64 %i.vj, %i.hc, !nosanitize !9    ; 3 uses
  %i.vl = icmp ne i64 %i.vk, 0
  %i.vm = icmp uge i64 %i.vk, %i.hc, !nosanitize !9
  %i.vn = icmp slt i32 %i.up, 0
  %i.vo = xor i1 %i.vn, %i.vm
  %i.vp = and i1 %i.vl, %i.vo, !nosanitize !9
  br i1 %i.vp, label %bb.cw, label %.split4169.us, !prof !10, !nosanitize !9

bb.cw:                                            ; preds = %bb.cv
  %i.vq = ptrtoint ptr %i.vi to i64, !nosanitize !9 ; 2 uses
  %i.vr = and i64 %i.vq, 3, !nosanitize !9
  %i.vs = icmp eq i64 %i.vr, 0, !nosanitize !9
  br i1 %i.vs, label %bb.cx, label %.split4173.us, !prof !10, !nosanitize !9

bb.cx:                                            ; preds = %bb.cw
  %i.vt = load float, ptr %i.vi, align 4, !tbaa !25
  %i.vu = sext i32 %i.us to i64                   ; 2 uses
  %i.vv = getelementptr inbounds [4 x i8], ptr %.fr7006, i64 %i.vu ; 2 uses
  %i.vw = shl nsw i64 %i.vu, 2
  %i.vx = add i64 %i.vw, %i.hc, !nosanitize !9    ; 3 uses
  %i.vy = icmp ne i64 %i.vx, 0
  %i.vz = icmp uge i64 %i.vx, %i.hc, !nosanitize !9
  %i.wa = icmp slt i32 %i.us, 0
  %i.wb = xor i1 %i.wa, %i.vz
  %i.wc = and i1 %i.vy, %i.wb, !nosanitize !9
  br i1 %i.wc, label %bb.cy, label %.split4176.us, !prof !10, !nosanitize !9

bb.cy:                                            ; preds = %bb.cx
  %i.wd = ptrtoint ptr %i.vv to i64, !nosanitize !9 ; 2 uses
  %i.we = and i64 %i.wd, 3, !nosanitize !9
  %i.wf = icmp eq i64 %i.we, 0, !nosanitize !9
  br i1 %i.wf, label %bb.cz, label %.split4180.us, !prof !10, !nosanitize !9

bb.cz:                                            ; preds = %bb.cy
  %i.wg = load float, ptr %i.vv, align 4, !tbaa !25
  %i.wh = uitofp nneg i32 %.08873603.us3978 to float
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.wi = insertelement <2 x float> poison, float %i.wh, i64 0
  %i.wj = insertelement <2 x float> %i.wi, float %i.wg, i64 1
  %i.wk = fmul <2 x float> %.sroa.0697.0.copyload, %i.wj ; 5 uses
  store <2 x float> %i.wk, ptr %5, align 16, !tbaa !25
  store float %13, ptr %.sroa.4188.0..sroa_idx, align 8, !tbaa !25
  %37 = fmul float %.sroa.07.4.vec.extract.i, %i.vg ; 2 uses
  %.sroa.05.4.vec.insert.i1261.us = insertelement <2 x float> %i.wk, float %37, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1261.us, ptr %i.hi, align 4, !tbaa !25
  store float %12, ptr %.sroa.4175.0..sroa_idx, align 4, !tbaa !25
  br i1 %.not993, label %.split4183.us, label %bb.da, !prof !20, !nosanitize !9

bb.da:                                            ; preds = %bb.cz
  %i.wl = uitofp nneg i32 %i.ty to float
  %i.wm = insertelement <2 x float> poison, float %i.wl, i64 0
  %i.wn = insertelement <2 x float> %i.wm, float %i.vt, i64 1
  %i.wo = fmul <2 x float> %.sroa.0697.0.copyload, %i.wn ; 3 uses
  %38 = insertelement <2 x float> %i.wo, float %37, i64 1
  %39 = fsub <2 x float> %38, %i.wk               ; 3 uses
  %40 = shufflevector <2 x float> %i.wk, <2 x float> %i.wo, <2 x i32> <i32 0, i32 3>
  %i.wp = fsub <2 x float> %40, %i.wk             ; 3 uses
  %41 = fmul <2 x float> %16, %39
  %42 = fmul <2 x float> %17, %i.wp
  %43 = fsub <2 x float> %41, %42                 ; 3 uses
  %shift11066 = shufflevector <2 x float> %i.wp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wq = fmul <2 x float> %i.wp, %shift11066
  %shift11069 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wr = fmul <2 x float> %39, %shift11069
  %i.ws = fsub <2 x float> %i.wq, %i.wr           ; 3 uses
  %44 = fmul <2 x float> %43, %43                 ; 2 uses
  %shift11074 = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11075 = fadd <2 x float> %44, %shift11074
  %foldExtExtBinop11077 = fmul <2 x float> %i.ws, %i.ws
  %foldExtExtBinop11079 = fadd <2 x float> %foldExtExtBinop11077, %foldExtExtBinop11075
  %45 = extractelement <2 x float> %foldExtExtBinop11079, i64 0 ; 2 uses
  %i.wt = fcmp ogt float %45, f0x057A0000
  br i1 %i.wt, label %bb.db, label %b3Normalize.exit1014.us

bb.db:                                            ; preds = %bb.da
  %46 = extractelement <2 x float> %i.ws, i64 0
  %sqrt1391.us = call float @llvm.sqrt.f32(float %45)
  %47 = fdiv float 1.000000e+00, %sqrt1391.us     ; 2 uses
  %.sroa.07.0.vec.insert.i1012.us = insertelement <2 x float> poison, float %47, i64 0
  %48 = shufflevector <2 x float> %43, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %49 = shufflevector <2 x float> %.sroa.07.0.vec.insert.i1012.us, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = fmul <2 x float> %48, %49
  %i.wu = fmul float %46, %47
  br label %b3Normalize.exit1014.us

b3Normalize.exit1014.us:                          ; preds = %bb.db, %bb.da
  %.sroa.07.0.i1008.us = phi <2 x float> [ %50, %bb.db ], [ zeroinitializer, %bb.da ]
  %.sroa.5.0.i1009.us = phi float [ %i.wu, %bb.db ], [ 0.000000e+00, %bb.da ]
  %i.wv = fmul <2 x float> %i.wo, %.sroa.07.0.i.i.us ; 2 uses
  %shift11061 = shufflevector <2 x float> %i.wv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11062 = fadd <2 x float> %i.wv, %shift11061
  %i.ww = extractelement <2 x float> %foldExtExtBinop11062, i64 0
  %i.wx = fadd float %i.oa, %i.ww
  %i.wy = fsub float %i.wx, %i.ni                 ; 2 uses
  %i.wz = fmul <2 x float> %.sroa.07.0.i.i.us, %.sroa.07.0.i1008.us ; 2 uses
  %shift11064 = shufflevector <2 x float> %i.wz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11065 = fadd <2 x float> %i.wz, %shift11064
  %i.xa = extractelement <2 x float> %foldExtExtBinop11065, i64 0
  %i.xb = fmul float %.sroa.5.0.i.i.us, %.sroa.5.0.i1009.us
  %i.xc = fadd float %i.xb, %i.xa
  %i.xd = fcmp ogt float %i.wy, 0.000000e+00
  %i.xe = fcmp ogt float %i.xc, 9.962000e-01      ; 2 uses
  %or.cond1003.us = select i1 %i.xd, i1 true, i1 %i.xe
  %i.xf = zext i1 %or.cond1003.us to i32
  %.5.us = or i32 %.4.us, %i.xf                   ; 2 uses
  %i.xg = fcmp olt float %i.wy, 0.000000e+00
  %or.cond1004.us = select i1 %i.xg, i1 true, i1 %i.xe
  %i.xh = or i32 %.5.us, 16
  %.6.us = select i1 %or.cond1004.us, i32 %i.xh, i32 %.5.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.dc

bb.dc:                                            ; preds = %b3Normalize.exit1014.us, %bb.co, %bb.cm
  %.7.us = phi i32 [ %.6.us, %b3Normalize.exit1014.us ], [ %.4.us, %bb.co ], [ %.4.us, %bb.cm ]
  %i.xi = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.iz, i32 1), !nosanitize !9 ; 2 uses
  %i.xj = extractvalue { i32, i1 } %i.xi, 0, !nosanitize !9 ; 2 uses
  %i.xk = extractvalue { i32, i1 } %i.xi, 1, !nosanitize !9
  br i1 %i.xk, label %.split4185.us, label %bb.dd, !prof !20, !nosanitize !9

bb.dd:                                            ; preds = %bb.dc
  %i.xl = icmp slt i32 %i.lz, %i.p
  br i1 %i.xl, label %bb.de, label %bb.ds

bb.de:                                            ; preds = %bb.dd
  %i.xm = sext i32 %i.xj to i64                   ; 2 uses
  %i.xn = add i64 %i.bs, %i.xm, !nosanitize !9    ; 3 uses
  %i.xo = icmp ne i64 %i.xn, 0
  %i.xp = icmp uge i64 %i.xn, %i.bs, !nosanitize !9
  %i.xq = icmp slt i32 %i.xj, 0
  %i.xr = xor i1 %i.xq, %i.xp
  %i.xs = and i1 %i.xo, %i.xr, !nosanitize !9
  br i1 %i.xs, label %bb.df, label %.split4188.us, !prof !10, !nosanitize !9

bb.df:                                            ; preds = %bb.de
  %i.xt = getelementptr inbounds i8, ptr %i.bu, i64 %i.xm
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !41
  %.not995.us = icmp eq i8 %i.xu, -1
  br i1 %.not995.us, label %bb.ds, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.xv = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.hs, i32 %i.lz), !nosanitize !9 ; 2 uses
  %i.xw = extractvalue { i32, i1 } %i.xv, 0, !nosanitize !9 ; 4 uses
  %i.xx = extractvalue { i32, i1 } %i.xv, 1, !nosanitize !9
  br i1 %i.xx, label %.split4194.us, label %bb.dh, !prof !20, !nosanitize !9

bb.dh:                                            ; preds = %bb.dg
  %i.xy = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.xw, i32 1), !nosanitize !9 ; 2 uses
  %i.xz = extractvalue { i32, i1 } %i.xy, 0, !nosanitize !9 ; 2 uses
  %i.ya = extractvalue { i32, i1 } %i.xy, 1, !nosanitize !9
  br i1 %i.ya, label %.split4198.us, label %bb.di, !prof !20, !nosanitize !9

bb.di:                                            ; preds = %bb.dh
  %i.yb = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.hw, i32 %i.lz), !nosanitize !9 ; 2 uses
  %i.yc = extractvalue { i32, i1 } %i.yb, 0, !nosanitize !9 ; 2 uses
  %i.yd = extractvalue { i32, i1 } %i.yb, 1, !nosanitize !9
  br i1 %i.yd, label %.split4201.us, label %bb.dj, !prof !20, !nosanitize !9

bb.dj:                                            ; preds = %bb.di
  %i.ye = sext i32 %i.xw to i64                   ; 2 uses
  %i.yf = getelementptr inbounds [4 x i8], ptr %.fr7006, i64 %i.ye ; 2 uses
  %i.yg = shl nsw i64 %i.ye, 2
  %i.yh = add i64 %i.yg, %i.hc, !nosanitize !9    ; 3 uses
  %i.yi = icmp ne i64 %i.yh, 0
  %i.yj = icmp uge i64 %i.yh, %i.hc, !nosanitize !9
  %i.yk = icmp slt i32 %i.xw, 0
  %i.yl = xor i1 %i.yk, %i.yj
  %i.ym = and i1 %i.yi, %i.yl, !nosanitize !9
  br i1 %i.ym, label %bb.dk, label %.split4205.us, !prof !10, !nosanitize !9

bb.dk:                                            ; preds = %bb.dj
  %i.yn = ptrtoint ptr %i.yf to i64, !nosanitize !9 ; 2 uses
  %i.yo = and i64 %i.yn, 3, !nosanitize !9
  %i.yp = icmp eq i64 %i.yo, 0, !nosanitize !9
  br i1 %i.yp, label %bb.dl, label %.split4209.us, !prof !10, !nosanitize !9

bb.dl:                                            ; preds = %bb.dk
  %i.yq = load float, ptr %i.yf, align 4, !tbaa !25
  %i.yr = sext i32 %i.xz to i64                   ; 2 uses
  %i.ys = getelementptr inbounds [4 x i8], ptr %.fr7006, i64 %i.yr ; 2 uses
  %i.yt = shl nsw i64 %i.yr, 2
  %i.yu = add i64 %i.yt, %i.hc, !nosanitize !9    ; 3 uses
  %i.yv = icmp ne i64 %i.yu, 0
  %i.yw = icmp uge i64 %i.yu, %i.hc, !nosanitize !9
  %i.yx = icmp slt i32 %i.xz, 0
  %i.yy = xor i1 %i.yx, %i.yw
  %i.yz = and i1 %i.yv, %i.yy, !nosanitize !9
  br i1 %i.yz, label %bb.dm, label %.split4212.us, !prof !10, !nosanitize !9

bb.dm:                                            ; preds = %bb.dl
  %i.za = ptrtoint ptr %i.ys to i64, !nosanitize !9 ; 2 uses
  %i.zb = and i64 %i.za, 3, !nosanitize !9
  %i.zc = icmp eq i64 %i.zb, 0, !nosanitize !9
  br i1 %i.zc, label %bb.dn, label %.split4216.us, !prof !10, !nosanitize !9

bb.dn:                                            ; preds = %bb.dm
  %i.zd = load float, ptr %i.ys, align 4, !tbaa !25
  %i.ze = sext i32 %i.yc to i64                   ; 2 uses
  %i.zf = getelementptr inbounds [4 x i8], ptr %.fr7006, i64 %i.ze ; 2 uses
  %i.zg = shl nsw i64 %i.ze, 2
  %i.zh = add i64 %i.zg, %i.hc, !nosanitize !9    ; 3 uses
  %i.zi = icmp ne i64 %i.zh, 0
  %i.zj = icmp uge i64 %i.zh, %i.hc, !nosanitize !9
  %i.zk = icmp slt i32 %i.yc, 0
  %i.zl = xor i1 %i.zk, %i.zj
  %i.zm = and i1 %i.zi, %i.zl, !nosanitize !9
  br i1 %i.zm, label %bb.do, label %.split4219.us, !prof !10, !nosanitize !9

bb.do:                                            ; preds = %bb.dn
  %i.zn = ptrtoint ptr %i.zf to i64, !nosanitize !9 ; 2 uses
  %i.zo = and i64 %i.zn, 3, !nosanitize !9
  %i.zp = icmp eq i64 %i.zo, 0, !nosanitize !9
  br i1 %i.zp, label %bb.dp, label %.split4223.us, !prof !10, !nosanitize !9

bb.dp:                                            ; preds = %bb.do
  %i.zq = load float, ptr %i.zf, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.zr = fmul float %.sroa.07.4.vec.extract.i, %i.yq ; 3 uses
  %.sroa.05.4.vec.insert.i1311.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1041.us, float %i.zr, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1311.us, ptr %6, align 16, !tbaa !25
  store float %12, ptr %.sroa.480.0..sroa_idx, align 8, !tbaa !25
  %i.zs = fmul float %.sroa.07.4.vec.extract.i, %i.zq ; 2 uses
  %.sroa.05.4.vec.insert.i1319.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1041.us, float %i.zs, i64 1
  store <2 x float> %.sroa.05.4.vec.insert.i1319.us, ptr %i.hj, align 4, !tbaa !25
  store float %13, ptr %.sroa.467.0..sroa_idx, align 4, !tbaa !25
  br i1 %.not996, label %.split4226.us, label %bb.dq, !prof !20, !nosanitize !9

bb.dq:                                            ; preds = %bb.dp
  %i.zt = add nuw nsw i32 %.08873603.us3978, 2
  %i.zu = sitofp i32 %i.zt to float
  %i.zv = insertelement <2 x float> poison, float %i.zu, i64 0
  %i.zw = insertelement <2 x float> %i.zv, float %i.zd, i64 1
  %i.zx = fmul <2 x float> %.sroa.0697.0.copyload, %i.zw ; 3 uses
  %i.zy = fsub float %i.zs, %i.zr                 ; 2 uses
  %i.zz = extractelement <2 x float> %i.zx, i64 0
  %i.aaa = fsub float %i.zz, %i.mf                ; 2 uses
  %i.aab = extractelement <2 x float> %i.zx, i64 1
  %i.aac = fsub float %i.aab, %i.zr               ; 2 uses
  %i.aad = fmul float %14, %i.zy
  %i.aae = fmul float %i.ia, %i.aac
  %i.aaf = fsub float %i.aad, %i.aae              ; 3 uses
  %i.aag = fmul float %i.ia, %i.aaa
  %i.aah = fmul float %14, %30
  %i.aai = fsub float %i.aag, %i.aah              ; 3 uses
  %i.aaj = fmul float %30, %i.aac
  %i.aak = fmul float %i.aaa, %i.zy
  %i.aal = fsub float %i.aaj, %i.aak              ; 3 uses
  %i.aam = fmul float %i.aaf, %i.aaf
  %i.aan = fmul float %i.aai, %i.aai
  %i.aao = fadd float %i.aan, %i.aam
  %i.aap = fmul float %i.aal, %i.aal
  %i.aaq = fadd float %i.aap, %i.aao              ; 2 uses
  %i.aar = fcmp ogt float %i.aaq, f0x057A0000
  br i1 %i.aar, label %bb.dr, label %b3Normalize.exit.us

bb.dr:                                            ; preds = %bb.dq
  %sqrt1392.us = call float @llvm.sqrt.f32(float %i.aaq)
  %i.aas = fdiv float 1.000000e+00, %sqrt1392.us  ; 3 uses
  %i.aat = fmul float %i.aaf, %i.aas
  %.sroa.07.0.vec.insert.i.us = insertelement <2 x float> poison, float %i.aat, i64 0
  %i.aau = fmul float %i.aai, %i.aas
  %.sroa.07.4.vec.insert.i.us = insertelement <2 x float> %.sroa.07.0.vec.insert.i.us, float %i.aau, i64 1
  %i.aav = fmul float %i.aal, %i.aas
  br label %b3Normalize.exit.us

b3Normalize.exit.us:                              ; preds = %bb.dr, %bb.dq
  %.sroa.07.0.i.us = phi <2 x float> [ %.sroa.07.4.vec.insert.i.us, %bb.dr ], [ zeroinitializer, %bb.dq ]
  %.sroa.5.0.i.us = phi float [ %i.aav, %bb.dr ], [ 0.000000e+00, %bb.dq ]
  %i.aaw = fmul <2 x float> %i.zx, %.sroa.07.0.i.i1097.us ; 2 uses
  %shift11067 = shufflevector <2 x float> %i.aaw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11068 = fadd <2 x float> %i.aaw, %shift11067
  %i.aax = extractelement <2 x float> %foldExtExtBinop11068, i64 0
  %i.aay = fmul float %12, %.sroa.5.0.i.i1098.us
  %i.aaz = fadd float %i.aay, %i.aax
  %i.aba = fsub float %i.aaz, %i.nw               ; 2 uses
  %i.abb = fmul <2 x float> %.sroa.07.0.i.i1097.us, %.sroa.07.0.i.us ; 2 uses
  %shift11070 = shufflevector <2 x float> %i.abb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11071 = fadd <2 x float> %i.abb, %shift11070
  %i.abc = extractelement <2 x float> %foldExtExtBinop11071, i64 0
  %i.abd = fmul float %.sroa.5.0.i.i1098.us, %.sroa.5.0.i.us
  %i.abe = fadd float %i.abd, %i.abc
  %i.abf = fcmp ogt float %i.aba, 0.000000e+00
  %i.abg = fcmp ogt float %i.abe, 9.962000e-01    ; 2 uses
  %or.cond1005.us = select i1 %i.abf, i1 true, i1 %i.abg
  %i.abh = zext i1 %or.cond1005.us to i32
  %.5895.us = or i32 %.4894.us, %i.abh            ; 2 uses
  %i.abi = fcmp olt float %i.aba, 0.000000e+00
  %or.cond1006.us = select i1 %i.abi, i1 true, i1 %i.abg
  %i.abj = or i32 %.5895.us, 16
  %.6896.us = select i1 %or.cond1006.us, i32 %i.abj, i32 %.5895.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.ds

bb.ds:                                            ; preds = %b3Normalize.exit.us, %bb.df, %bb.dd
  %.7897.us = phi i32 [ %.6896.us, %b3Normalize.exit.us ], [ %.4894.us, %bb.df ], [ %.4894.us, %bb.dd ]
  %i.abk = trunc nuw nsw i32 %.7.us to i8
  %i.abl = getelementptr inbounds i8, ptr %i.bz, i64 %indvars.iv6951 ; 2 uses
  %i.abm = add i64 %i.bx, %indvars.iv6951, !nosanitize !9 ; 3 uses
  %i.abn = icmp eq i64 %i.abm, 0
  %i.abo = xor i1 %i.hk, %i.abn
  %i.abp = icmp uge i64 %i.abm, %i.bx, !nosanitize !9
  %i.abq = icmp slt i64 %indvars.iv6951, 0
  %i.abr = xor i1 %i.abq, %i.abp
  %i.abs = and i1 %i.abo, %i.abr, !nosanitize !9
  br i1 %i.abs, label %bb.dt, label %.split4228.us, !prof !10, !nosanitize !9

bb.dt:                                            ; preds = %bb.ds
  br i1 %i.hk, label %bb.du, label %.split4231.us, !prof !10, !nosanitize !9

bb.du:                                            ; preds = %bb.dt
  store i8 %i.abk, ptr %i.abl, align 1, !tbaa !41
  %i.abt = shl i64 %indvars.iv6951, 32
  %sext = ashr exact i64 %i.abt, 32
  %i.abu = or i64 %sext, 1                        ; 2 uses
  %i.abv = add i64 %i.bx, %i.abu, !nosanitize !9  ; 3 uses
  %i.abw = icmp ne i64 %i.abv, 0
  %i.abx = icmp uge i64 %i.abv, %i.bx, !nosanitize !9
  %i.aby = icmp slt i64 %indvars.iv6951, 0
  %i.abz = xor i1 %i.aby, %i.abx
  %i.aca = and i1 %i.abw, %i.abz, !nosanitize !9
  br i1 %i.aca, label %bb.dv, label %.split4234.us, !prof !10, !nosanitize !9

bb.dv:                                            ; preds = %bb.du
  %i.acb = getelementptr inbounds i8, ptr %i.bz, i64 %i.abu
  %i.acc = trunc nuw nsw i32 %.7897.us to i8
  store i8 %i.acc, ptr %i.acb, align 1, !tbaa !41
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %._crit_edge6960
  %.pre-phi = phi i32 [ %.pre, %._crit_edge6960 ], [ %i.lz, %bb.dv ] ; 2 uses
  %exitcond6957.not = icmp eq i32 %.pre-phi, %i.p
  br i1 %exitcond6957.not, label %._crit_edge3606.us, label %bb.ap, !llvm.loop !65

._crit_edge3606.us:                               ; preds = %bb.dw
  %indvars.iv.next6955.reass.reass = add i32 %indvars.iv6954, %invariant.op
  %exitcond6958.not = icmp eq i32 %i.hu, %i.t
  br i1 %exitcond6958.not, label %._crit_edge3974, label %.preheader.us, !llvm.loop !66

.lr.ph3605.split.us:                              ; preds = %.preheader.us
  %i.acd = icmp eq i32 %.08853973.us, 2147483646
  br i1 %i.acd, label %.split3612.us, label %.split3615.us, !prof !20, !nosanitize !9

.lr.ph3605.split.split.us:                        ; preds = %.lr.ph3605.split.us3975
  %i.ace = sext i32 %i.hp to i64                  ; 2 uses
  %i.acf = icmp eq i32 %i.hp, 0
  br i1 %i.acf, label %.split3800.us, label %.split3797.us, !prof !10, !nosanitize !9

._crit_edge3974:                                  ; preds = %._crit_edge3606.us, %.preheader.lr.ph, %.split3971
  call void @b3Free(ptr noundef %.fr7006, i64 noundef %i.fb) #13
  %i.acg = getelementptr inbounds nuw i8, ptr %.fr4248, i64 8 ; 2 uses
  store i64 0, ptr %i.acg, align 8, !tbaa !74
  %i.ach = load i32, ptr %i.ay, align 8, !tbaa !24
  %i.aci = call i64 @b3Hash64NonZero(ptr noundef nonnull %.fr4248, i32 noundef %i.ach) #13
  store i64 %i.aci, ptr %i.acg, align 8, !tbaa !74
  ret ptr %.fr4248

.split3612.us.loopexit:                           ; preds = %bb.ap
  %i.acj = and i64 %indvars.iv6951, 4294967294
  br label %.split3612.us

.split3612.us:                                    ; preds = %.split3612.us.loopexit, %.lr.ph3605.split.us
  %.us-phi3613 = phi i64 [ 2147483646, %.lr.ph3605.split.us ], [ %i.acj, %.split3612.us.loopexit ]
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @40, i64 %.us-phi3613, i64 2) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split3615.us:                                    ; preds = %.lr.ph3605.split.us
  %i.ack = zext nneg i32 %.08863972.us to i64, !nosanitize !9
  %i.acl = zext nneg i32 %i.p to i64, !nosanitize !9
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @41, i64 %i.ack, i64 %i.acl) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split3793.us:                                    ; preds = %bb.aq
  %i.acm = zext i32 %i.hp to i64, !nosanitize !9
  %i.acn = zext i32 %.08873603.us3978 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @42, i64 %i.acm, i64 %i.acn) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split3797.us:                                    ; preds = %bb.ar, %.lr.ph3605.split.split.us
  %.us-phi3798 = phi i64 [ %i.ace, %.lr.ph3605.split.split.us ], [ %i.jc, %bb.ar ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @43, i64 %i.bs, i64 %.us-phi3798) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split3800.us:                                    ; preds = %.lr.ph3605.split.split.us
  %i.aco = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ace
  %i.acp = ptrtoint ptr %i.aco to i64, !nosanitize !9
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @44, i64 %i.acp) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split3996.us:                                    ; preds = %bb.at
  %i.acq = zext nneg i32 %.08863972.us to i64, !nosanitize !9
  %i.acr = zext i32 %i.g to i64, !nosanitize !9
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @45, i64 %i.acq, i64 %i.acr) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split3999.us:                                    ; preds = %bb.au
  %i.acs = zext i32 %i.hs to i64, !nosanitize !9
  %i.act = zext i32 %.08873603.us3978 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @46, i64 %i.acs, i64 %i.act) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4003.us:                                    ; preds = %bb.av
  %i.acu = zext nneg i32 %i.jm to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @47, i64 %i.acu, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4009.us:                                    ; preds = %bb.aw
  %i.acv = zext nneg i32 %i.hu to i64, !nosanitize !9
  %i.acw = zext i32 %i.g to i64, !nosanitize !9
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @48, i64 %i.acv, i64 %i.acw) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4012.us:                                    ; preds = %bb.ax
  %i.acx = zext i32 %i.hw to i64, !nosanitize !9
  %i.acy = zext i32 %.08873603.us3978 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @49, i64 %i.acx, i64 %i.acy) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4016.us:                                    ; preds = %bb.ay
  %i.acz = zext nneg i32 %i.js to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @50, i64 %i.acz, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4019.us:                                    ; preds = %bb.az
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @51, i64 %i.hc, i64 %i.ka) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4023.us:                                    ; preds = %bb.ba
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @52, i64 %i.kh) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4026.us:                                    ; preds = %bb.bb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @53, i64 %i.hc, i64 %i.kp) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4030.us:                                    ; preds = %bb.bc
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @54, i64 %i.kv) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4033.us:                                    ; preds = %bb.bd
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @55, i64 %i.hc, i64 %i.lc) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4037.us:                                    ; preds = %bb.be
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @56, i64 %i.li) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4040.us:                                    ; preds = %bb.bf
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @57, i64 %i.hc, i64 %i.lp) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4044.us:                                    ; preds = %bb.bg
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @58, i64 %i.lv) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4047.us:                                    ; preds = %bb.bh
  %i.ada = ptrtoint ptr %1 to i64, !nosanitize !9 ; 2 uses
  %i.adb = add i64 %i.ada, 24, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @59, i64 %i.ada, i64 %i.adb) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4049.us:                                    ; preds = %b3MakePlaneFromPoints.exit.us
  %i.adc = ptrtoint ptr %2 to i64, !nosanitize !9 ; 2 uses
  %i.add = add i64 %i.adc, 24, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @60, i64 %i.adc, i64 %i.add) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4051.us:                                    ; preds = %b3MakePlaneFromPoints.exit1108.us
  %i.ade = zext i32 %i.ib to i64, !nosanitize !9
  %i.adf = zext nneg i32 %i.p to i64, !nosanitize !9
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @61, i64 %i.ade, i64 %i.adf) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split4054.us:                                    ; preds = %bb.bm
end_hunk_0
