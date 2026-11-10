Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/seam_finders?download=true
inline.NumInlined: 2970
inline.NumDeleted: 1133
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv6detail7GCGraphIfE7maxFlowEv:bb.a
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !489 ; 2 uses
  %i.iy = icmp slt i32 %i.ix, 0
  br i1 %i.iy, label %._crit_edge456.1, label %.lr.ph455.1, !llvm.loop !478

._crit_edge456.1:                                 ; preds = %bb.bn, %bb.bh
  %.sroa.0.2.lcssa.1 = phi ptr [ %.sroa.0.4, %bb.bh ], [ %.sroa.0.3.1, %bb.bn ] ; 8 uses
  %.sroa.13.2.lcssa.1 = phi ptr [ %.sroa.13.4, %bb.bh ], [ %.sroa.13.3.1, %bb.bn ] ; 7 uses
  %.sroa.26.2.lcssa.1 = phi ptr [ %.sroa.26.4, %bb.bh ], [ %.sroa.26.3.1, %bb.bn ] ; 3 uses
  %storemerge227.lcssa.1 = phi ptr [ %storemerge227449.1, %bb.bh ], [ %storemerge227.1, %bb.bn ] ; 3 uses
  %.lcssa.1 = phi ptr [ %i.hr, %bb.bh ], [ %i.iw, %bb.bn ]
  %i.iz = getelementptr inbounds nuw i8, ptr %storemerge227.lcssa.1, i64 24 ; 2 uses
  %i.ja = load float, ptr %i.iz, align 8, !tbaa !185
  %i.jb = fadd float %i.ec, %i.ja                 ; 2 uses
  store float %i.jb, ptr %i.iz, align 8, !tbaa !185
  %i.jc = fcmp oeq float %i.jb, 0.000000e+00
  br i1 %i.jc, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %._crit_edge456.1
  %.not.i258.1 = icmp eq ptr %.sroa.13.2.lcssa.1, %.sroa.26.2.lcssa.1
  br i1 %.not.i258.1, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store ptr %storemerge227.lcssa.1, ptr %.sroa.13.2.lcssa.1, align 8, !tbaa !484
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
          to label %.noexc266.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc266.1:                                      ; preds = %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i259.1
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 %i.jf ; 2 uses
  store ptr %storemerge227.lcssa.1, ptr %i.jo, align 8, !tbaa !484
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
  %.sroa.0.13.1 = phi ptr [ %i.jn, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264.1 ], [ %.sroa.0.2.lcssa.1, %bb.bp ]
  %.pn338.1 = phi ptr [ %i.jo, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264.1 ], [ %.sroa.13.2.lcssa.1, %bb.bp ]
  %.sroa.26.13.1 = phi ptr [ %i.jq, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i264.1 ], [ %.sroa.26.2.lcssa.1, %bb.bp ]
  %.sroa.13.11.1 = getelementptr inbounds nuw i8, ptr %.pn338.1, i64 8
  store i32 -2, ptr %.lcssa.1, align 8, !tbaa !489
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267.1, %._crit_edge456.1
  %.sroa.0.4.1 = phi ptr [ %.sroa.0.13.1, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267.1 ], [ %.sroa.0.2.lcssa.1, %._crit_edge456.1 ] ; 3 uses
  %.sroa.13.4.1 = phi ptr [ %.sroa.13.11.1, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267.1 ], [ %.sroa.13.2.lcssa.1, %._crit_edge456.1 ] ; 3 uses
  %.sroa.26.4.1 = phi ptr [ %.sroa.26.13.1, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit267.1 ], [ %.sroa.26.2.lcssa.1, %._crit_edge456.1 ] ; 2 uses
  %i.jr = add nuw nsw i32 %.0174749, 1            ; 8 uses
  %i.js = icmp eq ptr %.sroa.0.4.1, %.sroa.13.4.1
  br i1 %i.js, label %.loopexit343, label %.lr.ph508

