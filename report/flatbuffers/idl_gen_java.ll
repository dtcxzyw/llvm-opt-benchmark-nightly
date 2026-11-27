Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_java?download=true
inline.NumInlined: 5419
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK11flatbuffers4java13JavaGenerator24GenUnionUnPack_ObjectAPIERKNS_7EnumDefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_SD_b:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1066: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1063, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1064
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.blz = load ptr, ptr %12, align 8, !tbaa !28  ; 2 uses
  %i.bma = icmp eq ptr %i.blz, %i.ca
  br i1 %i.bma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1067

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1067: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1066
  %i.bmb = load i64, ptr %i.ca, align 8, !tbaa !29
  %i.bmc = add i64 %i.bmb, 1
  call void @_ZdlPvm(ptr noundef %i.blz, i64 noundef %i.bmc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1066, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1067
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.bmd = load ptr, ptr %8, align 8, !tbaa !28   ; 2 uses
  %i.bme = icmp eq ptr %i.bmd, %i.bb
  br i1 %i.bme, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1072, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1070

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1070: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069
  %i.bmf = load i64, ptr %i.bb, align 8, !tbaa !29
  %i.bmg = add i64 %i.bmf, 1
  call void @_ZdlPvm(ptr noundef %i.bmd, i64 noundef %i.bmg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1072

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1072: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1070
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.bmh = load ptr, ptr %7, align 8, !tbaa !28   ; 2 uses
  %i.bmi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bmj = icmp eq ptr %i.bmh, %i.bmi
  br i1 %i.bmj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1075, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1073

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1073: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1072
  %i.bmk = load i64, ptr %i.bmi, align 8, !tbaa !29
  %i.bml = add i64 %i.bmk, 1
  call void @_ZdlPvm(ptr noundef %i.bmh, i64 noundef %i.bml) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1075

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1075: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1072, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1073
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void

bb.hy:                                            ; preds = %.body581, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927, %.body961, %.body943, %.body486, %.body448, %.body411, %.body363, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, %.body
  %.pn178.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn110.pn.pn.pn.pn.pn, %.body ], [ %.pn144.pn.pn.pn.pn.pn.pn, %.body961 ], [ %.pn142, %.body943 ], [ %.pn140, %.body486 ], [ %.pn136.pn.pn, %.body448 ], [ %.pn132.pn.pn, %.body411 ], [ %.pn127.pn.pn.pn, %.body363 ], [ %.pn117.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542 ], [ %.pn178.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927 ], [ %.pn152.pn.pn.pn.pn, %.body581 ] ; 2 uses
  %i.bmm = load ptr, ptr %14, align 8, !tbaa !28  ; 2 uses
  %i.bmn = icmp eq ptr %i.bmm, %i.co
  br i1 %i.bmn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1078, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1076

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1076: ; preds = %bb.hy
  %i.bmo = load i64, ptr %i.co, align 8, !tbaa !29
  %i.bmp = add i64 %i.bmo, 1
  call void @_ZdlPvm(ptr noundef %i.bmm, i64 noundef %i.bmp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1078

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1078: ; preds = %bb.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1076
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.bmq = load ptr, ptr %13, align 8, !tbaa !28  ; 2 uses
  %i.bmr = icmp eq ptr %i.bmq, %i.cg
  br i1 %i.bmr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1081, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1079

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1079: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1078
  %i.bms = load i64, ptr %i.cg, align 8, !tbaa !29
  %i.bmt = add i64 %i.bms, 1
  call void @_ZdlPvm(ptr noundef %i.bmq, i64 noundef %i.bmt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1081

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1081: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1078, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1079
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.bmu = load ptr, ptr %12, align 8, !tbaa !28  ; 2 uses
  %i.bmv = icmp eq ptr %i.bmu, %i.ca
  br i1 %i.bmv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1081
  %i.bmw = load i64, ptr %i.ca, align 8, !tbaa !29
  %i.bmx = add i64 %i.bmw, 1
  call void @_ZdlPvm(ptr noundef %i.bmu, i64 noundef %i.bmx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1081, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.bmy = load ptr, ptr %8, align 8, !tbaa !28   ; 2 uses
  %i.bmz = icmp eq ptr %i.bmy, %i.bb
  br i1 %i.bmz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1087, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1085

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1085: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084
  %i.bna = load i64, ptr %i.bb, align 8, !tbaa !29
  %i.bnb = add i64 %i.bna, 1
  call void @_ZdlPvm(ptr noundef %i.bmy, i64 noundef %i.bnb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1087

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1087: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1085, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497
  %.pn178.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497 ], [ %.pn178.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1085 ], [ %.pn178.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.bnc = load ptr, ptr %7, align 8, !tbaa !28   ; 2 uses
  %i.bnd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bne = icmp eq ptr %i.bnc, %i.bnd
  br i1 %i.bne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1090, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1088

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1088: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1087
  %i.bnf = load i64, ptr %i.bnd, align 8, !tbaa !29
  %i.bng = add i64 %i.bnf, 1
  call void @_ZdlPvm(ptr noundef %i.bnc, i64 noundef %i.bng) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1090

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1090: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1087, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1088
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn178.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11flatbuffers4java13JavaGenerator27GenStructPackDecl_ObjectAPIERKNS_9StructDefERSt6vectorINS1_16FieldArrayLengthESaIS6_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.flatbuffers::Type", align 8 ; 11 uses
  %5 = alloca %"struct.flatbuffers::java::JavaGenerator::FieldArrayLength", align 8 ; 14 uses
  %6 = alloca %"class.std::vector.189", align 8   ; 22 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !250  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !250
  %.not7562743 = icmp eq ptr %i.g, %i.i
  br i1 %.not7562743, label %._crit_edge2747, label %.lr.ph2746

.lr.ph2746:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 14 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 23 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 10 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %37, i64 19
  %i.by = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %47, i64 19
  %i.cr = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  br label %bb.b

._crit_edge2747:                                  ; preds = %_ZN11flatbuffers4java13JavaGenerator16FieldArrayLengthD2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph2746, %_ZN11flatbuffers4java13JavaGenerator16FieldArrayLengthD2Ev.exit
  %.sroa.0753.02744 = phi ptr [ %i.g, %.lr.ph2746 ], [ %i.asn, %_ZN11flatbuffers4java13JavaGenerator16FieldArrayLengthD2Ev.exit ] ; 2 uses
  %i.cw = load ptr, ptr %.sroa.0753.02744, align 8, !tbaa !252 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 200 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !218
  %i.cz = icmp eq i32 %i.cy, 17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  br i1 %i.cz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !3529)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 204
  %i.db = load i32, ptr %i.da, align 4, !tbaa !261, !noalias !3529
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 208
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 224
  %i.de = load i16, ptr %i.dd, align 8, !tbaa !262, !noalias !3529
  store i32 %i.db, ptr %4, align 8, !tbaa !218, !alias.scope !3529
  store i32 0, ptr %i.j, align 4, !tbaa !261, !alias.scope !3529
  %i.df = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !263, !noalias !3529
  store <2 x ptr> %i.df, ptr %i.k, align 8, !tbaa !263, !alias.scope !3529
  store i16 %i.de, ptr %i.l, align 8, !tbaa !262, !alias.scope !3529
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %4, ptr noundef nonnull align 8 dereferenceable(26) %i.cx, i64 26, i1 false), !tbaa.struct !268
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.m, ptr %5, align 8, !tbaa !30
  %i.dg = load ptr, ptr %i.cw, align 8, !tbaa !28 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 %i.di, ptr %i.e, align 8, !tbaa !69
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.dk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.dk, ptr %5, align 8, !tbaa !28
  %i.dl = load i64, ptr %i.e, align 8, !tbaa !69
  store i64 %i.dl, ptr %i.m, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.dm = phi ptr [ %i.dk, %.noexc.i ], [ %i.m, %bb.e ] ; 2 uses
  switch i64 %i.di, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.dn = load i8, ptr %i.dg, align 1, !tbaa !29
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.dg, i64 %i.di, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.do = load i64, ptr %i.e, align 8, !tbaa !69  ; 2 uses
  store i64 %i.do, ptr %i.n, align 8, !tbaa !31
  %i.dp = load ptr, ptr %5, align 8, !tbaa !28
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  store i8 0, ptr %i.dq, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.dr = load i16, ptr %i.l, align 8, !tbaa !262
  %i.ds = zext i16 %i.dr to i32
  store i32 %i.ds, ptr %i.o, align 8, !tbaa !278
  %i.dt = load ptr, ptr %i.p, align 8, !tbaa !281 ; 9 uses
  %i.du = load ptr, ptr %i.q, align 8, !tbaa !282
  %.not.i = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 3 uses
  store ptr %i.dv, ptr %i.dt, align 8, !tbaa !30
  %i.dw = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.dx = load i64, ptr %i.n, align 8, !tbaa !31  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 %i.dx, ptr %i.d, align 8, !tbaa !69
  %i.dy = icmp ugt i64 %i.dx, 15
  br i1 %i.dy, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.dz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.dz, ptr %i.dt, align 8, !tbaa !28
  %i.ea = load i64, ptr %i.d, align 8, !tbaa !69
  store i64 %i.ea, ptr %i.dv, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.h
  %i.eb = phi ptr [ %i.dz, %.noexc ], [ %i.dv, %bb.h ] ; 2 uses
  switch i64 %i.dx, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN11flatbuffers4java13JavaGenerator16FieldArrayLengthC2ERKS2_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ec = load i8, ptr %i.dw, align 1, !tbaa !29
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !29
  br label %_ZN11flatbuffers4java13JavaGenerator16FieldArrayLengthC2ERKS2_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %i.dw, i64 %i.dx, i1 false)
  br label %_ZN11flatbuffers4java13JavaGenerator16FieldArrayLengthC2ERKS2_.exit.i

_ZN11flatbuffers4java13JavaGenerator16FieldArrayLengthC2ERKS2_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.ed = load i64, ptr %i.d, align 8, !tbaa !69  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !31
  %i.ef = load ptr, ptr %i.dt, align 8, !tbaa !28
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ed
  store i8 0, ptr %i.eg, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.ei = load i32, ptr %i.o, align 8, !tbaa !278
  store i32 %i.ei, ptr %i.eh, align 8, !tbaa !278
  %i.ej = load ptr, ptr %i.p, align 8, !tbaa !281
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  store ptr %i.ek, ptr %i.p, align 8, !tbaa !281
  br label %_ZNSt6vectorIN11flatbuffers4java13JavaGenerator16FieldArrayLengthESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZNSt6vectorIN11flatbuffers4java13JavaGenerator16FieldArrayLengthESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.dt, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %_ZNSt6vectorIN11flatbuffers4java13JavaGenerator16FieldArrayLengthESaIS3_EE9push_backERKS3_.exit unwind label %bb.m

_ZNSt6vectorIN11flatbuffers4java13JavaGenerator16FieldArrayLengthESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN11flatbuffers4java13JavaGenerator16FieldArrayLengthC2ERKS2_.exit.i, %bb.k
  %i.el = load ptr, ptr %i.k, align 8, !tbaa !264 ; 2 uses
  %.not = icmp eq ptr %i.el, null
  br i1 %.not, label %bb.n, label %bb.l

end_hunk_0
begin_hunk_1_@_ZNK11flatbuffers4java13JavaGenerator27GenStructPackDecl_ObjectAPIERKNS_9StructDefERSt6vectorINS1_16FieldArrayLengthESaIS6_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.lx = icmp ugt i64 %i.lw, 15
  br i1 %i.lx, label %.noexc.i.i268, label %._crit_edge.i.i.i267

.noexc.i.i268:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
  %i.ly = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc269 unwind label %bb.ax ; 2 uses

.noexc269:                                        ; preds = %.noexc.i.i268
  store ptr %i.ly, ptr %16, align 8, !tbaa !28, !alias.scope !3538
  %i.lz = load i64, ptr %i.a, align 8, !tbaa !69, !noalias !3538
  store i64 %i.lz, ptr %i.aj, align 8, !tbaa !29, !alias.scope !3538
  br label %._crit_edge.i.i.i267

._crit_edge.i.i.i267:                             ; preds = %.noexc269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
  %i.ma = phi ptr [ %i.ly, %.noexc269 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ] ; 2 uses
  switch i64 %i.lw, label %bb.an [
    i64 1, label %bb.am
    i64 0, label %bb.ao
  ]

bb.am:                                            ; preds = %._crit_edge.i.i.i267
  %i.mb = load i8, ptr %i.lv, align 1, !tbaa !29
  store i8 %i.mb, ptr %i.ma, align 1, !tbaa !29
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge.i.i.i267
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ma, ptr nonnull align 1 %i.lv, i64 %i.lw, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %._crit_edge.i.i.i267
  %i.mc = load i64, ptr %i.a, align 8, !tbaa !69, !noalias !3538 ; 2 uses
  store i64 %i.mc, ptr %i.ak, align 8, !tbaa !31, !alias.scope !3538
  %i.md = load ptr, ptr %16, align 8, !tbaa !28, !alias.scope !3538
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mc
  store i8 0, ptr %i.me, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !3538
  call void @llvm.experimental.noalias.scope.decl(metadata !3539)
  %i.mf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.419, i64 noundef 4)
          to label %.noexc274 unwind label %bb.ay, !noalias !3539 ; 6 uses

.noexc274:                                        ; preds = %bb.ao
  store ptr %i.al, ptr %15, align 8, !tbaa !30, !alias.scope !3539
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !28 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 16 ; 5 uses
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271

bb.ap:                                            ; preds = %.noexc274
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !31 ; 3 uses
  %i.ml = icmp ult i64 %i.mk, 16
  call void @llvm.assume(i1 %i.ml)
  %i.mm = add nuw nsw i64 %i.mk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.mh, i64 %i.mm, i1 false)
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271: ; preds = %.noexc274
  store ptr %i.mg, ptr %15, align 8, !tbaa !28, !alias.scope !3539
  %i.mn = load i64, ptr %i.mh, align 8, !tbaa !29
  store i64 %i.mn, ptr %i.al, align 8, !tbaa !29, !alias.scope !3539
  %.phi.trans.insert.i272 = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %.pre.i273 = load i64, ptr %.phi.trans.insert.i272, align 8, !tbaa !31
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271, %bb.ap
  %i.mo = phi i64 [ %i.mk, %bb.ap ], [ %.pre.i273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271 ]
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store i64 %i.mo, ptr %i.am, align 8, !tbaa !31, !alias.scope !3539
  store ptr %i.mh, ptr %i.mf, align 8, !tbaa !28
  store i64 0, ptr %i.mp, align 8, !tbaa !31
  store i8 0, ptr %i.mh, align 8, !tbaa !29
  call void @llvm.experimental.noalias.scope.decl(metadata !3540)
  %i.mq = load i64, ptr %i.am, align 8, !tbaa !31, !noalias !3540
  %i.mr = icmp eq i64 %i.mq, 4611686018427387903
  br i1 %i.mr, label %bb.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i276

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #30
          to label %.noexc280 unwind label %.loopexit.split-lp895.loopexit.split-lp.loopexit.split-lp, !noalias !3540

