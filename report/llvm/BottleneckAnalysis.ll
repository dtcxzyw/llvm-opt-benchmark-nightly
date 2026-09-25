Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BottleneckAnalysis?download=true
inline.NumInlined: 1459
inline.NumDeleted: 636
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm3mca15DependencyGraph13finalizeGraphEj:bb.a
  %.not.i4.i = icmp ult i32 %i.o, %i.p
  br i1 %.not.i4.i, label %bb.e, label %bb.d, !prof !71

bb.d:                                             ; preds = %bb.c
  %i.q = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18growAndEmplaceBackIJRjEEES3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplIjE12emplace_backIJRjEEES3_DpOT_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.r = zext i32 %i.o to i64
  %i.s = load ptr, ptr %2, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  store i32 %i.g, ptr %i.t, align 4, !tbaa !31
  %i.u = load i32, ptr %i.c, align 8, !tbaa !29
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.c, align 8, !tbaa !29
  br label %_ZN4llvm15SmallVectorImplIjE12emplace_backIJRjEEES3_DpOT_.exit.i

_ZN4llvm15SmallVectorImplIjE12emplace_backIJRjEEES3_DpOT_.exit.i: ; preds = %bb.e, %bb.d, %bb.b, %.lr.ph.i
  %i.w = load i32, ptr %i.a, align 4, !tbaa !31
  %i.x = add i32 %i.w, 1                          ; 3 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !31
  %i.y = icmp ult i32 %i.x, %i.f
  br i1 %i.y, label %.lr.ph.i, label %_ZNK4llvm3mca15DependencyGraph17initializeRootSetERNS_15SmallVectorImplIjEE.exit, !llvm.loop !2

_ZNK4llvm3mca15DependencyGraph17initializeRootSetERNS_15SmallVectorImplIjEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIjE12emplace_backIJRjEEES3_DpOT_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN4llvm3mca15DependencyGraph21propagateThroughEdgesERNS_15SmallVectorImplIjEEj(ptr noundef nonnull align 8 dereferenceable(1296) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 poison)
  %i.z = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZN4llvm11SmallVectorIjLj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm3mca15DependencyGraph17initializeRootSetERNS_15SmallVectorImplIjEE.exit
  call void @free(ptr noundef %i.z) #19
  br label %_ZN4llvm11SmallVectorIjLj16EED2Ev.exit

