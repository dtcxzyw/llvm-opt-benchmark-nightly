inline.NumInlined: 304
inline.NumDeleted: 128
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"struct.photos_editing_formats::image_io::DataLine" = type { i64, %"class.photos_editing_formats::image_io::DataRange" }
%"class.photos_editing_formats::image_io::DataRange" = type { i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Invalid location:\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" range:[\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c") segment_range:[\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"expected:\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"line:\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"?:\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Invalid location or range\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\\x\00", align 1
@__const._ZN22photos_editing_formats8image_io8ByteData8Byte2HexB5cxx11Eh.kHexChars = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define void @_ZNK22photos_editing_formats8image_io11DataContext35GetInvalidLocationAndRangeErrorTextB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !7
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
          to label %_ZNSolsEm.exit unwind label %bb.f ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.1, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %_ZNSolsEm.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.g)
          to label %_ZNSolsEm.exit9 unwind label %bb.f ; 2 uses

_ZNSolsEm.exit9:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %_ZNSolsEm.exit9
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.k)
          to label %_ZNSolsEm.exit11 unwind label %bb.f ; 2 uses

_ZNSolsEm.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.3, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEm.exit11
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef %i.p)
          to label %_ZNSolsEm.exit13 unwind label %bb.f ; 2 uses

_ZNSolsEm.exit13:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %_ZNSolsEm.exit13
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.u)
          to label %_ZNSolsEm.exit15 unwind label %bb.f

_ZNSolsEm.exit15:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZNSolsEm.exit15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.x, ptr %4, align 8, !tbaa !31, !alias.scope !34
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !35, !alias.scope !34
  store i8 0, ptr %i.x, align 8, !tbaa !37, !alias.scope !34
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !38, !noalias !34 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %7, null
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !34 ; 2 uses
  %8 = icmp ugt ptr %7, %i.aa
  %.08.i.i.i = select i1 %8, ptr %7, ptr %i.aa    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42, !noalias !34 ; 2 uses
  %i.ad = ptrtoint ptr %.08.i.i.i to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.ac, i64 noundef %i.af)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !43, !alias.scope !34 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.x
  br i1 %i.aj, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.al, ptr %5, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !35
  store i8 0, ptr %i.al, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !44
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.an, align 8, !tbaa !47, !noalias !44
  store ptr %2, ptr %2, align 8, !tbaa !48, !noalias !44
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.ao, align 8, !tbaa !49, !noalias !44
  invoke void @_ZNK22photos_editing_formats8image_io11DataContext12GetErrorTextERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESC_RKS8_SE_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %.body17

bb.e:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ap = load ptr, ptr %2, align 8, !tbaa !48, !noalias !44 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.ap, %2
  br i1 %.not8.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.09.i.i.i = phi ptr [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ap, %bb.e ] ; 4 uses
  %i.aq = load ptr, ptr %.09.i.i.i, align 8, !tbaa !48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !43 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 32 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !37
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 48) #14
  %.not.i.i.i = icmp eq ptr %i.aq, %2
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !50

.body17:                                          ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !44
  %i.ay = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.al
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !44
  %i.ba = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.al
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  %i.bc = load i64, ptr %i.al, align 8, !tbaa !37
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.be = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.x
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.x, align 8, !tbaa !37
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.bi = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bi, ptr %3, align 8, !tbaa !52
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %3, i64 %i.bl
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !52
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !52
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bo, align 8, !tbaa !52
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !43 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !37
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i22
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bo, align 8, !tbaa !52
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bv) #13
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bw, ptr %3, align 8, !tbaa !52
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.by = getelementptr i8, ptr %i.bw, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %3, i64 %i.bz
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !52
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !54
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cc) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.f:                                             ; preds = %_ZNSolsEm.exit15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14, %_ZNSolsEm.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZNSolsEm.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10, %_ZNSolsEm.exit9, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body17
  %i.ce = load i64, ptr %i.al, align 8, !tbaa !37
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.cf) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.cg = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.x
  br i1 %i.ch, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.c
  %.sink = phi ptr [ %i.ai, %bb.c ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ah, %bb.c ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  %i.ci = load i64, ptr %i.x, align 8, !tbaa !37
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cj) #14
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.c ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.cd, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZNK22photos_editing_formats8image_io11DataContext12GetErrorTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(64) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::list", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !47
  store ptr %4, ptr %4, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !49
  invoke void @_ZNK22photos_editing_formats8image_io11DataContext12GetErrorTextERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESC_RKS8_SE_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %4, align 8, !tbaa !48     ; 2 uses
  %.not8.i.i = icmp eq ptr %i.c, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i

