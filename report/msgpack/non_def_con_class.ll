Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/non_def_con_class?download=true
inline.NumInlined: 275
inline.NumDeleted: 182
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.msgpack::v1::object_stringize_visitor" = type { ptr, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.msgpack::v1::object_parser" = type { ptr, %"class.std::vector.0" }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<msgpack::v1::object_parser::elem, std::allocator<msgpack::v1::object_parser::elem>>::_Vector_impl" }
%"struct.std::_Vector_base<msgpack::v1::object_parser::elem, std::allocator<msgpack::v1::object_parser::elem>>::_Vector_impl" = type { %"struct.std::_Vector_base<msgpack::v1::object_parser::elem, std::allocator<msgpack::v1::object_parser::elem>>::_Vector_impl_data" }
%"struct.std::_Vector_base<msgpack::v1::object_parser::elem, std::allocator<msgpack::v1::object_parser::elem>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.msgpack::v1::type::define_array" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"struct.msgpack::v1::object_with_zone_type" = type { %"struct.msgpack::v2::object", ptr }
%"struct.msgpack::v2::object" = type { %"struct.msgpack::v1::object" }
%"struct.msgpack::v1::object" = type { i32, %"union.msgpack::v1::object::union_type" }
%"union.msgpack::v1::object::union_type" = type { %"struct.msgpack::v1::object_array" }
%"struct.msgpack::v1::object_array" = type { i32, ptr }
%struct.my = type { i32 }
%"class.msgpack::v1::zone" = type { i64, %"struct.msgpack::v1::zone::chunk_list", %"struct.msgpack::v1::zone::finalizer_array" }
%"struct.msgpack::v1::zone::chunk_list" = type { i64, ptr, ptr }
%"struct.msgpack::v1::zone::finalizer_array" = type { ptr, ptr, ptr }

$_ZN7msgpack2v14zoneD2Ev = comdat any

$_ZN7msgpack2v113object_parser5parseINS0_24object_stringize_visitorEEEvRT_ = comdat any

$_ZN7msgpack2v124object_stringize_visitor9visit_strEPKcj = comdat any

$__clang_call_terminate = comdat any

$_ZN7msgpack2v110type_errorD0Ev = comdat any

$_ZNK7msgpack2v14type12define_arrayIJKiEE14msgpack_objectEPNS_2v26objectERNS0_4zoneE = comdat any

$_ZTIN7msgpack2v110type_errorE = comdat any

$_ZTSN7msgpack2v110type_errorE = comdat any

$_ZTVN7msgpack2v110type_errorE = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZTIN7msgpack2v110type_errorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7msgpack2v110type_errorE, ptr @_ZTISt8bad_cast }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN7msgpack2v110type_errorE = linkonce_odr dso_local constant [26 x i8] c"N7msgpack2v110type_errorE\00", comdat, align 1
@_ZTISt8bad_cast = external constant ptr
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\/\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\\u\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"\22BIN(size:\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c")\22\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"\22EXT(type:\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c",size:\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@_ZTVN7msgpack2v110type_errorE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7msgpack2v110type_errorE, ptr @_ZNSt8bad_castD2Ev, ptr @_ZN7msgpack2v110type_errorD0Ev, ptr @_ZNKSt8bad_cast4whatEv] }, comdat, align 8
@.str.22 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.msgpack::v1::object_stringize_visitor", align 8 ; 8 uses
  %1 = alloca %"class.msgpack::v1::object_parser", align 8 ; 8 uses
  %2 = alloca %"struct.msgpack::v1::type::define_array", align 8 ; 4 uses
  %3 = alloca %"struct.msgpack::v1::object_with_zone_type", align 8 ; 7 uses
  %4 = alloca %struct.my, align 4                 ; 5 uses
  %5 = alloca %"class.msgpack::v1::zone", align 8 ; 12 uses
  %6 = alloca %"struct.msgpack::v2::object", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i32 42, ptr %4, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i64 8192, ptr %5, align 8, !tbaa !20
  %i.a = tail call noalias dereferenceable_or_null(8200) ptr @malloc(i64 noundef 8200) #18 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN7msgpack2v14zoneC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.b, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

_ZN7msgpack2v14zoneC2Em.exit:                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !23
  store i64 8192, ptr %i.c, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !87
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %i.h, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %4, ptr %2, align 8, !tbaa !30, !alias.scope !90
  invoke void @_ZNK7msgpack2v14type12define_arrayIJKiEE14msgpack_objectEPNS_2v26objectERNS0_4zoneE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %_ZN7msgpack2v14zoneC2Em.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.i = load i32, ptr %3, align 8, !tbaa !28
  store i32 %i.i, ptr %6, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store ptr @_ZSt4cout, ptr %0, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr %6, ptr %1, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  invoke void @_ZN7msgpack2v113object_parser5parseINS0_24object_stringize_visitorEEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN7msgpack2v113object_parserD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #20
  br label %_ZN7msgpack2v113object_parserD2Ev.exit.i

