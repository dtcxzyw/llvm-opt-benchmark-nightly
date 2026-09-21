Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BreakpadRecords?download=true
inline.NumInlined: 1375
inline.NumDeleted: 757
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN12lldb_private8breakpad12ModuleRecord5parseEN4llvm9StringRefE:bb.a
  %i.aa = getelementptr i8, ptr %.sroa.0.0.copyload5.i11, i64 3
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = xor i32 %i.ab, 1937207140
  %i.ad = or i32 %i.z, %i.ac
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %.not.i.i16.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i16.i.i, label %select.unfold, label %_ZL7consumeIN4llvm6Triple6OSTypeEET_RNS0_9StringRefE.exit.thread

_ZL7consumeIN4llvm6Triple6OSTypeEET_RNS0_9StringRefE.exit.thread: ; preds = %bb.f, %bb.e, %bb.c, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ag, align 8, !tbaa !87
  br label %bb.ac

select.unfold:                                    ; preds = %bb.f, %bb.e, %bb.d
  %i.ah = phi i64 [ 16, %bb.e ], [ 16, %bb.d ], [ 20, %bb.f ]
  %.sroa.10.2.i.i.ph = phi i32 [ 9, %bb.e ], [ 7, %bb.d ], [ 15, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZN4llvm8getTokenENS_9StringRefES0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %6, ptr %.sroa.027.0.copyload28, i64 %.sroa.9.0.copyload32, ptr nonnull @.str, i64 6) #16
  %.sroa.0.0.copyload5.i17 = load ptr, ptr %6, align 8, !tbaa !10 ; 24 uses
  %.sroa.5.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5.0.copyload.i19 = load i64, ptr %.sroa.5.0..sroa_idx.i18, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.027.0.copyload29 = load ptr, ptr %i.ai, align 8, !tbaa !10
  %.sroa.9.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.9.0.copyload34 = load i64, ptr %.sroa.9.0..sroa_idx33, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.fr359.i.i = freeze i64 %.sroa.5.0.copyload.i19
  switch i64 %.fr359.i.i, label %_ZL7consumeIN4llvm6Triple8ArchTypeEET_RNS0_9StringRefE.exit [
    i64 3, label %bb.g
    i64 7, label %bb.i
    i64 5, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i.i
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1.i.i
    i64 4, label %bb.h
  ]

bb.g:                                             ; preds = %select.unfold
  %i.aj = load i16, ptr %.sroa.0.0.copyload5.i17, align 1
  %i.ak = xor i16 %i.aj, 29281
  %i.al = getelementptr i8, ptr %.sroa.0.0.copyload5.i17, i64 2
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i16
  %i.ao = xor i16 %i.an, 109
  %i.ap = or i16 %i.ak, %i.ao
  %i.aq = icmp ne i16 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %.not.i.i.i.i21 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i21, label %bb.j, label %.split.us.thread399.i.i

_ZN4llvmneENS_9StringRefES0_.exit.i.i.i.i:        ; preds = %select.unfold
  %i.as = load i32, ptr %.sroa.0.0.copyload5.i17, align 1
  %i.at = xor i32 %i.as, 913142369
  %i.au = getelementptr i8, ptr %.sroa.0.0.copyload5.i17, i64 4
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = xor i32 %i.aw, 52
  %i.ay = or i32 %i.at, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %.not.i.i12.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i12.i.i, label %bb.j, label %.split.us.thread400.i.i

_ZN4llvmneENS_9StringRefES0_.exit.i.i.1.i.i:      ; preds = %select.unfold
  %i.bb = load i32, ptr %.sroa.0.0.copyload5.i17, align 1
  %i.bc = xor i32 %i.bb, 913142369
  %i.bd = getelementptr i8, ptr %.sroa.0.0.copyload5.i17, i64 4
  %i.be = load i16, ptr %i.bd, align 1
  %i.bf = zext i16 %i.be to i32
  %i.bg = xor i32 %i.bf, 25908
  %i.bh = or i32 %i.bc, %i.bg
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %.not.i.i12.1.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i12.1.i.i, label %bb.j, label %.split.us.thread372.i.i