end_hunk_0
begin_hunk_1_@_ZNK22photos_editing_formats8image_io11DataContext12GetErrorTextERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESC_RKS8_SE_:._crit_edge.i.i
  %.not.i.i40 = icmp uge i64 %.pre.i39, %.sroa.0.0.i
  %i.df = icmp ult i64 %.pre.i39, %.sroa.5.0.i
  %i.dg = and i1 %.not.i.i40, %i.df
  br i1 %i.dg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dh = add i64 %.sroa.0.0.i, 25
  %i.di = icmp ult i64 %i.dh, %.pre.i39
  %i.dj = add i64 %.pre.i39, -25
  %spec.select.i = select i1 %i.di, i64 %i.dj, i64 %.sroa.0.0.i ; 2 uses
  %i.dk = add i64 %spec.select.i, 50
  %.sroa.speculated27.i = call i64 @llvm.umin.i64(i64 %.sroa.5.0.i, i64 %i.dk)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.dl = add i64 %.pre.i39, 50
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.dd, i64 %i.dl) ; 2 uses
  store i64 %.pre.i39, ptr %13, align 8, !tbaa !79
  store i64 %.sroa.speculated.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !tbaa !79
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.018.i = phi i64 [ %spec.select.i, %bb.af ], [ %.pre.i39, %bb.ag ] ; 2 uses
  %.0.i = phi i64 [ %.sroa.speculated27.i, %bb.af ], [ %.sroa.speculated.i, %bb.ag ]
  store i64 %.018.i, ptr %14, align 8, !tbaa !79
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  invoke void @_ZNK22photos_editing_formats8image_io11DataContext13GetLineStringB5cxx11ERKNS0_9DataRangeES4_Pm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull %i.b)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.dn = load ptr, ptr %6, align 8, !tbaa !43
  %i.do = load i64, ptr %i.d, align 8, !tbaa !35
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dn, i64 noundef %i.do)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42 unwind label %bb.ar

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42: ; preds = %bb.ai
  %i.dq = load ptr, ptr %10, align 8, !tbaa !43
  %i.dr = load i64, ptr %i.bg, align 8, !tbaa !35
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef %i.dq, i64 noundef %i.dr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit44 unwind label %bb.ar

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit44: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42
  %i.dt = load ptr, ptr %15, align 8, !tbaa !43
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !35
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef %i.dt, i64 noundef %i.dv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit46 unwind label %bb.ar ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit46: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit44
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !52
  %i.dy = getelementptr i8, ptr %i.dx, i64 -24
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds i8, ptr %i.dw, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 240
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !56 ; 6 uses
  %.not.i.i.i108 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i108, label %bb.aj, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i109

bb.aj:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit46
  invoke void @_ZSt16__throw_bad_castv() #15
          to label %.noexc113.a unwind label %bb.ar

.noexc113.a:                                      ; preds = %bb.aj
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i109: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit46
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !70
  %.not.i1.i.i110 = icmp eq i8 %i.ee, 0
  br i1 %.not.i1.i.i110, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i109
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 67
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !37
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i111

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i109
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ec)
          to label %.noexc114 unwind label %bb.ar

.noexc114:                                        ; preds = %bb.al
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !52
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = invoke noundef signext i8 %i.ej(ptr noundef nonnull align 8 dereferenceable(570) %i.ec, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i111 unwind label %bb.ar, !inline_history !76

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i111: ; preds = %.noexc114, %bb.ak
  %.0.i.i.i112 = phi i8 [ %i.eg, %bb.ak ], [ %i.ek, %.noexc114 ]
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, i8 noundef signext %.0.i.i.i112)
          to label %.noexc116 unwind label %bb.ar

