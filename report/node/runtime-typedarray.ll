Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/runtime-typedarray?download=true
inline.NumInlined: 1106
inline.NumDeleted: 582
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal26Runtime_TypedArraySortFastEiPmPNS0_7IsolateE:bb.a
  %or.cond19.i175 = and i1 %i.vc, %i.vd
  br i1 %or.cond19.i175, label %_ZN2v88internal12_GLOBAL__N_110CompareNumIdEEbT_S3_.exit177.thread458, label %_ZN2v88internal12_GLOBAL__N_110CompareNumIdEEbT_S3_.exit177.thread

_ZN2v88internal12_GLOBAL__N_110CompareNumIdEEbT_S3_.exit177.thread458: ; preds = %bb.er, %.lr.ph.i17.i80, %.split460
  %i.ve = ptrtoint ptr %.021.i18.i81 to i64
  %i.vf = sub i64 %i.ve, %i.re                    ; 3 uses
  %i.vg = ashr exact i64 %i.vf, 3                 ; 2 uses
  %i.vh = icmp sgt i64 %i.vg, 1
  br i1 %i.vh, label %bb.es, label %bb.et, !prof !44

bb.es:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_110CompareNumIdEEbT_S3_.exit177.thread458
  %i.vi = getelementptr inbounds nuw i8, ptr %.pn20.i19.i82, i64 16
  %i.vj = sub nsw i64 0, %i.vg
  %i.vk = getelementptr inbounds [8 x i8], ptr %i.vi, i64 %i.vj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vk, ptr noundef nonnull align 8 dereferenceable(1) %i.rb, i64 %i.vf, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i

bb.et:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_110CompareNumIdEEbT_S3_.exit177.thread458
  %i.vl = icmp eq i64 %i.vf, 8
  br i1 %i.vl, label %bb.eu, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i

bb.eu:                                            ; preds = %bb.et
  %i.vm = getelementptr inbounds nuw i8, ptr %.pn20.i19.i82, i64 8
  store double %i.ut, ptr %i.vm, align 8
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i

_ZN2v88internal12_GLOBAL__N_110CompareNumIdEEbT_S3_.exit177.thread: ; preds = %bb.er, %bb.ep, %.split460
  %i.vn = load double, ptr %.pn20.i19.i82, align 8 ; 9 uses
  %i.vo = fcmp olt double %.fr749, %i.vn
  br i1 %i.vo, label %.lr.ph.i.i24.i86.preheader, label %bb.ev

bb.ev:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_110CompareNumIdEEbT_S3_.exit177.thread
  %i.vp = fcmp ogt double %.fr749, %i.vn
  br i1 %i.vp, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.vq = fcmp oeq double %.fr749, 0.000000e+00
  %i.vr = fcmp oeq double %.fr749, %i.vn
  %or.cond.i170 = and i1 %i.vq, %i.vr
  br i1 %or.cond.i170, label %bb.ex, label %.split462

bb.ex:                                            ; preds = %bb.ew
  %i.vs = bitcast double %.fr749 to i64
  %i.vt = icmp slt i64 %i.vs, 0
  %i.vu = bitcast double %i.vn to i64
  %i.vv = icmp sgt i64 %i.vu, -1
  %or.cond524 = and i1 %i.vt, %i.vv
  br i1 %or.cond524, label %.lr.ph.i.i24.i86.preheader, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i

.split462:                                        ; preds = %bb.ew
  %i.vw = fcmp ord double %.fr749, 0.000000e+00
  %i.vx = fcmp uno double %i.vn, 0.000000e+00
  %or.cond19.i171 = and i1 %i.vw, %i.vx
  br i1 %or.cond19.i171, label %.lr.ph.i.i24.i86.preheader, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i

.lr.ph.i.i24.i86.preheader:                       ; preds = %.split462, %bb.ex, %_ZN2v88internal12_GLOBAL__N_110CompareNumIdEEbT_S3_.exit177.thread
  %i.vy = fcmp oeq double %.fr749, 0.000000e+00
  br i1 %i.vy, label %.lr.ph.i.i24.i86.preheader.split.split, label %.lr.ph.i.i24.i86.preheader.split.us

.lr.ph.i.i24.i86.preheader.split.us:              ; preds = %.lr.ph.i.i24.i86.preheader
  %i.vz = fcmp ord double %.fr749, 0.000000e+00
  br i1 %i.vz, label %.lr.ph.i.i24.i86.us, label %.lr.ph.i.i24.i86.us.us

.lr.ph.i.i24.i86.us.us:                           ; preds = %.lr.ph.i.i24.i86.preheader.split.us, %.lr.ph.i.i24.i86.us.us
  %i.wa = phi double [ %i.wb, %.lr.ph.i.i24.i86.us.us ], [ %i.vn, %.lr.ph.i.i24.i86.preheader.split.us ]
  %.013.i.i25.i87.us.us = phi ptr [ %.0.i.i27.i89.us.us, %.lr.ph.i.i24.i86.us.us ], [ %.pn20.i19.i82, %.lr.ph.i.i24.i86.preheader.split.us ] ; 3 uses
  %.0912.i.i26.i88.us.us = phi ptr [ %.013.i.i25.i87.us.us, %.lr.ph.i.i24.i86.us.us ], [ %.021.i18.i81, %.lr.ph.i.i24.i86.preheader.split.us ]
  store double %i.wa, ptr %.0912.i.i26.i88.us.us, align 8
  %.0.i.i27.i89.us.us = getelementptr inbounds i8, ptr %.013.i.i25.i87.us.us, i64 -8 ; 2 uses
  %i.wb = load double, ptr %.0.i.i27.i89.us.us, align 8 ; 2 uses
  %i.wc = fcmp olt double %.fr749, %i.wb
  br i1 %i.wc, label %.lr.ph.i.i24.i86.us.us, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i, !llvm.loop !68

.lr.ph.i.i24.i86.us:                              ; preds = %.lr.ph.i.i24.i86.preheader.split.us, %.lr.ph.i.i24.i86.us.backedge
  %i.wd = phi double [ %i.we, %.lr.ph.i.i24.i86.us.backedge ], [ %i.vn, %.lr.ph.i.i24.i86.preheader.split.us ]
  %.013.i.i25.i87.us = phi ptr [ %.0.i.i27.i89.us, %.lr.ph.i.i24.i86.us.backedge ], [ %.pn20.i19.i82, %.lr.ph.i.i24.i86.preheader.split.us ] ; 3 uses
  %.0912.i.i26.i88.us = phi ptr [ %.013.i.i25.i87.us, %.lr.ph.i.i24.i86.us.backedge ], [ %.021.i18.i81, %.lr.ph.i.i24.i86.preheader.split.us ]
  store double %i.wd, ptr %.0912.i.i26.i88.us, align 8
  %.0.i.i27.i89.us = getelementptr inbounds i8, ptr %.013.i.i25.i87.us, i64 -8 ; 2 uses
  %i.we = load double, ptr %.0.i.i27.i89.us, align 8 ; 4 uses
  %i.wf = fcmp olt double %.fr749, %i.we
  br i1 %i.wf, label %.lr.ph.i.i24.i86.us.backedge, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph.i.i24.i86.us
  %i.wg = fcmp ule double %.fr749, %i.we
  %i.wh = fcmp uno double %i.we, 0.000000e+00
  %or.cond722 = and i1 %i.wg, %i.wh
  br i1 %or.cond722, label %.lr.ph.i.i24.i86.us.backedge, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i

.lr.ph.i.i24.i86.us.backedge:                     ; preds = %bb.ey, %.lr.ph.i.i24.i86.us
  br label %.lr.ph.i.i24.i86.us, !llvm.loop !68

.lr.ph.i.i24.i86.preheader.split.split:           ; preds = %.lr.ph.i.i24.i86.preheader
  %i.wi = bitcast double %.fr749 to i64
  %i.wj = icmp slt i64 %i.wi, 0
  br i1 %i.wj, label %.lr.ph.i.i24.i86, label %.lr.ph.i.i24.i86.us568

.lr.ph.i.i24.i86.us568:                           ; preds = %.lr.ph.i.i24.i86.preheader.split.split, %.lr.ph.i.i24.i86.us568.backedge
  %i.wk = phi double [ %i.wl, %.lr.ph.i.i24.i86.us568.backedge ], [ %i.vn, %.lr.ph.i.i24.i86.preheader.split.split ]
  %.013.i.i25.i87.us569 = phi ptr [ %.0.i.i27.i89.us571, %.lr.ph.i.i24.i86.us568.backedge ], [ %.pn20.i19.i82, %.lr.ph.i.i24.i86.preheader.split.split ] ; 3 uses
  %.0912.i.i26.i88.us570 = phi ptr [ %.013.i.i25.i87.us569, %.lr.ph.i.i24.i86.us568.backedge ], [ %.021.i18.i81, %.lr.ph.i.i24.i86.preheader.split.split ]
  store double %i.wk, ptr %.0912.i.i26.i88.us570, align 8
  %.0.i.i27.i89.us571 = getelementptr inbounds i8, ptr %.013.i.i25.i87.us569, i64 -8 ; 2 uses
  %i.wl = load double, ptr %.0.i.i27.i89.us571, align 8 ; 4 uses
  %i.wm = fcmp olt double %.fr749, %i.wl
  br i1 %i.wm, label %.lr.ph.i.i24.i86.us568.backedge, label %bb.ez

bb.ez:                                            ; preds = %.lr.ph.i.i24.i86.us568
  %or.cond742 = fcmp ult double %.fr749, %i.wl
  %i.wn = fcmp uno double %i.wl, 0.000000e+00
  %or.cond743 = and i1 %or.cond742, %i.wn
  br i1 %or.cond743, label %.lr.ph.i.i24.i86.us568.backedge, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i