.noexc280:                                        ; preds = %bb.ar
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i276: ; preds = %bb.aq
  %i.ms = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.514, i64 noundef 1)
          to label %.noexc281 unwind label %.loopexit.split-lp895.loopexit.split-lp.loopexit.split-lp, !noalias !3540 ; 6 uses

.noexc281:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i276
  store ptr %i.an, ptr %14, align 8, !tbaa !30, !alias.scope !3540
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !28 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 5 uses
  %i.mv = icmp eq ptr %i.mt, %i.mu
  br i1 %i.mv, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

bb.as:                                            ; preds = %.noexc281
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !31 ; 3 uses
  %i.my = icmp ult i64 %i.mx, 16
  call void @llvm.assume(i1 %i.my)
  %i.mz = add nuw nsw i64 %i.mx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.mu, i64 %i.mz, i1 false)
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %.noexc281
  store ptr %i.mt, ptr %14, align 8, !tbaa !28, !alias.scope !3540
  %i.na = load i64, ptr %i.mu, align 8, !tbaa !29
  store i64 %i.na, ptr %i.an, align 8, !tbaa !29, !alias.scope !3540
  %.phi.trans.insert.i278 = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %.pre.i279 = load i64, ptr %.phi.trans.insert.i278, align 8, !tbaa !31
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277, %bb.as
  %i.nb = phi i64 [ %i.mx, %bb.as ], [ %.pre.i279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277 ]
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store i64 %i.nb, ptr %i.ao, align 8, !tbaa !31, !alias.scope !3540
  store ptr %i.mu, ptr %i.ms, align 8, !tbaa !28
  store i64 0, ptr %i.nc, align 8, !tbaa !31
  store i8 0, ptr %i.mu, align 8, !tbaa !29
  %i.nd = load i64, ptr %i.ao, align 8, !tbaa !31 ; 2 uses
  %i.ne = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.nf = sub i64 4611686018427387903, %i.ne
  %i.ng = icmp ult i64 %i.nf, %i.nd
  br i1 %i.ng, label %bb.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i283

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #30
          to label %.noexc284 unwind label %.loopexit.split-lp900.loopexit.split-lp.loopexit.split-lp