bb.h:                                             ; preds = %select.unfold
  %i.bk = load i32, ptr %.sroa.0.0.copyload5.i17, align 1
  %i.bl = icmp ne i32 %i.bk, 1936746861
  %i.bm = zext i1 %i.bl to i32
  %.not.i.i21.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i21.i.i, label %bb.j, label %_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit53.thread252.thread271.i.i

.split.us.thread372.i.i:                          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1.i.i
  %i.bn = load i32, ptr %.sroa.0.0.copyload5.i17, align 1
  %i.bo = xor i32 %i.bn, 879784813
  %i.bp = getelementptr i8, ptr %.sroa.0.0.copyload5.i17, i64 4
  %i.bq = load i16, ptr %i.bp, align 1
  %i.br = zext i16 %i.bq to i32
  %i.bs = xor i32 %i.br, 12339
  %i.bt = or i32 %i.bo, %i.bs
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %.not.i.i31.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i31.i.i, label %bb.j, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i106.i.i

.split.us.thread399.i.i:                          ; preds = %bb.g
  %i.bw = load i16, ptr %.sroa.0.0.copyload5.i17, align 1
  %i.bx = xor i16 %i.bw, 28784
  %i.by = getelementptr i8, ptr %.sroa.0.0.copyload5.i17, i64 2
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i16
  %i.cb = xor i16 %i.ca, 99
  %i.cc = or i16 %i.bx, %i.cb
  %i.cd = icmp ne i16 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %.not.i.i41.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i41.i.i, label %bb.j, label %_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit83.thread310.thread.i.i

.split.us.thread400.i.i:                          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i.i
  %i.cf = load i32, ptr %.sroa.0.0.copyload5.i17, align 1
  %i.cg = xor i32 %i.cf, 912486512
  %i.ch = getelementptr i8, ptr %.sroa.0.0.copyload5.i17, i64 4
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i32
  %i.ck = xor i32 %i.cj, 52
  %i.cl = or i32 %i.cg, %i.ck
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %.not.i.i51.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i51.i.i, label %bb.j, label %_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit63.i.i

_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit53.thread252.thread271.i.i: ; preds = %bb.h
  %i.co = load i32, ptr %.sroa.0.0.copyload5.i17, align 1
  %i.cp = icmp ne i32 %i.co, 809055091
  %i.cq = zext i1 %i.cp to i32
  %.not.i.i61.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i61.i.i, label %bb.j, label %_ZL7consumeIN4llvm6Triple8ArchTypeEET_RNS0_9StringRefE.exit

_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit63.i.i: ; preds = %.split.us.thread400.i.i
  %i.cr = load i32, ptr %.sroa.0.0.copyload5.i17, align 1
  %i.cs = xor i32 %i.cr, 1918988403
  %i.ct = getelementptr i8, ptr %.sroa.0.0.copyload5.i17, i64 4
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i32
  %i.cw = xor i32 %i.cv, 99
  %i.cx = or i32 %i.cs, %i.cw
  %i.cy = icmp ne i32 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %.not.i.i71.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i71.i.i, label %bb.j, label %_ZL7consumeIN4llvm6Triple8ArchTypeEET_RNS0_9StringRefE.exit

bb.i:                                             ; preds = %select.unfold
  %i.da = load i32, ptr %.sroa.0.0.copyload5.i17, align 1
  %i.db = xor i32 %i.da, 1918988403
  %i.dc = getelementptr i8, ptr %.sroa.0.0.copyload5.i17, i64 3
  %i.dd = load i32, ptr %i.dc, align 1
  %i.de = xor i32 %i.dd, 964060018
  %i.df = or i32 %i.db, %i.de
  %i.dg = icmp ne i32 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %.not.i.i81.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i81.i.i, label %bb.j, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i106.i.1.i

_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit83.thread310.thread.i.i: ; preds = %.split.us.thread399.i.i
  %i.di = load i16, ptr %.sroa.0.0.copyload5.i17, align 1
  %i.dj = xor i16 %i.di, 14456
  %i.dk = getelementptr i8, ptr %.sroa.0.0.copyload5.i17, i64 2
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = zext i8 %i.dl to i16
  %i.dn = xor i16 %i.dm, 54
  %i.do = or i16 %i.dj, %i.dn
  %i.dp = icmp ne i16 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %.not.i.i91.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i91.i.i, label %bb.j, label %_ZL7consumeIN4llvm6Triple8ArchTypeEET_RNS0_9StringRefE.exit