.lr.ph.i.i24.i86.us568.backedge:                  ; preds = %bb.ez, %.lr.ph.i.i24.i86.us568
  br label %.lr.ph.i.i24.i86.us568, !llvm.loop !68

.lr.ph.i.i24.i86:                                 ; preds = %.lr.ph.i.i24.i86.preheader.split.split, %.lr.ph.i.i24.i86.backedge
  %i.wo = phi double [ %i.wp, %.lr.ph.i.i24.i86.backedge ], [ %i.vn, %.lr.ph.i.i24.i86.preheader.split.split ]
  %.013.i.i25.i87 = phi ptr [ %.0.i.i27.i89, %.lr.ph.i.i24.i86.backedge ], [ %.pn20.i19.i82, %.lr.ph.i.i24.i86.preheader.split.split ] ; 5 uses
  %.0912.i.i26.i88 = phi ptr [ %.013.i.i25.i87, %.lr.ph.i.i24.i86.backedge ], [ %.021.i18.i81, %.lr.ph.i.i24.i86.preheader.split.split ]
  store double %i.wo, ptr %.0912.i.i26.i88, align 8
  %.0.i.i27.i89 = getelementptr inbounds i8, ptr %.013.i.i25.i87, i64 -8 ; 2 uses
  %i.wp = load double, ptr %.0.i.i27.i89, align 8 ; 6 uses
  %i.wq = fcmp olt double %.fr749, %i.wp
  br i1 %i.wq, label %.lr.ph.i.i24.i86.backedge, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph.i.i24.i86
  %i.wr = fcmp ogt double %.fr749, %i.wp
  br i1 %i.wr, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ws = fcmp oeq double %.fr749, %i.wp
  br i1 %i.ws, label %bb.fc, label %.split465

bb.fc:                                            ; preds = %bb.fb
  %i.wt = bitcast double %i.wp to i64
  %i.wu = icmp sgt i64 %i.wt, -1
  br i1 %i.wu, label %.lr.ph.i.i24.i86.backedge, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i

.split465:                                        ; preds = %bb.fb
  %i.wv = fcmp uno double %i.wp, 0.000000e+00
  br i1 %i.wv, label %.lr.ph.i.i24.i86.backedge, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i

.lr.ph.i.i24.i86.backedge:                        ; preds = %.split465, %bb.fc, %.lr.ph.i.i24.i86
  br label %.lr.ph.i.i24.i86, !llvm.loop !68

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i: ; preds = %.lr.ph.i.i24.i86.us.us, %bb.ey, %bb.ez, %.split465, %bb.fa, %bb.fc, %bb.ex, %bb.ev, %.split462, %bb.eu, %bb.et, %bb.es
  %.sink.i21.i83 = phi ptr [ %i.rb, %bb.eu ], [ %i.rb, %bb.es ], [ %i.rb, %bb.et ], [ %.021.i18.i81, %.split462 ], [ %.021.i18.i81, %bb.ex ], [ %.021.i18.i81, %bb.ev ], [ %.013.i.i25.i87, %.split465 ], [ %.013.i.i25.i87.us569, %bb.ez ], [ %.013.i.i25.i87.us, %bb.ey ], [ %.013.i.i25.i87, %bb.fc ], [ %.013.i.i25.i87, %bb.fa ], [ %.013.i.i25.i87.us.us, %.lr.ph.i.i24.i86.us.us ]
  store double %.fr749, ptr %.sink.i21.i83, align 8
  %.0.i22.i84 = getelementptr inbounds nuw i8, ptr %.021.i18.i81, i64 8 ; 2 uses
  %.not.i23.i85 = icmp eq ptr %.0.i22.i84, %i.rd
  br i1 %.not.i23.i85, label %_ZSt4sortIPhEvT_S1_.exit, label %.lr.ph.i17.i80, !llvm.loop !69

bb.fd:                                            ; preds = %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit
  br i1 %.not, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.ww = load i64, ptr %1, align 8               ; 2 uses
  %i.wx = add i64 %i.ww, 71
  %i.wy = inttoptr i64 %i.wx to ptr
  %i.wz = load i64, ptr %i.wy, align 8
  %i.xa = add i64 %i.ww, 79
  %i.xb = inttoptr i64 %i.xa to ptr
  %i.xc = load i64, ptr %i.xb, align 8
  %i.xd = add i64 %i.xc, %i.wz
  %i.xe = inttoptr i64 %i.xd to ptr
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.xf = phi ptr [ %i.xe, %bb.fe ], [ %.1.i, %bb.fd ] ; 18 uses
  %i.xg = shl i64 %.0.i.i31, 1
  %.not106.i = icmp eq i64 %i.xg, %.0.i25
  br i1 %.not106.i, label %bb.fh, label %bb.fg, !prof !44

bb.fg:                                            ; preds = %bb.ff
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #11
  unreachable

bb.fh:                                            ; preds = %bb.ff
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 %.0.i25 ; 3 uses
  %.not.i.i44 = icmp eq i64 %.0.i.i31, 0
  br i1 %.not.i.i44, label %_ZSt4sortIPhEvT_S1_.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.xi = ptrtoint ptr %i.xf to i64
  %i.xj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i31, i1 true)
  %i.xk = shl nuw nsw i64 %i.xj, 1
  %i.xl = xor i64 %i.xk, 126
  call void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_T0_T1_(ptr noundef %i.xf, ptr noundef nonnull %i.xh, i64 noundef %i.xl, ptr nonnull @_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt)
  %i.xm = icmp ugt i64 %.0.i.i31, 16
  br i1 %i.xm, label %bb.fj, label %bb.fz

bb.fj:                                            ; preds = %bb.fi
  %scevgep.i120 = getelementptr i8, ptr %i.xf, i64 2
  br label %bb.fk

bb.fk:                                            ; preds = %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i.i, %bb.fj
  %.020.i.idx.i = phi i64 [ 2, %bb.fj ], [ %.020.i.add.i, %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i.i ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.xf, %bb.fj ], [ %.020.i.ptr.i, %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i.i ] ; 4 uses
  %.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.xf, i64 %.020.i.idx.i ; 7 uses
  %i.xn = load i16, ptr %.020.i.ptr.i, align 2    ; 3 uses
  %i.xo = load i16, ptr %i.xf, align 2            ; 3 uses
  %.signext.i.i253 = sext i16 %i.xn to i32
  %6 = and i32 %.signext.i.i253, -2147483648
  %i.xp = insertelement <2 x i16> poison, i16 %i.xn, i64 0
  %i.xq = insertelement <2 x i16> %i.xp, i16 %i.xo, i64 1 ; 2 uses
  %.inner = and <2 x i16> %i.xq, splat (i16 32767)
  %i.xr = zext nneg <2 x i16> %.inner to <2 x i32>
  %7 = or disjoint <2 x i32> %i.xr, splat (i32 1056964608)
  %8 = bitcast <2 x i32> %7 to <2 x float>
  %9 = fadd <2 x float> %8, splat (float -5.000000e-01)
  %10 = zext <2 x i16> %i.xq to <2 x i32>
  %11 = shl <2 x i32> %10, splat (i32 17)         ; 2 uses
  %12 = lshr exact <2 x i32> %11, splat (i32 4)
  %i.xs = or disjoint <2 x i32> %12, splat (i32 1879048192)
  %i.xt = bitcast <2 x i32> %i.xs to <2 x float>
  %i.xu = icmp ult <2 x i32> %11, splat (i32 134217728)
  %i.xv = fmul <2 x float> %i.xt, splat (float 1.925930e-34)
  %i.xw = select <2 x i1> %i.xu, <2 x float> %9, <2 x float> %i.xv ; 2 uses
  %bc951 = bitcast <2 x float> %i.xw to <2 x i32>
  %13 = extractelement <2 x i32> %bc951, i64 0
  %14 = or i32 %6, %13
  %.fr746 = freeze i32 %14                        ; 4 uses
  %15 = bitcast i32 %.fr746 to float              ; 17 uses
  %bc952 = bitcast <2 x float> %i.xw to <2 x i32>
  %16 = extractelement <2 x i32> %bc952, i64 1
  %.signext.i3.i255 = sext i16 %i.xo to i32
  %17 = and i32 %.signext.i3.i255, -2147483648
  %18 = or i32 %17, %16                           ; 2 uses
  %19 = bitcast i32 %18 to float                  ; 4 uses
  %i.xx = fcmp olt float %15, %19
  br i1 %i.xx, label %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.xy = fcmp ogt float %15, %19
  br i1 %i.xy, label %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260.thread468, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.xz = fcmp oeq float %15, 0.000000e+00
  %i.ya = fcmp oeq float %15, %19
  %or.cond.i.i256 = and i1 %i.xz, %i.ya
  br i1 %or.cond.i.i256, label %.split470, label %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260

.split470:                                        ; preds = %bb.fm
  %i.yb = icmp slt i32 %.fr746, 0
  %i.yc = icmp sgt i32 %18, -1
  %spec.select.i259 = and i1 %i.yb, %i.yc
  br i1 %spec.select.i259, label %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260.thread, label %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260.thread468

_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260: ; preds = %bb.fm
  %i.yd = fcmp ord float %15, 0.000000e+00
  %i.ye = fcmp uno float %19, 0.000000e+00
  %or.cond19.i.i257 = and i1 %i.yd, %i.ye
  br i1 %or.cond19.i.i257, label %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260.thread, label %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260.thread468

_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260.thread: ; preds = %bb.fk, %.split470, %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260
  %i.yf = icmp samesign ugt i64 %.020.i.idx.i, 2
  br i1 %i.yf, label %bb.fn, label %bb.fo, !prof !44