.noexc284:                                        ; preds = %bb.au
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i283: ; preds = %bb.at
  %i.nh = load ptr, ptr %14, align 8, !tbaa !28
  %i.ni = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.nh, i64 noundef %i.nd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit286 unwind label %.loopexit.split-lp900.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit286: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i283
  %i.nj = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.an
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit286
  %i.nl = load i64, ptr %i.an, align 8, !tbaa !29
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287
  %i.nn = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.al
  br i1 %i.no, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289
  %i.np = load i64, ptr %i.al, align 8, !tbaa !29
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290
  %i.nr = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.ns = icmp eq ptr %i.nr, %i.aj
  br i1 %i.ns, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
  %i.nt = load i64, ptr %i.aj, align 8, !tbaa !29
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.nv = load ptr, ptr %i.r, align 8, !tbaa !281
  %i.nw = load ptr, ptr %6, align 8, !tbaa !283   ; 2 uses
  %.not2751 = icmp eq ptr %i.nv, %i.nw
  br i1 %.not2751, label %._crit_edge2730, label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.nw, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !278
  invoke void @_ZN11flatbuffers11NumToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, i32 noundef %.pre)
          to label %bb.aw unwind label %.loopexit.split-lp2762.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  %i.nx = load i64, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %i.ny = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.nz = sub i64 4611686018427387903, %i.ny
  %i.oa = icmp ult i64 %i.nz, %i.nx
  br i1 %i.oa, label %.loopexit2766, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i319.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i319.peel: ; preds = %bb.aw
  %i.ob = load ptr, ptr %17, align 8, !tbaa !28
  %i.oc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ob, i64 noundef %i.nx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit322.peel unwind label %.loopexit.split-lp861.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit322.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i319.peel
  %i.od = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.aq
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit322.peel
  %i.of = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit322.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.oh = load ptr, ptr %i.r, align 8, !tbaa !281
  %i.oi = load ptr, ptr %6, align 8, !tbaa !283
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = sdiv exact i64 %i.ol, 40
  %i.on = icmp ugt i64 %i.om, 1
  br i1 %i.on, label %.lr.ph2729.peel.next, label %._crit_edge2730

