Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVGatherScatterLowering?download=true
begin_hunk_0_@_ZN12_GLOBAL__N_126RISCVGatherScatterLowering13runOnFunctionERN4llvm8FunctionE:bb.a
  tail call void @llvm.assume(i1 %.not11.i.i.i43)
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !51
  %.not.i.i.i44 = icmp eq ptr %i.ao, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %.not.i.i.i44, label %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i41

_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i41, %bb.d
  %.sroa.08.015.i.lcssa.i.i45 = phi ptr [ %i.aj, %bb.d ], [ %i.an, %.lr.ph.i.i.i41 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i45, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !220
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !221 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES6_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit
  %i.ax = shl i32 %i.av, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !35 ; 3 uses
  %i.ba = icmp ult i32 %i.ax, %i.az
  %i.bb = icmp ugt i32 %i.az, 64
  %or.cond.i = and i1 %i.ba, %i.bb
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES6_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.at)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES6_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5clearEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !222
  %i.be = zext i32 %i.az to i64
  %i.bf = add nuw nsw i64 %i.be, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bd, i8 0, i64 %i.bh, i1 false)
  store i32 0, ptr %i.au, align 8, !tbaa !221
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES6_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES6_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5clearEv.exit: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.bi, ptr %14, align 8, !tbaa !31
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  store i32 4, ptr %i.bk, align 4, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.058.075 = load ptr, ptr %i.bl, align 8, !tbaa !223 ; 2 uses
  %.not6876 = icmp eq ptr %.sroa.058.075, %i.bm
  br i1 %.not6876, label %.preheader, label %.lr.ph78

._crit_edge79:                                    ; preds = %._crit_edge
  %.pre = load ptr, ptr %14, align 8, !tbaa !31   ; 2 uses
  %.pre89 = load i32, ptr %i.bj, align 8, !tbaa !33 ; 2 uses
  %i.bn = zext i32 %.pre89 to i64
  %.idx = shl nuw nsw i64 %i.bn, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %.not80 = icmp eq i32 %.pre89, 0
  br i1 %.not80, label %.preheader, label %.lr.ph84

.lr.ph84:                                         ; preds = %._crit_edge79
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 81
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 82
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 69
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 70
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i92.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cu = ptrtoint ptr %12 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dc = ptrtoint ptr %7 to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %13, i64 16
  br label %bb.m

.lr.ph78:                                         ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES6_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5clearEv.exit, %._crit_edge
  %.sroa.058.077 = phi ptr [ %.sroa.058.0, %._crit_edge ], [ %.sroa.058.075, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES6_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5clearEv.exit ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.058.077, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.058.077, i64 24 ; 2 uses
  %.sroa.054.072 = load ptr, ptr %i.df, align 8, !tbaa !226 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.054.072, %i.dg
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_13IntrinsicInstELb1EE9push_backES2_.exit, %.lr.ph78
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.058.077, i64 8
  %.sroa.058.0 = load ptr, ptr %i.dh, align 8, !tbaa !223 ; 2 uses
  %.not68 = icmp eq ptr %.sroa.058.0, %i.bm
  br i1 %.not68, label %._crit_edge79, label %.lr.ph78

.lr.ph:                                           ; preds = %.lr.ph78, %_ZN4llvm23SmallVectorTemplateBaseIPNS_13IntrinsicInstELb1EE9push_backES2_.exit
  %.sroa.054.074 = phi ptr [ %.sroa.054.0, %_ZN4llvm23SmallVectorTemplateBaseIPNS_13IntrinsicInstELb1EE9push_backES2_.exit ], [ %.sroa.054.072, %.lr.ph78 ] ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.054.074, i64 -24 ; 3 uses
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !229
  %i.dk = icmp eq i8 %i.dj, 88
  br i1 %i.dk, label %bb.h, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13IntrinsicInstELb1EE9push_backES2_.exit

bb.h:                                             ; preds = %.lr.ph
  %i.dl = getelementptr inbounds i8, ptr %.sroa.054.074, i64 -56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !233 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13IntrinsicInstELb1EE9push_backES2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !229
  %i.do = icmp eq i8 %i.dn, 14
  br i1 %i.do, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13IntrinsicInstELb1EE9push_backES2_.exit

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i: ; preds = %bb.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = and i32 %i.dq, 8192
  %.not.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13IntrinsicInstELb1EE9push_backES2_.exit, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 36
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !238
  switch i32 %i.dt, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13IntrinsicInstELb1EE9push_backES2_.exit [
    i32 240, label %bb.j
    i32 242, label %bb.j
    i32 469, label %bb.j
    i32 507, label %bb.j
  ]

bb.j:                                             ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit
  %i.du = load i32, ptr %i.bj, align 8, !tbaa !33 ; 2 uses
  %i.dv = load i32, ptr %i.bk, align 4, !tbaa !34
  %.not.i = icmp ult i32 %i.du, %i.dv
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !243

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_13IntrinsicInstELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull %i.di)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13IntrinsicInstELb1EE9push_backES2_.exit

