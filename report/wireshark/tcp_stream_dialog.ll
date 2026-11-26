Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/tcp_stream_dialog?download=true
inline.NumInlined: 2777
inline.NumDeleted: 833
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN15TCPStreamDialog14fillThroughputEv:bb.a
  %i.kp = load i32, ptr %.sroa.0.0.i.i17.i, align 4 ; 2 uses
  %i.kq = sub i32 %.sroa.0560.0.extract.trunc, %i.kp
  %i.kr = icmp slt i32 %i.kq, 0
  br i1 %i.kr, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i, !llvm.loop !123

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i10.i
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.08.i.i, %.lr.ph.i10.i ], [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ]
  store i64 %i.kh, ptr %.sroa.04.0.lcssa.i.i12.i, align 4
  %i.ks = getelementptr i8, ptr %.sroa.0.08.i.i, i64 8 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.ks, %i.hw
  br i1 %.not.i13.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exitthread-pre-split, label %.lr.ph.i10.i, !llvm.loop !125

.preheader.i18.i:                                 ; preds = %.noexc158
  %.not20.i20.i = icmp eq i8 %i.nq, 1
  br i1 %.not20.i20.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exitthread-pre-split, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %.preheader.i18.i
  %.sroa.09.019.i19.i = getelementptr i8, ptr %i.hu, i64 8
  %.pre738 = load i32, ptr %i.hu, align 4
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.preheader, %bb.bi
  %i.kt = phi i32 [ %i.mw, %bb.bi ], [ %.pre738, %.lr.ph.i21.i.preheader ]
  %.sroa.09.022.i22.i = phi ptr [ %.sroa.09.0.i26.i, %bb.bi ], [ %.sroa.09.019.i19.i, %.lr.ph.i21.i.preheader ] ; 9 uses
  %.pn21.i23.i = phi ptr [ %.sroa.09.022.i22.i, %bb.bi ], [ %i.hu, %.lr.ph.i21.i.preheader ] ; 3 uses
  %i.ku = load i32, ptr %.sroa.09.022.i22.i, align 4
  %i.kv = sub i32 %i.ku, %i.kt
  %i.kw = icmp slt i32 %i.kv, 0
  %i.kx = load i64, ptr %.sroa.09.022.i22.i, align 4 ; 4 uses
  br i1 %i.kw, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.i21.i
  %i.ky = ptrtoint ptr %.sroa.09.022.i22.i to i64
  %i.kz = sub i64 %i.ky, %i.hx
  %i.la = ashr exact i64 %i.kz, 3                 ; 5 uses
  %i.lb = icmp sgt i64 %i.la, 0
  br i1 %i.lb, label %.lr.ph.i.i.i.i.i.preheader.i33.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i

.lr.ph.i.i.i.i.i.preheader.i33.i:                 ; preds = %bb.bg
  %i.lc = getelementptr i8, ptr %.pn21.i23.i, i64 16 ; 2 uses
  %xtraiter = and i64 %i.la, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i34.i.prol

.lr.ph.i.i.i.i.i.i34.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i33.i, %.lr.ph.i.i.i.i.i.i34.i.prol
  %.010.i.i.i.i.i.i35.i.prol = phi i64 [ %i.lj, %.lr.ph.i.i.i.i.i.i34.i.prol ], [ %i.la, %.lr.ph.i.i.i.i.i.preheader.i33.i ]
  %.069.i.i.i.i.i.i36.i.prol = phi ptr [ %i.le, %.lr.ph.i.i.i.i.i.i34.i.prol ], [ %i.lc, %.lr.ph.i.i.i.i.i.preheader.i33.i ] ; 2 uses
  %.078.i.i.i.i.i.i37.i.prol = phi ptr [ %i.ld, %.lr.ph.i.i.i.i.i.i34.i.prol ], [ %.sroa.09.022.i22.i, %.lr.ph.i.i.i.i.i.preheader.i33.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i34.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i33.i ]
  %i.ld = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i.prol, i64 -8 ; 3 uses
  %i.le = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i.prol, i64 -8 ; 3 uses
  %i.lf = load i32, ptr %i.ld, align 4
  store i32 %i.lf, ptr %i.le, align 4
  %i.lg = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i.prol, i64 -4
  %i.lh = load i32, ptr %i.lg, align 4
  %i.li = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i.prol, i64 -4
  store i32 %i.lh, ptr %i.li, align 4
  %i.lj = add nsw i64 %.010.i.i.i.i.i.i35.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i34.i.prol, !llvm.loop !126

