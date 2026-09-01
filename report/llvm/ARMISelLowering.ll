Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelLowering?download=true
inline.NumInlined: 20230
inline.NumDeleted: 4242
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 151
begin_hunk_0_@_ZNK4llvm17ARMTargetLowering11LowerDivRemENS_7SDValueERNS_12SelectionDAGE:bb.a
    i16 8, label %bb.o
  ]

bb.k:                                             ; preds = %.critedge
  unreachable

bb.l:                                             ; preds = %.critedge
  %i.bq = select i1 %spec.select.i, i64 1233, i64 1553
  br label %_ZL16getDivRemLibcallPKN4llvm6SDNodeENS_3MVT15SimpleValueTypeE.exit

bb.m:                                             ; preds = %.critedge
  %i.br = select i1 %spec.select.i, i64 1234, i64 1554
  br label %_ZL16getDivRemLibcallPKN4llvm6SDNodeENS_3MVT15SimpleValueTypeE.exit

bb.n:                                             ; preds = %.critedge
  %i.bs = select i1 %spec.select.i, i64 1235, i64 1555
  br label %_ZL16getDivRemLibcallPKN4llvm6SDNodeENS_3MVT15SimpleValueTypeE.exit

bb.o:                                             ; preds = %.critedge
  %i.bt = select i1 %spec.select.i, i64 1236, i64 1556
  br label %_ZL16getDivRemLibcallPKN4llvm6SDNodeENS_3MVT15SimpleValueTypeE.exit

