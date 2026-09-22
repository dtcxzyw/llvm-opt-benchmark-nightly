Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_detect_dots?download=true
inline.NumInlined: 1664
inline.NumDeleted: 817
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE222SumOfSquareDifferencesERKNS_6Image3IfEES7_PS0_E3$_0EENS_6StatusES8_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S9_E12CallDataFuncEPvjm":bb.a
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !34
  %i.ak = mul i64 %i.aj, %i.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.al, i64 64) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !34
  %i.aq = mul i64 %i.ap, %i.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ar, i64 64) ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !75, !nonnull !46, !align !47 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !34
  %i.ay = mul i64 %i.ax, %i.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.az, i64 64) ]
  %i.ba = load i32, ptr %i.f, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i, label %"_ZZN3jxl6N_SSE222SumOfSquareDifferencesERKNS_6Image3IfEES4_PNS_10ThreadPoolEENK3$_0clEjm.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.059.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cf, %bb.c ] ; 8 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.059.i
  %i.bf = load <4 x float>, ptr %i.be, align 16, !tbaa !35, !alias.scope !372
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.059.i
  %i.bh = load <4 x float>, ptr %i.bg, align 16, !tbaa !35, !alias.scope !373
  %i.bi = fsub <4 x float> %i.bf, %i.bh           ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.059.i
  %i.bk = load <4 x float>, ptr %i.bj, align 16, !tbaa !35, !alias.scope !374
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.059.i
  %i.bm = load <4 x float>, ptr %i.bl, align 16, !tbaa !35, !alias.scope !375
  %i.bn = fsub <4 x float> %i.bk, %i.bm           ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.059.i
  %i.bp = load <4 x float>, ptr %i.bo, align 16, !tbaa !35, !alias.scope !376
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.059.i
  %i.br = load <4 x float>, ptr %i.bq, align 16, !tbaa !35, !alias.scope !377
  %i.bs = fsub <4 x float> %i.bp, %i.br           ; 2 uses
  %i.bt = fmul <4 x float> %i.bi, %i.bi
  %i.bu = load ptr, ptr %i.bb, align 8, !tbaa !76, !nonnull !46, !align !53
  %.sroa.016.0.copyload.i = load <4 x float>, ptr %i.bu, align 16, !tbaa !35
  %i.bv = fmul <4 x float> %i.bt, %.sroa.016.0.copyload.i
  %i.bw = fmul <4 x float> %i.bn, %i.bn
  %i.bx = load ptr, ptr %i.bc, align 8, !tbaa !77, !nonnull !46, !align !53
  %.sroa.011.0.copyload.i = load <4 x float>, ptr %i.bx, align 16, !tbaa !35
  %i.by = fmul <4 x float> %i.bw, %.sroa.011.0.copyload.i
  %i.bz = fmul <4 x float> %i.bs, %i.bs
  %i.ca = load ptr, ptr %i.bd, align 8, !tbaa !78, !nonnull !46, !align !53
  %.sroa.06.0.copyload.i = load <4 x float>, ptr %i.ca, align 16, !tbaa !35
  %i.cb = fmul <4 x float> %i.bz, %.sroa.06.0.copyload.i
  %i.cc = fadd <4 x float> %i.by, %i.cb
  %i.cd = fadd <4 x float> %i.bv, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.059.i
  store <4 x float> %i.cd, ptr %i.ce, align 16, !tbaa !35, !alias.scope !378
  %i.cf = add nuw nsw i64 %.059.i, 4              ; 2 uses
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !73, !nonnull !46, !align !47
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !18
  %i.ci = zext i32 %i.ch to i64
  %i.cj = icmp samesign ult i64 %i.cf, %i.ci
  br i1 %i.cj, label %bb.c, label %"_ZZN3jxl6N_SSE222SumOfSquareDifferencesERKNS_6Image3IfEES4_PNS_10ThreadPoolEENK3$_0clEjm.exit", !llvm.loop !2

"_ZZN3jxl6N_SSE222SumOfSquareDifferencesERKNS_6Image3IfEES4_PNS_10ThreadPoolEENK3$_0clEjm.exit": ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl14QuantizedPatchD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.a = load ptr, ptr %.ptr1, align 8, !tbaa !107 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.a, ptr %i.b, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.g) #30
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit: ; preds = %bb.a, %bb.b
  %.ptr1.1 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %.ptr1.1, align 8, !tbaa !107 ; 4 uses
  %.not.i.i.1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.1, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.h, ptr %i.i, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !118
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.n) #30
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.1

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.1: ; preds = %bb.c, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit
  %.ptr1.2 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %.ptr1.2, align 8, !tbaa !107 ; 4 uses
  %.not.i.i.2 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.2, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.o, ptr %i.p, align 8, !tbaa !117
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.u) #30
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.2

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.2: ; preds = %bb.d, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.1
  %.ptr5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %.ptr5, align 8, !tbaa !123 ; 4 uses
  %.not.i.i7 = icmp eq ptr %i.v, null
  br i1 %.not.i.i7, label %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.v, ptr %i.w, align 8, !tbaa !124
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !125
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ab) #30
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.2, %bb.e
  %.ptr5.1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %.ptr5.1, align 8, !tbaa !123 ; 4 uses
  %.not.i.i7.1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i7.1, label %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.1, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !124
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !125
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ai) #30
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.1

_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.1: ; preds = %bb.f, %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit
  %.ptr5.2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %.ptr5.2, align 8, !tbaa !123 ; 4 uses
  %.not.i.i7.2 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i7.2, label %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.2, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !124
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !125
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ap) #30
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.2

_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.2: ; preds = %bb.g, %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentELb0EEEvT1_SO_T0_NS_15iterator_traitsISO_E15difference_typeEb"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 {
bb.a:
  %.sroa.15.i.i.i.i102 = alloca { float, float, float, float, float, float, %"struct.jxl::(anonymous namespace)::Pixel" }, align 8 ; 4 uses
  %.sroa.15.i.i.i.i = alloca { float, float, float, float, float, float, %"struct.jxl::(anonymous namespace)::Pixel" }, align 8 ; 4 uses
  %.sroa.15.i.i.i85 = alloca { float, float, float, float, float, float, %"struct.jxl::(anonymous namespace)::Pixel" }, align 8 ; 4 uses
  %.sroa.20.i.i.i.i = alloca { float, float, float, float, float, float, %"struct.jxl::(anonymous namespace)::Pixel" }, align 8 ; 5 uses
  %.sroa.15.i.i.i = alloca { float, float, float, float, float, float, %"struct.jxl::(anonymous namespace)::Pixel" }, align 8 ; 4 uses
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer"