.lr.ph.i.i.i.i.i.i34.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i34.i.prol, %.lr.ph.i.i.i.i.i.preheader.i33.i
  %.010.i.i.i.i.i.i35.i.unr = phi i64 [ %i.la, %.lr.ph.i.i.i.i.i.preheader.i33.i ], [ %i.lj, %.lr.ph.i.i.i.i.i.i34.i.prol ]
  %.069.i.i.i.i.i.i36.i.unr = phi ptr [ %i.lc, %.lr.ph.i.i.i.i.i.preheader.i33.i ], [ %i.le, %.lr.ph.i.i.i.i.i.i34.i.prol ]
  %.078.i.i.i.i.i.i37.i.unr = phi ptr [ %.sroa.09.022.i22.i, %.lr.ph.i.i.i.i.i.preheader.i33.i ], [ %i.ld, %.lr.ph.i.i.i.i.i.i34.i.prol ]
  %i.lk = icmp ult i64 %i.la, 4
  br i1 %i.lk, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i, label %.lr.ph.i.i.i.i.i.i34.i

.lr.ph.i.i.i.i.i.i34.i:                           ; preds = %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i34.i
  %.010.i.i.i.i.i.i35.i = phi i64 [ %i.mj, %.lr.ph.i.i.i.i.i.i34.i ], [ %.010.i.i.i.i.i.i35.i.unr, %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i36.i = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i.i34.i ], [ %.069.i.i.i.i.i.i36.i.unr, %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i37.i = phi ptr [ %i.md, %.lr.ph.i.i.i.i.i.i34.i ], [ %.078.i.i.i.i.i.i37.i.unr, %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit ] ; 8 uses
  %i.ll = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -8
  %i.lm = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -8
  %i.ln = load i32, ptr %i.ll, align 4
  store i32 %i.ln, ptr %i.lm, align 4
  %i.lo = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -4
  %i.lp = load i32, ptr %i.lo, align 4
  %i.lq = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -4
  store i32 %i.lp, ptr %i.lq, align 4
  %i.lr = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -16
  %i.ls = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -16
  %i.lt = load i32, ptr %i.lr, align 4
  store i32 %i.lt, ptr %i.ls, align 4
  %i.lu = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -12
  %i.lv = load i32, ptr %i.lu, align 4
  %i.lw = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -12
  store i32 %i.lv, ptr %i.lw, align 4
  %i.lx = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -24
  %i.ly = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -24
  %i.lz = load i32, ptr %i.lx, align 4
  store i32 %i.lz, ptr %i.ly, align 4
  %i.ma = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -20
  %i.mb = load i32, ptr %i.ma, align 4
  %i.mc = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -20
  store i32 %i.mb, ptr %i.mc, align 4
  %i.md = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -32 ; 2 uses
  %i.me = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -32 ; 2 uses
  %i.mf = load i32, ptr %i.md, align 4
  store i32 %i.mf, ptr %i.me, align 4
  %i.mg = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -28
  %i.mh = load i32, ptr %i.mg, align 4
  %i.mi = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -28
  store i32 %i.mh, ptr %i.mi, align 4
  %i.mj = add nsw i64 %.010.i.i.i.i.i.i35.i, -4
  %i.mk = icmp sgt i64 %.010.i.i.i.i.i.i35.i, 4
  br i1 %i.mk, label %.lr.ph.i.i.i.i.i.i34.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i, !llvm.loop !3

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i: ; preds = %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i34.i, %bb.bg
  store i64 %i.kx, ptr %i.hu, align 4
  %i.ml = trunc i64 %i.kx to i32
  br label %bb.bi

bb.bh:                                            ; preds = %.lr.ph.i21.i
  %.sroa.0564.0.extract.trunc = trunc i64 %i.kx to i32 ; 2 uses
  %i.mm = load i32, ptr %.pn21.i23.i, align 4     ; 2 uses
  %i.mn = sub i32 %.sroa.0564.0.extract.trunc, %i.mm
  %i.mo = icmp slt i32 %i.mn, 0
  br i1 %i.mo, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i

.lr.ph.i.i28.i:                                   ; preds = %bb.bh, %.lr.ph.i.i28.i
  %i.mp = phi i32 [ %i.mt, %.lr.ph.i.i28.i ], [ %i.mm, %bb.bh ]
  %.sroa.0.09.i.i29.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i28.i ], [ %.pn21.i23.i, %bb.bh ] ; 3 uses
  %.sroa.04.08.i.i30.i = phi ptr [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ], [ %.sroa.09.022.i22.i, %bb.bh ] ; 3 uses
  store i32 %i.mp, ptr %.sroa.04.08.i.i30.i, align 4
  %i.mq = getelementptr i8, ptr %.sroa.04.08.i.i30.i, i64 -4
  %i.mr = load i32, ptr %i.mq, align 4
  %i.ms = getelementptr i8, ptr %.sroa.04.08.i.i30.i, i64 4
  store i32 %i.mr, ptr %i.ms, align 4
  %.sroa.0.0.i.i31.i = getelementptr i8, ptr %.sroa.0.09.i.i29.i, i64 -8 ; 2 uses
  %i.mt = load i32, ptr %.sroa.0.0.i.i31.i, align 4 ; 2 uses
  %i.mu = sub i32 %.sroa.0564.0.extract.trunc, %i.mt
  %i.mv = icmp slt i32 %i.mu, 0
  br i1 %i.mv, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i, !llvm.loop !123

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i: ; preds = %.lr.ph.i.i28.i, %bb.bh
  %.sroa.04.0.lcssa.i.i25.i = phi ptr [ %.sroa.09.022.i22.i, %bb.bh ], [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ]
  store i64 %i.kx, ptr %.sroa.04.0.lcssa.i.i25.i, align 4
  %.pre = load i32, ptr %i.hu, align 4
  br label %bb.bi

