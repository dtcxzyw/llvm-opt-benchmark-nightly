Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/tcp_stream_dialog?download=true
inline.NumInlined: 2777
inline.NumDeleted: 831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN15TCPStreamDialog14fillThroughputEv:bb.a
  %i.ji = ashr exact i64 %i.jh, 3                 ; 5 uses
  %i.jj = icmp sgt i64 %i.ji, 0
  br i1 %i.jj, label %.lr.ph.i.i.i.i.i.preheader.i33.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i

.lr.ph.i.i.i.i.i.preheader.i33.i:                 ; preds = %bb.bg
  %i.jk = getelementptr i8, ptr %.pn21.i23.i, i64 16 ; 2 uses
  %xtraiter = and i64 %i.ji, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i34.i.prol

.lr.ph.i.i.i.i.i.i34.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i33.i, %.lr.ph.i.i.i.i.i.i34.i.prol
  %.010.i.i.i.i.i.i35.i.prol = phi i64 [ %i.jr, %.lr.ph.i.i.i.i.i.i34.i.prol ], [ %i.ji, %.lr.ph.i.i.i.i.i.preheader.i33.i ]
  %.069.i.i.i.i.i.i36.i.prol = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i.i34.i.prol ], [ %i.jk, %.lr.ph.i.i.i.i.i.preheader.i33.i ] ; 2 uses
  %.078.i.i.i.i.i.i37.i.prol = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i.i34.i.prol ], [ %.sroa.09.022.i22.i, %.lr.ph.i.i.i.i.i.preheader.i33.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i34.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i33.i ]
  %i.jl = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i.prol, i64 -8 ; 3 uses
  %i.jm = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i.prol, i64 -8 ; 3 uses
  %i.jn = load i32, ptr %i.jl, align 4
  store i32 %i.jn, ptr %i.jm, align 4
  %i.jo = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i.prol, i64 -4
  %i.jp = load i32, ptr %i.jo, align 4
  %i.jq = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i.prol, i64 -4
  store i32 %i.jp, ptr %i.jq, align 4
  %i.jr = add nsw i64 %.010.i.i.i.i.i.i35.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i34.i.prol, !llvm.loop !121

.lr.ph.i.i.i.i.i.i34.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i34.i.prol, %.lr.ph.i.i.i.i.i.preheader.i33.i
  %.010.i.i.i.i.i.i35.i.unr = phi i64 [ %i.ji, %.lr.ph.i.i.i.i.i.preheader.i33.i ], [ %i.jr, %.lr.ph.i.i.i.i.i.i34.i.prol ]
  %.069.i.i.i.i.i.i36.i.unr = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i.preheader.i33.i ], [ %i.jm, %.lr.ph.i.i.i.i.i.i34.i.prol ]
  %.078.i.i.i.i.i.i37.i.unr = phi ptr [ %.sroa.09.022.i22.i, %.lr.ph.i.i.i.i.i.preheader.i33.i ], [ %i.jl, %.lr.ph.i.i.i.i.i.i34.i.prol ]
  %i.js = icmp ult i64 %i.ji, 4
  br i1 %i.js, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i, label %.lr.ph.i.i.i.i.i.i34.i