bb.fn:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260.thread
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i120, ptr noundef nonnull align 2 dereferenceable(1) %i.xf, i64 %.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i.i

bb.fo:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260.thread
  %i.yg = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 2
  store i16 %i.xo, ptr %i.yg, align 2
  br label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i.i

_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260.thread468: ; preds = %bb.fl, %.split470, %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260
  %i.yh = load i16, ptr %.pn19.i.i, align 2       ; 4 uses
  %i.yi = zext i16 %i.yh to i32                   ; 2 uses
  %i.yj = shl i32 %i.yi, 17                       ; 2 uses
  %i.yk = lshr exact i32 %i.yj, 4
  %i.yl = or disjoint i32 %i.yk, 1879048192
  %i.ym = bitcast i32 %i.yl to float
  %i.yn = and i32 %i.yi, 32767
  %i.yo = or disjoint i32 %i.yn, 1056964608
  %i.yp = bitcast i32 %i.yo to float
  %i.yq = icmp ult i32 %i.yj, 134217728
  %i.yr = fadd float %i.yp, -5.000000e-01
  %i.ys = fmul float %i.ym, 1.925930e-34
  %.v.i2.i245 = select i1 %i.yq, float %i.yr, float %i.ys
  %i.yt = bitcast float %.v.i2.i245 to i32
  %.signext.i3.i246 = sext i16 %i.yh to i32
  %i.yu = and i32 %.signext.i3.i246, -2147483648
  %i.yv = or i32 %i.yu, %i.yt                     ; 2 uses
  %i.yw = bitcast i32 %i.yv to float              ; 4 uses
  %i.yx = fcmp olt float %15, %i.yw
  br i1 %i.yx, label %.lr.ph.i.i.i133.preheader, label %bb.fp

bb.fp:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260.thread468
  %i.yy = fcmp ogt float %15, %i.yw
  br i1 %i.yy, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.yz = fcmp oeq float %15, 0.000000e+00
  %i.za = fcmp oeq float %15, %i.yw
  %or.cond.i.i247 = and i1 %i.yz, %i.za
  br i1 %or.cond.i.i247, label %.split473, label %.split472

.split473:                                        ; preds = %bb.fq
  %i.zb = icmp slt i32 %.fr746, 0
  %i.zc = icmp sgt i32 %i.yv, -1
  %spec.select.i250 = and i1 %i.zb, %i.zc
  br i1 %spec.select.i250, label %.lr.ph.i.i.i133.preheader, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i.i

.split472:                                        ; preds = %bb.fq
  %i.zd = fcmp ord float %15, 0.000000e+00
  %i.ze = fcmp uno float %i.yw, 0.000000e+00
  %or.cond19.i.i248 = and i1 %i.zd, %i.ze
  br i1 %or.cond19.i.i248, label %.lr.ph.i.i.i133.preheader, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i.i

.lr.ph.i.i.i133.preheader:                        ; preds = %.split472, %.split473, %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit260.thread468
  %i.zf = fcmp oeq float %15, 0.000000e+00
  %i.zg = fcmp ord float %15, 0.000000e+00        ; 2 uses
  %i.zh = icmp slt i32 %.fr746, 0
  br i1 %i.zf, label %.lr.ph.i.i.i133, label %.lr.ph.i.i.i133.us

.lr.ph.i.i.i133.us:                               ; preds = %.lr.ph.i.i.i133.preheader, %.lr.ph.i.i.i133.us.backedge
  %i.zi = phi i16 [ %i.zj, %.lr.ph.i.i.i133.us.backedge ], [ %i.yh, %.lr.ph.i.i.i133.preheader ]
  %.013.i.i.i134.us = phi ptr [ %.0.i.i.i136.us, %.lr.ph.i.i.i133.us.backedge ], [ %.pn19.i.i, %.lr.ph.i.i.i133.preheader ] ; 3 uses
  %.0912.i.i.i135.us = phi ptr [ %.013.i.i.i134.us, %.lr.ph.i.i.i133.us.backedge ], [ %.020.i.ptr.i, %.lr.ph.i.i.i133.preheader ]
  store i16 %i.zi, ptr %.0912.i.i.i135.us, align 2
  %.0.i.i.i136.us = getelementptr inbounds i8, ptr %.013.i.i.i134.us, i64 -2 ; 2 uses
  %i.zj = load i16, ptr %.0.i.i.i136.us, align 2  ; 3 uses
  %i.zk = zext i16 %i.zj to i32                   ; 2 uses
  %i.zl = shl i32 %i.zk, 17                       ; 2 uses
  %i.zm = lshr exact i32 %i.zl, 4
  %i.zn = or disjoint i32 %i.zm, 1879048192
  %i.zo = bitcast i32 %i.zn to float
  %i.zp = and i32 %i.zk, 32767
  %i.zq = or disjoint i32 %i.zp, 1056964608
  %i.zr = bitcast i32 %i.zq to float
  %i.zs = icmp ult i32 %i.zl, 134217728
  %i.zt = fadd float %i.zr, -5.000000e-01
  %i.zu = fmul float %i.zo, 1.925930e-34
  %.v.i2.i236.us = select i1 %i.zs, float %i.zt, float %i.zu
  %i.zv = bitcast float %.v.i2.i236.us to i32
  %.signext.i3.i237.us = sext i16 %i.zj to i32
  %i.zw = and i32 %.signext.i3.i237.us, -2147483648
  %i.zx = or i32 %i.zw, %i.zv
  %i.zy = bitcast i32 %i.zx to float              ; 3 uses
  %i.zz = fcmp olt float %15, %i.zy
  br i1 %i.zz, label %.lr.ph.i.i.i133.us.backedge, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph.i.i.i133.us
  %i.aaa = fcmp ule float %15, %i.zy
  %i.aab = fcmp uno float %i.zy, 0.000000e+00
  %i.aac = and i1 %i.aab, %i.aaa
  %or.cond723 = and i1 %i.aac, %i.zg
  br i1 %or.cond723, label %.lr.ph.i.i.i133.us.backedge, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i.i

.lr.ph.i.i.i133.us.backedge:                      ; preds = %bb.fr, %.lr.ph.i.i.i133.us
  br label %.lr.ph.i.i.i133.us, !llvm.loop !71

.lr.ph.i.i.i133:                                  ; preds = %.lr.ph.i.i.i133.preheader, %.lr.ph.i.i.i133.backedge
  %i.aad = phi i16 [ %i.aae, %.lr.ph.i.i.i133.backedge ], [ %i.yh, %.lr.ph.i.i.i133.preheader ]
  %.013.i.i.i134 = phi ptr [ %.0.i.i.i136, %.lr.ph.i.i.i133.backedge ], [ %.pn19.i.i, %.lr.ph.i.i.i133.preheader ] ; 5 uses
  %.0912.i.i.i135 = phi ptr [ %.013.i.i.i134, %.lr.ph.i.i.i133.backedge ], [ %.020.i.ptr.i, %.lr.ph.i.i.i133.preheader ]
  store i16 %i.aad, ptr %.0912.i.i.i135, align 2
  %.0.i.i.i136 = getelementptr inbounds i8, ptr %.013.i.i.i134, i64 -2 ; 2 uses
  %i.aae = load i16, ptr %.0.i.i.i136, align 2    ; 3 uses
  %i.aaf = zext i16 %i.aae to i32                 ; 2 uses
  %i.aag = shl i32 %i.aaf, 17                     ; 2 uses
  %i.aah = lshr exact i32 %i.aag, 4
  %i.aai = or disjoint i32 %i.aah, 1879048192
  %i.aaj = bitcast i32 %i.aai to float
  %i.aak = and i32 %i.aaf, 32767
  %i.aal = or disjoint i32 %i.aak, 1056964608
  %i.aam = bitcast i32 %i.aal to float
  %i.aan = icmp ult i32 %i.aag, 134217728
  %i.aao = fadd float %i.aam, -5.000000e-01
  %i.aap = fmul float %i.aaj, 1.925930e-34
  %.v.i2.i236 = select i1 %i.aan, float %i.aao, float %i.aap
  %i.aaq = bitcast float %.v.i2.i236 to i32
  %.signext.i3.i237 = sext i16 %i.aae to i32
  %i.aar = and i32 %.signext.i3.i237, -2147483648
  %i.aas = or i32 %i.aar, %i.aaq                  ; 2 uses
  %i.aat = bitcast i32 %i.aas to float            ; 4 uses
  %i.aau = fcmp olt float %15, %i.aat
  br i1 %i.aau, label %.lr.ph.i.i.i133.backedge, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph.i.i.i133
  %i.aav = fcmp ogt float %15, %i.aat
  br i1 %i.aav, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aaw = fcmp oeq float %15, %i.aat
  br i1 %i.aaw, label %.split476, label %.split475

.split476:                                        ; preds = %bb.ft
  %i.aax = icmp sgt i32 %i.aas, -1
  %spec.select.i241 = and i1 %i.zh, %i.aax
  br i1 %spec.select.i241, label %.lr.ph.i.i.i133.backedge, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i.i

.split475:                                        ; preds = %bb.ft
  %i.aay = fcmp uno float %i.aat, 0.000000e+00
  %or.cond19.i.i239 = and i1 %i.zg, %i.aay
  br i1 %or.cond19.i.i239, label %.lr.ph.i.i.i133.backedge, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i.i

.lr.ph.i.i.i133.backedge:                         ; preds = %.split475, %.split476, %.lr.ph.i.i.i133
  br label %.lr.ph.i.i.i133, !llvm.loop !71