bb.bi:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i
  %i.mw = phi i32 [ %.pre, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i ], [ %i.ml, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i ]
  %.sroa.09.0.i26.i = getelementptr i8, ptr %.sroa.09.022.i22.i, i64 8 ; 2 uses
  %.not.i27.i = icmp eq ptr %.sroa.09.0.i26.i, %i.hw
  br i1 %.not.i27.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exitthread-pre-split, label %.lr.ph.i21.i, !llvm.loop !124

bb.bj:                                            ; preds = %.lr.ph640, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit161
  %indvars.iv = phi i64 [ 0, %.lr.ph640 ], [ %indvars.iv.next, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit161 ] ; 7 uses
  %i.mx = load ptr, ptr %i.ch, align 8
  %i.my = load ptr, ptr %17, align 8              ; 2 uses
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = ashr exact i64 %i.nb, 3
  %.not.i = icmp ugt i64 %i.nc, %indvars.iv
  br i1 %.not.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit, label %bb.bk, !prof !149

bb.bk:                                            ; preds = %bb.bj
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef @.str.250, i32 noundef 1128, ptr noundef @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit:        ; preds = %bb.bj
  %i.nd = getelementptr [4 x i8], ptr %i.hs, i64 %indvars.iv
  %i.ne = load i32, ptr %i.nd, align 4
  %i.nf = getelementptr [8 x i8], ptr %i.my, i64 %indvars.iv
  store i32 %i.ne, ptr %i.nf, align 4
  %i.ng = load ptr, ptr %i.ch, align 8
  %i.nh = load ptr, ptr %17, align 8              ; 2 uses
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = sub i64 %i.ni, %i.nj
  %i.nl = ashr exact i64 %i.nk, 3
  %.not.i160 = icmp ugt i64 %i.nl, %indvars.iv
  br i1 %.not.i160, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit161, label %bb.bl, !prof !149