_ZL16getDivRemLibcallPKN4llvm6SDNodeENS_3MVT15SimpleValueTypeE.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.bq, %bb.l ], [ %i.br, %bb.m ], [ %i.bs, %bb.n ], [ %i.bt, %bb.o ]
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1100
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %.0.i
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !1000 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  %i.ca = load ptr, ptr %i.an, align 8, !tbaa !451
  call fastcc void @_ZL16getDivRemArgListPKN4llvm6SDNodeEPNS_11LLVMContextEPKNS_12ARMSubtargetE(ptr dead_on_unwind noalias writable align 8 %18, ptr noundef nonnull %1, ptr noundef %i.ca, ptr noundef nonnull %i.ar)
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !374
  %i.cd = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.cc) #38
  %i.ce = load ptr, ptr %0, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call i16 %i.cg(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.cd, i32 noundef 0) #38
  %i.ci = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getExternalSymbolENS_5RTLIB11LibcallImplENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 noundef zeroext %i.by, i16 %i.ch, ptr null) #38 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.ci, 0
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.ci, 1
  %i.cj = load ptr, ptr %i.ap, align 8, !tbaa !1154, !nonnull !19, !align !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !341
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ap, ptr %i.ck, align 8, !tbaa !341
  %i.cl = call noundef ptr @_ZN4llvm10StructType3getERNS_11LLVMContextENS_8ArrayRefIPNS_4TypeEEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr nonnull %i.a, i64 2, i1 noundef zeroext false) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !31, !nonnull !19, !align !60
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 972
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !182
  %i.cq = icmp eq i32 %i.cp, 15
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZL16getDivRemLibcallPKN4llvm6SDNodeENS_3MVT15SimpleValueTypeE.exit
  %i.cr = call fastcc { ptr, i32 } @_ZL22WinDBZCheckDenominatorRN4llvm12SelectionDAGEPNS_6SDNodeENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull %1, ptr nonnull %i.bz, i32 0) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cr, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cr, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZL16getDivRemLibcallPKN4llvm6SDNodeENS_3MVT15SimpleValueTypeE.exit
  %.sroa.021.0 = phi ptr [ %.fca.0.extract, %bb.p ], [ %i.bz, %_ZL16getDivRemLibcallPKN4llvm6SDNodeENS_3MVT15SimpleValueTypeE.exit ]
  %.sroa.622.0 = phi i32 [ %.fca.1.extract, %bb.p ], [ 0, %_ZL16getDivRemLibcallPKN4llvm6SDNodeENS_3MVT15SimpleValueTypeE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  %i.cs = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false)
  %i.cv = load i16, ptr %i.cu, align 8
  %i.cw = and i16 %i.cv, -1024
  %i.cx = or disjoint i16 %i.cw, 32
  store i16 %i.cx, ptr %i.cu, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %19, i64 34
  store i8 0, ptr %i.cy, align 2, !tbaa !873
  %i.cz = getelementptr inbounds nuw i8, ptr %19, i64 35
  store i8 0, ptr %i.cz, align 1, !tbaa !874
  %i.da = getelementptr inbounds nuw i8, ptr %19, i64 36 ; 2 uses
  store i32 -1, ptr %i.da, align 4, !tbaa !875
  %i.db = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  store i32 0, ptr %i.db, align 8, !tbaa !635
  %i.dc = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  store ptr null, ptr %i.dc, align 8, !tbaa !601
  %i.dd = getelementptr inbounds nuw i8, ptr %19, i64 56 ; 2 uses
  store i32 0, ptr %i.dd, align 8, !tbaa !773
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, i8 0, i64 24, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 88
  store ptr %3, ptr %i.df, align 8, !tbaa !876
  %i.dg = getelementptr inbounds nuw i8, ptr %19, i64 96
  %i.dh = getelementptr inbounds nuw i8, ptr %19, i64 112
  store ptr null, ptr %i.dh, align 8, !tbaa !636
  %i.di = getelementptr inbounds nuw i8, ptr %19, i64 120 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %19, i64 136 ; 2 uses
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !21
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 128
  store i32 0, ptr %i.dk, align 8, !tbaa !372
  %i.dl = getelementptr inbounds nuw i8, ptr %19, i64 132
  store i32 32, ptr %i.dl, align 4, !tbaa !373
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 1928 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 1944 ; 2 uses
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %19, i64 1936
  store i32 0, ptr %i.do, align 8, !tbaa !372
  %i.dp = getelementptr inbounds nuw i8, ptr %19, i64 1940
  store i32 32, ptr %i.dp, align 4, !tbaa !373
  %i.dq = getelementptr inbounds nuw i8, ptr %19, i64 2456 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %19, i64 2472 ; 2 uses
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !21
  %i.ds = getelementptr inbounds nuw i8, ptr %19, i64 2464
  store i32 0, ptr %i.ds, align 8, !tbaa !372
  %i.dt = getelementptr inbounds nuw i8, ptr %19, i64 2468
  store i32 32, ptr %i.dt, align 4, !tbaa !373
  %i.du = getelementptr inbounds nuw i8, ptr %19, i64 4520 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 4536 ; 2 uses
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !21
  %i.dw = getelementptr inbounds nuw i8, ptr %19, i64 4528
  store i32 0, ptr %i.dw, align 8, !tbaa !372
  %i.dx = getelementptr inbounds nuw i8, ptr %19, i64 4532
  store i32 4, ptr %i.dx, align 4, !tbaa !373
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 4600
  %i.dz = getelementptr inbounds nuw i8, ptr %19, i64 4624
  store ptr null, ptr %i.dz, align 8, !tbaa !877
  %i.ea = getelementptr inbounds nuw i8, ptr %19, i64 4656
  store i8 0, ptr %i.ea, align 8, !tbaa !878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dy, i8 0, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dg, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !879
  store ptr %.sroa.021.0, ptr %19, align 8, !tbaa !370
  store i32 %.sroa.622.0, ptr %i.cs, align 8, !tbaa !303
  %i.eb = load ptr, ptr %i.bu, align 8, !tbaa !1100
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1105, !nonnull !19, !align !60
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 376
  %i.ee = zext i16 %i.by to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr null, ptr %4, align 8
  store ptr %i.cl, ptr %i.ct, align 8, !tbaa !880
  %i.eh = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %i.cl, ptr %i.eh, align 8, !tbaa !881
  %i.ei = call noundef zeroext i1 @_ZNK4llvm12AttributeSet12hasAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 16) #38
  %i.ej = load i16, ptr %i.cu, align 8
  %i.ek = select i1 %i.ei, i16 8, i16 0
  %i.el = and i16 %i.ej, -9
  %i.em = or disjoint i16 %i.el, %i.ek
  store i16 %i.em, ptr %i.cu, align 8
  %i.en = call noundef zeroext i1 @_ZNK4llvm12AttributeSet12hasAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 58) #38
  %i.eo = zext i1 %i.en to i16
  %i.ep = load i16, ptr %i.cu, align 8
  %i.eq = and i16 %i.ep, -2
  %i.er = or disjoint i16 %i.eq, %i.eo
  store i16 %i.er, ptr %i.cu, align 8
  %i.es = call noundef zeroext i1 @_ZNK4llvm12AttributeSet12hasAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 84) #38
  %i.et = load i16, ptr %i.cu, align 8
  %i.eu = select i1 %i.es, i16 2, i16 0
  %i.ev = and i16 %i.et, -3
  %i.ew = or disjoint i16 %i.ev, %i.eu
  store i16 %i.ew, ptr %i.cu, align 8
  %i.ex = call noundef zeroext i1 @_ZNK4llvm12AttributeSet12hasAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 35) #38
  %i.ey = load i16, ptr %i.cu, align 8
  %i.ez = select i1 %i.ex, i16 512, i16 0
  %i.fa = and i16 %i.ey, -513
  %i.fb = or disjoint i16 %i.fa, %i.ez            ; 2 uses
  store i16 %i.fb, ptr %i.cu, align 8
  store ptr %.fca.0.extract10, ptr %i.dc, align 8, !tbaa !370
  store i32 %.fca.1.extract11, ptr %i.dd, align 8, !tbaa !303
  store i32 %i.eg, ptr %i.db, align 8, !tbaa !635
  %i.fc = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.fd = load ptr, ptr %18, align 8, !tbaa !882  ; 2 uses
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = load ptr, ptr %i.de, align 8, !tbaa !882 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.fh = getelementptr inbounds nuw i8, ptr %19, i64 80 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !883
  store ptr %i.fd, ptr %i.de, align 8, !tbaa !882
  %i.fj = load <2 x ptr>, ptr %i.fc, align 8, !tbaa !1132
  %i.fk = load ptr, ptr %i.fc, align 8, !tbaa !884
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = sub i64 %i.fl, %i.fe
  %i.fn = sdiv exact i64 %i.fm, 56
  %i.fo = trunc i64 %i.fn to i32
  store i32 %i.fo, ptr %i.da, align 4, !tbaa !875
  store <2 x ptr> %i.fj, ptr %i.fg, align 8, !tbaa !1132
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm14TargetLowering16CallLoweringInfo9setCalleeEjPNS_4TypeENS_7SDValueEOSt6vectorINS_18TargetLoweringBase12ArgListEntryESaIS7_EENS_12AttributeSetE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fp = ptrtoint ptr %i.fi to i64
  %i.fq = ptrtoint ptr %i.ff to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fr) #41
  %.pre = load i16, ptr %i.cu, align 8
  br label %_ZN4llvm14TargetLowering16CallLoweringInfo9setCalleeEjPNS_4TypeENS_7SDValueEOSt6vectorINS_18TargetLoweringBase12ArgListEntryESaIS7_EENS_12AttributeSetE.exit