.lr.ph508:                                        ; preds = %bb.bt, %.loopexit
  %.8506 = phi ptr [ %.12, %.loopexit ], [ %.4180.lcssa, %bb.bt ] ; 4 uses
  %.sroa.26.5505 = phi ptr [ %.sroa.26.9, %.loopexit ], [ %.sroa.26.4.1, %bb.bt ] ; 4 uses
  %.sroa.13.5504 = phi ptr [ %.sroa.13.8, %.loopexit ], [ %.sroa.13.4.1, %bb.bt ]
  %.sroa.0.5503 = phi ptr [ %.sroa.0.9, %.loopexit ], [ %.sroa.0.4.1, %bb.bt ] ; 4 uses
  %i.jt = getelementptr inbounds i8, ptr %.sroa.13.5504, i64 -8 ; 5 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !484 ; 9 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 28
  %i.jw = load i8, ptr %i.jv, align 4, !tbaa !201 ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 12 ; 2 uses
  %.1168478 = load i32, ptr %i.jx, align 4, !tbaa !47 ; 2 uses
  %.not221479 = icmp eq i32 %.1168478, 0
  br i1 %.not221479, label %.thread618, label %.lr.ph486

.thread618:                                       ; preds = %.lr.ph508
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store i32 0, ptr %i.jy, align 8, !tbaa !489
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store i32 0, ptr %i.jz, align 8, !tbaa !487
  br label %.loopexit

.lr.ph486:                                        ; preds = %.lr.ph508
  %i.ka = xor i8 %i.jw, 1
  %i.kb = zext i8 %i.ka to i32
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph486, %.thread324
  %.1168484 = phi i32 [ %.1168478, %.lr.ph486 ], [ %.1168, %.thread324 ] ; 3 uses
  %.0482 = phi i32 [ 2147483647, %.lr.ph486 ], [ %.2, %.thread324 ] ; 7 uses
  %.4480 = phi i32 [ 0, %.lr.ph486 ], [ %.6, %.thread324 ] ; 6 uses
  %i.kc = xor i32 %.1168484, %i.kb
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !491
  %i.kh = fcmp oeq float %i.kg, 0.000000e+00
  %.pre571 = sext i32 %.1168484 to i64            ; 2 uses
  br i1 %i.kh, label %.thread324, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ki = getelementptr inbounds [12 x i8], ptr %i.m, i64 %.pre571
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !492
  %i.kk = sext i32 %i.kj to i64                   ; 2 uses
  %i.kl = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.kk ; 5 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 28
  %i.kn = load i8, ptr %i.km, align 4, !tbaa !201
  %.not224 = icmp eq i8 %i.kn, %i.jw
  br i1 %.not224, label %bb.bw, label %.thread324

bb.bw:                                            ; preds = %bb.bv
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !489
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %.thread324, label %.preheader

.preheader:                                       ; preds = %bb.bw
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 3 uses
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !487
  %i.kt = icmp eq i32 %i.ks, %i.jr
  br i1 %i.kt, label %._crit_edge470, label %.lr.ph469

._crit_edge470:                                   ; preds = %bb.bz, %.preheader
  %i.ku = phi i64 [ %i.kk, %.preheader ], [ %i.lj, %bb.bz ]
  %.0159.lcssa = phi i32 [ 0, %.preheader ], [ %i.lb, %bb.bz ]
  %i.kv = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 20
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !488
  %i.ky = add nsw i32 %i.kx, %.0159.lcssa
  br label %bb.ca

.lr.ph469:                                        ; preds = %.preheader, %bb.bz
  %.0159468 = phi i32 [ %i.lb, %bb.bz ], [ 0, %.preheader ]
  %.0319467 = phi ptr [ %i.lk, %bb.bz ], [ %i.kl, %.preheader ] ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.0319467, i64 8
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !489 ; 3 uses
  %i.lb = add nuw nsw i32 %.0159468, 1            ; 3 uses
  %i.lc = icmp slt i32 %i.la, 0
  br i1 %i.lc, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %.lr.ph469
  %i.ld = icmp eq i32 %i.la, -2
  br i1 %i.ld, label %.thread324, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.le = getelementptr inbounds nuw i8, ptr %.0319467, i64 16
  store i32 %i.jr, ptr %i.le, align 8, !tbaa !487
  %i.lf = getelementptr inbounds nuw i8, ptr %.0319467, i64 20
  store i32 1, ptr %i.lf, align 4, !tbaa !488
  br label %bb.ca