.noexc116:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i111
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %_ZNSolsEPFRSoS_E.exit48 unwind label %bb.ar ; 0 uses

_ZNSolsEPFRSoS_E.exit48:                          ; preds = %.noexc116
  %i.en = load i64, ptr %1, align 8, !tbaa !7
  %i.eo = load i64, ptr %i.b, align 8, !tbaa !79
  %i.ep = sub i64 %i.en, %.018.i
  %i.eq = add i64 %i.ep, %i.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  %i.er = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.er, ptr %16, align 8, !tbaa !31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.eq, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %_ZNSolsEPFRSoS_E.exit48
  %i.es = load ptr, ptr %6, align 8, !tbaa !43
  %i.et = load i64, ptr %i.d, align 8, !tbaa !35
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.es, i64 noundef %i.et)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit51 unwind label %bb.at

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.ev = load ptr, ptr %16, align 8, !tbaa !43
  %i.ew = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !35
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef %i.ev, i64 noundef %i.ex)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit53 unwind label %bb.at ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit53: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 94, ptr %i.a, align 1, !tbaa !37
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !52
  %i.fa = getelementptr i8, ptr %i.ez, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr %i.ey, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !80
  %.not.i54 = icmp eq i64 %i.fe, 0
  br i1 %.not.i54, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit53
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.ao unwind label %bb.at     ; 0 uses

bb.an:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit53
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, i8 noundef signext 94)
          to label %bb.ao unwind label %bb.at     ; 0 uses

bb.ao:                                            ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !35
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull @.str.7, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ap
  %i.fl = load ptr, ptr %5, align 8, !tbaa !43
  %i.fm = load i64, ptr %i.fh, align 8, !tbaa !35
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.fl, i64 noundef %i.fm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60 unwind label %bb.at ; 0 uses

bb.aq:                                            ; preds = %bb.ah
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.ar:                                            ; preds = %.noexc116, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i111, %.noexc114, %bb.al, %bb.aj, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit44, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit42, %bb.ai
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.as:                                            ; preds = %_ZNSolsEPFRSoS_E.exit48
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.ap, %bb.an, %bb.am, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.at
  %eh.lpad-body = phi { ptr, i32 } [ %i.fr, %bb.at ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.gg, %bb.av ] ; 2 uses
  %i.fs = load ptr, ptr %16, align 8, !tbaa !43   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.er
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %.body
  %i.fu = load i64, ptr %i.er, align 8, !tbaa !37
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.fw, ptr %0, align 8, !tbaa !31, !alias.scope !87
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fx, align 8, !tbaa !35, !alias.scope !87
  store i8 0, ptr %i.fw, align 8, !tbaa !37, !alias.scope !87
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %18 = load ptr, ptr %17, align 8, !tbaa !38, !noalias !87 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %18, null
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !87 ; 2 uses
  %19 = icmp ugt ptr %18, %i.fz
  %.08.i.i.i = select i1 %19, ptr %18, ptr %i.fz  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i64 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i64, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !42, !noalias !87 ; 2 uses
  %i.gc = ptrtoint ptr %.08.i.i.i to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.gb, i64 noundef %i.ge)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.av ; 0 uses

bb.av:                                            ; preds = %bb.aw, %bb.au
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = load ptr, ptr %0, align 8, !tbaa !43, !alias.scope !87 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.fw
  br i1 %i.gi, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.av
  %i.gj = load i64, ptr %i.fw, align 8, !tbaa !37, !alias.scope !87
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #14
  br label %.body

