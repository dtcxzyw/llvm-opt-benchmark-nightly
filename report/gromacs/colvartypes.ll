Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvartypes?download=true
inline.NumInlined: 1130
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZrsRSiRN12colvarmodule10quaternionE:bb.a

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bb) ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !11
  %i.be = getelementptr i8, ptr %i.bd, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !41
  %i.bj = and i32 %i.bi, 5
  %.not38 = icmp eq i32 %i.bj, 0
  br i1 %.not38, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bk = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr i8, ptr %i.bl, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !41
  %i.br = and i32 %i.bq, 5
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = load i8, ptr %i.a, align 1
  %i.bu = icmp ne i8 %i.bt, 44
  %or.cond14.not = select i1 %i.bs, i1 true, i1 %i.bu
  br i1 %or.cond14.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bv) ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !11
  %i.by = getelementptr i8, ptr %i.bx, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !41
  %i.cd = and i32 %i.cc, 5
  %.not39 = icmp eq i32 %i.cd, 0
  br i1 %.not39, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ce = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !11
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !41
  %i.cl = and i32 %i.ck, 5
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = load i8, ptr %i.a, align 1
  %i.co = icmp ne i8 %i.cn, 41
  %or.cond18.not = select i1 %i.cm, i1 true, i1 %i.co
  br i1 %or.cond18.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.cp = load ptr, ptr %0, align 8, !tbaa !11
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %0, i64 %i.cr
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cs, i32 noundef 0)
  %i.ct = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.c, i32 noundef 0) ; 0 uses
  %i.cu = load ptr, ptr %0, align 8, !tbaa !11
  %i.cv = getelementptr i8, ptr %i.cu, i64 -24
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds i8, ptr %0, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !41
  %i.da = or i32 %i.cz, 4
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cx, i32 noundef %i.da)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN12colvarmodule8rotation4initEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(568) initializes((488, 489)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i8 0, ptr %i.b, align 8, !tbaa !53
  %i.c = tail call noundef ptr @_ZN12colvarmodule4mainEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 37, ptr %i.a, align 8, !tbaa !24
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !40
  %i.f = load i64, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.e, ptr noundef nonnull align 1 dereferenceable(37) @.str.7, i64 37, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.i = invoke noundef i32 @_ZN12colvarmodule12cite_featureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(632) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b       ; 0 uses

bb.a:                                             ; preds = %.noexc.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.d, align 8, !tbaa !36
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i32 0

bb.b:                                             ; preds = %.noexc.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.q = load i64, ptr %i.d, align 8, !tbaa !36
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.n
}

declare noundef ptr @_ZN12colvarmodule4mainEv() local_unnamed_addr #5

