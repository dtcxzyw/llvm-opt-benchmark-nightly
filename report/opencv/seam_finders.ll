inline.NumInlined: 2971
inline.NumDeleted: 1133
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv6detail7GCGraphIfE7maxFlowEv:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2.lcssa, i64 noundef %i.hf) #27
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264: ; preds = %bb.bg, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i262
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hl
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267: ; preds = %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264, %bb.bc
  %.sroa.0.12 = phi ptr [ %i.hn, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264 ], [ %.sroa.0.2.lcssa, %bb.bc ]
  %.pn335 = phi ptr [ %i.ho, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264 ], [ %.sroa.13.2.lcssa, %bb.bc ]
  %.sroa.26.12 = phi ptr [ %i.hq, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264 ], [ %.sroa.26.2.lcssa, %bb.bc ]
  %.sroa.13.11 = getelementptr inbounds nuw i8, ptr %.pn335, i64 8
  store i32 -2, ptr %.lcssa, align 8, !tbaa !474
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge464, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267
  %.sroa.0.4 = phi ptr [ %.sroa.0.12, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267 ], [ %.sroa.0.2.lcssa, %._crit_edge464 ] ; 2 uses
  %.sroa.13.4 = phi ptr [ %.sroa.13.11, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267 ], [ %.sroa.13.2.lcssa, %._crit_edge464 ] ; 2 uses
  %.sroa.26.4 = phi ptr [ %.sroa.26.12, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267 ], [ %.sroa.26.2.lcssa, %._crit_edge464 ] ; 2 uses
  %.pn228.in455.1 = load i32, ptr %i.dc, align 4, !tbaa !478
  %.pn228456.1 = sext i32 %.pn228.in455.1 to i64
  %storemerge227457.1 = getelementptr inbounds [32 x i8], ptr %i.a, i64 %.pn228456.1 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %storemerge227457.1, i64 8 ; 3 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !474 ; 2 uses
  %i.ht = icmp slt i32 %i.hs, 0
  br i1 %i.ht, label %._crit_edge464.1, label %.lr.ph463.1

.lr.ph463.1:                                      ; preds = %bb.bh, %bb.bn
  %i.hu = phi i32 [ %i.ix, %bb.bn ], [ %i.hs, %bb.bh ] ; 2 uses
  %i.hv = phi ptr [ %i.iw, %bb.bn ], [ %i.hr, %bb.bh ]
  %storemerge227461.1 = phi ptr [ %storemerge227.1, %bb.bn ], [ %storemerge227457.1, %bb.bh ] ; 2 uses
  %.sroa.26.2460.1 = phi ptr [ %.sroa.26.3.1, %bb.bn ], [ %.sroa.26.4, %bb.bh ] ; 6 uses
  %.sroa.13.2459.1 = phi ptr [ %.sroa.13.3.1, %bb.bn ], [ %.sroa.13.4, %bb.bh ] ; 4 uses
  %.sroa.0.2458.1 = phi ptr [ %.sroa.0.3.1, %bb.bn ], [ %.sroa.0.4, %bb.bh ] ; 8 uses
  %i.hw = xor i32 %i.hu, 1
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !476
  %i.ib = fadd float %i.ec, %i.ia
  store float %i.ib, ptr %i.hz, align 4, !tbaa !476
  %i.ic = zext nneg i32 %i.hu to i64
  %i.id = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.ic ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  %i.if = load float, ptr %i.ie, align 4, !tbaa !476
  %i.ig = fsub float %i.if, %i.ec                 ; 2 uses
  store float %i.ig, ptr %i.ie, align 4, !tbaa !476
  %i.ih = fcmp oeq float %i.ig, 0.000000e+00
  br i1 %i.ih, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %.lr.ph463.1
  %.not.i.1 = icmp eq ptr %.sroa.13.2459.1, %.sroa.26.2460.1
  br i1 %.not.i.1, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store ptr %storemerge227461.1, ptr %.sroa.13.2459.1, align 8, !tbaa !469
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit.1