_ZN7msgpack2v113object_parserD2Ev.exit.i:         ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i.i4.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i4.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN7msgpack2v113object_parserD2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #20
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !41  ; 3 uses
  %.not.i.i.i.i5.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i5.i, label %_ZN7msgpack2v113object_parserD2Ev.exit6.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #20
  br label %_ZN7msgpack2v113object_parserD2Ev.exit6.i

_ZN7msgpack2v113object_parserD2Ev.exit6.i:        ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !44  ; 3 uses
  %.not.i.i.i.i7.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i7.i, label %_ZN7msgpack2v124object_stringize_visitorD2Ev.exit8.i, label %bb.i

bb.i:                                             ; preds = %_ZN7msgpack2v113object_parserD2Ev.exit6.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #20
  br label %_ZN7msgpack2v124object_stringize_visitorD2Ev.exit8.i

_ZN7msgpack2v124object_stringize_visitorD2Ev.exit8.i: ; preds = %bb.i, %_ZN7msgpack2v113object_parserD2Ev.exit6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  br label %.body

bb.j:                                             ; preds = %bb.f, %_ZN7msgpack2v113object_parserD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.am = load ptr, ptr @_ZSt4cout, align 8, !tbaa !22
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 240
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i2 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i2, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.k
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load i8, ptr %i.as, align 8, !tbaa !65
  %.not.i1.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i1.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 67
  %i.av = load i8, ptr %i.au, align 1, !tbaa !31
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ar)
          to label %.noexc3 unwind label %bb.o

.noexc3:                                          ; preds = %bb.m
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef signext i8 %i.ay(ptr noundef nonnull align 8 dereferenceable(570) %i.ar, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.o, !inline_history !83

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc3, %bb.l
  %.0.i.i.i = phi i8 [ %i.av, %bb.l ], [ %i.az, %.noexc3 ]
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc5 unwind label %bb.o

.noexc5:                                          ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.o ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !66  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !67 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not4.i.i.i, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSolsEPFRSoS_E.exit, %.noexc.i.i
  %.05.i.i.i = phi ptr [ %i.bf, %.noexc.i.i ], [ %i.bc, %_ZNSolsEPFRSoS_E.exit ] ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !69
  %i.bh = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70
  invoke void %i.bg(ptr noundef %i.bi)
          to label %.noexc.i.i unwind label %bb.n, !inline_history !0

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, %i.bj
  br i1 %.not.i.i.i, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #21
  unreachable

_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i:  ; preds = %.noexc.i.i, %_ZNSolsEPFRSoS_E.exit
  %i.bm = phi ptr [ %i.be, %_ZNSolsEPFRSoS_E.exit ], [ %i.bj, %.noexc.i.i ]
  call void @free(ptr noundef %i.bm) #17
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bn, null
  br i1 %.not5.i.i, label %_ZN7msgpack2v14zoneD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.bo, %.lr.ph.i.i ], [ %i.bn, %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i ] ; 2 uses
  %i.bo = load ptr, ptr %.06.i.i, align 8, !tbaa !25 ; 2 uses
  call void @free(ptr noundef nonnull %.06.i.i) #17
  %.not.i.i1 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1, label %_ZN7msgpack2v14zoneD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZN7msgpack2v14zoneD2Ev.exit:                     ; preds = %.lr.ph.i.i, %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 0

bb.o:                                             ; preds = %.noexc5, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc3, %bb.m, %bb.k, %_ZN7msgpack2v14zoneC2Em.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitorD2Ev.exit8.i, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.o ], [ %i.z, %_ZN7msgpack2v124object_stringize_visitorD2Ev.exit8.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN7msgpack2v14zoneD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v14zoneD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.05.i.i = phi ptr [ %i.e, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  invoke void %i.f(ptr noundef %i.h)
          to label %.noexc.i unwind label %bb.b, !inline_history !0

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.i
  br i1 %.not.i.i, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !1

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #21
  unreachable

_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit:    ; preds = %.noexc.i, %bb.a
  %i.l = phi ptr [ %i.d, %bb.a ], [ %i.i, %.noexc.i ]
  tail call void @free(ptr noundef %i.l) #17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %.not5.i = icmp eq ptr %i.n, null
  br i1 %.not5.i, label %_ZN7msgpack2v14zone10chunk_listD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.n, %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit ] ; 2 uses
  %i.o = load ptr, ptr %.06.i, align 8, !tbaa !25 ; 2 uses
  tail call void @free(ptr noundef nonnull %.06.i) #17
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN7msgpack2v14zone10chunk_listD2Ev.exit, label %.lr.ph.i, !llvm.loop !2

_ZN7msgpack2v14zone10chunk_listD2Ev.exit:         ; preds = %.lr.ph.i, %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v113object_parser5parseINS0_24object_stringize_visitorEEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !40
  br label %bb.b

bb.b:                                             ; preds = %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62, %bb.a
  %i.e = phi ptr [ %.0.i38, %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62 ], [ %.pre, %bb.a ] ; 13 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28
  switch i32 %i.f, label %bb.z [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 10, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 9, label %bb.m
    i32 7, label %bb.n
    i32 8, label %bb.t
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str, i64 noundef 4) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !31, !range !79, !noundef !77
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 4) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.3, i64 noundef 5) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.g:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.p) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.h:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31
  %i.u = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %i.t) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.i:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !31
  %i.y = fptrunc double %i.x to float
  %i.z = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.aa = fpext float %i.y to double
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, double noundef %i.aa) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.j:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !31
  %i.ae = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, double noundef %i.ad) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.k:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !31
  %i.ak = tail call noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor9visit_strEPKcj(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ai, i32 noundef %i.aj)
  br i1 %i.ak, label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64