.lr.ph.i.i.i.i.i.i34.i:                           ; preds = %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i34.i
  %.010.i.i.i.i.i.i35.i = phi i64 [ %i.kr, %.lr.ph.i.i.i.i.i.i34.i ], [ %.010.i.i.i.i.i.i35.i.unr, %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i36.i = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i.i34.i ], [ %.069.i.i.i.i.i.i36.i.unr, %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i37.i = phi ptr [ %i.kl, %.lr.ph.i.i.i.i.i.i34.i ], [ %.078.i.i.i.i.i.i37.i.unr, %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit ] ; 8 uses
  %i.jt = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -8
  %i.ju = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -8
  %i.jv = load i32, ptr %i.jt, align 4
  store i32 %i.jv, ptr %i.ju, align 4
  %i.jw = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -4
  %i.jx = load i32, ptr %i.jw, align 4
  %i.jy = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -4
  store i32 %i.jx, ptr %i.jy, align 4
  %i.jz = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -16
  %i.ka = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -16
  %i.kb = load i32, ptr %i.jz, align 4
  store i32 %i.kb, ptr %i.ka, align 4
  %i.kc = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -12
  %i.kd = load i32, ptr %i.kc, align 4
  %i.ke = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -12
  store i32 %i.kd, ptr %i.ke, align 4
  %i.kf = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -24
  %i.kg = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -24
  %i.kh = load i32, ptr %i.kf, align 4
  store i32 %i.kh, ptr %i.kg, align 4
  %i.ki = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -20
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -20
  store i32 %i.kj, ptr %i.kk, align 4
  %i.kl = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -32 ; 2 uses
  %i.km = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -32 ; 2 uses
  %i.kn = load i32, ptr %i.kl, align 4
  store i32 %i.kn, ptr %i.km, align 4
  %i.ko = getelementptr i8, ptr %.078.i.i.i.i.i.i37.i, i64 -28
  %i.kp = load i32, ptr %i.ko, align 4
  %i.kq = getelementptr i8, ptr %.069.i.i.i.i.i.i36.i, i64 -28
  store i32 %i.kp, ptr %i.kq, align 4
  %i.kr = add nsw i64 %.010.i.i.i.i.i.i35.i, -4
  %i.ks = icmp sgt i64 %.010.i.i.i.i.i.i35.i, 4
  br i1 %i.ks, label %.lr.ph.i.i.i.i.i.i34.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i, !llvm.loop !4

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i: ; preds = %.lr.ph.i.i.i.i.i.i34.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i34.i, %bb.bg
  store i64 %i.jf, ptr %i.gc, align 4
  %i.kt = trunc i64 %i.jf to i32
  br label %bb.bi

bb.bh:                                            ; preds = %.lr.ph.i21.i
  %.sroa.0564.0.extract.trunc = trunc i64 %i.jf to i32 ; 2 uses
  %i.ku = load i32, ptr %.pn21.i23.i, align 4     ; 2 uses
  %i.kv = sub i32 %.sroa.0564.0.extract.trunc, %i.ku
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i

.lr.ph.i.i28.i:                                   ; preds = %bb.bh, %.lr.ph.i.i28.i
  %i.kx = phi i32 [ %i.lb, %.lr.ph.i.i28.i ], [ %i.ku, %bb.bh ]
  %.sroa.0.09.i.i29.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i28.i ], [ %.pn21.i23.i, %bb.bh ] ; 3 uses
  %.sroa.04.08.i.i30.i = phi ptr [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ], [ %.sroa.09.022.i22.i, %bb.bh ] ; 3 uses
  store i32 %i.kx, ptr %.sroa.04.08.i.i30.i, align 4
  %i.ky = getelementptr i8, ptr %.sroa.04.08.i.i30.i, i64 -4
  %i.kz = load i32, ptr %i.ky, align 4
  %i.la = getelementptr i8, ptr %.sroa.04.08.i.i30.i, i64 4
  store i32 %i.kz, ptr %i.la, align 4
  %.sroa.0.0.i.i31.i = getelementptr i8, ptr %.sroa.0.09.i.i29.i, i64 -8 ; 2 uses
  %i.lb = load i32, ptr %.sroa.0.0.i.i31.i, align 4 ; 2 uses
  %i.lc = sub i32 %.sroa.0564.0.extract.trunc, %i.lb
  %i.ld = icmp slt i32 %i.lc, 0
  br i1 %i.ld, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i, !llvm.loop !118

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i: ; preds = %.lr.ph.i.i28.i, %bb.bh
  %.sroa.04.0.lcssa.i.i25.i = phi ptr [ %.sroa.09.022.i22.i, %bb.bh ], [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ]
  store i64 %i.jf, ptr %.sroa.04.0.lcssa.i.i25.i, align 4
  %.pre = load i32, ptr %i.gc, align 4
  br label %bb.bi

