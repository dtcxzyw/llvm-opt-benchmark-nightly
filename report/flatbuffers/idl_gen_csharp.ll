Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_csharp?download=true
inline.NumInlined: 5148
inline.NumDeleted: 530
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK11flatbuffers6csharp15CSharpGenerator24GenUnionUnPack_ObjectAPIERKNS_7EnumDefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_SD_b:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i944: ; preds = %bb.gm
  %i.bcg = load i64, ptr %i.av, align 8, !tbaa !20
  %i.bch = add i64 %i.bcg, 1
  call void @_ZdlPvm(ptr noundef %i.bce, i64 noundef %i.bch) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit946

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit946: ; preds = %bb.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i944
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.bci = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.bcj = icmp eq ptr %i.bci, %i.as
  br i1 %i.bcj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit949, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i947

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i947: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit946
  %i.bck = load i64, ptr %i.as, align 8, !tbaa !20
  %i.bcl = add i64 %i.bck, 1
  call void @_ZdlPvm(ptr noundef %i.bci, i64 noundef %i.bcl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit949

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit949: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit946, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i947
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.bcm = load ptr, ptr %10, align 8, !tbaa !19  ; 2 uses
  %i.bcn = icmp eq ptr %i.bcm, %i.aq
  br i1 %i.bcn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit952, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i950

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i950: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit949
  %i.bco = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.bcp = add i64 %i.bco, 1
  call void @_ZdlPvm(ptr noundef %i.bcm, i64 noundef %i.bcp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit952

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit952: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit949, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i950
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.bcq = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %i.bcr = icmp eq ptr %i.bcq, %i.t
  br i1 %i.bcr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i953

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i953: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit952
  %i.bcs = load i64, ptr %i.t, align 8, !tbaa !20
  %i.bct = add i64 %i.bcs, 1
  call void @_ZdlPvm(ptr noundef %i.bcq, i64 noundef %i.bct) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit952, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i953
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.bcu = load ptr, ptr %8, align 8, !tbaa !19   ; 2 uses
  %i.bcv = icmp eq ptr %i.bcu, %i.d
  br i1 %i.bcv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i956

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i956: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955
  %i.bcw = load i64, ptr %i.d, align 8, !tbaa !20
  %i.bcx = add i64 %i.bcw, 1
  call void @_ZdlPvm(ptr noundef %i.bcu, i64 noundef %i.bcx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit958: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i956
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret void

bb.gn:                                            ; preds = %.body472, %.body493, %.body566, %.body639, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817, %.body747, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835, %.body844, %.body872, %.body422, %.body364, %.body296, %.body269, %.body243, %.body202, %bb.n, %.body
  %.pn157.pn.pn = phi { ptr, i32 } [ %i.bl, %.body ], [ %.pn119.pn.pn.pn.pn, %.body872 ], [ %.pn117, %.body422 ], [ %.pn111.pn.pn.pn.pn, %.body364 ], [ %.pn104.pn.pn.pn.pn.pn, %.body296 ], [ %.pn101.pn, %.body269 ], [ %.pn97.pn.pn, %.body202 ], [ %.pn.pn, %.body243 ], [ %i.co, %bb.n ], [ %.pn157, %.body472 ], [ %.pn155, %.body844 ], [ %.pn152.pn, %.body639 ], [ %.pn146.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835 ], [ %.pn144, %.body747 ], [ %.pn139.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit817 ], [ %.pn132.pn.pn.pn.pn.pn, %.body566 ], [ %.pn125.pn.pn.pn.pn.pn, %.body493 ]
  %i.bcy = load ptr, ptr %12, align 8, !tbaa !19  ; 2 uses
  %i.bcz = icmp eq ptr %i.bcy, %i.av
  br i1 %i.bcz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i959

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i959: ; preds = %bb.gn
  %i.bda = load i64, ptr %i.av, align 8, !tbaa !20
  %i.bdb = add i64 %i.bda, 1
  call void @_ZdlPvm(ptr noundef %i.bcy, i64 noundef %i.bdb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961: ; preds = %bb.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i959
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.bdc = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.bdd = icmp eq ptr %i.bdc, %i.as
  br i1 %i.bdd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i962

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i962: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961
  %i.bde = load i64, ptr %i.as, align 8, !tbaa !20
  %i.bdf = add i64 %i.bde, 1
  call void @_ZdlPvm(ptr noundef %i.bdc, i64 noundef %i.bdf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i962
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.bdg = load ptr, ptr %10, align 8, !tbaa !19  ; 2 uses
  %i.bdh = icmp eq ptr %i.bdg, %i.aq
  br i1 %i.bdh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit967, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i965

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i965: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964
  %i.bdi = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.bdj = add i64 %i.bdi, 1
  call void @_ZdlPvm(ptr noundef %i.bdg, i64 noundef %i.bdj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit967

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit967: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit964, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i965
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.go

bb.go:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit967, %bb.e
  %.pn157.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit967 ], [ %i.ap, %bb.e ]
  %i.bdk = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %i.bdl = icmp eq ptr %i.bdk, %i.t
  br i1 %i.bdl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i968

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i968: ; preds = %bb.go
  %i.bdm = load i64, ptr %i.t, align 8, !tbaa !20
  %i.bdn = add i64 %i.bdm, 1
  call void @_ZdlPvm(ptr noundef %i.bdk, i64 noundef %i.bdn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970: ; preds = %bb.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i968
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.bdo = load ptr, ptr %8, align 8, !tbaa !19   ; 2 uses
  %i.bdp = icmp eq ptr %i.bdo, %i.d
  br i1 %i.bdp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i971

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i971: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970
  %i.bdq = load i64, ptr %i.d, align 8, !tbaa !20
  %i.bdr = add i64 %i.bdq, 1
  call void @_ZdlPvm(ptr noundef %i.bdo, i64 noundef %i.bdr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit973: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit970, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i971
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11flatbuffers6csharp15CSharpGenerator27GenStructPackDecl_ObjectAPIERKNS_9StructDefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS1_16FieldArrayLengthESaISD_EE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.flatbuffers::Type", align 8 ; 9 uses
  %5 = alloca %"struct.flatbuffers::csharp::CSharpGenerator::FieldArrayLength", align 8 ; 14 uses
  %6 = alloca %"class.std::vector.193", align 8   ; 21 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !231  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !231
  %.not6001870 = icmp eq ptr %i.e, %i.g
  br i1 %.not6001870, label %._crit_edge1874, label %.lr.ph1873

.lr.ph1873:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 13 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 19 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 10 uses
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  br label %bb.b

._crit_edge1874:                                  ; preds = %_ZN11flatbuffers6csharp15CSharpGenerator16FieldArrayLengthD2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph1873, %_ZN11flatbuffers6csharp15CSharpGenerator16FieldArrayLengthD2Ev.exit
  %.sroa.0597.01871 = phi ptr [ %i.e, %.lr.ph1873 ], [ %i.ajm, %_ZN11flatbuffers6csharp15CSharpGenerator16FieldArrayLengthD2Ev.exit ] ; 2 uses
  %i.bw = load ptr, ptr %.sroa.0597.01871, align 8, !tbaa !237 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 200 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !244
  %i.bz = icmp eq i32 %i.by, 17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  br i1 %i.bz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !3395)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 204
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !248, !noalias !3395
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 208
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 224
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !249, !noalias !3395
  store i32 %i.cb, ptr %4, align 8, !tbaa !244, !alias.scope !3395
  store i32 0, ptr %i.h, align 4, !tbaa !248, !alias.scope !3395
  %i.cf = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !250, !noalias !3395
  store <2 x ptr> %i.cf, ptr %i.i, align 8, !tbaa !250, !alias.scope !3395
  store i16 %i.ce, ptr %i.j, align 8, !tbaa !249, !alias.scope !3395
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %4, ptr noundef nonnull align 8 dereferenceable(26) %i.bx, i64 26, i1 false), !tbaa.struct !259
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %i.k, ptr %5, align 8, !tbaa !21
  %i.cg = load ptr, ptr %i.bw, align 8, !tbaa !19 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 %i.ci, ptr %i.c, align 8, !tbaa !145
  %i.cj = icmp ugt i64 %i.ci, 15
  br i1 %i.cj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.ck = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.ck, ptr %5, align 8, !tbaa !19
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !145
  store i64 %i.cl, ptr %i.k, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.cm = phi ptr [ %i.ck, %.noexc.i ], [ %i.k, %bb.e ] ; 2 uses
  switch i64 %i.ci, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.cn = load i8, ptr %i.cg, align 1, !tbaa !20
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %i.cg, i64 %i.ci, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.co = load i64, ptr %i.c, align 8, !tbaa !145 ; 2 uses
  store i64 %i.co, ptr %i.l, align 8, !tbaa !22
  %i.cp = load ptr, ptr %5, align 8, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 0, ptr %i.cq, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.cr = load i16, ptr %i.j, align 8, !tbaa !249
  %i.cs = zext i16 %i.cr to i32
  store i32 %i.cs, ptr %i.m, align 8, !tbaa !274
  %i.ct = load ptr, ptr %i.n, align 8, !tbaa !277 ; 9 uses
  %i.cu = load ptr, ptr %i.o, align 8, !tbaa !278
  %.not.i = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 3 uses
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !21
  %i.cw = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.cx = load i64, ptr %i.l, align 8, !tbaa !22  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.cx, ptr %i.b, align 8, !tbaa !145
  %i.cy = icmp ugt i64 %i.cx, 15
  br i1 %i.cy, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.cz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.cz, ptr %i.ct, align 8, !tbaa !19
  %i.da = load i64, ptr %i.b, align 8, !tbaa !145
  store i64 %i.da, ptr %i.cv, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.h
  %i.db = phi ptr [ %i.cz, %.noexc ], [ %i.cv, %bb.h ] ; 2 uses
  switch i64 %i.cx, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN11flatbuffers6csharp15CSharpGenerator16FieldArrayLengthC2ERKS2_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dc = load i8, ptr %i.cw, align 1, !tbaa !20
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !20
  br label %_ZN11flatbuffers6csharp15CSharpGenerator16FieldArrayLengthC2ERKS2_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.cw, i64 %i.cx, i1 false)
  br label %_ZN11flatbuffers6csharp15CSharpGenerator16FieldArrayLengthC2ERKS2_.exit.i

_ZN11flatbuffers6csharp15CSharpGenerator16FieldArrayLengthC2ERKS2_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !145 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !22
  %i.df = load ptr, ptr %i.ct, align 8, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dd
  store i8 0, ptr %i.dg, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.di = load i32, ptr %i.m, align 8, !tbaa !274
  store i32 %i.di, ptr %i.dh, align 8, !tbaa !274
  %i.dj = load ptr, ptr %i.n, align 8, !tbaa !277
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store ptr %i.dk, ptr %i.n, align 8, !tbaa !277
  br label %_ZNSt6vectorIN11flatbuffers6csharp15CSharpGenerator16FieldArrayLengthESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZNSt6vectorIN11flatbuffers6csharp15CSharpGenerator16FieldArrayLengthESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ct, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %_ZNSt6vectorIN11flatbuffers6csharp15CSharpGenerator16FieldArrayLengthESaIS3_EE9push_backERKS3_.exit unwind label %bb.m

_ZNSt6vectorIN11flatbuffers6csharp15CSharpGenerator16FieldArrayLengthESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN11flatbuffers6csharp15CSharpGenerator16FieldArrayLengthC2ERKS2_.exit.i, %bb.k
  %i.dl = load ptr, ptr %i.i, align 8, !tbaa !251 ; 2 uses
  %.not = icmp eq ptr %i.dl, null
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN11flatbuffers6csharp15CSharpGenerator16FieldArrayLengthESaIS3_EE9push_backERKS3_.exit
  invoke void @_ZNK11flatbuffers6csharp15CSharpGenerator27GenStructPackDecl_ObjectAPIERKNS_9StructDefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS1_16FieldArrayLengthESaISD_EE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(336) %i.dl, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.dj unwind label %bb.m

bb.m:                                             ; preds = %bb.k, %.noexc.i.i.i, %bb.l
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.n:                                             ; preds = %_ZNSt6vectorIN11flatbuffers6csharp15CSharpGenerator16FieldArrayLengthESaIS3_EE9push_backERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.dn = load ptr, ptr %i.n, align 8, !tbaa !277
  %i.do = load ptr, ptr %3, align 8, !tbaa !279   ; 2 uses
  %.not1875 = icmp eq ptr %i.dn, %i.do
  br i1 %.not1875, label %._crit_edge.thread, label %.lr.ph
end_hunk_0
begin_hunk_1_@_ZNK11flatbuffers6csharp15CSharpGenerator27GenStructPackDecl_ObjectAPIERKNS_9StructDefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS1_16FieldArrayLengthESaISD_EE:bb.a
  %i.hq = icmp eq ptr %i.hp, %i.x
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204
  %i.hr = load i64, ptr %i.x, align 8, !tbaa !20
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  %i.ht = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.v
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %i.hv = load i64, ptr %i.v, align 8, !tbaa !20
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.hx = load ptr, ptr %i.p, align 8, !tbaa !277
  %i.hy = load ptr, ptr %6, align 8, !tbaa !279
  %.not125 = icmp eq ptr %i.hx, %i.hy
  br i1 %.not125, label %bb.da, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  invoke void @_ZNK11flatbuffers6csharp15CSharpGenerator12GenTypeBasicB5cxx11ERKNS_4TypeEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(26) %4, i1 noundef zeroext true)
          to label %_ZNK11flatbuffers6csharp15CSharpGenerator12GenTypeBasicB5cxx11ERKNS_4TypeE.exit unwind label %bb.ak

_ZNK11flatbuffers6csharp15CSharpGenerator12GenTypeBasicB5cxx11ERKNS_4TypeE.exit: ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !3401)
  %i.hz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.486, i64 noundef 4)
          to label %.noexc215 unwind label %bb.al, !noalias !3401 ; 6 uses

.noexc215:                                        ; preds = %_ZNK11flatbuffers6csharp15CSharpGenerator12GenTypeBasicB5cxx11ERKNS_4TypeE.exit
  store ptr %i.aa, ptr %12, align 8, !tbaa !21, !alias.scope !3401
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !19 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 5 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

bb.ac:                                            ; preds = %.noexc215
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !22 ; 3 uses
  %i.if = icmp ult i64 %i.ie, 16
  call void @llvm.assume(i1 %i.if)
  %i.ig = add nuw nsw i64 %i.ie, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ib, i64 %i.ig, i1 false)
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %.noexc215
  store ptr %i.ia, ptr %12, align 8, !tbaa !19, !alias.scope !3401
  %i.ih = load i64, ptr %i.ib, align 8, !tbaa !20
  store i64 %i.ih, ptr %i.aa, align 8, !tbaa !20, !alias.scope !3401
  %.phi.trans.insert.i213 = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %.pre.i214 = load i64, ptr %.phi.trans.insert.i213, align 8, !tbaa !22
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212, %bb.ac
  %i.ii = phi i64 [ %i.ie, %bb.ac ], [ %.pre.i214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i64 %i.ii, ptr %i.ab, align 8, !tbaa !22, !alias.scope !3401
  store ptr %i.ib, ptr %i.hz, align 8, !tbaa !19
  store i64 0, ptr %i.ij, align 8, !tbaa !22
  store i8 0, ptr %i.ib, align 8, !tbaa !20
  call void @llvm.experimental.noalias.scope.decl(metadata !3402)
  %i.ik = load i64, ptr %i.ab, align 8, !tbaa !22, !noalias !3402
  %i.il = icmp eq i64 %i.ik, 4611686018427387903
  br i1 %i.il, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i216

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #29
          to label %.noexc220 unwind label %.loopexit.split-lp725.loopexit.split-lp.loopexit.split-lp, !noalias !3402

.noexc220:                                        ; preds = %bb.ae
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i216: ; preds = %bb.ad
  %i.im = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.465, i64 noundef 1)
          to label %.noexc221 unwind label %.loopexit.split-lp725.loopexit.split-lp.loopexit.split-lp, !noalias !3402 ; 6 uses