bb.l:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !31
  %i.an = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78 ; 2 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.13, i64 noundef 10) ; 0 uses
  %i.ap = zext i32 %i.am to i64
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i64 noundef %i.ap)
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.14, i64 noundef 2) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.m:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = zext i32 %i.at to i64
  %i.ax = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78 ; 2 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.17, i64 noundef 10) ; 0 uses
  %i.az = load i8, ptr %i.av, align 1, !tbaa !31
  %i.ba = sext i8 %i.az to i32
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 noundef %i.ba) ; 2 uses
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.18, i64 noundef 6) ; 0 uses
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i64 noundef %i.aw)
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.14, i64 noundef 2) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.n:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !31 ; 2 uses
  %4 = load ptr, ptr %3, align 8, !tbaa !100      ; 4 uses
  %5 = load ptr, ptr %i.a, align 8, !tbaa !45
  %.not.i.i = icmp eq ptr %4, %5
  br i1 %.not.i.i, label %8, label %6

6:                                                ; preds = %bb.n
  store i32 %i.bg, ptr %4, align 4, !tbaa !80
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store ptr %7, ptr %3, align 8, !tbaa !100
  br label %bb.o

8:                                                ; preds = %bb.n
  %9 = load ptr, ptr %2, align 8, !tbaa !44       ; 4 uses
  %10 = ptrtoint ptr %4 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11                          ; 6 uses
  %13 = icmp eq i64 %12, 9223372036854775804
  br i1 %13, label %14, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

14:                                               ; preds = %8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %8
  %15 = ashr exact i64 %12, 2                     ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %15, i64 1)
  %16 = add nsw i64 %.sroa.speculated.i.i.i.i, %15 ; 2 uses
  %17 = icmp ult i64 %16, %15
  %18 = tail call i64 @llvm.umin.i64(i64 %16, i64 2305843009213693951)
  %19 = select i1 %17, i64 2305843009213693951, i64 %18 ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %19, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %20 = shl nuw nsw i64 %19, 2
  %21 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %20) #22 ; 4 uses
  %22 = getelementptr inbounds i8, ptr %21, i64 %12 ; 2 uses
  store i32 %i.bg, ptr %22, align 4, !tbaa !80
  %23 = icmp sgt i64 %12, 0
  br i1 %23, label %24, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

24:                                               ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %21, ptr align 4 %9, i64 %12, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %24, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 4
  %.not.i17.i.i.i = icmp eq ptr %9, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %26

26:                                               ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %9, i64 noundef %12) #20
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %26, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %21, ptr %2, align 8, !tbaa !44
  store ptr %25, ptr %3, align 8, !tbaa !100
  %27 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %19
  store ptr %27, ptr %i.a, align 8, !tbaa !45
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %6
  %28 = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.19, i64 noundef 1) ; 0 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31 ; 2 uses
  %i.bl = load i32, ptr %i.bi, align 8, !tbaa !31
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !101 ; 8 uses
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !42
  %.not.i.i.a = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.a, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !31
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.bm, ptr %.sroa.549.0..sroa_idx, align 8, !tbaa !102
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i8 0, ptr %.sroa.652.0..sroa_idx, align 8, !tbaa !103
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 17
  store i8 0, ptr %.sroa.755.0..sroa_idx, align 1, !tbaa !103
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !101
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit

bb.q:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !41  ; 5 uses
  %i.bs = ptrtoint ptr %i.bn to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
  unreachable

