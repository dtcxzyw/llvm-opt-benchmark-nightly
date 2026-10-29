Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelDAGToDAG?download=true
inline.NumInlined: 6338
inline.NumDeleted: 1425
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_115X86DAGToDAGISel29matchVectorAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !404  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !406  ; 3 uses
  %i.o = icmp ult i32 %i.n, 65
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = load i64, ptr %i.l, align 8, !tbaa !407
  %i.q = icmp eq i32 %i.n, 0
  %i.r = sub nuw nsw i32 64, %i.n
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = shl i64 %i.p, %i.s
  %i.u = ashr exact i64 %i.t, %i.s
  %.0.i.i.i.i = select i1 %i.q, i64 0, i64 %i.u
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.j:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !407
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.i, %bb.j
  %.0.i.i.i = phi i64 [ %.0.i.i.i.i, %bb.i ], [ %i.w, %bb.j ]
  %i.x = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel21foldOffsetIntoAddressEmRNS_18X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(968) %0, i64 noundef %.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(119) %3)
  br i1 %i.x, label %bb.r, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.k:                                             ; preds = %bb.g
  %i.y = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel12matchWrapperEN4llvm7SDValueERNS_18X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(119) %3)
  br i1 %i.y, label %bb.r, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.z = tail call noundef ptr @_ZN4llvm6SDNode16getValueTypeListENS_3MVTE(i16 1) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 24, i1 false)
  store i32 346, ptr %i.aa, align 8, !tbaa !399
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 0, ptr %i.ab, align 4, !tbaa !644
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 34
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 -1, ptr %i.ad, align 4, !tbaa !573
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.z, ptr %i.af, align 8, !tbaa !400
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.ag, align 8, !tbaa !570
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 66
  store i16 1, ptr %i.ah, align 2, !tbaa !575
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 0, ptr %i.ai, align 4, !tbaa !537
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr null, ptr %i.aj, align 8, !tbaa !536
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 -1, ptr %i.ak, align 8, !tbaa !407
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i32 0, ptr %i.al, align 4
  store i16 -1, ptr %i.ac, align 2, !tbaa !645
  store ptr %5, ptr %i.ap, align 8, !tbaa !552
  store ptr %1, ptr %i.an, align 8, !tbaa !395
  store i32 %2, ptr %i.ao, align 8, !tbaa !396
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !542 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !593
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.at, ptr %i.au, align 8, !tbaa !646
  br label %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit

_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit:       ; preds = %bb.l, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !646
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !542
  store i16 1, ptr %i.av, align 8, !tbaa !564
  store ptr %i.an, ptr %i.ae, align 8, !tbaa !540
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false), !tbaa.struct !651
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !540 ; 2 uses
  %.sroa.010.0.copyload = load ptr, ptr %i.ax, align 8, !tbaa !395
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.211.0.copyload = load i32, ptr %.sroa.211.0..sroa_idx, align 8, !tbaa !396
  %i.ay = add nuw nsw i32 %4, 1                   ; 4 uses
  %i.az = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel29matchVectorAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %.sroa.010.0.copyload, i32 %.sroa.211.0.copyload, ptr noundef nonnull align 8 dereferenceable(119) %3, i32 noundef %i.ay)
  br i1 %i.az, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !390
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !540 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %.sroa.07.0.copyload = load ptr, ptr %i.bd, align 8, !tbaa !395
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %.sroa.28.0.copyload = load i32, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !396
  %i.be = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel29matchVectorAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %.sroa.07.0.copyload, i32 %.sroa.28.0.copyload, ptr noundef nonnull align 8 dereferenceable(119) %3, i32 noundef %i.ay)
  br i1 %i.be, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n, %_ZN4llvm12HandleSDNodeC2ENS_7SDValueE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(119) %3, ptr noundef nonnull align 8 dereferenceable(119) %6, i64 119, i1 false), !tbaa.struct !651
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !390
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !540 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %.sroa.04.0.copyload = load ptr, ptr %i.bi, align 8, !tbaa !395
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !396
  %i.bj = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel29matchVectorAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %.sroa.04.0.copyload, i32 %.sroa.25.0.copyload, ptr noundef nonnull align 8 dereferenceable(119) %3, i32 noundef %i.ay)
  br i1 %i.bj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = load ptr, ptr %i.an, align 8, !tbaa !390
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !540 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.bm, align 8, !tbaa !395
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !396
  %i.bn = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel29matchVectorAddressRecursivelyEN4llvm7SDValueERNS_18X86ISelAddressModeEj(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %.sroa.01.0.copyload, i32 %.sroa.22.0.copyload, ptr noundef nonnull align 8 dereferenceable(119) %3, i32 noundef %i.ay)
  br i1 %i.bn, label %bb.q, label %.thread

