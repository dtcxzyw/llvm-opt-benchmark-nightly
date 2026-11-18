Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/tcp_stream_dialog?download=true
inline.NumInlined: 2777
inline.NumDeleted: 831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN15TCPStreamDialog14fillThroughputEv:bb.a
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
  %i.og = ptrtoint ptr %i.of to i64               ; 3 uses
  %i.oh = ptrtoint ptr %.sroa.0133.0163.i to i64  ; 5 uses
  %i.oi = sub i64 %i.oh, %i.og
  %i.oj = getelementptr i8, ptr %i.of, i64 %i.oi  ; 8 uses
  %i.ok = load ptr, ptr %i.gl, align 8            ; 5 uses
  %.not11.i.i.i = icmp eq ptr %.sroa.0133.0163.i, %i.ok
  br i1 %.not11.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ol = ptrtoint ptr %i.ok to i64               ; 3 uses
  %i.om = sub i64 %i.ol, %i.oh                    ; 3 uses
  %i.on = ashr exact i64 %i.om, 3                 ; 9 uses
  %i.oo = icmp sgt i64 %i.on, 0
  br i1 %i.oo, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.bq
  %min.iters.check998 = icmp ult i64 %i.on, 46
  br i1 %min.iters.check998, label %.lr.ph.i.i.i.i.i.i.i.i.preheader1049, label %vector.scevcheck969

vector.scevcheck969:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.op = add nsw i64 %i.on, -1                   ; 2 uses
  %mul.result971 = shl i64 %i.op, 3               ; 3 uses
  %mul.overflow972 = icmp ugt i64 %i.op, 2305843009213693951
  %i.oq = getelementptr i8, ptr %i.of, i64 %mul.result971
  %i.or = icmp ult ptr %i.oq, %i.of
  %scevgep973 = getelementptr i8, ptr %i.of, i64 4 ; 2 uses
  %i.os = getelementptr i8, ptr %scevgep973, i64 %mul.result971
  %i.ot = icmp ult ptr %i.os, %scevgep973
  %i.ou = getelementptr i8, ptr %i.oj, i64 %mul.result971
  %i.ov = icmp ult ptr %i.ou, %.sroa.0133.0163.i
  %i.ow = or i1 %i.ov, %mul.overflow972
  %i.ox = or i1 %i.ot, %i.or
  %i.oy = or i1 %i.ox, %i.ow
  br i1 %i.oy, label %.lr.ph.i.i.i.i.i.i.i.i.preheader1049, label %vector.memcheck999

vector.memcheck999:                               ; preds = %vector.scevcheck969
  %i.oz = getelementptr i8, ptr %i.of, i64 %i.om
  %i.pa = getelementptr i8, ptr %i.oz, i64 -4     ; 3 uses
  %i.pb = getelementptr i8, ptr %i.of, i64 4      ; 3 uses
  %i.pc = getelementptr i8, ptr %i.of, i64 %i.om  ; 3 uses
  %bound0 = icmp ult ptr %i.of, %i.pc
  %bound1 = icmp ult ptr %i.pb, %i.pa
  %found.conflict = and i1 %bound0, %bound1
  %i.pd = add i64 %i.ol, -4
  %i.pe = sub i64 %i.pd, %i.og
  %i.pf = getelementptr i8, ptr %i.of, i64 %i.pe  ; 2 uses
  %bound0.a = icmp ult ptr %i.of, %i.pf
  %bound1.a = icmp ult ptr %.sroa.0133.0163.i, %i.pa
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  %19 = add i64 %i.oh, 4
  %20 = sub i64 %19, %i.og
  %21 = getelementptr i8, ptr %i.of, i64 %20      ; 2 uses
  %bound01003 = icmp ult ptr %i.of, %i.ok
  %bound11004 = icmp ult ptr %21, %i.pa
  %found.conflict1005 = and i1 %bound01003, %bound11004
  %conflict.rdx1006 = or i1 %conflict.rdx, %found.conflict1005
  %bound01007 = icmp ult ptr %i.pb, %i.pf
  %bound11008 = icmp ult ptr %.sroa.0133.0163.i, %i.pc
  %found.conflict1009 = and i1 %bound01007, %bound11008
  %conflict.rdx1010 = or i1 %conflict.rdx1006, %found.conflict1009
  %bound01011 = icmp ult ptr %i.pb, %i.ok
  %bound11012 = icmp ult ptr %21, %i.pc
  %found.conflict1013 = and i1 %bound01011, %bound11012
  %conflict.rdx1014 = or i1 %conflict.rdx1010, %found.conflict1013
  br i1 %conflict.rdx1014, label %.lr.ph.i.i.i.i.i.i.i.i.preheader1049, label %vector.ph1015