bb.bl:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef @.str.250, i32 noundef 1128, ptr noundef @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit161:     ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit
  %i.nm = getelementptr [4 x i8], ptr %i.ht, i64 %indvars.iv
  %i.nn = load i32, ptr %i.nm, align 4
  %i.no = getelementptr [8 x i8], ptr %i.nh, i64 %indvars.iv
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  store i32 %i.nn, ptr %i.np, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nq = load i8, ptr %i.hq, align 1             ; 5 uses
  %i.nr = zext i8 %i.nq to i64
  %i.ns = icmp samesign ult i64 %indvars.iv.next, %i.nr
  br i1 %i.ns, label %bb.bj, label %._crit_edge, !llvm.loop !127

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exitthread-pre-split: ; preds = %bb.bi, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i, %.preheader.i18.i, %._crit_edge
  %.pr = load i8, ptr %i.hq, align 1
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit: ; preds = %bb.ba, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exitthread-pre-split
  %i.nt = phi i8 [ %.pr, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exitthread-pre-split ], [ 0, %bb.ba ] ; 4 uses
  %i.nu = load ptr, ptr %16, align 8              ; 4 uses
  %i.nv = load ptr, ptr %i.gl, align 8            ; 3 uses
  %.not143164.i = icmp eq ptr %i.nu, %i.nv
  br i1 %.not143164.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, %bb.bo
  %.1 = phi i32 [ %i.od, %bb.bo ], [ %i.hp, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit ] ; 3 uses
  %.sroa.0133.0165.i = phi ptr [ %i.oe, %bb.bo ], [ %i.nu, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit ] ; 6 uses
  %i.nw = getelementptr i8, ptr %.sroa.0133.0165.i, i64 4
  %i.nx = load i32, ptr %i.nw, align 4            ; 2 uses
  %i.ny = sub i32 %i.ho, %i.nx
  %.not.i162 = icmp sgt i32 %i.ny, -1
  %i.nz = load i32, ptr %.sroa.0133.0165.i, align 4 ; 3 uses
  br i1 %.not.i162, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i
  %i.oa = sub i32 %i.ho, %i.nz
  %i.ob = icmp slt i32 %i.oa, 1
  br i1 %i.ob, label %.loopexit152.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.neg68.i = sub i32 %.1, %i.ho
  %i.oc = add i32 %.neg68.i, %i.nz
  store i32 %i.ho, ptr %.sroa.0133.0165.i, align 4
  %.pre741 = load ptr, ptr %16, align 8
  br label %.loopexit152.i

bb.bo:                                            ; preds = %.lr.ph.i
  %.neg.i = sub i32 %i.nz, %i.nx
  %i.od = add i32 %.neg.i, %.1                    ; 2 uses
  %i.oe = getelementptr i8, ptr %.sroa.0133.0165.i, i64 8 ; 2 uses
  %.not143.i = icmp eq ptr %i.oe, %i.nv
  br i1 %.not143.i, label %.loopexit152.i, label %.lr.ph.i, !llvm.loop !128

.loopexit152.i:                                   ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.of = phi ptr [ %i.nu, %bb.bm ], [ %.pre741, %bb.bn ], [ %i.nu, %bb.bo ] ; 21 uses
  %.2 = phi i32 [ %.1, %bb.bm ], [ %i.oc, %bb.bn ], [ %i.od, %bb.bo ] ; 3 uses
  %.sroa.0133.0163.i = phi ptr [ %.sroa.0133.0165.i, %bb.bm ], [ %.sroa.0133.0165.i, %bb.bn ], [ %i.nv, %bb.bo ] ; 6 uses
  %.not144.i = icmp eq ptr %.sroa.0133.0163.i, %i.of
  br i1 %.not144.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i, label %bb.bp

bb.bp:                                            ; preds = %.loopexit152.i
  %19 = ptrtoint ptr %i.of to i64                 ; 3 uses
  %i.og = ptrtoint ptr %.sroa.0133.0163.i to i64  ; 5 uses
  %20 = sub i64 %i.og, %19
  %21 = getelementptr i8, ptr %i.of, i64 %20      ; 8 uses
  %i.oh = load ptr, ptr %i.gl, align 8            ; 5 uses
  %.not11.i.i.i = icmp eq ptr %.sroa.0133.0163.i, %i.oh
  br i1 %.not11.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.oi = ptrtoint ptr %i.oh to i64               ; 3 uses
  %i.oj = sub i64 %i.oi, %i.og                    ; 3 uses
  %i.ok = ashr exact i64 %i.oj, 3                 ; 9 uses
  %i.ol = icmp sgt i64 %i.ok, 0
  br i1 %i.ol, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.a, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader.a:               ; preds = %bb.bq
  %min.iters.check998 = icmp ult i64 %i.ok, 46
  br i1 %min.iters.check998, label %.lr.ph.i.i.i.i.i.i.i.i.preheader1049, label %vector.scevcheck969

vector.scevcheck969:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.a
  %i.om = add nsw i64 %i.ok, -1                   ; 2 uses
  %mul.result971 = shl i64 %i.om, 3               ; 3 uses
  %mul.overflow972 = icmp ugt i64 %i.om, 2305843009213693951
  %i.on = getelementptr i8, ptr %i.of, i64 %mul.result971
  %i.oo = icmp ult ptr %i.on, %i.of
  %scevgep973 = getelementptr i8, ptr %i.of, i64 4 ; 2 uses
  %i.op = getelementptr i8, ptr %scevgep973, i64 %mul.result971
  %i.oq = icmp ult ptr %i.op, %scevgep973
  %i.or = getelementptr i8, ptr %21, i64 %mul.result971
  %i.os = icmp ult ptr %i.or, %.sroa.0133.0163.i
  %i.ot = or i1 %i.os, %mul.overflow972
  %i.ou = or i1 %i.oq, %i.oo
  %i.ov = or i1 %i.ou, %i.ot
  br i1 %i.ov, label %.lr.ph.i.i.i.i.i.i.i.i.preheader1049, label %vector.memcheck999