_ZN4llvmneENS_9StringRefES0_.exit.i.i106.i.i:     ; preds = %.split.us.thread372.i.i
  %i.dr = load i32, ptr %.sroa.0.0.copyload5.i17, align 1
  %i.ds = xor i32 %i.dr, 1597388920
  %i.dt = getelementptr i8, ptr %.sroa.0.0.copyload5.i17, i64 4
  %i.du = load i16, ptr %i.dt, align 1
  %i.dv = zext i16 %i.du to i32
  %i.dw = xor i32 %i.dv, 13366
  %i.dx = or i32 %i.ds, %i.dw
  %i.dy = icmp ne i32 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %.not.i.i108.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i108.i.i, label %bb.j, label %_ZL7consumeIN4llvm6Triple8ArchTypeEET_RNS0_9StringRefE.exit

_ZN4llvmneENS_9StringRefES0_.exit.i.i106.i.1.i:   ; preds = %bb.i
  %i.ea = load i32, ptr %.sroa.0.0.copyload5.i17, align 1
  %i.eb = xor i32 %i.ea, 1597388920
  %i.ec = getelementptr i8, ptr %.sroa.0.0.copyload5.i17, i64 3
  %i.ed = load i32, ptr %i.ec, align 1
  %i.ee = xor i32 %i.ed, 1748252255
  %i.ef = or i32 %i.eb, %i.ee
  %i.eg = icmp ne i32 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  %.not.i.i108.i.1.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i108.i.1.i, label %bb.j, label %_ZL7consumeIN4llvm6Triple8ArchTypeEET_RNS0_9StringRefE.exit

_ZL7consumeIN4llvm6Triple8ArchTypeEET_RNS0_9StringRefE.exit: ; preds = %select.unfold, %_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit53.thread252.thread271.i.i, %_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit63.i.i, %_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit83.thread310.thread.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i106.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i106.i.1.i
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ei, align 8, !tbaa !87
  br label %bb.ac

