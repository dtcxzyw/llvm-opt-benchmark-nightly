Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelDAGToDAG?download=true
inline.NumInlined: 6338
inline.NumDeleted: 1425
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_115X86DAGToDAGISel23matchAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %.val369 = load ptr, ptr %i.h, align 8          ; 3 uses
  %.not.i370 = icmp ne i32 %i.b, 0                ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val369, null        ; 4 uses
  %or.cond.i = select i1 %.not.i370, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %.val369, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !399
  %i.k = icmp eq i32 %i.j, 10
  br i1 %i.k, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread

_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit: ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %.val369, i64 88
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.l, align 8, !tbaa !396
  %i.m = icmp eq i32 %.sroa.0.0.copyload.i.i, 58
  br i1 %i.m, label %bb.i, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread

bb.i:                                             ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !641
  %.not353 = icmp eq ptr %i.o, null
  br i1 %.not353, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !642
  %.not354 = icmp eq ptr %i.q, null
  br i1 %.not354, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.s = load i32, ptr %i.r, align 8, !tbaa !603
  %.not355 = icmp eq i32 %i.s, -1
  br i1 %.not355, label %bb.l, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !399
  switch i32 %i.u, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.l, %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !404  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !406  ; 3 uses
  %i.aa = icmp ult i32 %i.z, 65
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !407
  %i.ac = icmp eq i32 %i.z, 0
  %i.ad = sub nuw nsw i32 64, %i.z
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = shl i64 %i.ab, %i.ae
  %i.ag = ashr exact i64 %i.af, %i.ae
  %.0.i.i.i.i = select i1 %i.ac, i64 0, i64 %i.ag
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.n:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !407
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !26
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.m, %bb.n
  %.0.i.i.i371 = phi i64 [ %.0.i.i.i.i, %bb.m ], [ %i.ai, %bb.n ]
  %i.aj = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel21foldOffsetIntoAddressEmRNS_18X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(968) %0, i64 noundef %.0.i.i.i371, ptr noundef nonnull align 8 dereferenceable(119) %3)
  br i1 %i.aj, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread: ; preds = %bb.l, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread: ; preds = %bb.h, %bb.g, %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !399
  switch i32 %i.al, label %.thread [
    i32 28, label %bb.o
    i32 12, label %bb.s
    i32 988, label %bb.v
    i32 989, label %bb.v
    i32 316, label %bb.w
    i32 16, label %bb.x
    i32 198, label %bb.ab
    i32 200, label %bb.ae
    i32 66, label %bb.ak
    i32 67, label %bb.ak
    i32 61, label %bb.al
    i32 755, label %bb.al
    i32 60, label %bb.aw
    i32 194, label %bb.bh
    i32 195, label %bb.bh
    i32 59, label %bb.bi
    i32 193, label %bb.br
    i32 228, label %bb.bz
  ]

bb.o:                                             ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ap = load <2 x ptr>, ptr %i.am, align 8
  %i.aq = load <2 x ptr>, ptr %i.an, align 8
  %i.ar = shufflevector <2 x ptr> %i.ap, <2 x ptr> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x ptr> %i.ar
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.at = load i32, ptr %i.as, align 8
  %.not4.i747 = icmp eq i32 %i.at, -1
  %i.au = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.av = bitcast <4 x i1> %i.au to i4
  %i.aw = icmp eq i4 %i.av, 0
  %op.rdx = select i1 %i.aw, i1 %.not4.i747, i1 false
  br i1 %op.rdx, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit748, label %.thread

_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit748: ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !643
  %.not749 = icmp eq ptr %i.ay, null
  br i1 %.not749, label %bb.p, label %.thread

