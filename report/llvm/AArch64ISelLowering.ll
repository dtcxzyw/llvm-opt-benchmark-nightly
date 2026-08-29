Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelLowering?download=true
inline.NumInlined: 31494
inline.NumDeleted: 6083
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZL23performExtBinopLoadFoldPN4llvm6SDNodeERNS_12SelectionDAGE:bb.a
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !379
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !392
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !361
  %i.dg = zext i32 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.dg ; 2 uses
  %.sroa.0.0.copyload.i.i297 = load i16, ptr %i.dh, align 8, !tbaa !189
  %.sroa.21.0..sroa_idx.i.i298 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.21.0.copyload.i.i299 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i298, align 8, !tbaa !374
  %.not.i302 = icmp ne i16 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i297
  %i.di = icmp ne ptr %.sroa.21.0.copyload.i.i, %.sroa.21.0.copyload.i.i299
  %i.dj = select i1 %.not.i302, i1 true, i1 %i.di
  br i1 %i.dj, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0406.0, i64 56
  %.sroa.018.022.i.i303 = load ptr, ptr %i.dk, align 8, !tbaa !878 ; 2 uses
  %.not23.i.i304 = icmp eq ptr %.sroa.018.022.i.i303, null
  br i1 %.not23.i.i304, label %.critedge, label %.lr.ph.i.i305

bb.ac:                                            ; preds = %.lr.ph.i.i305
  %.214.i.i308 = select i1 %i.do, i32 %.01224.i.i307, i32 0 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i306, i64 32
  %.sroa.018.0.i.i312 = load ptr, ptr %i.dl, align 8, !tbaa !878 ; 2 uses
  %.not.i.i313 = icmp eq ptr %.sroa.018.0.i.i312, null
  br i1 %.not.i.i313, label %_ZNK4llvm7SDValue9hasOneUseEv.exit314, label %.lr.ph.i.i305

.lr.ph.i.i305:                                    ; preds = %bb.ab, %bb.ac
  %.sroa.018.025.i.i306 = phi ptr [ %.sroa.018.0.i.i312, %bb.ac ], [ %.sroa.018.022.i.i303, %bb.ab ] ; 2 uses
  %.01224.i.i307 = phi i32 [ %.214.i.i308, %bb.ac ], [ 1, %bb.ab ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i306, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !392
  %i.do = icmp ne i32 %i.dn, %.sroa.13.0          ; 2 uses
  %i.dp = icmp ne i32 %.01224.i.i307, 0
  %cond.i.i309 = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %cond.i.i309, label %bb.ac, label %.critedge

_ZNK4llvm7SDValue9hasOneUseEv.exit314:            ; preds = %bb.ac
  %i.dq = icmp eq i32 %.214.i.i308, 0
  br i1 %i.dq, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit314
  %i.dr = call noundef zeroext i1 @_ZNK4llvm7SDValue9hasOneUseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ci)
  br i1 %i.dr, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load ptr, ptr %i.cz, align 8, !tbaa !378 ; 2 uses
  %.sroa.0370.0.copyload = load ptr, ptr %i.ds, align 8, !tbaa !391 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !310 ; 3 uses
  %i.dt = load ptr, ptr %i.cd, align 8, !tbaa !378
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !379
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !378 ; 2 uses
  %.sroa.0226.0.copyload = load ptr, ptr %i.dw, align 8, !tbaa !391 ; 2 uses
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.5227.0.copyload = load i32, ptr %.sroa.5227.0..sroa_idx, align 8, !tbaa !310 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i32 0, ptr %i.a, align 4, !tbaa !310
  %i.dx = call fastcc noundef zeroext i1 @_ZL31areLoadedOffsetButOtherwiseSameN4llvm7SDValueES0_RNS_12SelectionDAGERj(ptr %.sroa.0370.0.copyload, i32 %.sroa.12.0.copyload, ptr %.sroa.0226.0.copyload, i32 %.sroa.5227.0.copyload, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.dx, label %bb.af, label %bb.at

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0370.0.copyload, i64 48 ; 6 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !361
  %i.ea = zext i32 %.sroa.12.0.copyload to i64    ; 6 uses
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %.sroa.0.0.copyload.i.i315 = load i16, ptr %i.eb, align 8, !tbaa !189
  %.sroa.21.0..sroa_idx.i.i316 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.21.0.copyload.i.i317 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i316, align 8, !tbaa !374
  store i16 %.sroa.0.0.copyload.i.i315, ptr %7, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.21.0.copyload.i.i317, ptr %i.ec, align 8
  %i.ed = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %7) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.ee = load i32, ptr %i.a, align 4, !tbaa !310 ; 2 uses
  %i.ef = udiv i32 %i.ed, %i.ee                   ; 8 uses
  %i.eg = zext i32 %i.ef to i64                   ; 5 uses
  %i.eh = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.ei = mul i64 %i.eh, %i.eg
  %i.ej = icmp ult i64 %i.ei, 128
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  br i1 %i.ej, label %.critedge2, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ek = load i32, ptr %i.cn, align 8, !tbaa !377
  %i.el = load ptr, ptr %i.cd, align 8, !tbaa !378
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !379
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !377
  %.not269 = icmp eq i32 %i.ek, %i.eo
  br i1 %.not269, label %.critedge4, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ep = load ptr, ptr %i.dy, align 8, !tbaa !361
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.ea ; 2 uses
  %.sroa.0.0.copyload.i.i320 = load i16, ptr %i.eq, align 8, !tbaa !189 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i321 = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.sroa.21.0.copyload.i.i322 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i321, align 8, !tbaa !374
  store i16 %.sroa.0.0.copyload.i.i320, ptr %8, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.21.0.copyload.i.i322, ptr %i.er, align 8
  %.not.i325 = icmp eq i16 %.sroa.0.0.copyload.i.i320, 0 ; 2 uses
  br i1 %.not.i325, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = zext i16 %.sroa.0.0.copyload.i.i320 to i64
  %i.et = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.es ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 -16
  %.sroa.0.0.copyload.i.i326 = load i64, ptr %i.eu, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.et, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i327 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i326, 0
  %.fca.1.insert.i.i328 = insertvalue { i64, i8 } %.fca.0.insert.i.i327, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ev = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.ai, %bb.aj
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i328, %bb.ai ], [ %i.ev, %bb.aj ] ; 2 uses
  %.fca.1.extract205 = extractvalue { i64, i8 } %.pn.i, 1
  %i.ew = trunc nuw i8 %.fca.1.extract205 to i1
  br i1 %i.ew, label %bb.ak, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.ak:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract204 = extractvalue { i64, i8 } %.pn.i, 0
  %i.ex = icmp ult i64 %.fca.0.extract204, 128
  br i1 %i.ex, label %bb.al, label %.critedge4

bb.al:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  br i1 %.not.i325, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.at

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !790
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
  %i.fb = zext i16 %.sroa.0.0.copyload.i.i320 to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !58
  %.not430 = icmp eq ptr %i.fd, null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br i1 %.not430, label %bb.at, label %bb.am

.critedge2:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.at

.critedge4:                                       ; preds = %bb.ag, %_ZNK4llvm8TypeSizecvmEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.am