.thread:                                          ; preds = %bb.n, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN4llvm12HandleSDNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.q:                                             ; preds = %bb.o, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(119) %3, ptr noundef nonnull align 8 dereferenceable(119) %6, i64 119, i1 false), !tbaa.struct !651
  %.sroa.0.0.copyload52 = load ptr, ptr %i.an, align 8, !tbaa !395
  %.sroa.9.0.copyload = load i32, ptr %i.ao, align 8, !tbaa !396
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN4llvm12HandleSDNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.k, %bb.g
  %.sroa.9.1 = phi i32 [ %2, %bb.g ], [ %2, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ %2, %bb.k ], [ %.sroa.9.0.copyload, %bb.q ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %1, %bb.g ], [ %1, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ %1, %bb.k ], [ %.sroa.0.0.copyload52, %bb.q ] ; 2 uses
  %i.bo = load i32, ptr %3, align 8, !tbaa !599
  %.not.i43 = icmp eq i32 %i.bo, 0
  br i1 %.not.i43, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !390
  %.not11.i47 = icmp eq ptr %i.bq, null
  br i1 %.not11.i47, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !390
  %.not12.i44 = icmp eq ptr %i.bs, null
  br i1 %.not12.i44, label %bb.u, label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.u:                                             ; preds = %bb.t
  store ptr %.sroa.0.1, ptr %i.br, align 8, !tbaa !395
  %.sroa.3.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %.sroa.9.1, ptr %.sroa.3.0..sroa_idx.i46, align 8, !tbaa !396
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 1, ptr %i.bt, align 4, !tbaa !601
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

bb.v:                                             ; preds = %bb.s
  store ptr %.sroa.0.1, ptr %i.bp, align 8, !tbaa !395
  %.sroa.3.0..sroa_idx8.i48 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.9.1, ptr %.sroa.3.0..sroa_idx8.i48, align 8, !tbaa !396
  br label %_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit

_ZN12_GLOBAL__N_115X86DAGToDAGISel16matchAddressBaseEN4llvm7SDValueERNS_18X86ISelAddressModeE.exit: ; preds = %bb.v, %bb.u, %bb.t, %.thread, %bb.f, %bb.e, %bb.d, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.k
  %.2 = phi i1 [ false, %bb.k ], [ true, %bb.d ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ false, %.thread ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.v ], [ false, %bb.u ], [ true, %bb.t ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel12matchWrapperEN4llvm7SDValueERNS_18X86ISelAddressModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(968) %0, ptr nofree readonly captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(119) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.(anonymous namespace)::X86ISelAddressMode", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.e = load <2 x ptr>, ptr %i.a, align 8
  %i.f = load <2 x ptr>, ptr %i.c, align 8
  %i.g = shufflevector <2 x ptr> %i.e, <2 x ptr> %i.f, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x ptr> %i.g
  %i.h = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not4.i = icmp ne i32 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp ne ptr %i.l, null
  %i.n = bitcast <4 x i1> %i.h to i4
  %i.o = icmp ne i4 %i.n, 0
  %op.rdx = select i1 %i.o, i1 true, i1 %.not4.i
  %op.rdx1 = select i1 %op.rdx, i1 true, i1 %i.m
  br i1 %op.rdx1, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !399
  %i.r = icmp ne i32 %i.q, 989                    ; 4 uses
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !540
  %.sroa.088.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !395
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.088.0.copyload, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !399
  %i.w = icmp eq i32 %i.v, 40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.159 = phi i1 [ %i.w, %bb.c ], [ false, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !563, !nonnull !17, !align !305
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1052
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !610
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !195
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 522
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !528, !range !16, !noundef !17 ; 6 uses
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = icmp eq i32 %i.aa, 4
  %or.cond = and i1 %i.ag, %i.af
  %or.cond.not = xor i1 %or.cond, true
  %or.cond3 = or i1 %.159, %or.cond.not
  br i1 %or.cond3, label %bb.e, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit.thread

bb.e:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %2, align 8, !tbaa !599
  %i.ai = icmp ne i32 %i.ah, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not.i75 = icmp eq ptr %i.ak, null
  %or.cond.i76 = select i1 %i.ai, i1 %.not.i75, i1 false
  br i1 %or.cond.i76, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode17hasBaseOrIndexRegEv.exit, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit.thread

_ZNK12_GLOBAL__N_118X86ISelAddressMode17hasBaseOrIndexRegEv.exit: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !390
  %.not108 = icmp eq ptr %i.am, null
  br i1 %.not108, label %bb.g, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit.thread

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_118X86ISelAddressMode17hasBaseOrIndexRegEv.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false), !tbaa.struct !651
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !540
  %.sroa.082.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !395 ; 17 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !399
  switch i32 %i.aq, label %unreachable [
    i32 14, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 39, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 15, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 40, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 43, label %_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 18, label %_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 44, label %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 19, label %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 46, label %bb.h
    i32 42, label %_ZN4llvm8dyn_castINS_15JumpTableSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 17, label %_ZN4llvm8dyn_castINS_15JumpTableSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 45, label %_ZN4llvm8dyn_castINS_18BlockAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 20, label %_ZN4llvm8dyn_castINS_18BlockAddressSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !616 ; 2 uses
  store ptr %i.as, ptr %i.a, align 8, !tbaa !639
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 104
  %i.au = load i32, ptr %i.at, align 8, !tbaa !620
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 117
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !605
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 96
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !619
  br label %bb.i

_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.g, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 88
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !407
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !640
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 100
  %.sroa.0.0.copyload.i = load i8, ptr %i.bb, align 4, !tbaa !407
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 116
  store i8 %.sroa.0.0.copyload.i, ptr %i.bc, align 4, !tbaa !407
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 104
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !938
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 117
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !605
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 96
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !939
  %i.bj = and i32 %i.bi, 2147483647
  %i.bk = zext nneg i32 %i.bj to i64
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !195
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 522
  %.pre110 = load i8, ptr %.phi.trans.insert, align 2, !tbaa !528, !range !16
  br label %bb.i

_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.g, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !941
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !641
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 96
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !942
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 117
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !605
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !653
  store ptr %i.bs, ptr %i.d, align 8, !tbaa !642
  br label %bb.i

_ZN4llvm8dyn_castINS_15JumpTableSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.g, %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 88
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !944
  store i32 %i.bu, ptr %i.i, align 8, !tbaa !603
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 92
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !945
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 117
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !605
  br label %bb.i

_ZN4llvm8dyn_castINS_18BlockAddressSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.g, %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.082.0.copyload) ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !947
  store ptr %i.ca, ptr %i.k, align 8, !tbaa !643
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 104
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !948
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 117
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !605
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !949
  br label %bb.i

unreachable:                                      ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.h, %_ZN4llvm8dyn_castINS_18BlockAddressSDNodeENS_7SDValueEEEDcRT0_.exit, %_ZN4llvm8dyn_castINS_15JumpTableSDNodeENS_7SDValueEEEDcRT0_.exit, %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.ch = phi ptr [ %i.as, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit ], [ null, %_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit ], [ null, %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit ], [ null, %bb.h ], [ null, %_ZN4llvm8dyn_castINS_15JumpTableSDNodeENS_7SDValueEEEDcRT0_.exit ], [ null, %_ZN4llvm8dyn_castINS_18BlockAddressSDNodeENS_7SDValueEEEDcRT0_.exit ] ; 2 uses
  %i.ci = phi i8 [ %i.ae, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %.pre110, %_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %i.ae, %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %i.ae, %bb.h ], [ %i.ae, %_ZN4llvm8dyn_castINS_15JumpTableSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %i.ae, %_ZN4llvm8dyn_castINS_18BlockAddressSDNodeENS_7SDValueEEEDcRT0_.exit ]
  %.4 = phi i64 [ %i.ay, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %i.bk, %_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit ], [ 0, %_ZN4llvm8dyn_castINS_20ExternalSymbolSDNodeENS_7SDValueEEEDcRT0_.exit ], [ 0, %bb.h ], [ 0, %_ZN4llvm8dyn_castINS_15JumpTableSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %i.cg, %_ZN4llvm8dyn_castINS_18BlockAddressSDNodeENS_7SDValueEEEDcRT0_.exit ]
  %i.cj = trunc nuw i8 %i.ci to i1
  %or.cond5.not = and i1 %i.r, %i.cj
  %.not = icmp ne ptr %i.ch, null
  %or.cond112.not = select i1 %or.cond5.not, i1 %.not, i1 false
  br i1 %or.cond112.not, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ck = load ptr, ptr %i.x, align 8, !tbaa !563, !nonnull !17, !align !305
  %i.cl = tail call noundef zeroext i1 @_ZNK4llvm13TargetMachine18isLargeGlobalValueEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1728) %i.ck, ptr noundef nonnull %i.ch) #22
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(119) %2, ptr noundef nonnull align 8 dereferenceable(119) %3, i64 119, i1 false), !tbaa.struct !651
  br label %bb.p

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.cm = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel21foldOffsetIntoAddressEmRNS_18X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(968) %0, i64 noundef %.4, ptr noundef nonnull align 8 dereferenceable(119) %2)
  br i1 %i.cm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(119) %2, ptr noundef nonnull align 8 dereferenceable(119) %3, i64 119, i1 false), !tbaa.struct !651
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  br i1 %i.r, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !309
  %i.cp = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.co, i32 58, i16 8, ptr null) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cp, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cp, 1
  store i32 0, ptr %2, align 8, !tbaa !599
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.fca.0.extract, ptr %i.cq, align 8, !tbaa !395
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !396
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m, %bb.k
end_hunk_0
begin_hunk_1_@_ZL18isLegalMaskComparePN4llvm6SDNodeEPKNS_12X86SubtargetE:bb.a
    i32 806, label %bb.b
    i32 573, label %bb.b
    i32 572, label %bb.b
    i32 571, label %bb.b
    i32 222, label %bb.b
    i32 885, label %bb.h
    i32 685, label %bb.h
    i32 684, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = icmp eq i32 %i.b, 806
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !540  ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !390
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !391
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !400
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.l, align 8, !tbaa !402 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !539
  store i16 %.sroa.0.0.copyload.i.i, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.m, align 8
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !390
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !391
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !400
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.sroa.0.0.copyload.i.i29 = load i16, ptr %i.u, align 8, !tbaa !402 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.21.0.copyload.i.i31 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i30, align 8, !tbaa !539
  store i16 %.sroa.0.0.copyload.i.i29, ptr %2, align 8, !tbaa !402
  store ptr %.sroa.21.0.copyload.i.i31, ptr %i.m, align 8, !tbaa !539
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi i16 [ %.sroa.0.0.copyload.i.i29, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.b ] ; 3 uses
  %.not.i = icmp eq i16 %i.v, 0
  br i1 %.not.i, label %.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add i16 %i.v, -19
  %spec.select.i.i.i = icmp ult i16 %i.w, 144
  br i1 %spec.select.i.i.i, label %_ZNK4llvm3EVT14is256BitVectorEv.exit, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread

.split:                                           ; preds = %bb.d
  %i.x = call noundef zeroext i1 @_ZNK4llvm3EVT22isExtended256BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #26
  br i1 %i.x, label %bb.f, label %.split39

_ZNK4llvm3EVT14is256BitVectorEv.exit:             ; preds = %bb.e
  %i.y = zext nneg i16 %i.v to i64
  %i.z = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.aa, align 16
  switch i64 %.sroa.0.0.copyload.i.i.i.i, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread [
    i64 256, label %bb.f
    i64 128, label %bb.f
  ]

.split39:                                         ; preds = %.split
  %i.ab = call noundef zeroext i1 @_ZNK4llvm3EVT22isExtended128BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #26
  br i1 %i.ab, label %bb.f, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread

bb.f:                                             ; preds = %_ZNK4llvm3EVT14is256BitVectorEv.exit, %_ZNK4llvm3EVT14is256BitVectorEv.exit, %.split39, %.split
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 503
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !553, !range !16, !noundef !17
  %i.ae = trunc nuw i8 %i.ad to i1
  br label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread

_ZNK4llvm3EVT14is128BitVectorEv.exit.thread:      ; preds = %_ZNK4llvm3EVT14is256BitVectorEv.exit, %bb.e, %.split39, %bb.f
  %.0 = phi i1 [ %i.ae, %bb.f ], [ true, %_ZNK4llvm3EVT14is256BitVectorEv.exit ], [ true, %.split39 ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.g, %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread
  %.1 = phi i1 [ %.0, %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread ], [ false, %bb.g ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm3EVT22isExtended256BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm3EVT22isExtended128BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm6detail9IEEEFloat15getExactLog2AbsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm6detail13DoubleAPFloat15getExactLog2AbsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %7) unnamed_addr #3 align 2 {
bb.a:
  %8 = alloca %"struct.(anonymous namespace)::X86ISelAddressMode", align 8 ; 22 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store i32 0, ptr %8, align 8, !tbaa !599
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !390
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !391
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !600
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  store i32 1, ptr %i.d, align 4, !tbaa !601
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !390
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 0, ptr %i.f, align 8, !tbaa !391
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !602
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 4 uses
  store ptr null, ptr %i.h, align 8, !tbaa !390
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !391
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.k, align 8, !tbaa !603
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 116
  store i8 0, ptr %i.l, align 4, !tbaa !604
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 117
  store i8 0, ptr %i.m, align 1, !tbaa !605
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 118
  store i8 0, ptr %i.n, align 2, !tbaa !606
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !536
  store i64 %i.p, ptr %9, align 8, !tbaa !536
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !537
  store i32 %i.s, ptr %i.q, align 8, !tbaa !392
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !400
  %i.v = zext i32 %2 to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.v
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.w, align 8, !tbaa !402
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !545
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !309
  %i.z = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.y, i32 0, i16 7, ptr null) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.z, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.z, 1
  store ptr %.fca.0.extract, ptr %i.h, align 8, !tbaa !395
  store i32 %.fca.1.extract, ptr %i.i, align 8, !tbaa !396
  %i.aa = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115X86DAGToDAGISel12matchAddressEN4llvm7SDValueERNS_18X86ISelAddressModeE(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(119) %8)
  br i1 %i.aa, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !545
  %i.ab = load i32, ptr %8, align 8, !tbaa !599   ; 2 uses
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.ad, null
  %or.cond = select i1 %i.ac, i1 true, i1 %.not
  %i.ae = icmp eq i32 %i.ab, 1
  %spec.select = select i1 %i.ae, i32 4, i32 0
  %.026 = select i1 %or.cond, i32 %spec.select, i32 1
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !390
  %.not28 = icmp ne ptr %i.af, null
  %i.ag = zext i1 %.not28 to i32
  %spec.select30 = add nuw nsw i32 %.026, %i.ag
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !601
  %i.ai = icmp ugt i32 %i.ah, 1
  %i.aj = zext i1 %i.ai to i32
  %.2 = add nuw nsw i32 %spec.select30, %i.aj     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.al = load <2 x ptr>, ptr %i.j, align 8
  %i.am = load <2 x ptr>, ptr %i.ak, align 8
  %i.an = shufflevector <2 x ptr> %i.al, <2 x ptr> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x ptr> %i.an
  %i.ao = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.ap = load i32, ptr %i.k, align 8
  %.not4.i = icmp ne i32 %i.ap, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp ne ptr %i.ar, null
  %i.at = bitcast <4 x i1> %i.ao to i4
  %i.au = icmp ne i4 %i.at, 0
  %op.rdx = select i1 %i.au, i1 true, i1 %.not4.i
  %op.rdx52 = select i1 %op.rdx, i1 true, i1 %i.as
  br i1 %op.rdx52, label %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit.thread, label %bb.c