_ZN4llvm11SmallVectorIjLj16EED2Ev.exit:           ; preds = %_ZNK4llvm3mca15DependencyGraph17initializeRootSetERNS_15SmallVectorImplIjEE.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3mca18BottleneckAnalysis7onEventERKNS0_15HWPressureEventE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN4llvm3mca15PressureTracker19handlePressureEventERKNS0_15HWPressureEventE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = load i32, ptr %1, align 8, !tbaa !91
  switch i32 %i.b, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1656
  store i8 1, ptr %i.c, align 8, !tbaa !213
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1657
  store i8 1, ptr %i.d, align 1, !tbaa !214
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1658
  store i8 1, ptr %i.e, align 2, !tbaa !215
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4llvm3mca18BottleneckAnalysis10onCycleEndEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1680) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1652 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !216
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !216
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1657 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !214, !range !166, !noundef !54
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1658 ; 2 uses
  %i.h = load i8, ptr %i.g, align 2, !range !166
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  %i.j = select i1 %i.f, i1 true, i1 %i.i         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !213, !range !166, !noundef !54
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  %or.cond = select i1 %i.m, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1660 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !217
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !217
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !218
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !218
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1676 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !219
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !219
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1668 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !220
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !220
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !221
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !221
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 0, ptr %i.k, align 8, !tbaa !213
  store i8 0, ptr %i.d, align 1, !tbaa !214
  store i8 0, ptr %i.g, align 2, !tbaa !215
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm3mca18BottleneckAnalysis20printBottleneckHintsERNS_11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.anon.109, align 8            ; 4 uses
  %3 = alloca %class.anon.109, align 8            ; 4 uses
  %4 = alloca %class.anon.109, align 8            ; 4 uses
  %5 = alloca %class.anon.109, align 8            ; 4 uses
  %6 = alloca %class.anon.109, align 8            ; 4 uses
  %7 = alloca %class.anon.109, align 8            ; 4 uses
  %8 = alloca %"class.llvm::format_object", align 8 ; 3 uses
  %9 = alloca %"class.llvm::format_object", align 8 ; 3 uses
  %10 = alloca %"class.llvm::format_object", align 8 ; 3 uses
  %11 = alloca %"class.llvm::format_object", align 8 ; 3 uses
  %12 = alloca %"class.llvm::format_object", align 8 ; 3 uses
  %13 = alloca %"class.llvm::format_object", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1659
  %i.b = load i8, ptr %i.a, align 1, !tbaa !165, !range !166, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1660 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !217  ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145  ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, 57
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.14, i64 noundef 57) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.i, ptr noundef nonnull align 1 dereferenceable(57) @.str.14, i64 57, i1 false)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !145
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 57
  store ptr %i.p, ptr %i.h, align 8, !tbaa !145
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1652 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !216
  %i.s = uitofp i32 %i.r to double                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.u = load i32, ptr %i.t, align 8, !tbaa !221
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1668
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %15 = load i32, ptr %14, align 8, !tbaa !218
  %16 = load i32, ptr %i.v, align 4, !tbaa !220
  %i.w = uitofp i32 %15 to double
  %i.x = uitofp i32 %16 to double
  %17 = uitofp i32 %i.u to double
  %18 = uitofp i32 %i.e to double
  %i.y = insertelement <4 x double> poison, double %18, i64 0
  %i.z = insertelement <4 x double> %i.y, double %17, i64 1
  %19 = insertelement <4 x double> %i.z, double %i.x, i64 2
  %20 = insertelement <4 x double> %19, double %i.w, i64 3
  %i.aa = fmul nnan <4 x double> %20, splat (double 1.000000e+02)
  %i.ab = insertelement <4 x double> poison, double %i.s, i64 0
  %i.ac = shufflevector <4 x double> %i.ab, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ad = fdiv <4 x double> %i.aa, %i.ac          ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1676
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !219
  %i.ag = uitofp i32 %i.af to double
  %i.ah = fmul nnan double %i.ag, 1.000000e+02
  %i.ai = fdiv double %i.ah, %i.s
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !144
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 18 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !145 ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ult i64 %i.ap, 42
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.15, i64 noundef 42) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit28

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.am, ptr noundef nonnull align 1 dereferenceable(42) @.str.15, i64 42, i1 false)
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !145
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 42
  store ptr %i.at, ptr %i.al, align 8, !tbaa !145
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit28

_ZN4llvm11raw_ostreamlsEPKc.exit28:               ; preds = %bb.g, %bb.h
  %.0.i.i27 = phi ptr [ %i.ar, %bb.g ], [ %1, %bb.h ] ; 4 uses
  %i.au = extractelement <4 x double> %i.ad, i64 0
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double 1.000000e+02, double 5.000000e-01)
  %i.aw = tail call double @llvm.floor.f64(double %i.av)
  %i.ax = fdiv double %i.aw, 1.000000e+02
  store ptr @.str.16, ptr %8, align 8, !tbaa !227, !alias.scope !365
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.ax, ptr %i.ay, align 8, !tbaa !366, !alias.scope !365
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %8, ptr %7, align 8, !tbaa !367
  %i.az = ptrtoint ptr %7 to i64
  %i.ba = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i27, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJdEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.az) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i27, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !144
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i27, i64 32 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !145 ; 2 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp ult i64 %i.bh, 3
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit28
  %i.bj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i27, ptr noundef nonnull @.str.13, i64 noundef 3) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit31

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.be, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false)
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !145
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !145
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit31

_ZN4llvm11raw_ostreamlsEPKc.exit31:               ; preds = %bb.i, %bb.j
  %i.bm = load ptr, ptr %i.aj, align 8, !tbaa !144
  %i.bn = load ptr, ptr %i.al, align 8, !tbaa !145 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ult i64 %i.bq, 25
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit31
  %i.bs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.17, i64 noundef 25) #19 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !145
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.bn, ptr noundef nonnull align 1 dereferenceable(25) @.str.17, i64 25, i1 false)
  %i.bt = load ptr, ptr %i.al, align 8, !tbaa !145
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 25 ; 2 uses
  store ptr %i.bu, ptr %i.al, align 8, !tbaa !145
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