.noexc221:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i216
  store ptr %i.ac, ptr %11, align 8, !tbaa !21, !alias.scope !3402
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !19 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 5 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

bb.af:                                            ; preds = %.noexc221
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !22 ; 3 uses
  %i.is = icmp ult i64 %i.ir, 16
  call void @llvm.assume(i1 %i.is)
  %i.it = add nuw nsw i64 %i.ir, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.io, i64 %i.it, i1 false)
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %.noexc221
  store ptr %i.in, ptr %11, align 8, !tbaa !19, !alias.scope !3402
  %i.iu = load i64, ptr %i.io, align 8, !tbaa !20
  store i64 %i.iu, ptr %i.ac, align 8, !tbaa !20, !alias.scope !3402
  %.phi.trans.insert.i218 = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %.pre.i219 = load i64, ptr %.phi.trans.insert.i218, align 8, !tbaa !22
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217, %bb.af
  %i.iv = phi i64 [ %i.ir, %bb.af ], [ %.pre.i219, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217 ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i64 %i.iv, ptr %i.ad, align 8, !tbaa !22, !alias.scope !3402
  store ptr %i.io, ptr %i.im, align 8, !tbaa !19
  store i64 0, ptr %i.iw, align 8, !tbaa !22
  store i8 0, ptr %i.io, align 8, !tbaa !20
  %i.ix = load i64, ptr %i.ad, align 8, !tbaa !22 ; 2 uses
  %i.iy = load i64, ptr %i.z, align 8, !tbaa !22
  %i.iz = sub i64 4611686018427387903, %i.iy
  %i.ja = icmp ult i64 %i.iz, %i.ix
  br i1 %i.ja, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i223

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #29
          to label %.noexc224 unwind label %.loopexit.split-lp730.loopexit.split-lp.loopexit.split-lp

.noexc224:                                        ; preds = %bb.ah
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i223: ; preds = %bb.ag
  %i.jb = load ptr, ptr %11, align 8, !tbaa !19
  %i.jc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.jb, i64 noundef %i.ix)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit226 unwind label %.loopexit.split-lp730.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i223
  %i.jd = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.ac
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit226
  %i.jf = load i64, ptr %i.ac, align 8, !tbaa !20
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  %i.jh = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.aa
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %i.jj = load i64, ptr %i.aa, align 8, !tbaa !20
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  %i.jl = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.ae
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.jn = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.jp = load ptr, ptr %i.p, align 8, !tbaa !277
  %i.jq = load ptr, ptr %6, align 8, !tbaa !279   ; 2 uses
  %.not1877 = icmp eq ptr %i.jp, %i.jq
  br i1 %.not1877, label %._crit_edge1857, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %.pre1900 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !274
  invoke void @_ZN11flatbuffers11NumToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i32 noundef %.pre1900)
          to label %bb.aj unwind label %.loopexit.split-lp1889.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.jr = load i64, ptr %i.af, align 8, !tbaa !22 ; 2 uses
  %i.js = load i64, ptr %i.z, align 8, !tbaa !22
  %i.jt = sub i64 4611686018427387903, %i.js
  %i.ju = icmp ult i64 %i.jt, %i.jr
  br i1 %i.ju, label %.loopexit1893, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i258.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i258.peel: ; preds = %bb.aj
  %i.jv = load ptr, ptr %14, align 8, !tbaa !19
  %i.jw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.jv, i64 noundef %i.jr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit261.peel unwind label %.loopexit.split-lp695.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit261.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i258.peel
  %i.jx = load ptr, ptr %14, align 8, !tbaa !19   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.ag
  br i1 %i.jy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i263.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit261.peel
  %i.jz = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i263.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit261.peel
  %38 = load i64, ptr %i.af, align 8, !tbaa !22
  %39 = icmp ult i64 %38, 16
  call void @llvm.assume(i1 %39)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i263.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.kb = load ptr, ptr %i.p, align 8, !tbaa !277
  %i.kc = load ptr, ptr %6, align 8, !tbaa !279
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = sdiv exact i64 %i.kf, 40
  %i.kh = icmp ugt i64 %i.kg, 1
  br i1 %i.kh, label %.lr.ph1856.peel.next, label %._crit_edge1857