bb.j:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i106.i.1.i, %bb.g, %.split.us.thread399.i.i, %_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit63.i.i, %_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit83.thread310.thread.i.i, %.split.us.thread372.i.i, %bb.i, %_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit53.thread252.thread271.i.i, %.split.us.thread400.i.i, %bb.h, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i106.i.i
  %.not357.i.i.ph = phi i32 [ 41, %_ZN4llvmneENS_9StringRefES0_.exit.i.i106.i.i ], [ 3, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1.i.i ], [ 3, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i.i ], [ 16, %bb.h ], [ 23, %.split.us.thread400.i.i ], [ 34, %_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit53.thread252.thread271.i.i ], [ 32, %bb.i ], [ 20, %.split.us.thread372.i.i ], [ 40, %_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit83.thread310.thread.i.i ], [ 31, %_ZN4llvm12StringSwitchINS_6Triple8ArchTypeES2_E4CaseENS_13StringLiteralES2_.exit63.i.i ], [ 21, %.split.us.thread399.i.i ], [ 1, %bb.g ], [ 41, %_ZN4llvmneENS_9StringRefES0_.exit.i.i106.i.1.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @_ZN4llvm8getTokenENS_9StringRefES0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %9, ptr %.sroa.027.0.copyload29, i64 %.sroa.9.0.copyload34, ptr nonnull @.str, i64 6) #16
  %.sroa.0.0.copyload26 = load ptr, ptr %9, align 8, !tbaa !10 ; 35 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !88
  %i.ej = add i64 %.sroa.5.0.copyload, -41
  %or.cond.i = icmp ult i64 %i.ej, -8
  br i1 %or.cond.i, label %_ZL13parseModuleIdN4llvm6Triple6OSTypeENS_9StringRefE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 %.sroa.5.0.copyload ; 2 uses
  %13 = ptrtoint ptr %i.ek to i64
  %14 = lshr i64 %.sroa.5.0.copyload, 2
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %bb.k
  %.047.i.i.i.i.i.i = phi i64 [ %i.ff, %bb.o ], [ %14, %bb.k ] ; 2 uses
  %.02946.i.i.i.i.i.i = phi ptr [ %i.fe, %bb.o ], [ %.sroa.0.0.copyload26, %bb.k ] ; 10 uses
  %i.el = load i8, ptr %.02946.i.i.i.i.i.i, align 1, !tbaa !14, !noalias !88
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !90, !noalias !88
  %.not.i = icmp eq i16 %i.eo, -1
  br i1 %.not.i, label %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !14, !noalias !88
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !90, !noalias !88
  %.not13.i = icmp eq i16 %i.et, -1
  br i1 %.not13.i, label %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i.loopexit.split.loop.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !14, !noalias !88
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !90, !noalias !88
  %.not14.i = icmp eq i16 %i.ey, -1
  br i1 %.not14.i, label %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i.loopexit.split.loop.exit105.a, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ez = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 3
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !14, !noalias !88
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !90, !noalias !88
  %.not15.i = icmp eq i16 %i.fd, -1
  br i1 %.not15.i, label %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i.loopexit.split.loop.exit107, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fe = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 4 ; 6 uses
  %i.ff = add nsw i64 %.047.i.i.i.i.i.i, -1
  %i.fg = icmp sgt i64 %.047.i.i.i.i.i.i, 1
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !79

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.o
  %.pre-phi.i.i.i.i.i.i = ptrtoint ptr %i.fe to i64
  %15 = sub i64 %13, %.pre-phi.i.i.i.i.i.i
  switch i64 %15, label %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.thread.i [
    i64 3, label %bb.p
    i64 2, label %bb.r
    i64 1, label %bb.t
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fh = load i8, ptr %i.fe, align 1, !tbaa !14, !noalias !88
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !90, !noalias !88
  %.not16.i = icmp eq i16 %i.fk, -1
  br i1 %.not16.i, label %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fl = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 5
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.fl, %bb.q ], [ %i.fe, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.fm = load i8, ptr %.1.i.i.i.i.i.i, align 1, !tbaa !14, !noalias !88
  %i.fn = zext i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !90, !noalias !88
  %.not17.i = icmp eq i16 %i.fp, -1
  br i1 %.not17.i, label %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fq = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.fq, %bb.s ], [ %i.fe, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.fr = load i8, ptr %.2.i.i.i.i.i.i, align 1, !tbaa !14, !noalias !88
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !90, !noalias !88
  %.not18.i = icmp eq i16 %i.fu, -1
  br i1 %.not18.i, label %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i, label %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.thread.i

_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.l
  %i.fv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 1
  br label %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i

_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i.loopexit.split.loop.exit105.a: ; preds = %bb.m
  %i.fw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  br label %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i

_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i.loopexit.split.loop.exit107: ; preds = %bb.n
  %i.fx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 3
  br label %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i

_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i.loopexit.split.loop.exit, %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i.loopexit.split.loop.exit105.a, %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i.loopexit.split.loop.exit107, %bb.t, %bb.r, %bb.p
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.r ], [ %i.fe, %bb.p ], [ %.2.i.i.i.i.i.i, %bb.t ], [ %i.fx, %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i.loopexit.split.loop.exit107 ], [ %i.fv, %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i.loopexit.split.loop.exit ], [ %i.fw, %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i.loopexit.split.loop.exit105.a ], [ %.02946.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.fy = icmp eq ptr %i.ek, %.028.i.i.i.i.i.i
  br i1 %i.fy, label %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.thread.i, label %_ZL13parseModuleIdN4llvm6Triple6OSTypeENS_9StringRefE.exit.thread

_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.thread.i: ; preds = %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.i, %bb.t, %._crit_edge.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 32
  %i.ga = add nsw i64 %.sroa.5.0.copyload, -32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !88
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.gb, ptr %5, align 8, !tbaa !92, !alias.scope !91, !noalias !88
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.gc, align 8, !tbaa !18, !alias.scope !91, !noalias !88
  store i8 0, ptr %i.gb, align 8, !tbaa !14, !alias.scope !91, !noalias !88
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 16, i8 noundef signext 0) #16, !noalias !88
  %i.gd = load ptr, ptr %5, align 8, !tbaa !19, !alias.scope !91, !noalias !88 ; 16 uses
  %i.ge = load i8, ptr %.sroa.0.0.copyload26, align 1, !tbaa !14, !noalias !93
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !14, !noalias !93
  %i.gh = zext i8 %i.ge to i64
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.gk = zext i8 %i.gg to i64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.gk
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.gn = icmp ne i16 %i.gj, -1
  %i.go = icmp ne i16 %i.gm, -1
  %or.cond.not.i.i.i.i = and i1 %i.gn, %i.go
  br i1 %or.cond.not.i.i.i.i, label %.lr.ph.i.i.1.i, label %_ZN4llvm7fromHexB5cxx11ENS_9StringRefE.exit.i