bb.bz:                                            ; preds = %.lr.ph469
  %i.lg = zext nneg i32 %i.la to i64
  %i.lh = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !492
  %i.lj = sext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.lj ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !487
  %i.ln = icmp eq i32 %i.lm, %i.jr
  br i1 %i.ln, label %._crit_edge470, label %.lr.ph469, !llvm.loop !479

bb.ca:                                            ; preds = %bb.by, %._crit_edge470
  %.1160 = phi i32 [ %i.ky, %._crit_edge470 ], [ %i.lb, %bb.by ]
  %i.lo = add nsw i32 %.1160, 1                   ; 4 uses
  %.not225 = icmp eq i32 %i.lo, 2147483647
  br i1 %.not225, label %.thread324, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lp = icmp slt i32 %i.lo, %.0482
  %spec.select = select i1 %i.lp, i32 %.1168484, i32 %.4480 ; 2 uses
  %spec.select244 = call i32 @llvm.smin.i32(i32 %i.lo, i32 %.0482) ; 2 uses
  %i.lq = load i32, ptr %i.kr, align 8, !tbaa !487
  %.not226473 = icmp eq i32 %i.lq, %i.jr
  br i1 %.not226473, label %.thread324, label %.lr.ph477

.lr.ph477:                                        ; preds = %bb.cb, %.lr.ph477
  %i.lr = phi ptr [ %i.mb, %.lr.ph477 ], [ %i.kr, %bb.cb ]
  %.2161475 = phi i32 [ %i.ls, %.lr.ph477 ], [ %i.lo, %bb.cb ]
  %storemerge474 = phi ptr [ %i.ma, %.lr.ph477 ], [ %i.kl, %bb.cb ] ; 2 uses
  store i32 %i.jr, ptr %i.lr, align 8, !tbaa !487
  %i.ls = add nsw i32 %.2161475, -1               ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %storemerge474, i64 20
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !488
  %i.lu = getelementptr inbounds nuw i8, ptr %storemerge474, i64 8
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !489
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !492
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.lz ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !487
  %.not226 = icmp eq i32 %i.mc, %i.jr
  br i1 %.not226, label %.thread324, label %.lr.ph477, !llvm.loop !480

.thread324:                                       ; preds = %.lr.ph477, %bb.bu, %bb.cb, %bb.bx, %bb.ca, %bb.bv, %bb.bw
  %.6 = phi i32 [ %.4480, %bb.bu ], [ %.4480, %bb.bw ], [ %spec.select, %bb.cb ], [ %.4480, %bb.bx ], [ %.4480, %bb.ca ], [ %.4480, %bb.bv ], [ %spec.select, %.lr.ph477 ] ; 3 uses
  %.2 = phi i32 [ %.0482, %bb.bu ], [ %.0482, %bb.bw ], [ %spec.select244, %bb.cb ], [ %.0482, %bb.bx ], [ %.0482, %bb.ca ], [ %.0482, %bb.bv ], [ %spec.select244, %.lr.ph477 ] ; 2 uses
  %i.md = getelementptr inbounds [12 x i8], ptr %i.m, i64 %.pre571
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %.1168 = load i32, ptr %i.me, align 4, !tbaa !47 ; 2 uses
  %.not221 = icmp eq i32 %.1168, 0
  br i1 %.not221, label %._crit_edge487, label %bb.bu, !llvm.loop !481

._crit_edge487:                                   ; preds = %.thread324
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store i32 %.6, ptr %i.mf, align 8, !tbaa !489
  %i.mg = icmp sgt i32 %.6, 0
  br i1 %i.mg, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %._crit_edge487
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store i32 %i.jr, ptr %i.mh, align 8, !tbaa !487
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ju, i64 20
  store i32 %.2, ptr %i.mi, align 4, !tbaa !488
  br label %.loopexit, !llvm.loop !482

bb.cd:                                            ; preds = %._crit_edge487
  %.2169490.pr = load i32, ptr %i.jx, align 4, !tbaa !47 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store i32 0, ptr %i.mj, align 8, !tbaa !487
  %.not222491 = icmp eq i32 %.2169490.pr, 0
  br i1 %.not222491, label %.loopexit, label %.lr.ph498