bb.aw:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gl)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.av

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.aw, %bb.au
  %i.gm = load ptr, ptr %16, align 8, !tbaa !43   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.er
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.go = load i64, ptr %i.er, align 8, !tbaa !37
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  %i.gq = load ptr, ptr %15, align 8, !tbaa !43   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !37
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %i.gv = load ptr, ptr %10, align 8, !tbaa !43   ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.bf
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.gx = load i64, ptr %i.bf, align 8, !tbaa !37
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.gz = load ptr, ptr %8, align 8, !tbaa !43    ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !37
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.he = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.he, ptr %7, align 8, !tbaa !52
  %i.hf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.hg = getelementptr i8, ptr %i.he, i64 -24
  %i.hh = load i64, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds i8, ptr %7, i64 %i.hh
  store ptr %i.hf, ptr %i.hi, align 8, !tbaa !52
  %i.hj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.hj, ptr %i.dm, align 8, !tbaa !52
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hk, align 8, !tbaa !52
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !43 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !37
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.hk, align 8, !tbaa !52
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hr) #13
  %i.hs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.hs, ptr %7, align 8, !tbaa !52
  %i.ht = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.hu = getelementptr i8, ptr %i.hs, i64 -24
  %i.hv = load i64, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds i8, ptr %7, i64 %i.hv
  store ptr %i.ht, ptr %i.hw, align 8, !tbaa !52
  %i.hx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.hx, align 8, !tbaa !54
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.hy) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.hz = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.c
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.ib = load i64, ptr %i.c, align 8, !tbaa !37
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.as
  %.pn = phi { ptr, i32 } [ %i.fq, %bb.as ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.fp, %bb.ar ] ; 2 uses
  %i.id = load ptr, ptr %15, align 8, !tbaa !43   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ax
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !37
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.aq
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fo, %bb.aq ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn.pn, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.aa, %bb.z
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %i.cx, %bb.aa ], [ %i.cw, %bb.z ]
  %i.ii = load ptr, ptr %10, align 8, !tbaa !43   ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.bf
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.ay
  %i.ik = load i64, ptr %i.bf, align 8, !tbaa !37
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.be, %bb.n ] ; 2 uses
  %i.im = load ptr, ptr %8, align 8, !tbaa !43    ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.az
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !37
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.m
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.g
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.ac, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #13
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ba ], [ %i.ab, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.ir = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.c
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.bb
  %i.it = load i64, ptr %i.c, align 8, !tbaa !37
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.09.i = phi ptr [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !37
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 48) #14
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !50

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK22photos_editing_formats8image_io11DataContext14GetNamesStringERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESC_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(64) %1, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(24) %2, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.a = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.b = icmp eq ptr %i.a, %2
  br i1 %i.b, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.c
  %i.f = load ptr, ptr %3, align 8
  %i.g = icmp eq ptr %i.f, %3
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit24, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.noexc6, %.lr.ph.i
  %.sroa.05.010.i = phi ptr [ %i.a, %.lr.ph.i ], [ %.sroa.05.0.i, %.noexc6 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !35
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j, i64 noundef %i.l)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc6:                                          ; preds = %.noexc
  %.sroa.05.0.i = load ptr, ptr %.sroa.05.010.i, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.05.0.i, %2
  br i1 %.not.i, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit.loopexit, label %bb.c

_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit.loopexit: ; preds = %.noexc6
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.05.08.i7.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48
  br label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit

_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit: ; preds = %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit.loopexit, %bb.b
  %.sroa.05.08.i7 = phi ptr [ %.sroa.05.08.i7.pre, %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit.loopexit ], [ %i.d, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.not9.i8 = icmp eq ptr %.sroa.05.08.i7, %i.o
  br i1 %.not9.i8, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit15, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc14, %.lr.ph.i9
  %.sroa.05.010.i10 = phi ptr [ %.sroa.05.08.i7, %.lr.ph.i9 ], [ %.sroa.05.0.i11, %.noexc14 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i10, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i10, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !35
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.r, i64 noundef %i.t)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.d
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc14:                                         ; preds = %.noexc13
  %.sroa.05.0.i11 = load ptr, ptr %.sroa.05.010.i10, align 8, !tbaa !48 ; 2 uses
  %.not.i12 = icmp eq ptr %.sroa.05.0.i11, %i.o
  br i1 %.not.i12, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit15, label %bb.d

_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit15: ; preds = %.noexc14, %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit
  %.sroa.05.08.i16 = load ptr, ptr %3, align 8, !tbaa !48 ; 2 uses
  %.not9.i17 = icmp eq ptr %.sroa.05.08.i16, %3
  br i1 %.not9.i17, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit24, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit15
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.noexc23, %.lr.ph.i18
  %.sroa.05.010.i19 = phi ptr [ %.sroa.05.08.i16, %.lr.ph.i18 ], [ %.sroa.05.0.i20, %.noexc23 ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i19, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i19, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !35
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef %i.y, i64 noundef %i.aa)
          to label %.noexc22 unwind label %.loopexit

.noexc22:                                         ; preds = %bb.e
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %.noexc23 unwind label %.loopexit ; 0 uses

.noexc23:                                         ; preds = %.noexc22
  %.sroa.05.0.i20 = load ptr, ptr %.sroa.05.010.i19, align 8, !tbaa !48 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.05.0.i20, %3
  br i1 %.not.i21, label %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit24, label %bb.e

.loopexit:                                        ; preds = %bb.e, %.noexc22
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.noexc13, %bb.d
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc, %bb.c
  %lpad.loopexit.split-lp27 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp27, %.loopexit.split-lp.loopexit.split-lp ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit ], [ %i.an, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %eh.lpad-body

_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit24: ; preds = %.noexc23, %bb.b, %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit15
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !31, !alias.scope !94
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !35, !alias.scope !94
  store i8 0, ptr %i.ad, align 8, !tbaa !37, !alias.scope !94
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !38, !noalias !94 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %6, null
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !94 ; 2 uses
  %7 = icmp ugt ptr %6, %i.ag
  %.08.i.i.i = select i1 %7, ptr %6, ptr %i.ag    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit24
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42, !noalias !94 ; 2 uses
  %i.aj = ptrtoint ptr %.08.i.i.i to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ai, i64 noundef %i.al)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !43, !alias.scope !94 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ad
  br i1 %i.ap, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.aq = load i64, ptr %i.ad, align 8, !tbaa !37, !alias.scope !94
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #14
  br label %.body

bb.h:                                             ; preds = %_ZN22photos_editing_formats8image_io12_GLOBAL__N_18AddNamesERKNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEPNS2_18basic_stringstreamIcS6_S7_EE.exit24
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.at = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.at, ptr %4, align 8, !tbaa !52
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.av = getelementptr i8, ptr %i.at, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %4, i64 %i.aw
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !52
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !52
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ba, align 8, !tbaa !52
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !43 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !37
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ba, align 8, !tbaa !52
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bh) #13
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bi, ptr %4, align 8, !tbaa !52
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %4, i64 %i.bl
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !52
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bn, align 8, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bo) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

