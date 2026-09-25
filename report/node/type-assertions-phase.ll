Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/type-assertions-phase?download=true
inline.NumInlined: 47242
inline.NumDeleted: 15222
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 222
begin_hunk_0_@_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation:bb.a
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS2_9FloatTypeILm64EEES8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::vector.513", align 8   ; 7 uses
  %5 = alloca %"class.std::function.507", align 8 ; 6 uses
  %6 = alloca %"struct.std::array.512", align 8   ; 7 uses
  %7 = alloca %"class.v8::internal::compiler::turboshaft::FloatType.451", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::turboshaft::FloatType.451", align 8 ; 8 uses
  %9 = alloca %"class.v8::internal::compiler::turboshaft::FloatType.451", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1               ; 3 uses
  %i.c = icmp eq i8 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = icmp eq i8 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 1
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.8158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8158.0..sroa_idx, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 5, i8 2, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.7157.0..sroa_idx, align 4
  br label %bb.ay

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq i8 %i.b, 1
  %i.p = icmp eq i8 %i.i, 1
  %or.cond159 = and i1 %i.o, %i.p
  br i1 %or.cond159, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E9_M_invokeERKSt9_Any_dataOdSI_, ptr %i.r, align 8
  store ptr @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.q, align 8
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE10ProductSetERKNS2_9FloatTypeILm64EEES8_jPNS0_4ZoneESt8functionIFdddEE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0, ptr noundef %3, ptr noundef nonnull %5)
  %i.s = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #23, !inline_history !2 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.e, %bb.f
  %i.u = load i8, ptr %0, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %_ZNSt14_Function_baseD2Ev.exit._crit_edge, label %bb.ay