_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.bw = sdiv exact i64 %i.bu, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.a = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i.i.a, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 384307168202282325)
  %i.ca = select i1 %i.by, i64 384307168202282325, i64 %i.bz ; 3 uses
  %.not.i.i.i.i.a = icmp ne i64 %i.ca, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.a)
  %i.cb = mul nuw nsw i64 %i.ca, 24
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #22 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu ; 4 uses
  store ptr %i.bk, ptr %i.cd, align 8, !tbaa !31
  %.sroa.549.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.bm, ptr %.sroa.549.0..sroa_idx50, align 8, !tbaa !102
  %.sroa.652.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i8 0, ptr %.sroa.652.0..sroa_idx53, align 8, !tbaa !103
  %.sroa.755.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.cd, i64 17
  store i8 0, ptr %.sroa.755.0..sroa_idx56, align 1, !tbaa !103
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bn
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %i.cc, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i ], [ %i.br, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !104, !alias.scope !105
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.bn
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !96

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cc, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cf, %.lr.ph.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bu) #20
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.cc, ptr %i.b, align 8, !tbaa !41
  store ptr %i.cg, ptr %i.c, align 8, !tbaa !101
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.ca
  store ptr %i.ch, ptr %i.d, align 8, !tbaa !42
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.p, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.ci = load ptr, ptr %0, align 8, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !31
  %i.cl = icmp ne i32 %i.ck, 0
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.t:                                             ; preds = %bb.b
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !31 ; 2 uses
  %30 = load ptr, ptr %3, align 8, !tbaa !100     ; 4 uses
  %31 = load ptr, ptr %i.a, align 8, !tbaa !45
  %.not.i.i26 = icmp eq ptr %30, %31
  br i1 %.not.i.i26, label %34, label %32

32:                                               ; preds = %bb.t
  store i32 %i.cn, ptr %30, align 4, !tbaa !80
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 4
  store ptr %33, ptr %3, align 8, !tbaa !100
  br label %bb.u

34:                                               ; preds = %bb.t
  %35 = load ptr, ptr %2, align 8, !tbaa !44      ; 4 uses
  %36 = ptrtoint ptr %30 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37                          ; 6 uses
  %39 = icmp eq i64 %38, 9223372036854775804
  br i1 %39, label %40, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i27

40:                                               ; preds = %34
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i27: ; preds = %34
  %41 = ashr exact i64 %38, 2                     ; 3 uses
  %.sroa.speculated.i.i.i.i28 = tail call i64 @llvm.umax.i64(i64 %41, i64 1)
  %42 = add nsw i64 %.sroa.speculated.i.i.i.i28, %41 ; 2 uses
  %43 = icmp ult i64 %42, %41
  %44 = tail call i64 @llvm.umin.i64(i64 %42, i64 2305843009213693951)
  %45 = select i1 %43, i64 2305843009213693951, i64 %44 ; 3 uses
  %.not.i.i.i.i29 = icmp ne i64 %45, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i29)
  %46 = shl nuw nsw i64 %45, 2
  %47 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %46) #22 ; 4 uses
  %48 = getelementptr inbounds i8, ptr %47, i64 %38 ; 2 uses
  store i32 %i.cn, ptr %48, align 4, !tbaa !80
  %49 = icmp sgt i64 %38, 0
  br i1 %49, label %50, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i30

50:                                               ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i27
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %47, ptr align 4 %35, i64 %38, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i30

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i30: ; preds = %50, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i27
  %51 = getelementptr inbounds nuw i8, ptr %48, i64 4
  %.not.i17.i.i.i31 = icmp eq ptr %35, null
  br i1 %.not.i17.i.i.i31, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i32, label %52

52:                                               ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i30
  tail call void @_ZdlPvm(ptr noundef nonnull %35, i64 noundef %38) #20
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i32

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i32: ; preds = %52, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i30
  store ptr %47, ptr %2, align 8, !tbaa !44
  store ptr %51, ptr %3, align 8, !tbaa !100
  %53 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %45
  store ptr %53, ptr %i.a, align 8, !tbaa !45
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i32, %32
  %54 = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %55 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull @.str.21, i64 noundef 1) ; 0 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !31 ; 2 uses
  %i.cs = load i32, ptr %i.cp, align 8, !tbaa !31
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !101 ; 8 uses
  %i.cv = load ptr, ptr %i.d, align 8, !tbaa !42
  %.not.i.i23 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i.i23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.cr, ptr %i.cu, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.ct, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !102
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !103
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 17
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !103
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !101
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36

bb.w:                                             ; preds = %bb.u
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !41  ; 5 uses
  %i.cz = ptrtoint ptr %i.cu to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 4 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775800
  br i1 %i.dc, label %bb.x, label %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
  unreachable