_ZN4llvm14TargetLowering16CallLoweringInfo9setCalleeEjPNS_4TypeENS_7SDValueEOSt6vectorINS_18TargetLoweringBase12ArgListEntryESaIS7_EENS_12AttributeSetE.exit: ; preds = %bb.q, %bb.r
  %i.fs = phi i16 [ %i.fb, %bb.q ], [ %.pre, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ft = and i16 %i.fs, -12
  %i.fu = select i1 %i.d, i16 1, i16 2
  %21 = or disjoint i16 %i.fu, %i.ft
  %i.fv = or disjoint i16 %21, 8
  store i16 %i.fv, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @_ZNK4llvm14TargetLowering11LowerCallToERNS0_16CallLoweringInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.633") align 8 %20, ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(4664) %19) #38
  %.sroa.0132.0.copyload = load ptr, ptr %20, align 8, !tbaa !370
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.sroa.4133.0.copyload = load i32, ptr %.sroa.4133.0..sroa_idx, align 8, !tbaa !303
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  %i.fw = load ptr, ptr %i.du, align 8, !tbaa !21 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.dv
  br i1 %i.fx, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm14TargetLowering16CallLoweringInfo9setCalleeEjPNS_4TypeENS_7SDValueEOSt6vectorINS_18TargetLoweringBase12ArgListEntryESaIS7_EENS_12AttributeSetE.exit
  call void @free(ptr noundef %i.fw) #38
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i: ; preds = %bb.s, %_ZN4llvm14TargetLowering16CallLoweringInfo9setCalleeEjPNS_4TypeENS_7SDValueEOSt6vectorINS_18TargetLoweringBase12ArgListEntryESaIS7_EENS_12AttributeSetE.exit
  %i.fy = load ptr, ptr %i.dq, align 8, !tbaa !21 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.dr
  br i1 %i.fz, label %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.fy) #38
  br label %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit.i: ; preds = %bb.t, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.i
  %i.ga = load ptr, ptr %i.dm, align 8, !tbaa !21 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.dn
  br i1 %i.gb, label %_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit.i
  call void @free(ptr noundef %i.ga) #38
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit.i: ; preds = %bb.u, %_ZN4llvm11SmallVectorINS_3ISD8InputArgELj32EED2Ev.exit.i
  %i.gc = load ptr, ptr %i.di, align 8, !tbaa !21 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.dj
  br i1 %i.gd, label %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj32EED2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit.i
  call void @free(ptr noundef %i.gc) #38
  br label %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj32EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj32EED2Ev.exit.i: ; preds = %bb.v, %_ZN4llvm11SmallVectorINS_7SDValueELj32EED2Ev.exit.i
  %i.ge = load ptr, ptr %i.de, align 8, !tbaa !882 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj32EED2Ev.exit.i
  %i.gf = load ptr, ptr %i.fh, align 8, !tbaa !883
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.ge to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gi) #41
  br label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EED2Ev.exit: ; preds = %bb.w, %_ZN4llvm11SmallVectorINS_3ISD9OutputArgELj32EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %bb.x