bb.l:                                             ; preds = %bb.j
  %i.dw = zext i32 %i.du to i64
  %i.dx = load ptr, ptr %14, align 8, !tbaa !31
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  store ptr %i.di, ptr %i.dy, align 1
  %i.dz = load i32, ptr %i.bj, align 8, !tbaa !33
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.bj, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_13IntrinsicInstELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_13IntrinsicInstELb1EE9push_backES2_.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i, %bb.i, %.lr.ph, %bb.h, %bb.l, %bb.k, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.054.074, i64 8
  %.sroa.054.0 = load ptr, ptr %i.eb, align 8, !tbaa !226 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.054.0, %i.dg
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %_ZN12_GLOBAL__N_126RISCVGatherScatterLowering25tryCreateStridedLoadStoreEPN4llvm13IntrinsicInstE.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES6_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5clearEv.exit, %._crit_edge79
  %.033.lcssa = phi i1 [ false, %._crit_edge79 ], [ false, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES6_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5clearEv.exit ], [ %.2.i, %_ZN12_GLOBAL__N_126RISCVGatherScatterLowering25tryCreateStridedLoadStoreEPN4llvm13IntrinsicInstE.exit ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !33 ; 2 uses
  %.not.i4985 = icmp eq i32 %i.ee, 0
  br i1 %.not.i4985, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %.preheader
  %i.ef = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  br label %bb.ae

bb.m:                                             ; preds = %.lr.ph84, %_ZN12_GLOBAL__N_126RISCVGatherScatterLowering25tryCreateStridedLoadStoreEPN4llvm13IntrinsicInstE.exit
  %.03382 = phi i1 [ false, %.lr.ph84 ], [ %.2.i, %_ZN12_GLOBAL__N_126RISCVGatherScatterLowering25tryCreateStridedLoadStoreEPN4llvm13IntrinsicInstE.exit ] ; 4 uses
  %.03481 = phi ptr [ %.pre, %.lr.ph84 ], [ %i.kn, %_ZN12_GLOBAL__N_126RISCVGatherScatterLowering25tryCreateStridedLoadStoreEPN4llvm13IntrinsicInstE.exit ] ; 2 uses
  %i.eh = load ptr, ptr %.03481, align 8, !tbaa !244 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -32 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !233
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 36
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !238
  switch i32 %i.el, label %bb.r [
    i32 240, label %bb.n
    i32 469, label %bb.o
    i32 242, label %bb.p
    i32 507, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !246
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = and i32 %i.ep, 268435455
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = sub nsw i64 0, %i.er
  %i.et = getelementptr inbounds [32 x i8], ptr %i.eh, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !233
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %i.ew = call i16 @_ZNK4llvm13AttributeList17getParamAlignmentEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, i32 noundef 0) #17 ; 2 uses
  %.sroa.0121.0.extract.trunc.i = trunc i16 %i.ew to i8
  %i.ex = and i16 %i.ew, 256
  %.not135.i = icmp eq i16 %i.ex, 0
  %.sroa.0.0.i.i.i = select i1 %.not135.i, i8 0, i8 %.sroa.0121.0.extract.trunc.i
  %i.ey = load i32, ptr %i.eo, align 4
  %i.ez = and i32 %i.ey, 268435455
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = sub nsw i64 0, %i.fa
  %i.fc = getelementptr inbounds [32 x i8], ptr %i.eh, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !246 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = and i32 %i.fh, 268435455
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = sub nsw i64 0, %i.fj
  %i.fl = getelementptr inbounds [32 x i8], ptr %i.eh, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !233
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %i.fo = call i16 @_ZNK4llvm13AttributeList17getParamAlignmentEj(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, i32 noundef 0) #17 ; 2 uses
  %.sroa.0119.0.extract.trunc.i = trunc i16 %i.fo to i8
  %i.fp = load ptr, ptr %i.ah, align 8, !tbaa !219
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !247
  %i.fs = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.fp, ptr noundef %i.fr) #17
  %i.ft = and i16 %i.fo, 256
  %.not134.i = icmp eq i16 %i.ft, 0
  %.sroa.0.0.i.i = select i1 %.not134.i, i8 %i.fs, i8 %.sroa.0119.0.extract.trunc.i
  %i.fu = load i32, ptr %i.fg, align 4
  %i.fv = and i32 %i.fu, 268435455
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = sub nsw i64 0, %i.fw
  %i.fy = getelementptr inbounds [32 x i8], ptr %i.eh, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !233
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = and i32 %i.gd, 268435455
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = sub nsw i64 0, %i.gf
  %i.gh = getelementptr inbounds [32 x i8], ptr %i.eh, i64 %i.gg ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !233 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !246
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !233
  %i.gn = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %i.go = call i16 @_ZNK4llvm13AttributeList17getParamAlignmentEj(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, i32 noundef 1) #17 ; 2 uses
  %.sroa.0116.0.extract.trunc.i = trunc i16 %i.go to i8
  %i.gp = and i16 %i.go, 256
  %.not133.i = icmp eq i16 %i.gp, 0
  %.sroa.0.0.i.i88.i = select i1 %.not133.i, i8 0, i8 %.sroa.0116.0.extract.trunc.i
  %i.gq = load i32, ptr %i.gc, align 4
  %i.gr = and i32 %i.gq, 268435455
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = sub nsw i64 0, %i.gs
  %i.gu = getelementptr inbounds [32 x i8], ptr %i.eh, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 64
  br label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4
  %i.gy = and i32 %i.gx, 268435455
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = sub nsw i64 0, %i.gz
  %i.hb = getelementptr inbounds [32 x i8], ptr %i.eh, i64 %i.ha ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !233 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !246 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !233
  %i.hh = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %i.hi = call i16 @_ZNK4llvm13AttributeList17getParamAlignmentEj(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, i32 noundef 1) #17 ; 2 uses
  %.sroa.0114.0.extract.trunc.i = trunc i16 %i.hi to i8
  %i.hj = load ptr, ptr %i.ah, align 8, !tbaa !219
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !247
  %i.hm = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.hj, ptr noundef %i.hl) #17
  %i.hn = and i16 %i.hi, 256
  %.not132.i = icmp eq i16 %i.hn, 0
  %.sroa.0.0.i91.i = select i1 %.not132.i, i8 %i.hm, i8 %.sroa.0114.0.extract.trunc.i
  %i.ho = load i32, ptr %i.gw, align 4
  %i.hp = and i32 %i.ho, 268435455
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = sub nsw i64 0, %i.hq
  %i.hs = getelementptr inbounds [32 x i8], ptr %i.eh, i64 %i.hr ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 96
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !233
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.0123.0.i = phi i8 [ %.sroa.0.0.i.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.o ], [ %.sroa.0.0.i.i88.i, %bb.p ], [ %.sroa.0.0.i91.i, %bb.q ]
  %.080.i = phi ptr [ null, %bb.n ], [ %i.gb, %bb.o ], [ null, %bb.p ], [ %i.hv, %bb.q ] ; 2 uses
  %.079.in.i = phi ptr [ %i.fd, %bb.n ], [ %i.fz, %bb.o ], [ %i.gv, %bb.p ], [ %i.ht, %bb.q ]
  %.078.i = phi ptr [ %i.eu, %bb.n ], [ %i.fm, %bb.o ], [ %i.gm, %bb.p ], [ %i.hg, %bb.q ] ; 8 uses
  %.077.i = phi ptr [ null, %bb.n ], [ null, %bb.o ], [ %i.gi, %bb.p ], [ %i.hc, %bb.q ] ; 2 uses
  %.076.i = phi ptr [ %i.en, %bb.n ], [ %i.ff, %bb.o ], [ %i.gk, %bb.p ], [ %i.he, %bb.q ] ; 5 uses
  %.079.i = load ptr, ptr %.079.in.i, align 8, !tbaa !233 ; 3 uses
  %i.hw = load ptr, ptr %i.af, align 8, !tbaa !218
  %i.hx = load ptr, ptr %i.ah, align 8, !tbaa !219
  %i.hy = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.hw, ptr noundef nonnull align 8 dereferenceable(912) %i.hx, ptr noundef %.076.i, i1 noundef zeroext false) ; 2 uses
  %i.hz = extractvalue { i16, ptr } %i.hy, 0      ; 3 uses
  %i.ia = extractvalue { i16, ptr } %i.hy, 1
  %i.ib = load ptr, ptr %i.af, align 8, !tbaa !218
  %i.ic = call noundef zeroext i1 @_ZNK4llvm19RISCVTargetLowering23isLegalStridedLoadStoreENS_3EVTENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(518448) %i.ib, i16 %i.hz, ptr %i.ia, i8 %.sroa.0123.0.i) #17
  %.not.i.i48 = icmp ne i16 %i.hz, 0
  %or.cond.not.i = select i1 %i.ic, i1 %.not.i.i48, i1 false
  br i1 %or.cond.not.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, label %_ZN12_GLOBAL__N_126RISCVGatherScatterLowering25tryCreateStridedLoadStoreEPN4llvm13IntrinsicInstE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %bb.s
  %i.id = load ptr, ptr %i.af, align 8, !tbaa !218
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 112
  %i.if = zext i16 %i.hz to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.if
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !253
  %.not136.i = icmp eq ptr %i.ih, null
  br i1 %.not136.i, label %_ZN12_GLOBAL__N_126RISCVGatherScatterLowering25tryCreateStridedLoadStoreEPN4llvm13IntrinsicInstE.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i
  %i.ii = load i8, ptr %.078.i, align 8, !tbaa !229
  %i.ij = icmp ult i8 %i.ii, 30
  br i1 %i.ij, label %_ZN12_GLOBAL__N_126RISCVGatherScatterLowering25tryCreateStridedLoadStoreEPN4llvm13IntrinsicInstE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ik = getelementptr inbounds nuw i8, ptr %.078.i, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !246
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !254, !nonnull !217, !align !255
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.in = load ptr, ptr %i.ah, align 8, !tbaa !219 ; 3 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm18InstSimplifyFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16)>, ptr %3, align 16, !tbaa !29
  store ptr %i.in, ptr %i.bq, align 16, !tbaa !256
  store ptr %i.in, ptr %i.br, align 8, !tbaa !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bs, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.bt, align 16, !tbaa !257
  store i8 1, ptr %i.bu, align 1, !tbaa !259
  store i8 0, ptr %i.bv, align 2, !tbaa !267
  store ptr null, ptr %2, align 8, !tbaa !268
  store ptr %i.im, ptr %i.by, align 8, !tbaa !271
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !272
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !274
  store ptr null, ptr %i.cb, align 8, !tbaa !276
  store i32 0, ptr %i.cc, align 8, !tbaa !287
  store i8 0, ptr %i.cd, align 4, !tbaa !288
  store i8 2, ptr %i.ce, align 1, !tbaa !289
  store i8 7, ptr %i.cf, align 2, !tbaa !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.ch, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm18InstSimplifyFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16)>, ptr %i.bw, align 8, !tbaa !29
  store ptr %i.in, ptr %i.cj, align 8, !tbaa !256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ck, ptr noundef nonnull align 8 dereferenceable(64) %i.br, i64 64, i1 false), !tbaa.struct !291
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.bx, align 8, !tbaa !29
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bp) #17
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %3) #17
  %i.io = getelementptr inbounds nuw i8, ptr %.078.i, i64 24
  %i.ip = getelementptr inbounds nuw i8, ptr %.078.i, i64 40
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !299
  store ptr %i.iq, ptr %i.ch, align 8, !tbaa !301
  store ptr %i.io, ptr %i.cl, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i92.i, align 8
  %i.ir = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %.078.i) #17
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !302
  store i64 %i.is, ptr %2, align 8, !tbaa !302
  %i.it = call fastcc { ptr, ptr } @_ZN12_GLOBAL__N_126RISCVGatherScatterLowering22determineBaseAndStrideEPN4llvm11InstructionERNS1_13IRBuilderBaseE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %.078.i, ptr noundef nonnull align 8 dereferenceable(88) %2) ; 2 uses
  %i.iu = extractvalue { ptr, ptr } %i.it, 0      ; 4 uses
  %i.iv = extractvalue { ptr, ptr } %i.it, 1      ; 3 uses
  %.not84.i = icmp ne ptr %i.iu, null             ; 2 uses
  br i1 %.not84.i, label %bb.v, label %_ZNSt14_Function_baseD2Ev.exit.i

