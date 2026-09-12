Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelLowering?download=true
inline.NumInlined: 31494
inline.NumDeleted: 6083
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 162
begin_hunk_0_@_ZL21isLoadOrMultipleLoadsN4llvm7SDValueERNS_11SmallVectorIPNS_10LoadSDNodeELj6EEE:bb.a
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 104
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.m = load i16, ptr %i.l, align 4
  %i.n = and i16 %i.m, 3840
  %.not.i = icmp eq i16 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 32
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, 8
  %.not1.i = icmp eq i8 %i.q, 0
  %i.r = select i1 %.not.i, i1 %.not1.i, i1 false
  br i1 %i.r, label %bb.d, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !413  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !601
  %.not.i117 = icmp ult i32 %i.t, %i.v
  br i1 %.not.i117, label %bb.f, label %bb.e, !prof !677

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %.fca.0.extract)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %2, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  store ptr %.fca.0.extract, ptr %i.y, align 1
  %i.z = load i32, ptr %i.s, align 8, !tbaa !413
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.s, align 8, !tbaa !413
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 64 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !672
  %.not113167 = icmp eq i16 %i.ac, 0
  br i1 %.not113167, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit124
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit124 ] ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !384
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !385 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !383
  %i.al = icmp ne i32 %i.ak, 316
  %.not112163 = icmp eq ptr %i.ai, null
  %.not112 = or i1 %.not112163, %i.al
  br i1 %.not112, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %.0.copyload.i.i.i.i.i.i.i.i119 = load i64, ptr %i.am, align 8
  %i.an = and i64 %.0.copyload.i.i.i.i.i.i.i.i119, -5
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  %i.aq = load i16, ptr %i.ap, align 4
  %i.ar = and i16 %i.aq, 3840
  %.not.i120 = icmp eq i16 %i.ar, 0
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.at = load i8, ptr %i.as, align 8
  %i.au = and i8 %i.at, 8
  %.not1.i121 = icmp eq i8 %i.au, 0
  %i.av = select i1 %.not.i120, i1 %.not1.i121, i1 false
  br i1 %i.av, label %bb.j, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !396
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.ay, align 8, !tbaa !678 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit, label %.lr.ph.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.bc, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.az, align 8, !tbaa !678 ; 2 uses
  %.not.i.i122 = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i122, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.k ], [ %.sroa.018.022.i.i, %bb.j ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !396
  %i.bc = icmp ne i32 %i.bb, %i.ax                ; 2 uses
  %i.bd = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %cond.i.i, label %bb.k, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.k
  %i.be = icmp eq i32 %.214.i.i, 0
  br i1 %i.be, label %.critedge, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

.critedge:                                        ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.bf = load i32, ptr %i.ae, align 8, !tbaa !413 ; 2 uses
  %i.bg = load i32, ptr %i.af, align 4, !tbaa !601
  %.not.i123 = icmp ult i32 %i.bf, %i.bg
  br i1 %.not.i123, label %bb.m, label %bb.l, !prof !677

bb.l:                                             ; preds = %.critedge
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit124

bb.m:                                             ; preds = %.critedge
  %i.bh = zext i32 %i.bf to i64
  %i.bi = load ptr, ptr %2, align 8, !tbaa !62
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  store ptr %i.ai, ptr %i.bj, align 1
  %i.bk = load i32, ptr %i.ae, align 8, !tbaa !413
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.ae, align 8, !tbaa !413
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit124

_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit124: ; preds = %bb.l, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i16, ptr %i.ab, align 8, !tbaa !672
  %i.bn = zext i16 %i.bm to i64
  %.not113.not = icmp samesign ult i64 %indvars.iv.next, %i.bn
  br i1 %.not113.not, label %bb.h, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit, !llvm.loop !2506

bb.n:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !383
  %i.bq = icmp eq i32 %i.bp, 171
  br i1 %i.bq, label %bb.o, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !384 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !385 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !383
  %.not99 = icmp eq i32 %i.bv, 171
  br i1 %.not99, label %bb.p, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !384 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !385
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !383
  %.not100 = icmp eq i32 %i.ca, 165
  br i1 %.not100, label %bb.q, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !385
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !383
  %.not101 = icmp eq i32 %i.ce, 165
  br i1 %.not101, label %bb.r, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !385 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !383
  %.not102 = icmp eq i32 %i.ci, 165
  br i1 %.not102, label %bb.s, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.ck = load i16, ptr %i.cj, align 8, !tbaa !672
  %.not103 = icmp eq i16 %i.ck, 4
  br i1 %.not103, label %bb.t, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !379
  %i.cn = zext i32 %1 to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.co, align 8, !tbaa !227
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i, ptr %3, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.cp, align 8
  %i.cq = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %.not111176 = icmp sgt i32 %i.cq, 3
  br i1 %.not111176, label %.lr.ph178, label %.critedge115

.lr.ph178:                                        ; preds = %bb.t
  %i.cr = lshr i32 %i.cq, 2                       ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !847 ; 4 uses
  %i.cu = shl nuw nsw i32 %i.cr, 1
  %i.cv = mul nuw nsw i32 %i.cr, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %4 = zext nneg i32 %i.cr to i64                 ; 2 uses
  %5 = zext nneg i32 %i.cu to i64
  %wide.trip.count = zext nneg i32 %i.cv to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %wide.trip.count
  br label %bb.v

bb.u:                                             ; preds = %bb.ab
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next183, %4
  br i1 %exitcond.not, label %.critedge115, label %bb.v, !llvm.loop !2507

bb.v:                                             ; preds = %.lr.ph178, %bb.u
  %indvars.iv182 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next183, %bb.u ] ; 9 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv182
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !337
  %i.cz = zext i32 %i.cy to i64
  %.not104 = icmp eq i64 %indvars.iv182, %i.cz
  br i1 %.not104, label %bb.w, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.w:                                             ; preds = %bb.v
  %6 = add nuw nsw i64 %indvars.iv182, %4         ; 4 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !337
  %9 = zext i32 %8 to i64
  %.not105 = icmp eq i64 %6, %9
  br i1 %.not105, label %bb.x, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.x:                                             ; preds = %bb.w
  %10 = add nuw nsw i64 %indvars.iv182, %5        ; 3 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !337
  %13 = zext i32 %12 to i64
  %.not106 = icmp eq i64 %10, %13
  br i1 %.not106, label %bb.y, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv182
  %i.db = load i32, ptr %i.da, align 4, !tbaa !337 ; 2 uses
  %i.dc = trunc nuw i64 %indvars.iv182 to i32
  %i.dd = add i32 %i.cq, %i.dc
  %.not107 = icmp eq i32 %i.db, %i.dd
  br i1 %.not107, label %bb.z, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.z:                                             ; preds = %bb.y
  %i.de = load ptr, ptr %i.cw, align 8, !tbaa !847 ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv182
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !337
  %i.dh = zext i32 %i.dg to i64
  %.not108 = icmp eq i64 %indvars.iv182, %i.dh
  br i1 %.not108, label %bb.aa, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.aa:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %6
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !337
  %14 = zext i32 %i.dj to i64
  %.not109 = icmp eq i64 %6, %14
  br i1 %.not109, label %bb.ab, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %10
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !337
  %.not110 = icmp eq i32 %i.dl, %i.db
  br i1 %.not110, label %bb.u, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