"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer": ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer.backedge", %bb.a
  %.020.ph.ph = phi ptr [ %0, %bb.a ], [ %.020.ph.ph.be, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer.backedge" ]
  %.017.ph.ph = phi ptr [ %1, %bb.a ], [ %.017, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer.backedge" ]
  %.048.ph.ph = phi i1 [ %3, %bb.a ], [ false, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer.backedge" ] ; 3 uses
  %.046.ph.ph = phi i64 [ %2, %bb.a ], [ %i.jc, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer.backedge" ]
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer"

"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer": ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer", %bb.cb
  %.020.ph = phi ptr [ %.118.lcssa.i, %bb.cb ], [ %.020.ph.ph, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer" ] ; 69 uses
  %.017.ph = phi ptr [ %.017, %bb.cb ], [ %.017.ph.ph, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer" ]
  %.046.ph = phi i64 [ %i.jc, %bb.cb ], [ %.046.ph.ph, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer" ]
  %i.a = ptrtoint ptr %.020.ph to i64             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.020.ph, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %.020.ph, i64 176
  %i.d = getelementptr inbounds nuw i8, ptr %.020.ph, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.020.ph, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.020.ph, i64 56 ; 2 uses
  %i.g = getelementptr i8, ptr %.020.ph, i64 -12
  %i.h = getelementptr i8, ptr %.020.ph, i64 76
  %i.i = getelementptr inbounds nuw i8, ptr %.020.ph, i64 32 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.020.ph, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %.020.ph, i64 48 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.020.ph, i64 56 ; 2 uses
  %.sroa.17.56..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %.020.ph, i64 76
  %.sroa.22.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.020.ph, i64 80
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit"

"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit": ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer", %bb.ca
  %.017 = phi ptr [ %i.np, %bb.ca ], [ %.017.ph, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer" ] ; 28 uses
  %.046 = phi i64 [ %i.jc, %bb.ca ], [ %.046.ph, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer" ] ; 2 uses
  %i.m = ptrtoint ptr %.017 to i64
  %i.n = sub i64 %i.m, %i.a                       ; 4 uses
  %i.o = sdiv exact i64 %i.n, 88                  ; 5 uses
  switch i64 %i.o, label %bb.h [
    i64 0, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.thread"
    i64 1, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.thread"
    i64 2, label %bb.b
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
  ]

bb.b:                                             ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit"
  %i.p = getelementptr i8, ptr %.017, i64 -12
  %.val55 = load float, ptr %i.p, align 4, !tbaa !126
  %i.q = getelementptr i8, ptr %.020.ph, i64 76
  %.val56 = load float, ptr %i.q, align 4, !tbaa !126
  %i.r = fcmp ogt float %.val55, %.val56
  br i1 %i.r, label %bb.c, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.thread"

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %.017, i64 -88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i)
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <4 x i64>, ptr %.020.ph, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.020.ph, i64 32 ; 3 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !91
  %i.v = getelementptr inbounds nuw i8, ptr %.020.ph, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.020.ph, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.020.ph, ptr noundef nonnull align 8 dereferenceable(88) %i.s, i64 32, i1 false), !tbaa.struct !96
  %i.y = getelementptr inbounds i8, ptr %.017, i64 -56 ; 4 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !91
  store <2 x ptr> %i.z, ptr %i.t, align 8, !tbaa !91
  %i.aa = getelementptr inbounds i8, ptr %.017, i64 -40 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !91
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds i8, ptr %.017, i64 -32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  store <4 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.s, align 8
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !90  ; 4 uses
  %.not.i.i.i.i4.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i4.i.i.i, label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds i8, ptr %.017, i64 -48
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !92
  %.val1.i.i.i.i5.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !91
  %i.af = ptrtoint ptr %.val1.i.i.i.i5.i.i.i to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #30
  br label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit

_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit: ; preds = %bb.c, %bb.d
  store <2 x ptr> %i.u, ptr %i.y, align 8, !tbaa !91
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i)
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.thread"

bb.e:                                             ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit"
  %i.ai = getelementptr inbounds nuw i8, ptr %.020.ph, i64 88
  %i.aj = getelementptr inbounds i8, ptr %.017, i64 -88
  tail call fastcc void @"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEjT1_SO_SO_T0_"(ptr noundef %.020.ph, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj) #27
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.thread"

bb.f:                                             ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit"
  %i.ak = getelementptr inbounds nuw i8, ptr %.020.ph, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %.020.ph, i64 176
  %i.am = getelementptr inbounds i8, ptr %.017, i64 -88
  tail call fastcc void @"_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_SO_SO_T0_"(ptr noundef %.020.ph, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, ptr noundef nonnull %i.am) #27
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.thread"

bb.g:                                             ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit"
  %i.an = getelementptr inbounds nuw i8, ptr %.020.ph, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %.020.ph, i64 176
  %i.ap = getelementptr inbounds nuw i8, ptr %.020.ph, i64 264
  %i.aq = getelementptr inbounds i8, ptr %.017, i64 -88
  tail call fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSQ_SQ_SQ_SQ_SQ_SP_"(ptr noundef %.020.ph, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq) #27
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.thread"

bb.h:                                             ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit"
  %i.ar = icmp slt i64 %i.n, 2112
  br i1 %i.ar, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h
  %i.as = icmp eq ptr %.020.ph, %.017
  %storemerge13.i = getelementptr inbounds nuw i8, ptr %.020.ph, i64 88 ; 3 uses
  %.not14.i = icmp eq ptr %storemerge13.i, %.017
  %or.cond.i = select i1 %i.as, i1 true, i1 %.not14.i ; 2 uses
  br i1 %.048.ph.ph, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  br i1 %or.cond.i, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.thread", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.p
  %storemerge16.i = phi ptr [ %storemerge.i, %bb.p ], [ %storemerge13.i, %bb.j ] ; 4 uses
  %.pn15.i = phi ptr [ %storemerge16.i, %bb.p ], [ %.020.ph, %bb.j ] ; 7 uses
  %i.at = getelementptr i8, ptr %.pn15.i, i64 164 ; 2 uses
  %storemerge.val.i = load float, ptr %i.at, align 4, !tbaa !126
  %i.au = getelementptr i8, ptr %.pn15.i, i64 76
  %.pn.val.i = load float, ptr %i.au, align 4, !tbaa !126
  %i.av = fcmp ogt float %storemerge.val.i, %.pn.val.i
  br i1 %i.av, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.lr.ph.i
  %.sroa.0.i.sroa.0.0.copyload = load <4 x i64>, ptr %storemerge16.i, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn15.i, i64 120 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn15.i, i64 128
  %i.az = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn15.i, i64 144
  %.sroa.15.i.sroa.0.0.copyload = load <5 x float>, ptr %i.ba, align 8
  %.sroa.17.56.copyload.i = load float, ptr %i.at, align 4 ; 2 uses
  %.sroa.18.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn15.i, i64 168
  %i.bb = load i64, ptr %.sroa.18.56..sroa_idx.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %.07.i = phi ptr [ %.pn15.i, %bb.k ], [ %i.bq, %bb.n ] ; 10 uses
  %.0.i = phi ptr [ %storemerge16.i, %bb.k ], [ %.07.i, %bb.n ] ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0.i, ptr noundef nonnull align 8 dereferenceable(88) %.07.i, i64 32, i1 false), !tbaa.struct !96
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i, label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 2 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !92
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %.val1.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !91
  %i.bg = ptrtoint ptr %.val1.i.i.i.i.i to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  br label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i

_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i: ; preds = %bb.m, %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.07.i, i64 32 ; 4 uses
  %i.bk = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !91
  store <2 x ptr> %i.bk, ptr %i.bc, align 8, !tbaa !91
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !91
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false)
  %.not17.i = icmp eq ptr %.07.i, %.020.ph
  br i1 %.not17.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i
  %i.bq = getelementptr inbounds i8, ptr %.07.i, i64 -88
  %i.br = getelementptr i8, ptr %.07.i, i64 -12
  %.val18.i = load float, ptr %i.br, align 4, !tbaa !126
  %i.bs = fcmp ogt float %.sroa.17.56.copyload.i, %.val18.i
  br i1 %i.bs, label %bb.l, label %.critedge.i, !llvm.loop !379

.critedge.i:                                      ; preds = %bb.n, %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i
  %.07.lcssa.i = phi ptr [ %.020.ph, %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i ], [ %.07.i, %bb.n ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 40 ; 2 uses
  store <4 x i64> %.sroa.0.i.sroa.0.0.copyload, ptr %.07.lcssa.i, align 8
  %i.bu = load ptr, ptr %i.bj, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i21.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i21.i, label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %.critedge.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.i, i64 40
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !92
  %.val1.i.i.i.i22.i = load ptr, ptr %i.bv, align 8, !tbaa !91
  %i.bx = ptrtoint ptr %.val1.i.i.i.i22.i to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  br label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i

_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i: ; preds = %bb.o, %.critedge.i
  store ptr %i.ax, ptr %i.bj, align 8, !tbaa !90
  store <2 x ptr> %i.az, ptr %i.bt, align 8, !tbaa !91
  store <5 x float> %.sroa.15.i.sroa.0.0.copyload, ptr %i.bp, align 8
  %.sroa.17.56..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 76
  store float %.sroa.17.56.copyload.i, ptr %.sroa.17.56..sroa_idx2.i, align 4
  %.sroa.18.56..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 80
  store i64 %i.bb, ptr %.sroa.18.56..sroa_idx4.i, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i, %.lr.ph.i
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge16.i, i64 88 ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i, %.017
  br i1 %.not.i, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.thread", label %.lr.ph.i, !llvm.loop !380

bb.q:                                             ; preds = %bb.i
  br i1 %or.cond.i, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.thread", label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.q, %bb.w
  %storemerge16.i67 = phi ptr [ %storemerge.i71, %bb.w ], [ %storemerge13.i, %bb.q ] ; 4 uses
  %.pn15.i68 = phi ptr [ %storemerge16.i67, %bb.w ], [ %.020.ph, %bb.q ] ; 7 uses
  %i.ca = getelementptr i8, ptr %.pn15.i68, i64 164 ; 2 uses
  %storemerge.val.i69 = load float, ptr %i.ca, align 4, !tbaa !126
  %i.cb = getelementptr i8, ptr %.pn15.i68, i64 76
  %.pn.val.i70 = load float, ptr %i.cb, align 4, !tbaa !126
  %i.cc = fcmp ogt float %storemerge.val.i69, %.pn.val.i70
  br i1 %i.cc, label %bb.r, label %bb.w

bb.r:                                             ; preds = %.lr.ph.i66
  %.sroa.0.i61.sroa.0.0.copyload = load <4 x i64>, ptr %storemerge16.i67, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.pn15.i68, i64 120 ; 2 uses
  %i.ce = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !91
  %i.cf = getelementptr inbounds nuw i8, ptr %.pn15.i68, i64 136
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i8 0, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn15.i68, i64 144
  %.sroa.15.i62.sroa.0.0.copyload = load <5 x float>, ptr %i.ch, align 8
  %.sroa.17.56.copyload.i73 = load float, ptr %i.ca, align 4 ; 2 uses
  %.sroa.18.56..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %.pn15.i68, i64 168
  %i.ci = load i64, ptr %.sroa.18.56..sroa_idx.i74, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i79, %bb.r
  %.07.i75 = phi ptr [ %.pn15.i68, %bb.r ], [ %i.cx, %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i79 ] ; 12 uses
  %.0.i76 = phi ptr [ %storemerge16.i67, %bb.r ], [ %.07.i75, %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i79 ] ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0.i76, ptr noundef nonnull align 8 dereferenceable(88) %.07.i75, i64 32, i1 false), !tbaa.struct !96
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i76, i64 32 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i.i77 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i77, label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i79, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i76, i64 40 ; 2 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !92
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i76, i64 48
  %.val1.i.i.i.i.i78 = load ptr, ptr %i.cm, align 8, !tbaa !91
  %i.cn = ptrtoint ptr %.val1.i.i.i.i.i78 to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  br label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i79

_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i79: ; preds = %bb.t, %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i75, i64 32 ; 4 uses
  %i.cr = load <2 x ptr>, ptr %i.cq, align 8, !tbaa !91
  store <2 x ptr> %i.cr, ptr %i.cj, align 8, !tbaa !91
  %i.cs = getelementptr inbounds nuw i8, ptr %.07.i75, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !91
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i76, i64 48
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i76, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %.07.i75, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i64 32, i1 false)
  %i.cx = getelementptr inbounds i8, ptr %.07.i75, i64 -88
  %i.cy = getelementptr i8, ptr %.07.i75, i64 -12
  %.val14.i = load float, ptr %i.cy, align 4, !tbaa !126
  %i.cz = fcmp ogt float %.sroa.17.56.copyload.i73, %.val14.i
  br i1 %i.cz, label %bb.s, label %bb.u, !llvm.loop !381

bb.u:                                             ; preds = %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i79
  %i.da = getelementptr inbounds nuw i8, ptr %.07.i75, i64 48 ; 2 uses
  store <4 x i64> %.sroa.0.i61.sroa.0.0.copyload, ptr %.07.i75, align 8
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i17.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i17.i, label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i80, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %.07.i75, i64 40
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !92
  %.val1.i.i.i.i18.i = load ptr, ptr %i.da, align 8, !tbaa !91
  %i.dd = ptrtoint ptr %.val1.i.i.i.i18.i to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  tail call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.df) #30
  br label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i80

_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i80: ; preds = %bb.v, %bb.u
  store <2 x ptr> %i.ce, ptr %i.cq, align 8, !tbaa !91
  store ptr %i.cg, ptr %i.da, align 8, !tbaa !91
  store <5 x float> %.sroa.15.i62.sroa.0.0.copyload, ptr %i.cw, align 8
  %.sroa.17.56..sroa_idx2.i81 = getelementptr inbounds nuw i8, ptr %.07.i75, i64 76
  store float %.sroa.17.56.copyload.i73, ptr %.sroa.17.56..sroa_idx2.i81, align 4
  %.sroa.18.56..sroa_idx4.i82 = getelementptr inbounds nuw i8, ptr %.07.i75, i64 80
  store i64 %i.ci, ptr %.sroa.18.56..sroa_idx4.i82, align 8
  br label %bb.w

bb.w:                                             ; preds = %_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i80, %.lr.ph.i66
  %storemerge.i71 = getelementptr inbounds nuw i8, ptr %storemerge16.i67, i64 88 ; 2 uses
  %.not.i72 = icmp eq ptr %storemerge.i71, %.017
  br i1 %.not.i72, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.thread", label %.lr.ph.i66, !llvm.loop !382

bb.x:                                             ; preds = %bb.h
  %i.dg = icmp eq i64 %.046, 0
  br i1 %i.dg, label %bb.y, label %bb.bb

bb.y:                                             ; preds = %bb.x
  %i.dh = add nsw i64 %i.o, -2
  %i.di = lshr i64 %i.dh, 1                       ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_OT0_NS_15iterator_traitsISO_E15difference_typeESO_.exit", %bb.y
  %.01.i.i.i = phi i64 [ %i.di, %bb.y ], [ %i.fg, %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_OT0_NS_15iterator_traitsISO_E15difference_typeESO_.exit" ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [88 x i8], ptr %.020.ph, i64 %.01.i.i.i ; 7 uses
  %i.dk = shl nsw i64 %.01.i.i.i, 1               ; 2 uses
  %i.dl = or disjoint i64 %i.dk, 1                ; 3 uses
  %i.dm = getelementptr inbounds [88 x i8], ptr %.020.ph, i64 %i.dl ; 4 uses
  %i.dn = add nsw i64 %i.dk, 2                    ; 2 uses
  %i.do = icmp slt i64 %i.dn, %i.o
  br i1 %i.do, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dp = getelementptr i8, ptr %i.dm, i64 76
  %.val31.i = load float, ptr %i.dp, align 4, !tbaa !126
  %i.dq = getelementptr i8, ptr %i.dm, i64 164
  %.val32.i = load float, ptr %i.dq, align 4, !tbaa !126
  %i.dr = fcmp ogt float %.val31.i, %.val32.i     ; 2 uses
  %spec.select.idx.i = select i1 %i.dr, i64 88, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 %spec.select.idx.i
  %spec.select16.i = select i1 %i.dr, i64 %i.dn, i64 %i.dl
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.012.i = phi ptr [ %i.dm, %bb.z ], [ %spec.select.i, %bb.aa ] ; 2 uses
  %.0.i127 = phi i64 [ %i.dl, %bb.z ], [ %spec.select16.i, %bb.aa ]
  %i.ds = getelementptr i8, ptr %.012.i, i64 76
  %.val29.i = load float, ptr %i.ds, align 4, !tbaa !126
  %i.dt = getelementptr i8, ptr %i.dj, i64 76
  %.val30.i = load float, ptr %i.dt, align 4, !tbaa !126 ; 3 uses
  %i.du = fcmp ogt float %.val29.i, %.val30.i
  br i1 %i.du, label %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_OT0_NS_15iterator_traitsISO_E15difference_typeESO_.exit", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.0.i125.sroa.0.0.copyload = load <4 x i64>, ptr %i.dj, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 2 uses
  %i.dw = load <2 x ptr>, ptr %i.dv, align 8, !tbaa !91
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i8 0, i64 24, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %.sroa.15.i126.sroa.0.0.copyload = load <5 x float>, ptr %i.dz, align 8
  %.sroa.18.56..sroa_idx.i128 = getelementptr inbounds nuw i8, ptr %i.dj, i64 80
  %i.ea = load i64, ptr %.sroa.18.56..sroa_idx.i128, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %bb.ac
  %.015.i = phi ptr [ %i.dj, %bb.ac ], [ %.113.i, %bb.ah ] ; 6 uses
  %.113.i = phi ptr [ %.012.i, %bb.ac ], [ %.214.i, %bb.ah ] ; 10 uses
  %.1.i129 = phi i64 [ %.0.i127, %bb.ac ], [ %.2.i133, %bb.ah ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.015.i, ptr noundef nonnull align 8 dereferenceable(88) %.113.i, i64 32, i1 false), !tbaa.struct !96
  %i.eb = getelementptr inbounds nuw i8, ptr %.015.i, i64 32 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i.i130 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i130, label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i132, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !92
  %i.ee = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %.val1.i.i.i.i.i131 = load ptr, ptr %i.ee, align 8, !tbaa !91
  %i.ef = ptrtoint ptr %.val1.i.i.i.i.i131 to i64
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = sub i64 %i.ef, %i.eg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eh) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i8 0, i64 24, i1 false)
  br label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i132

_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i132: ; preds = %bb.ae, %bb.ad
  %i.ei = getelementptr inbounds nuw i8, ptr %.113.i, i64 32 ; 4 uses
  %i.ej = load <2 x ptr>, ptr %i.ei, align 8, !tbaa !91
  store <2 x ptr> %i.ej, ptr %i.eb, align 8, !tbaa !91
  %i.ek = getelementptr inbounds nuw i8, ptr %.113.i, i64 48
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !91
  %i.em = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  store ptr %i.el, ptr %i.em, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i8 0, i64 24, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %.015.i, i64 56
  %i.eo = getelementptr inbounds nuw i8, ptr %.113.i, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.en, ptr noundef nonnull align 8 dereferenceable(32) %i.eo, i64 32, i1 false)
  %i.ep = icmp slt i64 %i.di, %.1.i129
  br i1 %i.ep, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i132
  %i.eq = shl nsw i64 %.1.i129, 1                 ; 2 uses
  %i.er = or disjoint i64 %i.eq, 1                ; 3 uses
  %i.es = getelementptr inbounds [88 x i8], ptr %.020.ph, i64 %i.er ; 4 uses
  %i.et = add nsw i64 %i.eq, 2                    ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.o
  br i1 %i.eu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ev = getelementptr i8, ptr %i.es, i64 76
  %.val27.i = load float, ptr %i.ev, align 4, !tbaa !126
  %i.ew = getelementptr i8, ptr %i.es, i64 164
  %.val28.i = load float, ptr %i.ew, align 4, !tbaa !126
  %i.ex = fcmp ogt float %.val27.i, %.val28.i     ; 2 uses
  %spec.select17.idx.i = select i1 %i.ex, i64 88, i64 0
  %spec.select17.i = getelementptr inbounds nuw i8, ptr %i.es, i64 %spec.select17.idx.i
  %spec.select18.i = select i1 %i.ex, i64 %i.et, i64 %i.er
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.214.i = phi ptr [ %i.es, %bb.af ], [ %spec.select17.i, %bb.ag ] ; 2 uses
  %.2.i133 = phi i64 [ %i.er, %bb.af ], [ %spec.select18.i, %bb.ag ]
  %i.ey = getelementptr i8, ptr %.214.i, i64 76
  %.val.i134 = load float, ptr %i.ey, align 4, !tbaa !126
  %i.ez = fcmp ogt float %.val.i134, %.val30.i
  br i1 %i.ez, label %bb.ai, label %bb.ad, !llvm.loop !383