_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i.i:   ; preds = %bb.fr, %.split475, %.split476, %bb.fs, %bb.fp, %.split473, %.split472, %bb.fo, %bb.fn
  %.sink.i.i121 = phi ptr [ %i.xf, %bb.fo ], [ %i.xf, %bb.fn ], [ %.020.i.ptr.i, %.split473 ], [ %.020.i.ptr.i, %.split472 ], [ %.020.i.ptr.i, %bb.fp ], [ %.013.i.i.i134, %.split475 ], [ %.013.i.i.i134, %bb.fs ], [ %.013.i.i.i134, %.split476 ], [ %.013.i.i.i134.us, %bb.fr ]
  store i16 %i.xn, ptr %.sink.i.i121, align 2
  %.020.i.add.i = add nuw nsw i64 %.020.i.idx.i, 2 ; 2 uses
  %.not.i.i122 = icmp eq i64 %.020.i.add.i, 32
  br i1 %.not.i.i122, label %_ZSt16__insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_T0_.exit.i, label %bb.fk, !llvm.loop !72

_ZSt16__insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_T0_.exit.i: ; preds = %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i.i
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.xf, i64 32
  br label %.lr.ph.i.i124

.lr.ph.i.i124:                                    ; preds = %_ZSt16__insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_T0_.exit.i, %_ZSt25__unguarded_linear_insertIPtN9__gnu_cxx5__ops14_Val_comp_iterIPFbttEEEEvT_T0_.exit.i.i
  %.08.i.i125 = phi ptr [ %i.adg, %_ZSt25__unguarded_linear_insertIPtN9__gnu_cxx5__ops14_Val_comp_iterIPFbttEEEEvT_T0_.exit.i.i ], [ %i.aaz, %_ZSt16__insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_T0_.exit.i ] ; 7 uses
  %.011.i.i.i126 = getelementptr inbounds i8, ptr %.08.i.i125, i64 -2 ; 3 uses
  %i.aba = load <2 x i16>, ptr %.011.i.i.i126, align 2 ; 4 uses
  %.inner948 = and <2 x i16> %i.aba, splat (i16 32767)
  %20 = zext nneg <2 x i16> %.inner948 to <2 x i32>
  %21 = or disjoint <2 x i32> %20, splat (i32 1056964608)
  %22 = bitcast <2 x i32> %21 to <2 x float>
  %23 = fadd <2 x float> %22, splat (float -5.000000e-01)
  %24 = extractelement <2 x i16> %i.aba, i64 1    ; 2 uses
  %.signext.i.i226 = sext i16 %24 to i32
  %25 = and i32 %.signext.i.i226, -2147483648
  %i.abb = zext <2 x i16> %i.aba to <2 x i32>
  %i.abc = shl <2 x i32> %i.abb, splat (i32 17)   ; 2 uses
  %i.abd = lshr exact <2 x i32> %i.abc, splat (i32 4)
  %i.abe = or disjoint <2 x i32> %i.abd, splat (i32 1879048192)
  %i.abf = bitcast <2 x i32> %i.abe to <2 x float>
  %26 = fmul <2 x float> %i.abf, splat (float 1.925930e-34)
  %27 = icmp ult <2 x i32> %i.abc, splat (i32 134217728)
  %28 = select <2 x i1> %27, <2 x float> %23, <2 x float> %26 ; 2 uses
  %bc953 = bitcast <2 x float> %28 to <2 x i32>
  %29 = extractelement <2 x i32> %bc953, i64 1
  %30 = or i32 %25, %29
  %.fr748 = freeze i32 %30                        ; 3 uses
  %31 = bitcast i32 %.fr748 to float              ; 12 uses
  %bc954 = bitcast <2 x float> %28 to <2 x i32>
  %32 = extractelement <2 x i32> %bc954, i64 0
  %33 = extractelement <2 x i16> %i.aba, i64 0    ; 3 uses
  %.signext.i3.i228 = sext i16 %33 to i32
  %34 = and i32 %.signext.i3.i228, -2147483648
  %35 = or i32 %34, %32                           ; 2 uses
  %36 = bitcast i32 %35 to float                  ; 4 uses
  %i.abg = fcmp olt float %31, %36
  br i1 %i.abg, label %.lr.ph.i.i12.i129.preheader, label %bb.fu

bb.fu:                                            ; preds = %.lr.ph.i.i124
  %i.abh = fcmp ogt float %31, %36
  br i1 %i.abh, label %_ZSt25__unguarded_linear_insertIPtN9__gnu_cxx5__ops14_Val_comp_iterIPFbttEEEEvT_T0_.exit.i.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.abi = fcmp oeq float %31, 0.000000e+00
  %i.abj = fcmp oeq float %31, %36
  %or.cond.i.i229 = and i1 %i.abi, %i.abj
  br i1 %or.cond.i.i229, label %.split479, label %.split478

.split479:                                        ; preds = %bb.fv
  %i.abk = icmp slt i32 %.fr748, 0
  %i.abl = icmp sgt i32 %35, -1
  %spec.select.i232 = and i1 %i.abk, %i.abl
  br i1 %spec.select.i232, label %.lr.ph.i.i12.i129.preheader, label %_ZSt25__unguarded_linear_insertIPtN9__gnu_cxx5__ops14_Val_comp_iterIPFbttEEEEvT_T0_.exit.i.i

.split478:                                        ; preds = %bb.fv
  %37 = fcmp ord float %31, 0.000000e+00
  %38 = fcmp uno float %36, 0.000000e+00
  %or.cond19.i.i230 = and i1 %37, %38
  br i1 %or.cond19.i.i230, label %.lr.ph.i.i12.i129.preheader, label %_ZSt25__unguarded_linear_insertIPtN9__gnu_cxx5__ops14_Val_comp_iterIPFbttEEEEvT_T0_.exit.i.i

.lr.ph.i.i12.i129.preheader:                      ; preds = %.split478, %.split479, %.lr.ph.i.i124
  %i.abm = fcmp oeq float %31, 0.000000e+00
  %i.abn = fcmp ord float %31, 0.000000e+00       ; 2 uses
  %i.abo = icmp slt i32 %.fr748, 0
  br i1 %i.abm, label %.lr.ph.i.i12.i129, label %.lr.ph.i.i12.i129.us

.lr.ph.i.i12.i129.us:                             ; preds = %.lr.ph.i.i12.i129.preheader, %.lr.ph.i.i12.i129.us.backedge
  %i.abp = phi i16 [ %i.abq, %.lr.ph.i.i12.i129.us.backedge ], [ %33, %.lr.ph.i.i12.i129.preheader ]
  %.013.i.i13.i130.us = phi ptr [ %.0.i.i15.i132.us, %.lr.ph.i.i12.i129.us.backedge ], [ %.011.i.i.i126, %.lr.ph.i.i12.i129.preheader ] ; 3 uses
  %.0912.i.i14.i131.us = phi ptr [ %.013.i.i13.i130.us, %.lr.ph.i.i12.i129.us.backedge ], [ %.08.i.i125, %.lr.ph.i.i12.i129.preheader ]
  store i16 %i.abp, ptr %.0912.i.i14.i131.us, align 2
  %.0.i.i15.i132.us = getelementptr inbounds i8, ptr %.013.i.i13.i130.us, i64 -2 ; 2 uses
  %i.abq = load i16, ptr %.0.i.i15.i132.us, align 2 ; 3 uses
  %i.abr = zext i16 %i.abq to i32                 ; 2 uses
  %i.abs = shl i32 %i.abr, 17                     ; 2 uses
  %i.abt = lshr exact i32 %i.abs, 4
  %i.abu = or disjoint i32 %i.abt, 1879048192
  %i.abv = bitcast i32 %i.abu to float
  %i.abw = and i32 %i.abr, 32767
  %i.abx = or disjoint i32 %i.abw, 1056964608
  %i.aby = bitcast i32 %i.abx to float
  %i.abz = icmp ult i32 %i.abs, 134217728
  %i.aca = fadd float %i.aby, -5.000000e-01
  %i.acb = fmul float %i.abv, 1.925930e-34
  %.v.i2.i218.us = select i1 %i.abz, float %i.aca, float %i.acb
  %i.acc = bitcast float %.v.i2.i218.us to i32
  %.signext.i3.i219.us = sext i16 %i.abq to i32
  %i.acd = and i32 %.signext.i3.i219.us, -2147483648
  %i.ace = or i32 %i.acd, %i.acc
  %i.acf = bitcast i32 %i.ace to float            ; 3 uses
  %i.acg = fcmp olt float %31, %i.acf
  br i1 %i.acg, label %.lr.ph.i.i12.i129.us.backedge, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph.i.i12.i129.us
  %i.ach = fcmp ule float %31, %i.acf
  %i.aci = fcmp uno float %i.acf, 0.000000e+00
  %i.acj = and i1 %i.aci, %i.ach
  %or.cond724 = and i1 %i.acj, %i.abn
  br i1 %or.cond724, label %.lr.ph.i.i12.i129.us.backedge, label %_ZSt25__unguarded_linear_insertIPtN9__gnu_cxx5__ops14_Val_comp_iterIPFbttEEEEvT_T0_.exit.i.i

.lr.ph.i.i12.i129.us.backedge:                    ; preds = %bb.fw, %.lr.ph.i.i12.i129.us
  br label %.lr.ph.i.i12.i129.us, !llvm.loop !71