.critedge115:                                     ; preds = %bb.u, %bb.t
  %i.dm = load ptr, ptr %i.bw, align 8, !tbaa !384 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !385
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !384 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !385 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !383
  %i.dt = icmp eq i32 %i.ds, 316
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !385 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !383
  %i.dy = icmp eq i32 %i.dx, 316
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !385
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !384
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !385 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !383
  %i.eg = icmp eq i32 %i.ef, 316
  %i.eh = load ptr, ptr %i.br, align 8, !tbaa !384
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !385
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !384
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !385 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !383
  %i.ep = icmp eq i32 %i.eo, 316
  %i.eq = insertelement <4 x ptr> poison, ptr %i.dq, i64 0
  %i.er = insertelement <4 x ptr> %i.eq, ptr %i.dv, i64 1
  %i.es = insertelement <4 x ptr> %i.er, ptr %i.ed, i64 2
  %i.et = insertelement <4 x ptr> %i.es, ptr %i.em, i64 3
  %i.eu = icmp eq <4 x ptr> %i.et, splat (ptr null)
  %i.ev = bitcast <4 x i1> %i.eu to i4
  %i.ew = icmp eq i4 %i.ev, 0
  %op.rdx = and i1 %i.ew, %i.dt
  %op.rdx197 = and i1 %i.dy, %i.eg
  %op.rdx198 = and i1 %op.rdx, %op.rdx197
  %op.rdx199 = and i1 %op.rdx198, %i.ep
  br i1 %op.rdx199, label %bb.ac, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.ac:                                            ; preds = %.critedge115
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %.0.copyload.i.i.i.i.i.i.i.i129 = load i64, ptr %i.ex, align 8
  %i.ey = and i64 %.0.copyload.i.i.i.i.i.i.i.i129, -5
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 36
  %i.fb = load i16, ptr %i.fa, align 4
  %i.fc = and i16 %i.fb, 3840
  %.not.i130 = icmp eq i16 %i.fc, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.fe = load i8, ptr %i.fd, align 8
  %i.ff = and i8 %i.fe, 8
  %.not1.i131 = icmp eq i8 %i.ff, 0
  %i.fg = select i1 %.not.i130, i1 %.not1.i131, i1 false
  br i1 %i.fg, label %bb.ad, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dv, i64 104
  %.0.copyload.i.i.i.i.i.i.i.i132 = load i64, ptr %i.fh, align 8
  %i.fi = and i64 %.0.copyload.i.i.i.i.i.i.i.i132, -5
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 36
  %i.fl = load i16, ptr %i.fk, align 4
  %i.fm = and i16 %i.fl, 3840
  %.not.i133 = icmp eq i16 %i.fm, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.fo = load i8, ptr %i.fn, align 8
  %i.fp = and i8 %i.fo, 8
  %.not1.i134 = icmp eq i8 %i.fp, 0
  %i.fq = select i1 %.not.i133, i1 %.not1.i134, i1 false
  br i1 %i.fq, label %bb.ae, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ed, i64 104
  %.0.copyload.i.i.i.i.i.i.i.i135 = load i64, ptr %i.fr, align 8
  %i.fs = and i64 %.0.copyload.i.i.i.i.i.i.i.i135, -5
  %i.ft = inttoptr i64 %i.fs to ptr
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 36
  %i.fv = load i16, ptr %i.fu, align 4
  %i.fw = and i16 %i.fv, 3840
  %.not.i136 = icmp eq i16 %i.fw, 0
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.fy = load i8, ptr %i.fx, align 8
  %i.fz = and i8 %i.fy, 8
  %.not1.i137 = icmp eq i8 %i.fz, 0
  %i.ga = select i1 %.not.i136, i1 %.not1.i137, i1 false
  br i1 %i.ga, label %bb.af, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.af:                                            ; preds = %bb.ae
  %i.gb = getelementptr inbounds nuw i8, ptr %i.em, i64 104
  %.0.copyload.i.i.i.i.i.i.i.i138 = load i64, ptr %i.gb, align 8
  %i.gc = and i64 %.0.copyload.i.i.i.i.i.i.i.i138, -5
  %i.gd = inttoptr i64 %i.gc to ptr
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 36
  %i.gf = load i16, ptr %i.ge, align 4
  %i.gg = and i16 %i.gf, 3840
  %.not.i139 = icmp eq i16 %i.gg, 0
  %i.gh = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.gi = load i8, ptr %i.gh, align 8
  %i.gj = and i8 %i.gi, 8
  %.not1.i140 = icmp eq i8 %i.gj, 0
  %i.gk = select i1 %.not.i139, i1 %.not1.i140, i1 false
  br i1 %i.gk, label %bb.ag, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.dq)
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.dv)
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.ed)
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.em)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit: ; preds = %bb.j, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.i, %bb.h, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit124, %.lr.ph.i.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.ab, %bb.aa, %bb.z, %bb.g, %bb.e, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.p, %bb.q, %bb.r, %bb.s, %bb.o, %bb.c, %bb.f, %.critedge115, %bb.a, %bb.n, %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %.7 = phi i1 [ false, %_ZNK4llvm6SDNode9hasOneUseEv.exit ], [ false, %bb.n ], [ false, %bb.a ], [ false, %.critedge115 ], [ false, %.lr.ph.i.i ], [ false, %bb.s ], [ false, %bb.o ], [ false, %bb.ac ], [ false, %bb.c ], [ false, %bb.y ], [ true, %bb.e ], [ false, %bb.ad ], [ false, %bb.ae ], [ false, %bb.af ], [ true, %bb.ag ], [ true, %bb.f ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ true, %bb.g ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ], [ false, %bb.v ], [ false, %bb.w ], [ false, %bb.x ], [ false, %bb.i ], [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ false, %bb.j ], [ true, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_.exit124 ], [ false, %bb.h ]
  ret i1 %.7
}

