Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/game?download=true
inline.NumInlined: 6214
inline.NumDeleted: 2423
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4Game23handlePointingAtNothingERK9ItemStack:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.a, %bb.b
  %i.b = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !212, !nonnull !213, !align !214 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !1608
  %.v.i = select i1 %i.f, i64 976, i64 984
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %.v.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.175, ptr %i.a, align 8, !tbaa !185
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !215  ; 5 uses
  %.not.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i1, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZTW10infostream.exit
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !222
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !215 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre2 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = phi i64 [ %.pre2, %bb.d ], [ %i.l, %bb.c ]
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 240
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !228  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i8, ptr %i.v, align 8, !tbaa !233
  %.not.i1.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 67
  %i.y = load i8, ptr %i.x, align 1, !tbaa !54
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.u)
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef signext i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(570) %i.u, i8 noundef signext 10), !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i8 [ %i.y, %bb.g ], [ %i.ac, %bb.h ]
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext %.0.i.i.i)
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW10infostream.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !265
  call void @_ZN6Client8interactE14InteractActionRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(1674) %i.ag, i8 noundef zeroext 5, ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void
}

declare void @_ZN6Camera10setDiggingEi(ptr noundef nonnull align 8 dereferenceable(536), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #5

declare void @_ZN12RaycastStateC1ERKN4core6line3dIfEEbbRKSt8optionalI14PointabilitiesE(ptr noundef nonnull align 8 dereferenceable(389), ptr noundef nonnull align 4 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #3

declare void @_ZN11Environment15continueRaycastEP12RaycastStateP12PointedThing(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN3Hud15setSelectionPosERKN4core8vector3dIfEERKNS1_IsEE(ptr noundef nonnull align 8 dereferenceable(572), ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 2 dereferenceable(6)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4core8CMatrix4IfE18getRotationRadiansEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !88   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !88 ; 3 uses
  %i.d = fmul nsz float %i.c, %i.c
  %i.e = tail call nsz float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !88 ; 3 uses
  %i.h = tail call nsz float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e)
  %i.i = tail call nsz noundef float @llvm.sqrt.f32(float %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !88 ; 3 uses
  %i.l = tail call nsz float @llvm.fabs.f32(float %i.i)
  %i.m = fcmp nsz ole float %i.l, f0x358637BD
  %i.n = fpext nsz float %i.i to double
  %i.o = fdiv nsz double 1.000000e+00, %i.n
  %i.p = select i1 %i.m, double f0x37F0000010000010, double %i.o ; 3 uses
  %i.q = fpext nsz float %i.g to double
  %i.r = fmul nsz double %i.p, %i.q               ; 2 uses
  %i.s = fcmp nsz olt double %i.r, -1.000000e+00
  %i.t = select i1 %i.s, double -1.000000e+00, double %i.r ; 2 uses
  %i.u = fcmp nsz olt double %i.t, 1.000000e+00
  %i.v = select i1 %i.u, double %i.t, double 1.000000e+00 ; 2 uses
  %i.w = tail call nsz noundef double @llvm.fabs.f64(double %i.v)
  %i.x = fadd nsz double %i.w, -1.000000e+00
  %i.y = tail call nsz noundef double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp nsz ugt double %i.y, 1.000000e-08
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load <4 x float>, ptr %i.ad, align 4
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ag = load <2 x float>, ptr %i.ac, align 4, !tbaa !88 ; 2 uses
  %i.ah = shufflevector <2 x float> %i.k, <2 x float> %i.ag, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ai = fmul nsz <2 x float> %i.ah, %i.ah
  %i.aj = shufflevector <2 x float> %i.k, <2 x float> %i.ag, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ak = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.aj, <2 x float> %i.ai)
  %i.al = insertelement <2 x float> %i.af, float %i.ab, i64 1 ; 3 uses
  %i.am = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.al, <2 x float> %i.ak)
  %i.an = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.am) ; 2 uses
  %i.ao = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.an)
  %i.ap = fcmp nsz ole <2 x float> %i.ao, splat (float f0x358637BD)
  %i.aq = fpext <2 x float> %i.an to <2 x double>
  %i.ar = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.aq
  %i.as = select <2 x i1> %i.ap, <2 x double> splat (double f0x37F0000010000010), <2 x double> %i.ar
  %i.at = fpext <2 x float> %i.al to <2 x double>
  %i.au = fmul nsz <2 x double> %i.as, %i.at      ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0
  %i.aw = extractelement <2 x double> %i.au, i64 1
  %i.ax = tail call nsz double @llvm.atan2.f64(double %i.av, double %i.aw)
  %i.ay = fpext nsz float %i.a to double
  %i.az = fmul nsz double %i.p, %i.ay
  %i.ba = fpext nsz float %i.c to double
  %i.bb = fmul nsz double %i.p, %i.ba
  %i.bc = tail call nsz double @llvm.atan2.f64(double %i.bb, double %i.az)
  %i.bd = fptrunc nsz double %i.ax to float
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansERKNS_8vector3dIfEE.exit

