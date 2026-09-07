Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GlobalISelEmitter?download=true
inline.NumInlined: 9986
inline.NumDeleted: 5018
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm2gi11RuleMatcherESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS2_11raw_ostreamEE3$_2EEEvT_SI_T0_T1_":bb.a
  store i32 %i.kw, ptr %i.ku, align 4, !tbaa !232
  %i.kx = load i32, ptr %i.o, align 8, !tbaa !612
  %i.ky = add i32 %i.kx, 1
  store i32 %i.ky, ptr %i.o, align 8, !tbaa !612
  store i64 %i.hv, ptr %i.kl, align 8, !tbaa !72
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store i32 0, ptr %i.kz, align 8, !tbaa !232
  %.pre174 = load i32, ptr %i.n, align 4, !tbaa !457, !noalias !3471
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit80

_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit80.loopexit: ; preds = %.lr.ph.i.i78
  %.phi.trans.insert170 = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %.pre171 = load i32, ptr %.phi.trans.insert170, align 4, !tbaa !232
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit80

_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit80: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit80.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i73
  %i.la = phi i32 [ %.pre174, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i73 ], [ %i.hy, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit80.loopexit ] ; 4 uses
  %i.lb = phi ptr [ %.pre173, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i73 ], [ %i.hx, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit80.loopexit ] ; 3 uses
  %i.lc = phi ptr [ %.pre172, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i73 ], [ %i.hw, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit80.loopexit ] ; 3 uses
  %i.ld = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i73 ], [ %.pre171, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit80.loopexit ] ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.035.i, i64 448
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !325 ; 5 uses
  %i.lg = icmp eq i32 %i.la, 0
  br i1 %i.lg, label %.loopexit.i53, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit80
  %i.lh = add i32 %i.la, -1                       ; 2 uses
  %i.li = mul i64 %i.lf, -4658895280553007687     ; 2 uses
  %i.lj = lshr i64 %i.li, 31
  %i.lk = xor i64 %i.lj, %i.li
  %i.ll = trunc i64 %i.lk to i32
  %i.lm = and i32 %i.lh, %i.ll                    ; 3 uses
  %i.ln = zext i32 %i.lm to i64                   ; 2 uses
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %i.ln ; 2 uses
  %i.lp = lshr i64 %i.ln, 5
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !232
  %i.ls = and i32 %i.lm, 31
  %i.lt = lshr i32 %i.lr, %i.ls
  %i.lu = trunc i32 %i.lt to i1
  br i1 %i.lu, label %.lr.ph.i.i64, label %.loopexit.i53, !prof !343

.lr.ph.i.i64:                                     ; preds = %bb.s, %bb.t
  %i.lv = phi ptr [ %i.mb, %bb.t ], [ %i.lo, %bb.s ] ; 2 uses
  %.024.i.i65 = phi i32 [ %i.lz, %bb.t ], [ %i.lm, %bb.s ]
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !72
  %i.lx = icmp eq i64 %i.lf, %i.lw
  br i1 %i.lx, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit66.loopexit, label %bb.t, !prof !276

bb.t:                                             ; preds = %.lr.ph.i.i64
  %i.ly = add nuw i32 %.024.i.i65, 1
  %i.lz = and i32 %i.ly, %i.lh                    ; 3 uses
  %i.ma = zext i32 %i.lz to i64                   ; 2 uses
  %i.mb = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %i.ma ; 2 uses
  %i.mc = lshr i64 %i.ma, 5
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !232
  %i.mf = and i32 %i.lz, 31
  %i.mg = lshr i32 %i.me, %i.mf
  %i.mh = trunc i32 %i.mg to i1
  br i1 %i.mh, label %.lr.ph.i.i64, label %.loopexit.i53, !prof !344, !llvm.loop !13

.loopexit.i53:                                    ; preds = %bb.t, %bb.s, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit80
  %.lcssa28.sink.i.ph.i54 = phi ptr [ %i.lo, %bb.s ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit80 ], [ %i.mb, %bb.t ]
  %i.mi = load i32, ptr %i.o, align 8, !tbaa !612
  %i.mj = shl i32 %i.mi, 2
  %i.mk = add i32 %i.mj, 4
  %i.ml = mul i32 %i.la, 3
  %.not.i.i55 = icmp ult i32 %i.mk, %i.ml
  br i1 %.not.i.i55, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i59, label %bb.u, !prof !276