vector.ph1015:                                    ; preds = %vector.memcheck999
  %n.vec1016 = and i64 %i.on, 4611686018427387900 ; 3 uses
  %i.pg = and i64 %i.on, 3
  %i.ph = shl i64 %n.vec1016, 3                   ; 2 uses
  %i.pi = getelementptr i8, ptr %i.of, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.oj, i64 %i.ph
  br label %vector.body1017

vector.body1017:                                  ; preds = %vector.body1017, %vector.ph1015
  %index1018 = phi i64 [ 0, %vector.ph1015 ], [ %index.next1031, %vector.body1017 ] ; 2 uses
  %i.pk = shl i64 %index1018, 3                   ; 3 uses
  %i.pl = or disjoint i64 %i.pk, 16               ; 2 uses
  %next.gep1019 = getelementptr i8, ptr %i.of, i64 %i.pk
  %next.gep1020 = getelementptr i8, ptr %i.of, i64 %i.pl
  %next.gep1021 = getelementptr i8, ptr %i.oj, i64 %i.pk
  %next.gep1022 = getelementptr i8, ptr %i.oj, i64 %i.pl
  %wide.vec1023 = load <4 x i32>, ptr %next.gep1021, align 4
  %wide.vec1026 = load <4 x i32>, ptr %next.gep1022, align 4
  store <4 x i32> %wide.vec1023, ptr %next.gep1019, align 4
  store <4 x i32> %wide.vec1026, ptr %next.gep1020, align 4
  %index.next1031 = add nuw i64 %index1018, 4     ; 2 uses
  %i.pm = icmp eq i64 %index.next1031, %n.vec1016
  br i1 %i.pm, label %middle.block1032, label %vector.body1017, !llvm.loop !129

middle.block1032:                                 ; preds = %vector.body1017
  %cmp.n1033 = icmp eq i64 %i.on, %n.vec1016
  br i1 %cmp.n1033, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader1049

.lr.ph.i.i.i.i.i.i.i.i.preheader1049:             ; preds = %vector.memcheck999, %vector.scevcheck969, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block1032
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.on, %vector.memcheck999 ], [ %i.on, %vector.scevcheck969 ], [ %i.on, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.pg, %middle.block1032 ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.of, %vector.memcheck999 ], [ %i.of, %vector.scevcheck969 ], [ %i.of, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.pi, %middle.block1032 ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.oj, %vector.memcheck999 ], [ %i.oj, %vector.scevcheck969 ], [ %i.oj, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.pj, %middle.block1032 ]
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
  %.pre-phi14.i.i.i = phi i64 [ %i.ol, %bb.bq ], [ %.pre13.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i ], [ %i.oh, %bb.bp ]
  %i.pv = phi ptr [ %i.ok, %bb.bq ], [ %.pre.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i ], [ %i.oj, %bb.bp ]
  %i.pw = sub i64 %.pre-phi14.i.i.i, %i.oh
  %i.px = getelementptr i8, ptr %i.of, i64 %i.pw  ; 2 uses
  %.not.i.i.i.i163 = icmp eq ptr %i.pv, %i.px
  br i1 %.not.i.i.i.i163, label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i, label %_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i
  store ptr %i.px, ptr %i.gl, align 8
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, %_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i, %.loopexit152.i
  %.2850 = phi i32 [ %.2, %.loopexit152.i ], [ %.2, %_ZSt8_DestroyIPSt4pairIjjES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ], [ %.2, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i ], [ %i.hp, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit ] ; 3 uses
  %i.py = zext i8 %i.nt to i32                    ; 3 uses
  %.not184.i = icmp eq i8 %i.nt, 0
  br i1 %.not184.i, label %.loopexit.i, label %.lr.ph167.i