bb.am:                                            ; preds = %.critedge4, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.fe = ptrtoint ptr %9 to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.fh, align 8
  store i64 %i.fe, ptr %9, align 8, !tbaa !2452
  store ptr @"_ZNSt17_Function_handlerIFN4llvm7SDValueES1_S1_RNS0_12SelectionDAGEEZL23performExtBinopLoadFoldPNS0_6SDNodeES3_E3$_0E9_M_invokeERKSt9_Any_dataOS1_SC_S3_", ptr %i.fg, align 8, !tbaa !2454
  store ptr @"_ZNSt17_Function_handlerIFN4llvm7SDValueES1_S1_RNS0_12SelectionDAGEEZL23performExtBinopLoadFoldPNS0_6SDNodeES3_E3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.ff, align 8, !tbaa !10
  %i.fi = call { ptr, i32 } @_ZNKSt8functionIFN4llvm7SDValueES1_S1_RNS0_12SelectionDAGEEEclES1_S1_S3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr nonnull %.sroa.0370.0.copyload, i32 %.sroa.12.0.copyload, ptr %.sroa.0226.0.copyload, i32 %.sroa.5227.0.copyload, ptr noundef nonnull align 8 dereferenceable(920) %1) ; 2 uses
  %.fca.0.extract180 = extractvalue { ptr, i32 } %i.fi, 0 ; 3 uses
  %.fca.1.extract181 = extractvalue { ptr, i32 } %i.fi, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.fj = zext i32 %i.ed to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i32 0, ptr %i.b, align 4, !tbaa !310
  call void @_ZN4llvm11SmallVectorIiLj12EEC2EmRKi(ptr noundef nonnull align 8 dereferenceable(64) %10, i64 noundef %i.fj, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  store i32 0, ptr %i.c, align 4, !tbaa !310
  call void @_ZN4llvm11SmallVectorIiLj12EEC2EmRKi(ptr noundef nonnull align 8 dereferenceable(64) %11, i64 noundef %i.fj, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  %i.fk = load i32, ptr %i.a, align 4, !tbaa !310
  %.not445 = icmp eq i32 %i.fk, 0
  br i1 %.not445, label %._crit_edge444.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.am
  %.not446 = icmp ugt i32 %i.ee, %i.ed
  %i.fl = load ptr, ptr %10, align 8              ; 3 uses
  %i.fm = load ptr, ptr %11, align 8              ; 3 uses
  br i1 %.not446, label %._crit_edge444.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.fn = ptrtoaddr ptr %i.fm to i64
  %i.fo = ptrtoaddr ptr %i.fl to i64
  %min.iters.check = icmp ult i32 %i.ef, 12
  %35 = call i64 @llvm.usub.sat.i64(i64 %i.eg, i64 1)
  %36 = trunc nuw i64 %35 to i32
  %i.fp = sub i64 %i.fo, %i.fn
  %diff.check = icmp ugt i64 %i.fp, -32
  %n.vec = and i64 %i.eg, 4294967288              ; 4 uses
  %i.fq = trunc nuw i64 %n.vec to i32             ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.eg
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0443 = phi i32 [ %i.gp, %._crit_edge ], [ %i.ef, %.preheader.preheader ] ; 4 uses
  %.0258442 = phi i32 [ %i.go, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %.0260441 = phi i32 [ %i.gq, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.fr = mul i32 %.0260441, %i.ef                ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.fs = xor i32 %i.fr, -1
  %i.ft = icmp ult i32 %i.fs, %36
  %or.cond = select i1 %i.ft, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.fu = add i32 %.0443, %i.fq                   ; 2 uses
  %i.fv = add i32 %.0258442, %i.fq                ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0443, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %broadcast.splatinsert463 = insertelement <4 x i32> poison, i32 %.0258442, i64 0
  %broadcast.splat464 = shufflevector <4 x i32> %broadcast.splatinsert463, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction465 = add nsw <4 x i32> %broadcast.splat464, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind466 = phi <4 x i32> [ %induction465, %vector.ph ], [ %vec.ind.next468, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 4)
  %step.add467 = add nsw <4 x i32> %vec.ind466, splat (i32 4)
  %i.fw = trunc nuw i64 %index to i32
  %i.fx = add i32 %i.fr, %i.fw
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <4 x i32> %vec.ind466, ptr %i.fz, align 4, !tbaa !310
  store <4 x i32> %step.add467, ptr %i.ga, align 4, !tbaa !310
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fy ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <4 x i32> %vec.ind, ptr %i.gb, align 4, !tbaa !310
  store <4 x i32> %step.add, ptr %i.gc, align 4, !tbaa !310
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next468 = add nsw <4 x i32> %vec.ind466, splat (i32 8)
  %i.gd = icmp eq i64 %index.next, %n.vec
  br i1 %i.gd, label %middle.block, label %vector.body, !llvm.loop !2456

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ]
  %.1439.ph = phi i32 [ %.0443, %vector.scevcheck ], [ %.0443, %.preheader ], [ %i.fu, %middle.block ]
  %.1259438.ph = phi i32 [ %.0258442, %vector.scevcheck ], [ %.0258442, %.preheader ], [ %i.fv, %middle.block ]
  br label %scalar.ph

._crit_edge444.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !385
  store i64 %i.gf, ptr %12, align 8, !tbaa !385
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !386
  store i32 %i.gi, ptr %i.gg, align 8, !tbaa !387
  %i.gj = load i32, ptr %i.cn, align 8, !tbaa !377
  %i.gk = load ptr, ptr %i.cd, align 8, !tbaa !378
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !379
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !377
  %.not270 = icmp eq i32 %i.gj, %i.gn
  br i1 %.not270, label %bb.ao, label %bb.an

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa462 = phi i32 [ %i.fv, %middle.block ], [ %i.gt, %scalar.ph ]
  %.lcssa = phi i32 [ %i.fu, %middle.block ], [ %i.gy, %scalar.ph ]
  %i.go = add i32 %.lcssa462, %i.ef
  %i.gp = add i32 %.lcssa, %i.ef
  %i.gq = add nuw i32 %.0260441, 1                ; 2 uses
  %i.gr = load i32, ptr %i.a, align 4, !tbaa !310
  %i.gs = icmp ult i32 %i.gq, %i.gr
  br i1 %i.gs, label %.preheader, label %._crit_edge444.split, !llvm.loop !2457

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1439 = phi i32 [ %i.gy, %scalar.ph ], [ %.1439.ph, %scalar.ph.preheader ] ; 2 uses
  %.1259438 = phi i32 [ %i.gt, %scalar.ph ], [ %.1259438.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gt = add nsw i32 %.1259438, 1                ; 2 uses
  %i.gu = trunc nuw i64 %indvars.iv to i32
  %i.gv = add i32 %i.fr, %i.gu
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.gw
  store i32 %.1259438, ptr %i.gx, align 4, !tbaa !310
  %i.gy = add nsw i32 %.1439, 1                   ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.gw
  store i32 %.1439, ptr %i.gz, align 4, !tbaa !310
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ha = icmp samesign ult i64 %indvars.iv.next, %i.eg
  br i1 %i.ha, label %scalar.ph, label %._crit_edge, !llvm.loop !2458

bb.an:                                            ; preds = %._crit_edge444.split
  %i.hb = load ptr, ptr %i.dy, align 8, !tbaa !361
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %i.ea ; 2 uses
  %.sroa.0.0.copyload.i.i335 = load i16, ptr %i.hc, align 8, !tbaa !189
  %.sroa.21.0..sroa_idx.i.i336 = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.sroa.21.0.copyload.i.i337 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i336, align 8, !tbaa !374
  store ptr %.fca.0.extract180, ptr %13, align 8, !tbaa !391
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract181, ptr %.sroa.6193.0..sroa_idx, align 8, !tbaa !310
  %i.hd = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract158 = extractvalue { ptr, i32 } %i.hd, 0
  %.fca.1.extract159 = extractvalue { ptr, i32 } %i.hd, 1
  store ptr %.fca.0.extract158, ptr %14, align 8
  %.sroa.2161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract159, ptr %.sroa.2161.0..sroa_idx, align 8
  %i.he = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.0.0.copyload.i.i335, ptr %.sroa.21.0.copyload.i.i337, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #35 ; 2 uses
  %.fca.0.extract154 = extractvalue { ptr, i32 } %i.he, 0 ; 2 uses
  %.fca.1.extract155 = extractvalue { ptr, i32 } %i.he, 1 ; 2 uses
  %i.hf = load ptr, ptr %i.dy, align 8, !tbaa !361
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %i.ea ; 2 uses
  %.sroa.0.0.copyload.i.i340 = load i16, ptr %i.hg, align 8, !tbaa !189
  %.sroa.21.0..sroa_idx.i.i341 = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %.sroa.21.0.copyload.i.i342 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i341, align 8, !tbaa !374
  store ptr %.fca.0.extract180, ptr %15, align 8, !tbaa !391
  %.sroa.6193.0..sroa_idx194 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract181, ptr %.sroa.6193.0..sroa_idx194, align 8, !tbaa !310
  %i.hh = load i32, ptr %i.a, align 4, !tbaa !310
  %i.hi = mul i32 %i.hh, %i.ef
  %i.hj = zext i32 %i.hi to i64
  %i.hk = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.hj, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract140 = extractvalue { ptr, i32 } %i.hk, 0
  %.fca.1.extract141 = extractvalue { ptr, i32 } %i.hk, 1
  store ptr %.fca.0.extract140, ptr %16, align 8
  %.sroa.2143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract141, ptr %.sroa.2143.0..sroa_idx, align 8
  %i.hl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.0.0.copyload.i.i340, ptr %.sroa.21.0.copyload.i.i342, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #35 ; 2 uses
  %.fca.0.extract136 = extractvalue { ptr, i32 } %i.hl, 0 ; 2 uses
  %.fca.1.extract137 = extractvalue { ptr, i32 } %i.hl, 1 ; 2 uses
  %i.hm = load ptr, ptr %i.dy, align 8, !tbaa !361
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.ea ; 2 uses
  %.sroa.0.0.copyload.i.i345 = load i16, ptr %i.hn, align 8, !tbaa !189
  %.sroa.21.0..sroa_idx.i.i346 = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %.sroa.21.0.copyload.i.i347 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i346, align 8, !tbaa !374
  store ptr %.fca.0.extract136, ptr %17, align 8, !tbaa !391
  %.sroa.5148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract137, ptr %.sroa.5148.0..sroa_idx, align 8, !tbaa !310
  %i.ho = load ptr, ptr %10, align 8, !tbaa !21
  store ptr %i.ho, ptr %18, align 8, !tbaa !1156
  %i.hp = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !434
  %i.hs = zext i32 %i.hr to i64
  store i64 %i.hs, ptr %i.hp, align 8, !tbaa !1158
  %i.ht = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.0.0.copyload.i.i345, ptr %.sroa.21.0.copyload.i.i347, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr %.fca.0.extract154, i32 %.fca.1.extract155, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::ArrayRef.361") align 8 %18) #35 ; 2 uses
  %.fca.0.extract124 = extractvalue { ptr, i32 } %i.ht, 0
  %.fca.1.extract125 = extractvalue { ptr, i32 } %i.ht, 1
  %i.hu = load ptr, ptr %i.dy, align 8, !tbaa !361
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %i.ea ; 2 uses
  %.sroa.0.0.copyload.i.i350 = load i16, ptr %i.hv, align 8, !tbaa !189
  %.sroa.21.0..sroa_idx.i.i351 = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %.sroa.21.0.copyload.i.i352 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i351, align 8, !tbaa !374
  store ptr %.fca.0.extract136, ptr %19, align 8, !tbaa !391
  %.sroa.5148.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract137, ptr %.sroa.5148.0..sroa_idx149, align 8, !tbaa !310
  %i.hw = load ptr, ptr %11, align 8, !tbaa !21
  store ptr %i.hw, ptr %20, align 8, !tbaa !1156
  %i.hx = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !434
  %i.ia = zext i32 %i.hz to i64
  store i64 %i.ia, ptr %i.hx, align 8, !tbaa !1158
  %i.ib = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.0.0.copyload.i.i350, ptr %.sroa.21.0.copyload.i.i352, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr %.fca.0.extract154, i32 %.fca.1.extract155, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19, ptr noundef nonnull byval(%"class.llvm::ArrayRef.361") align 8 %20) #35 ; 2 uses
  %.fca.0.extract112 = extractvalue { ptr, i32 } %i.ib, 0
  %.fca.1.extract113 = extractvalue { ptr, i32 } %i.ib, 1
  %i.ic = load i32, ptr %i.cn, align 8, !tbaa !377
  %.sroa.0106.0.copyload = load i16, ptr %5, align 8, !tbaa !189
  %.sroa.2108.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !374
  store ptr %.fca.0.extract124, ptr %21, align 8, !tbaa !391
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract125, ptr %.sroa.4134.0..sroa_idx, align 8, !tbaa !310
  %i.id = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef %i.ic, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.0106.0.copyload, ptr %.sroa.2108.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21) #35
  %i.ie = load ptr, ptr %i.cd, align 8, !tbaa !378
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !379
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !377
  %.sroa.096.0.copyload = load i16, ptr %5, align 8, !tbaa !189
  %.sroa.298.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !374
  store ptr %.fca.0.extract112, ptr %22, align 8, !tbaa !391
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract113, ptr %.sroa.4122.0..sroa_idx, align 8, !tbaa !310
  %i.ii = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef %i.ih, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.096.0.copyload, ptr %.sroa.298.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22) #35
  br label %bb.ap

bb.ao:                                            ; preds = %._crit_edge444.split
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !883
  %i.il = call { i16, ptr } @_ZNK4llvm3EVT28getDoubleNumVectorElementsVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ik) ; 2 uses
  %i.im = extractvalue { i16, ptr } %i.il, 0
  %i.in = extractvalue { i16, ptr } %i.il, 1
  %i.io = load i32, ptr %i.cn, align 8, !tbaa !377
  store ptr %.fca.0.extract180, ptr %23, align 8, !tbaa !391
  %.sroa.6193.0..sroa_idx196 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract181, ptr %.sroa.6193.0..sroa_idx196, align 8, !tbaa !310
  %i.ip = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef %i.io, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %i.im, ptr %i.in, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #35 ; 2 uses
  %.fca.0.extract74 = extractvalue { ptr, i32 } %i.ip, 0 ; 2 uses
  %.fca.1.extract75 = extractvalue { ptr, i32 } %i.ip, 1 ; 2 uses
  %.sroa.067.0.copyload = load i16, ptr %5, align 8, !tbaa !189
  %.sroa.269.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !374
  store ptr %.fca.0.extract74, ptr %24, align 8, !tbaa !391
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.fca.1.extract75, ptr %.sroa.583.0..sroa_idx, align 8, !tbaa !310
end_hunk_0
begin_hunk_1_@_ZL30combineToExtendBoolVectorInRegjRKN4llvm5SDLocENS_3EVTENS_7SDValueERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_16AArch64SubtargetE:bb.a
  %.fca.1.insert.i.i = insertvalue { i16, ptr } %.fca.0.insert.i.i, ptr %.sroa.21.0.copyload.i.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %10, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.w, align 8
  %.not.i.i200 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i200, label %_ZNK4llvm3EVT8isVectorEv.exit.i206, label %.split.i201