bb.v:                                             ; preds = %bb.u
  %i.iw = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ix = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !299
  store ptr %i.iy, ptr %i.ch, align 8, !tbaa !301
  store ptr %i.iw, ptr %i.cl, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i92.i, align 8
  %i.iz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.eh) #17
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !302
  store i64 %i.ja, ptr %2, align 8, !tbaa !302
  %.not85.i = icmp eq ptr %.080.i, null
  br i1 %.not85.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jb = load ptr, ptr %i.by, align 8, !tbaa !303, !nonnull !217, !align !255
  %i.jc = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.jb) #17
  %i.jd = getelementptr inbounds nuw i8, ptr %.076.i, i64 32
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !304
  %i.jf = getelementptr inbounds nuw i8, ptr %.076.i, i64 8
  %i.jg = load i32, ptr %i.jf, align 8
  %i.jh = and i32 %i.jg, 255
  %i.ji = icmp eq i32 %i.jh, 19
  %.sroa.2.0.insert.shift.i.i.i = select i1 %i.ji, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.je to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.jj = call noundef ptr @_ZN4llvm13IRBuilderBase18CreateElementCountEPNS_4TypeENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %i.jc, i64 %.sroa.0.0.insert.insert.i.i.i) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.181.i = phi ptr [ %.080.i, %bb.v ], [ %i.jj, %bb.w ] ; 2 uses
  %.not86.i = icmp eq ptr %.077.i, null
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 2 uses
  br i1 %.not86.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %.076.i, ptr %i.a, align 8, !tbaa !305
  %i.jm = load ptr, ptr %i.jk, align 8, !tbaa !246
  store ptr %i.jm, ptr %i.cv, align 8, !tbaa !305
  %i.jn = load ptr, ptr %i.jl, align 8, !tbaa !246
  store ptr %i.jn, ptr %i.cw, align 8, !tbaa !305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store ptr %i.iu, ptr %i.b, align 8, !tbaa !306
  store ptr %i.iv, ptr %i.cx, align 8, !tbaa !306
  store ptr %.079.i, ptr %i.cy, align 8, !tbaa !306
  store ptr %.181.i, ptr %i.cz, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i16 257, ptr %i.da, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %6, align 8, !tbaa !307
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !309
  %i.jo = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef 177, ptr nonnull %i.a, i64 3, ptr nonnull %i.b, i64 4, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.235") align 8 %5, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %6) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.jp = load ptr, ptr %i.ei, align 8, !tbaa !233
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 36
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !238
  %i.js = icmp eq i32 %i.jr, 240
  br i1 %i.js, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.jt = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ju = load i32, ptr %i.jt, align 4
  %i.jv = and i32 %i.ju, 268435455
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = sub nsw i64 0, %i.jw
  %i.jy = getelementptr inbounds [32 x i8], ptr %i.eh, i64 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 64
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store i16 257, ptr %i.dd, align 8
  %i.kb = call noundef ptr @_ZN4llvm13IRBuilderBase12CreateSelectEPNS_5ValueES2_S2_RKNS_5TwineEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %.079.i, ptr noundef %i.jo, ptr noundef %i.ka, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store ptr %.076.i, ptr %i.c, align 8, !tbaa !305
  %i.kc = load ptr, ptr %i.jk, align 8, !tbaa !246
  store ptr %i.kc, ptr %i.cm, align 8, !tbaa !305
  %i.kd = load ptr, ptr %i.jl, align 8, !tbaa !246
  store ptr %i.kd, ptr %i.cn, align 8, !tbaa !305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store ptr %.077.i, ptr %i.d, align 8, !tbaa !306
  store ptr %i.iu, ptr %i.co, align 8, !tbaa !306
  store ptr %i.iv, ptr %i.cp, align 8, !tbaa !306
  store ptr %.079.i, ptr %i.cq, align 8, !tbaa !306
  store ptr %.181.i, ptr %i.cr, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store i16 257, ptr %i.cs, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %11, align 8, !tbaa !307
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !309
  %i.ke = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef 178, ptr nonnull %i.c, i64 3, ptr nonnull %i.d, i64 5, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull byval(%"class.llvm::ArrayRef.235") align 8 %10, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.082.i = phi ptr [ %i.ke, %bb.aa ], [ %i.kb, %bb.z ], [ %i.jo, %bb.y ] ; 2 uses
  call void @_ZN4llvm5Value8takeNameEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %.082.i, ptr noundef nonnull %i.eh) #17
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull %.082.i) #17
  %i.kf = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.eh) #17 ; 0 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.078.i, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !310
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %bb.ac, label %_ZNSt14_Function_baseD2Ev.exit.i

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %i.kj = call noundef zeroext i1 @_ZN4llvm42RecursivelyDeleteTriviallyDeadInstructionsEPNS_5ValueEPKNS_17TargetLibraryInfoEPNS_16MemorySSAUpdaterESt8functionIFvS1_EE(ptr noundef nonnull %.078.i, ptr noundef null, ptr noundef null, ptr nofree noundef nonnull align 8 dereferenceable(32) %13) #17 ; 0 uses
  %i.kk = load ptr, ptr %i.de, align 8, !tbaa !311 ; 2 uses
  %.not.i94.i = icmp eq ptr %i.kk, null
  br i1 %.not.i94.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kl = call noundef zeroext i1 %i.kk(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3) #17, !inline_history !313 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.u
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bx) #17
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ci) #17
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %i.bw) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.km = or i1 %.03382, %.not84.i
  br label %_ZN12_GLOBAL__N_126RISCVGatherScatterLowering25tryCreateStridedLoadStoreEPN4llvm13IntrinsicInstE.exit