bb.ai:                                            ; preds = %bb.ah, %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i132
  %i.fa = getelementptr inbounds nuw i8, ptr %.113.i, i64 48 ; 2 uses
  store <4 x i64> %.sroa.0.i125.sroa.0.0.copyload, ptr %.113.i, align 8
  %i.fb = load ptr, ptr %i.ei, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i35.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i35.i, label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i135, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fc = getelementptr inbounds nuw i8, ptr %.113.i, i64 40
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !92
  %.val1.i.i.i.i36.i = load ptr, ptr %i.fa, align 8, !tbaa !91
  %i.fd = ptrtoint ptr %.val1.i.i.i.i36.i to i64
  %i.fe = ptrtoint ptr %i.fb to i64
  %i.ff = sub i64 %i.fd, %i.fe
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.ff) #30
  br label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i135

_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i135: ; preds = %bb.aj, %bb.ai
  store <2 x ptr> %i.dw, ptr %i.ei, align 8, !tbaa !91
  store ptr %i.dy, ptr %i.fa, align 8, !tbaa !91
  store <5 x float> %.sroa.15.i126.sroa.0.0.copyload, ptr %i.eo, align 8
  %.sroa.17.56..sroa_idx2.i136 = getelementptr inbounds nuw i8, ptr %.113.i, i64 76
  store float %.val30.i, ptr %.sroa.17.56..sroa_idx2.i136, align 4
  %.sroa.18.56..sroa_idx4.i137 = getelementptr inbounds nuw i8, ptr %.113.i, i64 80
  store i64 %i.ea, ptr %.sroa.18.56..sroa_idx4.i137, align 8
  br label %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_OT0_NS_15iterator_traitsISO_E15difference_typeESO_.exit"