._crit_edge1857:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %i.ki = load i64, ptr %i.z, align 8, !tbaa !22
  %i.kj = add i64 %i.ki, -4611686018427387901
  %i.kk = icmp ult i64 %i.kj, 3
  br i1 %i.kk, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i236

.invoke:                                          ; preds = %._crit_edge1857, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit559, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit555._crit_edge, %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit412._crit_edge, %._crit_edge1862, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %.lr.ph1856.peel.next, %.lr.ph1867
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #29
          to label %.cont unwind label %.loopexit.split-lp602.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i236: ; preds = %._crit_edge1857
  %i.kl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.499, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp602.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp715.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.x
  %lpad.loopexit.split-lp2338 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

.loopexit.split-lp720.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i201, %bb.aa
  %lpad.loopexit.split-lp2341 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.km = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.x
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %.loopexit.split-lp720.loopexit.split-lp.loopexit.split-lp
  %i.ko = load i64, ptr %i.x, align 8, !tbaa !20
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %.loopexit.split-lp720.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp715.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp2341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239 ], [ %lpad.loopexit.split-lp2338, %.loopexit.split-lp715.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp2341, %.loopexit.split-lp720.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.kq = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.v
  br i1 %i.kr, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %.loopexit.split-lp710.loopexit.split-lp.loopexit.split-lp
  %.sink2252 = phi ptr [ %i.fi, %.loopexit.split-lp710.loopexit.split-lp.loopexit.split-lp ], [ %i.kq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp2335, %.loopexit.split-lp710.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ]
  %i.ks = load i64, ptr %i.v, align 8, !tbaa !20
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %.sink2252, i64 noundef %i.kt) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %.loopexit.split-lp710.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp2335, %.loopexit.split-lp710.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %.loopexit.split-lp602