bb.u:                                             ; preds = %.loopexit.i53
  %i.mm = shl i32 %i.la, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.l, i32 noundef %i.mm)
  %i.mn = load ptr, ptr %i.l, align 8, !tbaa !458, !noalias !3472 ; 5 uses
  %i.mo = load ptr, ptr %i.m, align 8, !tbaa !610, !noalias !3472 ; 5 uses
  %i.mp = load i32, ptr %i.n, align 4, !tbaa !457, !noalias !3472 ; 2 uses
  %i.mq = icmp ne i32 %i.mp, 0
  tail call void @llvm.assume(i1 %i.mq)
  %i.mr = add i32 %i.mp, -1                       ; 2 uses
  %i.ms = mul i64 %i.lf, -4658895280553007687     ; 2 uses
  %i.mt = lshr i64 %i.ms, 31
  %i.mu = xor i64 %i.mt, %i.ms
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = and i32 %i.mr, %i.mv                    ; 3 uses
  %i.mx = zext i32 %i.mw to i64                   ; 2 uses
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %i.mn, i64 %i.mx ; 2 uses
  %i.mz = lshr i64 %i.mx, 5
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !232
  %i.nc = and i32 %i.mw, 31
  %i.nd = lshr i32 %i.nb, %i.nc
  %i.ne = trunc i32 %i.nd to i1
  br i1 %i.ne, label %.lr.ph.i89, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i59, !prof !343

.lr.ph.i89:                                       ; preds = %bb.u, %bb.v
  %i.nf = phi ptr [ %i.nl, %bb.v ], [ %i.my, %bb.u ] ; 2 uses
  %.024.i90 = phi i32 [ %i.nj, %bb.v ], [ %i.mw, %bb.u ]
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !72
  %i.nh = icmp eq i64 %i.lf, %i.ng
  br i1 %i.nh, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i59, label %bb.v, !prof !276

bb.v:                                             ; preds = %.lr.ph.i89
  %i.ni = add nuw i32 %.024.i90, 1
  %i.nj = and i32 %i.ni, %i.mr                    ; 3 uses
  %i.nk = zext i32 %i.nj to i64                   ; 2 uses
  %i.nl = getelementptr inbounds nuw [16 x i8], ptr %i.mn, i64 %i.nk ; 2 uses
  %i.nm = lshr i64 %i.nk, 5
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !232
  %i.np = and i32 %i.nj, 31
  %i.nq = lshr i32 %i.no, %i.np
  %i.nr = trunc i32 %i.nq to i1
  br i1 %i.nr, label %.lr.ph.i89, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i59, !prof !344, !llvm.loop !13

_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i59: ; preds = %bb.v, %.lr.ph.i89, %bb.u, %.loopexit.i53
  %i.ns = phi ptr [ %i.lc, %.loopexit.i53 ], [ %i.mn, %bb.u ], [ %i.mn, %.lr.ph.i89 ], [ %i.mn, %bb.v ]
  %i.nt = phi ptr [ %i.lb, %.loopexit.i53 ], [ %i.mo, %bb.u ], [ %i.mo, %.lr.ph.i89 ], [ %i.mo, %bb.v ]
  %i.nu = phi ptr [ %.lcssa28.sink.i.ph.i54, %.loopexit.i53 ], [ %i.my, %bb.u ], [ %i.nl, %bb.v ], [ %i.nf, %.lr.ph.i89 ] ; 3 uses
  %i.nv = ptrtoint ptr %i.nu to i64
  %i.nw = ptrtoint ptr %i.ns to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = ashr exact i64 %i.nx, 4                 ; 2 uses
  %i.nz = trunc i64 %i.ny to i32
  %i.oa = and i32 %i.nz, 31
  %i.ob = shl nuw i32 1, %i.oa
  %i.oc = lshr i64 %i.ny, 5
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.oc ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !232
  %i.of = or i32 %i.ob, %i.oe
  store i32 %i.of, ptr %i.od, align 4, !tbaa !232
  %i.og = load i32, ptr %i.o, align 8, !tbaa !612
  %i.oh = add i32 %i.og, 1
  store i32 %i.oh, ptr %i.o, align 8, !tbaa !612
  store i64 %i.lf, ptr %i.nu, align 8, !tbaa !72
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store i32 0, ptr %i.oi, align 8, !tbaa !232
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit66

_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit66.loopexit: ; preds = %.lr.ph.i.i64
  %.phi.trans.insert175 = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %.pre176 = load i32, ptr %.phi.trans.insert175, align 4, !tbaa !232
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit66