_ZN4llvm11raw_ostreamlsEPKc.exit34:               ; preds = %bb.k, %bb.l
  %i.bv = phi ptr [ %.pre, %bb.k ], [ %i.bu, %bb.l ] ; 2 uses
  %.0.i.i33 = phi ptr [ %i.bs, %bb.k ], [ %1, %bb.l ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i33, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !144
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = icmp ult i64 %i.ca, 29
  br i1 %i.cb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34
  %i.cc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i33, ptr noundef nonnull @.str.18, i64 noundef 29) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit37

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i33, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.bv, ptr noundef nonnull align 1 dereferenceable(29) @.str.18, i64 29, i1 false)
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !145
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 29
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !145
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit37

_ZN4llvm11raw_ostreamlsEPKc.exit37:               ; preds = %bb.m, %bb.n
  %.0.i.i36 = phi ptr [ %i.cc, %bb.m ], [ %.0.i.i33, %bb.n ] ; 4 uses
  %i.cg = extractelement <4 x double> %i.ad, i64 1
  %i.ch = call double @llvm.fmuladd.f64(double %i.cg, double 1.000000e+02, double 5.000000e-01)
  %i.ci = call double @llvm.floor.f64(double %i.ch)
  %i.cj = fdiv double %i.ci, 1.000000e+02
  store ptr @.str.16, ptr %9, align 8, !tbaa !227, !alias.scope !368
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.cj, ptr %i.ck, align 8, !tbaa !366, !alias.scope !368
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %9, ptr %6, align 8, !tbaa !367
  %i.cl = ptrtoint ptr %6 to i64
  %i.cm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i36, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJdEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.cl) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i36, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !144
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i36, i64 32 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !145 ; 2 uses
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = icmp ult i64 %i.ct, 3
  br i1 %i.cu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit37
  %i.cv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i36, ptr noundef nonnull @.str.13, i64 noundef 3) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cq, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false)
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !145
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  store ptr %i.cx, ptr %i.cp, align 8, !tbaa !145
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

_ZN4llvm11raw_ostreamlsEPKc.exit40:               ; preds = %bb.o, %bb.p
  %i.cy = load i32, ptr %i.d, align 4, !tbaa !217
  %.not24 = icmp eq i32 %i.cy, 0
  br i1 %.not24, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit40
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !28
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !29 ; 2 uses
  %.not85 = icmp eq i32 %i.dc, 0
  br i1 %.not85, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !229, !nonnull !54, !align !55
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 208
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !212
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dj = ptrtoint ptr %5 to i64
  %wide.trip.count = zext i32 %i.dc to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %_ZN4llvm11raw_ostreamlsEPKc.exit54
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm11raw_ostreamlsEPKc.exit54 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !31 ; 2 uses
  %.not25 = icmp eq i32 %i.dl, 0
  br i1 %.not25, label %_ZN4llvm11raw_ostreamlsEPKc.exit54, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = uitofp i32 %i.dl to double
  %i.dn = fmul nnan double %i.dm, 1.000000e+02
  %i.do = load i32, ptr %i.q, align 4, !tbaa !216
  %i.dp = uitofp i32 %i.do to double
  %i.dq = fdiv double %i.dn, %i.dp
  %i.dr = load ptr, ptr %i.dh, align 8, !tbaa !56
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.dr, i64 %indvars.iv
  %i.dt = load ptr, ptr %i.aj, align 8, !tbaa !144
  %i.du = load ptr, ptr %i.al, align 8, !tbaa !145 ; 2 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = icmp ult i64 %i.dx, 5
  br i1 %i.dy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.19, i64 noundef 5) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit43

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.du, ptr noundef nonnull align 1 dereferenceable(5) @.str.19, i64 5, i1 false)
  %i.ea = load ptr, ptr %i.al, align 8, !tbaa !145
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 5
  store ptr %i.eb, ptr %i.al, align 8, !tbaa !145
end_hunk_0