"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_OT0_NS_15iterator_traitsISO_E15difference_typeESO_.exit": ; preds = %bb.ab, %_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i135
  %i.fg = add nsw i64 %.01.i.i.i, -1
  %.not.i.i.i = icmp eq i64 %.01.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %bb.z, !llvm.loop !384

.lr.ph.i.i.i:                                     ; preds = %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_OT0_NS_15iterator_traitsISO_E15difference_typeESO_.exit"
  %i.fh = udiv exact i64 %i.n, 88
  %i.fi = getelementptr inbounds nuw i8, ptr %.020.ph, i64 32 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.020.ph, i64 40
  %i.fk = getelementptr inbounds nuw i8, ptr %.020.ph, i64 48
  %i.fl = getelementptr inbounds nuw i8, ptr %.020.ph, i64 56
  br label %bb.ak

bb.ak:                                            ; preds = %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SN_RT0_NS_15iterator_traitsISN_E15difference_typeE.exit.i.i.i", %.lr.ph.i.i.i
  %.014.i.i.i = phi i64 [ %i.fh, %.lr.ph.i.i.i ], [ %i.ja, %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SN_RT0_NS_15iterator_traitsISN_E15difference_typeE.exit.i.i.i" ] ; 4 uses
  %.01312.i.i.i = phi ptr [ %.017, %.lr.ph.i.i.i ], [ %i.gs, %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SN_RT0_NS_15iterator_traitsISN_E15difference_typeE.exit.i.i.i" ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.i.i.i.i)
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <4 x i64>, ptr %.020.ph, align 8 ; 2 uses
  %i.fm = load ptr, ptr %i.fi, align 8, !tbaa !90 ; 2 uses
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !92 ; 2 uses
  %i.fo = load ptr, ptr %i.fk, align 8, !tbaa !91 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.20.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fl, i64 32, i1 false)
  %i.fp = add nsw i64 %.014.i.i.i, -2
  %i.fq = lshr i64 %i.fp, 1
  br label %bb.al

bb.al:                                            ; preds = %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i.i.i.i.i, %bb.ak
  %.03.i.i.i.i.i = phi ptr [ %.020.ph, %bb.ak ], [ %.14.i.i.i.i.i, %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i.i.i.i.i ] ; 7 uses
  %.0.i.i.i.i.i = phi i64 [ 0, %bb.ak ], [ %.1.i.i.i.i.i, %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i.i.i.i.i ] ; 2 uses
  %i.fr = getelementptr [88 x i8], ptr %.03.i.i.i.i.i, i64 %.0.i.i.i.i.i ; 4 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 88     ; 2 uses
  %i.ft = shl nsw i64 %.0.i.i.i.i.i, 1            ; 2 uses
  %i.fu = or disjoint i64 %i.ft, 1                ; 2 uses
  %i.fv = add nsw i64 %i.ft, 2                    ; 2 uses
  %i.fw = icmp slt i64 %i.fv, %.014.i.i.i
  br i1 %i.fw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fx = getelementptr i8, ptr %i.fr, i64 164
  %.val.i.i.i.i.i = load float, ptr %i.fx, align 4, !tbaa !126
  %i.fy = getelementptr i8, ptr %i.fr, i64 252
  %.val13.i.i.i.i.i = load float, ptr %i.fy, align 4, !tbaa !126
  %i.fz = fcmp ogt float %.val.i.i.i.i.i, %.val13.i.i.i.i.i ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fr, i64 176
  %spec.select.i.i.i.i.i = select i1 %i.fz, ptr %i.ga, ptr %i.fs
  %spec.select5.i.i.i.i.i = select i1 %i.fz, i64 %i.fv, i64 %i.fu
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.14.i.i.i.i.i = phi ptr [ %i.fs, %bb.al ], [ %spec.select.i.i.i.i.i, %bb.am ] ; 15 uses
  %.1.i.i.i.i.i = phi i64 [ %i.fu, %bb.al ], [ %spec.select5.i.i.i.i.i, %bb.am ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.03.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.14.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !96
  %i.gb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 32 ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
end_hunk_0
begin_hunk_1_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentELb0EEEvT1_SO_T0_NS_15iterator_traitsISO_E15difference_typeEb":bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i8 0, i64 24, i1 false)
  br label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i.i.i.i.i

_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.ao, %bb.an
  %i.gi = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 32 ; 9 uses
  %i.gj = load <2 x ptr>, ptr %i.gi, align 8, !tbaa !91
  store <2 x ptr> %i.gj, ptr %i.gb, align 8, !tbaa !91
  %i.gk = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 48
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !91
  %i.gm = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 48
  store ptr %i.gl, ptr %i.gm, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gi, i8 0, i64 24, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 56
  %i.go = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 56 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %i.go, i64 32, i1 false)
  %i.gp = icmp sgt i64 %.1.i.i.i.i.i, %i.fq
  br i1 %i.gp, label %"_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEET1_SO_OT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i.i", label %bb.al, !llvm.loop !385

"_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEET1_SO_OT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i.i": ; preds = %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 40 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 48 ; 5 uses
  %i.gs = getelementptr inbounds i8, ptr %.01312.i.i.i, i64 -88 ; 4 uses
  %i.gt = icmp eq ptr %.14.i.i.i.i.i, %i.gs
  br i1 %i.gt, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %"_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEET1_SO_OT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i.i"
  store <4 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %.14.i.i.i.i.i, align 8
  %i.gu = load ptr, ptr %i.gi, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.gu, ptr %i.gq, align 8, !tbaa !92
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.gr, align 8, !tbaa !91
  %i.gv = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.gx) #30
  br label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i.i.i.i

_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i.i.i.i: ; preds = %bb.aq, %bb.ap
  store ptr %i.fm, ptr %i.gi, align 8, !tbaa !90
  store ptr %i.fn, ptr %i.gq, align 8, !tbaa !92
  store ptr %i.fo, ptr %i.gr, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.20.i.i.i.i, i64 32, i1 false)
  br label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SN_RT0_NS_15iterator_traitsISN_E15difference_typeE.exit.i.i.i"

bb.ar:                                            ; preds = %"_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEET1_SO_OT0_NS_15iterator_traitsISO_E15difference_typeE.exit.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.14.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.gs, i64 32, i1 false), !tbaa.struct !96
  %i.gy = load ptr, ptr %i.gi, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i12.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i12.i.i.i.i, label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit14.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store ptr %i.gy, ptr %i.gq, align 8, !tbaa !92
  %.val1.i.i.i.i13.i.i.i.i = load ptr, ptr %i.gr, align 8, !tbaa !91
  %i.gz = ptrtoint ptr %.val1.i.i.i.i13.i.i.i.i to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hb) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gi, i8 0, i64 24, i1 false)
  br label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit14.i.i.i.i

_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit14.i.i.i.i: ; preds = %bb.as, %bb.ar
  %i.hc = getelementptr inbounds i8, ptr %.01312.i.i.i, i64 -56 ; 4 uses
  %i.hd = getelementptr inbounds i8, ptr %.01312.i.i.i, i64 -48 ; 2 uses
  %i.he = load <2 x ptr>, ptr %i.hc, align 8, !tbaa !91
  store <2 x ptr> %i.he, ptr %i.gi, align 8, !tbaa !91
  %i.hf = getelementptr inbounds i8, ptr %.01312.i.i.i, i64 -40 ; 3 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !91
  store ptr %i.hg, ptr %i.gr, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i8 0, i64 24, i1 false)
  %i.hh = getelementptr inbounds i8, ptr %.01312.i.i.i, i64 -32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %i.hh, i64 32, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 88
  store <4 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.gs, align 8
  %i.hj = load ptr, ptr %i.hc, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i15.i.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i15.i.i.i.i, label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit17.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit14.i.i.i.i
  store ptr %i.hj, ptr %i.hd, align 8, !tbaa !92
  %.val1.i.i.i.i16.i.i.i.i = load ptr, ptr %i.hf, align 8, !tbaa !91
  %i.hk = ptrtoint ptr %.val1.i.i.i.i16.i.i.i.i to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.hm) #30
  br label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit17.i.i.i.i

_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit17.i.i.i.i: ; preds = %bb.at, %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit14.i.i.i.i
  store ptr %i.fm, ptr %i.hc, align 8, !tbaa !90
  store ptr %i.fn, ptr %i.hd, align 8, !tbaa !92
  store ptr %i.fo, ptr %i.hf, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.20.i.i.i.i, i64 32, i1 false)
  %i.hn = ptrtoint ptr %i.hi to i64
  %i.ho = sub i64 %i.hn, %i.a                     ; 2 uses
  %i.hp = icmp sgt i64 %i.ho, 88
  br i1 %i.hp, label %bb.au, label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SN_RT0_NS_15iterator_traitsISN_E15difference_typeE.exit.i.i.i"

bb.au:                                            ; preds = %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit17.i.i.i.i
  %i.hq = udiv exact i64 %i.ho, 88
  %i.hr = add nsw i64 %i.hq, -2
  %i.hs = lshr i64 %i.hr, 1                       ; 2 uses
  %i.ht = getelementptr inbounds nuw [88 x i8], ptr %.020.ph, i64 %i.hs ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 76
  %.val11.i.i.i.i.i = load float, ptr %i.hu, align 4, !tbaa !126
  %i.hv = getelementptr i8, ptr %.14.i.i.i.i.i, i64 76
  %.val12.i.i.i.i.i = load float, ptr %i.hv, align 4, !tbaa !126 ; 3 uses
  %i.hw = fcmp ogt float %.val11.i.i.i.i.i, %.val12.i.i.i.i.i
  br i1 %i.hw, label %bb.av, label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SN_RT0_NS_15iterator_traitsISN_E15difference_typeE.exit.i.i.i"