bb.bi:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i
  %i.le = phi i32 [ %.pre, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i ], [ %i.kt, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i ]
  %.sroa.09.0.i26.i = getelementptr i8, ptr %.sroa.09.022.i22.i, i64 8 ; 2 uses
  %.not.i27.i = icmp eq ptr %.sroa.09.0.i26.i, %i.ge
  br i1 %.not.i27.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exitthread-pre-split, label %.lr.ph.i21.i, !llvm.loop !119

bb.bj:                                            ; preds = %.lr.ph640, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit161
  %indvars.iv = phi i64 [ 0, %.lr.ph640 ], [ %indvars.iv.next, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit161 ] ; 7 uses
  %i.lf = load ptr, ptr %i.ch, align 8
  %i.lg = load ptr, ptr %17, align 8              ; 2 uses
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = ashr exact i64 %i.lj, 3
  %.not.i = icmp ugt i64 %i.lk, %indvars.iv
  br i1 %.not.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit, label %bb.bk, !prof !142

bb.bk:                                            ; preds = %bb.bj
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef @.str.250, i32 noundef 1128, ptr noundef @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit:        ; preds = %bb.bj
  %i.ll = getelementptr [4 x i8], ptr %i.ga, i64 %indvars.iv
  %i.lm = load i32, ptr %i.ll, align 4
  %i.ln = getelementptr [8 x i8], ptr %i.lg, i64 %indvars.iv
  store i32 %i.lm, ptr %i.ln, align 4
  %i.lo = load ptr, ptr %i.ch, align 8
  %i.lp = load ptr, ptr %17, align 8              ; 2 uses
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = ashr exact i64 %i.ls, 3
  %.not.i160 = icmp ugt i64 %i.lt, %indvars.iv
  br i1 %.not.i160, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit161, label %bb.bl, !prof !142

bb.bl:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef @.str.250, i32 noundef 1128, ptr noundef @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit161:     ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit
  %i.lu = getelementptr [4 x i8], ptr %i.gb, i64 %indvars.iv
  %i.lv = load i32, ptr %i.lu, align 4
  %i.lw = getelementptr [8 x i8], ptr %i.lp, i64 %indvars.iv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  store i32 %i.lv, ptr %i.lx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ly = load i8, ptr %i.fy, align 1             ; 5 uses
  %i.lz = zext i8 %i.ly to i64
  %i.ma = icmp samesign ult i64 %indvars.iv.next, %i.lz
  br i1 %i.ma, label %bb.bj, label %._crit_edge, !llvm.loop !122

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exitthread-pre-split: ; preds = %bb.bi, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i, %.preheader.i18.i, %._crit_edge
  %.pr = load i8, ptr %i.fy, align 1
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit: ; preds = %bb.ba, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exitthread-pre-split
  %i.mb = phi i8 [ %.pr, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exitthread-pre-split ], [ 0, %bb.ba ] ; 4 uses
  %i.mc = load ptr, ptr %16, align 8              ; 4 uses
  %i.md = load ptr, ptr %i.et, align 8            ; 3 uses
  %.not143164.i = icmp eq ptr %i.mc, %i.md
  br i1 %.not143164.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, %bb.bo
  %.1 = phi i32 [ %i.ml, %bb.bo ], [ %i.fx, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit ] ; 3 uses
  %.sroa.0133.0165.i = phi ptr [ %i.mm, %bb.bo ], [ %i.mc, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit ] ; 6 uses
  %i.me = getelementptr i8, ptr %.sroa.0133.0165.i, i64 4
  %i.mf = load i32, ptr %i.me, align 4            ; 2 uses
  %i.mg = sub i32 %i.fw, %i.mf
  %.not.i162 = icmp sgt i32 %i.mg, -1
  %i.mh = load i32, ptr %.sroa.0133.0165.i, align 4 ; 3 uses
  br i1 %.not.i162, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i
  %i.mi = sub i32 %i.fw, %i.mh
  %i.mj = icmp slt i32 %i.mi, 1
  br i1 %i.mj, label %.loopexit152.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.neg68.i = sub i32 %.1, %i.fw
  %i.mk = add i32 %.neg68.i, %i.mh
  store i32 %i.fw, ptr %.sroa.0133.0165.i, align 4
  %.pre741 = load ptr, ptr %16, align 8
  br label %.loopexit152.i