vector.memcheck999:                               ; preds = %vector.scevcheck969
  %i.ow = getelementptr i8, ptr %i.of, i64 %i.oj
  %i.ox = getelementptr i8, ptr %i.ow, i64 -4     ; 3 uses
  %i.oy = getelementptr i8, ptr %i.of, i64 4      ; 3 uses
  %i.oz = getelementptr i8, ptr %i.of, i64 %i.oj  ; 3 uses
  %i.pa = add i64 %i.oi, -4
  %i.pb = sub i64 %i.pa, %19
  %i.pc = getelementptr i8, ptr %i.of, i64 %i.pb  ; 2 uses
  %i.pd = add i64 %i.og, 4
  %i.pe = sub i64 %i.pd, %19
  %i.pf = getelementptr i8, ptr %i.of, i64 %i.pe  ; 2 uses
  %bound0 = icmp ult ptr %i.of, %i.oz
  %bound1 = icmp ult ptr %i.oy, %i.ox
  %found.conflict = and i1 %bound0, %bound1
  %bound01000 = icmp ult ptr %i.of, %i.pc
  %bound11001 = icmp ult ptr %.sroa.0133.0163.i, %i.ox
  %found.conflict1002 = and i1 %bound01000, %bound11001
  %conflict.rdx = or i1 %found.conflict, %found.conflict1002
  %bound01003 = icmp ult ptr %i.of, %i.oh
  %bound11004 = icmp ult ptr %i.pf, %i.ox
  %found.conflict1005 = and i1 %bound01003, %bound11004
  %conflict.rdx1006 = or i1 %conflict.rdx, %found.conflict1005
  %bound01007 = icmp ult ptr %i.oy, %i.pc
  %bound11008 = icmp ult ptr %.sroa.0133.0163.i, %i.oz
  %found.conflict1009 = and i1 %bound01007, %bound11008
  %conflict.rdx1010 = or i1 %conflict.rdx1006, %found.conflict1009
  %bound01011 = icmp ult ptr %i.oy, %i.oh
  %bound11012 = icmp ult ptr %i.pf, %i.oz
  %found.conflict1013 = and i1 %bound01011, %bound11012
  %conflict.rdx1014 = or i1 %conflict.rdx1010, %found.conflict1013
  br i1 %conflict.rdx1014, label %.lr.ph.i.i.i.i.i.i.i.i.preheader1049, label %vector.ph1015

vector.ph1015:                                    ; preds = %vector.memcheck999
  %n.vec1016 = and i64 %i.ok, 4611686018427387900 ; 3 uses
  %i.pg = and i64 %i.ok, 3
  %i.ph = shl i64 %n.vec1016, 3                   ; 2 uses
  %i.pi = getelementptr i8, ptr %i.of, i64 %i.ph
  %i.pj = getelementptr i8, ptr %21, i64 %i.ph
  br label %vector.body1017

vector.body1017:                                  ; preds = %vector.body1017, %vector.ph1015
  %index1018 = phi i64 [ 0, %vector.ph1015 ], [ %index.next1031, %vector.body1017 ] ; 2 uses
  %i.pk = shl i64 %index1018, 3                   ; 3 uses
  %i.pl = or disjoint i64 %i.pk, 16               ; 2 uses
  %next.gep1019 = getelementptr i8, ptr %i.of, i64 %i.pk
  %next.gep1020 = getelementptr i8, ptr %i.of, i64 %i.pl
  %next.gep1021 = getelementptr i8, ptr %21, i64 %i.pk
  %next.gep1022 = getelementptr i8, ptr %21, i64 %i.pl
  %wide.vec1023 = load <4 x i32>, ptr %next.gep1021, align 4
  %wide.vec1026 = load <4 x i32>, ptr %next.gep1022, align 4
  store <4 x i32> %wide.vec1023, ptr %next.gep1019, align 4
  store <4 x i32> %wide.vec1026, ptr %next.gep1020, align 4
  %index.next1031 = add nuw i64 %index1018, 4     ; 2 uses
  %i.pm = icmp eq i64 %index.next1031, %n.vec1016
  br i1 %i.pm, label %middle.block1032, label %vector.body1017, !llvm.loop !129