.lr.ph.i.i12.i129:                                ; preds = %.lr.ph.i.i12.i129.preheader, %.lr.ph.i.i12.i129.backedge
  %i.ack = phi i16 [ %i.acl, %.lr.ph.i.i12.i129.backedge ], [ %33, %.lr.ph.i.i12.i129.preheader ]
  %.013.i.i13.i130 = phi ptr [ %.0.i.i15.i132, %.lr.ph.i.i12.i129.backedge ], [ %.011.i.i.i126, %.lr.ph.i.i12.i129.preheader ] ; 5 uses
  %.0912.i.i14.i131 = phi ptr [ %.013.i.i13.i130, %.lr.ph.i.i12.i129.backedge ], [ %.08.i.i125, %.lr.ph.i.i12.i129.preheader ]
  store i16 %i.ack, ptr %.0912.i.i14.i131, align 2
  %.0.i.i15.i132 = getelementptr inbounds i8, ptr %.013.i.i13.i130, i64 -2 ; 2 uses
  %i.acl = load i16, ptr %.0.i.i15.i132, align 2  ; 3 uses
  %i.acm = zext i16 %i.acl to i32                 ; 2 uses
  %i.acn = shl i32 %i.acm, 17                     ; 2 uses
  %i.aco = lshr exact i32 %i.acn, 4
  %i.acp = or disjoint i32 %i.aco, 1879048192
  %i.acq = bitcast i32 %i.acp to float
  %i.acr = and i32 %i.acm, 32767
  %i.acs = or disjoint i32 %i.acr, 1056964608
  %i.act = bitcast i32 %i.acs to float
  %i.acu = icmp ult i32 %i.acn, 134217728
  %i.acv = fadd float %i.act, -5.000000e-01
  %i.acw = fmul float %i.acq, 1.925930e-34
  %.v.i2.i218 = select i1 %i.acu, float %i.acv, float %i.acw
  %i.acx = bitcast float %.v.i2.i218 to i32
  %.signext.i3.i219 = sext i16 %i.acl to i32
  %i.acy = and i32 %.signext.i3.i219, -2147483648
  %i.acz = or i32 %i.acy, %i.acx                  ; 2 uses
  %i.ada = bitcast i32 %i.acz to float            ; 4 uses
  %i.adb = fcmp olt float %31, %i.ada
  br i1 %i.adb, label %.lr.ph.i.i12.i129.backedge, label %bb.fx

bb.fx:                                            ; preds = %.lr.ph.i.i12.i129
  %i.adc = fcmp ogt float %31, %i.ada
  br i1 %i.adc, label %_ZSt25__unguarded_linear_insertIPtN9__gnu_cxx5__ops14_Val_comp_iterIPFbttEEEEvT_T0_.exit.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.add = fcmp oeq float %31, %i.ada
  br i1 %i.add, label %.split482, label %.split481

.split482:                                        ; preds = %bb.fy
  %i.ade = icmp sgt i32 %i.acz, -1
  %spec.select.i223 = and i1 %i.abo, %i.ade
  br i1 %spec.select.i223, label %.lr.ph.i.i12.i129.backedge, label %_ZSt25__unguarded_linear_insertIPtN9__gnu_cxx5__ops14_Val_comp_iterIPFbttEEEEvT_T0_.exit.i.i

.split481:                                        ; preds = %bb.fy
  %i.adf = fcmp uno float %i.ada, 0.000000e+00
  %or.cond19.i.i221 = and i1 %i.abn, %i.adf
  br i1 %or.cond19.i.i221, label %.lr.ph.i.i12.i129.backedge, label %_ZSt25__unguarded_linear_insertIPtN9__gnu_cxx5__ops14_Val_comp_iterIPFbttEEEEvT_T0_.exit.i.i

.lr.ph.i.i12.i129.backedge:                       ; preds = %.split481, %.split482, %.lr.ph.i.i12.i129
  br label %.lr.ph.i.i12.i129, !llvm.loop !71

_ZSt25__unguarded_linear_insertIPtN9__gnu_cxx5__ops14_Val_comp_iterIPFbttEEEEvT_T0_.exit.i.i: ; preds = %bb.fw, %.split481, %.split482, %bb.fx, %bb.fu, %.split479, %.split478
  %.09.lcssa.i.i.i127 = phi ptr [ %.08.i.i125, %.split479 ], [ %.08.i.i125, %.split478 ], [ %.08.i.i125, %bb.fu ], [ %.013.i.i13.i130, %.split481 ], [ %.013.i.i13.i130, %bb.fx ], [ %.013.i.i13.i130, %.split482 ], [ %.013.i.i13.i130.us, %bb.fw ]
  store i16 %24, ptr %.09.lcssa.i.i.i127, align 2
  %i.adg = getelementptr inbounds nuw i8, ptr %.08.i.i125, i64 2 ; 2 uses
  %.not.i11.i128 = icmp eq ptr %i.adg, %i.xh
  br i1 %.not.i11.i128, label %_ZSt4sortIPhEvT_S1_.exit, label %.lr.ph.i.i124, !llvm.loop !73

bb.fz:                                            ; preds = %bb.fi
  %.not18.i.i = icmp eq i64 %.0.i.i31, 1
  br i1 %.not18.i.i, label %_ZSt4sortIPhEvT_S1_.exit, label %.lr.ph.i17.i112.preheader

.lr.ph.i17.i112.preheader:                        ; preds = %bb.fz
  %.017.i16.i = getelementptr inbounds nuw i8, ptr %i.xf, i64 2
  br label %.lr.ph.i17.i112

.lr.ph.i17.i112:                                  ; preds = %.lr.ph.i17.i112.preheader, %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i
  %.020.i18.i = phi ptr [ %.0.i22.i114, %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i ], [ %.017.i16.i, %.lr.ph.i17.i112.preheader ] ; 9 uses
  %.pn19.i19.i = phi ptr [ %.020.i18.i, %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i ], [ %i.xf, %.lr.ph.i17.i112.preheader ] ; 5 uses
  %i.adh = load i16, ptr %.020.i18.i, align 2     ; 3 uses
  %i.adi = load i16, ptr %i.xf, align 2           ; 3 uses
  %.signext.i.i208 = sext i16 %i.adh to i32
  %39 = and i32 %.signext.i.i208, -2147483648
  %i.adj = insertelement <2 x i16> poison, i16 %i.adh, i64 0
  %i.adk = insertelement <2 x i16> %i.adj, i16 %i.adi, i64 1 ; 2 uses
  %.inner949 = and <2 x i16> %i.adk, splat (i16 32767)
  %i.adl = zext nneg <2 x i16> %.inner949 to <2 x i32>
  %40 = or disjoint <2 x i32> %i.adl, splat (i32 1056964608)
  %41 = bitcast <2 x i32> %40 to <2 x float>
  %42 = fadd <2 x float> %41, splat (float -5.000000e-01)
  %43 = zext <2 x i16> %i.adk to <2 x i32>
  %44 = shl <2 x i32> %43, splat (i32 17)         ; 2 uses
  %45 = lshr exact <2 x i32> %44, splat (i32 4)
  %i.adm = or disjoint <2 x i32> %45, splat (i32 1879048192)
  %i.adn = bitcast <2 x i32> %i.adm to <2 x float>
  %i.ado = icmp ult <2 x i32> %44, splat (i32 134217728)
  %i.adp = fmul <2 x float> %i.adn, splat (float 1.925930e-34)
  %i.adq = select <2 x i1> %i.ado, <2 x float> %42, <2 x float> %i.adp ; 2 uses
  %bc = bitcast <2 x float> %i.adq to <2 x i32>
  %46 = extractelement <2 x i32> %bc, i64 0
  %47 = or i32 %39, %46
  %.fr = freeze i32 %47                           ; 4 uses
  %48 = bitcast i32 %.fr to float                 ; 17 uses
  %bc950 = bitcast <2 x float> %i.adq to <2 x i32>
  %49 = extractelement <2 x i32> %bc950, i64 1
  %.signext.i3.i210 = sext i16 %i.adi to i32
  %50 = and i32 %.signext.i3.i210, -2147483648
  %51 = or i32 %50, %49                           ; 2 uses
  %52 = bitcast i32 %51 to float                  ; 4 uses
  %i.adr = fcmp olt float %48, %52
  br i1 %i.adr, label %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215.thread, label %bb.ga

bb.ga:                                            ; preds = %.lr.ph.i17.i112
  %i.ads = fcmp ogt float %48, %52
  br i1 %i.ads, label %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215.thread484, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.adt = fcmp oeq float %48, 0.000000e+00
  %i.adu = fcmp oeq float %48, %52
  %or.cond.i.i211 = and i1 %i.adt, %i.adu
  br i1 %or.cond.i.i211, label %.split486, label %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215

.split486:                                        ; preds = %bb.gb
  %i.adv = icmp slt i32 %.fr, 0
  %i.adw = icmp sgt i32 %51, -1
  %spec.select.i214 = and i1 %i.adv, %i.adw
  br i1 %spec.select.i214, label %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215.thread, label %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215.thread484

_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215: ; preds = %bb.gb
  %i.adx = fcmp ord float %48, 0.000000e+00
  %i.ady = fcmp uno float %52, 0.000000e+00
  %or.cond19.i.i212 = and i1 %i.adx, %i.ady
  br i1 %or.cond19.i.i212, label %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215.thread, label %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215.thread484

_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215.thread: ; preds = %.lr.ph.i17.i112, %.split486, %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215
  %i.adz = ptrtoint ptr %.020.i18.i to i64
  %i.aea = sub i64 %i.adz, %i.xi                  ; 3 uses
  %i.aeb = ashr exact i64 %i.aea, 1               ; 2 uses
  %i.aec = icmp sgt i64 %i.aeb, 1
  br i1 %i.aec, label %bb.gc, label %bb.gd, !prof !44