bb.av:                                            ; preds = %bb.au
  %.sroa.0.i.i.i18.i.i.sroa.0.0.copyload = load <4 x i64>, ptr %.14.i.i.i.i.i, align 8
  %i.hx = load <2 x ptr>, ptr %i.gi, align 8, !tbaa !91
  %i.hy = load ptr, ptr %i.gr, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gi, i8 0, i64 24, i1 false)
  %.sroa.15.i.i.i19.i.i.sroa.0.0.copyload = load <5 x float>, ptr %i.go, align 8
  %.sroa.18.56..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i.i, i64 80
  %i.hz = load i64, ptr %.sroa.18.56..sroa_idx.i.i.i.i.i, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %bb.av
  %.09.i.i.i.i.i = phi ptr [ %.14.i.i.i.i.i, %bb.av ], [ %.08.i.i.i.i.i, %bb.ay ] ; 6 uses
  %.08.i.i.i.i.i = phi ptr [ %i.ht, %bb.av ], [ %i.ir, %bb.ay ] ; 10 uses
  %.0.i18.i.i.i.i = phi i64 [ %i.hs, %bb.av ], [ %i.iq, %bb.ay ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.08.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !96
  %i.ia = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 32 ; 3 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i.i19.i.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i.i19.i.i.i.i, label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i21.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ic = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 40
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !92
  %i.id = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 48
  %.val1.i.i.i.i.i20.i.i.i.i = load ptr, ptr %i.id, align 8, !tbaa !91
  %i.ie = ptrtoint ptr %.val1.i.i.i.i.i20.i.i.i.i to i64
  %i.if = ptrtoint ptr %i.ib to i64
  %i.ig = sub i64 %i.ie, %i.if
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef %i.ig) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ia, i8 0, i64 24, i1 false)
  br label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i21.i.i.i.i

_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i21.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %i.ih = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32 ; 4 uses
  %i.ii = load <2 x ptr>, ptr %i.ih, align 8, !tbaa !91
  store <2 x ptr> %i.ii, ptr %i.ia, align 8, !tbaa !91
  %i.ij = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !91
  %i.il = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 48
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, i8 0, i64 24, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 56
  %i.in = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.im, ptr noundef nonnull align 8 dereferenceable(32) %i.in, i64 32, i1 false)
  %i.io = icmp eq i64 %.0.i18.i.i.i.i, 0
  br i1 %i.io, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i21.i.i.i.i
  %i.ip = add nsw i64 %.0.i18.i.i.i.i, -1
  %i.iq = lshr i64 %i.ip, 1                       ; 2 uses
  %i.ir = getelementptr inbounds nuw [88 x i8], ptr %.020.ph, i64 %i.iq ; 2 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 76
  %.val.i22.i.i.i.i = load float, ptr %i.is, align 4, !tbaa !126
  %i.it = fcmp ogt float %.val.i22.i.i.i.i, %.val12.i.i.i.i.i
  br i1 %i.it, label %bb.aw, label %bb.az, !llvm.loop !386

bb.az:                                            ; preds = %bb.ay, %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i21.i.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store <4 x i64> %.sroa.0.i.i.i18.i.i.sroa.0.0.copyload, ptr %.08.i.i.i.i.i, align 8
  %i.iv = load ptr, ptr %i.ih, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i15.i.i.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i15.i.i.i.i.i, label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.iw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !92
  %.val1.i.i.i.i16.i.i.i.i.i = load ptr, ptr %i.iu, align 8, !tbaa !91
  %i.ix = ptrtoint ptr %.val1.i.i.i.i16.i.i.i.i.i to i64
  %i.iy = ptrtoint ptr %i.iv to i64
  %i.iz = sub i64 %i.ix, %i.iy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.iz) #30
  br label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i.i.i.i.i

_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i.i.i.i.i: ; preds = %bb.ba, %bb.az
  store <2 x ptr> %i.hx, ptr %i.ih, align 8, !tbaa !91
  store ptr %i.hy, ptr %i.iu, align 8, !tbaa !91
  store <5 x float> %.sroa.15.i.i.i19.i.i.sroa.0.0.copyload, ptr %i.in, align 8
  %.sroa.17.56..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 76
  store float %.val12.i.i.i.i.i, ptr %.sroa.17.56..sroa_idx2.i.i.i.i.i, align 4
  %.sroa.18.56..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  store i64 %i.hz, ptr %.sroa.18.56..sroa_idx4.i.i.i.i.i, align 8
  br label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SN_RT0_NS_15iterator_traitsISN_E15difference_typeE.exit.i.i.i"

"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SN_RT0_NS_15iterator_traitsISN_E15difference_typeE.exit.i.i.i": ; preds = %_ZN3jxl12_GLOBAL__N_118ConnectedComponentD2Ev.exit.i.i.i.i.i, %bb.au, %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit17.i.i.i.i, %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i.i.i.i)
  %i.ja = add nsw i64 %.014.i.i.i, -1
  %i.jb = icmp sgt i64 %.014.i.i.i, 2
  br i1 %i.jb, label %bb.ak, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.thread", !llvm.loop !387

bb.bb:                                            ; preds = %bb.x
  %i.jc = add nsw i64 %.046, -1                   ; 4 uses
  %i.jd = lshr i64 %i.o, 1
  %i.je = icmp samesign ugt i64 %i.n, 11264
  %i.jf = getelementptr [88 x i8], ptr %.020.ph, i64 %i.jd ; 10 uses
  %i.jg = getelementptr inbounds i8, ptr %.017, i64 -88 ; 2 uses
  br i1 %i.je, label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES7_EEvOT_OT0_.exit, label %bb.bc

_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES7_EEvOT_OT0_.exit: ; preds = %bb.bb
  tail call fastcc void @"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEjT1_SO_SO_T0_"(ptr noundef %.020.ph, ptr noundef %i.jf, ptr noundef nonnull %i.jg) #27
  %i.jh = getelementptr i8, ptr %i.jf, i64 -88    ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %.017, i64 -176
  tail call fastcc void @"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEjT1_SO_SO_T0_"(ptr noundef nonnull %i.b, ptr noundef %i.jh, ptr noundef nonnull %i.ji) #27
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 88 ; 2 uses
  %i.jk = getelementptr inbounds i8, ptr %.017, i64 -264
  tail call fastcc void @"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEjT1_SO_SO_T0_"(ptr noundef nonnull %i.c, ptr noundef nonnull %i.jj, ptr noundef nonnull %i.jk) #27
  tail call fastcc void @"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEjT1_SO_SO_T0_"(ptr noundef %i.jh, ptr noundef %i.jf, ptr noundef nonnull %i.jj) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i85)
  %.sroa.0.i.i.i84.sroa.0.0.copyload = load <4 x i64>, ptr %.020.ph, align 8
  %i.jl = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 32 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jf, i64 48 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jf, i64 56 ; 2 uses
  %i.jp = load <2 x ptr>, ptr %i.d, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i85, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.020.ph, ptr noundef nonnull align 8 dereferenceable(88) %i.jf, i64 32, i1 false), !tbaa.struct !96
  %i.jq = load <2 x ptr>, ptr %i.jm, align 8, !tbaa !91
  store <2 x ptr> %i.jq, ptr %i.d, align 8, !tbaa !91
  %i.jr = load ptr, ptr %i.jn, align 8, !tbaa !91
  store ptr %i.jr, ptr %i.e, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jm, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.jo, i64 32, i1 false)
  store <4 x i64> %.sroa.0.i.i.i84.sroa.0.0.copyload, ptr %i.jf, align 8
  store <2 x ptr> %i.jp, ptr %i.jm, align 8, !tbaa !91
  store ptr %i.jl, ptr %i.jn, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jo, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i85, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i85)
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEjT1_SO_SO_T0_"(ptr noundef %i.jf, ptr noundef %.020.ph, ptr noundef nonnull %i.jg) #27
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES7_EEvOT_OT0_.exit
  br i1 %.048.ph.ph, label %bb.bo, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.val = load float, ptr %i.g, align 4, !tbaa !126
  %.val54 = load float, ptr %i.h, align 4, !tbaa !126
  %i.js = fcmp ogt float %.val, %.val54
  br i1 %i.js, label %bb.bo, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jt = getelementptr i8, ptr %.020.ph, i64 76
  %.sroa.0.i89.sroa.0.0.copyload = load <4 x i64>, ptr %.020.ph, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %.020.ph, i64 32 ; 5 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.020.ph, i64 40
  %i.jw = load <2 x ptr>, ptr %i.ju, align 8, !tbaa !91
  %i.jx = getelementptr inbounds nuw i8, ptr %.020.ph, i64 48 ; 3 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ju, i8 0, i64 24, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %.020.ph, i64 56 ; 2 uses
  %.sroa.15.i90.sroa.0.0.copyload = load <5 x float>, ptr %i.jz, align 8
  %.sroa.17.56.copyload.i91 = load float, ptr %i.jt, align 4 ; 7 uses
  %.sroa.23.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.020.ph, i64 80
  %i.ka = load i64, ptr %.sroa.23.56..sroa_idx.i, align 8
  %i.kb = getelementptr i8, ptr %.017, i64 -12
  %.val19.i = load float, ptr %i.kb, align 4, !tbaa !126
  %i.kc = fcmp ogt float %.sroa.17.56.copyload.i91, %.val19.i
  br i1 %i.kc, label %.preheader23.i, label %.preheader24.i