.lr.ph498:                                        ; preds = %bb.cd
  %i.mk = xor i8 %i.jw, 1
  %i.ml = zext i8 %i.mk to i32
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph498, %bb.cq
  %.2169496 = phi i32 [ %.2169490.pr, %.lr.ph498 ], [ %.2169, %bb.cq ] ; 2 uses
  %.9495 = phi ptr [ %.8506, %.lr.ph498 ], [ %.11, %bb.cq ] ; 4 uses
  %.sroa.26.6494 = phi ptr [ %.sroa.26.5505, %.lr.ph498 ], [ %.sroa.26.8, %bb.cq ] ; 8 uses
  %.sroa.13.6493 = phi ptr [ %i.jt, %.lr.ph498 ], [ %.sroa.13.7, %bb.cq ] ; 6 uses
  %.sroa.0.6492 = phi ptr [ %.sroa.0.5503, %.lr.ph498 ], [ %.sroa.0.8, %bb.cq ] ; 10 uses
  %i.mm = sext i32 %.2169496 to i64
  %i.mn = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.mm ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !492
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.mp ; 8 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !489 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 28
  %i.mu = load i8, ptr %i.mt, align 4, !tbaa !201
  %i.mv = icmp eq i8 %i.mu, %i.jw
  %i.mw = icmp ne i32 %i.ms, 0
  %or.cond = select i1 %i.mv, i1 %i.mw, i1 false
  br i1 %or.cond, label %bb.cf, label %bb.cq

bb.cf:                                            ; preds = %bb.ce
  %i.mx = xor i32 %.2169496, %i.ml
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [12 x i8], ptr %i.m, i64 %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load float, ptr %i.na, align 4, !tbaa !491
  %i.nc = fcmp une float %i.nb, 0.000000e+00
  br i1 %i.nc, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.nd = load ptr, ptr %i.mq, align 8, !tbaa !486
  %.not223 = icmp eq ptr %i.nd, null
  br i1 %.not223, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store ptr %5, ptr %i.mq, align 8, !tbaa !486
  store ptr %i.mq, ptr %.9495, align 8, !tbaa !486
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.10 = phi ptr [ %.9495, %bb.cg ], [ %i.mq, %bb.ch ], [ %.9495, %bb.cf ] ; 3 uses
  %i.ne = icmp sgt i32 %i.ms, 0
  br i1 %i.ne, label %bb.cj, label %bb.cq

bb.cj:                                            ; preds = %bb.ci
  %i.nf = zext nneg i32 %i.ms to i64
  %i.ng = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !492
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.ni
  %i.nk = icmp eq ptr %i.nj, %i.ju
  br i1 %i.nk, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  %.not.i268 = icmp eq ptr %.sroa.13.6493, %.sroa.26.6494
  br i1 %.not.i268, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store ptr %i.mq, ptr %.sroa.13.6493, align 8, !tbaa !484
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277

bb.cm:                                            ; preds = %bb.ck
  %i.nl = ptrtoint ptr %.sroa.26.6494 to i64
  %i.nm = ptrtoint ptr %.sroa.0.6492 to i64
  %i.nn = sub i64 %i.nl, %i.nm                    ; 6 uses
  %i.no = icmp eq i64 %i.nn, 9223372036854775800
  br i1 %i.no, label %bb.cn, label %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i269

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #29
          to label %.noexc275 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc275:                                        ; preds = %bb.cn
  unreachable

_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i269: ; preds = %bb.cm
  %i.np = ashr exact i64 %i.nn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i270 = call i64 @llvm.umax.i64(i64 %i.np, i64 1)
  %i.nq = add nsw i64 %.sroa.speculated.i.i.i270, %i.np ; 2 uses
  %i.nr = icmp ult i64 %i.nq, %i.np
  %i.ns = call i64 @llvm.umin.i64(i64 %i.nq, i64 1152921504606846975)
  %i.nt = select i1 %i.nr, i64 1152921504606846975, i64 %i.ns ; 3 uses
  %.not.i.i.i271 = icmp ne i64 %i.nt, 0
  call void @llvm.assume(i1 %.not.i.i.i271)
  %i.nu = shl nuw nsw i64 %i.nt, 3
  %i.nv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nu) #26
          to label %.noexc276 unwind label %.loopexit339 ; 4 uses