bb.gc:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215.thread
  %i.aed = getelementptr inbounds nuw i8, ptr %.pn19.i19.i, i64 4
  %i.aee = sub nsw i64 0, %i.aeb
  %i.aef = getelementptr inbounds [2 x i8], ptr %i.aed, i64 %i.aee
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.aef, ptr noundef nonnull align 2 dereferenceable(1) %i.xf, i64 %i.aea, i1 false)
  br label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i

bb.gd:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215.thread
  %i.aeg = icmp eq i64 %i.aea, 2
  br i1 %i.aeg, label %bb.ge, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i

bb.ge:                                            ; preds = %bb.gd
  %i.aeh = getelementptr inbounds nuw i8, ptr %.pn19.i19.i, i64 2
  store i16 %i.adi, ptr %i.aeh, align 2
  br label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i

_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215.thread484: ; preds = %bb.ga, %.split486, %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215
  %i.aei = load i16, ptr %.pn19.i19.i, align 2    ; 4 uses
  %i.aej = zext i16 %i.aei to i32                 ; 2 uses
  %i.aek = shl i32 %i.aej, 17                     ; 2 uses
  %i.ael = lshr exact i32 %i.aek, 4
  %i.aem = or disjoint i32 %i.ael, 1879048192
  %i.aen = bitcast i32 %i.aem to float
  %i.aeo = and i32 %i.aej, 32767
  %i.aep = or disjoint i32 %i.aeo, 1056964608
  %i.aeq = bitcast i32 %i.aep to float
  %i.aer = icmp ult i32 %i.aek, 134217728
  %i.aes = fadd float %i.aeq, -5.000000e-01
  %i.aet = fmul float %i.aen, 1.925930e-34
  %.v.i2.i200 = select i1 %i.aer, float %i.aes, float %i.aet
  %i.aeu = bitcast float %.v.i2.i200 to i32
  %.signext.i3.i201 = sext i16 %i.aei to i32
  %i.aev = and i32 %.signext.i3.i201, -2147483648
  %i.aew = or i32 %i.aev, %i.aeu                  ; 2 uses
  %i.aex = bitcast i32 %i.aew to float            ; 4 uses
  %i.aey = fcmp olt float %48, %i.aex
  br i1 %i.aey, label %.lr.ph.i.i24.i116.preheader, label %bb.gf

bb.gf:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215.thread484
  %i.aez = fcmp ogt float %48, %i.aex
  br i1 %i.aez, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.afa = fcmp oeq float %48, 0.000000e+00
  %i.afb = fcmp oeq float %48, %i.aex
  %or.cond.i.i202 = and i1 %i.afa, %i.afb
  br i1 %or.cond.i.i202, label %.split489, label %.split488

.split489:                                        ; preds = %bb.gg
  %i.afc = icmp slt i32 %.fr, 0
  %i.afd = icmp sgt i32 %i.aew, -1
  %spec.select.i205 = and i1 %i.afc, %i.afd
  br i1 %spec.select.i205, label %.lr.ph.i.i24.i116.preheader, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i

.split488:                                        ; preds = %bb.gg
  %i.afe = fcmp ord float %48, 0.000000e+00
  %i.aff = fcmp uno float %i.aex, 0.000000e+00
  %or.cond19.i.i203 = and i1 %i.afe, %i.aff
  br i1 %or.cond19.i.i203, label %.lr.ph.i.i24.i116.preheader, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i

.lr.ph.i.i24.i116.preheader:                      ; preds = %.split488, %.split489, %_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt.exit215.thread484
  %i.afg = fcmp oeq float %48, 0.000000e+00
  %i.afh = fcmp ord float %48, 0.000000e+00       ; 2 uses
  %i.afi = icmp slt i32 %.fr, 0
  br i1 %i.afg, label %.lr.ph.i.i24.i116, label %.lr.ph.i.i24.i116.us

.lr.ph.i.i24.i116.us:                             ; preds = %.lr.ph.i.i24.i116.preheader, %.lr.ph.i.i24.i116.us.backedge
  %i.afj = phi i16 [ %i.afk, %.lr.ph.i.i24.i116.us.backedge ], [ %i.aei, %.lr.ph.i.i24.i116.preheader ]
  %.013.i.i25.i117.us = phi ptr [ %.0.i.i27.i119.us, %.lr.ph.i.i24.i116.us.backedge ], [ %.pn19.i19.i, %.lr.ph.i.i24.i116.preheader ] ; 3 uses
  %.0912.i.i26.i118.us = phi ptr [ %.013.i.i25.i117.us, %.lr.ph.i.i24.i116.us.backedge ], [ %.020.i18.i, %.lr.ph.i.i24.i116.preheader ]
  store i16 %i.afj, ptr %.0912.i.i26.i118.us, align 2
  %.0.i.i27.i119.us = getelementptr inbounds i8, ptr %.013.i.i25.i117.us, i64 -2 ; 2 uses
  %i.afk = load i16, ptr %.0.i.i27.i119.us, align 2 ; 3 uses
  %i.afl = zext i16 %i.afk to i32                 ; 2 uses
  %i.afm = shl i32 %i.afl, 17                     ; 2 uses
  %i.afn = lshr exact i32 %i.afm, 4
  %i.afo = or disjoint i32 %i.afn, 1879048192
  %i.afp = bitcast i32 %i.afo to float
  %i.afq = and i32 %i.afl, 32767
  %i.afr = or disjoint i32 %i.afq, 1056964608
  %i.afs = bitcast i32 %i.afr to float
  %i.aft = icmp ult i32 %i.afm, 134217728
  %i.afu = fadd float %i.afs, -5.000000e-01
  %i.afv = fmul float %i.afp, 1.925930e-34
  %.v.i2.i.us = select i1 %i.aft, float %i.afu, float %i.afv
  %i.afw = bitcast float %.v.i2.i.us to i32
  %.signext.i3.i.us = sext i16 %i.afk to i32
  %i.afx = and i32 %.signext.i3.i.us, -2147483648
  %i.afy = or i32 %i.afx, %i.afw
  %i.afz = bitcast i32 %i.afy to float            ; 3 uses
  %i.aga = fcmp olt float %48, %i.afz
  br i1 %i.aga, label %.lr.ph.i.i24.i116.us.backedge, label %bb.gh

bb.gh:                                            ; preds = %.lr.ph.i.i24.i116.us
  %i.agb = fcmp ule float %48, %i.afz
  %i.agc = fcmp uno float %i.afz, 0.000000e+00
  %i.agd = and i1 %i.agc, %i.agb
  %or.cond725 = and i1 %i.agd, %i.afh
  br i1 %or.cond725, label %.lr.ph.i.i24.i116.us.backedge, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i

.lr.ph.i.i24.i116.us.backedge:                    ; preds = %bb.gh, %.lr.ph.i.i24.i116.us
  br label %.lr.ph.i.i24.i116.us, !llvm.loop !71

.lr.ph.i.i24.i116:                                ; preds = %.lr.ph.i.i24.i116.preheader, %.lr.ph.i.i24.i116.backedge
  %i.age = phi i16 [ %i.agf, %.lr.ph.i.i24.i116.backedge ], [ %i.aei, %.lr.ph.i.i24.i116.preheader ]
  %.013.i.i25.i117 = phi ptr [ %.0.i.i27.i119, %.lr.ph.i.i24.i116.backedge ], [ %.pn19.i19.i, %.lr.ph.i.i24.i116.preheader ] ; 5 uses
  %.0912.i.i26.i118 = phi ptr [ %.013.i.i25.i117, %.lr.ph.i.i24.i116.backedge ], [ %.020.i18.i, %.lr.ph.i.i24.i116.preheader ]
  store i16 %i.age, ptr %.0912.i.i26.i118, align 2
  %.0.i.i27.i119 = getelementptr inbounds i8, ptr %.013.i.i25.i117, i64 -2 ; 2 uses
  %i.agf = load i16, ptr %.0.i.i27.i119, align 2  ; 3 uses
  %i.agg = zext i16 %i.agf to i32                 ; 2 uses
  %i.agh = shl i32 %i.agg, 17                     ; 2 uses
  %i.agi = lshr exact i32 %i.agh, 4
  %i.agj = or disjoint i32 %i.agi, 1879048192
  %i.agk = bitcast i32 %i.agj to float
  %i.agl = and i32 %i.agg, 32767
  %i.agm = or disjoint i32 %i.agl, 1056964608
  %i.agn = bitcast i32 %i.agm to float
  %i.ago = icmp ult i32 %i.agh, 134217728
  %i.agp = fadd float %i.agn, -5.000000e-01
  %i.agq = fmul float %i.agk, 1.925930e-34
  %.v.i2.i = select i1 %i.ago, float %i.agp, float %i.agq
  %i.agr = bitcast float %.v.i2.i to i32
  %.signext.i3.i = sext i16 %i.agf to i32
  %i.ags = and i32 %.signext.i3.i, -2147483648
  %i.agt = or i32 %i.ags, %i.agr                  ; 2 uses
  %i.agu = bitcast i32 %i.agt to float            ; 4 uses
  %i.agv = fcmp olt float %48, %i.agu
  br i1 %i.agv, label %.lr.ph.i.i24.i116.backedge, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph.i.i24.i116
  %i.agw = fcmp ogt float %48, %i.agu
  br i1 %i.agw, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.agx = fcmp oeq float %48, %i.agu
  br i1 %i.agx, label %.split492, label %.split491

.split492:                                        ; preds = %bb.gj
  %i.agy = icmp sgt i32 %i.agt, -1
  %spec.select.i = and i1 %i.afi, %i.agy
  br i1 %spec.select.i, label %.lr.ph.i.i24.i116.backedge, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i