.preheader23.i:                                   ; preds = %bb.bf, %.preheader23.i
  %.018.i = phi ptr [ %i.kd, %.preheader23.i ], [ %.020.ph, %bb.bf ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.018.i, i64 88 ; 2 uses
  %i.ke = getelementptr i8, ptr %.018.i, i64 164
  %.val17.i = load float, ptr %i.ke, align 4, !tbaa !126
  %i.kf = fcmp ogt float %.sroa.17.56.copyload.i91, %.val17.i
  br i1 %i.kf, label %.critedge.i92, label %.preheader23.i, !llvm.loop !388

.preheader24.i:                                   ; preds = %bb.bf, %bb.bg
  %.119.i = phi ptr [ %i.kg, %bb.bg ], [ %.020.ph, %bb.bf ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.119.i, i64 88 ; 4 uses
  %i.kh = icmp ult ptr %i.kg, %.017
  br i1 %i.kh, label %bb.bg, label %.critedge.i92

bb.bg:                                            ; preds = %.preheader24.i
  %i.ki = getelementptr i8, ptr %.119.i, i64 164
  %.val15.i = load float, ptr %i.ki, align 4, !tbaa !126
  %i.kj = fcmp ogt float %.sroa.17.56.copyload.i91, %.val15.i
  br i1 %i.kj, label %.critedge.i92, label %.preheader24.i, !llvm.loop !389

.critedge.i92:                                    ; preds = %bb.bg, %.preheader24.i, %.preheader23.i
  %.220.i = phi ptr [ %i.kd, %.preheader23.i ], [ %i.kg, %.preheader24.i ], [ %i.kg, %bb.bg ] ; 4 uses
  %i.kk = icmp ult ptr %.220.i, %.017
  br i1 %i.kk, label %.preheader22.i, label %.loopexit.i

.preheader22.i:                                   ; preds = %.critedge.i92, %.preheader22.i
  %.0.i100 = phi ptr [ %i.kl, %.preheader22.i ], [ %.017, %.critedge.i92 ] ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %.0.i100, i64 -88 ; 2 uses
  %i.km = getelementptr i8, ptr %.0.i100, i64 -12
  %.val13.i = load float, ptr %i.km, align 4, !tbaa !126
  %i.kn = fcmp ogt float %.sroa.17.56.copyload.i91, %.val13.i
  br i1 %i.kn, label %.preheader22.i, label %.loopexit.i, !llvm.loop !390

.loopexit.i:                                      ; preds = %.preheader22.i, %.critedge.i92
  %.1.i = phi ptr [ %.017, %.critedge.i92 ], [ %i.kl, %.preheader22.i ] ; 2 uses
  %i.ko = icmp ult ptr %.220.i, %.1.i
  br i1 %i.ko, label %.lr.ph.i99, label %._crit_edge.i

.lr.ph.i99:                                       ; preds = %.loopexit.i, %bb.bj
  %.231.i = phi ptr [ %i.lh, %bb.bj ], [ %.1.i, %.loopexit.i ] ; 7 uses
  %.32130.i = phi ptr [ %i.le, %bb.bj ], [ %.220.i, %.loopexit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i.i)
  %.sroa.0.i.i.i.i88.sroa.0.0.copyload = load <4 x i64>, ptr %.32130.i, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %.32130.i, i64 32 ; 3 uses
  %i.kq = load <2 x ptr>, ptr %i.kp, align 8, !tbaa !91
  %i.kr = getelementptr inbounds nuw i8, ptr %.32130.i, i64 48 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kp, i8 0, i64 24, i1 false)
  %i.kt = getelementptr inbounds nuw i8, ptr %.32130.i, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.kt, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.32130.i, ptr noundef nonnull align 8 dereferenceable(88) %.231.i, i64 32, i1 false), !tbaa.struct !96
  %i.ku = getelementptr inbounds nuw i8, ptr %.231.i, i64 32 ; 4 uses
  %i.kv = load <2 x ptr>, ptr %i.ku, align 8, !tbaa !91
  store <2 x ptr> %i.kv, ptr %i.kp, align 8, !tbaa !91
  %i.kw = getelementptr inbounds nuw i8, ptr %.231.i, i64 48 ; 3 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !91
  store ptr %i.kx, ptr %i.kr, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ku, i8 0, i64 24, i1 false)
  %i.ky = getelementptr inbounds nuw i8, ptr %.231.i, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kt, ptr noundef nonnull align 8 dereferenceable(32) %i.ky, i64 32, i1 false)
  store <4 x i64> %.sroa.0.i.i.i.i88.sroa.0.0.copyload, ptr %.231.i, align 8
  %i.kz = load ptr, ptr %i.ku, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i4.i.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i.i4.i.i.i.i, label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i99
  %i.la = getelementptr inbounds nuw i8, ptr %.231.i, i64 40
  store ptr %i.kz, ptr %i.la, align 8, !tbaa !92
  %.val1.i.i.i.i5.i.i.i.i = load ptr, ptr %i.kw, align 8, !tbaa !91
  %i.lb = ptrtoint ptr %.val1.i.i.i.i5.i.i.i.i to i64
  %i.lc = ptrtoint ptr %i.kz to i64
  %i.ld = sub i64 %i.lb, %i.lc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.ld) #30
  br label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i

_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i: ; preds = %bb.bh, %.lr.ph.i99
  store <2 x ptr> %i.kq, ptr %i.ku, align 8, !tbaa !91
  store ptr %i.ks, ptr %i.kw, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ky, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i.i)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i
  %.4.i = phi ptr [ %.32130.i, %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i ], [ %i.le, %bb.bi ] ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.4.i, i64 88 ; 4 uses
  %i.lf = getelementptr i8, ptr %.4.i, i64 164
  %.val11.i = load float, ptr %i.lf, align 4, !tbaa !126
  %i.lg = fcmp ogt float %.sroa.17.56.copyload.i91, %.val11.i
  br i1 %i.lg, label %.preheader.i, label %bb.bi, !llvm.loop !391

.preheader.i:                                     ; preds = %bb.bi, %.preheader.i
  %.3.i = phi ptr [ %i.lh, %.preheader.i ], [ %.231.i, %bb.bi ] ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %.3.i, i64 -88 ; 3 uses
  %i.li = getelementptr i8, ptr %.3.i, i64 -12
  %.val9.i = load float, ptr %i.li, align 4, !tbaa !126
  %i.lj = fcmp ogt float %.sroa.17.56.copyload.i91, %.val9.i
  br i1 %i.lj, label %.preheader.i, label %bb.bj, !llvm.loop !392

bb.bj:                                            ; preds = %.preheader.i
  %i.lk = icmp ult ptr %i.le, %i.lh
  br i1 %i.lk, label %.lr.ph.i99, label %._crit_edge.i, !llvm.loop !393

._crit_edge.i:                                    ; preds = %bb.bj, %.loopexit.i
  %.321.lcssa.i = phi ptr [ %.220.i, %.loopexit.i ], [ %i.le, %bb.bj ] ; 12 uses
  %i.ll = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -88 ; 3 uses
  %.not.i93 = icmp eq ptr %.020.ph, %i.ll
  br i1 %.not.i93, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.020.ph, ptr noundef nonnull align 8 dereferenceable(88) %i.ll, i64 32, i1 false), !tbaa.struct !96
  %i.lm = load ptr, ptr %i.ju, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i.i94 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i.i.i94, label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i96, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.lm, ptr %i.jv, align 8, !tbaa !92
  %.val1.i.i.i.i.i95 = load ptr, ptr %i.jx, align 8, !tbaa !91
  %i.ln = ptrtoint ptr %.val1.i.i.i.i.i95 to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.lp) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ju, i8 0, i64 24, i1 false)
  br label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i96

_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i96: ; preds = %bb.bl, %bb.bk
  %i.lq = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -56 ; 2 uses
  %i.lr = load <2 x ptr>, ptr %i.lq, align 8, !tbaa !91
  store <2 x ptr> %i.lr, ptr %i.ju, align 8, !tbaa !91
  %i.ls = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -40
end_hunk_1
begin_hunk_2_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentELb0EEEvT1_SO_T0_NS_15iterator_traitsISO_E15difference_typeEb":bb.a
  %.sroa.17.56..sroa_idx2.i98 = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -12
  store float %.sroa.17.56.copyload.i91, ptr %.sroa.17.56..sroa_idx2.i98, align 4
  %.sroa.23.56..sroa_idx4.i = getelementptr inbounds i8, ptr %.321.lcssa.i, i64 -8
  store i64 %i.ka, ptr %.sroa.23.56..sroa_idx4.i, align 8
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer.backedge"

"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer.backedge": ; preds = %"_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPN3jxl12_GLOBAL__N_118ConnectedComponentERZNS2_22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0EET0_SO_SO_T1_.exit", %.loopexit
  %.020.ph.ph.be = phi ptr [ %.118.lcssa.i, %.loopexit ], [ %.321.lcssa.i, %"_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPN3jxl12_GLOBAL__N_118ConnectedComponentERZNS2_22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0EET0_SO_SO_T1_.exit" ]
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer", !llvm.loop !394

bb.bo:                                            ; preds = %bb.be, %bb.bd
  %.sroa.0.i103.sroa.0.0.copyload = load <4 x i64>, ptr %.020.ph, align 8
  %i.me = load <2 x ptr>, ptr %i.i, align 8, !tbaa !91
  %i.mf = load ptr, ptr %i.k, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %.sroa.15.i104.sroa.0.0.copyload = load <5 x float>, ptr %i.l, align 8
  %.sroa.17.56.copyload.i106 = load float, ptr %.sroa.17.56..sroa_idx.i105, align 4 ; 6 uses
  %i.mg = load i64, ptr %.sroa.22.56..sroa_idx.i, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %bb.bo
  %.017.i = phi ptr [ %.020.ph, %bb.bo ], [ %i.mh, %bb.bp ] ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.017.i, i64 88 ; 5 uses
  %i.mi = getelementptr i8, ptr %.017.i, i64 164
  %.val18.i107 = load float, ptr %i.mi, align 4, !tbaa !126
  %i.mj = fcmp ogt float %.val18.i107, %.sroa.17.56.copyload.i106
  br i1 %i.mj, label %bb.bp, label %bb.bq, !llvm.loop !395

bb.bq:                                            ; preds = %bb.bp
  %i.mk = icmp eq ptr %.020.ph, %.017.i
  br i1 %i.mk, label %.preheader20.i, label %.preheader21.i