.noexc276:                                        ; preds = %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i269
  %i.nw = getelementptr inbounds i8, ptr %i.nv, i64 %i.nn ; 2 uses
  store ptr %i.mq, ptr %i.nw, align 8, !tbaa !484
  %i.nx = icmp sgt i64 %i.nn, 0
  br i1 %i.nx, label %bb.co, label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i272

bb.co:                                            ; preds = %.noexc276
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nv, ptr align 8 %.sroa.0.6492, i64 %i.nn, i1 false)
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i272

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i272: ; preds = %bb.co, %.noexc276
  %.not.i17.i.i273 = icmp eq ptr %.sroa.0.6492, null
  br i1 %.not.i17.i.i273, label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i274, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i272
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.6492, i64 noundef %i.nn) #27
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i274

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i274: ; preds = %bb.cp, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i272
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nt
  br label %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277

_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277: ; preds = %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i274, %bb.cl
  %.sroa.0.14 = phi ptr [ %i.nv, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i274 ], [ %.sroa.0.6492, %bb.cl ]
  %.pn336 = phi ptr [ %i.nw, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i274 ], [ %.sroa.13.6493, %bb.cl ]
  %.sroa.26.14 = phi ptr [ %i.ny, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i274 ], [ %.sroa.26.6494, %bb.cl ]
  %.sroa.13.12 = getelementptr inbounds nuw i8, ptr %.pn336, i64 8
  store i32 -2, ptr %i.mr, align 8, !tbaa !489
  br label %bb.cq

.loopexit339:                                     ; preds = %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i269
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit:             ; preds = %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit565 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit.split-lp:    ; preds = %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1
  %lpad.loopexit.split-lp566 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i259.1, %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i259
  %.sroa.0.2.lcssa.lcssa527 = phi ptr [ %.sroa.0.2.lcssa, %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i259 ], [ %.sroa.0.2.lcssa.1, %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i259.1 ]
  %.sroa.26.2.lcssa.lcssa525 = phi ptr [ %.sroa.13.2.lcssa, %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i259 ], [ %.sroa.13.2.lcssa.1, %_ZNKSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE12_M_check_lenEmPKc.exit.i.i259.1 ]
  %lpad.loopexit344 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit562, %bb.be, %bb.cn
  %.sroa.0.7.ph.ph.ph = phi ptr [ %.sroa.0.2.lcssa.lcssa, %bb.be ], [ %.sroa.0.2450.lcssa, %.loopexit562 ], [ %.sroa.0.6492, %bb.cn ]
  %.sroa.26.7.ph.ph.ph = phi ptr [ %.sroa.26.2.lcssa.lcssa, %bb.be ], [ %.sroa.26.2452.lcssa, %.loopexit562 ], [ %.sroa.26.6494, %bb.cn ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.cq:                                            ; preds = %bb.ci, %bb.cj, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277, %bb.ce
  %.sroa.0.8 = phi ptr [ %.sroa.0.14, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277 ], [ %.sroa.0.6492, %bb.cj ], [ %.sroa.0.6492, %bb.ci ], [ %.sroa.0.6492, %bb.ce ] ; 2 uses
  %.sroa.13.7 = phi ptr [ %.sroa.13.12, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277 ], [ %.sroa.13.6493, %bb.cj ], [ %.sroa.13.6493, %bb.ci ], [ %.sroa.13.6493, %bb.ce ] ; 2 uses
  %.sroa.26.8 = phi ptr [ %.sroa.26.14, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277 ], [ %.sroa.26.6494, %bb.cj ], [ %.sroa.26.6494, %bb.ci ], [ %.sroa.26.6494, %bb.ce ] ; 2 uses
  %.11 = phi ptr [ %.10, %_ZNSt6vectorIPN2cv6detail7GCGraphIfE3VtxESaIS5_EE9push_backERKS5_.exit277 ], [ %.10, %bb.cj ], [ %.10, %bb.ci ], [ %.9495, %bb.ce ] ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  %.2169 = load i32, ptr %i.nz, align 4, !tbaa !47 ; 2 uses
  %.not222 = icmp eq i32 %.2169, 0
end_hunk_0