.split.i201:                                      ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit
  %i.x = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i202 = icmp ult i16 %i.x, 197
  br i1 %spec.select.i.i.i202, label %bb.f, label %_ZNK4llvm3EVT13getScalarTypeEv.exit207

_ZNK4llvm3EVT8isVectorEv.exit.i206:               ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit
  %i.y = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #37
  br i1 %i.y, label %bb.g, label %_ZNK4llvm3EVT13getScalarTypeEv.exit207

bb.f:                                             ; preds = %.split.i201
  %i.z = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.aa = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !189
  %i.ad = insertvalue { i16, ptr } poison, i16 %i.ac, 0
  %i.ae = insertvalue { i16, ptr } %i.ad, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit207

bb.g:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i206
  %i.af = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #35
  %.pre = load i16, ptr %9, align 8, !tbaa !352
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit207

_ZNK4llvm3EVT13getScalarTypeEv.exit207:           ; preds = %.split.i201, %_ZNK4llvm3EVT8isVectorEv.exit.i206, %bb.f, %bb.g
  %i.ag = phi i16 [ %.pre, %bb.g ], [ %i.p, %bb.f ], [ %i.p, %_ZNK4llvm3EVT8isVectorEv.exit.i206 ], [ %i.p, %.split.i201 ] ; 3 uses
  %.fca.1.insert.merged.i205 = phi { i16, ptr } [ %i.af, %bb.g ], [ %i.ae, %bb.f ], [ %.fca.1.insert.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i206 ], [ %.fca.1.insert.i.i, %.split.i201 ] ; 2 uses
  %i.ah = extractvalue { i16, ptr } %.fca.1.insert.merged.i205, 0
  %i.ai = extractvalue { i16, ptr } %.fca.1.insert.merged.i205, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %.not.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit207
  %i.aj = zext i16 %i.ag to i64
  %i.ak = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -16
  %.sroa.0.0.copyload.i.i208 = load i64, ptr %i.al, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.ak, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i209 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i208, 0
  %.fca.1.insert.i.i210 = insertvalue { i64, i8 } %.fca.0.insert.i.i209, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.i:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit207
  %i.am = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.h, %bb.i
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i210, %bb.h ], [ %i.am, %bb.i ]
  %.pn.i.fr = freeze { i64, i8 } %.pn.i           ; 2 uses
  %.fca.0.extract153 = extractvalue { i64, i8 } %.pn.i.fr, 0 ; 3 uses
  %.fca.1.extract154 = extractvalue { i64, i8 } %.pn.i.fr, 1
  %i.an = trunc nuw i8 %.fca.1.extract154 to i1
  br i1 %i.an, label %bb.j, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.j:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.ao = trunc i64 %.fca.0.extract153 to i32     ; 7 uses
  %i.ap = load i16, ptr %8, align 8, !tbaa !352   ; 2 uses
  %.not.i211 = icmp eq i16 %i.ap, 0
  br i1 %.not.i211, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.aq = add i16 %i.ap, -19
  %spec.select.i.i = icmp ult i16 %i.aq, 197
  br i1 %spec.select.i.i, label %bb.k, label %bb.aj

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ar = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #37
  br i1 %i.ar, label %bb.k, label %bb.aj

bb.k:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.as = load ptr, ptr %i.q, align 8
  %i.at = icmp ne ptr %i.as, null
  %i.au = add i16 %i.ag, -9
  %i.av = icmp ult i16 %i.au, -4
  %or.cond49 = select i1 %i.av, i1 true, i1 %i.at
  br i1 %or.cond49, label %bb.aj, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i216 = icmp ne i16 %i.ah, 2
  %i.aw = icmp ne ptr %i.ai, null
  %i.ax = select i1 %.not.i216, i1 true, i1 %i.aw
  br i1 %i.ax, label %bb.aj, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !377
  %.not = icmp eq i32 %i.az, 248
  br i1 %.not, label %bb.n, label %bb.aj

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !378 ; 2 uses
  %.sroa.019.0.copyload = load ptr, ptr %i.bb, align 8, !tbaa !391 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bc = load <2 x i32>, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !310 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !361
  %i.bf = zext i32 %.sroa.6.0.copyload to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %.sroa.0.0.copyload.i.i217 = load i16, ptr %i.bg, align 8, !tbaa !189 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i218 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.21.0.copyload.i.i219 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i218, align 8, !tbaa !374
  store i16 %.sroa.0.0.copyload.i.i217, ptr %11, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i219, ptr %i.bh, align 8
  %.not.i222 = icmp eq i16 %.sroa.0.0.copyload.i.i217, 0
  br i1 %.not.i222, label %_ZNK4llvm3EVT15isScalarIntegerEv.exit, label %.split45