.preheader20.i:                                   ; preds = %bb.bq, %bb.br
  %.0.i124 = phi ptr [ %i.mm, %bb.br ], [ %.017, %bb.bq ] ; 4 uses
  %i.ml = icmp ult ptr %i.mh, %.0.i124
  br i1 %i.ml, label %bb.br, label %.critedge.i110

bb.br:                                            ; preds = %.preheader20.i
  %i.mm = getelementptr inbounds i8, ptr %.0.i124, i64 -88 ; 2 uses
  %i.mn = getelementptr i8, ptr %.0.i124, i64 -12
  %.val16.i = load float, ptr %i.mn, align 4, !tbaa !126
  %i.mo = fcmp ogt float %.val16.i, %.sroa.17.56.copyload.i106
  br i1 %i.mo, label %.critedge.i110, label %.preheader20.i, !llvm.loop !396

.preheader21.i:                                   ; preds = %bb.bq, %.preheader21.i
  %.1.i108 = phi ptr [ %i.mp, %.preheader21.i ], [ %.017, %bb.bq ] ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %.1.i108, i64 -88 ; 2 uses
  %i.mq = getelementptr i8, ptr %.1.i108, i64 -12
  %.val14.i109 = load float, ptr %i.mq, align 4, !tbaa !126
  %i.mr = fcmp ogt float %.val14.i109, %.sroa.17.56.copyload.i106
  br i1 %i.mr, label %.critedge.i110, label %.preheader21.i, !llvm.loop !397

.critedge.i110:                                   ; preds = %.preheader21.i, %bb.br, %.preheader20.i
  %.2.i = phi ptr [ %i.mm, %bb.br ], [ %.0.i124, %.preheader20.i ], [ %i.mp, %.preheader21.i ] ; 2 uses
  %i.ms = icmp ult ptr %i.mh, %.2.i               ; 2 uses
  br i1 %i.ms, label %.lr.ph.i118, label %._crit_edge.i111

.lr.ph.i118:                                      ; preds = %.critedge.i110, %bb.bu
  %.327.i = phi ptr [ %i.nl, %bb.bu ], [ %.2.i, %.critedge.i110 ] ; 7 uses
  %.11826.i = phi ptr [ %i.ni, %bb.bu ], [ %i.mh, %.critedge.i110 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i.i102)
  %.sroa.0.i.i.i.i101.sroa.0.0.copyload = load <4 x i64>, ptr %.11826.i, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %.11826.i, i64 32 ; 3 uses
  %i.mu = load <2 x ptr>, ptr %i.mt, align 8, !tbaa !91
  %i.mv = getelementptr inbounds nuw i8, ptr %.11826.i, i64 48 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mt, i8 0, i64 24, i1 false)
  %i.mx = getelementptr inbounds nuw i8, ptr %.11826.i, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i.i102, ptr noundef nonnull align 8 dereferenceable(32) %i.mx, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.11826.i, ptr noundef nonnull align 8 dereferenceable(88) %.327.i, i64 32, i1 false), !tbaa.struct !96
  %i.my = getelementptr inbounds nuw i8, ptr %.327.i, i64 32 ; 4 uses
  %i.mz = load <2 x ptr>, ptr %i.my, align 8, !tbaa !91
  store <2 x ptr> %i.mz, ptr %i.mt, align 8, !tbaa !91
  %i.na = getelementptr inbounds nuw i8, ptr %.327.i, i64 48 ; 3 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !91
  store ptr %i.nb, ptr %i.mv, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.my, i8 0, i64 24, i1 false)
  %i.nc = getelementptr inbounds nuw i8, ptr %.327.i, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mx, ptr noundef nonnull align 8 dereferenceable(32) %i.nc, i64 32, i1 false)
  store <4 x i64> %.sroa.0.i.i.i.i101.sroa.0.0.copyload, ptr %.327.i, align 8
  %i.nd = load ptr, ptr %i.my, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i4.i.i.i.i119 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i.i.i4.i.i.i.i119, label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i121, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i118
  %i.ne = getelementptr inbounds nuw i8, ptr %.327.i, i64 40
  store ptr %i.nd, ptr %i.ne, align 8, !tbaa !92
  %.val1.i.i.i.i5.i.i.i.i120 = load ptr, ptr %i.na, align 8, !tbaa !91
  %i.nf = ptrtoint ptr %.val1.i.i.i.i5.i.i.i.i120 to i64
  %i.ng = ptrtoint ptr %i.nd to i64
  %i.nh = sub i64 %i.nf, %i.ng
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nd, i64 noundef %i.nh) #30
  br label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i121

_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i121: ; preds = %bb.bs, %.lr.ph.i118
  store <2 x ptr> %i.mu, ptr %i.my, align 8, !tbaa !91
  store ptr %i.mw, ptr %i.na, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i.i102, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i.i102)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i121
  %.219.i = phi ptr [ %.11826.i, %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i121 ], [ %i.ni, %bb.bt ] ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.219.i, i64 88 ; 4 uses
  %i.nj = getelementptr i8, ptr %.219.i, i64 164
  %.val12.i = load float, ptr %i.nj, align 4, !tbaa !126
  %i.nk = fcmp ogt float %.val12.i, %.sroa.17.56.copyload.i106
  br i1 %i.nk, label %bb.bt, label %.preheader.i122, !llvm.loop !398

.preheader.i122:                                  ; preds = %bb.bt, %.preheader.i122
  %.4.i123 = phi ptr [ %i.nl, %.preheader.i122 ], [ %.327.i, %bb.bt ] ; 2 uses
  %i.nl = getelementptr inbounds i8, ptr %.4.i123, i64 -88 ; 3 uses
  %i.nm = getelementptr i8, ptr %.4.i123, i64 -12
  %.val.i = load float, ptr %i.nm, align 4, !tbaa !126
  %i.nn = fcmp ogt float %.val.i, %.sroa.17.56.copyload.i106
  br i1 %i.nn, label %bb.bu, label %.preheader.i122, !llvm.loop !399

bb.bu:                                            ; preds = %.preheader.i122
  %i.no = icmp ult ptr %i.ni, %i.nl
  br i1 %i.no, label %.lr.ph.i118, label %._crit_edge.i111, !llvm.loop !400

._crit_edge.i111:                                 ; preds = %bb.bu, %.critedge.i110
  %.118.lcssa.i = phi ptr [ %i.mh, %.critedge.i110 ], [ %i.ni, %bb.bu ] ; 14 uses
  %i.np = getelementptr inbounds i8, ptr %.118.lcssa.i, i64 -88 ; 6 uses
  %.not.i112 = icmp eq ptr %.020.ph, %i.np
  br i1 %.not.i112, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.i111
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.020.ph, ptr noundef nonnull align 8 dereferenceable(88) %i.np, i64 32, i1 false), !tbaa.struct !96
  %i.nq = load ptr, ptr %i.i, align 8, !tbaa !90  ; 4 uses
  %.not.i.i.i.i.i113 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i.i.i113, label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i115, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.nq, ptr %i.j, align 8, !tbaa !92
  %.val1.i.i.i.i.i114 = load ptr, ptr %i.k, align 8, !tbaa !91
  %i.nr = ptrtoint ptr %.val1.i.i.i.i.i114 to i64
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = sub i64 %i.nr, %i.ns
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef %i.nt) #30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  br label %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i115

_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i115: ; preds = %bb.bw, %bb.bv
  %i.nu = getelementptr inbounds i8, ptr %.118.lcssa.i, i64 -56 ; 2 uses
  %i.nv = load <2 x ptr>, ptr %i.nu, align 8, !tbaa !91
  store <2 x ptr> %i.nv, ptr %i.i, align 8, !tbaa !91
  %i.nw = getelementptr inbounds i8, ptr %.118.lcssa.i, i64 -40
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !91
  store ptr %i.nx, ptr %i.k, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nu, i8 0, i64 24, i1 false)
  %i.ny = getelementptr inbounds i8, ptr %.118.lcssa.i, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ny, i64 32, i1 false)
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN3jxl12_GLOBAL__N_118ConnectedComponentaSEOS1_.exit.i115, %._crit_edge.i111
  store <4 x i64> %.sroa.0.i103.sroa.0.0.copyload, ptr %i.np, align 8
  %i.nz = getelementptr inbounds i8, ptr %.118.lcssa.i, i64 -56 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i26.i = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i.i26.i, label %"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPN3jxl12_GLOBAL__N_118ConnectedComponentERZNS2_22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0EENS_4pairIT0_bEESP_SP_T1_.exit", label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ob = getelementptr inbounds i8, ptr %.118.lcssa.i, i64 -48
  store ptr %i.oa, ptr %i.ob, align 8, !tbaa !92
  %i.oc = getelementptr inbounds i8, ptr %.118.lcssa.i, i64 -40
  %.val1.i.i.i.i27.i = load ptr, ptr %i.oc, align 8, !tbaa !91
  %i.od = ptrtoint ptr %.val1.i.i.i.i27.i to i64
  %i.oe = ptrtoint ptr %i.oa to i64
  %i.of = sub i64 %i.od, %i.oe
  tail call void @_ZdlPvm(ptr noundef nonnull %i.oa, i64 noundef %i.of) #30
  br label %"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPN3jxl12_GLOBAL__N_118ConnectedComponentERZNS2_22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0EENS_4pairIT0_bEESP_SP_T1_.exit"

"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPN3jxl12_GLOBAL__N_118ConnectedComponentERZNS2_22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0EENS_4pairIT0_bEESP_SP_T1_.exit": ; preds = %bb.bx, %bb.by
  store <2 x ptr> %i.me, ptr %i.nz, align 8, !tbaa !91
  %i.og = getelementptr inbounds i8, ptr %.118.lcssa.i, i64 -40
  store ptr %i.mf, ptr %i.og, align 8, !tbaa !91
  %i.oh = getelementptr inbounds i8, ptr %.118.lcssa.i, i64 -32
  store <5 x float> %.sroa.15.i104.sroa.0.0.copyload, ptr %i.oh, align 8
  %.sroa.17.56..sroa_idx2.i117 = getelementptr inbounds i8, ptr %.118.lcssa.i, i64 -12
  store float %.sroa.17.56.copyload.i106, ptr %.sroa.17.56..sroa_idx2.i117, align 4
  %.sroa.22.56..sroa_idx4.i = getelementptr inbounds i8, ptr %.118.lcssa.i, i64 -8
  store i64 %i.mg, ptr %.sroa.22.56..sroa_idx4.i, align 8
  br i1 %i.ms, label %.loopexit, label %bb.bz