_ZNSt14_Function_baseD2Ev.exit._crit_edge:        ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.pre = load i8, ptr %i.a, align 1
  %.pre176 = load i32, ptr %i.d, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit._crit_edge, %bb.d
  %i.w = phi i32 [ %.pre176, %_ZNSt14_Function_baseD2Ev.exit._crit_edge ], [ %i.e, %bb.d ] ; 2 uses
  %i.x = phi i8 [ %.pre, %_ZNSt14_Function_baseD2Ev.exit._crit_edge ], [ %i.b, %bb.d ]
  %i.y = and i32 %i.w, 2
  %.not10.i.i = icmp eq i32 %i.y, 0               ; 3 uses
  switch i8 %i.x, label %bb.j [
    i8 2, label %bb.k
    i8 0, label %bb.h
    i8 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load double, ptr %i.z, align 8          ; 3 uses
  br i1 %.not10.i.i, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load double, ptr %i.ab, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i8, ptr %i.ad, align 2             ; 3 uses
  %i.af = icmp ult i8 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %.sroa.0.0.i.i3.i.i = select i1 %i.af, ptr %i.ag, ptr %i.ah ; 3 uses
  %i.ai = load double, ptr %.sroa.0.0.i.i3.i.i, align 8 ; 3 uses
  br i1 %.not10.i.i, label %.thread17.i, label %bb.m

.thread17.i:                                      ; preds = %bb.i
  %i.aj = zext i8 %i.ae to i64
  %i.ak = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = load double, ptr %i.al, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.g
  %..i.i = select i1 %.not10.i.i, double +qnan, double -0.000000e+00 ; 2 uses
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.l:                                             ; preds = %bb.h
  %i.an = fcmp olt double %i.aa, 0.000000e+00
  %.sroa.speculated5.i.i = select i1 %i.an, double %i.aa, double -0.000000e+00
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load double, ptr %i.ao, align 8         ; 2 uses
  %i.aq = fcmp ogt double %i.ap, 0.000000e+00
  %.sroa.speculated5.i5.i = select i1 %i.aq, double %i.ap, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.m:                                             ; preds = %bb.i
  %i.ar = fcmp olt double %i.ai, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ar, double %i.ai, double -0.000000e+00
  %i.as = zext i8 %i.ae to i64
  %i.at = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %i.av = load double, ptr %i.au, align 8         ; 2 uses
  %i.aw = fcmp ogt double %i.av, 0.000000e+00
  %.sroa.speculated.i3.i = select i1 %i.aw, double %i.av, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit: ; preds = %.thread.i, %.thread17.i, %bb.k, %bb.l, %bb.m
  %.0.i9.i = phi double [ %..i.i, %bb.k ], [ %i.aa, %.thread.i ], [ %.sroa.speculated5.i.i, %bb.l ], [ %.sroa.speculated.i.i, %bb.m ], [ %i.ai, %.thread17.i ] ; 6 uses
  %.0.i4.i = phi double [ %..i.i, %bb.k ], [ %i.ac, %.thread.i ], [ %.sroa.speculated5.i5.i, %bb.l ], [ %.sroa.speculated.i3.i, %bb.m ], [ %i.am, %.thread17.i ] ; 6 uses
  %i.ax = load i8, ptr %i.h, align 1
  %i.ay = load i32, ptr %i.k, align 4             ; 2 uses
  %i.az = and i32 %i.ay, 2
  %.not10.i.i81 = icmp eq i32 %i.az, 0            ; 3 uses
  switch i8 %i.ax, label %bb.p [
    i8 2, label %bb.q
    i8 0, label %bb.n
    i8 1, label %bb.o
  ]

bb.n:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load double, ptr %i.ba, align 8         ; 3 uses
  br i1 %.not10.i.i81, label %.thread.i92, label %bb.r

.thread.i92:                                      ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load double, ptr %i.bc, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

bb.o:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bf = load i8, ptr %i.be, align 2             ; 3 uses
  %i.bg = icmp ult i8 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %.sroa.0.0.i.i3.i.i82 = select i1 %i.bg, ptr %i.bh, ptr %i.bi ; 3 uses
  %i.bj = load double, ptr %.sroa.0.0.i.i3.i.i82, align 8 ; 3 uses
  br i1 %.not10.i.i81, label %.thread17.i89, label %bb.s

.thread17.i89:                                    ; preds = %bb.o
  %i.bk = zext i8 %i.bf to i64
  %i.bl = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i82, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  %i.bn = load double, ptr %i.bm, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

bb.p:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  unreachable

bb.q:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %..i.i93 = select i1 %.not10.i.i81, double +qnan, double -0.000000e+00 ; 2 uses
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

bb.r:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load double, ptr %i.bo, align 8         ; 2 uses
  %i.bq = fcmp olt double %i.bb, 0.000000e+00
  %.sroa.speculated5.i.i90 = select i1 %i.bq, double %i.bb, double -0.000000e+00
  %10 = fcmp ogt double %i.bp, 0.000000e+00
  %.sroa.speculated5.i5.i91 = select i1 %10, double %i.bp, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

bb.s:                                             ; preds = %bb.o
  %i.br = zext i8 %i.bf to i64
  %i.bs = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i82, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -8
  %i.bu = load double, ptr %i.bt, align 8         ; 2 uses
  %i.bv = fcmp olt double %i.bj, 0.000000e+00
  %.sroa.speculated.i.i83 = select i1 %i.bv, double %i.bj, double -0.000000e+00
  %11 = fcmp ogt double %i.bu, 0.000000e+00
  %.sroa.speculated.i3.i84 = select i1 %11, double %i.bu, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94: ; preds = %.thread.i92, %.thread17.i89, %bb.q, %bb.r, %bb.s
  %.0.i9.i85 = phi double [ %..i.i93, %bb.q ], [ %i.bb, %.thread.i92 ], [ %.sroa.speculated5.i.i90, %bb.r ], [ %.sroa.speculated.i.i83, %bb.s ], [ %i.bj, %.thread17.i89 ] ; 8 uses
  %.0.i4.i86 = phi double [ %..i.i93, %bb.q ], [ %i.bd, %.thread.i92 ], [ %.sroa.speculated5.i5.i91, %bb.r ], [ %.sroa.speculated.i3.i84, %bb.s ], [ %i.bn, %.thread17.i89 ] ; 7 uses
  %i.bw = trunc i32 %i.w to i1
  %i.bx = and i32 %i.ay, 3
  %or.cond.not.i = icmp ne i32 %i.bx, 0
  %or.cond161.not = select i1 %i.bw, i1 true, i1 %or.cond.not.i
  br i1 %or.cond161.not, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94
  %i.by = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef 0.000000e+00) #23
  br i1 %i.by, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit
  %i.bz = fcmp oeq double %.0.i9.i, -inf
  %i.ca = fcmp oeq double %.0.i4.i, +inf
  %or.cond162 = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %or.cond162, label %bb.u, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cb = fcmp oeq double %.0.i9.i85, -inf
  br i1 %i.cb, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = fcmp oeq double %.0.i4.i86, +inf
  %i.cd = zext i1 %i.cc to i32
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread: ; preds = %bb.t, %bb.v, %bb.u, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94
  %i.ce = phi i32 [ 1, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94 ], [ 0, %bb.t ], [ 1, %bb.u ], [ %i.cd, %bb.v ] ; 2 uses
  %i.cf = load i32, ptr %i.d, align 4
  %i.cg = and i32 %i.cf, 2
  %i.ch = icmp ne i32 %i.cg, 0
  %i.ci = fcmp ogt double %.0.i4.i86, 0.000000e+00
  %or.cond163 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond163, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread
  %i.cj = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef 0.000000e+00) #23
  %i.ck = fcmp olt double %.0.i9.i85, 0.000000e+00
  %or.cond164 = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond164, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef 0.000000e+00) #23
  %i.cm = fcmp olt double %.0.i9.i, 0.000000e+00
  %or.cond165 = select i1 %i.cl, i1 %i.cm, i1 false
  %i.cn = fcmp ogt double %.0.i4.i86, 1.000000e+00
  %or.cond166 = select i1 %or.cond165, i1 %i.cn, i1 false
  br i1 %or.cond166, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef 0.000000e+00) #23
  %i.cp = fcmp oge double %.0.i4.i, 0.000000e+00
  %or.cond168.not171 = select i1 %i.co, i1 %i.cp, i1 false
  %i.cq = fcmp olt double %.0.i9.i85, -1.000000e+00
  %or.cond169 = select i1 %or.cond168.not171, i1 %i.cq, i1 false
  br i1 %or.cond169, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = fcmp olt double %.0.i4.i, 0.000000e+00
  br i1 %i.cr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cs = fdiv double %.0.i4.i, %.0.i4.i86
  %i.ct = call noundef i1 @llvm.is.fpclass.f64(double %i.cs, /* (nzero) */ i32 32)
  br i1 %i.ct, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cu = fcmp ogt double %.0.i9.i, 0.000000e+00
  br i1 %i.cu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cv = fdiv double %.0.i9.i, %.0.i9.i85
  %i.cw = call noundef i1 @llvm.is.fpclass.f64(double %i.cv, /* (nzero) */ i32 32)
  %i.cx = select i1 %i.cw, i32 2, i32 0
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.x, %bb.w, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, %bb.ab, %bb.ac, %bb.aa
  %i.cy = phi i32 [ 2, %bb.aa ], [ 2, %bb.y ], [ 2, %bb.x ], [ 2, %bb.w ], [ 2, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread ], [ 0, %bb.ab ], [ %i.cx, %bb.ac ]
  %i.cz = or disjoint i32 %i.cy, %i.ce            ; 7 uses
  %i.da = fcmp ult double %.0.i9.i85, 0.000000e+00
  br i1 %i.da, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.db = load i32, ptr %i.k, align 4
  %i.dc = and i32 %i.db, 2
  %.not172 = icmp eq i32 %i.dc, 0
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dd = phi i1 [ false, %bb.ad ], [ %.not172, %bb.ae ] ; 3 uses
  %i.de = fcmp olt double %.0.i4.i86, 0.000000e+00
  %or.cond = select i1 %i.dd, i1 true, i1 %i.de
  br i1 %or.cond, label %bb.ag, label %bb.ax