._crit_edge2730:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295
  %i.oo = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.op = add i64 %i.oo, -4611686018427387901
  %i.oq = icmp ult i64 %i.op, 3
  br i1 %i.oq, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i296: ; preds = %._crit_edge2730
  %i.or = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.516, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit299 unwind label %.loopexit.split-lp763.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp885.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i251, %bb.ai
  %lpad.loopexit.split-lp3300 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

.loopexit.split-lp890.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i257, %bb.al
  %lpad.loopexit.split-lp3303 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.os = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.ah
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %.loopexit.split-lp890.loopexit.split-lp.loopexit.split-lp
  %i.ou = load i64, ptr %i.ah, align 8, !tbaa !29
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %.loopexit.split-lp890.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp885.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300
  %.pn154 = phi { ptr, i32 } [ %lpad.loopexit.split-lp3303, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300 ], [ %lpad.loopexit.split-lp3300, %.loopexit.split-lp885.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp3303, %.loopexit.split-lp890.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ow = load ptr, ptr %13, align 8, !tbaa !28   ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.af
  br i1 %i.ox, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %.loopexit.split-lp880.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ %i.js, %.loopexit.split-lp880.loopexit.split-lp.loopexit.split-lp ], [ %i.ow, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ]
  %.pn154.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp3297, %.loopexit.split-lp880.loopexit.split-lp.loopexit.split-lp ], [ %.pn154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ]
  %i.oy = load i64, ptr %i.af, align 8, !tbaa !29
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.oz) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %.loopexit.split-lp880.loopexit.split-lp.loopexit.split-lp
  %.pn154.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp3297, %.loopexit.split-lp880.loopexit.split-lp.loopexit.split-lp ], [ %.pn154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %.pn154.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.loopexit.split-lp763

bb.ax:                                            ; preds = %.noexc.i.i268
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

bb.ay:                                            ; preds = %bb.ao
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

.loopexit.split-lp895.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i276, %bb.ar
  %lpad.loopexit.split-lp3306 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

.loopexit.split-lp900.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i283, %bb.au
  %lpad.loopexit.split-lp3309 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pc = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.an
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %.loopexit.split-lp900.loopexit.split-lp.loopexit.split-lp
  %i.pe = load i64, ptr %i.an, align 8, !tbaa !29
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %.loopexit.split-lp900.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp895.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306
  %.pn157 = phi { ptr, i32 } [ %lpad.loopexit.split-lp3309, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306 ], [ %lpad.loopexit.split-lp3306, %.loopexit.split-lp895.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp3309, %.loopexit.split-lp900.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.pg = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.al
  br i1 %i.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %i.pi = load i64, ptr %i.al, align 8, !tbaa !29
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309, %bb.ay
  %.pn157.pn = phi { ptr, i32 } [ %i.pb, %bb.ay ], [ %.pn157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309 ], [ %.pn157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ] ; 2 uses
  %i.pk = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.pl = icmp eq ptr %i.pk, %i.aj
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311
  %i.pm = load i64, ptr %i.aj, align 8, !tbaa !29
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.pn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312, %bb.ax
  %.pn157.pn.pn = phi { ptr, i32 } [ %i.pa, %bb.ax ], [ %.pn157.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312 ], [ %.pn157.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %.loopexit.split-lp763

.lr.ph2729.peel.next:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325
  %.0872728 = phi i64 [ %i.qg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.peel ] ; 2 uses
  %i.po = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.pp = and i64 %i.po, -2
  %i.pq = icmp eq i64 %i.pp, 4611686018427387902
  br i1 %i.pq, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315: ; preds = %.lr.ph2729.peel.next
  %i.pr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.515, i64 noundef 2)
          to label %bb.az unwind label %.loopexit.split-lp763.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp763.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i632, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i296, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i547, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i673, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i677, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i736, %.invoke
  %lpad.loopexit.split-lp3317 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp763

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i315
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.ps = load ptr, ptr %6, align 8, !tbaa !283
  %i.pt = getelementptr inbounds nuw [40 x i8], ptr %i.ps, i64 %.0872728
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !278
  invoke void @_ZN11flatbuffers11NumToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, i32 noundef %i.pv)
          to label %bb.ba unwind label %.loopexit.split-lp2762.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  %i.pw = load i64, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %i.px = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.py = sub i64 4611686018427387903, %i.px
  %i.pz = icmp ult i64 %i.py, %i.pw
  br i1 %i.pz, label %.loopexit2766, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i319

.loopexit2766:                                    ; preds = %bb.aw, %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #30
          to label %.noexc320 unwind label %.loopexit.split-lp861.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc320:                                        ; preds = %.loopexit2766
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i319: ; preds = %bb.ba
  %i.qa = load ptr, ptr %17, align 8, !tbaa !28
  %i.qb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.qa, i64 noundef %i.pw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit322 unwind label %.loopexit.split-lp861.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i319
  %i.qc = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.aq
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit322
  %i.qe = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.qg = add nuw i64 %.0872728, 1                ; 2 uses
  %i.qh = load ptr, ptr %i.r, align 8, !tbaa !281
  %i.qi = load ptr, ptr %6, align 8, !tbaa !283
  %i.qj = ptrtoint ptr %i.qh to i64
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = sub i64 %i.qj, %i.qk
  %i.qm = sdiv exact i64 %i.ql, 40
  %i.qn = icmp ult i64 %i.qg, %i.qm
  br i1 %i.qn, label %.lr.ph2729.peel.next, label %._crit_edge2730, !llvm.loop !3472

.loopexit.split-lp2762.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.av
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

.loopexit.split-lp861.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i319, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i319.peel, %.loopexit2766
  %lpad.loopexit.split-lp3313 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qo = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.qp = icmp eq ptr %i.qo, %i.aq
  br i1 %i.qp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %.loopexit.split-lp861.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.qq = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qr) #26
end_hunk_1