bb.p:                                             ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit748
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !602
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !540
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !390 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !399
  %i.bh = icmp ne i32 %i.bg, 46
  %.not352.not713 = icmp eq ptr %i.be, null
  %.not352.not = or i1 %.not352.not713, %i.bh
  br i1 %.not352.not, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !653
  store ptr %i.bj, ptr %i.ao, align 8, !tbaa !642
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.s:                                             ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !404 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !406 ; 3 uses
  %i.bp = icmp ult i32 %i.bo, 65
  br i1 %i.bp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !407
  %i.br = icmp eq i32 %i.bo, 0
  %i.bs = sub nuw nsw i32 64, %i.bo
  %i.bt = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bu = shl i64 %i.bq, %i.bt
  %i.bv = ashr exact i64 %i.bu, %i.bt
  %.0.i.i.i.i373 = select i1 %i.br, i64 0, i64 %i.bv
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit374

bb.u:                                             ; preds = %bb.s
  %i.bw = load ptr, ptr %i.bm, align 8, !tbaa !407
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !26
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit374

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit374: ; preds = %bb.t, %bb.u
  %.0.i.i.i372 = phi i64 [ %.0.i.i.i.i373, %bb.t ], [ %i.bx, %bb.u ]
  %i.by = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel21foldOffsetIntoAddressEmRNS_18X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(968) %0, i64 noundef %.0.i.i.i372, ptr noundef nonnull align 8 dereferenceable(119) %3)
  br i1 %i.by, label %.thread, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.v:                                             ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread, %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %i.bz = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel12matchWrapperEN4llvm7SDValueERNS_18X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(119) %3)
  br i1 %i.bz, label %.thread, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.w:                                             ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %i.ca = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel18matchLoadInAddressEPN4llvm10LoadSDNodeERNS_18X86ISelAddressModeEb(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(119) %3, i1 noundef zeroext false)
  br i1 %i.ca, label %.thread, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.x:                                             ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %.not.i370.not724 = xor i1 %.not.i370, true
  %brmerge.not = select i1 %.not.i370.not724, i1 %.not.i.i.i, i1 false
  br i1 %brmerge.not, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !195
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 522
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !528, !range !16, !noundef !17
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !602
  %21 = add i32 %i.ch, 1073741824
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i32 1, ptr %3, align 8, !tbaa !599
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !569
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !600
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.ab:                                            ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !390
  %.not349 = icmp eq ptr %i.cm, null
  br i1 %.not349, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !601
  %.not350 = icmp eq i32 %i.co, 1
  br i1 %.not350, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !540 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !390 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !399
  switch i32 %i.cu, label %.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.ad, %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !404 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !406
  %i.da = icmp ult i32 %i.cz, 65
  %i.db = load ptr, ptr %i.cx, align 8
  %spec.select.i.i.i376 = select i1 %i.da, ptr %i.cx, ptr %i.db
  %.0.i.i.i377 = load i64, ptr %spec.select.i.i.i376, align 8, !tbaa !407
  %i.dc = trunc i64 %.0.i.i.i377 to i32           ; 2 uses
  %i.dd = add i32 %i.dc, -4
  %or.cond4 = icmp ult i32 %i.dd, -3
  br i1 %or.cond4, label %.thread, label %.critedge358