.lr.ph.i.i.1.i:                                   ; preds = %_ZN4llvm6all_ofIRNS_9StringRefEPFbcEEEbOT_T0_.exit.thread.i
  %i.gp = trunc i16 %i.gm to i8
  %i.gq = trunc i16 %i.gj to i8
  %i.gr = shl i8 %i.gq, 4
  %i.gs = or i8 %i.gr, %i.gp
  store i8 %i.gs, ptr %i.gd, align 1, !tbaa !14, !noalias !88
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 2
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !14, !noalias !93
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 3
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !14, !noalias !93
  %i.gx = zext i8 %i.gu to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.ha = zext i8 %i.gw to i64
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.ha
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.hd = icmp ne i16 %i.gz, -1
  %i.he = icmp ne i16 %i.hc, -1
  %or.cond.not.i.i.i.1.i = and i1 %i.hd, %i.he
  br i1 %or.cond.not.i.i.i.1.i, label %.lr.ph.i.i.2.i, label %_ZN4llvm7fromHexB5cxx11ENS_9StringRefE.exit.i

.lr.ph.i.i.2.i:                                   ; preds = %.lr.ph.i.i.1.i
  %i.hf = trunc i16 %i.hc to i8
  %i.hg = trunc i16 %i.gz to i8
  %i.hh = shl i8 %i.hg, 4
  %i.hi = or i8 %i.hh, %i.hf
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !14, !noalias !88
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 4
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !14, !noalias !93
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 5
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !14, !noalias !93
  %i.ho = zext i8 %i.hl to i64
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.hr = zext i8 %i.hn to i64
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.hu = icmp ne i16 %i.hq, -1
  %i.hv = icmp ne i16 %i.ht, -1
  %or.cond.not.i.i.i.2.i = and i1 %i.hu, %i.hv
  br i1 %or.cond.not.i.i.i.2.i, label %.lr.ph.i.i.3.i, label %_ZN4llvm7fromHexB5cxx11ENS_9StringRefE.exit.i

.lr.ph.i.i.3.i:                                   ; preds = %.lr.ph.i.i.2.i
  %i.hw = trunc i16 %i.ht to i8
  %i.hx = trunc i16 %i.hq to i8
  %i.hy = shl i8 %i.hx, 4
  %i.hz = or i8 %i.hy, %i.hw
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !14, !noalias !88
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 6
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !14, !noalias !93
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 7
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !14, !noalias !93
  %i.if = zext i8 %i.ic to i64
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.ii = zext i8 %i.ie to i64
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.il = icmp ne i16 %i.ih, -1
  %i.im = icmp ne i16 %i.ik, -1
  %or.cond.not.i.i.i.3.i = and i1 %i.il, %i.im
  br i1 %or.cond.not.i.i.i.3.i, label %.lr.ph.i.i.4.i, label %_ZN4llvm7fromHexB5cxx11ENS_9StringRefE.exit.i

.lr.ph.i.i.4.i:                                   ; preds = %.lr.ph.i.i.3.i
  %i.in = trunc i16 %i.ik to i8
  %i.io = trunc i16 %i.ih to i8
  %i.ip = shl i8 %i.io, 4
  %i.iq = or i8 %i.ip, %i.in
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gd, i64 3
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !14, !noalias !88
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 8
  %i.it = load i8, ptr %i.is, align 1, !tbaa !14, !noalias !93
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 9
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !14, !noalias !93
  %i.iw = zext i8 %i.it to i64
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.iw
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.iz = zext i8 %i.iv to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.iz
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.jc = icmp ne i16 %i.iy, -1
  %i.jd = icmp ne i16 %i.jb, -1
  %or.cond.not.i.i.i.4.i = and i1 %i.jc, %i.jd
  br i1 %or.cond.not.i.i.i.4.i, label %.lr.ph.i.i.5.i, label %_ZN4llvm7fromHexB5cxx11ENS_9StringRefE.exit.i