bb.ag:                                            ; preds = %bb.af
  %i.df = fcmp ogt double %.0.i9.i85, 0.000000e+00
  br i1 %i.df, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dg = load i32, ptr %i.k, align 4
  %i.dh = and i32 %i.dg, 2
  %.not173 = icmp eq i32 %i.dh, 0
  br i1 %.not173, label %.critedge, label %bb.ak

.critedge:                                        ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.di = insertelement <2 x double> poison, double %.0.i9.i, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = insertelement <2 x double> poison, double %.0.i4.i86, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %.0.i9.i85, i64 1
  %i.dm = fdiv <2 x double> %i.dj, %i.dl
  %.fr182 = freeze <2 x double> %i.dm             ; 2 uses
  %i.dn = extractelement <2 x double> %.fr182, i64 1 ; 2 uses
  store double %i.dn, ptr %6, align 8
  %i.do = extractelement <2 x double> %.fr182, i64 0 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.do, ptr %i.dp, align 8
  %i.dq = insertelement <2 x double> poison, double %.0.i4.i, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = insertelement <2 x double> poison, double %.0.i9.i85, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %.0.i4.i86, i64 1
  %i.du = fdiv <2 x double> %i.dr, %i.dt          ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x double> %i.du, ptr %i.dv, align 8
  %or.cond179 = fcmp uno double %i.dn, %i.do
  %i.dw = extractelement <2 x double> %i.du, i64 0
  %i.dx = fcmp uno double %i.dw, 0.000000e+00
  %or.cond180 = select i1 %or.cond179, i1 true, i1 %i.dx
  %i.dy = extractelement <2 x double> %i.du, i64 1
  %i.dz = fcmp uno double %i.dy, 0.000000e+00
  %or.cond181 = select i1 %or.cond180, i1 true, i1 %i.dz
  br i1 %or.cond181, label %bb.ai, label %.critedge80