middle.block1032:                                 ; preds = %vector.body1017
  %cmp.n1033 = icmp eq i64 %i.ok, %n.vec1016
  br i1 %cmp.n1033, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader1049

.lr.ph.i.i.i.i.i.i.i.i.preheader1049:             ; preds = %vector.memcheck999, %vector.scevcheck969, %.lr.ph.i.i.i.i.i.i.i.i.preheader.a, %middle.block1032
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ok, %vector.memcheck999 ], [ %i.ok, %vector.scevcheck969 ], [ %i.ok, %.lr.ph.i.i.i.i.i.i.i.i.preheader.a ], [ %i.pg, %middle.block1032 ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.of, %vector.memcheck999 ], [ %i.of, %vector.scevcheck969 ], [ %i.of, %.lr.ph.i.i.i.i.i.i.i.i.preheader.a ], [ %i.pi, %middle.block1032 ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %21, %vector.memcheck999 ], [ %21, %vector.scevcheck969 ], [ %21, %.lr.ph.i.i.i.i.i.i.i.i.preheader.a ], [ %i.pj, %middle.block1032 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader1049, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.pt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader1049 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.ps, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader1049 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.pr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader1049 ] ; 3 uses
  %i.pn = load i32, ptr %.0910.i.i.i.i.i.i.i.i, align 4
  store i32 %i.pn, ptr %.0811.i.i.i.i.i.i.i.i, align 4
  %i.po = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 4
  %i.pp = load i32, ptr %i.po, align 4
  %i.pq = getelementptr i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 4
  store i32 %i.pp, ptr %i.pq, align 4
  %i.pr = getelementptr i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 8
  %i.ps = getelementptr i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 8
  %i.pt = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.pu = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.pu, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i, !llvm.loop !130

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block1032
  %.pre.i.i.i = load ptr, ptr %i.gl, align 8      ; 2 uses
  %.pre13.i.i.i = ptrtoint ptr %.pre.i.i.i to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i, %bb.bq, %bb.bp
  %.pre-phi14.i.i.i = phi i64 [ %i.oi, %bb.bq ], [ %.pre13.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i ], [ %i.og, %bb.bp ]
  %22 = phi ptr [ %i.oh, %bb.bq ], [ %.pre.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i ], [ %21, %bb.bp ]
  %i.pv = sub i64 %.pre-phi14.i.i.i, %i.og
  %i.pw = getelementptr i8, ptr %i.of, i64 %i.pv  ; 2 uses
  %.not.i.i.i.i163 = icmp eq ptr %22, %i.pw
  br i1 %.not.i.i.i.i163, label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i, label %_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i
  store ptr %i.pw, ptr %i.gl, align 8
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, %_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i, %.loopexit152.i
  %.2850 = phi i32 [ %.2, %.loopexit152.i ], [ %.2, %_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ], [ %.2, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i ], [ %i.hp, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit ] ; 3 uses
  %i.px = zext i8 %i.nt to i32                    ; 3 uses
  %.not184.i = icmp eq i8 %i.nt, 0
  br i1 %.not184.i, label %.loopexit.i, label %.lr.ph167.i