_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit66: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit66.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i59
  %i.oj = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i59 ], [ %.pre176, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit66.loopexit ] ; 2 uses
  %i.ok = icmp sgt i32 %i.ld, %i.oj
  br i1 %i.ok, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.thread.i", label %bb.w

bb.w:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit66
  %i.ol = icmp sgt i32 %i.oj, %i.ld
  br i1 %i.ol, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.thread29.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.i": ; preds = %bb.w
  %i.om = tail call noundef zeroext i1 @_ZNK4llvm2gi11RuleMatcher20isHigherPriorityThanERKS1_(ptr noundef nonnull align 8 dereferenceable(456) %.01634.i, ptr noundef nonnull align 8 dereferenceable(456) %.035.i) #27
  br i1 %i.om, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.thread.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.thread29.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.thread.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.i", %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_.exit66
  %i.on = tail call noundef nonnull align 8 dereferenceable(456) ptr @_ZN4llvm2gi11RuleMatcheraSEOS1_(ptr noundef nonnull align 8 dereferenceable(456) %.sroa.025.032.i, ptr noundef nonnull align 8 dereferenceable(456) %.01634.i) ; 0 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.01634.i, i64 456
  br label %bb.x

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.thread29.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.i", %bb.w
  %i.op = tail call noundef nonnull align 8 dereferenceable(456) ptr @_ZN4llvm2gi11RuleMatcheraSEOS1_(ptr noundef nonnull align 8 dereferenceable(456) %.sroa.025.032.i, ptr noundef nonnull align 8 dereferenceable(456) %.035.i) ; 0 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.035.i, i64 456
  br label %bb.x

bb.x:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.thread29.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.thread.i"
  %.117.i = phi ptr [ %i.oo, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.thread.i" ], [ %.01634.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.thread29.i" ] ; 4 uses
  %.1.i = phi ptr [ %.035.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.thread.i" ], [ %i.oq, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherESC_EEbT_T0_.exit.thread29.i" ] ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.025.032.i, i64 456 ; 5 uses
  %i.os = icmp ne ptr %.1.i, %i.hs
  %i.ot = icmp ne ptr %.117.i, %i.ht
  %i.ou = select i1 %i.os, i1 %i.ot, i1 false
  br i1 %i.ou, label %bb.n, label %._crit_edge.i, !llvm.loop !27

._crit_edge.i:                                    ; preds = %bb.x
  %i.ov = ptrtoint ptr %i.hs to i64
  %i.ow = ptrtoint ptr %.1.i to i64
  %i.ox = sub i64 %i.ov, %i.ow                    ; 2 uses
  %i.oy = icmp sgt i64 %i.ox, 0
  br i1 %i.oy, label %.lr.ph.preheader.i.i.i.i.i.i31, label %_ZSt4moveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i