.split491:                                        ; preds = %bb.gj
  %i.agz = fcmp uno float %i.agu, 0.000000e+00
  %or.cond19.i.i = and i1 %i.afh, %i.agz
  br i1 %or.cond19.i.i, label %.lr.ph.i.i24.i116.backedge, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i

.lr.ph.i.i24.i116.backedge:                       ; preds = %.split491, %.split492, %.lr.ph.i.i24.i116
  br label %.lr.ph.i.i24.i116, !llvm.loop !71

_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i: ; preds = %bb.gh, %.split491, %.split492, %bb.gi, %bb.gf, %.split489, %.split488, %bb.ge, %bb.gd, %bb.gc
  %.sink.i21.i113 = phi ptr [ %i.xf, %bb.ge ], [ %i.xf, %bb.gc ], [ %i.xf, %bb.gd ], [ %.020.i18.i, %.split489 ], [ %.020.i18.i, %.split488 ], [ %.020.i18.i, %bb.gf ], [ %.013.i.i25.i117, %.split491 ], [ %.013.i.i25.i117, %bb.gi ], [ %.013.i.i25.i117, %.split492 ], [ %.013.i.i25.i117.us, %bb.gh ]
  store i16 %i.adh, ptr %.sink.i21.i113, align 2
  %.0.i22.i114 = getelementptr inbounds nuw i8, ptr %.020.i18.i, i64 2 ; 2 uses
  %.not.i23.i115 = icmp eq ptr %.0.i22.i114, %i.xh
  br i1 %.not.i23.i115, label %_ZSt4sortIPhEvT_S1_.exit, label %.lr.ph.i17.i112, !llvm.loop !72

_ZSt4sortIPhEvT_S1_.exit:                         ; preds = %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i20.i, %_ZSt25__unguarded_linear_insertIPtN9__gnu_cxx5__ops14_Val_comp_iterIPFbttEEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20.i, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIPFbddEEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i20.i, %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_comp_iterIPFbffEEEEvT_T0_.exit.i.i, %bb.fh, %bb.fz, %bb.dp, %bb.eo, %bb.bx, %bb.cw, %bb.bs, %bb.br, %bb.bm, %bb.bl, %bb.bg, %bb.bf, %bb.ba, %bb.az, %bb.au, %bb.at, %bb.ao, %bb.an, %bb.ai, %bb.ah, %bb.ac, %bb.ab, %bb.w, %bb.v, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit
  br i1 %.not, label %_ZN2v84base14Relaxed_MemcpyEPVcPVKcm.exit73, label %bb.gk

bb.gk:                                            ; preds = %_ZSt4sortIPhEvT_S1_.exit
  %i.aha = load i64, ptr %1, align 8              ; 2 uses
  %i.ahb = add i64 %i.aha, 71
  %i.ahc = inttoptr i64 %i.ahb to ptr
  %i.ahd = load i64, ptr %i.ahc, align 8
  %i.ahe = add i64 %i.aha, 79
  %i.ahf = inttoptr i64 %i.ahe to ptr
  %i.ahg = load i64, ptr %i.ahf, align 8
  %i.ahh = add i64 %i.ahg, %i.ahd                 ; 2 uses
  %i.ahi = inttoptr i64 %i.ahh to ptr             ; 2 uses
  %.not33.i45 = icmp eq i64 %.0.i25, 0
  %i.ahj = and i64 %i.ahh, 7
  %i.ahk = icmp eq i64 %i.ahj, 0
  %or.cond3034.i46 = or i1 %.not33.i45, %i.ahk
  br i1 %or.cond3034.i46, label %.critedge.i53, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.gk, %.lr.ph.i47
  %.037.i48 = phi i64 [ %i.aho, %.lr.ph.i47 ], [ %.0.i25, %bb.gk ]
  %.01836.i49 = phi ptr [ %i.ahm, %.lr.ph.i47 ], [ %.1.i, %bb.gk ] ; 2 uses
  %.02235.i50 = phi ptr [ %i.ahl, %.lr.ph.i47 ], [ %i.ahi, %bb.gk ] ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.02235.i50, i64 1 ; 3 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %.01836.i49, i64 1 ; 2 uses
  %i.ahn = load atomic volatile i8, ptr %.01836.i49 monotonic, align 1
  store atomic volatile i8 %i.ahn, ptr %.02235.i50 monotonic, align 1
  %i.aho = add i64 %.037.i48, -1                  ; 3 uses
  %.not.i51 = icmp eq i64 %i.aho, 0
  %i.ahp = ptrtoint ptr %i.ahl to i64
  %i.ahq = and i64 %i.ahp, 7
  %i.ahr = icmp eq i64 %i.ahq, 0
  %or.cond30.i52 = select i1 %.not.i51, i1 true, i1 %i.ahr
  br i1 %or.cond30.i52, label %.critedge.i53, label %.lr.ph.i47, !llvm.loop !61

.critedge.i53:                                    ; preds = %.lr.ph.i47, %bb.gk
  %.022.lcssa.i54 = phi ptr [ %i.ahi, %bb.gk ], [ %i.ahl, %.lr.ph.i47 ] ; 5 uses
  %.018.lcssa.i55 = phi ptr [ %.1.i, %bb.gk ], [ %i.ahm, %.lr.ph.i47 ] ; 5 uses
  %.0.lcssa.i56 = phi i64 [ %.0.i25, %bb.gk ], [ %i.aho, %.lr.ph.i47 ]
  %.0.lcssa.i56.fr = freeze i64 %.0.lcssa.i56     ; 6 uses
  %i.ahs = ptrtoint ptr %.018.lcssa.i55 to i64
  %i.aht = and i64 %i.ahs, 7
  %i.ahu = icmp eq i64 %i.aht, 0
  br i1 %i.ahu, label %bb.gl, label %.loopexit.i57

bb.gl:                                            ; preds = %.critedge.i53
  %i.ahv = ptrtoint ptr %.022.lcssa.i54 to i64
  %i.ahw = and i64 %i.ahv, 7
  %i.ahx = icmp eq i64 %i.ahw, 0
  %i.ahy = icmp ugt i64 %.0.lcssa.i56.fr, 7
  %or.cond.i67 = and i1 %i.ahx, %i.ahy
  br i1 %or.cond.i67, label %.preheader.i68.preheader, label %.loopexit.i57

.preheader.i68.preheader:                         ; preds = %bb.gl
  %i.ahz = add i64 %.0.lcssa.i56.fr, -8           ; 2 uses
  %i.aia = lshr i64 %i.ahz, 3
  %i.aib = add nuw nsw i64 %i.aia, 1
  %xtraiter1004 = and i64 %i.aib, 7               ; 2 uses
  %lcmp.mod1005.not = icmp eq i64 %xtraiter1004, 0
  br i1 %lcmp.mod1005.not, label %.preheader.i68.prol.loopexit, label %.preheader.i68.prol

.preheader.i68.prol:                              ; preds = %.preheader.i68.preheader, %.preheader.i68.prol
  %.123.i69.prol = phi ptr [ %i.aid, %.preheader.i68.prol ], [ %.022.lcssa.i54, %.preheader.i68.preheader ] ; 2 uses
  %.119.i70.prol = phi ptr [ %i.aie, %.preheader.i68.prol ], [ %.018.lcssa.i55, %.preheader.i68.preheader ] ; 2 uses
  %.1.i71.prol = phi i64 [ %i.aif, %.preheader.i68.prol ], [ %.0.lcssa.i56.fr, %.preheader.i68.preheader ]
  %prol.iter1006 = phi i64 [ %prol.iter1006.next, %.preheader.i68.prol ], [ 0, %.preheader.i68.preheader ]
  %i.aic = load atomic volatile i64, ptr %.119.i70.prol monotonic, align 8
  store atomic volatile i64 %i.aic, ptr %.123.i69.prol monotonic, align 8
  %i.aid = getelementptr inbounds nuw i8, ptr %.123.i69.prol, i64 8 ; 3 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %.119.i70.prol, i64 8 ; 3 uses
  %i.aif = add i64 %.1.i71.prol, -8               ; 3 uses
  %prol.iter1006.next = add i64 %prol.iter1006, 1 ; 2 uses
  %prol.iter1006.cmp.not = icmp eq i64 %prol.iter1006.next, %xtraiter1004
  br i1 %prol.iter1006.cmp.not, label %.preheader.i68.prol.loopexit, label %.preheader.i68.prol, !llvm.loop !74

.preheader.i68.prol.loopexit:                     ; preds = %.preheader.i68.prol, %.preheader.i68.preheader
  %.123.i69.unr = phi ptr [ %.022.lcssa.i54, %.preheader.i68.preheader ], [ %i.aid, %.preheader.i68.prol ]
  %.119.i70.unr = phi ptr [ %.018.lcssa.i55, %.preheader.i68.preheader ], [ %i.aie, %.preheader.i68.prol ]
  %.1.i71.unr = phi i64 [ %.0.lcssa.i56.fr, %.preheader.i68.preheader ], [ %i.aif, %.preheader.i68.prol ]
  %.lcssa956.unr = phi ptr [ poison, %.preheader.i68.preheader ], [ %i.aid, %.preheader.i68.prol ]
  %.lcssa955.unr = phi ptr [ poison, %.preheader.i68.preheader ], [ %i.aie, %.preheader.i68.prol ]
  %.lcssa.unr = phi i64 [ poison, %.preheader.i68.preheader ], [ %i.aif, %.preheader.i68.prol ]
  %i.aig = icmp ult i64 %i.ahz, 56
  br i1 %i.aig, label %.loopexit.i57.loopexit, label %.preheader.i68