.lr.ph.i.i.5.i:                                   ; preds = %.lr.ph.i.i.4.i
  %i.je = trunc i16 %i.jb to i8
  %i.jf = trunc i16 %i.iy to i8
  %i.jg = shl i8 %i.jf, 4
  %i.jh = or i8 %i.jg, %i.je
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !14, !noalias !88
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 10
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !14, !noalias !93
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 11
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !14, !noalias !93
  %i.jn = zext i8 %i.jk to i64
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.jn
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.jq = zext i8 %i.jm to i64
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.jt = icmp ne i16 %i.jp, -1
  %i.ju = icmp ne i16 %i.js, -1
  %or.cond.not.i.i.i.5.i = and i1 %i.jt, %i.ju
  br i1 %or.cond.not.i.i.i.5.i, label %.lr.ph.i.i.6.i, label %_ZN4llvm7fromHexB5cxx11ENS_9StringRefE.exit.i

.lr.ph.i.i.6.i:                                   ; preds = %.lr.ph.i.i.5.i
  %i.jv = trunc i16 %i.js to i8
  %i.jw = trunc i16 %i.jp to i8
  %i.jx = shl i8 %i.jw, 4
  %i.jy = or i8 %i.jx, %i.jv
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gd, i64 5
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !14, !noalias !88
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 12
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !14, !noalias !93
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 13
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !14, !noalias !93
  %i.ke = zext i8 %i.kb to i64
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.ke
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.kh = zext i8 %i.kd to i64
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.kh
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.kk = icmp ne i16 %i.kg, -1
  %i.kl = icmp ne i16 %i.kj, -1
  %or.cond.not.i.i.i.6.i = and i1 %i.kk, %i.kl
  br i1 %or.cond.not.i.i.i.6.i, label %.lr.ph.i.i.7.i, label %_ZN4llvm7fromHexB5cxx11ENS_9StringRefE.exit.i

.lr.ph.i.i.7.i:                                   ; preds = %.lr.ph.i.i.6.i
  %i.km = trunc i16 %i.kj to i8
  %i.kn = trunc i16 %i.kg to i8
  %i.ko = shl i8 %i.kn, 4
  %i.kp = or i8 %i.ko, %i.km
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gd, i64 6
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !14, !noalias !88
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 14
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !14, !noalias !93
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 15
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !14, !noalias !93
  %i.kv = zext i8 %i.ks to i64
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.kv
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.ky = zext i8 %i.ku to i64
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.ky
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.lb = icmp ne i16 %i.kx, -1
  %i.lc = icmp ne i16 %i.la, -1
  %or.cond.not.i.i.i.7.i = and i1 %i.lb, %i.lc
  br i1 %or.cond.not.i.i.i.7.i, label %.lr.ph.i.i.8.i, label %_ZN4llvm7fromHexB5cxx11ENS_9StringRefE.exit.i

.lr.ph.i.i.8.i:                                   ; preds = %.lr.ph.i.i.7.i
  %i.ld = trunc i16 %i.la to i8
  %i.le = trunc i16 %i.kx to i8
  %i.lf = shl i8 %i.le, 4
  %i.lg = or i8 %i.lf, %i.ld
  %i.lh = getelementptr inbounds nuw i8, ptr %i.gd, i64 7
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !14, !noalias !88
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 16
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !14, !noalias !93
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 17
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !14, !noalias !93
  %i.lm = zext i8 %i.lj to i64
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.lm
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.lp = zext i8 %i.ll to i64
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.lp
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !90, !noalias !93 ; 2 uses
  %i.ls = icmp ne i16 %i.lo, -1
  %i.lt = icmp ne i16 %i.lr, -1
  %or.cond.not.i.i.i.8.i = and i1 %i.ls, %i.lt
  br i1 %or.cond.not.i.i.i.8.i, label %.lr.ph.i.i.9.i, label %_ZN4llvm7fromHexB5cxx11ENS_9StringRefE.exit.i
end_hunk_0