bb.c:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bf = load float, ptr %i.be, align 4, !tbaa !88
  %i.bg = fpext nsz float %i.bf to double
  %i.bh = extractelement <2 x float> %i.k, i64 0
  %i.bi = fneg nsz float %i.bh
  %i.bj = fpext nsz float %i.bi to double
  %i.bk = tail call nsz double @llvm.atan2.f64(double %i.bj, double %i.bg)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansERKNS_8vector3dIfEE.exit

_ZNK4core8CMatrix4IfE18getRotationRadiansERKNS_8vector3dIfEE.exit: ; preds = %bb.b, %bb.c
  %.025.i.i = phi float [ 0.000000e+00, %bb.c ], [ %i.bd, %bb.b ]
  %.0.i.i = phi nsz double [ %i.bk, %bb.c ], [ %i.bc, %bb.b ]
  %i.bl = tail call nsz double @llvm.asin.f64(double %i.v)
  %i.bm = fptrunc nsz double %i.bl to float
  %i.bn = fneg nsz float %i.bm
  %i.bo = fptrunc nsz double %.0.i.i to float
  %.sroa.032.0.vec.insert.i.i = insertelement <2 x float> poison, float %.025.i.i, i64 0
  %.sroa.032.4.vec.insert.i.i = insertelement <2 x float> %.sroa.032.0.vec.insert.i.i, float %i.bn, i64 1
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.032.4.vec.insert.i.i, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.bo, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