bb.ak:                                            ; preds = %bb.ab
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

bb.al:                                            ; preds = %_ZNK11flatbuffers6csharp15CSharpGenerator12GenTypeBasicB5cxx11ERKNS_4TypeE.exit
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

.loopexit.split-lp725.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i216, %bb.ae
  %lpad.loopexit.split-lp2344 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

.loopexit.split-lp730.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i223, %bb.ah
  %lpad.loopexit.split-lp2347 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kw = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.ac
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %.loopexit.split-lp730.loopexit.split-lp.loopexit.split-lp
  %i.ky = load i64, ptr %i.ac, align 8, !tbaa !20
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.kz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %.loopexit.split-lp730.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp725.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245
  %.pn129 = phi { ptr, i32 } [ %lpad.loopexit.split-lp2347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %lpad.loopexit.split-lp2344, %.loopexit.split-lp725.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp2347, %.loopexit.split-lp730.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.la = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.aa
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.lc = load i64, ptr %i.aa, align 8, !tbaa !20
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248, %bb.al
  %.pn129.pn = phi { ptr, i32 } [ %i.kv, %bb.al ], [ %.pn129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %.pn129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ] ; 2 uses
  %i.le = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.ae
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %i.lg = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, %bb.ak
  %.pn129.pn.pn = phi { ptr, i32 } [ %i.ku, %bb.ak ], [ %.pn129.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.pn129.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.loopexit.split-lp602

.lr.ph1856.peel.next:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264
  %.0801855 = phi i64 [ %i.lz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.peel ] ; 2 uses
  %i.li = load i64, ptr %i.z, align 8, !tbaa !22
  %i.lj = icmp eq i64 %i.li, 4611686018427387903
  br i1 %i.lj, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i254: ; preds = %.lr.ph1856.peel.next
  %i.lk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.466, i64 noundef 1)
          to label %bb.am unwind label %.loopexit.split-lp602.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp602.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i548, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i582, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i556, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i552, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i486, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i409, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i268, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i236, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp602

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i254
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.ll = load ptr, ptr %6, align 8, !tbaa !279
  %i.lm = getelementptr inbounds nuw [40 x i8], ptr %i.ll, i64 %.0801855
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !274
  invoke void @_ZN11flatbuffers11NumToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i32 noundef %i.lo)
          to label %bb.an unwind label %.loopexit.split-lp1889.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  %i.lp = load i64, ptr %i.af, align 8, !tbaa !22 ; 2 uses
  %i.lq = load i64, ptr %i.z, align 8, !tbaa !22
  %i.lr = sub i64 4611686018427387903, %i.lq
  %i.ls = icmp ult i64 %i.lr, %i.lp
  br i1 %i.ls, label %.loopexit1893, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i258