_ZN12_GLOBAL__N_126RISCVGatherScatterLowering25tryCreateStridedLoadStoreEPN4llvm13IntrinsicInstE.exit: ; preds = %bb.s, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.t, %_ZNSt14_Function_baseD2Ev.exit.i
  %.2.i = phi i1 [ %.03382, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ %.03382, %bb.s ], [ %i.km, %_ZNSt14_Function_baseD2Ev.exit.i ], [ %.03382, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.kn = getelementptr inbounds nuw i8, ptr %.03481, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.kn, %i.bo
  br i1 %.not, label %.preheader, label %bb.m

bb.ae:                                            ; preds = %.lr.ph86, %bb.aj
  %i.ko = phi i32 [ %i.ee, %.lr.ph86 ], [ %i.li, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.kp = load ptr, ptr %i.ec, align 8, !tbaa !31, !noalias !314 ; 2 uses
  %i.kq = zext i32 %i.ko to i64
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %i.kp, i64 %i.kq ; 2 uses
  store i64 6, ptr %15, align 8, !alias.scope !314
  store ptr null, ptr %i.ef, align 8, !tbaa !317, !alias.scope !314
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !40, !noalias !314 ; 2 uses
  store ptr %i.kt, ptr %i.eg, align 8, !tbaa !40, !alias.scope !314
  %.not.i.i.i50 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i50, label %_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ku = getelementptr inbounds i8, ptr %i.kr, i64 -24
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ku, align 8, !noalias !314
  %i.kv = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.kw = inttoptr i64 %i.kv to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %i.kw) #17
  %.pre.i = load i32, ptr %i.ed, align 8, !tbaa !33, !noalias !314
  %.pre3.i = load ptr, ptr %i.ec, align 8, !tbaa !31, !noalias !314
  br label %_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i

_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i:          ; preds = %bb.af, %bb.ae
  %i.kx = phi ptr [ %i.kp, %bb.ae ], [ %.pre3.i, %bb.af ]
  %i.ky = phi i32 [ %i.ko, %bb.ae ], [ %.pre.i, %bb.af ]
  %i.kz = add i32 %i.ky, -1                       ; 2 uses
  store i32 %i.kz, ptr %i.ed, align 8, !tbaa !33, !noalias !314
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [24 x i8], ptr %i.kx, i64 %i.la ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !40
  %.not.i.i2.i = icmp eq ptr %i.ld, null
  br i1 %.not.i.i2.i, label %_ZN4llvm15SmallVectorImplINS_14WeakTrackingVHEE12pop_back_valEv.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lb) #17
  br label %_ZN4llvm15SmallVectorImplINS_14WeakTrackingVHEE12pop_back_valEv.exit