bb.x:                                             ; preds = %bb.j, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EED2Ev.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit
  %.sroa.0132.2 = phi ptr [ %.sroa.0132.0, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit ], [ %.fca.0.extract28, %bb.j ], [ %.sroa.0132.0.copyload, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EED2Ev.exit ]
  %.sroa.4133.2 = phi i32 [ %.sroa.4133.0, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit ], [ %.fca.1.extract29, %bb.j ], [ %.sroa.4133.0.copyload, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0132.2, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4133.2, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17ARMTargetLowering23LowerDYNAMIC_STACKALLOCENS_7SDValueERNS_12SelectionDAGE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %5 = alloca %"class.llvm::ArrayRef.429", align 8 ; 5 uses
  %6 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %7 = alloca %"class.llvm::ArrayRef.429", align 8 ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %12 = alloca %"class.llvm::ArrayRef.429", align 8 ; 5 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 16 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !835
  store i64 %i.b, ptr %13, align 8, !tbaa !835
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !836
  store i32 %i.e, ptr %i.c, align 8, !tbaa !837
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !698  ; 4 uses
  %.sroa.0195.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !370 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !303 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !374
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !748, !nonnull !19, !align !60
  %i.l = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.k, ptr nonnull @.str.62, i64 18) #38
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !698
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !601
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !896  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !700
  %i.u = icmp ult i32 %i.t, 65
  %i.v = load ptr, ptr %i.r, align 8
  %spec.select.i.i.i.i = select i1 %i.u, ptr %i.r, ptr %i.v
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %.not.i.not.i.i = icmp eq i64 %.0.i.i.i.i, 0
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i16
  %i.y = xor i16 %i.x, 319
  %.sroa.0.0.insert.insert.i.i = select i1 %.not.i.not.i.i, i16 0, i16 %i.y ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.z = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 7, ptr null, i16 1, ptr null) #38 ; 2 uses
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = extractvalue { ptr, i32 } %i.z, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  store ptr %.sroa.0195.0.copyload, ptr %11, align 16, !tbaa !370
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.sroa.15.0.copyload, ptr %.sroa.218.0..sroa_idx.i, align 8, !tbaa !303
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ad = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 17, i16 7, ptr null) #38 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.ad, 1
  store ptr %.fca.0.extract3.i, ptr %i.ac, align 16
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %.fca.1.extract4.i, ptr %.sroa.26.0..sroa_idx.i, align 8
  store ptr %11, ptr %12, align 8, !tbaa !457
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.ae, align 8, !tbaa !460
  %i.af = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.aa, i32 %i.ab, ptr noundef nonnull byval(%"class.llvm::ArrayRef.429") align 8 %12) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.fca.0.extract95 = extractvalue { ptr, i32 } %i.af, 0 ; 2 uses
  %.fca.1.extract96 = extractvalue { ptr, i32 } %i.af, 1
  store ptr %.fca.0.extract95, ptr %15, align 8, !tbaa !370
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract96, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !303
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #38 ; 2 uses
  %.not = icmp samesign ult i16 %.sroa.0.0.insert.insert.i.i, 256
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.fca.0.extract74 = extractvalue { ptr, i32 } %i.ag, 0
  store ptr %.fca.0.extract74, ptr %16, align 8
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 0, ptr %.sroa.277.0..sroa_idx, align 8
  %i.ah = and i16 %.sroa.0.0.insert.insert.i.i, 63
  %i.ai = zext nneg i16 %i.ah to i64
  %.neg = shl nsw i64 -1, %i.ai
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %.neg, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract70 = extractvalue { ptr, i32 } %i.aj, 0
  %.fca.1.extract71 = extractvalue { ptr, i32 } %i.aj, 1
  store ptr %.fca.0.extract70, ptr %17, align 8
  %.sroa.273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract71, ptr %.sroa.273.0..sroa_idx, align 8
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #38
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn222 = phi { ptr, i32 } [ %i.ak, %bb.c ], [ %i.ag, %bb.b ] ; 2 uses
  %.sroa.10.0 = extractvalue { ptr, i32 } %.pn222, 1 ; 3 uses
  %.sroa.0179.0 = extractvalue { ptr, i32 } %.pn222, 0 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.0179.0, ptr %10, align 8
  %.sroa.2190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sroa.10.0, ptr %.sroa.2190.0..sroa_idx, align 8
  store ptr %.fca.0.extract95, ptr %8, align 8, !tbaa !370
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1, ptr %.sroa.211.0..sroa_idx.i, align 8, !tbaa !303
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0179.0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !340
  %i.an = zext i32 %.sroa.10.0 to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ao, align 8, !tbaa !25
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !341
end_hunk_0