bb.bk:                                            ; preds = %bb.bi
  %i.ii = ptrtoint ptr %.sroa.26.2460.1 to i64
  %i.ij = ptrtoint ptr %.sroa.0.2458.1 to i64
  %i.ik = sub i64 %i.ii, %i.ij                    ; 6 uses
  %i.il = icmp eq i64 %i.ik, 9223372036854775800
  br i1 %i.il, label %.loopexit570, label %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.bk
  %i.im = ashr exact i64 %i.ik, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.im, i64 1)
  %i.in = add nsw i64 %.sroa.speculated.i.i.i.1, %i.im ; 2 uses
  %i.io = icmp ult i64 %i.in, %i.im
  %i.ip = call i64 @llvm.umin.i64(i64 %i.in, i64 1152921504606846975)
  %i.iq = select i1 %i.io, i64 1152921504606846975, i64 %i.ip ; 3 uses
  %.not.i.i.i.1 = icmp ne i64 %i.iq, 0
  call void @llvm.assume(i1 %.not.i.i.i.1)
  %i.ir = shl nuw nsw i64 %i.iq, 3
  %i.is = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ir) #26
          to label %.noexc257.1 unwind label %.loopexit337.loopexit.split-lp ; 4 uses

.noexc257.1:                                      ; preds = %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 %i.ik ; 2 uses
  store ptr %storemerge227461.1, ptr %i.it, align 8, !tbaa !469
  %i.iu = icmp sgt i64 %i.ik, 0
  br i1 %i.iu, label %bb.bl, label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.1

bb.bl:                                            ; preds = %.noexc257.1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.is, ptr align 8 %.sroa.0.2458.1, i64 %i.ik, i1 false)
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.1

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.1: ; preds = %bb.bl, %.noexc257.1
  %.not.i17.i.i.1 = icmp eq ptr %.sroa.0.2458.1, null
  br i1 %.not.i17.i.i.1, label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.1, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.1
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2458.1, i64 noundef %i.ik) #27
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.1

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.1: ; preds = %bb.bm, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.1
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.iq
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit.1

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit.1: ; preds = %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.1, %bb.bj
  %.sroa.0.11.1 = phi ptr [ %i.is, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.1 ], [ %.sroa.0.2458.1, %bb.bj ]
  %.pn334.1 = phi ptr [ %i.it, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.1 ], [ %.sroa.13.2459.1, %bb.bj ]
  %.sroa.26.11.1 = phi ptr [ %i.iv, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.1 ], [ %.sroa.26.2460.1, %bb.bj ]
  %.sroa.13.10.1 = getelementptr inbounds nuw i8, ptr %.pn334.1, i64 8
  store i32 -2, ptr %i.hv, align 8, !tbaa !474
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit.1, %.lr.ph463.1
  %.sroa.0.3.1 = phi ptr [ %.sroa.0.11.1, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit.1 ], [ %.sroa.0.2458.1, %.lr.ph463.1 ] ; 2 uses
  %.sroa.13.3.1 = phi ptr [ %.sroa.13.10.1, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit.1 ], [ %.sroa.13.2459.1, %.lr.ph463.1 ] ; 2 uses
  %.sroa.26.3.1 = phi ptr [ %.sroa.26.11.1, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit.1 ], [ %.sroa.26.2460.1, %.lr.ph463.1 ] ; 2 uses
  %.pn228.in.1 = load i32, ptr %i.id, align 4, !tbaa !478
  %.pn228.1 = sext i32 %.pn228.in.1 to i64
  %storemerge227.1 = getelementptr inbounds [32 x i8], ptr %i.a, i64 %.pn228.1 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %storemerge227.1, i64 8 ; 3 uses
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !474 ; 2 uses
  %i.iy = icmp slt i32 %i.ix, 0
  br i1 %i.iy, label %._crit_edge464.1, label %.lr.ph463.1, !llvm.loop !482

._crit_edge464.1:                                 ; preds = %bb.bn, %bb.bh
  %.sroa.0.2.lcssa.1 = phi ptr [ %.sroa.0.4, %bb.bh ], [ %.sroa.0.3.1, %bb.bn ] ; 8 uses
  %.sroa.13.2.lcssa.1 = phi ptr [ %.sroa.13.4, %bb.bh ], [ %.sroa.13.3.1, %bb.bn ] ; 7 uses
  %.sroa.26.2.lcssa.1 = phi ptr [ %.sroa.26.4, %bb.bh ], [ %.sroa.26.3.1, %bb.bn ] ; 3 uses
  %storemerge227.lcssa.1 = phi ptr [ %storemerge227457.1, %bb.bh ], [ %storemerge227.1, %bb.bn ] ; 3 uses
  %.lcssa.1 = phi ptr [ %i.hr, %bb.bh ], [ %i.iw, %bb.bn ]
  %i.iz = getelementptr inbounds nuw i8, ptr %storemerge227.lcssa.1, i64 24 ; 2 uses
  %i.ja = load float, ptr %i.iz, align 8, !tbaa !438
  %i.jb = fadd float %i.ec, %i.ja                 ; 2 uses
  store float %i.jb, ptr %i.iz, align 8, !tbaa !438
  %i.jc = fcmp oeq float %i.jb, 0.000000e+00
  br i1 %i.jc, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %._crit_edge464.1
  %.not.i258.1 = icmp eq ptr %.sroa.13.2.lcssa.1, %.sroa.26.2.lcssa.1
  br i1 %.not.i258.1, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store ptr %storemerge227.lcssa.1, ptr %.sroa.13.2.lcssa.1, align 8, !tbaa !469
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267.1