.lr.ph167.i:                                      ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i
  %i.pz = load ptr, ptr %i.ch, align 8
  %i.qa = load ptr, ptr %17, align 8              ; 2 uses
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = sub i64 %i.qb, %i.qc
  %i.qe = ashr exact i64 %i.qd, 3
  %wide.trip.count.i = zext i8 %i.nt to i64
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %.lr.ph167.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph167.i ], [ %indvars.iv.next.i, %bb.bt ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.qe
  br i1 %exitcond.not.i, label %bb.bs, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i, !prof !22

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef @.str.250, i32 noundef 1128, ptr noundef @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i:      ; preds = %bb.br
  %i.qf = getelementptr [8 x i8], ptr %i.qa, i64 %indvars.iv.i ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 4
  %i.qh = load i32, ptr %i.qg, align 4
  %i.qi = sub i32 %i.ho, %i.qh
  %.not69.i = icmp sgt i32 %i.qi, -1
  br i1 %.not69.i, label %bb.bt, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i:    ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i
  %i.qj = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.qk = load i32, ptr %i.qf, align 4
  %i.ql = sub i32 %i.qk, %i.ho
  %.not70.i = icmp sgt i32 %i.ql, -1
  br i1 %.not70.i, label %.loopexit.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i:    ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i
  store i32 %i.ho, ptr %i.qf, align 4
  br label %.loopexit.i

bb.bt:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond192.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond192.not.i, label %_ZL24goodput_adjust_for_sacksPjjRSt6vectorISt4pairIjjESaIS2_EEhS5_.exit, label %bb.br, !llvm.loop !131

.loopexit.i:                                      ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i
  %.0158.i = phi i32 [ %i.qj, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit81.i ], [ %i.qj, %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit78.i ], [ 0, %_ZNSt6vectorISt4pairIjjESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.i ] ; 3 uses
  %i.qm = icmp slt i32 %.0158.i, %i.py
  br i1 %i.qm, label %.lr.ph177.i, label %.critedge.i

.lr.ph177.i:                                      ; preds = %.loopexit.i
  %i.qn = load ptr, ptr %16, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.ch, %.lr.ph177.i
  %.5 = phi i32 [ %.2850, %.lr.ph177.i ], [ %.6, %bb.ch ] ; 5 uses
  %.1175.i = phi i32 [ %.0158.i, %.lr.ph177.i ], [ %.2.i, %bb.ch ] ; 5 uses
  %.sroa.0109.0174.i = phi ptr [ %i.qn, %.lr.ph177.i ], [ %.sroa.0109.1.i, %bb.ch ] ; 12 uses
  %.sroa.0109.0174.i945 = ptrtoaddr ptr %.sroa.0109.0174.i to i64
  %i.qo = load ptr, ptr %i.gl, align 8            ; 2 uses
  %.not145.i = icmp eq ptr %.sroa.0109.0174.i, %i.qo
  br i1 %.not145.i, label %.critedge.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qp = sext i32 %.1175.i to i64                ; 2 uses
  %i.qq = load ptr, ptr %i.ch, align 8
  %i.qr = load ptr, ptr %17, align 8              ; 2 uses
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = ashr exact i64 %i.qu, 3
  %.not.i82.i = icmp ugt i64 %i.qv, %i.qp
  br i1 %.not.i82.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i, label %bb.bw, !prof !149

bb.bw:                                            ; preds = %bb.bv
  call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef @.str.250, i32 noundef 1128, ptr noundef @__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm, ptr noundef @.str.251) #32
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i:    ; preds = %bb.bv
  %i.qw = getelementptr [8 x i8], ptr %i.qr, i64 %i.qp ; 4 uses
  %i.qx = getelementptr i8, ptr %.sroa.0109.0174.i, i64 4 ; 4 uses
  %i.qy = load i32, ptr %i.qx, align 4            ; 3 uses
  %i.qz = load i32, ptr %i.qw, align 4            ; 3 uses
  %i.ra = sub i32 %i.qy, %i.qz
  %.not71.i = icmp sgt i32 %i.ra, -1
  br i1 %.not71.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i
  %i.rb = getelementptr i8, ptr %.sroa.0109.0174.i, i64 8
  br label %bb.ch, !llvm.loop !132

bb.by:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEixEm.exit83.i
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qw, i64 4 ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4            ; 4 uses
  %i.re = load i32, ptr %.sroa.0109.0174.i, align 4 ; 2 uses
  %i.rf = sub i32 %i.rd, %i.re
  %.not72.i = icmp sgt i32 %i.rf, -1
  br i1 %.not72.i, label %.preheader.i, label %bb.bz

.preheader.i:                                     ; preds = %bb.by
  %i.rg = sub i32 %i.qy, %i.rd
  %.not73171.i = icmp sgt i32 %i.rg, -1
  br i1 %.not73171.i, label %._crit_edge.i, label %.lr.ph173.i

.lr.ph173.i:                                      ; preds = %.preheader.i
  %i.rh = getelementptr i8, ptr %.sroa.0109.0174.i, i64 8 ; 4 uses
  %i.ri = getelementptr i8, ptr %.sroa.0109.0174.i, i64 12
  %i.rj = ptrtoint ptr %i.rh to i64
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.rk = load ptr, ptr %16, align 8
  %i.rl = invoke ptr @_ZNSt6vectorISt4pairIjjESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %16, ptr %.sroa.0109.0174.i, ptr noundef align 4 dereferenceable(8) %i.qw)
          to label %.noexc164 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc164:                                        ; preds = %bb.bz
  %i.rm = ptrtoint ptr %.sroa.0109.0174.i to i64
  %i.rn = ptrtoint ptr %i.rk to i64
  %i.ro = sub i64 %i.rm, %i.rn
  %i.rp = sub i32 %.5, %i.qz
  %i.rq = add i32 %i.rp, %i.rd
  %i.rr = load ptr, ptr %16, align 8
  %i.rs = shl i64 %i.ro, 29
  %i.rt = ashr exact i64 %i.rs, 29
  %i.ru = getelementptr i8, ptr %i.rr, i64 %i.rt
end_hunk_0
