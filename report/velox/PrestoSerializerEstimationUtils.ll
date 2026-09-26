Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/PrestoSerializerEstimationUtils?download=true
inline.NumInlined: 10226
inline.NumDeleted: 2145
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchE:bb.a
  %i.wr = xor i64 %notmask.i.i35.i.i.i, -1
  %i.ws = sub nsw i32 64, %i.wp
  %i.wt = zext nneg i32 %i.ws to i64
  %i.wu = shl i64 %i.wr, %i.wt
  %i.wv = sext i32 %i.wo to i64
  %i.ww = getelementptr inbounds [8 x i8], ptr %i.vh, i64 %i.wv
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !125
  %i.wy = and i64 %i.wx, %i.wu
  %i.wz = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.wy)
  %i.xa = trunc nuw nsw i64 %i.wz to i32
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.0.i.i = phi i32 [ 0, %bb.cd ], [ %i.xa, %bb.ce ] ; 2 uses
  %i.xb = add nsw i32 %i.vw, 64                   ; 2 uses
  %.not3342.i.i.i = icmp sgt i32 %i.xb, %i.vx
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.cf
  %.1.i.i = phi i32 [ %.0.i.i, %bb.cf ], [ %i.xk, %.lr.ph.i.i.i ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.vt, %i.vx
  br i1 %.not34.i.i.i, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit.i, label %bb.cg

.lr.ph.i.i.i:                                     ; preds = %bb.cf, %.lr.ph.i.i.i
  %i.xc = phi i32 [ %i.xk, %.lr.ph.i.i.i ], [ %.0.i.i, %bb.cf ]
  %i.xd = phi i32 [ %i.xl, %.lr.ph.i.i.i ], [ %i.xb, %bb.cf ] ; 2 uses
  %.043.i.i.i = phi i32 [ %i.xd, %.lr.ph.i.i.i ], [ %i.vw, %bb.cf ]
  %i.xe = sdiv i32 %.043.i.i.i, 64
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.vh, i64 %i.xf
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !125
  %i.xi = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.xh)
  %i.xj = trunc nuw nsw i64 %i.xi to i32
  %i.xk = add nsw i32 %i.xc, %i.xj                ; 2 uses
  %i.xl = add nsw i32 %i.xd, 64                   ; 2 uses
  %.not33.i.i.i = icmp sgt i32 %i.xl, %i.vx
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

bb.cg:                                            ; preds = %._crit_edge.i.i.i
  %i.xm = ashr i32 %i.vt, 6
  %i.xn = and i32 %i.vt, 63
  %i.xo = zext nneg i32 %i.xn to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.xo
  %i.xp = xor i64 %notmask.i36.i.i.i, -1
  %i.xq = sext i32 %i.xm to i64
  %i.xr = getelementptr inbounds [8 x i8], ptr %i.vh, i64 %i.xq
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !125
  %i.xt = and i64 %i.xs, %i.xp
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.cg, %bb.cc
  %.2.i.i = phi i32 [ 0, %bb.cc ], [ %.1.i.i, %bb.cg ]
  %.sink50.i.i.i = phi i64 [ %i.wn, %bb.cc ], [ %i.xt, %bb.cg ]
  %i.xu = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %.sink50.i.i.i)
  %i.xv = trunc nuw nsw i64 %i.xu to i32
  %i.xw = add nsw i32 %.2.i.i, %i.xv
  br label %_ZN8facebook5velox4bits9countBitsEPKmii.exit.i

_ZN8facebook5velox4bits9countBitsEPKmii.exit.i:   ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i, %.lr.ph33.i
  %.3.i.i = phi i32 [ %i.xw, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ], [ 0, %.lr.ph33.i ]
  %i.xx = zext i32 %.3.i.i to i64
  %i.xy = mul i64 %i.us, %i.xx
  %i.xz = sext i32 %i.vs to i64
  %i.ya = add nsw i64 %i.xz, 7
  %i.yb = lshr i64 %i.ya, 3
  %i.yc = add i64 %i.xy, %i.yb
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv37.i
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !123 ; 2 uses
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !124
  %i.yg = trunc i64 %i.yc to i32
  %i.yh = add i32 %i.yf, %i.yg
  store i32 %i.yh, ptr %i.ye, align 4, !tbaa !124
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %i.vo
  br i1 %exitcond41.not.i, label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit", label %.lr.ph33.i, !llvm.loop !604

bb.ch:                                            ; preds = %bb.ch, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.ch ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.ch ]
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv.i
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !115
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !123 ; 2 uses
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !124
  %i.yo = mul i32 %i.yk, %i.ve
  %i.yp = add i32 %i.yn, %i.yo
  store i32 %i.yp, ptr %i.ym, align 4, !tbaa !124
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv.next.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 4
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !115
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !123 ; 2 uses
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !124
  %i.yw = mul i32 %i.ys, %i.ve
  %i.yx = add i32 %i.yv, %i.yw
  store i32 %i.yx, ptr %i.yu, align 4, !tbaa !124
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit853.unr-lcssa", label %bb.ch, !llvm.loop !605

._crit_edge496.loopexit:                          ; preds = %._crit_edge
  %i.yy = ptrtoint ptr %.sroa.10.1.lcssa to i64
  br label %._crit_edge496

._crit_edge496:                                   ; preds = %._crit_edge496.loopexit, %.preheader409
  %.sroa.0165.0.lcssa = phi ptr [ null, %.preheader409 ], [ %.sroa.0165.1.lcssa, %._crit_edge496.loopexit ] ; 7 uses
  %.sroa.10.0.lcssa = phi i64 [ 0, %.preheader409 ], [ %i.yy, %._crit_edge496.loopexit ]
  %.sroa.15.0.lcssa = phi ptr [ null, %.preheader409 ], [ %.sroa.15.1.lcssa, %._crit_edge496.loopexit ] ; 2 uses
  %.sroa.0158.0.lcssa = phi ptr [ null, %.preheader409 ], [ %.sroa.0158.1.lcssa, %._crit_edge496.loopexit ] ; 5 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %.preheader409 ], [ %.sroa.12.1.lcssa, %._crit_edge496.loopexit ] ; 2 uses
  %i.yz = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %.tr, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9RowVectorE, i64 0) #32 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 104
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !215 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 112
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !215 ; 2 uses
  %i.ze = icmp eq ptr %i.zb, %i.zd
  br i1 %i.ze, label %._crit_edge505, label %.lr.ph504

.lr.ph504:                                        ; preds = %._crit_edge496
  %i.zf = ptrtoint ptr %.sroa.0165.0.lcssa to i64
  %i.zg = sub i64 %.sroa.10.0.lcssa, %i.zf
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.0165.0.lcssa, i64 %i.zg
  %i.zi = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.cx