bb.bq:                                            ; preds = %bb.bo
  %i.jd = ptrtoint ptr %.sroa.13.2.lcssa.1 to i64
  %i.je = ptrtoint ptr %.sroa.0.2.lcssa.1 to i64
  %i.jf = sub i64 %i.jd, %i.je                    ; 6 uses
  %i.jg = icmp eq i64 %i.jf, 9223372036854775800
  br i1 %i.jg, label %bb.be, label %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i259.1

_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i259.1: ; preds = %bb.bq
  %i.jh = ashr exact i64 %i.jf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i260.1 = call i64 @llvm.umax.i64(i64 %i.jh, i64 1)
  %i.ji = add nsw i64 %.sroa.speculated.i.i.i260.1, %i.jh ; 2 uses
  %i.jj = icmp ult i64 %i.ji, %i.jh
  %i.jk = call i64 @llvm.umin.i64(i64 %i.ji, i64 1152921504606846975)
  %i.jl = select i1 %i.jj, i64 1152921504606846975, i64 %i.jk ; 3 uses
  %.not.i.i.i261.1 = icmp ne i64 %i.jl, 0
  call void @llvm.assume(i1 %.not.i.i.i261.1)
  %i.jm = shl nuw nsw i64 %i.jl, 3
  %i.jn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jm) #26
          to label %.noexc266.1 unwind label %.loopexit.split-lp338.loopexit ; 4 uses

.noexc266.1:                                      ; preds = %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i259.1
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 %i.jf ; 2 uses
  store ptr %storemerge227.lcssa.1, ptr %i.jo, align 8, !tbaa !469
  %i.jp = icmp sgt i64 %i.jf, 0
  br i1 %i.jp, label %bb.br, label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i262.1

bb.br:                                            ; preds = %.noexc266.1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jn, ptr align 8 %.sroa.0.2.lcssa.1, i64 %i.jf, i1 false)
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i262.1

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i262.1: ; preds = %bb.br, %.noexc266.1
  %.not.i17.i.i263.1 = icmp eq ptr %.sroa.0.2.lcssa.1, null
  br i1 %.not.i17.i.i263.1, label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264.1, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i262.1
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2.lcssa.1, i64 noundef %i.jf) #27
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264.1

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264.1: ; preds = %bb.bs, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i262.1
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jl
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267.1

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267.1: ; preds = %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264.1, %bb.bp
  %.sroa.0.12.1 = phi ptr [ %i.jn, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264.1 ], [ %.sroa.0.2.lcssa.1, %bb.bp ]
  %.pn335.1 = phi ptr [ %i.jo, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264.1 ], [ %.sroa.13.2.lcssa.1, %bb.bp ]
  %.sroa.26.12.1 = phi ptr [ %i.jq, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264.1 ], [ %.sroa.26.2.lcssa.1, %bb.bp ]
  %.sroa.13.11.1 = getelementptr inbounds nuw i8, ptr %.pn335.1, i64 8
  store i32 -2, ptr %.lcssa.1, align 8, !tbaa !474
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267.1, %._crit_edge464.1
  %.sroa.0.4.1 = phi ptr [ %.sroa.0.12.1, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267.1 ], [ %.sroa.0.2.lcssa.1, %._crit_edge464.1 ] ; 3 uses
  %.sroa.13.4.1 = phi ptr [ %.sroa.13.11.1, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267.1 ], [ %.sroa.13.2.lcssa.1, %._crit_edge464.1 ] ; 3 uses
  %.sroa.26.4.1 = phi ptr [ %.sroa.26.12.1, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267.1 ], [ %.sroa.26.2.lcssa.1, %._crit_edge464.1 ] ; 2 uses
  %i.jr = add nuw nsw i32 %.0199755, 1            ; 8 uses
  %i.js = icmp eq ptr %.sroa.0.4.1, %.sroa.13.4.1
  br i1 %i.js, label %.loopexit342, label %.lr.ph516