.lr.ph.preheader.i.i.i.i.i.i31:                   ; preds = %._crit_edge.i
  %i.oz = udiv exact i64 %i.ox, 456
  br label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %.lr.ph.i.i.i.i.i.i32, %.lr.ph.preheader.i.i.i.i.i.i31
  %.012.i.i.i.i.i.i33 = phi i64 [ %i.pd, %.lr.ph.i.i.i.i.i.i32 ], [ %i.oz, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 2 uses
  %.0811.i.i.i.i.i.i34 = phi ptr [ %i.pc, %.lr.ph.i.i.i.i.i.i32 ], [ %i.or, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 2 uses
  %.0910.i.i.i.i.i.i35 = phi ptr [ %i.pb, %.lr.ph.i.i.i.i.i.i32 ], [ %.1.i, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 2 uses
  %i.pa = tail call noundef nonnull align 8 dereferenceable(456) ptr @_ZN4llvm2gi11RuleMatcheraSEOS1_(ptr noundef nonnull align 8 dereferenceable(456) %.0811.i.i.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(456) %.0910.i.i.i.i.i.i35) ; 0 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 456
  %i.pc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 456 ; 2 uses
  %i.pd = add nsw i64 %.012.i.i.i.i.i.i33, -1
  %i.pe = icmp samesign ugt i64 %.012.i.i.i.i.i.i33, 1
  br i1 %i.pe, label %.lr.ph.i.i.i.i.i.i32, label %_ZSt4moveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i, !llvm.loop !26

_ZSt4moveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i32, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %i.or, %._crit_edge.i ], [ %i.pc, %.lr.ph.i.i.i.i.i.i32 ]
  %i.pf = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64 ; 3 uses
  %i.pg = ptrtoint ptr %i.or to i64
  %i.ph = sub i64 %i.pf, %i.pg
  %i.pi = getelementptr inbounds i8, ptr %i.or, i64 %i.ph ; 2 uses
  %i.pj = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.pk = ptrtoint ptr %.117.i to i64
  %i.pl = sub i64 %i.pj, %i.pk                    ; 2 uses
  %i.pm = icmp sgt i64 %i.pl, 0
  br i1 %i.pm, label %.lr.ph.preheader.i.i.i.i.i19.i, label %"_ZSt12__move_mergeIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEET0_T_SJ_SJ_SJ_SI_T1_.exit"

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i
  %i.pn = udiv exact i64 %i.pl, 456
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %.lr.ph.i.i.i.i.i20.i, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.pr, %.lr.ph.i.i.i.i.i20.i ], [ %i.pn, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.pq, %.lr.ph.i.i.i.i.i20.i ], [ %i.pi, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.pp, %.lr.ph.i.i.i.i.i20.i ], [ %.117.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %i.po = tail call noundef nonnull align 8 dereferenceable(456) ptr @_ZN4llvm2gi11RuleMatcheraSEOS1_(ptr noundef nonnull align 8 dereferenceable(456) %.0811.i.i.i.i.i22.i, ptr noundef nonnull align 8 dereferenceable(456) %.0910.i.i.i.i.i23.i) ; 0 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 456
  %i.pq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 456 ; 2 uses
  %i.pr = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.ps = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.ps, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt4moveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i, !llvm.loop !26

_ZSt4moveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i20.i
  %4 = ptrtoint ptr %i.pq to i64
  br label %"_ZSt12__move_mergeIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEET0_T_SJ_SJ_SJ_SI_T1_.exit"

"_ZSt12__move_mergeIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEET0_T_SJ_SJ_SJ_SI_T1_.exit": ; preds = %_ZSt4moveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i, %_ZSt4moveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.pf, %_ZSt4moveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i ], [ %4, %_ZSt4moveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit24.loopexit.i ]
  %i.pt = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.pf
  %i.pu = getelementptr inbounds i8, ptr %i.pi, i64 %i.pt ; 2 uses
  %i.pv = sub i64 %i.p, %i.pj
  %i.pw = sdiv exact i64 %i.pv, 456               ; 2 uses
  %.not.i21 = icmp slt i64 %i.pw, %i.hr
  br i1 %.not.i21, label %"_ZSt17__merge_sort_loopIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEEvT_SI_T0_T1_T2_.exit", label %.lr.ph.i20, !llvm.loop !3463

"_ZSt17__merge_sort_loopIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEEvT_SI_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEET0_T_SJ_SJ_SJ_SI_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm2gi11RuleMatcherESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS2_11raw_ostreamEE3$_2EEEvT_SI_T0_T1_T2_.exit"
  %.0.lcssa.i22 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm2gi11RuleMatcherESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS2_11raw_ostreamEE3$_2EEEvT_SI_T0_T1_T2_.exit" ], [ %i.ht, %"_ZSt12__move_mergeIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ] ; 2 uses
  %.sroa.021.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm2gi11RuleMatcherESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS2_11raw_ostreamEE3$_2EEEvT_SI_T0_T1_T2_.exit" ], [ %i.pu, %"_ZSt12__move_mergeIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ]
  %.lcssa.i23 = phi i64 [ %i.q, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm2gi11RuleMatcherESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS2_11raw_ostreamEE3$_2EEEvT_SI_T0_T1_T2_.exit" ], [ %i.pw, %"_ZSt12__move_mergeIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ]
  %.sroa.speculated.i24 = tail call i64 @llvm.smin.i64(i64 %i.r, i64 %.lcssa.i23)
  %i.px = getelementptr inbounds [456 x i8], ptr %.0.lcssa.i22, i64 %.sroa.speculated.i24 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEET0_T_SJ_SJ_SJ_SI_T1_"(ptr noundef %.0.lcssa.i22, ptr noundef %i.px, ptr noundef %i.px, ptr noundef nonnull %i.e, ptr %.sroa.021.0.lcssa.i, ptr %3)
  %i.py = icmp slt i64 %i.hr, %i.d
  br i1 %i.py, label %bb.b, label %._crit_edge, !llvm.loop !3464

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEEvT_SI_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm2gi11RuleMatcherESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS2_11raw_ostreamEE3$_2EEEvT_SI_T0_T1_.exit.thread", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm2gi11RuleMatcherESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS2_11raw_ostreamEE3$_2EEEvT_SI_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN4llvm2gi11RuleMatcherESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS2_11raw_ostreamEE3$_2EEEvT_SI_SI_T0_SJ_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEEvT_SI_T0_SJ_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.j = udiv exact i64 %i.h, 456
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(456) ptr @_ZN4llvm2gi11RuleMatcheraSEOS1_(ptr noundef nonnull align 8 dereferenceable(456) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(456) %.0910.i.i.i.i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 456
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 456 ; 3 uses
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !26

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 1600 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.031.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %bb.f ] ; 7 uses
  %.sroa.017.030.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %bb.f ] ; 6 uses
  %.sroa.013.028.i = phi ptr [ %0, %.lr.ph.i ], [ %i.ah, %bb.f ] ; 4 uses
  %.not23.i = icmp eq ptr %.sroa.017.030.i, %2
  br i1 %.not23.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.017.030.i, i64 448
  %i.r = load i64, ptr %i.q, align 8, !tbaa !325
  store i64 %i.r, ptr %i.c, align 8, !tbaa !72
  %i.s = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i8 } %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !232  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.v = getelementptr inbounds nuw i8, ptr %.031.i, i64 448
  %i.w = load i64, ptr %i.v, align 8, !tbaa !325
  store i64 %i.w, ptr %i.d, align 8, !tbaa !72
  %i.x = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.fca.0.extract.i11.i.i.i = extractvalue { ptr, i8 } %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i11.i.i.i, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !232  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.aa = icmp sgt i32 %i.u, %i.z
  br i1 %i.aa, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.thread.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp sgt i32 %i.z, %i.u
  br i1 %i.ab, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.thread21.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.i": ; preds = %bb.e
  %i.ac = call noundef zeroext i1 @_ZNK4llvm2gi11RuleMatcher20isHigherPriorityThanERKS1_(ptr noundef nonnull align 8 dereferenceable(456) %.sroa.017.030.i, ptr noundef nonnull align 8 dereferenceable(456) %.031.i) #27
  br i1 %i.ac, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.thread.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.thread21.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.thread.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.i", %bb.d
  %i.ad = call noundef nonnull align 8 dereferenceable(456) ptr @_ZN4llvm2gi11RuleMatcheraSEOS1_(ptr noundef nonnull align 8 dereferenceable(456) %.sroa.013.028.i, ptr noundef nonnull align 8 dereferenceable(456) %.sroa.017.030.i) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.017.030.i, i64 456
  br label %bb.f

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.thread21.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.i", %bb.e
  %i.af = call noundef nonnull align 8 dereferenceable(456) ptr @_ZN4llvm2gi11RuleMatcheraSEOS1_(ptr noundef nonnull align 8 dereferenceable(456) %.sroa.013.028.i, ptr noundef nonnull align 8 dereferenceable(456) %.031.i) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.031.i, i64 456
  br label %bb.f

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.thread21.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.thread.i"
  %.sroa.017.1.i = phi ptr [ %i.ae, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.thread.i" ], [ %.sroa.017.030.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.thread21.i" ]
  %.1.i = phi ptr [ %.031.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.thread.i" ], [ %i.ag, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclINS_17__normal_iteratorIPNS4_2gi11RuleMatcherESt6vectorISC_SaISC_EEEESD_EEbT_T0_.exit.thread21.i" ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i, i64 456
  %.not.i = icmp eq ptr %.1.i, %i.m
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEEvT_SI_T0_SJ_T1_T2_.exit", label %bb.c, !llvm.loop !3473

.critedge.i:                                      ; preds = %bb.c
  %i.ai = ptrtoint ptr %i.m to i64
  %i.aj = ptrtoint ptr %.031.i to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEEvT_SI_T0_SJ_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.am = udiv exact i64 %i.ak, 456
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.013.028.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.031.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.an = call noundef nonnull align 8 dereferenceable(456) ptr @_ZN4llvm2gi11RuleMatcheraSEOS1_(ptr noundef nonnull align 8 dereferenceable(456) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(456) %.0910.i.i.i.i.i.i) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 456
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 456
  %i.aq = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ar = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEEvT_SI_T0_SJ_T1_T2_.exit", !llvm.loop !26

bb.g:                                             ; preds = %bb.a
  %i.as = ptrtoint ptr %2 to i64
  %i.at = ptrtoint ptr %1 to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.preheader.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm2gi11RuleMatcherESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit28

.lr.ph.preheader.i.i.i.i.i23:                     ; preds = %bb.g
  %i.aw = udiv exact i64 %i.au, 456
  br label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %.lr.ph.i.i.i.i.i24, %.lr.ph.preheader.i.i.i.i.i23
  %.012.i.i.i.i.i25 = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i24 ], [ %i.aw, %.lr.ph.preheader.i.i.i.i.i23 ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i24 ], [ %5, %.lr.ph.preheader.i.i.i.i.i23 ] ; 2 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i24 ], [ %1, %.lr.ph.preheader.i.i.i.i.i23 ] ; 2 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(456) ptr @_ZN4llvm2gi11RuleMatcheraSEOS1_(ptr noundef nonnull align 8 dereferenceable(456) %.0811.i.i.i.i.i26, ptr noundef nonnull align 8 dereferenceable(456) %.0910.i.i.i.i.i27) ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 456
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 456 ; 2 uses
  %i.ba = add nsw i64 %.012.i.i.i.i.i25, -1
  %i.bb = icmp samesign ugt i64 %.012.i.i.i.i.i25, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm2gi11RuleMatcherESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit28, !llvm.loop !26

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm2gi11RuleMatcherESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit28: ; preds = %.lr.ph.i.i.i.i.i24, %bb.g
  %.08.lcssa.i.i.i.i.i22 = phi ptr [ %5, %bb.g ], [ %i.az, %.lr.ph.i.i.i.i.i24 ] ; 4 uses
  %i.bc = icmp eq ptr %0, %1
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm2gi11RuleMatcherESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit28
  %i.bd = ptrtoint ptr %.08.lcssa.i.i.i.i.i22 to i64
  %i.be = ptrtoint ptr %5 to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.preheader.i.i.i.i.i.i32, label %"_ZSt21__move_merge_adaptiveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEEvT_SI_T0_SJ_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i32:                   ; preds = %bb.h
  %i.bh = udiv exact i64 %i.bf, 456
  br label %.lr.ph.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i33:                             ; preds = %.lr.ph.i.i.i.i.i.i33, %.lr.ph.preheader.i.i.i.i.i.i32
  %.010.i.i.i.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i33 ], [ %i.bh, %.lr.ph.preheader.i.i.i.i.i.i32 ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i33 ], [ %2, %.lr.ph.preheader.i.i.i.i.i.i32 ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i33 ], [ %.08.lcssa.i.i.i.i.i22, %.lr.ph.preheader.i.i.i.i.i.i32 ]
  %i.bi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -456 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -456 ; 2 uses
  %i.bk = tail call noundef nonnull align 8 dereferenceable(456) ptr @_ZN4llvm2gi11RuleMatcheraSEOS1_(ptr noundef nonnull align 8 dereferenceable(456) %i.bj, ptr noundef nonnull align 8 dereferenceable(456) %i.bi) ; 0 uses
  %i.bl = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.bm = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.i33, label %"_ZSt21__move_merge_adaptiveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEEvT_SI_T0_SJ_T1_T2_.exit", !llvm.loop !28

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm2gi11RuleMatcherESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit28
  %i.bn = icmp eq ptr %5, %.08.lcssa.i.i.i.i.i22
  br i1 %i.bn, label %"_ZSt21__move_merge_adaptiveIPN4llvm2gi11RuleMatcherEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERNS0_11raw_ostreamEE3$_2EEEvT_SI_T0_SJ_T1_T2_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i22, i64 -456
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 1600 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_.exit.thread.i", %bb.j
  %.sroa.025.0.i.ph = phi ptr [ %2, %bb.j ], [ %i.cd, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_.exit.thread.i" ]
  %.sroa.029.0.i.ph.pn = phi ptr [ %1, %bb.j ], [ %.sroa.029.0.i.ph, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_.exit.thread.i" ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.bo, %bb.j ], [ %.0.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_117GlobalISelEmitter3runERN4llvm11raw_ostreamEE3$_2EclIPNS4_2gi11RuleMatcherENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_.exit.thread.i" ]
  %.sroa.029.0.i.ph = getelementptr inbounds i8, ptr %.sroa.029.0.i.ph.pn, i64 -456 ; 4 uses
  %i.bq = getelementptr inbounds i8, ptr %.sroa.029.0.i.ph.pn, i64 -8
  br label %bb.k

bb.k:                                             ; preds = %.outer, %bb.n
end_hunk_0