.critedge80:                                      ; preds = %.critedge
  %i.ea = call noundef double @_ZN2v88internal8compiler10turboshaft9array_minIdLm4EEET_RKSt5arrayIS4_XT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.eb = call noundef double @_ZN2v88internal8compiler10turboshaft9array_maxIdLm4EEET_RKSt5arrayIS4_XT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %7, double noundef %i.ea, double noundef %i.eb, i32 noundef %i.cz, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aj

bb.ai:                                            ; preds = %.critedge
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %.sroa.7123.0..sroa_idx, align 4
  %.sroa.8124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double -inf, double +inf>, ptr %.sroa.8124.0..sroa_idx, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ay

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.ec = fcmp olt double %.0.i4.i, 0.000000e+00
  br i1 %i.ec, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  br i1 %i.dd, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ed = call noundef double @nextafter(double noundef 0.000000e+00, double noundef -inf) #23 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ee = fcmp oeq double %i.ed, -inf
  br i1 %i.ee, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ef = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25, !noalias !422 ; 3 uses
  store ptr %i.ef, ptr %4, align 8, !noalias !422
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.eg, ptr %i.eh, align 8, !noalias !422
  store double -inf, ptr %i.ef, align 8, !noalias !422
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.eg, ptr %i.ei, align 8, !noalias !422
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE3SetESt6vectorIdSaIdEEjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %8, ptr noundef nonnull %4, i32 noundef %i.cz, ptr noundef %3)
  %i.ej = load ptr, ptr %4, align 8, !noalias !422 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ek = load ptr, ptr %i.eh, align 8, !noalias !422
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #26
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit

bb.ap:                                            ; preds = %bb.am
  %i.eo = call noundef i1 @llvm.is.fpclass.f64(double %i.ed, /* (nzero) */ i32 32)
  br i1 %i.eo, label %bb.aq, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i, !prof !39

end_hunk_0