.lr.ph516:                                        ; preds = %bb.bt, %.loopexit
  %.8514 = phi ptr [ %.12, %.loopexit ], [ %.4195.lcssa, %bb.bt ] ; 4 uses
  %.sroa.26.5513 = phi ptr [ %.sroa.26.8, %.loopexit ], [ %.sroa.26.4.1, %bb.bt ] ; 4 uses
  %.sroa.13.5512 = phi ptr [ %.sroa.13.8, %.loopexit ], [ %.sroa.13.4.1, %bb.bt ]
  %.sroa.0.5511 = phi ptr [ %.sroa.0.8, %.loopexit ], [ %.sroa.0.4.1, %bb.bt ] ; 4 uses
  %i.jt = getelementptr inbounds i8, ptr %.sroa.13.5512, i64 -8 ; 5 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !469 ; 9 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 28
  %i.jw = load i8, ptr %i.jv, align 4, !tbaa !467 ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 12 ; 2 uses
  %.1171486 = load i32, ptr %i.jx, align 4, !tbaa !62 ; 2 uses
  %.not221487 = icmp eq i32 %.1171486, 0
  br i1 %.not221487, label %.thread626, label %.lr.ph494

.thread626:                                       ; preds = %.lr.ph516
  %12 = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store i32 0, ptr %12, align 8, !tbaa !474
  %13 = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store i32 0, ptr %13, align 8, !tbaa !472
  br label %.loopexit

.lr.ph494:                                        ; preds = %.lr.ph516
  %i.jy = xor i8 %i.jw, 1
  %i.jz = zext i8 %i.jy to i32
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph494, %.thread321
  %.1171492 = phi i32 [ %.1171486, %.lr.ph494 ], [ %.1171, %.thread321 ] ; 3 uses
  %.0490 = phi i32 [ 2147483647, %.lr.ph494 ], [ %.2, %.thread321 ] ; 7 uses
  %.4177488 = phi i32 [ 0, %.lr.ph494 ], [ %.6179, %.thread321 ] ; 6 uses
  %i.ka = xor i32 %.1171492, %i.jz
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !476
  %i.kf = fcmp oeq float %i.ke, 0.000000e+00
  %.pre579 = sext i32 %.1171492 to i64            ; 2 uses
  br i1 %i.kf, label %.thread321, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kg = getelementptr inbounds [12 x i8], ptr %i.m, i64 %.pre579
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !478
  %i.ki = sext i32 %i.kh to i64                   ; 2 uses
  %i.kj = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.ki ; 5 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 28
  %i.kl = load i8, ptr %i.kk, align 4, !tbaa !467
  %.not224 = icmp eq i8 %i.kl, %i.jw
  br i1 %.not224, label %bb.bw, label %.thread321

bb.bw:                                            ; preds = %bb.bv
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !474
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %.thread321, label %.preheader

.preheader:                                       ; preds = %bb.bw
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 3 uses
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !472
  %i.kr = icmp eq i32 %i.kq, %i.jr
  br i1 %i.kr, label %._crit_edge478, label %.lr.ph477

._crit_edge478:                                   ; preds = %bb.bz, %.preheader
  %i.ks = phi i64 [ %i.ki, %.preheader ], [ %i.lh, %bb.bz ]
  %.0159.lcssa = phi i32 [ 0, %.preheader ], [ %i.kz, %bb.bz ]
  %i.kt = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 20
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !473
  %i.kw = add nsw i32 %i.kv, %.0159.lcssa
  br label %bb.ca

.lr.ph477:                                        ; preds = %.preheader, %bb.bz
  %.0159476 = phi i32 [ %i.kz, %bb.bz ], [ 0, %.preheader ]
  %.0316475 = phi ptr [ %i.li, %bb.bz ], [ %i.kj, %.preheader ] ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.0316475, i64 8
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !474 ; 3 uses
  %i.kz = add nuw nsw i32 %.0159476, 1            ; 3 uses
  %i.la = icmp slt i32 %i.ky, 0
  br i1 %i.la, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %.lr.ph477
  %i.lb = icmp eq i32 %i.ky, -2
  br i1 %i.lb, label %.thread321, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lc = getelementptr inbounds nuw i8, ptr %.0316475, i64 16
  store i32 %i.jr, ptr %i.lc, align 8, !tbaa !472
  %i.ld = getelementptr inbounds nuw i8, ptr %.0316475, i64 20
  store i32 1, ptr %i.ld, align 4, !tbaa !473
  br label %bb.ca

bb.bz:                                            ; preds = %.lr.ph477
  %i.le = zext nneg i32 %i.ky to i64
  %i.lf = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !478
  %i.lh = sext i32 %i.lg to i64                   ; 2 uses
  %i.li = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !472
  %i.ll = icmp eq i32 %i.lk, %i.jr
  br i1 %i.ll, label %._crit_edge478, label %.lr.ph477, !llvm.loop !483