declare void @_ZNK22photos_editing_formats8image_io11DataLineMap11GetDataLineEm(ptr dead_on_unwind writable sret(%"struct.photos_editing_formats::image_io::DataLine") align 8, ptr noundef nonnull align 8 dereferenceable(25), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZNK22photos_editing_formats8image_io11DataContext19GetLineNumberStringB5cxx11ERKNS0_8DataLineE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNSolsEm.exit.invoke, label %bb.c

bb.b:                                             ; preds = %_ZNSolsEm.exit.invoke, %bb.c, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %eh.lpad-body

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
          to label %_ZNSolsEm.exit.invoke unwind label %bb.b

_ZNSolsEm.exit.invoke:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ %i.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.h = phi ptr [ @.str.10, %bb.c ], [ @.str.9, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.i = phi i64 [ 1, %bb.c ], [ 2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.h, i64 noundef %i.i)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3 unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3: ; preds = %_ZNSolsEm.exit.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !31, !alias.scope !103
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !35, !alias.scope !103
  store i8 0, ptr %i.k, align 8, !tbaa !37, !alias.scope !103
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !38, !noalias !103 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %5, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !noalias !103 ; 2 uses
  %6 = icmp ugt ptr %5, %i.n
  %.08.i.i.i = select i1 %6, ptr %5, ptr %i.n     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42, !noalias !103 ; 2 uses
  %i.q = ptrtoint ptr %.08.i.i.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.p, i64 noundef %i.s)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !43, !alias.scope !103 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.k, align 8, !tbaa !37, !alias.scope !103
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #14
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.aa = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !52
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %3, i64 %i.ad
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !52
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.af, ptr %i.a, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !37
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #13
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !52
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %3, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !52
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.au) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK22photos_editing_formats8image_io11DataContext22GetClippedAndLineRangeERKNS0_8DataLineEPNS0_9DataRangeES6_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef writeonly captures(none) initializes((0, 16)) %2, ptr noundef writeonly captures(none) initializes((0, 16)) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !79   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !79
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.5.0 = phi i64 [ %i.k, %bb.b ], [ %.sroa.5.0.copyload, %bb.c ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %i.g, %bb.c ] ; 5 uses
  store i64 %.sroa.0.0, ptr %2, align 8, !tbaa !79
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx2, align 8, !tbaa !79
  %i.l = icmp ult i64 %.sroa.0.0, %.sroa.5.0
  %.pre = load i64, ptr %0, align 8, !tbaa !7     ; 7 uses
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp uge i64 %.pre, %.sroa.0.0
  %i.m = icmp ult i64 %.pre, %.sroa.5.0
  %i.n = and i1 %.not.i, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = add i64 %.sroa.0.0, 25
  %i.p = icmp ult i64 %i.o, %.pre
  %i.q = add i64 %.pre, -25
  %spec.select = select i1 %i.p, i64 %i.q, i64 %.sroa.0.0 ; 2 uses
  %i.r = add i64 %spec.select, 50
  %.sroa.speculated27 = tail call i64 @llvm.umin.i64(i64 %.sroa.5.0, i64 %i.r)
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.s = add i64 %.pre, 50
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  store i64 %.pre, ptr %2, align 8, !tbaa !79
  store i64 %.sroa.speculated, ptr %.sroa.5.0..sroa_idx2, align 8, !tbaa !79
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.018 = phi i64 [ %spec.select, %bb.f ], [ %.pre, %bb.g ]
  %.0 = phi i64 [ %.sroa.speculated27, %bb.f ], [ %.sroa.speculated, %bb.g ]
  store i64 %.018, ptr %3, align 8, !tbaa !79
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK22photos_editing_formats8image_io11DataContext13GetLineStringB5cxx11ERKNS0_9DataRangeES4_Pm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 28 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !7      ; 2 uses
  %.not.i.i = icmp uge i64 %i.g, %i.c
  %i.h = icmp ult i64 %i.g, %i.e
  %i.i = and i1 %.not.i.i, %i.h
  br i1 %i.i, label %bb.c, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22, !nonnull !23, !align !24 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21   ; 3 uses
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit: ; preds = %bb.c
  %.not.i1.i = icmp uge i64 %i.c, %i.l
  %i.p = icmp ule i64 %i.e, %i.n
  %spec.select.i.i = and i1 %.not.i1.i, %i.p
  br i1 %spec.select.i.i, label %bb.h, label %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread

_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread: ; preds = %bb.c, %bb.a, %bb.b, %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.11, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !31, !alias.scope !110
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !35, !alias.scope !110
  store i8 0, ptr %i.s, align 8, !tbaa !37, !alias.scope !110
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %8 = load ptr, ptr %7, align 8, !tbaa !38, !noalias !110 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %8, null
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !noalias !110 ; 2 uses
  %9 = icmp ugt ptr %8, %i.v
  %.08.i.i.i = select i1 %9, ptr %8, ptr %i.v     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i34 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i34, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42, !noalias !110 ; 2 uses
  %i.y = ptrtoint ptr %.08.i.i.i to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.aa)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !43, !alias.scope !110 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.af = load i64, ptr %i.s, align 8, !tbaa !37, !alias.scope !110
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #14
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

bb.g:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit.thread
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataContext23IsValidLocationAndRangeEv.exit
  %i.aj = load i64, ptr %3, align 8, !tbaa !20    ; 5 uses
  %.not.i.i.i = icmp ult i64 %i.aj, %i.l
  %i.ak = icmp uge i64 %i.aj, %i.n
  %.not58 = or i1 %.not.i.i.i, %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = sub i64 %i.aj, %i.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %.not56 = icmp eq ptr %i.am, null
  %.not = select i1 %.not58, i1 true, i1 %.not56
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %2, align 8, !tbaa !20
  %.not26 = icmp eq i64 %i.aj, %i.ap
  br i1 %.not26, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.12, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %bb.j
  %i.as = load i64, ptr %4, align 8, !tbaa !79
  %i.at = add i64 %i.as, 3
  store i64 %i.at, ptr %4, align 8, !tbaa !79
  %.pre = load i64, ptr %3, align 8, !tbaa !20
  br label %bb.l