bb.bz:                                            ; preds = %"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPN3jxl12_GLOBAL__N_118ConnectedComponentERZNS2_22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0EENS_4pairIT0_bEESP_SP_T1_.exit"
  %i.oi = tail call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEbT1_SO_T0_"(ptr noundef %.020.ph, ptr noundef nonnull %i.np) #27 ; 2 uses
  %i.oj = tail call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEbT1_SO_T0_"(ptr noundef nonnull %.118.lcssa.i, ptr noundef %.017) #27
  br i1 %i.oj, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.oi, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.thread", label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit", !llvm.loop !394

bb.cb:                                            ; preds = %bb.bz
  br i1 %i.oi, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer", label %.loopexit, !llvm.loop !394

.loopexit:                                        ; preds = %bb.cb, %"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPN3jxl12_GLOBAL__N_118ConnectedComponentERZNS2_22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0EENS_4pairIT0_bEESP_SP_T1_.exit"
  tail call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentELb0EEEvT1_SO_T0_NS_15iterator_traitsISO_E15difference_typeEb"(ptr noundef %.020.ph, ptr noundef nonnull %i.np, i64 noundef %i.jc, i1 noundef zeroext %.048.ph.ph) #27
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.outer.outer.backedge"

"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit.thread": ; preds = %bb.ca, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit", %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_T0_.exit", %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SN_RT0_NS_15iterator_traitsISN_E15difference_typeE.exit.i.i.i", %bb.w, %bb.p, %bb.q, %bb.j, %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit, %bb.f, %bb.e, %bb.g, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSQ_SQ_SQ_SQ_SQ_SP_"(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #6 {
bb.a:
  %.sroa.15.i.i.i31.i = alloca { float, float, float, float, float, float, %"struct.jxl::(anonymous namespace)::Pixel" }, align 8 ; 4 uses
  %.sroa.15.i.i.i26.i = alloca { float, float, float, float, float, float, %"struct.jxl::(anonymous namespace)::Pixel" }, align 8 ; 4 uses
  %.sroa.15.i.i.i21.i = alloca { float, float, float, float, float, float, %"struct.jxl::(anonymous namespace)::Pixel" }, align 8 ; 4 uses
  %.sroa.15.i.i.i.i = alloca { float, float, float, float, float, float, %"struct.jxl::(anonymous namespace)::Pixel" }, align 8 ; 4 uses
  tail call fastcc void @"_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_SO_SO_T0_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #27
  %i.a = getelementptr i8, ptr %4, i64 76
  %.val10.i = load float, ptr %i.a, align 4, !tbaa !126
  %i.b = getelementptr i8, ptr %3, i64 76         ; 2 uses
  %.val11.i = load float, ptr %i.b, align 4, !tbaa !126
  %i.c = fcmp ogt float %.val10.i, %.val11.i
  br i1 %i.c, label %bb.b, label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_SO_SO_SO_T0_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i.i)
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <4 x i64>, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(88) %4, i64 32, i1 false), !tbaa.struct !96
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !91
  store <2 x ptr> %i.k, ptr %i.d, align 8, !tbaa !91
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !91
  store ptr %i.m, ptr %i.g, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  store <4 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %4, align 8
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !90   ; 4 uses
  %.not.i.i.i.i4.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i4.i.i.i.i, label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.o, ptr %i.p, align 8, !tbaa !92
  %.val1.i.i.i.i5.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !91
  %i.q = ptrtoint ptr %.val1.i.i.i.i5.i.i.i.i to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.s) #30
  br label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i

_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i: ; preds = %bb.c, %bb.b
  store <2 x ptr> %i.f, ptr %i.j, align 8, !tbaa !91
  store ptr %i.h, ptr %i.l, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i.i)
  %.val8.i = load float, ptr %i.b, align 4, !tbaa !126
  %i.t = getelementptr i8, ptr %2, i64 76         ; 2 uses
  %.val9.i = load float, ptr %i.t, align 4, !tbaa !126
  %i.u = fcmp ogt float %.val8.i, %.val9.i
  br i1 %i.u, label %bb.d, label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_SO_SO_SO_T0_.exit"

bb.d:                                             ; preds = %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i21.i)
  %.sroa.0.i.i.i20.i.sroa.0.0.copyload = load <4 x i64>, ptr %2, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load <2 x ptr>, ptr %i.v, align 8, !tbaa !91
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i21.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 32, i1 false), !tbaa.struct !96
  %i.ab = load <2 x ptr>, ptr %i.d, align 8, !tbaa !91
  store <2 x ptr> %i.ab, ptr %i.v, align 8, !tbaa !91
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !91
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  store <4 x i64> %.sroa.0.i.i.i20.i.sroa.0.0.copyload, ptr %3, align 8
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !90  ; 4 uses
  %.not.i.i.i.i4.i.i.i22.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i4.i.i.i22.i, label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit24.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.ad, ptr %i.e, align 8, !tbaa !92
  %.val1.i.i.i.i5.i.i.i23.i = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.ae = ptrtoint ptr %.val1.i.i.i.i5.i.i.i23.i to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit24.i

_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit24.i: ; preds = %bb.e, %bb.d
  store <2 x ptr> %i.x, ptr %i.d, align 8, !tbaa !91
  store ptr %i.z, ptr %i.g, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i21.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i21.i)
  %.val6.i = load float, ptr %i.t, align 4, !tbaa !126
  %i.ah = getelementptr i8, ptr %1, i64 76        ; 2 uses
  %.val7.i = load float, ptr %i.ah, align 4, !tbaa !126
  %i.ai = fcmp ogt float %.val6.i, %.val7.i
  br i1 %i.ai, label %bb.f, label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_SO_SO_SO_T0_.exit"

bb.f:                                             ; preds = %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit24.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i26.i)
  %.sroa.0.i.i.i25.i.sroa.0.0.copyload = load <4 x i64>, ptr %1, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !91
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i26.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 32, i1 false), !tbaa.struct !96
  %i.ap = load <2 x ptr>, ptr %i.v, align 8, !tbaa !91
  store <2 x ptr> %i.ap, ptr %i.aj, align 8, !tbaa !91
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !91
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  store <4 x i64> %.sroa.0.i.i.i25.i.sroa.0.0.copyload, ptr %2, align 8
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !90  ; 4 uses
  %.not.i.i.i.i4.i.i.i27.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i4.i.i.i27.i, label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit29.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ar, ptr %i.w, align 8, !tbaa !92
  %.val1.i.i.i.i5.i.i.i28.i = load ptr, ptr %i.y, align 8, !tbaa !91
  %i.as = ptrtoint ptr %.val1.i.i.i.i5.i.i.i28.i to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.au) #30
  br label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit29.i

_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit29.i: ; preds = %bb.g, %bb.f
  store <2 x ptr> %i.al, ptr %i.v, align 8, !tbaa !91
  store ptr %i.an, ptr %i.y, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i26.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i26.i)
  %.val.i = load float, ptr %i.ah, align 4, !tbaa !126
  %i.av = getelementptr i8, ptr %0, i64 76
  %.val5.i = load float, ptr %i.av, align 4, !tbaa !126
  %i.aw = fcmp ogt float %.val.i, %.val5.i
  br i1 %i.aw, label %bb.h, label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_SO_SO_SO_T0_.exit"

bb.h:                                             ; preds = %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit29.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i31.i)
  %.sroa.0.i.i.i30.i.sroa.0.0.copyload = load <4 x i64>, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !91
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i31.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 32, i1 false), !tbaa.struct !96
  %i.bc = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !91
  store <2 x ptr> %i.bc, ptr %i.ax, align 8, !tbaa !91
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !91
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  store <4 x i64> %.sroa.0.i.i.i30.i.sroa.0.0.copyload, ptr %1, align 8
  %i.be = load ptr, ptr %i.aj, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i4.i.i.i32.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i4.i.i.i32.i, label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit34.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.be, ptr %i.ak, align 8, !tbaa !92
  %.val1.i.i.i.i5.i.i.i33.i = load ptr, ptr %i.am, align 8, !tbaa !91
  %i.bf = ptrtoint ptr %.val1.i.i.i.i5.i.i.i33.i to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bh) #30
  br label %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit34.i

_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit34.i: ; preds = %bb.i, %bb.h
  store <2 x ptr> %i.ay, ptr %i.aj, align 8, !tbaa !91
  store ptr %i.ba, ptr %i.am, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i.i31.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i31.i)
  br label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_SO_SO_SO_T0_.exit"

"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEvT1_SO_SO_SO_SO_T0_.exit": ; preds = %bb.a, %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit.i, %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit24.i, %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit29.i, %_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE9iter_swapB8nn180100IRPN3jxl12_GLOBAL__N_118ConnectedComponentES8_EEvOT_OT0_.exit34.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl22DetectGaussianEllipsesERKNS2_6Image3IfEERKNS2_5RectTImEERKNS2_20GaussianDetectParamsERKNS2_18EllipseQuantParamsEPNS2_10ThreadPoolEE3$_0PNS2_12_GLOBAL__N_118ConnectedComponentEEEjT1_SO_SO_T0_"(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #4 {
bb.a:
  %.sroa.15.i.i.i45 = alloca { float, float, float, float, float, float, %"struct.jxl::(anonymous namespace)::Pixel" }, align 8 ; 4 uses
end_hunk_2