_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24: ; preds = %bb.w
  %i.dd = sdiv exact i64 %i.db, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i25 = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.de = add nsw i64 %.sroa.speculated.i.i.i.i25, %i.dd ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.de, i64 384307168202282325)
  %i.dh = select i1 %i.df, i64 384307168202282325, i64 %i.dg ; 3 uses
  %.not.i.i.i.i26 = icmp ne i64 %i.dh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i26)
  %i.di = mul nuw nsw i64 %i.dh, 24
  %i.dj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #22 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.db ; 4 uses
  store ptr %i.cr, ptr %i.dk, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.ct, ptr %.sroa.5.0..sroa_idx40, align 8, !tbaa !102
  %.sroa.6.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i8 1, ptr %.sroa.6.0..sroa_idx42, align 8, !tbaa !103
  %.sroa.7.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.dk, i64 17
  store i8 1, ptr %.sroa.7.0..sroa_idx44, align 1, !tbaa !103
  %.not10.i.i.i.i.i.i27 = icmp eq ptr %i.cy, %i.cu
  br i1 %.not10.i.i.i.i.i.i27, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32, label %.lr.ph.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i28:                             ; preds = %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24, %.lr.ph.i.i.i.i.i.i28
  %.012.i.i.i.i.i.i29 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i28 ], [ %i.dj, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ] ; 2 uses
  %.0911.i.i.i.i.i.i30 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i28 ], [ %i.cy, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i30, i64 24, i1 false), !tbaa.struct !104, !alias.scope !106
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i30, i64 24 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i31 = icmp eq ptr %i.dl, %i.cu
  br i1 %.not.i.i.i.i.i.i31, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32, label %.lr.ph.i.i.i.i.i.i28, !llvm.loop !96

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i.i28, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24
  %.0.lcssa.i.i.i.i.i.i33 = phi ptr [ %i.dj, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ], [ %i.dm, %.lr.ph.i.i.i.i.i.i28 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i33, i64 24
  %.not.i23.i.i.i34 = icmp eq ptr %i.cy, null
  br i1 %.not.i23.i.i.i34, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.db) #20
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35: ; preds = %bb.y, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32
  store ptr %i.dj, ptr %i.b, align 8, !tbaa !41
  store ptr %i.dn, ptr %i.c, align 8, !tbaa !101
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %i.dh
  store ptr %i.do, ptr %i.d, align 8, !tbaa !42
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36: ; preds = %bb.v, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35
  %i.dp = load ptr, ptr %0, align 8, !tbaa !40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !31
  %i.ds = icmp ne i32 %i.dr, 0
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.z:                                             ; preds = %bb.b
  %i.dt = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v110type_errorE, i64 16), ptr %i.dt, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.dt, ptr nonnull @_ZTIN7msgpack2v110type_errorE, ptr nonnull @_ZNSt8bad_castD2Ev) #19
  unreachable

_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit: ; preds = %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.k
  %.021.shrunk = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.f ], [ %i.ds, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36 ], [ %i.cl, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit ]
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !107
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !107 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64, label %bb.aa

bb.aa:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit
  br i1 %.021.shrunk, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit

_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit: ; preds = %bb.aa, %bb.ap
  %i.dx = phi ptr [ %i.fx, %bb.ap ], [ %i.dv, %bb.aa ] ; 7 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -16 ; 5 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !109 ; 3 uses
  %i.ea = icmp eq i64 %i.dz, 0
  %i.eb = getelementptr inbounds i8, ptr %i.dx, i64 -8
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !110, !range !79, !noundef !77
  %i.ed = trunc nuw i8 %i.ec to i1                ; 2 uses
  br i1 %i.ea, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit
  %i.ee = load ptr, ptr %3, align 8, !tbaa !100
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -4
  store ptr %i.ef, ptr %3, align 8, !tbaa !100
  %i.eg = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78 ; 2 uses
  br i1 %i.ed, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ad:                                            ; preds = %bb.ab
  %i.ei = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull @.str.23, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ae:                                            ; preds = %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit
  br i1 %i.ed, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.ej = getelementptr inbounds i8, ptr %i.dx, i64 -7
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !111, !range !79, !noundef !77
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.em = getelementptr inbounds i8, ptr %i.dx, i64 -7
  %i.en = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.eo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull @.str.24, i64 noundef 1) ; 0 uses
  store i8 0, ptr %i.em, align 1, !tbaa !111
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.ah:                                            ; preds = %bb.af
  %i.ep = load ptr, ptr %3, align 8, !tbaa !30
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -4 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !80
  %i.es = add i32 %i.er, -1                       ; 2 uses
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !80
  %.not.i.i37 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i37, label %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.et = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.eu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull @.str.25, i64 noundef 1) ; 0 uses
  %.pre13.i = load i64, ptr %i.dy, align 8, !tbaa !109
  br label %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i

_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i: ; preds = %bb.ai, %bb.ah
  %i.ev = phi i64 [ %.pre13.i, %bb.ai ], [ %i.dz, %bb.ah ]
  %i.ew = add i64 %i.ev, -1                       ; 2 uses
  store i64 %i.ew, ptr %i.dy, align 8, !tbaa !109
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i
  %i.ey = load ptr, ptr %3, align 8, !tbaa !100
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -4
  store ptr %i.ez, ptr %3, align 8, !tbaa !100
  %i.fa = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.fb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ak:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i
  %i.fc = getelementptr inbounds i8, ptr %i.dx, i64 -7
  %i.fd = getelementptr inbounds i8, ptr %i.dx, i64 -24 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !31
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !31
  store i8 1, ptr %i.fc, align 1, !tbaa !111
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.al:                                            ; preds = %bb.ae
  %i.fg = load ptr, ptr %3, align 8, !tbaa !30
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -4 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !80
  %i.fj = add i32 %i.fi, -1                       ; 2 uses
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !80
  %.not.i12.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i12.i, label %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fk = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.fl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.25, i64 noundef 1) ; 0 uses
  %.pre.i = load i64, ptr %i.dy, align 8, !tbaa !109
  br label %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i