bb.bo:                                            ; preds = %.lr.ph.i
  %.neg.i = sub i32 %i.mh, %i.mf
  %i.ml = add i32 %.neg.i, %.1                    ; 2 uses
  %i.mm = getelementptr i8, ptr %.sroa.0133.0165.i, i64 8 ; 2 uses
  %.not143.i = icmp eq ptr %i.mm, %i.md
  br i1 %.not143.i, label %.loopexit152.i, label %.lr.ph.i, !llvm.loop !123

.loopexit152.i:                                   ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.mn = phi ptr [ %i.mc, %bb.bm ], [ %.pre741, %bb.bn ], [ %i.mc, %bb.bo ] ; 19 uses
  %.2 = phi i32 [ %.1, %bb.bm ], [ %i.mk, %bb.bn ], [ %i.ml, %bb.bo ] ; 3 uses
  %.sroa.0133.0163.i = phi ptr [ %.sroa.0133.0165.i, %bb.bm ], [ %.sroa.0133.0165.i, %bb.bn ], [ %i.md, %bb.bo ] ; 6 uses
  %.not144.i = icmp eq ptr %.sroa.0133.0163.i, %i.mn
  br i1 %.not144.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i, label %bb.bp

bb.bp:                                            ; preds = %.loopexit152.i
  %i.mo = ptrtoint ptr %i.mn to i64               ; 2 uses
  %i.mp = ptrtoint ptr %.sroa.0133.0163.i to i64  ; 4 uses
  %i.mq = sub i64 %i.mp, %i.mo                    ; 2 uses
  %i.mr = getelementptr i8, ptr %i.mn, i64 %i.mq  ; 8 uses
  %i.ms = load ptr, ptr %i.et, align 8            ; 5 uses
  %.not11.i.i.i = icmp eq ptr %.sroa.0133.0163.i, %i.ms
  br i1 %.not11.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mt = ptrtoint ptr %i.ms to i64               ; 3 uses
  %i.mu = sub i64 %i.mt, %i.mp                    ; 3 uses
  %i.mv = ashr exact i64 %i.mu, 3                 ; 9 uses
  %i.mw = icmp sgt i64 %i.mv, 0
  br i1 %i.mw, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.bq
  %min.iters.check933 = icmp ult i64 %i.mv, 46
  br i1 %min.iters.check933, label %.lr.ph.i.i.i.i.i.i.i.i.preheader964, label %vector.scevcheck905