bb.ca:                                            ; preds = %bb.by, %._crit_edge478
  %.1160 = phi i32 [ %i.kw, %._crit_edge478 ], [ %i.kz, %bb.by ]
  %i.lm = add nsw i32 %.1160, 1                   ; 4 uses
  %.not225 = icmp eq i32 %i.lm, 2147483647
  br i1 %.not225, label %.thread321, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ln = icmp slt i32 %i.lm, %.0490
  %spec.select = select i1 %i.ln, i32 %.1171492, i32 %.4177488 ; 2 uses
  %spec.select244 = call i32 @llvm.smin.i32(i32 %i.lm, i32 %.0490) ; 2 uses
  %i.lo = load i32, ptr %i.kp, align 8, !tbaa !472
  %.not226481 = icmp eq i32 %i.lo, %i.jr
  br i1 %.not226481, label %.thread321, label %.lr.ph485

.lr.ph485:                                        ; preds = %bb.cb, %.lr.ph485
  %i.lp = phi ptr [ %i.lz, %.lr.ph485 ], [ %i.kp, %bb.cb ]
  %.2161483 = phi i32 [ %i.lq, %.lr.ph485 ], [ %i.lm, %bb.cb ]
  %storemerge482 = phi ptr [ %i.ly, %.lr.ph485 ], [ %i.kj, %bb.cb ] ; 2 uses
  store i32 %i.jr, ptr %i.lp, align 8, !tbaa !472
  %i.lq = add nsw i32 %.2161483, -1               ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %storemerge482, i64 20
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !473
  %i.ls = getelementptr inbounds nuw i8, ptr %storemerge482, i64 8
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !474
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !478
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.lx ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !472
  %.not226 = icmp eq i32 %i.ma, %i.jr
  br i1 %.not226, label %.thread321, label %.lr.ph485, !llvm.loop !484

.thread321:                                       ; preds = %.lr.ph485, %bb.bu, %bb.cb, %bb.bx, %bb.ca, %bb.bv, %bb.bw
  %.6179 = phi i32 [ %.4177488, %bb.bu ], [ %.4177488, %bb.bw ], [ %spec.select, %bb.cb ], [ %.4177488, %bb.bx ], [ %.4177488, %bb.ca ], [ %.4177488, %bb.bv ], [ %spec.select, %.lr.ph485 ] ; 3 uses
  %.2 = phi i32 [ %.0490, %bb.bu ], [ %.0490, %bb.bw ], [ %spec.select244, %bb.cb ], [ %.0490, %bb.bx ], [ %.0490, %bb.ca ], [ %.0490, %bb.bv ], [ %spec.select244, %.lr.ph485 ] ; 2 uses
  %i.mb = getelementptr inbounds [12 x i8], ptr %i.m, i64 %.pre579
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %.1171 = load i32, ptr %i.mc, align 4, !tbaa !62 ; 2 uses
  %.not221 = icmp eq i32 %.1171, 0
  br i1 %.not221, label %._crit_edge495, label %bb.bu, !llvm.loop !485

._crit_edge495:                                   ; preds = %.thread321
  %i.md = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store i32 %.6179, ptr %i.md, align 8, !tbaa !474
  %i.me = icmp sgt i32 %.6179, 0
  br i1 %i.me, label %14, label %bb.cc

14:                                               ; preds = %._crit_edge495
  %15 = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store i32 %i.jr, ptr %15, align 8, !tbaa !472
  %16 = getelementptr inbounds nuw i8, ptr %i.ju, i64 20
  store i32 %.2, ptr %16, align 4, !tbaa !473
  br label %.loopexit, !llvm.loop !486

bb.cc:                                            ; preds = %._crit_edge495
  %.2172498.pr = load i32, ptr %i.jx, align 4, !tbaa !62 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store i32 0, ptr %i.mf, align 8, !tbaa !472
  %.not222499 = icmp eq i32 %.2172498.pr, 0
  br i1 %.not222499, label %.loopexit, label %.lr.ph506