_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i: ; preds = %bb.am, %bb.al
  %i.fm = phi i64 [ %.pre.i, %bb.am ], [ %i.dz, %bb.al ]
  %i.fn = add i64 %i.fm, -1                       ; 2 uses
  store i64 %i.fn, ptr %i.dy, align 8, !tbaa !109
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i
  %i.fp = load ptr, ptr %3, align 8, !tbaa !100
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -4
  store ptr %i.fq, ptr %3, align 8, !tbaa !100
  %i.fr = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.fs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull @.str.23, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i
  %i.ft = getelementptr inbounds i8, ptr %i.dx, i64 -24 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !31
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  store ptr %i.fv, ptr %i.ft, align 8, !tbaa !31
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.ap:                                            ; preds = %bb.ad, %bb.aj, %bb.ac, %bb.an
  %i.fw = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -24 ; 3 uses
  store ptr %i.fx, ptr %i.c, align 8, !tbaa !101
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !107
  %i.fz = icmp eq ptr %i.fy, %i.fx
  br i1 %i.fz, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit

_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62: ; preds = %bb.ak, %bb.ag, %bb.ao, %bb.aa
  %i.ga = load ptr, ptr %i.c, align 8, !tbaa !107 ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -24
  %i.gc = getelementptr inbounds i8, ptr %i.ga, i64 -8
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !110, !range !79, !noundef !77
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = load ptr, ptr %i.gb, align 8
  %i.gg = getelementptr inbounds i8, ptr %i.ga, i64 -7
  %i.gh = load i8, ptr %i.gg, align 1, !range !79
  %i.gi = trunc nuw i8 %i.gh to i1
  %i.gj = xor i1 %i.gi, true
  %i.gk = select i1 %i.ge, i1 %i.gj, i1 false
  %.0.idx.i = select i1 %i.gk, i64 24, i64 0
  %.0.i38 = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.0.idx.i ; 2 uses
  store ptr %.0.i38, ptr %0, align 8, !tbaa !40
  br label %bb.b

_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64: ; preds = %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit, %bb.k, %bb.ap
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor9visit_strEPKcj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 34, ptr %i.c, align 1, !tbaa !31
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !114
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext 34) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 34, ptr %i.b, align 1, !tbaa !31
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !114
  %.not.i14 = icmp eq i64 %i.s, 0
  br i1 %.not.i14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16

bb.e:                                             ; preds = %._crit_edge
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef signext 34) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 true

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !31    ; 6 uses
  switch i8 %i.w, label %bb.n [
    i8 92, label %bb.f
    i8 34, label %bb.g
    i8 47, label %bb.h
    i8 8, label %bb.i
    i8 12, label %bb.j
    i8 10, label %bb.k
    i8 13, label %bb.l
    i8 9, label %bb.m
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.x = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.4, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.g:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.5, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.h:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph
  %i.ad = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.j:                                             ; preds = %.lr.ph
  %i.af = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.8, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.k:                                             ; preds = %.lr.ph
  %i.ah = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.9, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.l:                                             ; preds = %.lr.ph
  %i.aj = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.10, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.m:                                             ; preds = %.lr.ph
  %i.al = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.11, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.n:                                             ; preds = %.lr.ph
  %i.an = icmp ult i8 %i.w, 32
  %i.ao = icmp eq i8 %i.w, 127
  %or.cond = or i1 %i.an, %i.ao
  %i.ap = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78 ; 12 uses
  br i1 %or.cond, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !115
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.12, i64 noundef 2) ; 0 uses
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24    ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.ap, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !115
  %i.bd = and i32 %i.bc, -75
  %i.be = or disjoint i32 %i.bd, 8
  store i32 %i.be, ptr %i.bb, align 8, !tbaa !116
  %i.bf = load i64, ptr %i.ay, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.ap, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 4, ptr %i.bh, align 8, !tbaa !114
  %i.bi = load i64, ptr %i.ay, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.ap, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 225 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !117, !range !79, !noundef !77
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !60 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !65
  %.not.i1.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i1.i.i.i.i, label %bb.r, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bo)
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef signext i8 %i.bt(ptr noundef nonnull align 8 dereferenceable(570) %i.bo, i8 noundef signext 32), !inline_history !112 ; 0 uses
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %bb.r, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  store i8 1, ptr %i.bk, align 1, !tbaa !117
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit: ; preds = %bb.o, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  store i8 48, ptr %i.bv, align 8, !tbaa !118
  %i.bw = zext nneg i8 %i.w to i64
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i64 noundef %i.bw) ; 0 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !22
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i32 %i.av, ptr %i.cd, align 8, !tbaa !115
  br label %bb.v

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.w, ptr %i.a, align 1, !tbaa !31
  %i.ce = load ptr, ptr %i.ap, align 8, !tbaa !22
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %i.ap, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !114
  %.not.i17 = icmp eq i64 %i.cj, 0
  br i1 %.not.i17, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