.split45:                                         ; preds = %bb.n
  %i.bi = add i16 %.sroa.0.0.copyload.i.i217, -2
  %spec.select.i.i223 = icmp ult i16 %i.bi, 10
  br i1 %spec.select.i.i223, label %bb.o, label %bb.ai

_ZNK4llvm3EVT15isScalarIntegerEv.exit:            ; preds = %bb.n
  %i.bj = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedScalarIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #37
  br i1 %i.bj, label %bb.o, label %bb.ai

bb.o:                                             ; preds = %.split45, %_ZNK4llvm3EVT15isScalarIntegerEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bk, ptr %12, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  store i32 0, ptr %i.bl, align 8, !tbaa !434
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 3 uses
  store i32 12, ptr %i.bm, align 4, !tbaa !789
  %i.bn = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !884
  %i.bq = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.bp) #35
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !1030, !range !18, !noundef !19
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = icmp ugt i32 %i.bn, %i.ao
  br i1 %i.bt, label %.lr.ph, label %bb.r

.lr.ph:                                           ; preds = %bb.o
  %i.bu = udiv i32 %i.bn, %i.ao                   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !883
  %.sroa.0140.0.copyload = load i16, ptr %11, align 8, !tbaa !189
  %.sroa.2142.0.copyload = load ptr, ptr %i.bh, align 8, !tbaa !374
  %i.bx = call { i16, ptr } @_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i16 %.sroa.0140.0.copyload, ptr %.sroa.2142.0.copyload, i32 noundef %i.ao, i1 noundef zeroext false) ; 2 uses
  %i.by = extractvalue { i16, ptr } %i.bx, 0
  %i.bz = extractvalue { i16, ptr } %i.bx, 1
  store ptr %.sroa.019.0.copyload, ptr %13, align 8, !tbaa !391
  %.sroa.6.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x i32> %i.bc, ptr %.sroa.6.0..sroa_idx21, align 8
  %i.ca = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 174, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %i.by, ptr %i.bz, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #35 ; 2 uses
  %.fca.0.extract130 = extractvalue { ptr, i32 } %i.ca, 0
  %.fca.1.extract131 = extractvalue { ptr, i32 } %i.ca, 1
  %.sroa.0124.0.copyload = load i16, ptr %8, align 8, !tbaa !189
  %.sroa.2126.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !374
  %i.cb = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %.sroa.0124.0.copyload, ptr %.sroa.2126.0.copyload, ptr %.fca.0.extract130, i32 %.fca.1.extract131) #35 ; 2 uses
  %.fca.0.extract117 = extractvalue { ptr, i32 } %i.cb, 0 ; 2 uses
  %.fca.1.extract118 = extractvalue { ptr, i32 } %i.cb, 1 ; 2 uses
  %i.cc = and i64 %.fca.0.extract153, 4294967295  ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 0
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.cc, 2      ; 2 uses
  %.pre61 = load i32, ptr %i.bl, align 8, !tbaa !434 ; 2 uses
  br i1 %i.cd, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ce = add nsw i64 %.idx.i.i.i.i.i, -4         ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ce, 28
  %n.vec = and i64 %i.cg, 9223372036854775800     ; 3 uses
  %i.ch = shl i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.us
  %i.ci = phi i32 [ %.pre4.i.us, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.us ], [ %.pre61, %.lr.ph ] ; 3 uses
  %.052.us = phi i32 [ %i.cl, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.us ], [ 0, %.lr.ph ]
  %i.cj = load i32, ptr %i.bm, align 4, !tbaa !789
  %.not.i.i.i.us = icmp ugt i32 %i.ci, %i.cj
  br i1 %.not.i.i.i.us, label %bb.p, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.us, !prof !403

bb.p:                                             ; preds = %.lr.ph.split.us
  %i.ck = zext i32 %i.ci to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %i.bk, i64 noundef %i.ck, i64 noundef 4) #35
  %.pre4.pre.i.us = load i32, ptr %i.bl, align 8, !tbaa !434
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.us

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.us: ; preds = %bb.p, %.lr.ph.split.us
  %.pre4.i.us = phi i32 [ %i.ci, %.lr.ph.split.us ], [ %.pre4.pre.i.us, %bb.p ] ; 3 uses
  store i32 %.pre4.i.us, ptr %i.bl, align 8, !tbaa !434
  %i.cl = add i32 %.052.us, 1                     ; 2 uses
  %.not198.us = icmp eq i32 %i.cl, %i.bu
  br i1 %.not198.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !2570

._crit_edge:                                      ; preds = %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.us
  %i.cm = phi i32 [ %.pre4.i.us, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.us ], [ %i.de, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i ]
  %.sroa.0108.0.copyload = load i16, ptr %8, align 8, !tbaa !189
  %.sroa.2110.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !374
  store ptr %.fca.0.extract117, ptr %14, align 8, !tbaa !391
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract118, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !310
  %i.cn = load ptr, ptr %12, align 8, !tbaa !21
  store ptr %i.cn, ptr %15, align 8, !tbaa !1156
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cp = zext i32 %i.cm to i64
  store i64 %i.cp, ptr %i.co, align 8, !tbaa !1158
  %i.cq = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %.sroa.0108.0.copyload, ptr %.sroa.2110.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr %.fca.0.extract117, i32 %.fca.1.extract118, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::ArrayRef.361") align 8 %15) #35
  br label %bb.s

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i
  %i.cr = phi i32 [ %i.de, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i ], [ %.pre61, %.lr.ph.split.preheader ]
  %.052 = phi i32 [ %i.df, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = add nuw nsw i64 %i.cc, %i.cs            ; 2 uses
  %i.cu = load i32, ptr %i.bm, align 4, !tbaa !789
  %i.cv = zext i32 %i.cu to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.ct, %i.cv
  br i1 %.not.i.i.i, label %bb.q, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i, !prof !403

bb.q:                                             ; preds = %.lr.ph.split
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %i.bk, i64 noundef %i.ct, i64 noundef 4) #35
  %.pre4.pre.i = load i32, ptr %i.bl, align 8, !tbaa !434
  %.pre65 = zext i32 %.pre4.pre.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i: ; preds = %bb.q, %.lr.ph.split
  %.pre-phi = phi i64 [ %.pre65, %bb.q ], [ %i.cs, %.lr.ph.split ]
  %i.cw = load ptr, ptr %12, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.pre-phi ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i.i.i.i.i
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i
  %i.cz = getelementptr i8, ptr %i.cx, i64 %i.ch
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.052, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cx, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !310
  store <4 x i32> %broadcast.splat, ptr %i.db, align 4, !tbaa !310
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !2571

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.cx, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i ], [ %i.cz, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %.052, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !310
  %i.dd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dd, %i.cy
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2572

_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block
  %.pre.i = load i32, ptr %i.bl, align 8, !tbaa !434
  %i.de = add i32 %.pre.i, %i.ao                  ; 3 uses
  store i32 %i.de, ptr %i.bl, align 8, !tbaa !434
  %i.df = add i32 %.052, 1                        ; 2 uses
  %.not198 = icmp eq i32 %i.df, %i.bu
  br i1 %.not198, label %._crit_edge, label %.lr.ph.split, !llvm.loop !2570

bb.r:                                             ; preds = %bb.o
  %.sroa.095.0.copyload = load i16, ptr %8, align 8, !tbaa !189
  %.sroa.297.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !374
  %.sroa.087.0.copyload = load i16, ptr %9, align 8, !tbaa !189
  %.sroa.289.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !374
  %i.dg = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %6, ptr nonnull %.sroa.019.0.copyload, i32 %.sroa.6.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.087.0.copyload, ptr %.sroa.289.0.copyload) #35 ; 2 uses
  %.fca.0.extract83 = extractvalue { ptr, i32 } %i.dg, 0
  %.fca.1.extract84 = extractvalue { ptr, i32 } %i.dg, 1
  %i.dh = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSplatENS_3EVTERKNS_5SDLocENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %.sroa.095.0.copyload, ptr %.sroa.297.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr %.fca.0.extract83, i32 %.fca.1.extract84)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %.pn = phi { ptr, i32 } [ %i.cq, %._crit_edge ], [ %i.dh, %bb.r ] ; 2 uses
  %.sroa.03.0 = extractvalue { ptr, i32 } %.pn, 0
  %.sroa.16.0 = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.di, ptr %16, align 8, !tbaa !21
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  store i32 0, ptr %i.dj, align 8, !tbaa !434
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  store i32 32, ptr %i.dk, align 4, !tbaa !789
  %.not19953 = icmp eq i32 %i.bn, 0
  br i1 %.not19953, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.dm = icmp ult i32 %i.ao, 65
  br label %bb.t