.lr.ph506:                                        ; preds = %bb.cc
  %i.mg = xor i8 %i.jw, 1
  %i.mh = zext i8 %i.mg to i32
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph506, %bb.cp
  %.2172504 = phi i32 [ %.2172498.pr, %.lr.ph506 ], [ %.2172, %bb.cp ] ; 2 uses
  %.9503 = phi ptr [ %.8514, %.lr.ph506 ], [ %.11, %bb.cp ] ; 4 uses
  %.sroa.26.6502 = phi ptr [ %.sroa.26.5513, %.lr.ph506 ], [ %.sroa.26.7, %bb.cp ] ; 8 uses
  %.sroa.13.6501 = phi ptr [ %i.jt, %.lr.ph506 ], [ %.sroa.13.7, %bb.cp ] ; 6 uses
  %.sroa.0.6500 = phi ptr [ %.sroa.0.5511, %.lr.ph506 ], [ %.sroa.0.7, %bb.cp ] ; 10 uses
  %i.mi = sext i32 %.2172504 to i64
  %i.mj = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.mi ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !478
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.ml ; 8 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !474 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 28
  %i.mq = load i8, ptr %i.mp, align 4, !tbaa !467
  %i.mr = icmp eq i8 %i.mq, %i.jw
  %i.ms = icmp ne i32 %i.mo, 0
  %or.cond = select i1 %i.mr, i1 %i.ms, i1 false
  br i1 %or.cond, label %bb.ce, label %bb.cp

bb.ce:                                            ; preds = %bb.cd
  %i.mt = xor i32 %.2172504, %i.mh
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !476
  %i.my = fcmp une float %i.mx, 0.000000e+00
  br i1 %i.my, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.mz = load ptr, ptr %i.mm, align 8, !tbaa !471
  %.not223 = icmp eq ptr %i.mz, null
  br i1 %.not223, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store ptr %5, ptr %i.mm, align 8, !tbaa !471
  store ptr %i.mm, ptr %.9503, align 8, !tbaa !471
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %.10 = phi ptr [ %.9503, %bb.cf ], [ %i.mm, %bb.cg ], [ %.9503, %bb.ce ] ; 3 uses
  %i.na = icmp sgt i32 %i.mo, 0
  br i1 %i.na, label %bb.ci, label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  %i.nb = zext nneg i32 %i.mo to i64
  %i.nc = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !478
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.ne
  %i.ng = icmp eq ptr %i.nf, %i.ju
  br i1 %i.ng, label %bb.cj, label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  %.not.i268 = icmp eq ptr %.sroa.13.6501, %.sroa.26.6502
  br i1 %.not.i268, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store ptr %i.mm, ptr %.sroa.13.6501, align 8, !tbaa !469
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277

bb.cl:                                            ; preds = %bb.cj
  %i.nh = ptrtoint ptr %.sroa.26.6502 to i64
  %i.ni = ptrtoint ptr %.sroa.0.6500 to i64
  %i.nj = sub i64 %i.nh, %i.ni                    ; 6 uses
  %i.nk = icmp eq i64 %i.nj, 9223372036854775800
  br i1 %i.nk, label %bb.cm, label %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i269

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #29
          to label %.noexc275 unwind label %.loopexit.split-lp

.noexc275:                                        ; preds = %bb.cm
  unreachable

_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i269: ; preds = %bb.cl
  %i.nl = ashr exact i64 %i.nj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i270 = call i64 @llvm.umax.i64(i64 %i.nl, i64 1)
  %i.nm = add nsw i64 %.sroa.speculated.i.i.i270, %i.nl ; 2 uses
  %i.nn = icmp ult i64 %i.nm, %i.nl
  %i.no = call i64 @llvm.umin.i64(i64 %i.nm, i64 1152921504606846975)
  %i.np = select i1 %i.nn, i64 1152921504606846975, i64 %i.no ; 3 uses
  %.not.i.i.i271 = icmp ne i64 %i.np, 0
  call void @llvm.assume(i1 %.not.i.i.i271)
  %i.nq = shl nuw nsw i64 %i.np, 3
  %i.nr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nq) #26
          to label %.noexc276 unwind label %.loopexit336 ; 4 uses

.noexc276:                                        ; preds = %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i269
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 %i.nj ; 2 uses
  store ptr %i.mm, ptr %i.ns, align 8, !tbaa !469
  %i.nt = icmp sgt i64 %i.nj, 0
  br i1 %i.nt, label %bb.cn, label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i272

bb.cn:                                            ; preds = %.noexc276
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nr, ptr align 8 %.sroa.0.6500, i64 %i.nj, i1 false)
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i272

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i272: ; preds = %bb.cn, %.noexc276
  %.not.i17.i.i273 = icmp eq ptr %.sroa.0.6500, null
  br i1 %.not.i17.i.i273, label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i274, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i272
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.6500, i64 noundef %i.nj) #27
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i274

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i274: ; preds = %bb.co, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i272
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.np
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277: ; preds = %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i274, %bb.ck
  %.sroa.0.13 = phi ptr [ %i.nr, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i274 ], [ %.sroa.0.6500, %bb.ck ]
  %.pn333 = phi ptr [ %i.ns, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i274 ], [ %.sroa.13.6501, %bb.ck ]
  %.sroa.26.13 = phi ptr [ %i.nu, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i274 ], [ %.sroa.26.6502, %bb.ck ]
  %.sroa.13.12 = getelementptr inbounds nuw i8, ptr %.pn333, i64 8
  store i32 -2, ptr %i.mn, align 8, !tbaa !474
  br label %bb.cp