.loopexit1893:                                    ; preds = %bb.aj, %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #29
          to label %.noexc259 unwind label %.loopexit.split-lp695.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc259:                                        ; preds = %.loopexit1893
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i258: ; preds = %bb.an
  %i.lt = load ptr, ptr %14, align 8, !tbaa !19
  %i.lu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.lt, i64 noundef %i.lp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit261 unwind label %.loopexit.split-lp695.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i258
  %i.lv = load ptr, ptr %14, align 8, !tbaa !19   ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.ag
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit261
  %i.lx = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit261, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.lz = add nuw i64 %.0801855, 1                ; 2 uses
  %i.ma = load ptr, ptr %i.p, align 8, !tbaa !277
  %i.mb = load ptr, ptr %6, align 8, !tbaa !279
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = sdiv exact i64 %i.me, 40
  %i.mg = icmp ult i64 %i.lz, %i.mf
  br i1 %i.mg, label %.lr.ph1856.peel.next, label %._crit_edge1857, !llvm.loop !3348

.loopexit.split-lp1889.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.ai
  %lpad.loopexit.split-lp2324 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267

.loopexit.split-lp695.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i258.peel, %.loopexit1893
  %lpad.loopexit.split-lp2351 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mh = load ptr, ptr %14, align 8, !tbaa !19   ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.ag
end_hunk_1