._crit_edge57.loopexit:                           ; preds = %_ZN4llvm5APIntD2Ev.exit
  %.pre63 = load ptr, ptr %16, align 8, !tbaa !21
  %.pre64 = load i32, ptr %i.dj, align 8, !tbaa !434
  %i.dn = zext i32 %.pre64 to i64
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %._crit_edge57.loopexit, %bb.s
  %i.do = phi i64 [ %i.dn, %._crit_edge57.loopexit ], [ 0, %bb.s ]
  %i.dp = phi ptr [ %.pre63, %._crit_edge57.loopexit ], [ %i.di, %bb.s ]
  %.sroa.054.0.copyload = load i16, ptr %8, align 8, !tbaa !189
  %.sroa.256.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.dp, ptr %7, align 8, !tbaa !923
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.do, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !504
  %i.dq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.054.0.copyload, ptr %.sroa.256.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.463") align 8 %7) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.fca.0.extract50 = extractvalue { ptr, i32 } %i.dq, 0 ; 2 uses
  %.fca.1.extract51 = extractvalue { ptr, i32 } %i.dq, 1 ; 2 uses
  %.sroa.044.0.copyload = load i16, ptr %8, align 8, !tbaa !189
  %.sroa.246.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !374
  store ptr %.sroa.03.0, ptr %18, align 8, !tbaa !391
  %.sroa.16.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx7, align 8, !tbaa !310
  store ptr %.fca.0.extract50, ptr %19, align 8, !tbaa !391
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract51, ptr %.sroa.559.0..sroa_idx, align 8, !tbaa !310
  %i.dr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.044.0.copyload, ptr %.sroa.246.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #35 ; 2 uses
  %.fca.0.extract40 = extractvalue { ptr, i32 } %i.dr, 0
  %.fca.1.extract41 = extractvalue { ptr, i32 } %i.dr, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !883
  %i.du = call { i16, ptr } @_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, i16 2, ptr null, i32 noundef %i.bn, i1 noundef zeroext false) ; 2 uses
  %i.dv = extractvalue { i16, ptr } %i.du, 0
  %i.dw = extractvalue { i16, ptr } %i.du, 1
  store ptr %.fca.0.extract50, ptr %20, align 8, !tbaa !391
  %.sroa.559.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract51, ptr %.sroa.559.0..sroa_idx60, align 8, !tbaa !310
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.dx = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %6, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %i.dv, ptr %i.dw, ptr %.fca.0.extract40, i32 %.fca.1.extract41, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20, i32 noundef 17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21, i1 noundef zeroext false, i32 0) ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.dx, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.dx, 1
  %.sroa.018.0.copyload = load i16, ptr %8, align 8, !tbaa !189
  %.sroa.220.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !374
  %i.dy = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getSExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %6, ptr %.fca.0.extract24, i32 %.fca.1.extract25, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.018.0.copyload, ptr %.sroa.220.0.copyload) #35 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.dy, 0 ; 2 uses
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.dy, 1 ; 2 uses
  %i.dz = icmp eq i32 %0, 227
  br i1 %i.dz, label %bb.af, label %bb.ae

bb.t:                                             ; preds = %.lr.ph56, %_ZN4llvm5APIntD2Ev.exit
  %.019554 = phi i32 [ 0, %.lr.ph56 ], [ %i.fb, %_ZN4llvm5APIntD2Ev.exit ] ; 3 uses
  %i.ea = xor i32 %.019554, -1
  %i.eb = add i32 %i.bn, %i.ea
  %i.ec = select i1 %i.bs, i32 %i.eb, i32 %.019554
  %i.ed = urem i32 %i.ec, %i.ao                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  %i.ee = add nuw nsw i32 %i.ed, 1
  store i32 %i.ao, ptr %i.dl, align 8, !tbaa !375, !alias.scope !2573
  br i1 %i.dm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr %17, align 8, !tbaa !299, !alias.scope !2573
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

bb.v:                                             ; preds = %bb.t
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %17, i64 noundef 0, i1 noundef zeroext false) #35
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

_ZN4llvm5APIntC2Ejmbb.exit.i:                     ; preds = %bb.v, %bb.u
  %i.ef = icmp ult i32 %i.ed, 64
  br i1 %i.ef, label %bb.w, label %bb.z

bb.w:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.eg = zext nneg i32 %i.ed to i64
  %i.eh = shl nuw i64 1, %i.eg                    ; 2 uses
  %i.ei = load i32, ptr %i.dl, align 8, !tbaa !375, !alias.scope !2573
  %i.ej = icmp ult i32 %i.ei, 65
  br i1 %i.ej, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ek = load i64, ptr %17, align 8, !tbaa !299, !alias.scope !2573
  %i.el = or i64 %i.ek, %i.eh
  store i64 %i.el, ptr %17, align 8, !tbaa !299, !alias.scope !2573
  br label %_ZN4llvm5APInt10getBitsSetEjjj.exit

bb.y:                                             ; preds = %bb.w
  %i.em = load ptr, ptr %17, align 8, !tbaa !299, !alias.scope !2573 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !504
  %i.eo = or i64 %i.en, %i.eh