.loopexit336:                                     ; preds = %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i269
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp338

.loopexit.split-lp:                               ; preds = %bb.cm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp338

bb.cp:                                            ; preds = %bb.ch, %bb.ci, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277, %bb.cd
  %.sroa.0.7 = phi ptr [ %.sroa.0.13, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277 ], [ %.sroa.0.6500, %bb.ci ], [ %.sroa.0.6500, %bb.ch ], [ %.sroa.0.6500, %bb.cd ] ; 2 uses
  %.sroa.13.7 = phi ptr [ %.sroa.13.12, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277 ], [ %.sroa.13.6501, %bb.ci ], [ %.sroa.13.6501, %bb.ch ], [ %.sroa.13.6501, %bb.cd ] ; 2 uses
  %.sroa.26.7 = phi ptr [ %.sroa.26.13, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277 ], [ %.sroa.26.6502, %bb.ci ], [ %.sroa.26.6502, %bb.ch ], [ %.sroa.26.6502, %bb.cd ] ; 2 uses
  %.11 = phi ptr [ %.10, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277 ], [ %.10, %bb.ci ], [ %.10, %bb.ch ], [ %.9503, %bb.cd ] ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %.2172 = load i32, ptr %i.nv, align 4, !tbaa !62 ; 2 uses
  %.not222 = icmp eq i32 %.2172, 0
  br i1 %.not222, label %.loopexit, label %bb.cd, !llvm.loop !487

.loopexit:                                        ; preds = %bb.cp, %.thread626, %bb.cc, %14
  %.sroa.0.8 = phi ptr [ %.sroa.0.5511, %14 ], [ %.sroa.0.5511, %bb.cc ], [ %.sroa.0.5511, %.thread626 ], [ %.sroa.0.7, %bb.cp ] ; 3 uses
  %.sroa.13.8 = phi ptr [ %i.jt, %14 ], [ %i.jt, %bb.cc ], [ %i.jt, %.thread626 ], [ %.sroa.13.7, %bb.cp ] ; 3 uses
  %.sroa.26.8 = phi ptr [ %.sroa.26.5513, %14 ], [ %.sroa.26.5513, %bb.cc ], [ %.sroa.26.5513, %.thread626 ], [ %.sroa.26.7, %bb.cp ] ; 2 uses
  %.12 = phi ptr [ %.8514, %14 ], [ %.8514, %bb.cc ], [ %.8514, %.thread626 ], [ %.11, %bb.cp ] ; 2 uses
  %i.nw = icmp eq ptr %.sroa.0.8, %.sroa.13.8
  br i1 %i.nw, label %.loopexit342, label %.lr.ph516

.loopexit.split-lp338:                            ; preds = %.loopexit337.loopexit, %.loopexit337.loopexit.split-lp, %.loopexit336, %.loopexit.split-lp, %.loopexit.split-lp338.loopexit.split-lp, %.loopexit.split-lp338.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %.sroa.0.10 = phi ptr [ %.sroa.0.0752, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.sroa.0.0752, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.sroa.0.0752, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ], [ %.sroa.0.2371, %.loopexit.split-lp338.loopexit.split-lp ], [ %.sroa.0.6500, %.loopexit.split-lp ], [ %.sroa.0.2.lcssa.lcssa535, %.loopexit.split-lp338.loopexit ], [ %.sroa.0.6500, %.loopexit336 ], [ %.sroa.0.2458, %.loopexit337.loopexit ], [ %.sroa.0.2458.1, %.loopexit337.loopexit.split-lp ] ; 3 uses
  %.sroa.26.10 = phi ptr [ %.sroa.26.0754, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.sroa.26.0754, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.sroa.26.0754, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ], [ %.sroa.26.2363, %.loopexit.split-lp338.loopexit.split-lp ], [ %.sroa.26.6502, %.loopexit.split-lp ], [ %.sroa.26.2.lcssa.lcssa533, %.loopexit.split-lp338.loopexit ], [ %.sroa.26.6502, %.loopexit336 ], [ %.sroa.26.2460, %.loopexit337.loopexit ], [ %.sroa.26.2460.1, %.loopexit337.loopexit.split-lp ]
  %.pn235.pn.pn = phi { ptr, i32 } [ %.pn235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.pn231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ], [ %lpad.loopexit.split-lp344, %.loopexit.split-lp338.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit343, %.loopexit.split-lp338.loopexit ], [ %lpad.loopexit, %.loopexit336 ], [ %lpad.loopexit573, %.loopexit337.loopexit ], [ %lpad.loopexit.split-lp574, %.loopexit337.loopexit.split-lp ]
  %.not.i.i.i278 = icmp eq ptr %.sroa.0.10, null
  br i1 %.not.i.i.i278, label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %.loopexit.split-lp338
  %i.nx = ptrtoint ptr %.sroa.26.10 to i64
  %i.ny = ptrtoint ptr %.sroa.0.10 to i64
  %i.nz = sub i64 %i.nx, %i.ny
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.10, i64 noundef %i.nz) #27
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EED2Ev.exit

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EED2Ev.exit: ; preds = %.loopexit.split-lp338, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.cs