bb.k:                                             ; preds = %bb.x, %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %bb.i
  %i.av = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 ], [ %i.aj, %bb.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %.not66.not = icmp ugt i64 %i.ax, %i.av
  br i1 %.not66.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %bb.w, %bb.l
  %.lcssa = phi i64 [ %i.ax, %bb.l ], [ %i.cy, %bb.w ]
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !21
  %.not27 = icmp eq i64 %.lcssa, %i.bc
  br i1 %.not27, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45, label %bb.x

bb.m:                                             ; preds = %.lr.ph, %bb.w
  %.02065 = phi i64 [ 0, %.lr.ph ], [ %i.cw, %bb.w ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.02065
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37  ; 4 uses
  %i.bf = sext i8 %i.be to i32
  %i.bg = call i32 @isprint(i32 noundef %i.bf) #16
  %.not28 = icmp eq i32 %i.bg, 0
  br i1 %.not28, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.be, ptr %i.a, align 1, !tbaa !37
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !52
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %i.ay, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !80
  %.not.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.q ; 0 uses

bb.p:                                             ; preds = %bb.n
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i8 noundef signext %i.be)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.q:                                             ; preds = %bb.r, %bb.p, %bb.o
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.m
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.13, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  store ptr %i.az, ptr %6, align 8, !tbaa !31, !alias.scope !111
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 2, i8 noundef signext 32)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.br = zext i8 %i.be to i32                    ; 2 uses
  %i.bs = lshr i32 %i.br, 4
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @__const._ZN22photos_editing_formats8image_io8ByteData8Byte2HexB5cxx11Eh.kHexChars, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !37, !noalias !111
  %i.bw = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !111
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !37
  %i.bx = and i32 %i.br, 15
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @__const._ZN22photos_editing_formats8image_io8ByteData8Byte2HexB5cxx11Eh.kHexChars, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !37, !noalias !111
  %i.cb = load ptr, ptr %6, align 8, !tbaa !43, !alias.scope !111
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !37
  %i.cd = load ptr, ptr %6, align 8, !tbaa !43
  %i.ce = load i64, ptr %i.ba, align 8, !tbaa !35
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.cd, i64 noundef %i.ce)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.v ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.s
  %i.cg = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.az
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ci = load i64, ptr %i.az, align 8, !tbaa !37
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.ck = load i64, ptr %3, align 8, !tbaa !20
  %i.cl = add i64 %i.ck, %.02065
  %i.cm = load i64, ptr %1, align 8, !tbaa !7
  %i.cn = icmp ult i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.t, label %bb.w

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.co = load i64, ptr %4, align 8, !tbaa !79
  %i.cp = add i64 %i.co, 4
  store i64 %i.cp, ptr %4, align 8, !tbaa !79
  br label %bb.w

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.v:                                             ; preds = %bb.s
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.az
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.v
  %i.cu = load i64, ptr %i.az, align 8, !tbaa !37
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.u ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.cr, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.body

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.t
  %i.cw = add nuw i64 %.02065, 1                  ; 2 uses
  %i.cx = load i64, ptr %3, align 8, !tbaa !20
  %i.cy = load i64, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %i.cz = call noundef i64 @llvm.usub.sat.i64(i64 %i.cy, i64 %i.cx)
  %i.da = icmp ult i64 %i.cw, %i.cz
  br i1 %i.da, label %bb.m, label %._crit_edge, !llvm.loop !114