declare void @_ZNK7MapNode17getSelectionBoxesEPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaIS6_EEh(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i8 @_ZNK7MapNode12getNeighborsEN4core8vector3dIsEEP3Map(ptr noundef nonnull align 4 dereferenceable(4), i48, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i48 @_Z10floatToIntN4core8vector3dIfEEf(<2 x float> %0, float %1, float noundef %2) local_unnamed_addr #23 comdat {
bb.a:
  %.sroa.09.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %i.a = fcmp nsz ogt float %.sroa.09.0.vec.extract, 0.000000e+00
  %3 = insertelement <2 x float> poison, float %2, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %5 = fmul nsz <2 x float> %4, <float 5.000000e-01, float -5.000000e-01> ; 4 uses
  %6 = extractelement <2 x float> %5, i64 0
  %7 = extractelement <2 x float> %5, i64 1
  %i.b = select nsz i1 %i.a, float %6, float %7
  %i.c = fadd nsz float %.sroa.09.0.vec.extract, %i.b
  %i.d = fdiv nsz float %i.c, %2
  %i.e = fptosi float %i.d to i16
  %i.f = insertelement <2 x float> %0, float %1, i64 0 ; 2 uses
  %i.g = fcmp nsz ogt <2 x float> %i.f, zeroinitializer
  %i.h = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.i = select <2 x i1> %i.g, <2 x float> %i.h, <2 x float> %8
  %i.j = fadd nsz <2 x float> %i.f, %i.i
  %i.k = fdiv nsz <2 x float> %i.j, %4
  %i.l = fptosi <2 x float> %i.k to <2 x i16>
  %i.m = zext <2 x i16> %i.l to <2 x i48>
  %i.n = shl nuw <2 x i48> %i.m, <i48 32, i48 16>
  %.sroa.2.0.insert.insert = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.n)
  %.sroa.0.0.insert.ext = zext i16 %i.e to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

declare noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

declare void @_Z17final_color_blendPN5video6SColorEtj(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12RaycastStateD2Ev(ptr noundef nonnull align 8 dead_on_return(389) dereferenceable(389) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !921, !range !307, !noundef !213
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !921
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN14PointabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(232) %i.d) #34
  br label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !924  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt14priority_queueI12PointedThingSt6vectorIS0_SaIS0_EE11RaycastSortED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !925
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #36
  br label %_ZNSt14priority_queueI12PointedThingSt6vectorIS0_SaIS0_EE11RaycastSortED2Ev.exit

_ZNSt14priority_queueI12PointedThingSt6vectorIS0_SaIS0_EE11RaycastSortED2Ev.exit: ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN4Game13handleDiggingERK12PointedThingRKN4core8vector3dIsEERK9ItemStackSA_f(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(688) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %2, ptr noundef nonnull align 8 dereferenceable(296) %3, ptr noundef nonnull align 8 dereferenceable(296) %4, float noundef %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.MapNode, align 4            ; 9 uses
  %7 = alloca %struct.DigParams, align 8          ; 20 uses
  %8 = alloca %struct.DigParams, align 8          ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !265  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !532  ; 2 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %.sroa.041.0.copyload = load i48, ptr %2, align 2
  %i.k = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.j, i48 %.sroa.041.0.copyload, ptr noundef null) ; 2 uses
  store i32 %i.k, ptr %6, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !277  ; 2 uses
  %i.n = and i32 %i.k, 65535
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !288
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !287  ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 2080
  %i.x = icmp ugt i64 %i.w, %i.o
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw [2080 x i8], ptr %i.s, i64 %i.o ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !193
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ %i.y, %bb.b ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !193
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, ptr %4, ptr %3         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !278
  %i.al = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZNK9ItemStack19getToolCapabilitiesEPK15IItemDefManagerPKS_(ptr noundef nonnull align 8 dereferenceable(296) %i.ah, ptr noundef %i.ak, ptr noundef nonnull %4)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 34
  %i.an = load i16, ptr %i.am, align 2, !tbaa !714
  call void @_Z12getDigParamsRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEPK16ToolCapabilitiest(ptr dead_on_unwind nonnull writable sret(%struct.DigParams) align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull %i.al, i16 noundef zeroext %i.an)
  %i.ao = load i8, ptr %7, align 8, !tbaa !1613, !range !307, !noundef !213
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.thread197, label %bb.d

bb.d:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !278
  %i.ar = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZNK9ItemStack19getToolCapabilitiesEPK15IItemDefManagerPKS_(ptr noundef nonnull align 8 dereferenceable(296) %4, ptr noundef %i.aq, ptr noundef null)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  invoke void @_Z12getDigParamsRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEPK16ToolCapabilitiest(ptr dead_on_unwind nonnull writable sret(%struct.DigParams) align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull %i.ar, i16 noundef zeroext 0)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 12, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !192 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !192 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.az = icmp eq ptr %i.ax, %i.ay                ; 2 uses
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  br i1 %i.az, label %bb.g, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  br i1 %i.az, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !193 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  switch i64 %i.bb, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !54
  store i8 %i.bd, ptr %i.au, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ax, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !193 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !193
  %i.bg = load ptr, ptr %i.as, align 8, !tbaa !192
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !54
  %.pre.i.i = load ptr, ptr %i.at, align 8, !tbaa !192
  br label %_ZN9DigParamsaSEOS_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !192
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bk = load <2 x i64>, ptr %i.bj, align 8, !tbaa !54
  store <2 x i64> %i.bk, ptr %i.bi, align 8, !tbaa !54
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bl = load i64, ptr %i.av, align 8, !tbaa !54
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !192
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bo = load <2 x i64>, ptr %i.bm, align 8, !tbaa !54
  store <2 x i64> %i.bo, ptr %i.bn, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.au, ptr %i.at, align 8, !tbaa !192
  store i64 %i.bl, ptr %i.ay, align 8, !tbaa !54
  br label %_ZN9DigParamsaSEOS_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !192
  br label %_ZN9DigParamsaSEOS_.exit

_ZN9DigParamsaSEOS_.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.j, %bb.k
end_hunk_0