_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit.thread: ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !195
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 522
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !528, !range !16, !noundef !17
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = add nuw nsw i32 %.2, 2
  %spec.select32 = select i1 %i.az, i32 4, i32 %i.ba
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit.thread
  %.3 = phi i32 [ %.2, %bb.b ], [ %spec.select32, %_ZNK12_GLOBAL__N_118X86ISelAddressMode23hasSymbolicDisplacementEv.exit.thread ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !399
  %i.bd = icmp eq i32 %i.bc, 59
  br i1 %i.bd, label %bb.d, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34.thread"

bb.d:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !540 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.bf, align 8, !tbaa !395 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !399
  switch i32 %i.bh, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread" [
    i32 540, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit"
    i32 823, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit"
    i32 539, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit"
    i32 789, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit"
    i32 805, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit"
    i32 837, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit"
  ]

"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit": ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.bi = call noundef zeroext i1 @_ZNK4llvm6SDNode16hasAnyUseOfValueEj(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.02.0.copyload, i32 noundef 1) #22
  br i1 %i.bi, label %bb.e, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit._ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread_crit_edge"

"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit._ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread_crit_edge": ; preds = %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit"
  %.pre = load ptr, ptr %i.be, align 8, !tbaa !540
  br label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread"

"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread": ; preds = %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit._ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread_crit_edge", %bb.d
  %i.bj = phi ptr [ %.pre, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit._ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread_crit_edge" ], [ %i.bf, %bb.d ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %.sroa.01.0.copyload = load ptr, ptr %i.bk, align 8, !tbaa !395 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !399
  switch i32 %i.bm, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34.thread" [
    i32 540, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34"
    i32 823, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34"
    i32 539, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34"
    i32 789, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34"
    i32 805, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34"
    i32 837, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34"
  ]