._crit_edge447:                                   ; preds = %.loopexit342, %bb.aa, %._crit_edge
  %.sroa.0.0749 = phi ptr [ %.sroa.0.0752, %bb.aa ], [ null, %._crit_edge ], [ %.sroa.0.5.lcssa, %.loopexit342 ] ; 3 uses
  %.sroa.26.0734 = phi ptr [ %.sroa.26.0754, %bb.aa ], [ null, %._crit_edge ], [ %.sroa.26.5.lcssa, %.loopexit342 ]
  %i.oa = load float, ptr %i.ar, align 8, !tbaa !440
  %.not.i.i.i279 = icmp eq ptr %.sroa.0.0749, null
  br i1 %.not.i.i.i279, label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EED2Ev.exit280, label %bb.cr

bb.cr:                                            ; preds = %._crit_edge447
  %i.ob = ptrtoint ptr %.sroa.26.0734 to i64
  %i.oc = ptrtoint ptr %.sroa.0.0749 to i64
  %i.od = sub i64 %i.ob, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0749, i64 noundef %i.od) #27
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EED2Ev.exit280

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EED2Ev.exit280: ; preds = %._crit_edge447, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret float %i.oa

bb.cs:                                            ; preds = %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn241.pn = phi { ptr, i32 } [ %.pn241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %.pn235.pn.pn, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EED2Ev.exit ]
  resume { ptr, i32 } %.pn241.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6detail7GCGraphIfED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !455  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !457
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit

_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !425    ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN2cv6detail7GCGraphIfE3VtxESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !424
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #27
  br label %_ZNSt6vectorIN2cv6detail7GCGraphIfE3VtxESaIS4_EED2Ev.exit

_ZNSt6vectorIN2cv6detail7GCGraphIfE3VtxESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIN2cv6detail7GCGraphIfE4EdgeESaIS4_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail18GraphCutSeamFinderC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEff(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef readonly align 8 captures(none) %1, float noundef %2, float noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv6detail18GraphCutSeamFinderE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !43
  switch i64 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread15 [
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.e = load i64, ptr %i.d, align 1
  %i.f = xor i64 %i.e, 5498687746758364995
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load i16, ptr %i.g, align 1
  %i.i = zext i16 %i.h to i64
  %i.j = xor i64 %i.i, 21071
  %i.k = or i64 %i.f, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread15

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12: ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.p = load i64, ptr %i.o, align 1
  %i.q = xor i64 %i.p, 5498687746758364995
  %i.r = getelementptr i8, ptr %i.o, i64 7
  %i.s = load i64, ptr %i.r, align 1
  %i.t = xor i64 %i.s, 4918302734560677708
  %i.u = or i64 %i.q, %i.t
  %i.v = icmp ne i64 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread15

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread15: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread15
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -6, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv6detail18GraphCutSeamFinderC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEff, ptr noundef nonnull @.str.1, i32 noundef 1371) #29
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12.thread15
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.07 = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit12 ]
  %i.af = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #26
          to label %bb.f unwind label %bb.w       ; 10 uses

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i8 0, i64 96, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv6detail18GraphCutSeamFinder4ImplE, i64 16), ptr %i.af, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i8 0, i64 48, i1 false)
  store i32 %.07, ptr %i.ai, align 8, !tbaa !465
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 156
  store float %2, ptr %i.aj, align 4, !tbaa !426
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  store float %3, ptr %i.ak, align 8, !tbaa !452
  %i.al = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.k unwind label %bb.g       ; 10 uses

bb.g:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = tail call ptr @__cxa_begin_catch(ptr %i.an) #28 ; 0 uses
  tail call void @_ZN2cv6detail18GraphCutSeamFinder4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(168) %i.af) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 168) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #30
end_hunk_0