declare noundef i32 @_ZN12colvarmodule12cite_featureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(632), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule8rotationC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(568) initializes((0, 72), (488, 489), (496, 568)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.c = tail call noundef i32 @_ZN12colvarmodule8rotation4initEv(ptr noundef nonnull align 8 dereferenceable(568) %0) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr null, ptr %i.d, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule8rotationC2ERKNS_10quaternionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(568) initializes((0, 72), (488, 489), (496, 568)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = tail call noundef i32 @_ZN12colvarmodule8rotation4initEv(ptr noundef nonnull align 8 dereferenceable(568) %0) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr null, ptr %i.d, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule8rotationC2EdRKNS_7rvectorE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(568) initializes((0, 72), (488, 489), (496, 568)) %0, double noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.c = tail call noundef i32 @_ZN12colvarmodule8rotation4initEv(ptr noundef nonnull align 8 dereferenceable(568) %0) ; 0 uses
  %i.d = load double, ptr %2, align 8, !tbaa !28, !noalias !121 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = fmul double %1, 5.000000e-01             ; 2 uses
  %i.g = tail call noundef double @sin(double noundef %i.f) #18
  %i.h = load <2 x double>, ptr %i.e, align 8, !tbaa !55, !noalias !121 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.h, %i.h
  %i.i = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.j = tail call double @llvm.fmuladd.f64(double %i.d, double %i.d, double %i.i)
  %i.k = extractelement <2 x double> %i.h, i64 1  ; 2 uses
  %i.l = tail call noundef double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.j) ; 2 uses
  %i.m = fcmp ogt double %i.l, 0.000000e+00       ; 2 uses
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.l) ; 2 uses
  %i.n = fdiv double %i.d, %sqrt.i.i
  %i.o = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.h, %i.p
  %.sink4.i = select i1 %i.m, double %i.n, double 1.000000e+00
  %i.r = insertelement <2 x i1> poison, i1 %i.m, i64 0
  %i.s = shufflevector <2 x i1> %i.r, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.t = select <2 x i1> %i.s, <2 x double> %i.q, <2 x double> zeroinitializer
  %i.u = tail call noundef double @cos(double noundef %i.f) #18
  %i.v = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %i.g, i64 1
  %3 = shufflevector <4 x double> %i.v, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.w = insertelement <4 x double> poison, double %i.u, i64 0
  %4 = insertelement <4 x double> %i.w, double %.sink4.i, i64 1
  %5 = shufflevector <2 x double> %i.t, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %6 = shufflevector <4 x double> %4, <4 x double> %5, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %7 = fmul <4 x double> %3, %6
  store <4 x double> %7, ptr %i.a, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr null, ptr %i.x, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN12colvarmodule8rotationD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(568) %0) unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN12colvarmodule8rotation24build_correlation_matrixERKSt6vectorINS_7rvectorESaIS2_EES6_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(568) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !60     ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = load ptr, ptr %2, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load <2 x double>, ptr %0, align 8, !tbaa !55
  %i.n = load <2 x double>, ptr %i.i, align 8, !tbaa !55
  %i.o = load <2 x double>, ptr %i.j, align 8, !tbaa !55
  %i.p = load <2 x double>, ptr %i.k, align 8, !tbaa !55
  %.promoted54 = load double, ptr %i.l, align 8, !tbaa !61
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.q = phi double [ %.promoted54, %.lr.ph ], [ %i.ao, %bb.b ]
  %.039 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.b ] ; 3 uses
  %i.r = phi <2 x double> [ %i.m, %.lr.ph ], [ %i.ac, %bb.b ]
  %i.s = phi <2 x double> [ %i.n, %.lr.ph ], [ %i.af, %bb.b ]
  %i.t = phi <2 x double> [ %i.o, %.lr.ph ], [ %i.ai, %bb.b ]
  %i.u = phi <2 x double> [ %i.p, %.lr.ph ], [ %i.an, %bb.b ]
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.039 ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.039 ; 2 uses
  %i.x = load <2 x double>, ptr %i.w, align 8, !tbaa !55 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !30 ; 3 uses
  %i.aa = load <2 x double>, ptr %i.v, align 8, !tbaa !55 ; 3 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.x, <2 x double> %i.r) ; 2 uses
  %i.ad = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ae = insertelement <2 x double> %i.ad, double %i.z, i64 0
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.ae, <2 x double> %i.s) ; 2 uses
  %i.ag = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = insertelement <2 x double> %i.ad, double %i.z, i64 1
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ah, <2 x double> %i.t) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.x, <2 x double> %i.u) ; 2 uses
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.z, double %i.q) ; 2 uses
  %i.ap = add nuw i64 %.039, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b
  store <2 x double> %i.ac, ptr %0, align 8, !tbaa !55
  store <2 x double> %i.af, ptr %i.i, align 8, !tbaa !55
  store <2 x double> %i.ai, ptr %i.j, align 8, !tbaa !55
  store <2 x double> %i.an, ptr %i.k, align 8, !tbaa !55
  store double %i.ao, ptr %i.l, align 8, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN12colvarmodule8rotation22compute_overlap_matrixEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(568) initializes((72, 200)) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !63  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load double, ptr %i.b, align 8, !tbaa !64 ; 4 uses
  %i.d = fadd double %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load double, ptr %i.e, align 8, !tbaa !61 ; 4 uses
  %i.g = fadd double %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.g, ptr %i.h, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load double, ptr %i.i, align 8, !tbaa !65 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load double, ptr %i.k, align 8, !tbaa !66 ; 2 uses
  %i.m = fsub double %i.j, %i.l                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.m, ptr %i.n, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.m, ptr %i.o, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !67 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load double, ptr %i.r, align 8, !tbaa !68 ; 2 uses
  %i.t = fsub double %i.s, %i.q                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.t, ptr %i.u, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.t, ptr %i.v, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !69 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !70 ; 2 uses
  %i.aa = fsub double %i.x, %i.z                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.aa, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.aa, ptr %i.ac, align 8, !tbaa !55
  %i.ad = fsub double %i.a, %i.c
  %i.ae = fsub double %i.ad, %i.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ae, ptr %i.af, align 8, !tbaa !55
  %i.ag = fadd double %i.x, %i.z                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.ag, ptr %i.ah, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.ag, ptr %i.ai, align 8, !tbaa !55
  %i.aj = fadd double %i.q, %i.s                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double %i.aj, ptr %i.ak, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %i.aj, ptr %i.al, align 8, !tbaa !55
  %i.am = fsub double %i.c, %i.a
  %i.an = fsub double %i.am, %i.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.an, ptr %i.ao, align 8, !tbaa !55
  %i.ap = fadd double %i.j, %i.l                  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double %i.ap, ptr %i.aq, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.ap, ptr %i.ar, align 8, !tbaa !55
  %i.as = fneg double %i.a
  %i.at = fsub double %i.as, %i.c
  %i.au = fadd double %i.at, %i.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %i.au, ptr %i.av, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN2NR18diagonalize_matrixEPA4_dPdS1_(ptr noundef %0, ptr noundef initializes((0, 32)) %1, ptr noundef initializes((0, 128)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !71
  %i.b = call noundef i32 @_ZN9NR_Jacobi6jacobiEPA4_dPdS1_Pi(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.c = call noundef i32 @_ZN9NR_Jacobi6eigsrtEPdPA4_d(ptr noundef nonnull %1, ptr noundef nonnull %2) ; 0 uses
  %i.d = call noundef i32 @_ZN9NR_Jacobi9transposeEPA4_d(ptr noundef nonnull %2) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load <2 x double>, ptr %2, align 8, !tbaa !55 ; 3 uses
  %i.g = extractelement <2 x double> %i.f, i64 0  ; 2 uses
  %i.h = call double @llvm.fmuladd.f64(double %i.g, double %i.g, double 0.000000e+00)
  %i.i = extractelement <2 x double> %i.f, i64 1  ; 2 uses
  %i.j = call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.h)
  %i.k = load <2 x double>, ptr %i.e, align 8, !tbaa !55 ; 3 uses
  %i.l = extractelement <2 x double> %i.k, i64 0  ; 2 uses
  %i.m = call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.j)
  %i.n = extractelement <2 x double> %i.k, i64 1  ; 2 uses
  %i.o = call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.m)
  %i.p = call noundef double @sqrt(double noundef %i.o) #18
  %i.q = insertelement <2 x double> poison, double %i.p, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = fdiv <2 x double> %i.f, %i.r
  store <2 x double> %i.s, ptr %2, align 8, !tbaa !55
  %i.t = fdiv <2 x double> %i.k, %i.r
  store <2 x double> %i.t, ptr %i.e, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.w = load <2 x double>, ptr %i.u, align 8, !tbaa !55 ; 3 uses
  %i.x = extractelement <2 x double> %i.w, i64 0  ; 2 uses
end_hunk_0