.lr.ph167.i:                                      ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i
  %i.py = load ptr, ptr %i.ch, align 8
  %i.pz = load ptr, ptr %17, align 8              ; 2 uses
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = ashr exact i64 %i.qc, 3
  %wide.trip.count.i = zext i8 %i.nt to i64
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %.lr.ph167.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph167.i ], [ %indvars.iv.next.i, %bb.bt ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.qd
  br i1 %exitcond.not.i, label %bb.bs, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i, !prof !22

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef @.str.250, i32 noundef 1128, ptr noundef @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i:      ; preds = %bb.br
  %i.qe = getelementptr [8 x i8], ptr %i.pz, i64 %indvars.iv.i ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qg = load i32, ptr %i.qf, align 4
  %i.qh = sub i32 %i.ho, %i.qg
  %.not69.i = icmp sgt i32 %i.qh, -1
  br i1 %.not69.i, label %bb.bt, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i:    ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i
  %i.qi = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.qj = load i32, ptr %i.qe, align 4
  %i.qk = sub i32 %i.qj, %i.ho
  %.not70.i = icmp sgt i32 %i.qk, -1
  br i1 %.not70.i, label %.loopexit.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i:    ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i
  store i32 %i.ho, ptr %i.qe, align 4
  br label %.loopexit.i

bb.bt:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond192.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond192.not.i, label %_ZL24goodput_adjust_for_sacksPjjRSt6vectorISt4pairIjjESaIS2_EEhS5_.exit, label %bb.br, !llvm.loop !131

.loopexit.i:                                      ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i
  %.0158.i = phi i32 [ %i.qi, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i ], [ %i.qi, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i ], [ 0, %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i ] ; 3 uses
  %i.ql = icmp slt i32 %.0158.i, %i.px
  br i1 %i.ql, label %.lr.ph177.i, label %.critedge.i

.lr.ph177.i:                                      ; preds = %.loopexit.i
  %i.qm = load ptr, ptr %16, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.ch, %.lr.ph177.i
  %.5 = phi i32 [ %.2850, %.lr.ph177.i ], [ %.6, %bb.ch ] ; 5 uses
  %.1175.i = phi i32 [ %.0158.i, %.lr.ph177.i ], [ %.2.i, %bb.ch ] ; 5 uses
  %.sroa.0109.0174.i = phi ptr [ %i.qm, %.lr.ph177.i ], [ %.sroa.0109.1.i, %bb.ch ] ; 12 uses
  %.sroa.0109.0174.i945 = ptrtoaddr ptr %.sroa.0109.0174.i to i64
  %i.qn = load ptr, ptr %i.gl, align 8            ; 2 uses
  %.not145.i = icmp eq ptr %.sroa.0109.0174.i, %i.qn
  br i1 %.not145.i, label %.critedge.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qo = sext i32 %.1175.i to i64                ; 2 uses
  %i.qp = load ptr, ptr %i.ch, align 8
  %i.qq = load ptr, ptr %17, align 8              ; 2 uses
  %i.qr = ptrtoint ptr %i.qp to i64
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = sub i64 %i.qr, %i.qs
  %i.qu = ashr exact i64 %i.qt, 3
  %.not.i82.i = icmp ugt i64 %i.qu, %i.qo
  br i1 %.not.i82.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i, label %bb.bw, !prof !149

bb.bw:                                            ; preds = %bb.bv
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef @.str.250, i32 noundef 1128, ptr noundef @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i:    ; preds = %bb.bv
  %i.qv = getelementptr [8 x i8], ptr %i.qq, i64 %i.qo ; 4 uses
  %i.qw = getelementptr i8, ptr %.sroa.0109.0174.i, i64 4 ; 4 uses
  %i.qx = load i32, ptr %i.qw, align 4            ; 3 uses
  %i.qy = load i32, ptr %i.qv, align 4            ; 3 uses
  %i.qz = sub i32 %i.qx, %i.qy
  %.not71.i = icmp sgt i32 %i.qz, -1
  br i1 %.not71.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i
  %i.ra = getelementptr i8, ptr %.sroa.0109.0174.i, i64 8
  br label %bb.ch, !llvm.loop !132

bb.by:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qv, i64 4 ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 4            ; 4 uses
  %i.rd = load i32, ptr %.sroa.0109.0174.i, align 4 ; 2 uses
  %i.re = sub i32 %i.rc, %i.rd
  %.not72.i = icmp sgt i32 %i.re, -1
  br i1 %.not72.i, label %.preheader.i, label %bb.bz

.preheader.i:                                     ; preds = %bb.by
  %i.rf = sub i32 %i.qx, %i.rc
  %.not73171.i = icmp sgt i32 %i.rf, -1
  br i1 %.not73171.i, label %._crit_edge.i, label %.lr.ph173.i

.lr.ph173.i:                                      ; preds = %.preheader.i
  %i.rg = getelementptr i8, ptr %.sroa.0109.0174.i, i64 8 ; 4 uses
  %i.rh = getelementptr i8, ptr %.sroa.0109.0174.i, i64 12
  %i.ri = ptrtoint ptr %i.rg to i64
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.rj = load ptr, ptr %16, align 8
  %i.rk = invoke ptr @_ZNSt6vectorISt4pairIjjESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %16, ptr %.sroa.0109.0174.i, ptr noundef align 4 dereferenceable(8) %i.qv)
          to label %.noexc164 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc164:                                        ; preds = %bb.bz
  %i.rl = ptrtoint ptr %.sroa.0109.0174.i to i64
  %i.rm = ptrtoint ptr %i.rj to i64
  %i.rn = sub i64 %i.rl, %i.rm
  %i.ro = sub i32 %.5, %i.qy
  %i.rp = add i32 %i.ro, %i.rc
  %i.rq = load ptr, ptr %16, align 8
  %i.rr = shl i64 %i.rn, 29
  %i.rs = ashr exact i64 %i.rr, 29
  %i.rt = getelementptr i8, ptr %i.rq, i64 %i.rs
  %i.ru = getelementptr i8, ptr %i.rt, i64 8
  %i.rv = add nsw i32 %.1175.i, 1
  br label %bb.ch