vector.scevcheck905:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.mx = add nsw i64 %i.mv, -1                   ; 2 uses
  %mul.result907 = shl i64 %i.mx, 3               ; 3 uses
  %mul.overflow908 = icmp ugt i64 %i.mx, 2305843009213693951
  %i.my = getelementptr i8, ptr %i.mn, i64 %mul.result907
  %i.mz = icmp ult ptr %i.my, %i.mn
  %scevgep909 = getelementptr i8, ptr %i.mn, i64 4 ; 2 uses
  %i.na = getelementptr i8, ptr %scevgep909, i64 %mul.result907
  %i.nb = icmp ult ptr %i.na, %scevgep909
  %i.nc = getelementptr i8, ptr %i.mr, i64 %mul.result907
  %i.nd = icmp ult ptr %i.nc, %.sroa.0133.0163.i
  %i.ne = or i1 %i.nd, %mul.overflow908
  %i.nf = or i1 %i.nb, %i.mz
  %i.ng = or i1 %i.nf, %i.ne
  br i1 %i.ng, label %.lr.ph.i.i.i.i.i.i.i.i.preheader964, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck905
  %scevgep910 = getelementptr i8, ptr %i.mn, i64 -4 ; 2 uses
  %scevgep911 = getelementptr i8, ptr %scevgep910, i64 %i.mu ; 3 uses
  %scevgep912 = getelementptr i8, ptr %i.mn, i64 4 ; 4 uses
  %scevgep913 = getelementptr i8, ptr %i.mn, i64 %i.mu ; 3 uses
  %i.nh = sub i64 %i.mt, %i.mo
  %scevgep914 = getelementptr i8, ptr %scevgep910, i64 %i.nh ; 2 uses
  %scevgep915 = getelementptr i8, ptr %scevgep912, i64 %i.mq ; 2 uses
  %bound0 = icmp ult ptr %i.mn, %scevgep913
  %bound1 = icmp ult ptr %scevgep912, %scevgep911
  %found.conflict = and i1 %bound0, %bound1
  %bound0917 = icmp ult ptr %i.mn, %scevgep914
  %bound1918 = icmp ult ptr %.sroa.0133.0163.i, %scevgep911
  %found.conflict919 = and i1 %bound0917, %bound1918
  %conflict.rdx = or i1 %found.conflict, %found.conflict919
  %bound0920 = icmp ult ptr %i.mn, %i.ms
  %bound1921 = icmp ult ptr %scevgep915, %scevgep911
  %found.conflict922 = and i1 %bound0920, %bound1921
  %conflict.rdx923 = or i1 %conflict.rdx, %found.conflict922
  %bound0924 = icmp ult ptr %scevgep912, %scevgep914
  %bound1925 = icmp ult ptr %.sroa.0133.0163.i, %scevgep913
  %found.conflict926 = and i1 %bound0924, %bound1925
  %conflict.rdx927 = or i1 %conflict.rdx923, %found.conflict926
  %bound0928 = icmp ult ptr %scevgep912, %i.ms
  %bound1929 = icmp ult ptr %scevgep915, %scevgep913
  %found.conflict930 = and i1 %bound0928, %bound1929
  %conflict.rdx931 = or i1 %conflict.rdx927, %found.conflict930
  br i1 %conflict.rdx931, label %.lr.ph.i.i.i.i.i.i.i.i.preheader964, label %vector.ph934

vector.ph934:                                     ; preds = %vector.memcheck
  %n.vec935 = and i64 %i.mv, 4611686018427387900  ; 3 uses
  %i.ni = and i64 %i.mv, 3
  %i.nj = shl i64 %n.vec935, 3                    ; 2 uses
  %i.nk = getelementptr i8, ptr %i.mn, i64 %i.nj
  %i.nl = getelementptr i8, ptr %i.mr, i64 %i.nj
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %vector.ph934
  %index937 = phi i64 [ 0, %vector.ph934 ], [ %index.next950, %vector.body936 ] ; 2 uses
  %i.nm = shl i64 %index937, 3                    ; 3 uses
  %i.nn = or disjoint i64 %i.nm, 16               ; 2 uses
  %next.gep938 = getelementptr i8, ptr %i.mn, i64 %i.nm
  %next.gep939 = getelementptr i8, ptr %i.mn, i64 %i.nn
  %next.gep940 = getelementptr i8, ptr %i.mr, i64 %i.nm
  %next.gep941 = getelementptr i8, ptr %i.mr, i64 %i.nn
  %wide.vec942 = load <4 x i32>, ptr %next.gep940, align 4
  %wide.vec945 = load <4 x i32>, ptr %next.gep941, align 4
  store <4 x i32> %wide.vec942, ptr %next.gep938, align 4
  store <4 x i32> %wide.vec945, ptr %next.gep939, align 4
  %index.next950 = add nuw i64 %index937, 4       ; 2 uses
  %i.no = icmp eq i64 %index.next950, %n.vec935
  br i1 %i.no, label %middle.block951, label %vector.body936, !llvm.loop !124