.preheader.i68:                                   ; preds = %.preheader.i68.prol.loopexit, %.preheader.i68
  %.123.i69 = phi ptr [ %i.ajd, %.preheader.i68 ], [ %.123.i69.unr, %.preheader.i68.prol.loopexit ] ; 9 uses
  %.119.i70 = phi ptr [ %i.aje, %.preheader.i68 ], [ %.119.i70.unr, %.preheader.i68.prol.loopexit ] ; 9 uses
  %.1.i71 = phi i64 [ %i.ajf, %.preheader.i68 ], [ %.1.i71.unr, %.preheader.i68.prol.loopexit ]
  %i.aih = load atomic volatile i64, ptr %.119.i70 monotonic, align 8
  store atomic volatile i64 %i.aih, ptr %.123.i69 monotonic, align 8
  %i.aii = getelementptr inbounds nuw i8, ptr %.123.i69, i64 8
  %i.aij = getelementptr inbounds nuw i8, ptr %.119.i70, i64 8
  %i.aik = load atomic volatile i64, ptr %i.aij monotonic, align 8
  store atomic volatile i64 %i.aik, ptr %i.aii monotonic, align 8
  %i.ail = getelementptr inbounds nuw i8, ptr %.123.i69, i64 16
  %i.aim = getelementptr inbounds nuw i8, ptr %.119.i70, i64 16
  %i.ain = load atomic volatile i64, ptr %i.aim monotonic, align 8
  store atomic volatile i64 %i.ain, ptr %i.ail monotonic, align 8
  %i.aio = getelementptr inbounds nuw i8, ptr %.123.i69, i64 24
  %i.aip = getelementptr inbounds nuw i8, ptr %.119.i70, i64 24
  %i.aiq = load atomic volatile i64, ptr %i.aip monotonic, align 8
  store atomic volatile i64 %i.aiq, ptr %i.aio monotonic, align 8
  %i.air = getelementptr inbounds nuw i8, ptr %.123.i69, i64 32
  %i.ais = getelementptr inbounds nuw i8, ptr %.119.i70, i64 32
  %i.ait = load atomic volatile i64, ptr %i.ais monotonic, align 8
  store atomic volatile i64 %i.ait, ptr %i.air monotonic, align 8
  %i.aiu = getelementptr inbounds nuw i8, ptr %.123.i69, i64 40
  %i.aiv = getelementptr inbounds nuw i8, ptr %.119.i70, i64 40
  %i.aiw = load atomic volatile i64, ptr %i.aiv monotonic, align 8
  store atomic volatile i64 %i.aiw, ptr %i.aiu monotonic, align 8
  %i.aix = getelementptr inbounds nuw i8, ptr %.123.i69, i64 48
  %i.aiy = getelementptr inbounds nuw i8, ptr %.119.i70, i64 48
  %i.aiz = load atomic volatile i64, ptr %i.aiy monotonic, align 8
  store atomic volatile i64 %i.aiz, ptr %i.aix monotonic, align 8
  %i.aja = getelementptr inbounds nuw i8, ptr %.123.i69, i64 56
  %i.ajb = getelementptr inbounds nuw i8, ptr %.119.i70, i64 56
  %i.ajc = load atomic volatile i64, ptr %i.ajb monotonic, align 8
  store atomic volatile i64 %i.ajc, ptr %i.aja monotonic, align 8
  %i.ajd = getelementptr inbounds nuw i8, ptr %.123.i69, i64 64 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %.119.i70, i64 64 ; 2 uses
  %i.ajf = add i64 %.1.i71, -64                   ; 3 uses
  %.old1.i72.7 = icmp ugt i64 %i.ajf, 7
  br i1 %.old1.i72.7, label %.preheader.i68, label %.loopexit.i57.loopexit

.loopexit.i57.loopexit:                           ; preds = %.preheader.i68, %.preheader.i68.prol.loopexit
  %.lcssa956 = phi ptr [ %.lcssa956.unr, %.preheader.i68.prol.loopexit ], [ %i.ajd, %.preheader.i68 ]
  %.lcssa955 = phi ptr [ %.lcssa955.unr, %.preheader.i68.prol.loopexit ], [ %i.aje, %.preheader.i68 ]
  %.lcssa = phi i64 [ %.lcssa.unr, %.preheader.i68.prol.loopexit ], [ %i.ajf, %.preheader.i68 ]
  %i.ajg = freeze i64 %.lcssa
  br label %.loopexit.i57

.loopexit.i57:                                    ; preds = %.loopexit.i57.loopexit, %bb.gl, %.critedge.i53
  %.224.i58 = phi ptr [ %.022.lcssa.i54, %.critedge.i53 ], [ %.022.lcssa.i54, %bb.gl ], [ %.lcssa956, %.loopexit.i57.loopexit ] ; 2 uses
  %.220.i59 = phi ptr [ %.018.lcssa.i55, %.critedge.i53 ], [ %.018.lcssa.i55, %bb.gl ], [ %.lcssa955, %.loopexit.i57.loopexit ] ; 2 uses
  %.2.i60 = phi i64 [ %.0.lcssa.i56.fr, %.critedge.i53 ], [ %.0.lcssa.i56.fr, %bb.gl ], [ %i.ajg, %.loopexit.i57.loopexit ] ; 5 uses
  %.not2740.i61 = icmp eq i64 %.2.i60, 0
  br i1 %.not2740.i61, label %_ZN2v84base14Relaxed_MemcpyEPVcPVKcm.exit73, label %.lr.ph44.i62.preheader

.lr.ph44.i62.preheader:                           ; preds = %.loopexit.i57
  %xtraiter1007 = and i64 %.2.i60, 7              ; 2 uses
  %lcmp.mod1008.not = icmp eq i64 %xtraiter1007, 0
  br i1 %lcmp.mod1008.not, label %.lr.ph44.i62.prol.loopexit, label %.lr.ph44.i62.prol

.lr.ph44.i62.prol:                                ; preds = %.lr.ph44.i62.preheader, %.lr.ph44.i62.prol
  %.343.i63.prol = phi i64 [ %i.ajk, %.lr.ph44.i62.prol ], [ %.2.i60, %.lr.ph44.i62.preheader ]
  %.32142.i64.prol = phi ptr [ %i.aji, %.lr.ph44.i62.prol ], [ %.220.i59, %.lr.ph44.i62.preheader ] ; 2 uses
  %.32541.i65.prol = phi ptr [ %i.ajh, %.lr.ph44.i62.prol ], [ %.224.i58, %.lr.ph44.i62.preheader ] ; 2 uses
  %prol.iter1009 = phi i64 [ %prol.iter1009.next, %.lr.ph44.i62.prol ], [ 0, %.lr.ph44.i62.preheader ]
  %i.ajh = getelementptr inbounds nuw i8, ptr %.32541.i65.prol, i64 1 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.32142.i64.prol, i64 1 ; 2 uses
  %i.ajj = load atomic volatile i8, ptr %.32142.i64.prol monotonic, align 1
  store atomic volatile i8 %i.ajj, ptr %.32541.i65.prol monotonic, align 1
  %i.ajk = add i64 %.343.i63.prol, -1             ; 2 uses
  %prol.iter1009.next = add i64 %prol.iter1009, 1 ; 2 uses
  %prol.iter1009.cmp.not = icmp eq i64 %prol.iter1009.next, %xtraiter1007
  br i1 %prol.iter1009.cmp.not, label %.lr.ph44.i62.prol.loopexit, label %.lr.ph44.i62.prol, !llvm.loop !75

.lr.ph44.i62.prol.loopexit:                       ; preds = %.lr.ph44.i62.prol, %.lr.ph44.i62.preheader
  %.343.i63.unr = phi i64 [ %.2.i60, %.lr.ph44.i62.preheader ], [ %i.ajk, %.lr.ph44.i62.prol ]
  %.32142.i64.unr = phi ptr [ %.220.i59, %.lr.ph44.i62.preheader ], [ %i.aji, %.lr.ph44.i62.prol ]
  %.32541.i65.unr = phi ptr [ %.224.i58, %.lr.ph44.i62.preheader ], [ %i.ajh, %.lr.ph44.i62.prol ]
  %i.ajl = icmp ult i64 %.2.i60, 8
  br i1 %i.ajl, label %_ZN2v84base14Relaxed_MemcpyEPVcPVKcm.exit73, label %.lr.ph44.i62

.lr.ph44.i62:                                     ; preds = %.lr.ph44.i62.prol.loopexit, %.lr.ph44.i62
  %.343.i63 = phi i64 [ %i.akk, %.lr.ph44.i62 ], [ %.343.i63.unr, %.lr.ph44.i62.prol.loopexit ]
  %.32142.i64 = phi ptr [ %i.aki, %.lr.ph44.i62 ], [ %.32142.i64.unr, %.lr.ph44.i62.prol.loopexit ] ; 9 uses
  %.32541.i65 = phi ptr [ %i.akh, %.lr.ph44.i62 ], [ %.32541.i65.unr, %.lr.ph44.i62.prol.loopexit ] ; 9 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.32541.i65, i64 1
  %i.ajn = getelementptr inbounds nuw i8, ptr %.32142.i64, i64 1
  %i.ajo = load atomic volatile i8, ptr %.32142.i64 monotonic, align 1
  store atomic volatile i8 %i.ajo, ptr %.32541.i65 monotonic, align 1
  %i.ajp = getelementptr inbounds nuw i8, ptr %.32541.i65, i64 2
  %i.ajq = getelementptr inbounds nuw i8, ptr %.32142.i64, i64 2
  %i.ajr = load atomic volatile i8, ptr %i.ajn monotonic, align 1
  store atomic volatile i8 %i.ajr, ptr %i.ajm monotonic, align 1
  %i.ajs = getelementptr inbounds nuw i8, ptr %.32541.i65, i64 3
end_hunk_0