bb.ca:                                            ; preds = %bb.ce, %.lr.ph173.i
  %i.rw = phi i32 [ %i.rc, %.lr.ph173.i ], [ %i.tp, %bb.ce ] ; 5 uses
  %.7 = phi i32 [ %.5, %.lr.ph173.i ], [ %.8, %bb.ce ]
  %i.rx = phi ptr [ %i.qn, %.lr.ph173.i ], [ %i.tr, %bb.ce ]
  %.pn.i = phi i32 [ %i.qx, %.lr.ph173.i ], [ %i.tq, %bb.ce ]
  %i.ry = icmp eq ptr %i.rg, %i.rx
  br i1 %i.ry, label %.critedge2.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rz = load i32, ptr %i.rg, align 4            ; 2 uses
  %i.sa = sub i32 %i.rw, %i.rz
  %.not75.i = icmp sgt i32 %i.sa, -1
  br i1 %.not75.i, label %bb.cc, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.ca, %bb.cb
  store i32 %i.rw, ptr %i.qw, align 4
  %.pre.i = load ptr, ptr %i.gl, align 8
  br label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.sb = load i32, ptr %i.rh, align 4
  store i32 %i.sb, ptr %i.qw, align 4
  %i.sc = load ptr, ptr %16, align 8              ; 3 uses
  %i.sd = ptrtoint ptr %i.sc to i64               ; 2 uses
  %i.se = sub i64 %i.ri, %i.sd
  %i.sf = getelementptr i8, ptr %i.sc, i64 %i.se  ; 7 uses
  %i.sg = getelementptr i8, ptr %i.sf, i64 8      ; 9 uses
  %i.sh = load ptr, ptr %i.gl, align 8            ; 4 uses
  %.not.i.i88.i = icmp eq ptr %i.sg, %i.sh
  br i1 %.not.i.i88.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.si = ptrtoint ptr %i.sh to i64
  %i.sj = ptrtoint ptr %i.sg to i64
  %i.sk = sub i64 %i.si, %i.sj
  %i.sl = ashr exact i64 %i.sk, 3                 ; 8 uses
  %i.sm = icmp sgt i64 %i.sl, 0
  br i1 %i.sm, label %.lr.ph.i.i.i.i.i.i.i89.i.preheader, label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit.i

.lr.ph.i.i.i.i.i.i.i89.i.preheader:               ; preds = %bb.cd
  %min.iters.check949 = icmp ult i64 %i.sl, 32
  br i1 %min.iters.check949, label %.lr.ph.i.i.i.i.i.i.i89.i.preheader1040, label %vector.scevcheck941

vector.scevcheck941:                              ; preds = %.lr.ph.i.i.i.i.i.i.i89.i.preheader
  %i.sn = add nsw i64 %i.sl, -1                   ; 2 uses
  %mul.result943 = shl i64 %i.sn, 3               ; 3 uses
  %mul.overflow944 = icmp ugt i64 %i.sn, 2305843009213693951
  %i.so = getelementptr i8, ptr %i.sf, i64 %mul.result943
  %i.sp = icmp ult ptr %i.so, %i.rg
  %scevgep = getelementptr i8, ptr %i.sc, i64 12
  %scevgep946 = getelementptr i8, ptr %scevgep, i64 %.sroa.0109.0174.i945
  %i.sq = sub i64 0, %i.sd
  %scevgep947 = getelementptr i8, ptr %scevgep946, i64 %i.sq ; 2 uses
  %i.sr = getelementptr i8, ptr %scevgep947, i64 %mul.result943
  %i.ss = icmp ult ptr %i.sr, %scevgep947
  %i.st = getelementptr i8, ptr %i.sg, i64 %mul.result943
  %i.su = icmp ult ptr %i.st, %i.sg
  %i.sv = or i1 %i.su, %mul.overflow944
  %i.sw = or i1 %i.ss, %i.sp
end_hunk_0