middle.block951:                                  ; preds = %vector.body936
  %cmp.n952 = icmp eq i64 %i.mv, %n.vec935
  br i1 %cmp.n952, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader964

.lr.ph.i.i.i.i.i.i.i.i.preheader964:              ; preds = %vector.memcheck, %vector.scevcheck905, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block951
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.mv, %vector.memcheck ], [ %i.mv, %vector.scevcheck905 ], [ %i.mv, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ni, %middle.block951 ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.mn, %vector.memcheck ], [ %i.mn, %vector.scevcheck905 ], [ %i.mn, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.nk, %middle.block951 ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.mr, %vector.memcheck ], [ %i.mr, %vector.scevcheck905 ], [ %i.mr, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.nl, %middle.block951 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader964, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.nv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader964 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.nu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader964 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.nt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader964 ] ; 3 uses
  %i.np = load i32, ptr %.0910.i.i.i.i.i.i.i.i, align 4
  store i32 %i.np, ptr %.0811.i.i.i.i.i.i.i.i, align 4
  %i.nq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 4
  %i.nr = load i32, ptr %i.nq, align 4
  %i.ns = getelementptr i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 4
  store i32 %i.nr, ptr %i.ns, align 4
  %i.nt = getelementptr i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 8
  %i.nu = getelementptr i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 8
  %i.nv = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.nw = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.nw, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i, !llvm.loop !125

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block951
  %.pre.i.i.i = load ptr, ptr %i.et, align 8      ; 2 uses
  %.pre13.i.i.i = ptrtoint ptr %.pre.i.i.i to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i, %bb.bq, %bb.bp
  %.pre-phi14.i.i.i = phi i64 [ %i.mt, %bb.bq ], [ %.pre13.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i ], [ %i.mp, %bb.bp ]
  %i.nx = phi ptr [ %i.ms, %bb.bq ], [ %.pre.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i ], [ %i.mr, %bb.bp ]
  %i.ny = sub i64 %.pre-phi14.i.i.i, %i.mp
  %i.nz = getelementptr i8, ptr %i.mn, i64 %i.ny  ; 2 uses
  %.not.i.i.i.i163 = icmp eq ptr %i.nx, %i.nz
  br i1 %.not.i.i.i.i163, label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i, label %_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i
  store ptr %i.nz, ptr %i.et, align 8
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, %_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i, %.loopexit152.i
  %.2850 = phi i32 [ %.2, %.loopexit152.i ], [ %.2, %_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ], [ %.2, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i ], [ %i.fx, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit ] ; 3 uses
  %i.oa = zext i8 %i.mb to i32                    ; 3 uses
  %.not184.i = icmp eq i8 %i.mb, 0
  br i1 %.not184.i, label %.loopexit.i, label %.lr.ph167.i