bb.x:                                             ; preds = %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.12, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45: ; preds = %bb.x, %._crit_edge, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.dd, ptr %0, align 8, !tbaa !31, !alias.scope !121
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.de, align 8, !tbaa !35, !alias.scope !121
  store i8 0, ptr %i.dd, align 8, !tbaa !37, !alias.scope !121
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %11 = load ptr, ptr %10, align 8, !tbaa !38, !noalias !121 ; 3 uses
  %.not.i.not.i.i46 = icmp eq ptr %11, null
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !121 ; 2 uses
  %12 = icmp ugt ptr %11, %i.dg
  %.08.i.i.i47 = select i1 %12, ptr %11, ptr %i.dg ; 2 uses
  %.not5.i.i48 = icmp eq ptr %.08.i.i.i47, null
  %.not.i.i49 = select i1 %.not.i.not.i.i46, i1 true, i1 %.not5.i.i48
  br i1 %.not.i.i49, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !42, !noalias !121 ; 2 uses
  %i.dj = ptrtoint ptr %.08.i.i.i47 to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.di, i64 noundef %i.dl)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %0, align 8, !tbaa !43, !alias.scope !121 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dd
  br i1 %i.dp, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50: ; preds = %bb.z
  %i.dq = load i64, ptr %i.dd, align 8, !tbaa !37, !alias.scope !121
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #14
  br label %.body

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ds)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.z

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.aa, %bb.y, %bb.f, %bb.d
  %i.dt = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dt, ptr %5, align 8, !tbaa !52
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.dv = getelementptr i8, ptr %i.dt, i64 -24
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %5, i64 %i.dw
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !52
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !52
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ea, align 8, !tbaa !52
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !43 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !37
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ea, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eh) #13
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ei, ptr %5, align 8, !tbaa !52
  %i.ej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ek = getelementptr i8, ptr %i.ei, i64 -24
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = getelementptr inbounds i8, ptr %5, i64 %i.el
  store ptr %i.ej, ptr %i.em, align 8, !tbaa !52
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.en, align 8, !tbaa !54
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.eo) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void

.body:                                            ; preds = %bb.z, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50, %bb.k, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %bb.q
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.ac, %bb.e ], [ %i.bp, %bb.q ], [ %i.ai, %bb.g ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.au, %bb.k ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50 ], [ %i.dn, %bb.z ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %.pn30.pn.pn
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN22photos_editing_formats8image_io11DataContextE", !9, i64 0, !10, i64 8, !11, i64 24, !13, i64 32, !14, i64 40}
!9 = !{!"long", !5, i64 0}
!10 = !{!"_ZTSN22photos_editing_formats8image_io9DataRangeE", !9, i64 0, !9, i64 8}
!11 = !{!"p1 _ZTSN22photos_editing_formats8image_io11DataSegmentE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSN22photos_editing_formats8image_io11DataLineMapE", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !15, i64 0}
!15 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !16, i64 0}
!16 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implE", !17, i64 0}
!17 = !{!"_ZTSNSt8__detail17_List_node_headerE", !18, i64 0, !9, i64 16}
!18 = !{!"_ZTSNSt8__detail15_List_node_baseE", !19, i64 0, !19, i64 8}
!19 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !12, i64 0}
!20 = !{!10, !9, i64 0}
!21 = !{!10, !9, i64 8}
!22 = !{!8, !11, i64 24}
!23 = !{}
!24 = !{i64 8}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!27 = distinct !{!27, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!30 = distinct !{!30, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!33 = !{!"p1 omnipotent char", !12, i64 0}
!34 = !{!29, !26}
!35 = !{!36, !9, i64 8}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !9, i64 8, !5, i64 16}
!37 = !{!5, !5, i64 0}
!38 = !{!39, !33, i64 40}
!39 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !33, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !40, i64 56}
!40 = !{!"_ZTSSt6locale", !41, i64 0}
!41 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!42 = !{!39, !33, i64 32}
!43 = !{!36, !33, i64 0}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNK22photos_editing_formats8image_io11DataContext12GetErrorTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_: argument 0"}
!46 = distinct !{!46, !"_ZNK22photos_editing_formats8image_io11DataContext12GetErrorTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_"}
!47 = !{!18, !19, i64 8}
!48 = !{!18, !19, i64 0}
!49 = !{!17, !9, i64 16}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !6, i64 0}
!54 = !{!55, !9, i64 8}
!55 = !{!"_ZTSSi", !9, i64 8}
end_hunk_1