"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34": ; preds = %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread", %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread", %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread", %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread", %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread", %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread"
  %i.bn = call noundef zeroext i1 @_ZNK4llvm6SDNode16hasAnyUseOfValueEj(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.01.0.copyload, i32 noundef 1) #22
  br i1 %i.bn, label %bb.e, label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34.thread"

bb.e:                                             ; preds = %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34", %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit"
  %i.bo = add nuw nsw i32 %.3, 1
  br label %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34.thread"

"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34.thread": ; preds = %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread", %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34", %bb.e, %bb.c
  %.5 = phi i32 [ %.3, %bb.c ], [ %i.bo, %bb.e ], [ %.3, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34" ], [ %.3, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit.thread" ]
  %i.bp = load i32, ptr %i.g, align 8, !tbaa !602
  %.not29 = icmp ne i32 %i.bp, 0
  %i.bq = zext i1 %.not29 to i32
  %spec.select31 = add nuw nsw i32 %.5, %i.bq
  %i.br = icmp samesign ugt i32 %spec.select31, 2
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34.thread"
  call fastcc void @_ZN12_GLOBAL__N_115X86DAGToDAGISel18getAddressOperandsERNS_18X86ISelAddressModeERKN4llvm5SDLocENS3_3MVTERNS3_7SDValueES9_S9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull align 8 dereferenceable(119) %8, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %7)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34.thread", %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %"_ZZN12_GLOBAL__N_115X86DAGToDAGISel13selectLEAAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_ENK3$_0clES2_.exit34.thread" ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115X86DAGToDAGISel17selectTLSADDRAddrEN4llvm7SDValueERS2_S3_S3_S3_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(968) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %7) unnamed_addr #3 align 2 {
bb.a:
  %8 = alloca %"struct.(anonymous namespace)::X86ISelAddressMode", align 8 ; 19 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store i32 0, ptr %8, align 8, !tbaa !599
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !390
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !391
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !600
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  store i32 1, ptr %i.d, align 4, !tbaa !601
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !390
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !391
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !602
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr null, ptr %i.h, align 8, !tbaa !390
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 0, ptr %i.i, align 8, !tbaa !391
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.k, align 8, !tbaa !603
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 116
  store i8 0, ptr %i.l, align 4, !tbaa !604
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 117
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 118
  store i8 0, ptr %i.n, align 2, !tbaa !606
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !399
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  switch i32 %i.p, label %bb.b [
    i32 14, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 39, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 15, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 40, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  store ptr %i.r, ptr %i.j, align 8, !tbaa !639
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.t = load i64, ptr %i.s, align 8, !tbaa !619
  %i.u = trunc i64 %i.t to i32
  store i32 %i.u, ptr %i.g, align 8, !tbaa !602
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 96
  store ptr %i.r, ptr %i.v, align 8, !tbaa !641
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit
  %.sink = phi i64 [ 96, %bb.b ], [ 104, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %storemerge.in = load i32, ptr %i.w, align 8, !tbaa !396
  %storemerge = trunc i32 %storemerge.in to i8
  store i8 %storemerge, ptr %i.m, align 1, !tbaa !605
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !195
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 521
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !621, !range !16, !noundef !17
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.d, align 4, !tbaa !601
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !309
  %i.ae = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ad, i32 24, i16 7, ptr null) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ae, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ae, 1
  store ptr %.fca.0.extract, ptr %i.e, align 8, !tbaa !395
  store i32 %.fca.1.extract, ptr %i.f, align 8, !tbaa !396
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !400
  %i.ah = zext i32 %2 to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ai, align 8, !tbaa !402
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !536
  store i64 %i.ak, ptr %9, align 8, !tbaa !536
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.an = load i32, ptr %i.am, align 4, !tbaa !537
  store i32 %i.an, ptr %i.al, align 8, !tbaa !392
  call fastcc void @_ZN12_GLOBAL__N_115X86DAGToDAGISel18getAddressOperandsERNS_18X86ISelAddressModeERKN4llvm5SDLocENS3_3MVTERNS3_7SDValueES9_S9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(968) %0, ptr noundef nonnull align 8 dereferenceable(119) %8, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void
}

declare void @_ZNK4llvm13ConstantRange14getUnsignedMaxEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm5APInt3ultEm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !406  ; 2 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK4llvm5APInt13getActiveBitsEv.exit

_ZNK4llvm5APInt13getActiveBitsEv.exit:            ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #26
end_hunk_1