.lr.ph495:                                        ; preds = %.preheader409, %._crit_edge
  %i.zj = phi ptr [ %i.zs, %._crit_edge ], [ %i.f, %.preheader409 ] ; 2 uses
  %i.zk = phi ptr [ %i.zt, %._crit_edge ], [ %i.e, %.preheader409 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader409 ] ; 3 uses
  %.sroa.12.0493 = phi ptr [ %.sroa.12.1.lcssa, %._crit_edge ], [ null, %.preheader409 ] ; 2 uses
  %.sroa.9.0492 = phi ptr [ %.sroa.9.1.lcssa, %._crit_edge ], [ null, %.preheader409 ] ; 2 uses
  %.sroa.0158.0491 = phi ptr [ %.sroa.0158.1.lcssa, %._crit_edge ], [ null, %.preheader409 ] ; 2 uses
  %.sroa.15.0490 = phi ptr [ %.sroa.15.1.lcssa, %._crit_edge ], [ null, %.preheader409 ] ; 2 uses
  %.sroa.10.0489 = phi ptr [ %.sroa.10.1.lcssa, %._crit_edge ], [ null, %.preheader409 ] ; 2 uses
  %.sroa.0165.0488 = phi ptr [ %.sroa.0165.1.lcssa, %._crit_edge ], [ null, %.preheader409 ] ; 2 uses
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.zj, i64 %indvars.iv ; 2 uses
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !116 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 4
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !115 ; 2 uses
  %i.zp = add nsw i32 %i.zo, %i.zm
  %i.zq = icmp sgt i32 %i.zo, 0
  br i1 %i.zq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph495
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  br label %bb.ci

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !112
  %.pre693 = load ptr, ptr %1, align 8, !tbaa !113
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph495
  %i.zs = phi ptr [ %i.zj, %.lr.ph495 ], [ %.pre693, %._crit_edge.loopexit ] ; 2 uses
  %i.zt = phi ptr [ %i.zk, %.lr.ph495 ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0165.1.lcssa = phi ptr [ %.sroa.0165.0488, %.lr.ph495 ], [ %.sroa.0165.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.10.1.lcssa = phi ptr [ %.sroa.10.0489, %.lr.ph495 ], [ %.sroa.10.2, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.15.1.lcssa = phi ptr [ %.sroa.15.0490, %.lr.ph495 ], [ %.sroa.15.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0158.1.lcssa = phi ptr [ %.sroa.0158.0491, %.lr.ph495 ], [ %.sroa.0158.2, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.9.1.lcssa = phi ptr [ %.sroa.9.0492, %.lr.ph495 ], [ %.sroa.9.2, %._crit_edge.loopexit ]
  %.sroa.12.1.lcssa = phi ptr [ %.sroa.12.0493, %.lr.ph495 ], [ %.sroa.12.2, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.zu = ptrtoint ptr %i.zt to i64
  %i.zv = ptrtoint ptr %i.zs to i64
  %i.zw = sub i64 %i.zu, %i.zv
  %i.zx = ashr exact i64 %i.zw, 3
  %i.zy = icmp ugt i64 %i.zx, %indvars.iv.next
  br i1 %i.zy, label %.lr.ph495, label %._crit_edge496.loopexit, !llvm.loop !606

bb.ci:                                            ; preds = %.lr.ph, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit
  %.0481 = phi i32 [ %i.zm, %.lr.ph ], [ %i.abm, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %.sroa.12.1480 = phi ptr [ %.sroa.12.0493, %.lr.ph ], [ %.sroa.12.2, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 8 uses
  %.sroa.9.1479 = phi ptr [ %.sroa.9.0492, %.lr.ph ], [ %.sroa.9.2, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %.sroa.0158.1478 = phi ptr [ %.sroa.0158.0491, %.lr.ph ], [ %.sroa.0158.2, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 10 uses
  %.sroa.15.1477 = phi ptr [ %.sroa.15.0490, %.lr.ph ], [ %.sroa.15.3, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 7 uses
  %.sroa.10.1476 = phi ptr [ %.sroa.10.0489, %.lr.ph ], [ %.sroa.10.2, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %.sroa.0165.1475 = phi ptr [ %.sroa.0165.0488, %.lr.ph ], [ %.sroa.0165.3, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 9 uses
  %i.zz = load ptr, ptr %i.zr, align 8, !tbaa !123 ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !124
  %i.aab = add i32 %i.aaa, 4
  store i32 %i.aab, ptr %i.zz, align 4, !tbaa !124
  %i.aac = load ptr, ptr %.tr, align 8, !tbaa !213
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 32
  %i.aae = load ptr, ptr %i.aad, align 8
  %i.aaf = invoke noundef zeroext i1 %i.aae(ptr noundef nonnull align 8 dereferenceable(94) %.tr, i32 noundef %.0481)
          to label %bb.cj unwind label %.loopexit

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.aaf, label %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.not.i.i = icmp eq ptr %.sroa.10.1476, %.sroa.15.1477
  br i1 %.not.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.sroa.0148.0.insert.ext = zext i32 %.0481 to i64
  %.sroa.0148.0.insert.insert = or disjoint i64 %.sroa.0148.0.insert.ext, 4294967296
  store i64 %.sroa.0148.0.insert.insert, ptr %.sroa.10.1476, align 4, !tbaa !124
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit

bb.cm:                                            ; preds = %bb.ck
  %i.aag = ptrtoint ptr %.sroa.15.1477 to i64
  %i.aah = ptrtoint ptr %.sroa.0165.1475 to i64
  %i.aai = sub i64 %i.aag, %i.aah                 ; 6 uses
  %i.aaj = icmp eq i64 %i.aai, 9223372036854775800
  br i1 %i.aaj, label %bb.cn, label %_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.170) #40
          to label %.noexc unwind label %.loopexit.split-lp405

.noexc:                                           ; preds = %bb.cn
  unreachable

_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cm
  %i.aak = ashr exact i64 %i.aai, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aak, i64 1)
  %i.aal = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aak ; 2 uses
  %i.aam = icmp ult i64 %i.aal, %i.aak
  %i.aan = tail call i64 @llvm.umin.i64(i64 %i.aal, i64 1152921504606846975)
  %i.aao = select i1 %i.aam, i64 1152921504606846975, i64 %i.aan ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aap = shl nuw nsw i64 %i.aao, 3
  %i.aaq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aap) #42
          to label %.noexc62 unwind label %.loopexit404 ; 4 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aar = getelementptr inbounds i8, ptr %i.aaq, i64 %i.aai ; 2 uses
  %.sroa.0148.0.insert.ext150 = zext i32 %.0481 to i64
  %.sroa.0148.0.insert.insert152 = or disjoint i64 %.sroa.0148.0.insert.ext150, 4294967296
  store i64 %.sroa.0148.0.insert.insert152, ptr %i.aar, align 4, !tbaa !124
  %i.aas = icmp sgt i64 %i.aai, 0
  br i1 %i.aas, label %bb.co, label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.co:                                            ; preds = %.noexc62
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aaq, ptr align 4 %.sroa.0165.1475, i64 %i.aai, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.co, %.noexc62
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0165.1475, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0165.1475, i64 noundef %i.aai) #41
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.cp, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %i.aaq, i64 %i.aao
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.cl
  %.sroa.0165.5 = phi ptr [ %i.aaq, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.0165.1475, %bb.cl ] ; 4 uses
  %.pn362 = phi ptr [ %i.aar, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.10.1476, %bb.cl ]
  %.sroa.15.5 = phi ptr [ %i.aat, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.15.1477, %bb.cl ] ; 4 uses
  %.sroa.10.3 = getelementptr inbounds nuw i8, ptr %.pn362, i64 8 ; 2 uses
  %.not.i63 = icmp eq ptr %.sroa.9.1479, %.sroa.12.1480
  br i1 %.not.i63, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit
  %i.aau = load ptr, ptr %i.zr, align 8, !tbaa !123
  store ptr %i.aau, ptr %.sroa.9.1479, align 8, !tbaa !123
  %i.aav = getelementptr inbounds nuw i8, ptr %.sroa.9.1479, i64 8
  br label %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit

bb.cr:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit
  %i.aaw = ptrtoint ptr %.sroa.12.1480 to i64
  %i.aax = ptrtoint ptr %.sroa.0158.1478 to i64
  %i.aay = sub i64 %i.aaw, %i.aax                 ; 6 uses
  %i.aaz = icmp eq i64 %i.aay, 9223372036854775800
  br i1 %i.aaz, label %bb.cs, label %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.170) #40
          to label %.noexc65 unwind label %.loopexit.split-lp

.noexc65:                                         ; preds = %bb.cs
  unreachable

_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cr
  %i.aba = ashr exact i64 %i.aay, 3               ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aba, i64 1)
  %i.abb = add nsw i64 %.sroa.speculated.i.i.i, %i.aba ; 2 uses
  %i.abc = icmp ult i64 %i.abb, %i.aba
  %i.abd = tail call i64 @llvm.umin.i64(i64 %i.abb, i64 1152921504606846975)
  %i.abe = select i1 %i.abc, i64 1152921504606846975, i64 %i.abd ; 3 uses
  %.not.i.i.i64 = icmp ne i64 %i.abe, 0
  tail call void @llvm.assume(i1 %.not.i.i.i64)
  %i.abf = shl nuw nsw i64 %i.abe, 3
  %i.abg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abf) #42
          to label %.noexc66 unwind label %.loopexit ; 4 uses

.noexc66:                                         ; preds = %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.abh = getelementptr inbounds i8, ptr %i.abg, i64 %i.aay ; 2 uses
  %i.abi = load ptr, ptr %i.zr, align 8, !tbaa !123
  store ptr %i.abi, ptr %i.abh, align 8, !tbaa !123
  %i.abj = icmp sgt i64 %i.aay, 0
  br i1 %i.abj, label %bb.ct, label %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.ct:                                            ; preds = %.noexc66
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.abg, ptr align 8 %.sroa.0158.1478, i64 %i.aay, i1 false)
  br label %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.ct, %.noexc66
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0158.1478, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.1478, i64 noundef %i.aay) #41
  br label %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.cu, %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.abe
  br label %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit

.loopexit:                                        ; preds = %bb.ci, %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0165.2.ph = phi ptr [ %.sroa.0165.1475, %bb.ci ], [ %.sroa.0165.5, %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.15.2.ph = phi ptr [ %.sroa.15.1477, %bb.ci ], [ %.sroa.15.5, %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

.loopexit.split-lp:                               ; preds = %bb.cs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

.loopexit404:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit406 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

.loopexit.split-lp405:                            ; preds = %bb.cn
  %lpad.loopexit.split-lp407 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit:     ; preds = %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.cq, %bb.cj
  %.sroa.0165.3 = phi ptr [ %.sroa.0165.1475, %bb.cj ], [ %.sroa.0165.5, %bb.cq ], [ %.sroa.0165.5, %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.1476, %bb.cj ], [ %.sroa.10.3, %bb.cq ], [ %.sroa.10.3, %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.1477, %bb.cj ], [ %.sroa.15.5, %bb.cq ], [ %.sroa.15.5, %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.0158.2 = phi ptr [ %.sroa.0158.1478, %bb.cj ], [ %.sroa.0158.1478, %bb.cq ], [ %i.abg, %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.9.2 = phi ptr [ %.sroa.9.1479, %bb.cj ], [ %i.aav, %bb.cq ], [ %i.abk, %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.12.2 = phi ptr [ %.sroa.12.1480, %bb.cj ], [ %.sroa.12.1480, %bb.cq ], [ %i.abl, %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %i.abm = add nsw i32 %.0481, 1                  ; 2 uses
  %i.abn = icmp slt i32 %i.abm, %i.zp
  br i1 %i.abn, label %bb.ci, label %._crit_edge.loopexit, !llvm.loop !607

._crit_edge505:                                   ; preds = %bb.db, %._crit_edge496
  %.not.i.i.i67 = icmp eq ptr %.sroa.0158.0.lcssa, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge505
  %i.abo = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.abp = ptrtoint ptr %.sroa.0158.0.lcssa to i64
  %i.abq = sub i64 %i.abo, %i.abp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.0.lcssa, i64 noundef %i.abq) #41
  br label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit

_ZNSt6vectorIPiSaIS0_EED2Ev.exit:                 ; preds = %._crit_edge505, %bb.cv
  %.not.i.i.i68 = icmp eq ptr %.sroa.0165.0.lcssa, null
  br i1 %.not.i.i.i68, label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit", label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIPiSaIS0_EED2Ev.exit
  %i.abr = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.abs = ptrtoint ptr %.sroa.0165.0.lcssa to i64
  %i.abt = sub i64 %i.abr, %i.abs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0165.0.lcssa, i64 noundef %i.abt) #41
  br label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit"

bb.cx:                                            ; preds = %.lr.ph504, %bb.db
  %.sroa.0145.0502 = phi ptr [ %i.zb, %.lr.ph504 ], [ %i.abw, %bb.db ] ; 2 uses
  %i.abu = load ptr, ptr %.sroa.0145.0502, align 8, !tbaa !135 ; 2 uses
  %.not = icmp eq ptr %i.abu, null
  br i1 %.not, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store ptr %.sroa.0165.0.lcssa, ptr %9, align 8, !tbaa !113
  store ptr %i.zh, ptr %i.zi, align 8, !tbaa !112
  invoke void @_ZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchE(ptr noundef nonnull %i.abu, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %.sroa.0158.0.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.abv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz, %bb.cx
  %i.abw = getelementptr inbounds nuw i8, ptr %.sroa.0145.0502, i64 16 ; 2 uses
  %i.abx = icmp eq ptr %i.abw, %i.zd
  br i1 %i.abx, label %._crit_edge505, label %bb.cx

bb.dc:                                            ; preds = %.loopexit404, %.loopexit.split-lp405, %.loopexit, %.loopexit.split-lp, %bb.da
  %.sroa.0165.4 = phi ptr [ %.sroa.0165.5, %.loopexit.split-lp ], [ %.sroa.0165.0.lcssa, %bb.da ], [ %.sroa.0165.2.ph, %.loopexit ], [ %.sroa.0165.1475, %.loopexit404 ], [ %.sroa.0165.1475, %.loopexit.split-lp405 ] ; 3 uses
  %.sroa.15.4 = phi ptr [ %.sroa.15.5, %.loopexit.split-lp ], [ %.sroa.15.0.lcssa, %bb.da ], [ %.sroa.15.2.ph, %.loopexit ], [ %.sroa.15.1477, %.loopexit404 ], [ %.sroa.15.1477, %.loopexit.split-lp405 ]
  %.sroa.0158.3 = phi ptr [ %.sroa.0158.1478, %.loopexit.split-lp ], [ %.sroa.0158.0.lcssa, %bb.da ], [ %.sroa.0158.1478, %.loopexit ], [ %.sroa.0158.1478, %.loopexit404 ], [ %.sroa.0158.1478, %.loopexit.split-lp405 ] ; 3 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.1480, %.loopexit.split-lp ], [ %.sroa.12.0.lcssa, %bb.da ], [ %.sroa.12.1480, %.loopexit ], [ %.sroa.12.1480, %.loopexit404 ], [ %.sroa.12.1480, %.loopexit.split-lp405 ]
  %.pn57.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.abv, %bb.da ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit406, %.loopexit404 ], [ %lpad.loopexit.split-lp407, %.loopexit.split-lp405 ] ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %.sroa.0158.3, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit70, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aby = ptrtoint ptr %.sroa.12.3 to i64
  %i.abz = ptrtoint ptr %.sroa.0158.3 to i64
  %i.aca = sub i64 %i.aby, %i.abz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.3, i64 noundef %i.aca) #41
  br label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit70

_ZNSt6vectorIPiSaIS0_EED2Ev.exit70:               ; preds = %bb.dc, %bb.dd
  %.not.i.i.i71 = icmp eq ptr %.sroa.0165.4, null
  br i1 %.not.i.i.i71, label %common.resume, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIPiSaIS0_EED2Ev.exit70
  %i.acb = ptrtoint ptr %.sroa.15.4 to i64
  %i.acc = ptrtoint ptr %.sroa.0165.4 to i64
  %i.acd = sub i64 %i.acb, %i.acc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0165.4, i64 noundef %i.acd) #41
  br label %common.resume

bb.df:                                            ; preds = %tailrecurse
  %i.ace = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %.tr, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9MapVectorE, i64 0) #32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchE:bb.a
  %lcmp.mod906.not = icmp eq i64 %i.ajr, 0
  br i1 %lcmp.mod906.not, label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit", label %.epil.preheader903

.epil.preheader903:                               ; preds = %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit848.unr-lcssa.a", %.lr.ph514
  %indvars.iv627.epil.init = phi i64 [ 0, %.lr.ph514 ], [ %indvars.iv.next628.1, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit848.unr-lcssa.a" ] ; 2 uses
  %lcmp.mod907 = trunc i64 %i.ox to i1
  tail call void @llvm.assume(i1 %lcmp.mod907)
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv627.epil.init
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 4
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !115
  %i.ajv = shl i32 %i.aju, %i.pb
  %i.ajw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv627.epil.init
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !123 ; 2 uses
  %i.ajy = load i32, ptr %i.ajx, align 4, !tbaa !124
  %i.ajz = add nsw i32 %i.ajy, %i.ajv
  store i32 %i.ajz, ptr %i.ajx, align 4, !tbaa !124
  br label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit"

"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit849.unr-lcssa.a": ; preds = %.lr.ph511
  %lcmp.mod899.not = icmp eq i64 %xtraiter897, 0
  br i1 %lcmp.mod899.not, label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit", label %.lr.ph511.epil.preheader

.lr.ph511.epil.preheader:                         ; preds = %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit849.unr-lcssa.a", %.lr.ph511.preheader
  %indvars.iv622.epil.init = phi i64 [ 0, %.lr.ph511.preheader ], [ %indvars.iv.next623.3, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit849.unr-lcssa.a" ]
  %lcmp.mod900 = icmp ne i64 %xtraiter897, 0
  tail call void @llvm.assume(i1 %lcmp.mod900)
  br label %.lr.ph511.epil

.lr.ph511.epil:                                   ; preds = %.lr.ph511.epil, %.lr.ph511.epil.preheader
  %indvars.iv622.epil = phi i64 [ %indvars.iv622.epil.init, %.lr.ph511.epil.preheader ], [ %indvars.iv.next623.epil, %.lr.ph511.epil ] ; 3 uses
  %epil.iter898 = phi i64 [ 0, %.lr.ph511.epil.preheader ], [ %epil.iter898.next, %.lr.ph511.epil ]
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv622.epil
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 4
  %i.akc = load i32, ptr %i.akb, align 4, !tbaa !115
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv622.epil
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !123 ; 2 uses
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !124
  %i.akg = add nsw i32 %i.akf, %i.akc
  store i32 %i.akg, ptr %i.ake, align 4, !tbaa !124
  %indvars.iv.next623.epil = add nuw nsw i64 %indvars.iv622.epil, 1
  %epil.iter898.next = add i64 %epil.iter898, 1   ; 2 uses
  %epil.iter898.cmp.not = icmp eq i64 %epil.iter898.next, %xtraiter897
  br i1 %epil.iter898.cmp.not, label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit", label %.lr.ph511.epil, !llvm.loop !613

"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit850.unr-lcssa.a": ; preds = %.lr.ph509
  %lcmp.mod893.not = icmp eq i64 %xtraiter891, 0
  br i1 %lcmp.mod893.not, label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit", label %.lr.ph509.epil.preheader

.lr.ph509.epil.preheader:                         ; preds = %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit850.unr-lcssa.a", %.lr.ph509.preheader
  %indvars.iv617.epil.init = phi i64 [ 0, %.lr.ph509.preheader ], [ %indvars.iv.next618.3, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit850.unr-lcssa.a" ]
  %lcmp.mod894 = icmp ne i64 %xtraiter891, 0
  tail call void @llvm.assume(i1 %lcmp.mod894)
  br label %.lr.ph509.epil

.lr.ph509.epil:                                   ; preds = %.lr.ph509.epil, %.lr.ph509.epil.preheader
  %indvars.iv617.epil = phi i64 [ %indvars.iv617.epil.init, %.lr.ph509.epil.preheader ], [ %indvars.iv.next618.epil, %.lr.ph509.epil ] ; 3 uses
  %epil.iter892 = phi i64 [ 0, %.lr.ph509.epil.preheader ], [ %epil.iter892.next, %.lr.ph509.epil ]
  %i.akh = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %indvars.iv617.epil
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 4
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !115
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv617.epil
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !123 ; 2 uses
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !124
  %i.akn = add nsw i32 %i.akm, %i.akj
  store i32 %i.akn, ptr %i.akl, align 4, !tbaa !124
  %indvars.iv.next618.epil = add nuw nsw i64 %indvars.iv617.epil, 1
  %epil.iter892.next = add i64 %epil.iter892, 1   ; 2 uses
  %epil.iter892.cmp.not = icmp eq i64 %epil.iter892.next, %xtraiter891
  br i1 %epil.iter892.cmp.not, label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit", label %.lr.ph509.epil, !llvm.loop !614

"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit851.unr-lcssa": ; preds = %.lr.ph507
  %lcmp.mod887.not = icmp eq i64 %xtraiter886, 0
  br i1 %lcmp.mod887.not, label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit", label %.lr.ph507.epil.preheader

.lr.ph507.epil.preheader:                         ; preds = %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit851.unr-lcssa", %.lr.ph507.preheader
  %indvars.iv614.epil.init = phi i64 [ 0, %.lr.ph507.preheader ], [ %indvars.iv.next615.3, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit851.unr-lcssa" ]
  %lcmp.mod888 = icmp ne i64 %xtraiter886, 0
  tail call void @llvm.assume(i1 %lcmp.mod888)
  br label %.lr.ph507.epil

.lr.ph507.epil:                                   ; preds = %.lr.ph507.epil, %.lr.ph507.epil.preheader
  %indvars.iv614.epil = phi i64 [ %indvars.iv614.epil.init, %.lr.ph507.epil.preheader ], [ %indvars.iv.next615.epil, %.lr.ph507.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph507.epil.preheader ], [ %epil.iter.next, %.lr.ph507.epil ]
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv614.epil
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 4
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !115
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv614.epil
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !123 ; 2 uses
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !124
  %i.aku = add nsw i32 %i.akt, %i.akq
  store i32 %i.aku, ptr %i.aks, align 4, !tbaa !124
  %indvars.iv.next615.epil = add nuw nsw i64 %indvars.iv614.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter886
  br i1 %epil.iter.cmp.not, label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit", label %.lr.ph507.epil, !llvm.loop !615

"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit853.unr-lcssa": ; preds = %bb.ch
  %i.akv = and i64 %i.vc, 8
  %lcmp.mod.not = icmp eq i64 %i.akv, 0
  br i1 %lcmp.mod.not, label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit853.unr-lcssa", %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit853.unr-lcssa" ] ; 2 uses
  %lcmp.mod885 = trunc i64 %i.vd to i1
  tail call void @llvm.assume(i1 %lcmp.mod885)
  %i.akw = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv.i.epil.init
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 4
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !115
  %i.akz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !123 ; 2 uses
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !124
  %i.alc = mul i32 %i.aky, %i.ve
  %i.ald = add i32 %i.alb, %i.alc
  store i32 %i.ald, ptr %i.ala, align 4, !tbaa !124
  br label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit"

"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit": ; preds = %.epil.preheader, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit853.unr-lcssa", %_ZN8facebook5velox4bits9countBitsEPKmii.exit.i, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit851.unr-lcssa", %.lr.ph507.epil, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit850.unr-lcssa.a", %.lr.ph509.epil, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit849.unr-lcssa.a", %.lr.ph511.epil, %.epil.preheader903, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit848.unr-lcssa.a", %.lr.ph517.epil.preheader, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit847.unr-lcssa.a", %.lr.ph520.epil.preheader, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit846.unr-lcssa.a", %.epil.preheader922, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit845.unr-lcssa.a", %.epil.preheader929, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit844.unr-lcssa.a", %.epil.preheader936, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit843.unr-lcssa.a", %.epil.preheader943, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit842.unr-lcssa.a", %.epil.preheader950, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit841.unr-lcssa.a", %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit840.unr-lcssa.a", %.lr.ph537.epil, %.epil.preheader963, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit839.unr-lcssa.a", %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit838.unr-lcssa.a", %.lr.ph542.epil, %.epil.preheader976, %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit837.unr-lcssa.a", %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchEENK3$_0clEv.exit.loopexit.unr-lcssa", %.lr.ph547.epil, %.preheader400, %.preheader398, %.preheader396, %bb.bn, %bb.bk, %bb.bf, %bb.az, %bb.av, %bb.ar, %bb.an, %bb.aj, %.preheader386, %bb.ad, %.preheader383, %bb.x, %.preheader, %bb.cw, %_ZNSt6vectorIPiSaIS0_EED2Ev.exit, %bb.ca, %.preheader.i, %bb.u, %bb.w, %bb.bu, %bb.bs, %bb.bq, %bb.bm, %bb.bh, %bb.bc, %bb.ay, %bb.au, %bb.aq, %bb.am, %bb.ai, %bb.ag, %bb.ac, %bb.aa, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EED2Ev.exit84, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EED2Ev.exit76, %bb.by
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox10serializer6presto6detail29estimateWrapperSerializedSizeERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiPKNS0_10BaseVectorERNS0_7ScratchE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::Range", align 8      ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !213
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(94) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112  ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !113    ; 2 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %._crit_edge180, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.a, %._crit_edge
  %i.h = phi ptr [ %i.bl, %._crit_edge ], [ %i.g, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %i.bm, %._crit_edge ], [ %i.f, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %.sroa.12.0176 = phi ptr [ %.sroa.12.1.lcssa, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  %.sroa.9.0175 = phi ptr [ %.sroa.9.1.lcssa, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  %.sroa.055.0174 = phi ptr [ %.sroa.055.1.lcssa, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  %.sroa.14.0173 = phi ptr [ %.sroa.14.1.lcssa, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  %.sroa.966.0172 = phi ptr [ %.sroa.966.1.lcssa, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  %.sroa.062.0171 = phi ptr [ %.sroa.062.1.lcssa, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !116  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !115  ; 2 uses
  %i.n = add nsw i32 %i.m, %i.k
  %i.o = icmp sgt i32 %i.m, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph179
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  br label %bb.b

.loopexit:                                        ; preds = %bb.b, %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.062.2.ph = phi ptr [ %.sroa.062.1157, %bb.b ], [ %.sroa.062.5, %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.14.2.ph = phi ptr [ %.sroa.14.1159, %bb.b ], [ %.sroa.14.5, %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit
  %.0164 = phi i32 [ %i.k, %.lr.ph ], [ %i.bf, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 3 uses
  %.026163 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 3 uses
  %.sroa.12.1162 = phi ptr [ %.sroa.12.0176, %.lr.ph ], [ %.sroa.12.2, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 8 uses
  %.sroa.9.1161 = phi ptr [ %.sroa.9.0175, %.lr.ph ], [ %.sroa.9.2, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %.sroa.055.1160 = phi ptr [ %.sroa.055.0174, %.lr.ph ], [ %.sroa.055.2, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 10 uses
  %.sroa.14.1159 = phi ptr [ %.sroa.14.0173, %.lr.ph ], [ %.sroa.14.3, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 7 uses
  %.sroa.966.1158 = phi ptr [ %.sroa.966.0172, %.lr.ph ], [ %.sroa.966.2, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %.sroa.062.1157 = phi ptr [ %.sroa.062.0171, %.lr.ph ], [ %.sroa.062.3, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ] ; 9 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !213
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(94) %2, i32 noundef %.0164)
          to label %bb.c unwind label %.loopexit

bb.c:                                             ; preds = %bb.b
  br i1 %i.t, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %2, align 8, !tbaa !213
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(94) %2, i32 noundef %.0164)
          to label %bb.e unwind label %.loopexit98 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq ptr %.sroa.966.1158, %.sroa.14.1159
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.insert.ext = zext i32 %i.x to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4294967296
  store i64 %.sroa.0.0.insert.insert, ptr %.sroa.966.1158, align 4, !tbaa !124
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.y = ptrtoint ptr %.sroa.14.1159 to i64
  %i.z = ptrtoint ptr %.sroa.062.1157 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 6 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.170) #40
          to label %.noexc unwind label %.loopexit.split-lp99

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #42
          to label %.noexc37 unwind label %.loopexit98 ; 4 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 2 uses
  %.sroa.0.0.insert.ext47 = zext i32 %i.x to i64
  %.sroa.0.0.insert.insert49 = or disjoint i64 %.sroa.0.0.insert.ext47, 4294967296
  store i64 %.sroa.0.0.insert.insert49, ptr %i.aj, align 4, !tbaa !124
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.i, label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc37
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %.sroa.062.1157, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.i, %.noexc37
  %.not.i17.i.i.i = icmp eq ptr %.sroa.062.1157, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.062.1157, i64 noundef %i.aa) #41
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.f
  %.sroa.062.5 = phi ptr [ %i.ai, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.062.1157, %bb.f ] ; 4 uses
  %.pn = phi ptr [ %i.aj, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.966.1158, %bb.f ]
  %.sroa.14.5 = phi ptr [ %i.al, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.14.1159, %bb.f ] ; 4 uses
  %.sroa.966.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.9.1161, %.sroa.12.1162
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !123
  store ptr %i.am, ptr %.sroa.9.1161, align 8, !tbaa !123
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.9.1161, i64 8
  br label %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit

bb.l:                                             ; preds = %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit
  %i.ao = ptrtoint ptr %.sroa.12.1162 to i64
  %i.ap = ptrtoint ptr %.sroa.055.1160 to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 6 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.m, label %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.170) #40
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #42
          to label %.noexc39 unwind label %.loopexit ; 4 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !123
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !123
  %i.bb = icmp sgt i64 %i.aq, 0
  br i1 %i.bb, label %bb.n, label %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.n:                                             ; preds = %.noexc39
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %.sroa.055.1160, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.n, %.noexc39
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.055.1160, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.1160, i64 noundef %i.aq) #41
  br label %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  br label %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit

.loopexit98:                                      ; preds = %bb.d, %_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit100 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp99:                             ; preds = %bb.h
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.p:                                             ; preds = %bb.c
  %i.be = add nsw i32 %.026163, 1
  br label %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit:     ; preds = %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.k, %bb.p
  %.sroa.062.3 = phi ptr [ %.sroa.062.1157, %bb.p ], [ %.sroa.062.5, %bb.k ], [ %.sroa.062.5, %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.966.2 = phi ptr [ %.sroa.966.1158, %bb.p ], [ %.sroa.966.3, %bb.k ], [ %.sroa.966.3, %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.14.3 = phi ptr [ %.sroa.14.1159, %bb.p ], [ %.sroa.14.5, %bb.k ], [ %.sroa.14.5, %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.055.2 = phi ptr [ %.sroa.055.1160, %bb.p ], [ %.sroa.055.1160, %bb.k ], [ %i.ay, %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.9.2 = phi ptr [ %.sroa.9.1161, %bb.p ], [ %i.an, %bb.k ], [ %i.bc, %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.12.2 = phi ptr [ %.sroa.12.1162, %bb.p ], [ %.sroa.12.1162, %bb.k ], [ %i.bd, %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %.1 = phi i32 [ %i.be, %bb.p ], [ %.026163, %bb.k ], [ %.026163, %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %i.bf = add nsw i32 %.0164, 1                   ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.n
  br i1 %i.bg, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !619

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !112
  %.pre203 = load ptr, ptr %0, align 8, !tbaa !113
  %i.bh = sext i32 %.1 to i64
  %i.bi = add nsw i64 %i.bh, 7
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = trunc i64 %i.bj to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph179
  %i.bl = phi ptr [ %i.h, %.lr.ph179 ], [ %.pre203, %._crit_edge.loopexit ] ; 2 uses
  %i.bm = phi ptr [ %i.i, %.lr.ph179 ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.062.1.lcssa = phi ptr [ %.sroa.062.0171, %.lr.ph179 ], [ %.sroa.062.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.966.1.lcssa = phi ptr [ %.sroa.966.0172, %.lr.ph179 ], [ %.sroa.966.2, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.14.1.lcssa = phi ptr [ %.sroa.14.0173, %.lr.ph179 ], [ %.sroa.14.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.055.1.lcssa = phi ptr [ %.sroa.055.0174, %.lr.ph179 ], [ %.sroa.055.2, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.9.1.lcssa = phi ptr [ %.sroa.9.0175, %.lr.ph179 ], [ %.sroa.9.2, %._crit_edge.loopexit ]
  %.sroa.12.1.lcssa = phi ptr [ %.sroa.12.0176, %.lr.ph179 ], [ %.sroa.12.2, %._crit_edge.loopexit ] ; 2 uses
  %.026.lcssa = phi i32 [ 0, %.lr.ph179 ], [ %i.bk, %._crit_edge.loopexit ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !123 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !124
  %i.bq = add i32 %i.bp, %.026.lcssa
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !124
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = ptrtoint ptr %i.bm to i64
  %i.bs = ptrtoint ptr %i.bl to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3
  %i.bv = icmp ugt i64 %i.bu, %indvars.iv.next
  br i1 %i.bv, label %.lr.ph179, label %._crit_edge180.loopexit, !llvm.loop !620

._crit_edge180.loopexit:                          ; preds = %._crit_edge
  %i.bw = ptrtoint ptr %.sroa.966.1.lcssa to i64
  br label %._crit_edge180

._crit_edge180:                                   ; preds = %._crit_edge180.loopexit, %bb.a
  %.sroa.062.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.062.1.lcssa, %._crit_edge180.loopexit ] ; 6 uses
  %.sroa.966.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.bw, %._crit_edge180.loopexit ]
  %.sroa.14.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.14.1.lcssa, %._crit_edge180.loopexit ] ; 2 uses
  %.sroa.055.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.055.1.lcssa, %._crit_edge180.loopexit ] ; 5 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.12.1.lcssa, %._crit_edge180.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.bx = ptrtoint ptr %.sroa.062.0.lcssa to i64  ; 2 uses
  %i.by = sub i64 %.sroa.966.0.lcssa, %i.bx
  store ptr %.sroa.062.0.lcssa, ptr %4, align 8, !tbaa !113
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.062.0.lcssa, i64 %i.by
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !112
  invoke void @_ZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKNS0_10IndexRangeEEEPPiRNS0_7ScratchE(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.sroa.055.0.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %._crit_edge180
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %.not.i.i.i40 = icmp eq ptr %.sroa.055.0.lcssa, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.cc = ptrtoint ptr %.sroa.055.0.lcssa to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.0.lcssa, i64 noundef %i.cd) #41
  br label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit

_ZNSt6vectorIPiSaIS0_EED2Ev.exit:                 ; preds = %bb.q, %bb.r
  %.not.i.i.i41 = icmp eq ptr %.sroa.062.0.lcssa, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPiSaIS0_EED2Ev.exit
  %i.ce = ptrtoint ptr %.sroa.14.0.lcssa to i64
  %i.cf = sub i64 %i.ce, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.062.0.lcssa, i64 noundef %i.cf) #41
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPiSaIS0_EED2Ev.exit, %bb.s
  ret void

bb.t:                                             ; preds = %._crit_edge180
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.u

bb.u:                                             ; preds = %.loopexit98, %.loopexit.split-lp99, %.loopexit, %.loopexit.split-lp, %bb.t
  %.sroa.062.4 = phi ptr [ %.sroa.062.5, %.loopexit.split-lp ], [ %.sroa.062.0.lcssa, %bb.t ], [ %.sroa.062.2.ph, %.loopexit ], [ %.sroa.062.1157, %.loopexit98 ], [ %.sroa.062.1157, %.loopexit.split-lp99 ] ; 3 uses
  %.sroa.14.4 = phi ptr [ %.sroa.14.5, %.loopexit.split-lp ], [ %.sroa.14.0.lcssa, %bb.t ], [ %.sroa.14.2.ph, %.loopexit ], [ %.sroa.14.1159, %.loopexit98 ], [ %.sroa.14.1159, %.loopexit.split-lp99 ]
  %.sroa.055.3 = phi ptr [ %.sroa.055.1160, %.loopexit.split-lp ], [ %.sroa.055.0.lcssa, %bb.t ], [ %.sroa.055.1160, %.loopexit ], [ %.sroa.055.1160, %.loopexit98 ], [ %.sroa.055.1160, %.loopexit.split-lp99 ] ; 3 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.1162, %.loopexit.split-lp ], [ %.sroa.12.0.lcssa, %bb.t ], [ %.sroa.12.1162, %.loopexit ], [ %.sroa.12.1162, %.loopexit98 ], [ %.sroa.12.1162, %.loopexit.split-lp99 ]
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.cg, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit100, %.loopexit98 ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp99 ]
  %.not.i.i.i42 = icmp eq ptr %.sroa.055.3, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit43, label %.thread81

.thread81:                                        ; preds = %bb.u
  %i.ch = ptrtoint ptr %.sroa.12.3 to i64
  %i.ci = ptrtoint ptr %.sroa.055.3 to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.3, i64 noundef %i.cj) #41
  br label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit43

_ZNSt6vectorIPiSaIS0_EED2Ev.exit43:               ; preds = %bb.u, %.thread81
  %.not.i.i.i44 = icmp eq ptr %.sroa.062.4, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EED2Ev.exit45, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIPiSaIS0_EED2Ev.exit43
  %i.ck = ptrtoint ptr %.sroa.14.4 to i64
  %i.cl = ptrtoint ptr %.sroa.062.4 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.062.4, i64 noundef %i.cm) #41
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EED2Ev.exit45

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EED2Ev.exit45: ; preds = %_ZNSt6vectorIPiSaIS0_EED2Ev.exit43, %bb.v
  resume { ptr, i32 } %.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox10serializer6presto6detail20expandRepeatedRangesEPKNS0_10BaseVectorEPKiS8_RKN5folly5RangeIPKNS0_10IndexRangeEEEPPiPSt6vectorISB_SaISB_EEPSJ_ISH_SaISH_EE(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.c = load ptr, ptr %3, align 8, !tbaa !113    ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  br label %bb.b

._crit_edge47:                                    ; preds = %.critedge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph46, %.critedge
  %i.h = phi ptr [ %i.c, %.lr.ph46 ], [ %i.cj, %.critedge ] ; 2 uses
  %indvars.iv48 = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next49, %.critedge ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !115  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.m = load i32, ptr %i.i, align 4, !tbaa !116  ; 2 uses
  %i.n = add nsw i32 %i.k, %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv48 ; 4 uses
  %i.p = sext i32 %i.m to i64
  %i.q = sext i32 %i.n to i64                     ; 2 uses
  br label %.outer

.outer:                                           ; preds = %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit.thread, %.lr.ph
  %indvars.iv.ph = phi i64 [ %indvars.iv.next60, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit.thread ], [ %i.p, %.lr.ph ]
  %.02842.ph = phi i1 [ true, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit.thread ], [ false, %.lr.ph ]
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !113   ; 2 uses
  br i1 %.02842.ph, label %bb.o, label %.critedge

bb.c:                                             ; preds = %.outer, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit ], [ %indvars.iv.ph, %.outer ] ; 5 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !213
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = trunc nsw i64 %indvars.iv to i32
  %i.v = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.u)
  br i1 %i.v, label %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !123  ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !124
  %i.y = add i32 %i.x, 4
  store i32 %i.y, ptr %i.w, align 4, !tbaa !124
  %i.z = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !124 ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !124 ; 2 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !221 ; 4 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !227
  %.not.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.5.0.insert.ext = zext i32 %i.ac to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.aa to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.ad, align 4, !tbaa !124
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.af, ptr %i.d, align 8, !tbaa !221
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %5, align 8, !tbaa !220   ; 4 uses
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.g, label %_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.170) #40
  unreachable

_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #42 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  %.sroa.5.0.insert.ext36 = zext i32 %i.ac to i64
  %.sroa.5.0.insert.shift37 = shl nuw i64 %.sroa.5.0.insert.ext36, 32
  %.sroa.0.0.insert.ext32 = zext i32 %i.aa to i64
  %.sroa.0.0.insert.insert34 = or disjoint i64 %.sroa.5.0.insert.shift37, %.sroa.0.0.insert.ext32
  store i64 %.sroa.0.0.insert.insert34, ptr %i.as, align 4, !tbaa !124
  %i.at = icmp sgt i64 %i.aj, 0
  br i1 %i.at, label %bb.h, label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 4 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !227
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ax) #41
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !220
  store ptr %i.au, ptr %i.d, align 8, !tbaa !221
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !227
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.e, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !623 ; 4 uses
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !226
  %.not.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !123
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !123
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bc, ptr %i.f, align 8, !tbaa !623
  br label %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit

bb.k:                                             ; preds = %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE9push_backEOS2_.exit
  %i.bd = load ptr, ptr %6, align 8, !tbaa !225   ; 4 uses
  %i.be = ptrtoint ptr %i.az to i64
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 5 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.l, label %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.170) #40
  unreachable

_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bi = ashr exact i64 %i.bg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 1152921504606846975)
  %i.bm = select i1 %i.bk, i64 1152921504606846975, i64 %i.bl ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #42 ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %i.bg ; 2 uses
  %i.bq = load ptr, ptr %i.o, align 8, !tbaa !123
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !123
  %i.br = icmp sgt i64 %i.bg, 0
  br i1 %i.br, label %bb.m, label %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 8 %i.bd, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIPiSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !226
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bv) #41
  br label %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPiSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.bo, ptr %6, align 8, !tbaa !225
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !623
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.bw, ptr %i.g, align 8, !tbaa !226
  br label %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit:     ; preds = %_ZNSt6vectorIPiSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bx = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.bx, label %bb.c, label %._crit_edge, !llvm.loop !621

_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit.thread: ; preds = %bb.c
  %indvars.iv.next60 = add nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = icmp slt i64 %indvars.iv.next60, %i.q
  br i1 %i.by, label %.outer, label %._crit_edge.thread, !llvm.loop !621

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIPiSaIS0_EE9push_backERKS0_.exit.thread
  %.pre63 = load ptr, ptr %3, align 8, !tbaa !113
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.pre64 = phi ptr [ %.pre63, %._crit_edge.thread ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.pre64, i64 %indvars.iv48
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !115
  %i.cc = sext i32 %i.cb to i64
  %i.cd = add nsw i64 %i.cc, 7
  %i.ce = lshr i64 %i.cd, 3
  %i.cf = load ptr, ptr %i.o, align 8, !tbaa !123 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !124
  %i.ch = trunc i64 %i.ce to i32
  %i.ci = add i32 %i.cg, %i.ch
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !124
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.o, %._crit_edge
  %i.cj = phi ptr [ %i.h, %bb.b ], [ %.pre64, %bb.o ], [ %.pre, %._crit_edge ] ; 2 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 3
  %i.cp = icmp ugt i64 %i.co, %indvars.iv.next49
  br i1 %i.cp, label %bb.b, label %._crit_edge47, !llvm.loop !622
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKiEEPPiRNS0_7ScratchE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.folly::Range.52", align 8   ; 5 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.folly::Range.52", align 8   ; 5 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.642", align 16 ; 5 uses
  %7 = alloca %"class.facebook::velox::ScratchPtr", align 8 ; 10 uses
  %8 = alloca %"class.facebook::velox::ScratchPtr.55", align 8 ; 10 uses
  %9 = alloca %"class.folly::Range.52", align 8   ; 6 uses
  %10 = alloca %class.anon.639, align 8           ; 7 uses
  %i.g = alloca ptr, align 8                      ; 11 uses
  %i.h = alloca ptr, align 8                      ; 10 uses
  %11 = alloca %class.anon.53, align 8            ; 7 uses
  %12 = alloca %"class.facebook::velox::ScratchPtr", align 8 ; 10 uses
  %13 = alloca %"class.facebook::velox::ScratchPtr.55", align 8 ; 10 uses
  %14 = alloca %"class.facebook::velox::ScratchPtr.56", align 8 ; 10 uses
  %15 = alloca %"struct.xsimd::fma3", align 1     ; 4 uses
  %16 = alloca %"class.folly::Range.52", align 8  ; 6 uses
  %17 = alloca %"class.facebook::velox::ScratchPtr.57", align 8 ; 15 uses
  %18 = alloca %"class.facebook::velox::ScratchPtr.58", align 8 ; 15 uses
  %19 = alloca %"class.folly::Range", align 8     ; 6 uses
  %20 = alloca %"class.folly::Range", align 8     ; 6 uses
  %21 = alloca %"class.facebook::velox::ScratchPtr.57", align 8 ; 15 uses
  %22 = alloca %"class.facebook::velox::ScratchPtr.58", align 8 ; 15 uses
  %23 = alloca %"class.folly::Range", align 8     ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.el, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.wg, %bb.el ] ; 47 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !231  ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !232    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !211  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !213
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(18) %i.n)
  br i1 %i.r, label %bb.b, label %bb.e

bb.b:                                             ; preds = %tailrecurse
  %i.s = load ptr, ptr %.tr, align 8, !tbaa !213
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(94) %.tr)
  br i1 %i.v, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !211  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !213
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(18) %i.x)
  %.not293 = icmp eq ptr %i.k, %i.l
  br i1 %.not293, label %"_ZZN8facebook5velox10serializer6presto6detail25estimateSerializedSizeIntEPKNS0_10BaseVectorERKN5folly5RangeIPKiEEPPiRNS0_7ScratchEENK3$_1clEv.exit", label %.lr.ph

end_hunk_1