_ZN4llvm15SmallVectorImplINS_14WeakTrackingVHEE12pop_back_valEv.exit: ; preds = %_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i, %bb.ag
  %i.le = load ptr, ptr %i.eg, align 8, !tbaa !40 ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.le, null
  br i1 %.not.i.i51, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_14WeakTrackingVHEE12pop_back_valEv.exit
  %i.lf = load i8, ptr %i.le, align 8, !tbaa !229
  %i.lg = icmp eq i8 %i.lf, 87
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #17
  br i1 %i.lg, label %bb.ai, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.thread

_ZN4llvm15ValueHandleBaseD2Ev.exit.thread:        ; preds = %bb.ah, %_ZN4llvm15SmallVectorImplINS_14WeakTrackingVHEE12pop_back_valEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.lh = call noundef zeroext i1 @_ZN4llvm28RecursivelyDeleteDeadPHINodeEPNS_7PHINodeEPKNS_17TargetLibraryInfoEPNS_16MemorySSAUpdaterEPNS_15SmallPtrSetImplIS1_EE(ptr noundef nonnull %i.le, ptr noundef null, ptr noundef null, ptr noundef null) #17 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.thread, %bb.ai
  %i.li = load i32, ptr %i.ed, align 8, !tbaa !33 ; 2 uses
  %.not.i49 = icmp eq i32 %i.li, 0
  br i1 %.not.i49, label %._crit_edge87, label %bb.ae, !llvm.loop !318