.lr.ph167.i:                                      ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i
  %i.ob = load ptr, ptr %i.ch, align 8
  %i.oc = load ptr, ptr %17, align 8              ; 2 uses
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = sub i64 %i.od, %i.oe
  %i.og = ashr exact i64 %i.of, 3
  %wide.trip.count.i = zext i8 %i.mb to i64
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %.lr.ph167.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph167.i ], [ %indvars.iv.next.i, %bb.bt ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.og
  br i1 %exitcond.not.i, label %bb.bs, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i, !prof !21

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef @.str.250, i32 noundef 1128, ptr noundef @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i:      ; preds = %bb.br
  %i.oh = getelementptr [8 x i8], ptr %i.oc, i64 %indvars.iv.i ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.oj = load i32, ptr %i.oi, align 4
  %i.ok = sub i32 %i.fw, %i.oj
  %.not69.i = icmp sgt i32 %i.ok, -1
  br i1 %.not69.i, label %bb.bt, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i:    ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i
  %i.ol = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.om = load i32, ptr %i.oh, align 4
  %i.on = sub i32 %i.om, %i.fw
  %.not70.i = icmp sgt i32 %i.on, -1
  br i1 %.not70.i, label %.loopexit.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i:    ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i
  store i32 %i.fw, ptr %i.oh, align 4
  br label %.loopexit.i

bb.bt:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond192.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond192.not.i, label %_ZL24goodput_adjust_for_sacksPjjRSt6vectorISt4pairIjjESaIS2_EEhS5_.exit, label %bb.br, !llvm.loop !126

.loopexit.i:                                      ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i
  %.0158.i = phi i32 [ %i.ol, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i ], [ %i.ol, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i ], [ 0, %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i ] ; 3 uses
  %i.oo = icmp slt i32 %.0158.i, %i.oa
  br i1 %i.oo, label %.lr.ph177.i, label %.critedge.i

.lr.ph177.i:                                      ; preds = %.loopexit.i
  %i.op = load ptr, ptr %16, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.ch, %.lr.ph177.i
  %.5 = phi i32 [ %.2850, %.lr.ph177.i ], [ %.6, %bb.ch ] ; 5 uses
  %.1175.i = phi i32 [ %.0158.i, %.lr.ph177.i ], [ %.2.i, %bb.ch ] ; 5 uses
  %.sroa.0109.0174.i = phi ptr [ %i.op, %.lr.ph177.i ], [ %.sroa.0109.1.i, %bb.ch ] ; 12 uses
  %.sroa.0109.0174.i892 = ptrtoaddr ptr %.sroa.0109.0174.i to i64
  %i.oq = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not145.i = icmp eq ptr %.sroa.0109.0174.i, %i.oq
  br i1 %.not145.i, label %.critedge.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.or = sext i32 %.1175.i to i64                ; 2 uses
  %i.os = load ptr, ptr %i.ch, align 8
  %i.ot = load ptr, ptr %17, align 8              ; 2 uses
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = ptrtoint ptr %i.ot to i64
  %i.ow = sub i64 %i.ou, %i.ov
  %i.ox = ashr exact i64 %i.ow, 3
  %.not.i82.i = icmp ugt i64 %i.ox, %i.or
  br i1 %.not.i82.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i, label %bb.bw, !prof !142

bb.bw:                                            ; preds = %bb.bv
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef @.str.250, i32 noundef 1128, ptr noundef @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i:    ; preds = %bb.bv
  %i.oy = getelementptr [8 x i8], ptr %i.ot, i64 %i.or ; 4 uses
  %i.oz = getelementptr i8, ptr %.sroa.0109.0174.i, i64 4 ; 4 uses
  %i.pa = load i32, ptr %i.oz, align 4            ; 3 uses
  %i.pb = load i32, ptr %i.oy, align 4            ; 3 uses
  %i.pc = sub i32 %i.pa, %i.pb
  %.not71.i = icmp sgt i32 %i.pc, -1
  br i1 %.not71.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i
  %i.pd = getelementptr i8, ptr %.sroa.0109.0174.i, i64 8
  br label %bb.ch, !llvm.loop !127

bb.by:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oy, i64 4 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4            ; 4 uses
  %i.pg = load i32, ptr %.sroa.0109.0174.i, align 4 ; 2 uses
  %i.ph = sub i32 %i.pf, %i.pg
  %.not72.i = icmp sgt i32 %i.ph, -1
  br i1 %.not72.i, label %.preheader.i, label %bb.bz

.preheader.i:                                     ; preds = %bb.by
  %i.pi = sub i32 %i.pa, %i.pf
  %.not73171.i = icmp sgt i32 %i.pi, -1
  br i1 %.not73171.i, label %._crit_edge.i, label %.lr.ph173.i

.lr.ph173.i:                                      ; preds = %.preheader.i
  %i.pj = getelementptr i8, ptr %.sroa.0109.0174.i, i64 8 ; 4 uses
  %i.pk = getelementptr i8, ptr %.sroa.0109.0174.i, i64 12
  %i.pl = ptrtoint ptr %i.pj to i64
end_hunk_0