declare { ptr, i32 } @_ZN4llvm25peekThroughOneUseBitcastsENS_7SDValueE(ptr, i32) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !413  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !601
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !677

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  store ptr %1, ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !413
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !413
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10LoadSDNodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !413
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #35
  %i.f = load ptr, ptr %0, align 8, !tbaa !62
  %i.g = load i32, ptr %i.a, align 8, !tbaa !413
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !413
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !413
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm12SelectionDAG30areNonVolatileConsecutiveLoadsEPNS_10LoadSDNodeES2_ji(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal { ptr, i32 } @"_ZNSt17_Function_handlerIFN4llvm7SDValueES1_S1_RNS0_12SelectionDAGEEZL23performExtBinopLoadFoldPNS0_6SDNodeES3_E3$_0E9_M_invokeERKSt9_Any_dataOS1_SC_S3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(920) %3) #4 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %7 = alloca %"class.llvm::SmallVector.1280", align 8 ; 9 uses
  %8 = alloca %"class.llvm::SmallVector.1280", align 8 ; 9 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 12 uses
  %12 = alloca %"class.llvm::SmallVector.467", align 8 ; 10 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %14 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %15 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %16 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %17 = alloca %"class.llvm::ArrayRef.463", align 8 ; 5 uses
  %18 = alloca %"class.llvm::SmallVector.467", align 8 ; 10 uses
  %19 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %20 = alloca %"class.llvm::ArrayRef.463", align 8 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !394   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i32, ptr %i.a, align 8, !tbaa !337 ; 2 uses
  %.val7 = load ptr, ptr %2, align 8, !tbaa !394  ; 3 uses
end_hunk_0