.critedge358:                                     ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %.sroa.0198.0.copyload = load ptr, ptr %i.cq, align 8, !tbaa !395
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.4199.0.copyload = load i32, ptr %.sroa.4199.0..sroa_idx, align 8, !tbaa !396
  %i.de = shl nuw nsw i32 1, %i.dc
  store i32 %i.de, ptr %i.cn, align 4, !tbaa !601
  %i.df = add nuw nsw i32 %4, 1
  %i.dg = tail call fastcc { ptr, i32 } @_ZN12_GLOBAL__N_115X86DAGToDAGISel21matchIndexRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %.sroa.0198.0.copyload, i32 %.sroa.4199.0.copyload, ptr noundef nonnull align 8 dereferenceable(119) %3, i32 noundef %i.df) ; 2 uses
  %.fca.0.extract188 = extractvalue { ptr, i32 } %i.dg, 0
  %.fca.1.extract189 = extractvalue { ptr, i32 } %i.dg, 1
  store ptr %.fca.0.extract188, ptr %i.cl, align 8, !tbaa !395
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %.fca.1.extract189, ptr %.sroa.4196.0..sroa_idx, align 8, !tbaa !396
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.ae:                                            ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !390
  %.not346 = icmp eq ptr %i.di, null
  br i1 %.not346, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !601
  %.not347 = icmp eq i32 %i.dk, 1
  br i1 %.not347, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !540 ; 2 uses
  %.sroa.0587.0.copyload = load ptr, ptr %i.dm, align 8, !tbaa !395 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0587.0.copyload, i64 24
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !399
  %.not348 = icmp eq i32 %i.do, 193
  br i1 %.not348, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0587.0.copyload, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !540 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !390 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !399
  switch i32 %i.du, label %.thread [
    i32 37, label %bb.ai
    i32 12, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !390 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !399
  switch i32 %i.dy, label %.thread [
    i32 37, label %bb.aj
    i32 12, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 88
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !404 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !406
  %i.ee = icmp ult i32 %i.ed, 65
  %i.ef = load ptr, ptr %i.eb, align 8
  %spec.select.i.i.i.i.i = select i1 %i.ee, ptr %i.eb, ptr %i.ef
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !407
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ds, i64 88
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !404 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !406
  %i.el = icmp ult i32 %i.ek, 65
  %i.em = load ptr, ptr %i.ei, align 8
  %spec.select.i.i.i.i.i379 = select i1 %i.el, ptr %i.ei, ptr %i.em
  %.0.i.i.i.i.i380 = load i64, ptr %spec.select.i.i.i.i.i379, align 8, !tbaa !407
  %i.en = lshr i64 %.0.i.i.i.i.i, %.0.i.i.i.i.i380
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !309
  %i.eq = tail call fastcc noundef zeroext i1 @_ZL23foldMaskAndShiftToScaleRN4llvm12SelectionDAGENS_7SDValueEmS2_S2_RN12_GLOBAL__N_118X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(920) %i.ep, ptr nonnull %1, i32 %2, i64 noundef %i.en, ptr nonnull %1, i32 %2, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.dq, ptr noundef nonnull align 8 dereferenceable(119) %3)
  br i1 %i.eq, label %.thread, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.ak:                                            ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread, %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %i.er = or i32 %i.b, %2
  %or.cond = icmp eq i32 %i.er, 0
  %brmerge700.not = select i1 %or.cond, i1 %.not.i.i.i, i1 false
  br i1 %brmerge700.not, label %bb.am, label %.thread

bb.al:                                            ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread, %_ZNK12_GLOBAL__N_118X86ISelAddressMode13isRIPRelativeEv.exit.thread
  %.not.i370.not = xor i1 %.not.i370, true
  %brmerge702.not = select i1 %.not.i370.not, i1 %.not.i.i.i, i1 false
  br i1 %brmerge702.not, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !390
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !540 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !390 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !399
  switch i32 %i.fa, label %.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382: ; preds = %bb.an, %bb.an
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 88
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !404 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !406
  %i.fg = icmp ult i32 %i.ff, 65                  ; 2 uses
  %i.fh = load ptr, ptr %i.fd, align 8
  %spec.select.i.i.i383 = select i1 %i.fg, ptr %i.fd, ptr %i.fh
  %.0.i.i.i384 = load i64, ptr %spec.select.i.i.i383, align 8, !tbaa !407 ; 2 uses
  switch i64 %.0.i.i.i384, label %.thread [
    i64 3, label %bb.ao
    i64 5, label %bb.ao
    i64 9, label %bb.ao
  ]

bb.ao:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit382
  %i.fi = trunc nuw nsw i64 %.0.i.i.i384 to i32
  %i.fj = add nsw i32 %i.fi, -1
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !601
  %.sroa.0580.0.copyload = load ptr, ptr %i.ew, align 8, !tbaa !395 ; 8 uses
  %.sroa.8585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.8585.0.copyload = load i32, ptr %.sroa.8585.0..sroa_idx, align 8, !tbaa !396 ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0580.0.copyload, i64 24
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !399
  %i.fn = icmp eq i32 %i.fm, 59
  br i1 %i.fn, label %bb.ap, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0580.0.copyload, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.fo, align 8, !tbaa !542 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %.lr.ph.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.fs, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.fp, align 8, !tbaa !542 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.018.0.i.i, null
end_hunk_0