._crit_edge87:                                    ; preds = %bb.aj, %.preheader
  %i.lj = load ptr, ptr %14, align 8, !tbaa !31   ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.bi
  br i1 %i.lk, label %_ZN4llvm11SmallVectorIPNS_13IntrinsicInstELj4EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge87
  call void @free(ptr noundef %i.lj) #17
  br label %_ZN4llvm11SmallVectorIPNS_13IntrinsicInstELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_13IntrinsicInstELj4EED2Ev.exit: ; preds = %._crit_edge87, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.al

bb.al:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_13IntrinsicInstELj4EED2Ev.exit, %bb.c, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %.033.lcssa, %_ZN4llvm11SmallVectorIPNS_13IntrinsicInstELj4EED2Ev.exit ], [ false, %bb.c ], [ false, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN4llvm12FunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #7

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm14RISCVSubtarget27useRVVForFixedLengthVectorsEv(ptr noundef nonnull align 8 dereferenceable(519768)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm28RecursivelyDeleteDeadPHINodeEPNS_7PHINodeEPKNS_17TargetLibraryInfoEPNS_16MemorySSAUpdaterEPNS_15SmallPtrSetImplIS1_EE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES6_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !221  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35   ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35   ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES6_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !221
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !222
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES6_ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !39
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 24
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #17
  store i32 0, ptr %i.r, align 4, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !35
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIPNS_17GetElementPtrInstESt4pairIPNS_5ValueES5_ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE17deallocateBucketsEv.exit
  %i.ab = mul nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 24
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #17 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !35 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !222
  store i32 0, ptr %i.a, align 8, !tbaa !221
end_hunk_0