bb.u:                                             ; preds = %bb.s
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i8 noundef signext %i.w) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.v:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !113
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v110type_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt8bad_cast4whatEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7msgpack2v14type12define_arrayIJKiEE14msgpack_objectEPNS_2v26objectERNS0_4zoneE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  store i32 7, ptr %1, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119  ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 7
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, -8                         ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = add i64 %i.h, 24                         ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  br i1 %i.k, label %bb.b, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %2, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.022.i.i = phi i64 [ %i.l, %bb.b ], [ %i.n, %bb.d ] ; 5 uses
  %i.m = icmp ult i64 %.022.i.i, 31
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i.i.not = icmp eq i64 %.022.i.i, 0
  %i.n = shl nuw nsw i64 %.022.i.i, 1
  br i1 %.not.i.i.not, label %.thread, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ugt i64 %.022.i.i, -9
  br i1 %i.o, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %.2.i.i8 = phi i64 [ %.022.i.i, %bb.e ], [ 31, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.2.i.i8, 8
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #18 ; 5 uses
  %.not27.i.i = icmp eq ptr %i.r, null
  br i1 %.not27.i.i, label %bb.g, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.g:                                             ; preds = %.thread
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %.thread
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  store ptr %i.v, ptr %i.r, align 8, !tbaa !25
  store ptr %i.r, ptr %i.u, align 8, !tbaa !23
  %i.w = getelementptr i8, ptr %i.r, i64 15
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, -8                         ; 2 uses
  %i.z = ptrtoint ptr %i.t to i64
  %reass.sub10 = sub i64 %i.y, %i.z
  %i.aa = add i64 %reass.sub10, 24
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.a, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.ab = phi ptr [ %i.t, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.c, %bb.a ]
  %i.ac = phi i64 [ %.2.i.i8, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.j, %bb.a ]
  %.014.i = phi i64 [ %i.aa, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.i, %bb.a ] ; 2 uses
  %.0.in.i = phi i64 [ %i.y, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.f, %bb.a ]
  %.0.i = inttoptr i64 %.0.in.i to ptr            ; 3 uses
  %i.ad = sub i64 %i.ac, %.014.i
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.014.i
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !119
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !31
  store i32 1, ptr %i.af, align 8, !tbaa !31
  %i.ah = load ptr, ptr %0, align 8, !tbaa !122, !nonnull !77, !align !123
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !80 ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 0                   ; 2 uses
  %i.ak = sext i32 %i.ai to i64
  %i.al = zext nneg i32 %i.ai to i64
  %.sink6.i.i.i.i.i.i.i = select i1 %i.aj, i32 3, i32 2
  %.sink.i.i.i.i.i.i.i = select i1 %i.aj, i64 %i.ak, i64 %i.al
  store i32 %.sink6.i.i.i.i.i.i.i, ptr %.0.i, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 %.sink.i.i.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i, align 8
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = distinct !{!1, !71}
!2 = distinct !{!2, !71}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"p1 _ZTSN7msgpack2v14zone5chunkE", !13, i64 0}
!16 = !{!"_ZTSN7msgpack2v14zone10chunk_listE", !12, i64 0, !14, i64 8, !15, i64 16}
!17 = !{!"p1 _ZTSN7msgpack2v14zone9finalizerE", !13, i64 0}
!18 = !{!"_ZTSN7msgpack2v14zone15finalizer_arrayE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!"_ZTSN7msgpack2v14zoneE", !12, i64 0, !16, i64 8, !18, i64 32}
!20 = !{!19, !12, i64 0}
!21 = !{!"vtable pointer", !7, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!16, !15, i64 16}
!24 = !{!"_ZTSN7msgpack2v14zone5chunkE", !15, i64 0}
!25 = !{!24, !15, i64 0}
!26 = !{!"_ZTSN7msgpack2v14type11object_typeE", !8, i64 0}
!27 = !{!"_ZTSN7msgpack2v16objectE", !26, i64 0, !8, i64 8}
!28 = !{!27, !26, i64 0}
!29 = !{!"p1 int", !13, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!8, !8, i64 0}
!32 = !{!"p1 _ZTSSo", !13, i64 0}
!33 = !{!"p1 _ZTSN7msgpack2v26objectE", !13, i64 0}
!34 = !{!"p1 _ZTSN7msgpack2v113object_parser4elemE", !13, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN7msgpack2v113object_parser4elemESaIS3_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!"_ZTSNSt12_Vector_baseIN7msgpack2v113object_parser4elemESaIS3_EE12_Vector_implE", !35, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIN7msgpack2v113object_parser4elemESaIS3_EE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE", !37, i64 0}
!39 = !{!"_ZTSN7msgpack2v113object_parserE", !33, i64 0, !38, i64 8}
!40 = !{!39, !33, i64 0}
!41 = !{!35, !34, i64 0}
!42 = !{!35, !34, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!44 = !{!43, !29, i64 0}
!45 = !{!43, !29, i64 16}
!46 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!47 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!48 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!49 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !12, i64 8}
!50 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!51 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!52 = !{!"_ZTSSt6locale", !51, i64 0}
!53 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !46, i64 24, !47, i64 28, !47, i64 32, !48, i64 40, !49, i64 48, !8, i64 64, !9, i64 192, !50, i64 200, !52, i64 208}
!54 = !{!"bool", !8, i64 0}
!55 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 0}
!56 = !{!"p1 _ZTSSt5ctypeIcE", !13, i64 0}
!57 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!58 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!59 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !53, i64 0, !32, i64 216, !8, i64 224, !54, i64 225, !55, i64 232, !56, i64 240, !57, i64 248, !58, i64 256}
!60 = !{!59, !56, i64 240}
!61 = !{!"_ZTSNSt6locale5facetE", !9, i64 8}
!62 = !{!"p1 _ZTS15__locale_struct", !13, i64 0}
!63 = !{!"p1 short", !13, i64 0}
!64 = !{!"_ZTSSt5ctypeIcE", !61, i64 0, !62, i64 16, !54, i64 24, !29, i64 32, !29, i64 40, !63, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!65 = !{!64, !8, i64 56}
!66 = !{!18, !17, i64 0}
!67 = !{!18, !17, i64 16}
!68 = !{!"_ZTSN7msgpack2v14zone9finalizerE", !13, i64 0, !13, i64 8}
!69 = !{!68, !13, i64 0}
!70 = !{!68, !13, i64 8}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !43, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorIjSaIjEE", !73, i64 0}
!75 = !{!"_ZTSN7msgpack2v124object_stringize_visitorE", !32, i64 0, !74, i64 8}
!76 = !{!75, !32, i64 0}
!77 = !{}
!78 = !{i64 8}
!79 = !{i8 0, i8 2}
!80 = !{!9, !9, i64 0}
!81 = distinct !{!81, i1 true, !"_ZN7msgpack2v14type17make_define_arrayIJKiEEENS1_12define_arrayIJDpT_EEEDpRS5_"}
!82 = distinct !{!82, !81, !"_ZN7msgpack2v14type17make_define_arrayIJKiEEENS1_12define_arrayIJDpT_EEEDpRS5_: argument 0"}
!83 = distinct !{null, null}
!84 = !{!"_ZTS2my", !9, i64 0}
!85 = !{!84, !9, i64 0}
!86 = !{!16, !12, i64 0}
!87 = !{!16, !14, i64 8}
!88 = !{!"p1 _ZTSN7msgpack2v14zoneE", !13, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!82}
!91 = !{i64 0, i64 16, !31}
!92 = !{!32, !32, i64 0}
!93 = distinct !{!93, i1 true, !"_ZSt19__relocate_object_aIN7msgpack2v113object_parser4elemES3_SaIS3_EEvPT_PT0_RT1_"}
!94 = distinct !{!94, !93, !"_ZSt19__relocate_object_aIN7msgpack2v113object_parser4elemES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!95 = distinct !{!95, !93, !"_ZSt19__relocate_object_aIN7msgpack2v113object_parser4elemES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!96 = distinct !{!96, !71}
!97 = distinct !{!97, i1 true, !"_ZSt19__relocate_object_aIN7msgpack2v113object_parser4elemES3_SaIS3_EEvPT_PT0_RT1_"}
!98 = distinct !{!98, !97, !"_ZSt19__relocate_object_aIN7msgpack2v113object_parser4elemES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!99 = distinct !{!99, !97, !"_ZSt19__relocate_object_aIN7msgpack2v113object_parser4elemES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!100 = !{!43, !29, i64 8}
!101 = !{!35, !34, i64 8}
!102 = !{!12, !12, i64 0}
!103 = !{!54, !54, i64 0}
!104 = !{i64 0, i64 8, !31, i64 8, i64 8, !102, i64 16, i64 1, !103, i64 17, i64 1, !103}
!105 = !{!95, !94}
!106 = !{!99, !98}
!107 = !{!34, !34, i64 0}
!108 = !{!"_ZTSN7msgpack2v113object_parser4elemE", !8, i64 0, !12, i64 8, !54, i64 16, !54, i64 17}
!109 = !{!108, !12, i64 8}
!110 = !{!108, !54, i64 16}
!111 = !{!108, !54, i64 17}
!112 = distinct !{null, null, null, null, null}
!113 = distinct !{!113, !71}
!114 = !{!53, !12, i64 16}
!115 = !{!53, !46, i64 24}
!116 = !{!46, !46, i64 0}
!117 = !{!59, !54, i64 225}
!118 = !{!59, !8, i64 224}
!119 = !{!19, !14, i64 16}
!120 = !{!19, !12, i64 8}
!121 = !{!"_ZTSSt10_Head_baseILm0ERKiLb0EE", !29, i64 0}
!122 = !{!121, !29, i64 0}
!123 = !{i64 4}
end_hunk_0