end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_AArch64ISelLowering.cpp:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @EnableSVEGISel, i64 128), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @EnableSVEGISel, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @EnableSVEGISel, i64 144), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @EnableSVEGISel, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @EnableSVEGISel, ptr nonnull align 1 dereferenceable(25) @.str.15, i64 24) #35
  %i.u = load i16, ptr getelementptr inbounds nuw (i8, ptr @EnableSVEGISel, i64 10), align 2
  %i.v = and i16 %i.u, -97
  %i.w = or disjoint i16 %i.v, 32
  store i16 %i.w, ptr getelementptr inbounds nuw (i8, ptr @EnableSVEGISel, i64 10), align 2
  store ptr @.str.16, ptr getelementptr inbounds nuw (i8, ptr @EnableSVEGISel, i64 32), align 8, !tbaa !1650
  store i64 52, ptr getelementptr inbounds nuw (i8, ptr @EnableSVEGISel, i64 40), align 8, !tbaa !504
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @EnableSVEGISel, i64 120), align 8, !tbaa !537
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @EnableSVEGISel, i64 137), align 1, !tbaa !2653
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @EnableSVEGISel, i64 136), align 8, !tbaa !2742
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @EnableSVEGISel) #35
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @EnableSVEGISel, ptr nonnull @__dso_handle) #35 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL23BrMergingBaseCostThresh, i32 noundef 0, i32 noundef 0) #35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 120), align 8, !tbaa !2246
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 128), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE, i64 16), ptr @_ZL23BrMergingBaseCostThresh, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 144), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL23BrMergingBaseCostThresh, ptr nonnull align 1 dereferenceable(29) @.str.18, i64 28) #35
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 120), align 8, !tbaa !2246
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 140), align 4, !tbaa !2655
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 136), align 8, !tbaa !2744
  store ptr @.str.19, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 32), align 8, !tbaa !1650
  store i64 232, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 40), align 8, !tbaa !504
  %i.y = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 10), align 2
  %i.z = and i16 %i.y, -97
  %i.aa = or disjoint i16 %i.z, 32
  store i16 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZL23BrMergingBaseCostThresh, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL23BrMergingBaseCostThresh) #35
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIiLb0ENS0_6parserIiEEED2Ev, ptr nonnull @_ZL23BrMergingBaseCostThresh, ptr nonnull @__dso_handle) #35 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL17BrMergingCcmpBias, i32 noundef 0, i32 noundef 0) #35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 120), align 8, !tbaa !2246
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 128), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE, i64 16), ptr @_ZL17BrMergingCcmpBias, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 144), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17BrMergingCcmpBias, ptr nonnull align 1 dereferenceable(29) @.str.21, i64 28) #35
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 120), align 8, !tbaa !2246
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 140), align 4, !tbaa !2655
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 136), align 8, !tbaa !2744
  store ptr @.str.22, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 32), align 8, !tbaa !1650
  store i64 159, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 40), align 8, !tbaa !504
  %i.ac = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 10), align 2
  %i.ad = and i16 %i.ac, -97
  %i.ae = or disjoint i16 %i.ad, 32
  store i16 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @_ZL17BrMergingCcmpBias, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17BrMergingCcmpBias) #35
  %i.af = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIiLb0ENS0_6parserIiEEED2Ev, ptr nonnull @_ZL17BrMergingCcmpBias, ptr nonnull @__dso_handle) #35 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL20BrMergingCbzTbnzBias, i32 noundef 0, i32 noundef 0) #35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20BrMergingCbzTbnzBias, i64 120), align 8, !tbaa !2246
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20BrMergingCbzTbnzBias, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20BrMergingCbzTbnzBias, i64 128), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE, i64 16), ptr @_ZL20BrMergingCbzTbnzBias, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20BrMergingCbzTbnzBias, i64 144), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL20BrMergingCbzTbnzBias, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL20BrMergingCbzTbnzBias, ptr nonnull align 1 dereferenceable(33) @.str.24, i64 32) #35
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @_ZL20BrMergingCbzTbnzBias, i64 120), align 8, !tbaa !2246
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL20BrMergingCbzTbnzBias, i64 140), align 4, !tbaa !2655
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @_ZL20BrMergingCbzTbnzBias, i64 136), align 8, !tbaa !2744
  store ptr @.str.25, ptr getelementptr inbounds nuw (i8, ptr @_ZL20BrMergingCbzTbnzBias, i64 32), align 8, !tbaa !1650
  store i64 167, ptr getelementptr inbounds nuw (i8, ptr @_ZL20BrMergingCbzTbnzBias, i64 40), align 8, !tbaa !504
  %i.ag = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL20BrMergingCbzTbnzBias, i64 10), align 2
  %i.ah = and i16 %i.ag, -97
  %i.ai = or disjoint i16 %i.ah, 32
  store i16 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @_ZL20BrMergingCbzTbnzBias, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL20BrMergingCbzTbnzBias) #35
  %i.aj = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIiLb0ENS0_6parserIiEEED2Ev, ptr nonnull @_ZL20BrMergingCbzTbnzBias, ptr nonnull @__dso_handle) #35 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL19BrMergingLikelyBias, i32 noundef 0, i32 noundef 0) #35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 120), align 8, !tbaa !2246
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 128), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE, i64 16), ptr @_ZL19BrMergingLikelyBias, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 144), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL19BrMergingLikelyBias, ptr nonnull align 1 dereferenceable(31) @.str.27, i64 30) #35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 120), align 8, !tbaa !2246
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 140), align 4, !tbaa !2655
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 136), align 8, !tbaa !2744
  store ptr @.str.28, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 32), align 8, !tbaa !1650
  store i64 155, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 40), align 8, !tbaa !504
  %i.ak = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 10), align 2
  %i.al = and i16 %i.ak, -97
  %i.am = or disjoint i16 %i.al, 32
  store i16 %i.am, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BrMergingLikelyBias, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL19BrMergingLikelyBias) #35
  %i.an = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIiLb0ENS0_6parserIiEEED2Ev, ptr nonnull @_ZL19BrMergingLikelyBias, ptr nonnull @__dso_handle) #35 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL21BrMergingUnlikelyBias, i32 noundef 0, i32 noundef 0) #35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 120), align 8, !tbaa !2246
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 128), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE, i64 16), ptr @_ZL21BrMergingUnlikelyBias, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIiEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 144), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21BrMergingUnlikelyBias, ptr nonnull align 1 dereferenceable(33) @.str.30, i64 32) #35
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 120), align 8, !tbaa !2246
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 140), align 4, !tbaa !2655
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 136), align 8, !tbaa !2744
  store ptr @.str.31, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 32), align 8, !tbaa !1650
  store i64 161, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 40), align 8, !tbaa !504
  %i.ao = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 10), align 2
  %i.ap = and i16 %i.ao, -97
  %i.aq = or disjoint i16 %i.ap, 32
  store i16 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZL21BrMergingUnlikelyBias, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21BrMergingUnlikelyBias) #35
  %i.ar = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIiLb0ENS0_6parserIiEEED2Ev, ptr nonnull @_ZL21BrMergingUnlikelyBias, ptr nonnull @__dso_handle) #35 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL17UseFEATCPACodegen, i32 noundef 0, i32 noundef 0) #35
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17UseFEATCPACodegen, i64 120), align 8, !tbaa !537
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17UseFEATCPACodegen, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL17UseFEATCPACodegen, i64 128), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL17UseFEATCPACodegen, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL17UseFEATCPACodegen, i64 144), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL17UseFEATCPACodegen, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17UseFEATCPACodegen, ptr nonnull align 1 dereferenceable(28) @.str.33, i64 27) #35
  %i.as = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL17UseFEATCPACodegen, i64 10), align 2
  %i.at = and i16 %i.as, -97
  %i.au = or disjoint i16 %i.at, 32
  store i16 %i.au, ptr getelementptr inbounds nuw (i8, ptr @_ZL17UseFEATCPACodegen, i64 10), align 2
  store ptr @.str.34, ptr getelementptr inbounds nuw (i8, ptr @_ZL17UseFEATCPACodegen, i64 32), align 8, !tbaa !1650
  store i64 78, ptr getelementptr inbounds nuw (i8, ptr @_ZL17UseFEATCPACodegen, i64 40), align 8, !tbaa !504
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17UseFEATCPACodegen, i64 120), align 8, !tbaa !537
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL17UseFEATCPACodegen, i64 137), align 1, !tbaa !2653
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17UseFEATCPACodegen, i64 136), align 8, !tbaa !2742
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL17UseFEATCPACodegen) #35
  %i.av = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL17UseFEATCPACodegen, ptr nonnull @__dso_handle) #35 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL23UseConditionalFPMRWrite, i32 noundef 0, i32 noundef 0) #35
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UseConditionalFPMRWrite, i64 120), align 8, !tbaa !537
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UseConditionalFPMRWrite, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23UseConditionalFPMRWrite, i64 128), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL23UseConditionalFPMRWrite, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23UseConditionalFPMRWrite, i64 144), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL23UseConditionalFPMRWrite, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL23UseConditionalFPMRWrite, ptr nonnull align 1 dereferenceable(35) @.str.36, i64 34) #35
  %i.aw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UseConditionalFPMRWrite, i64 10), align 2
  %i.ax = and i16 %i.aw, -97
  %i.ay = or disjoint i16 %i.ax, 32
  store i16 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UseConditionalFPMRWrite, i64 10), align 2
  store ptr @.str.37, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UseConditionalFPMRWrite, i64 32), align 8, !tbaa !1650
  store i64 71, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UseConditionalFPMRWrite, i64 40), align 8, !tbaa !504
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UseConditionalFPMRWrite, i64 120), align 8, !tbaa !537
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UseConditionalFPMRWrite, i64 137), align 1, !tbaa !2653
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL23UseConditionalFPMRWrite, i64 136), align 8, !tbaa !2742
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL23UseConditionalFPMRWrite) #35
  %i.az = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL23UseConditionalFPMRWrite, ptr nonnull @__dso_handle) #35 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #26

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { nounwind }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { builtin nounwind }
attributes #39 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 16}
!11 = !{!"_ZTSSt14_Function_base", !6, i64 0, !12, i64 16}
!12 = !{!"any pointer", !6, i64 0}
!13 = distinct !{null}
!14 = !{!15, !17, i64 16}
!15 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !16, i64 0, !5, i64 8, !5, i64 12, !17, i64 16}
!16 = !{!"any p2 pointer", !12, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!15, !16, i64 0}
!21 = !{!22, !12, i64 0}
!22 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !5, i64 8, !5, i64 12}
!23 = !{!24, !54, i64 518440}
!24 = !{!"_ZTSN4llvm21AArch64TargetLoweringE", !25, i64 0, !54, i64 518440}
!25 = !{!"_ZTSN4llvm14TargetLoweringE", !26, i64 0}
!26 = !{!"_ZTSN4llvm18TargetLoweringBaseE", !27, i64 8, !17, i64 16, !28, i64 24, !17, i64 48, !31, i64 52, !31, i64 56, !31, i64 60, !32, i64 64, !33, i64 65, !33, i64 66, !33, i64 67, !33, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !17, i64 100, !34, i64 104, !6, i64 112, !6, i64 2224, !6, i64 2752, !6, i64 3280, !6, i64 5392, !6, i64 5656, !6, i64 6184, !6, i64 147952, !6, i64 287344, !6, i64 426736, !6, i64 496432, !6, i64 499072, !35, i64 502240, !37, i64 502264, !6, i64 502528, !38, i64 502600, !48, i64 502648, !52, i64 515056, !5, i64 518392, !5, i64 518396, !5, i64 518400, !5, i64 518404, !5, i64 518408, !5, i64 518412, !5, i64 518416, !5, i64 518420, !5, i64 518424, !5, i64 518428, !17, i64 518432, !17, i64 518433, !17, i64 518434}
!27 = !{!"p1 _ZTSN4llvm13TargetMachineE", !12, i64 0}
!28 = !{!"_ZTSN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEE", !29, i64 0, !30, i64 8, !5, i64 16, !5, i64 20}
!29 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjjEE", !12, i64 0}
!30 = !{!"p1 int", !12, i64 0}
!31 = !{!"_ZTSN4llvm18TargetLoweringBase14BooleanContentE", !6, i64 0}
!32 = !{!"_ZTSN4llvm5Sched10PreferenceE", !6, i64 0}
!33 = !{!"_ZTSN4llvm5AlignE", !6, i64 0}
!34 = !{!"_ZTSN4llvm8RegisterE", !5, i64 0}
!35 = !{!"_ZTSN4llvm8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES3_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEE", !36, i64 0, !30, i64 8, !5, i64 16, !5, i64 20}
!36 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionEEE", !12, i64 0}
!37 = !{!"_ZTSN4llvm18TargetLoweringBase19ValueTypeActionImplE", !6, i64 0}
!38 = !{!"_ZTSSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE", !39, i64 0}
!39 = !{!"_ZTSSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE", !40, i64 0}
!40 = !{!"_ZTSNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !41, i64 0, !43, i64 8}
!41 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEE", !42, i64 0}
!42 = !{!"_ZTSSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEE"}
!43 = !{!"_ZTSSt15_Rb_tree_header", !44, i64 0, !47, i64 32}
!44 = !{!"_ZTSSt18_Rb_tree_node_base", !45, i64 0, !46, i64 8, !46, i64 16, !46, i64 24}
!45 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!46 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!47 = !{!"long", !6, i64 0}
!48 = !{!"_ZTSN4llvm5RTLIB19RuntimeLibcallsInfoE", !49, i64 0, !6, i64 376}
!49 = !{!"_ZTSN4llvm5RTLIB17LibcallImplBitsetE", !50, i64 0}
!50 = !{!"_ZTSN4llvm6BitsetILj3008EEE", !51, i64 0}
!51 = !{!"_ZTSSt5arrayImLm47EE", !6, i64 0}
!52 = !{!"_ZTSN4llvm19LibcallLoweringInfoE", !53, i64 0, !6, i64 8}
!53 = !{!"p1 _ZTSN4llvm5RTLIB19RuntimeLibcallsInfoE", !12, i64 0}
!54 = !{!"p1 _ZTSN4llvm16AArch64SubtargetE", !12, i64 0}
!55 = !{!26, !31, i64 52}
!56 = !{!26, !31, i64 56}
!57 = !{!26, !31, i64 60}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 _ZTSN4llvm15MCRegisterClassE", !12, i64 0}
!60 = !{!61, !17, i64 442}
!61 = !{!"_ZTSN4llvm16AArch64SubtargetE", !62, i64 0, !90, i64 344, !5, i64 348, !17, i64 352, !17, i64 353, !17, i64 354, !17, i64 355, !17, i64 356, !17, i64 357, !17, i64 358, !17, i64 359, !17, i64 360, !17, i64 361, !17, i64 362, !17, i64 363, !17, i64 364, !17, i64 365, !17, i64 366, !17, i64 367, !17, i64 368, !17, i64 369, !17, i64 370, !17, i64 371, !17, i64 372, !17, i64 373, !17, i64 374, !17, i64 375, !17, i64 376, !17, i64 377, !17, i64 378, !17, i64 379, !17, i64 380, !17, i64 381, !17, i64 382, !17, i64 383, !17, i64 384, !17, i64 385, !17, i64 386, !17, i64 387, !17, i64 388, !17, i64 389, !17, i64 390, !17, i64 391, !17, i64 392, !17, i64 393, !17, i64 394, !17, i64 395, !17, i64 396, !17, i64 397, !17, i64 398, !17, i64 399, !17, i64 400, !17, i64 401, !17, i64 402, !17, i64 403, !17, i64 404, !17, i64 405, !17, i64 406, !17, i64 407, !17, i64 408, !17, i64 409, !17, i64 410, !17, i64 411, !17, i64 412, !17, i64 413, !17, i64 414, !17, i64 415, !17, i64 416, !17, i64 417, !17, i64 418, !17, i64 419, !17, i64 420, !17, i64 421, !17, i64 422, !17, i64 423, !17, i64 424, !17, i64 425, !17, i64 426, !17, i64 427, !17, i64 428, !17, i64 429, !17, i64 430, !17, i64 431, !17, i64 432, !17, i64 433, !17, i64 434, !17, i64 435, !17, i64 436, !17, i64 437, !17, i64 438, !17, i64 439, !17, i64 440, !17, i64 441, !17, i64 442, !17, i64 443, !17, i64 444, !17, i64 445, !17, i64 446, !17, i64 447, !17, i64 448, !17, i64 449, !17, i64 450, !17, i64 451, !17, i64 452, !17, i64 453, !17, i64 454, !17, i64 455, !17, i64 456, !17, i64 457, !17, i64 458, !17, i64 459, !17, i64 460, !17, i64 461, !17, i64 462, !17, i64 463, !17, i64 464, !17, i64 465, !17, i64 466, !17, i64 467, !17, i64 468, !17, i64 469, !17, i64 470, !17, i64 471, !17, i64 472, !17, i64 473, !17, i64 474, !17, i64 475, !17, i64 476, !17, i64 477, !17, i64 478, !17, i64 479, !17, i64 480, !17, i64 481, !17, i64 482, !17, i64 483, !17, i64 484, !17, i64 485, !17, i64 486, !17, i64 487, !17, i64 488, !17, i64 489, !17, i64 490, !17, i64 491, !17, i64 492, !17, i64 493, !17, i64 494, !17, i64 495, !17, i64 496, !17, i64 497, !17, i64 498, !17, i64 499, !17, i64 500, !17, i64 501, !17, i64 502, !17, i64 503, !17, i64 504, !17, i64 505, !17, i64 506, !17, i64 507, !17, i64 508, !17, i64 509, !17, i64 510, !17, i64 511, !17, i64 512, !17, i64 513, !17, i64 514, !17, i64 515, !17, i64 516, !17, i64 517, !17, i64 518, !17, i64 519, !17, i64 520, !17, i64 521, !17, i64 522, !17, i64 523, !17, i64 524, !17, i64 525, !17, i64 526, !17, i64 527, !17, i64 528, !17, i64 529, !17, i64 530, !17, i64 531, !17, i64 532, !17, i64 533, !17, i64 534, !17, i64 535, !17, i64 536, !17, i64 537, !17, i64 538, !17, i64 539, !17, i64 540, !17, i64 541, !17, i64 542, !17, i64 543, !17, i64 544, !17, i64 545, !17, i64 546, !17, i64 547, !17, i64 548, !17, i64 549, !17, i64 550, !17, i64 551, !17, i64 552, !17, i64 553, !17, i64 554, !17, i64 555, !17, i64 556, !17, i64 557, !17, i64 558, !17, i64 559, !17, i64 560, !17, i64 561, !17, i64 562, !17, i64 563, !17, i64 564, !17, i64 565, !17, i64 566, !17, i64 567, !17, i64 568, !17, i64 569, !17, i64 570, !17, i64 571, !17, i64 572, !17, i64 573, !17, i64 574, !17, i64 575, !17, i64 576, !17, i64 577, !17, i64 578, !17, i64 579, !17, i64 580, !17, i64 581, !17, i64 582, !17, i64 583, !17, i64 584, !17, i64 585, !17, i64 586, !17, i64 587, !17, i64 588, !17, i64 589, !17, i64 590, !17, i64 591, !17, i64 592, !17, i64 593, !17, i64 594, !17, i64 595, !17, i64 596, !17, i64 597, !5, i64 600, !6, i64 604, !6, i64 605, !91, i64 606, !5, i64 608, !5, i64 612, !91, i64 616, !91, i64 618, !5, i64 620, !33, i64 624, !33, i64 625, !5, i64 628, !5, i64 632, !5, i64 636, !5, i64 640, !92, i64 648, !92, i64 720, !92, i64 792, !17, i64 864, !17, i64 865, !17, i64 866, !98, i64 868, !5, i64 876, !5, i64 880, !17, i64 884, !5, i64 888, !102, i64 892, !17, i64 893, !65, i64 896, !103, i64 952, !106, i64 976, !141, i64 1424, !24, i64 1440, !145, i64 519888, !152, i64 519896, !159, i64 519904, !166, i64 519912, !173, i64 519920}
!62 = !{!"_ZTSN4llvm23AArch64GenSubtargetInfoE", !63, i64 0}
!63 = !{!"_ZTSN4llvm19TargetSubtargetInfoE", !64, i64 0, !88, i64 320}
!64 = !{!"_ZTSN4llvm15MCSubtargetInfoE", !65, i64 8, !66, i64 64, !66, i64 96, !75, i64 128, !77, i64 144, !79, i64 160, !81, i64 176, !82, i64 184, !83, i64 192, !84, i64 200, !81, i64 208, !85, i64 216, !30, i64 224, !30, i64 232, !86, i64 240, !66, i64 288}
!65 = !{!"_ZTSN4llvm6TripleE", !66, i64 0, !69, i64 32, !70, i64 36, !71, i64 40, !72, i64 44, !73, i64 48, !74, i64 52}
!66 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !67, i64 0, !47, i64 8, !6, i64 16}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !68, i64 0}
!68 = !{!"p1 omnipotent char", !12, i64 0}
!69 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !6, i64 0}
!70 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !6, i64 0}
!71 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !6, i64 0}
!72 = !{!"_ZTSN4llvm6Triple6OSTypeE", !6, i64 0}
!73 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !6, i64 0}
!74 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !6, i64 0}
!75 = !{!"_ZTSN4llvm11StringTableE", !76, i64 0}
!76 = !{!"_ZTSN4llvm9StringRefE", !68, i64 0, !47, i64 8}
!77 = !{!"_ZTSN4llvm8ArrayRefINS_18SubtargetFeatureKVEEE", !78, i64 0, !47, i64 8}
!78 = !{!"p1 _ZTSN4llvm18SubtargetFeatureKVE", !12, i64 0}
!79 = !{!"_ZTSN4llvm8ArrayRefINS_18SubtargetSubTypeKVEEE", !80, i64 0, !47, i64 8}
!80 = !{!"p1 _ZTSN4llvm18SubtargetSubTypeKVE", !12, i64 0}
!81 = !{!"p1 _ZTSN4llvm12MCSchedModelE", !12, i64 0}
!82 = !{!"p1 _ZTSN4llvm19MCWriteProcResEntryE", !12, i64 0}
!83 = !{!"p1 _ZTSN4llvm19MCWriteLatencyEntryE", !12, i64 0}
!84 = !{!"p1 _ZTSN4llvm18MCReadAdvanceEntryE", !12, i64 0}
!85 = !{!"p1 _ZTSN4llvm10InstrStageE", !12, i64 0}
!86 = !{!"_ZTSN4llvm13FeatureBitsetE", !87, i64 0}
!87 = !{!"_ZTSSt5arrayImLm6EE", !6, i64 0}
!88 = !{!"_ZTSN4llvm8DenseMapIjbNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjbEEEE", !89, i64 0, !30, i64 8, !5, i64 16, !5, i64 20}
!89 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjbEE", !12, i64 0}
!90 = !{!"_ZTSN4llvm16AArch64Subtarget17ARMProcFamilyEnumE", !6, i64 0}
!91 = !{!"short", !6, i64 0}
!92 = !{!"_ZTSN4llvm9BitVectorE", !93, i64 0, !5, i64 64}
!93 = !{!"_ZTSN4llvm11SmallVectorImLj6EEE", !94, i64 0, !97, i64 16}
!94 = !{!"_ZTSN4llvm15SmallVectorImplImEE", !95, i64 0}
!95 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseImLb1EEE", !96, i64 0}
!96 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonImvEE", !22, i64 0}
!97 = !{!"_ZTSN4llvm18SmallVectorStorageImLj6EEE", !6, i64 0}
!98 = !{!"_ZTSSt8optionalIjE", !99, i64 0}
!99 = !{!"_ZTSSt14_Optional_baseIjLb1ELb1EE", !100, i64 0}
!100 = !{!"_ZTSSt17_Optional_payloadIjLb1ELb1ELb1EE", !101, i64 0}
!101 = !{!"_ZTSSt22_Optional_payload_baseIjE", !6, i64 0, !17, i64 4}
!102 = !{!"_ZTSN4llvm15TailFoldingOptsE", !6, i64 0}
!103 = !{!"_ZTSN4llvm20AArch64FrameLoweringE", !104, i64 0}
!104 = !{!"_ZTSN4llvm19TargetFrameLoweringE", !105, i64 8, !33, i64 12, !33, i64 13, !5, i64 16, !17, i64 20}
!105 = !{!"_ZTSN4llvm19TargetFrameLowering14StackDirectionE", !6, i64 0}
!106 = !{!"_ZTSN4llvm16AArch64InstrInfoE", !107, i64 0, !120, i64 112, !54, i64 440}
!107 = !{!"_ZTSN4llvm19AArch64GenInstrInfoE", !108, i64 0}
!108 = !{!"_ZTSN4llvm15TargetInstrInfoE", !109, i64 8, !112, i64 72, !111, i64 80, !113, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108}
!109 = !{!"_ZTSN4llvm11MCInstrInfoE", !110, i64 0, !30, i64 8, !68, i64 16, !68, i64 24, !12, i64 32, !5, i64 40, !111, i64 48, !91, i64 56}
!110 = !{!"p1 _ZTSN4llvm11MCInstrDescE", !12, i64 0}
!111 = !{!"p1 short", !12, i64 0}
!112 = !{!"p1 _ZTSN4llvm18TargetRegisterInfoE", !12, i64 0}
!113 = !{!"_ZTSSt10unique_ptrIN4llvm12MIRFormatterESt14default_deleteIS1_EE", !114, i64 0}
!114 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm12MIRFormatterESt14default_deleteIS1_ELb1ELb1EE", !115, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm12MIRFormatterESt14default_deleteIS1_EE", !116, i64 0}
!116 = !{!"_ZTSSt5tupleIJPN4llvm12MIRFormatterESt14default_deleteIS1_EEE", !117, i64 0}
!117 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm12MIRFormatterESt14default_deleteIS1_EEE", !118, i64 0}
!118 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm12MIRFormatterELb0EE", !119, i64 0}
!119 = !{!"p1 _ZTSN4llvm12MIRFormatterE", !12, i64 0}
!120 = !{!"_ZTSN4llvm19AArch64RegisterInfoE", !121, i64 0, !140, i64 320}
!121 = !{!"_ZTSN4llvm22AArch64GenRegisterInfoE", !122, i64 0}
!122 = !{!"_ZTSN4llvm18TargetRegisterInfoE", !123, i64 0, !135, i64 240, !68, i64 248, !136, i64 256, !137, i64 272, !126, i64 280, !138, i64 288, !139, i64 296, !12, i64 304, !5, i64 312}
!123 = !{!"_ZTSN4llvm14MCRegisterInfoE", !124, i64 8, !5, i64 16, !125, i64 20, !125, i64 24, !59, i64 32, !5, i64 40, !5, i64 44, !111, i64 48, !111, i64 56, !126, i64 64, !68, i64 72, !68, i64 80, !111, i64 88, !5, i64 96, !111, i64 104, !30, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !127, i64 136, !127, i64 144, !127, i64 152, !127, i64 160, !128, i64 168, !128, i64 192, !130, i64 216}
!124 = !{!"p1 _ZTSN4llvm14MCRegisterDescE", !12, i64 0}
!125 = !{!"_ZTSN4llvm10MCRegisterE", !5, i64 0}
!126 = !{!"p1 _ZTSN4llvm11LaneBitmaskE", !12, i64 0}
!127 = !{!"p1 _ZTSN4llvm14MCRegisterInfo16DwarfLLVMRegPairE", !12, i64 0}
!128 = !{!"_ZTSN4llvm8DenseMapINS_10MCRegisterEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEEEE", !129, i64 0, !30, i64 8, !5, i64 16, !5, i64 20}
!129 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10MCRegisterEiEE", !12, i64 0}
!130 = !{!"_ZTSSt6vectorIS_ItSaItEESaIS1_EE", !131, i64 0}
!131 = !{!"_ZTSSt12_Vector_baseISt6vectorItSaItEESaIS2_EE", !132, i64 0}
!132 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE12_Vector_implE", !133, i64 0}
!133 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!134 = !{!"p1 _ZTSSt6vectorItSaItEE", !12, i64 0}
!135 = !{!"p1 _ZTSN4llvm22TargetRegisterInfoDescE", !12, i64 0}
!136 = !{!"_ZTSN4llvm8ArrayRefIjEE", !30, i64 0, !47, i64 8}
!137 = !{!"p1 _ZTSN4llvm18TargetRegisterInfo17SubRegCoveredBitsE", !12, i64 0}
!138 = !{!"_ZTSN4llvm11LaneBitmaskE", !47, i64 0}
!139 = !{!"p1 _ZTSN4llvm18TargetRegisterInfo12RegClassInfoE", !12, i64 0}
!140 = !{!"p1 _ZTSN4llvm6TripleE", !12, i64 0}
!141 = !{!"_ZTSN4llvm23AArch64SelectionDAGInfoE", !142, i64 0}
!142 = !{!"_ZTSN4llvm25SelectionDAGGenTargetInfoE", !143, i64 0, !144, i64 8}
!143 = !{!"_ZTSN4llvm22SelectionDAGTargetInfoE"}
!144 = !{!"p1 _ZTSN4llvm10SDNodeInfoE", !12, i64 0}
!145 = !{!"_ZTSSt10unique_ptrIN4llvm12CallLoweringESt14default_deleteIS1_EE", !146, i64 0}
!146 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm12CallLoweringESt14default_deleteIS1_ELb1ELb1EE", !147, i64 0}
!147 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm12CallLoweringESt14default_deleteIS1_EE", !148, i64 0}
!148 = !{!"_ZTSSt5tupleIJPN4llvm12CallLoweringESt14default_deleteIS1_EEE", !149, i64 0}
!149 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm12CallLoweringESt14default_deleteIS1_EEE", !150, i64 0}
!150 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm12CallLoweringELb0EE", !151, i64 0}
!151 = !{!"p1 _ZTSN4llvm12CallLoweringE", !12, i64 0}
!152 = !{!"_ZTSSt10unique_ptrIN4llvm17InlineAsmLoweringESt14default_deleteIS1_EE", !153, i64 0}
!153 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm17InlineAsmLoweringESt14default_deleteIS1_ELb1ELb1EE", !154, i64 0}
!154 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm17InlineAsmLoweringESt14default_deleteIS1_EE", !155, i64 0}
end_hunk_2
