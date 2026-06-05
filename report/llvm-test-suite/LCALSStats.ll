inline.NumInlined: 1543
inline.NumDeleted: 476
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.42 }
%union.anon.42 = type { i32 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }

$_ZN16LoopSuiteRunInfoD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN8LoopStatD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag = comdat any

$_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb = comdat any

@.str = private unnamed_addr constant [20 x i8] c"\0ALoopStat::print...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\09loop_is_run = \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\09num loop lengths = \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\09\09 ilength = \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" --> \00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\09\09\09 loop_length = \00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"\09\09\09 samples_per_pass = \00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"\09\09\09 loop_run_count = \00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\09\09\09\09 sample time = \00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"\09\09\09\09 mean = \00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"\09\09\09\09 std_dev = \00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"\09\09\09\09 min = \00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"\09\09\09\09 max = \00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"\09\09\09\09 harm_mean = \00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"\09\09\09\09 meanrel2ref = \00", align 1
@_ZL21s_loop_suite_run_info = internal unnamed_addr global ptr null, align 8
@.str.15 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"timing.txt\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.17 = private unnamed_addr constant [32 x i8] c" ERROR: Can't open output file \00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"\0A writeTimingSummaryReport...   \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"checksum.txt\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"\0A writeChecksumReport...    \00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"fom.txt\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"\0A writeFOMReport... \00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.24 = private unnamed_addr constant [109 x i8] c"===========================================================================================================\0A\00", align 1
@.str.25 = private unnamed_addr constant [110 x i8] c"------------------------------------------------------------------------------------------------------------\0A\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"-------------------------------------------------------\0A\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"............................................\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"\0A\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"LCALS compilation summary: \00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"LCALS run summary: \00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"sizeof(Real_type) = \00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"     num suite passes = \00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"     loop sample fraction = \00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"     loop variants run : \00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c" , \00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"\0A     reference variant : \00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"Variant(length id)\00", align 1
@.str.39 = private unnamed_addr constant [66 x i8] c"Loop name(Loop ID) -->   <length id>:(length, samples/pass), etc.\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"   Mean Time \00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"        Min Time\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"      Max Time\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"    Std. Dev.\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Mean time rel to ref variant\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c") --> \00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c":(\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"Variant(length #)\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"Loop name -->\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"Check Sum    \00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"        Delta from reference\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"LCALS FOM results: \00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"Loop variant -- \00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c" :   # loops run = \00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c" ,   total exec time = \00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"\09\09FOM_relative = \00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"-meantime.txt\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"\0A writeMeanTimeReport...   \00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c" Mean Run Times \00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"-reltime.txt\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"\0A writeRelativeTimeReport...   \00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c" Relative Run Times \00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"lcalsversioninfo.txt\00", align 1
@_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE = external unnamed_addr constant [4 x ptr], align 8
@.str.71 = private unnamed_addr constant [28 x i8] c"vector<bool>::_M_insert_aux\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE = external unnamed_addr constant [4 x ptr], align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK8LoopStat5printERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 19) ; 0 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 15) ; 0 uses
  %i.s = load i8, ptr %0, align 8, !tbaa !36, !range !58, !noundef !59
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %i.t) ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !10  ; 6 uses
  %.not.i.i.i45 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i45, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i46

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i46: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !28
  %.not.i1.i.i47 = icmp eq i8 %i.ac, 0
  br i1 %.not.i1.i.i47, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i46
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 67
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit49

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i46
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aa)
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(570) %i.aa, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit49

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit49: ; preds = %bb.f, %bb.g
  %.0.i.i.i48 = phi i8 [ %i.ae, %bb.f ], [ %i.ai, %bb.g ]
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef signext %.0.i.i.i48)
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) ; 0 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 20) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !61
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.at) ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i50 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i50, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit49
  tail call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit49
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !28
  %.not.i1.i.i52 = icmp eq i8 %i.bc, 0
  br i1 %.not.i1.i.i52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 67
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit54

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ba)
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef signext i8 %i.bh(ptr noundef nonnull align 8 dereferenceable(570) %i.ba, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit54

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit54: ; preds = %bb.i, %bb.j
  %.0.i.i.i53 = phi i8 [ %i.be, %bb.i ], [ %i.bi, %bb.j ]
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i8 noundef signext %.0.i.i.i53)
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) ; 0 uses
  %i.bl = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.bm = load ptr, ptr %i.am, align 8, !tbaa !61
  %.not132 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not132, label %._crit_edge131, label %.lr.ph130

.lr.ph130:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit54
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.n

._crit_edge131:                                   ; preds = %.loopexit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit54
  %i.bw = load ptr, ptr %1, align 8, !tbaa !8
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 240
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i55 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i55, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i56

bb.k:                                             ; preds = %._crit_edge131
  tail call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i56: ; preds = %._crit_edge131
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !28
  %.not.i1.i.i57 = icmp eq i8 %i.cd, 0
  br i1 %.not.i1.i.i57, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i56
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 67
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit59

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i56
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cb)
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call noundef signext i8 %i.ci(ptr noundef nonnull align 8 dereferenceable(570) %i.cb, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit59

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit59: ; preds = %bb.l, %bb.m
  %.0.i.i.i58 = phi i8 [ %i.cf, %bb.l ], [ %i.cj, %bb.m ]
  %i.ck = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i58)
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) ; 0 uses
  ret void

bb.n:                                             ; preds = %.lr.ph130, %.loopexit
  %i.cm = phi i64 [ 0, %.lr.ph130 ], [ %i.ol, %.loopexit ] ; 17 uses
  %.041129 = phi i32 [ 0, %.lr.ph130 ], [ %i.ok, %.loopexit ]
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 13) ; 0 uses
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.cm) ; 4 uses
  %i.cp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull @.str.4, i64 noundef 5) ; 0 uses
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !8
  %i.cr = getelementptr i8, ptr %i.cq, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %i.co, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 240
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i60 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i60, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i61

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i61: ; preds = %bb.n
end_hunk_0
begin_hunk_1_@_ZNK8LoopStat5printERSo:bb.a
  %i.ks = tail call noundef signext i8 %i.kr(ptr noundef nonnull align 8 dereferenceable(570) %i.kk, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit109

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit109: ; preds = %bb.aq, %bb.ar
  %.0.i.i.i108 = phi i8 [ %i.ko, %bb.aq ], [ %i.ks, %bb.ar ]
  %i.kt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ke, i8 noundef signext %.0.i.i.i108)
  %i.ku = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kt) ; 0 uses
  %i.kv = load ptr, ptr %1, align 8, !tbaa !8
  %i.kw = getelementptr i8, ptr %i.kv, i64 -24
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = getelementptr inbounds i8, ptr %1, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 240
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i110 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i110, label %bb.as, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111

bb.as:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit109
  tail call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit109
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 56
  %i.lc = load i8, ptr %i.lb, align 8, !tbaa !28
  %.not.i1.i.i112 = icmp eq i8 %i.lc, 0
  br i1 %.not.i1.i.i112, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 67
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit114

bb.au:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i111
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.la)
  %i.lf = load ptr, ptr %i.la, align 8, !tbaa !8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 48
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = tail call noundef signext i8 %i.lh(ptr noundef nonnull align 8 dereferenceable(570) %i.la, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit114

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit114: ; preds = %bb.at, %bb.au
  %.0.i.i.i113 = phi i8 [ %i.le, %bb.at ], [ %i.li, %bb.au ]
  %i.lj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i113)
  %i.lk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lj) ; 0 uses
  %i.ll = load ptr, ptr %i.bp, align 8, !tbaa !64
  %i.lm = getelementptr inbounds nuw [24 x i8], ptr %i.ll, i64 %i.cm ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !65
  %i.lp = load ptr, ptr %i.lm, align 8, !tbaa !66
  %.not134 = icmp eq ptr %i.lo, %i.lp
  br i1 %.not134, label %.loopexit, label %.lr.ph128

.lr.ph:                                           ; preds = %.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit119
  %i.lq = phi i64 [ %i.mp, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit119 ], [ 0, %.preheader ]
  %.040126 = phi i32 [ %i.mo, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit119 ], [ 0, %.preheader ]
  %i.lr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 19) ; 0 uses
  %i.ls = load ptr, ptr %i.bp, align 8, !tbaa !64
  %i.lt = getelementptr inbounds nuw [24 x i8], ptr %i.ls, i64 %i.cm
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !66
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.lu, i64 %i.lq
  %i.lw = load x86_fp80, ptr %i.lv, align 16, !tbaa !67
  %i.lx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, x86_fp80 noundef %i.lw) ; 3 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !8
  %i.lz = getelementptr i8, ptr %i.ly, i64 -24
  %i.ma = load i64, ptr %i.lz, align 8
  %i.mb = getelementptr inbounds i8, ptr %i.lx, i64 %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 240
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i115 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i115, label %bb.av, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116

bb.av:                                            ; preds = %.lr.ph
  tail call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116: ; preds = %.lr.ph
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 56
  %i.mf = load i8, ptr %i.me, align 8, !tbaa !28
  %.not.i1.i.i117 = icmp eq i8 %i.mf, 0
  br i1 %.not.i1.i.i117, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 67
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit119

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.md)
  %i.mi = load ptr, ptr %i.md, align 8, !tbaa !8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 48
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = tail call noundef signext i8 %i.mk(ptr noundef nonnull align 8 dereferenceable(570) %i.md, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit119

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit119: ; preds = %bb.aw, %bb.ax
  %.0.i.i.i118 = phi i8 [ %i.mh, %bb.aw ], [ %i.ml, %bb.ax ]
  %i.mm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.lx, i8 noundef signext %.0.i.i.i118)
  %i.mn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mm) ; 0 uses
  %i.mo = add i32 %.040126, 1                     ; 2 uses
  %i.mp = zext i32 %i.mo to i64                   ; 2 uses
  %i.mq = load ptr, ptr %i.bp, align 8, !tbaa !64
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %i.mq, i64 %i.cm ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !65
  %i.mu = load ptr, ptr %i.mr, align 8, !tbaa !66
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw
  %i.my = ashr exact i64 %i.mx, 4
  %i.mz = icmp ugt i64 %i.my, %i.mp
  br i1 %i.mz, label %.lr.ph, label %._crit_edge, !llvm.loop !69

.lr.ph128:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit114, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124
  %i.na = phi i64 [ %i.nz, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124 ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit114 ]
  %.0127 = phi i32 [ %i.ny, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124 ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit114 ]
  %i.nb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 19) ; 0 uses
  %i.nc = load ptr, ptr %i.bp, align 8, !tbaa !64
  %i.nd = getelementptr inbounds nuw [24 x i8], ptr %i.nc, i64 %i.cm
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !66
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %i.na
  %i.ng = load x86_fp80, ptr %i.nf, align 16, !tbaa !67
  %i.nh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, x86_fp80 noundef %i.ng) ; 3 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !8
  %i.nj = getelementptr i8, ptr %i.ni, i64 -24
  %i.nk = load i64, ptr %i.nj, align 8
  %i.nl = getelementptr inbounds i8, ptr %i.nh, i64 %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 240
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i120 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i120, label %bb.ay, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i121

bb.ay:                                            ; preds = %.lr.ph128
  tail call void @_ZSt16__throw_bad_castv() #19
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i121: ; preds = %.lr.ph128
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 56
  %i.np = load i8, ptr %i.no, align 8, !tbaa !28
  %.not.i1.i.i122 = icmp eq i8 %i.np, 0
  br i1 %.not.i1.i.i122, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i121
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 67
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124

bb.ba:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i121
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.nn)
  %i.ns = load ptr, ptr %i.nn, align 8, !tbaa !8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = tail call noundef signext i8 %i.nu(ptr noundef nonnull align 8 dereferenceable(570) %i.nn, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124: ; preds = %bb.az, %bb.ba
  %.0.i.i.i123 = phi i8 [ %i.nr, %bb.az ], [ %i.nv, %bb.ba ]
  %i.nw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.nh, i8 noundef signext %.0.i.i.i123)
  %i.nx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nw) ; 0 uses
  %i.ny = add i32 %.0127, 1                       ; 2 uses
  %i.nz = zext i32 %i.ny to i64                   ; 2 uses
  %i.oa = load ptr, ptr %i.bp, align 8, !tbaa !64
  %i.ob = getelementptr inbounds nuw [24 x i8], ptr %i.oa, i64 %i.cm ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !65
  %i.oe = load ptr, ptr %i.ob, align 8, !tbaa !66
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = ptrtoint ptr %i.oe to i64
  %i.oh = sub i64 %i.of, %i.og
  %i.oi = ashr exact i64 %i.oh, 4
  %i.oj = icmp ugt i64 %i.oi, %i.nz
  br i1 %i.oj, label %.lr.ph128, label %.loopexit, !llvm.loop !71

.loopexit:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit114, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit79
  %i.ok = add i32 %.041129, 1                     ; 2 uses
  %i.ol = zext i32 %i.ok to i64                   ; 2 uses
  %i.om = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.on = load ptr, ptr %i.am, align 8, !tbaa !61
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = sub i64 %i.oo, %i.op
  %i.or = ashr exact i64 %i.oq, 2
  %i.os = icmp ugt i64 %i.or, %i.ol
  br i1 %i.os, label %bb.n, label %._crit_edge131, !llvm.loop !72
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 16 dereferenceable(640) ptr @_Z19getLoopSuiteRunInfov() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z24allocateLoopSuiteRunInfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjjjPbm(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(640) ptr @_Znwm(i64 noundef 640) #20 ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !78
  store i8 0, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 0, ptr %i.f, align 16, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr null, ptr %i.h, align 8, !tbaa !112
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 0, ptr %i.i, align 16, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr null, ptr %i.j, align 8, !tbaa !112
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i32 0, ptr %i.k, align 16, !tbaa !113
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store double 0.000000e+00, ptr %i.m, align 16, !tbaa !114
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i8 0, ptr %i.n, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  store x86_fp80 0.000000e+00, ptr %i.p, align 16, !tbaa !115
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 600 ; 3 uses
  store i32 0, ptr %i.q, align 8, !tbaa !116
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  store ptr null, ptr %i.r, align 16, !tbaa !117
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.g, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.l, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(408) %i.o, i8 0, i64 408, i1 false)
  store ptr %i.q, ptr %i.s, align 8, !tbaa !118
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  store ptr %i.q, ptr %i.t, align 16, !tbaa !119
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  store i64 0, ptr %i.u, align 8, !tbaa !120
  store ptr %i.c, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.w = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i32 %1, ptr %i.x, align 16, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i32 %2, ptr %i.y, align 16, !tbaa !121
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  store i32 %3, ptr %i.z, align 8, !tbaa !122
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %bb.c
  %i.aa = phi ptr [ %i.w, %bb.c ], [ %i.bb, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 2 uses
  %i.ab = lshr i64 %5, 2
  %i.ac = and i64 %i.ab, 2305843009213693951      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 552 ; 2 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !123
  %i.ae = shl nuw i64 %i.ac, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 560
  store ptr %i.af, ptr %i.ag, align 16, !tbaa !124
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !123
  %.not20 = icmp eq i64 %i.ah, 0
  br i1 %.not20, label %._crit_edge19, label %.lr.ph18

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.ai = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.bb, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !125, !range !58, !noundef !59
  %i.al = trunc nuw i8 %i.ak to i1                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 88 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !112 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !126
  %.not.i = icmp eq ptr %i.an, %i.ap
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 96 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aq = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.aq, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !113
  %i.ar = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.ar, label %bb.e, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !113
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.as, ptr %i.am, align 8, !tbaa !112
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.e, %bb.d
  %i.at = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.au = shl nuw i64 1, %i.at                    ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.av = load i64, ptr %i.an, align 8, !tbaa !63
  %i.aw = or i64 %i.av, %i.au
  store i64 %i.aw, ptr %i.an, align 8, !tbaa !63
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.g:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ax = xor i64 %i.au, -1
  %i.ay = load i64, ptr %i.an, align 8, !tbaa !63
  %i.az = and i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.an, align 8, !tbaa !63
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr %i.an, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.al)
  %.pre = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.f, %bb.g, %bb.h
  %i.bb = phi ptr [ %i.ai, %bb.f ], [ %i.ai, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !127

._crit_edge19:                                    ; preds = %.lr.ph18, %._crit_edge
  ret void

.lr.ph18:                                         ; preds = %._crit_edge, %.lr.ph18
  %.016 = phi i64 [ %i.bi, %.lr.ph18 ], [ 0, %._crit_edge ] ; 2 uses
  %i.bc = tail call double @drand48() #21
  %i.bd = fadd double %i.bc, 1.000000e-01
  %i.be = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 560
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !124
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.016
  store double %i.bd, ptr %i.bh, align 8, !tbaa !128
  %i.bi = add nuw i64 %.016, 1                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 552
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !123
  %i.bl = icmp ult i64 %i.bi, %i.bk
  br i1 %i.bl, label %.lr.ph18, label %._crit_edge19, !llvm.loop !129
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare double @drand48() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z20freeLoopSuiteRunInfov() local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !124 ; 2 uses
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #22
  %.pre = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73 ; 2 uses
  %i.d = icmp eq ptr %.pre, null
  br i1 %i.d, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.e = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  tail call void @_ZN16LoopSuiteRunInfoD2Ev(ptr noundef nonnull align 16 dead_on_return(640) dereferenceable(640) %i.e) #21
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #22
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  store ptr null, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}
end_hunk_1
begin_hunk_2_@_ZN16LoopSuiteRunInfoD2Ev:bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.av) #21
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !145 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !146 ; 2 uses
  %.not4.i.i.i37 = icmp eq ptr %i.ax, %i.az
  br i1 %.not4.i.i.i37, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i39 = phi ptr [ %i.bd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ax, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 3 uses
  %i.ba = load ptr, ptr %.05.i.i.i39, align 8, !tbaa !147 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i39, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i38
  tail call void @_ZdlPv(ptr noundef %i.ba) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i39, i64 32 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.bd, %i.az
  br i1 %.not.i.i.i40, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i38, !llvm.loop !148

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i41 = load ptr, ptr %i.aw, align 16, !tbaa !145
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.be = phi ptr [ %.pr.i41, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ax, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i42 = icmp eq ptr %i.be, null
  br i1 %.not.i.i1.i42, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.be) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !126 ; 2 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bn
  tail call void @_ZdlPv(ptr noundef %i.bo) #22
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !145 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !146 ; 2 uses
  %.not4.i.i.i43 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not4.i.i.i43, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i51, label %.lr.ph.i.i.i44

.lr.ph.i.i.i44:                                   ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i47
  %.05.i.i.i45 = phi ptr [ %i.bw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i47 ], [ %i.bq, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %i.bt = load ptr, ptr %.05.i.i.i45, align 8, !tbaa !147 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i45, i64 16
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i46: ; preds = %.lr.ph.i.i.i44
  tail call void @_ZdlPv(ptr noundef %i.bt) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i47

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i47: ; preds = %.lr.ph.i.i.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i46
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i45, i64 32 ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.bw, %i.bs
  br i1 %.not.i.i.i48, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i49, label %.lr.ph.i.i.i44, !llvm.loop !148

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i49: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i47
  %.pr.i50 = load ptr, ptr %i.bp, align 8, !tbaa !145
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i51

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i51: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i49, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.bx = phi ptr [ %.pr.i50, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i49 ], [ %i.bq, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i52 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i52, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit54, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i51
  tail call void @_ZdlPv(ptr noundef nonnull %i.bx) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit54

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit54: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i51, %bb.q
  %i.by = load ptr, ptr %0, align 16, !tbaa !147  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit54
  tail call void @_ZdlPv(ptr noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z10flushCachev() local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.c = load i64, ptr %i.b, align 8, !tbaa !123  ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge8, label %.lr.ph

._crit_edge8:                                     ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %.pre = load x86_fp80, ptr %.phi.trans.insert, align 16, !tbaa !115
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !124 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %.promoted = load x86_fp80, ptr %i.f, align 16, !tbaa !115 ; 2 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.g = icmp ult i64 %i.c, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.c, -4
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi x86_fp80 [ %.promoted, %.lr.ph ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %.05.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %i.h = phi x86_fp80 [ %.epil.init, %.epil.preheader ], [ %i.l, %bb.b ]
  %.05.epil = phi i64 [ %.05.epil.init, %.epil.preheader ], [ %i.m, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05.epil
  %i.j = load double, ptr %i.i, align 8, !tbaa !128
  %i.k = fpext double %i.j to x86_fp80
  %i.l = fadd x86_fp80 %i.h, %i.k                 ; 2 uses
  %i.m = add nuw i64 %.05.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !149

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %._crit_edge8
  %i.n = phi x86_fp80 [ %.pre, %._crit_edge8 ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ], [ %i.l, %bb.b ]
  %i.o = uitofp i64 %i.c to x86_fp80
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.q = fdiv x86_fp80 %i.n, %i.o
  store x86_fp80 %i.q, ptr %i.p, align 16, !tbaa !115
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %i.r = phi x86_fp80 [ %.promoted, %.lr.ph.new ], [ %i.ak, %bb.c ]
  %.05 = phi i64 [ 0, %.lr.ph.new ], [ %i.al, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05
  %i.t = load double, ptr %i.s, align 8, !tbaa !128
  %i.u = fpext double %i.t to x86_fp80
  %i.v = fadd x86_fp80 %i.r, %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !128
  %i.z = fpext double %i.y to x86_fp80
  %i.aa = fadd x86_fp80 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !128
  %i.ae = fpext double %i.ad to x86_fp80
  %i.af = fadd x86_fp80 %i.aa, %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !128
  %i.aj = fpext double %i.ai to x86_fp80
  %i.ak = fadd x86_fp80 %i.af, %i.aj              ; 3 uses
  %i.al = add nuw i64 %.05, 4                     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !151
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9copyTimerR8LoopStatiRK9LoopTimer(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !152, !range !58, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt6vectorIeSaIeEE9push_backERKe.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !154
  %i.f = load i64, ptr %2, align 8, !tbaa !155
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = sitofp i64 %i.g to x86_fp80
  %i.i = fdiv x86_fp80 %i.h, 1.000000e+06         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = sext i32 %1 to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.k ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !156
  %.not.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store x86_fp80 %i.i, ptr %i.o, align 16, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.r, ptr %i.n, align 8, !tbaa !65
  br label %_ZNSt6vectorIeSaIeEE9push_backERKe.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !66   ; 4 uses
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775792
  br i1 %i.w, label %bb.e, label %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #19
  unreachable

_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.x = ashr exact i64 %i.v, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 576460752303423487)
  %i.ab = select i1 %i.z, i64 576460752303423487, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 4
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #20 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  store x86_fp80 %i.i, ptr %i.ae, align 16, !tbaa !67
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.f, label %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.ad, ptr align 16 %i.s, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.not.i17.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #22
  br label %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i

_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i
  store ptr %i.ad, ptr %i.m, align 8, !tbaa !66
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ah, ptr %i.p, align 8, !tbaa !156
  br label %_ZNSt6vectorIeSaIeEE9push_backERKe.exit

_ZNSt6vectorIeSaIeEE9push_backERKe.exit:          ; preds = %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !133    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 280                 ; 2 uses
  %.not267 = icmp eq ptr %i.b, %i.c               ; 2 uses
  br i1 %.not267, label %._crit_edge257, label %.lr.ph256

._crit_edge257:                                   ; preds = %.loopexit234, %bb.a
  br i1 %2, label %bb.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph256:                                        ; preds = %bb.a, %.loopexit234
  %i.h = phi i64 [ %i.dr, %.loopexit234 ], [ 0, %bb.a ]
  %.0254 = phi i32 [ %i.dq, %.loopexit234 ], [ 0, %bb.a ]
  %i.i = getelementptr inbounds nuw [280 x i8], ptr %i.c, i64 %i.h ; 10 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !36, !range !58, !noundef !59
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.preheader233, label %.loopexit234

.preheader233:                                    ; preds = %.lr.ph256
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60   ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !61   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %.not268 = icmp eq ptr %i.n, %i.o
  br i1 %.not268, label %.loopexit234, label %.lr.ph253

.lr.ph253:                                        ; preds = %.preheader233
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph253, %bb.h
  %i.ab = phi i64 [ 0, %.lr.ph253 ], [ %i.do, %bb.h ] ; 7 uses
  %.0122252 = phi i32 [ 0, %.lr.ph253 ], [ %i.dn, %bb.h ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !63
  %.not145 = icmp eq i64 %i.ad, 0
  br i1 %.not145, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ab ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !66 ; 9 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = lshr exact i64 %i.al, 4                 ; 6 uses
  %i.an = trunc i64 %i.am to i32                  ; 3 uses
  %.not269 = icmp eq i32 %i.an, 0
  br i1 %.not269, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %bb.c
  %i.ao = uitofp nneg i32 %i.an to x86_fp80       ; 2 uses
  %i.ap = fdiv x86_fp80 0.000000e+00, %i.ao
  br label %._crit_edge250

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = and i64 %i.am, 4294967295
  %i.aq = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, 4294967294
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.g
  %i.as = and i64 %i.al, 16
  %lcmp.mod.not = icmp eq i64 %i.as, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.0129242.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bv, %._crit_edge.unr-lcssa ]
  %.0133240.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph.preheader ], [ %.1134.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.sroa.0229.0..sroa.0229.0.230236239.epil.init = phi x86_fp80 [ f0xFFFEFFFFFFFFFFFFFFFF, %.lr.ph.preheader ], [ %i.bx, %._crit_edge.unr-lcssa ] ; 2 uses
  %.sroa.0227.0..sroa.0227.0.228237238.epil.init = phi x86_fp80 [ f0x7FFEFFFFFFFFFFFFFFFF, %.lr.ph.preheader ], [ %i.bz, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod357 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod357)
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.epil.init
  %i.au = load x86_fp80, ptr %i.at, align 16, !tbaa !67 ; 7 uses
  %i.av = fadd x86_fp80 %.0129242.epil.init, %i.au ; 2 uses
  %i.aw = fcmp olt x86_fp80 %.sroa.0229.0..sroa.0229.0.230236239.epil.init, %i.au
  %i.ax = select i1 %i.aw, x86_fp80 %i.au, x86_fp80 %.sroa.0229.0..sroa.0229.0.230236239.epil.init ; 2 uses
  %i.ay = fcmp olt x86_fp80 %i.au, %.sroa.0227.0..sroa.0227.0.228237238.epil.init
  %i.az = select i1 %i.ay, x86_fp80 %i.au, x86_fp80 %.sroa.0227.0..sroa.0227.0.228237238.epil.init ; 2 uses
  %i.ba = fcmp ogt x86_fp80 %i.au, 0.000000e+00
  br i1 %i.ba, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph.epil.preheader
  %i.bb = fdiv x86_fp80 1.000000e+00, %i.au
  %i.bc = fadd x86_fp80 %.0133240.epil.init, %i.bb
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.d, %._crit_edge.unr-lcssa
  %.1134.lcssa = phi x86_fp80 [ %.1134.1, %._crit_edge.unr-lcssa ], [ %i.bc, %bb.d ], [ %.0133240.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.lcssa351 = phi x86_fp80 [ %i.bv, %._crit_edge.unr-lcssa ], [ %i.av, %bb.d ], [ %i.av, %.lr.ph.epil.preheader ]
  %.lcssa350 = phi x86_fp80 [ %i.bx, %._crit_edge.unr-lcssa ], [ %i.ax, %bb.d ], [ %i.ax, %.lr.ph.epil.preheader ] ; 2 uses
  %.lcssa = phi x86_fp80 [ %i.bz, %._crit_edge.unr-lcssa ], [ %i.az, %bb.d ], [ %i.az, %.lr.ph.epil.preheader ] ; 2 uses
  %i.bd = uitofp i32 %i.an to x86_fp80            ; 4 uses
  %i.be = fdiv x86_fp80 %.lcssa351, %i.bd         ; 7 uses
  %i.bf = fcmp ogt x86_fp80 %.1134.lcssa, 0.000000e+00
  %i.bg = fdiv x86_fp80 %i.bd, %.1134.lcssa
  %.2135 = select i1 %i.bf, x86_fp80 %i.bg, x86_fp80 %.1134.lcssa ; 2 uses
  %xtraiter358 = and i64 %i.am, 3                 ; 3 uses
  %i.bh = icmp ult i64 %i.aq, 3
  br i1 %i.bh, label %.lr.ph249.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter362 = and i64 %i.am, 4294967292
  br label %.lr.ph249

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %.0129242 = phi x86_fp80 [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.bv, %bb.g ]
  %.0133240 = phi x86_fp80 [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.1134.1, %bb.g ] ; 2 uses
  %.sroa.0229.0..sroa.0229.0.230236239 = phi x86_fp80 [ f0xFFFEFFFFFFFFFFFFFFFF, %.lr.ph.preheader.new ], [ %i.bx, %bb.g ] ; 2 uses
  %.sroa.0227.0..sroa.0227.0.228237238 = phi x86_fp80 [ f0x7FFEFFFFFFFFFFFFFFFF, %.lr.ph.preheader.new ], [ %i.bz, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv
  %i.bj = load x86_fp80, ptr %i.bi, align 16, !tbaa !67 ; 7 uses
  %i.bk = fadd x86_fp80 %.0129242, %i.bj
  %i.bl = fcmp olt x86_fp80 %.sroa.0229.0..sroa.0229.0.230236239, %i.bj
  %i.bm = select i1 %i.bl, x86_fp80 %i.bj, x86_fp80 %.sroa.0229.0..sroa.0229.0.230236239 ; 2 uses
  %i.bn = fcmp olt x86_fp80 %i.bj, %.sroa.0227.0..sroa.0227.0.228237238
  %i.bo = select i1 %i.bn, x86_fp80 %i.bj, x86_fp80 %.sroa.0227.0..sroa.0227.0.228237238 ; 2 uses
  %i.bp = fcmp ogt x86_fp80 %i.bj, 0.000000e+00
  br i1 %i.bp, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  %i.bq = fdiv x86_fp80 1.000000e+00, %i.bj
  %i.br = fadd x86_fp80 %.0133240, %i.bq
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e
  %.1134 = phi x86_fp80 [ %i.br, %bb.e ], [ %.0133240, %.lr.ph ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load x86_fp80, ptr %i.bt, align 16, !tbaa !67 ; 7 uses
  %i.bv = fadd x86_fp80 %i.bk, %i.bu              ; 3 uses
  %i.bw = fcmp olt x86_fp80 %i.bm, %i.bu
  %i.bx = select i1 %i.bw, x86_fp80 %i.bu, x86_fp80 %i.bm ; 3 uses
  %i.by = fcmp olt x86_fp80 %i.bu, %i.bo
  %i.bz = select i1 %i.by, x86_fp80 %i.bu, x86_fp80 %i.bo ; 3 uses
  %i.ca = fcmp ogt x86_fp80 %i.bu, 0.000000e+00
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.cb = fdiv x86_fp80 1.000000e+00, %i.bu
  %i.cc = fadd x86_fp80 %.1134, %i.cb
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  %.1134.1 = phi x86_fp80 [ %i.cc, %bb.f ], [ %.1134, %.lr.ph.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !157

._crit_edge250.loopexit.unr-lcssa:                ; preds = %.lr.ph249
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  br i1 %lcmp.mod359.not, label %._crit_edge250, label %.lr.ph249.epil.preheader

.lr.ph249.epil.preheader:                         ; preds = %._crit_edge250.loopexit.unr-lcssa, %._crit_edge
  %indvars.iv278.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next279.3, %._crit_edge250.loopexit.unr-lcssa ]
  %.0130247.epil.init = phi x86_fp80 [ 0.000000e+00, %._crit_edge ], [ %i.dm, %._crit_edge250.loopexit.unr-lcssa ]
  %lcmp.mod361 = icmp ne i64 %xtraiter358, 0
  tail call void @llvm.assume(i1 %lcmp.mod361)
  br label %.lr.ph249.epil

.lr.ph249.epil:                                   ; preds = %.lr.ph249.epil, %.lr.ph249.epil.preheader
  %indvars.iv278.epil = phi i64 [ %indvars.iv278.epil.init, %.lr.ph249.epil.preheader ], [ %indvars.iv.next279.epil, %.lr.ph249.epil ] ; 2 uses
  %.0130247.epil = phi x86_fp80 [ %.0130247.epil.init, %.lr.ph249.epil.preheader ], [ %i.cg, %.lr.ph249.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph249.epil.preheader ], [ %epil.iter.next, %.lr.ph249.epil ]
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv278.epil
  %i.ce = load x86_fp80, ptr %i.cd, align 16, !tbaa !67
  %i.cf = fsub x86_fp80 %i.ce, %i.be              ; 2 uses
  %i.cg = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.cf, x86_fp80 %i.cf, x86_fp80 %.0130247.epil) ; 2 uses
  %indvars.iv.next279.epil = add nuw nsw i64 %indvars.iv278.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter358
  br i1 %epil.iter.cmp.not, label %._crit_edge250, label %.lr.ph249.epil, !llvm.loop !158

._crit_edge250:                                   ; preds = %._crit_edge250.loopexit.unr-lcssa, %.lr.ph249.epil, %._crit_edge.thread
end_hunk_2
begin_hunk_3_@_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb:bb.a
  %i.hg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.fj) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit

.lr.ph263:                                        ; preds = %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175, %.loopexit
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %.loopexit ], [ 0, %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175 ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [280 x i8], ptr %i.c, i64 %indvars.iv283 ; 7 uses
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !36, !range !58, !noundef !59
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %.preheader232, label %.loopexit

.preheader232:                                    ; preds = %.lr.ph263
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 208
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 216
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !60 ; 2 uses
  %i.hn = load ptr, ptr %i.hk, align 8, !tbaa !61 ; 3 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = ashr exact i64 %i.hq, 2
  %.not272 = icmp eq ptr %i.hm, %i.hn
  br i1 %.not272, label %.loopexit, label %.lr.ph261

.lr.ph261:                                        ; preds = %.preheader232
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !62
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hh, i64 232
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph261, %bb.t
  %i.hx = phi i64 [ 0, %.lr.ph261 ], [ %i.jg, %bb.t ] ; 9 uses
  %.0121260 = phi i32 [ 0, %.lr.ph261 ], [ %i.jf, %bb.t ]
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hx
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !63
  %.not = icmp eq i64 %i.hz, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0221.0316322331341, i64 %i.hx ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !4
  %i.ic = add nsw i32 %i.ib, 1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !4
  %i.id = load double, ptr %i.hu, align 8, !tbaa !167
  %i.ie = fpext double %i.id to x86_fp80          ; 3 uses
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0214.0323329342, i64 %i.hx ; 2 uses
  %i.ig = load x86_fp80, ptr %i.if, align 16, !tbaa !67
  %i.ih = fadd x86_fp80 %i.ig, %i.ie
  store x86_fp80 %i.ih, ptr %i.if, align 16, !tbaa !67
  %i.ii = load ptr, ptr %i.hv, align 8, !tbaa !66
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %i.hx ; 3 uses
  %i.ik = load x86_fp80, ptr %i.ij, align 16, !tbaa !67
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0205.0333340, i64 %i.hx ; 2 uses
  %i.im = load x86_fp80, ptr %i.il, align 16, !tbaa !67
  %i.in = fadd x86_fp80 %i.ik, %i.im
  store x86_fp80 %i.in, ptr %i.il, align 16, !tbaa !67
  %i.io = load x86_fp80, ptr %i.ij, align 16, !tbaa !67
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0197.0343, i64 %i.hx ; 2 uses
  %i.iq = load x86_fp80, ptr %i.ip, align 16, !tbaa !67
  %i.ir = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.ie, x86_fp80 %i.io, x86_fp80 %i.iq)
  store x86_fp80 %i.ir, ptr %i.ip, align 16, !tbaa !67
  %i.is = load x86_fp80, ptr %i.ij, align 16, !tbaa !67
  %i.it = fmul x86_fp80 %i.is, %i.ie
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hx
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !4
  %i.iw = load ptr, ptr %i.hw, align 8, !tbaa !61
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.hx
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !4
  %i.iz = mul nsw i32 %i.iy, %i.iv
  %i.ja = sitofp i32 %i.iz to x86_fp80
  %i.jb = fdiv x86_fp80 %i.it, %i.ja
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0191.0, i64 %i.hx ; 2 uses
  %i.jd = load x86_fp80, ptr %i.jc, align 16, !tbaa !67
  %i.je = fadd x86_fp80 %i.jd, %i.jb
  store x86_fp80 %i.je, ptr %i.jc, align 16, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.jf = add i32 %.0121260, 1                    ; 2 uses
  %i.jg = zext i32 %i.jf to i64                   ; 2 uses
  %i.jh = icmp ugt i64 %i.hr, %i.jg
  br i1 %i.jh, label %bb.r, label %.loopexit, !llvm.loop !168

.loopexit:                                        ; preds = %bb.t, %.preheader232, %.lr.ph263
  %indvars.iv.next284 = add i64 %indvars.iv283, 1 ; 2 uses
  %i.ji = and i64 %indvars.iv.next284, 4294967295
  %i.jj = icmp ugt i64 %i.g, %i.ji
  br i1 %i.jj, label %.lr.ph263, label %.preheader.loopexit, !llvm.loop !169

._crit_edge266:                                   ; preds = %bb.ab, %.preheader
  %.not.i.i.i176 = icmp eq ptr %.sroa.0191.0, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorIeSaIeEED2Ev.exit177, label %bb.u

bb.u:                                             ; preds = %._crit_edge266
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0191.0) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit177

_ZNSt6vectorIeSaIeEED2Ev.exit177:                 ; preds = %._crit_edge266, %bb.u
  %.not.i.i.i178 = icmp eq ptr %.sroa.0197.0343, null
  br i1 %.not.i.i.i178, label %_ZNSt6vectorIeSaIeEED2Ev.exit179, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit177
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0197.0343) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit179

_ZNSt6vectorIeSaIeEED2Ev.exit179:                 ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit177, %bb.v
  %.not.i.i.i180 = icmp eq ptr %.sroa.0205.0333340, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIeSaIeEED2Ev.exit181, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit179
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0205.0333340) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit181

_ZNSt6vectorIeSaIeEED2Ev.exit181:                 ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit179, %bb.w
  %.not.i.i.i182 = icmp eq ptr %.sroa.0214.0323329342, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorIeSaIeEED2Ev.exit183, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit181
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0214.0323329342) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit183

_ZNSt6vectorIeSaIeEED2Ev.exit183:                 ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit181, %bb.x
  %.not.i.i.i184 = icmp eq ptr %.sroa.0221.0316322331341, null
  br i1 %.not.i.i.i184, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit183
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0221.0316322331341) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.z:                                             ; preds = %.lr.ph265, %bb.ab
  %indvars.iv286 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next287, %bb.ab ] ; 11 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0221.0316322331341, i64 %indvars.iv286
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !4  ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv286
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !4
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0205.0333340, i64 %indvars.iv286
  %i.jo = load x86_fp80, ptr %i.jn, align 16, !tbaa !67
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %indvars.iv286
  store x86_fp80 %i.jo, ptr %i.jp, align 16, !tbaa !67
  %i.jq = icmp sgt i32 %i.jl, 0
  br i1 %i.jq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.jr = load ptr, ptr %i.ha, align 8, !tbaa !64
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %i.jr, i64 %indvars.iv286
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !66
  %i.ju = load x86_fp80, ptr %i.jt, align 16, !tbaa !67
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0214.0323329342, i64 %indvars.iv286
  %i.jw = load x86_fp80, ptr %i.jv, align 16, !tbaa !67
  %i.jx = fmul x86_fp80 %i.ju, %i.jw
  %i.jy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0197.0343, i64 %indvars.iv286
  %i.jz = load x86_fp80, ptr %i.jy, align 16, !tbaa !67
  %i.ka = fdiv x86_fp80 %i.jx, %i.jz
  %i.kb = load ptr, ptr %i.hb, align 8, !tbaa !64
  %i.kc = getelementptr inbounds nuw [24 x i8], ptr %i.kb, i64 %i.gs
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !66
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.kd, i64 %indvars.iv286
  store x86_fp80 %i.ka, ptr %i.ke, align 16, !tbaa !67
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0191.0, i64 %indvars.iv286
  %i.kg = load x86_fp80, ptr %i.kf, align 16, !tbaa !67
  %i.kh = fdiv x86_fp80 1.000000e+00, %i.kg
  %i.ki = load ptr, ptr %i.hc, align 16, !tbaa !64
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %i.ki, i64 %i.gs
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !66
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %indvars.iv286
  store x86_fp80 %i.kh, ptr %i.kl, align 16, !tbaa !67
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.km = load i32, ptr %i.du, align 16, !tbaa !121
  %i.kn = zext i32 %i.km to i64
  %i.ko = icmp samesign ult i64 %indvars.iv.next287, %i.kn
  br i1 %i.ko, label %bb.z, label %._crit_edge266, !llvm.loop !170

_ZNSt6vectorIeSaIeEED2Ev.exit:                    ; preds = %bb.p, %bb.q
  %.pn = phi { ptr, i32 } [ %i.hf, %bb.p ], [ %i.hg, %bb.q ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.es) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit186

_ZNSt6vectorIeSaIeEED2Ev.exit186:                 ; preds = %bb.o, %_ZNSt6vectorIeSaIeEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %i.he, %bb.o ], [ %.pn, %_ZNSt6vectorIeSaIeEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.eb) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit190

_ZNSt6vectorIiSaIiEED2Ev.exit190:                 ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit186, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hd, %bb.n ], [ %.pn.pn, %_ZNSt6vectorIeSaIeEED2Ev.exit186 ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.dy) #22
  resume { ptr, i32 } %.pn.pn.pn

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.y, %_ZNSt6vectorIeSaIeEED2Ev.exit183, %._crit_edge257
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #9

; Function Attrs: mustprogress uwtable
define dso_local void @_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::basic_ofstream", align 8 ; 26 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::basic_ofstream", align 8 ; 26 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::basic_ofstream", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = load ptr, ptr %0, align 8, !tbaa !145
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.cv, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call fastcc void @_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev(ptr dead_on_unwind noalias writable align 8 %10)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.f = load ptr, ptr %0, align 8, !tbaa !145
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 5                   ; 2 uses
  %i.k = trunc i64 %i.j to i32                    ; 4 uses
  %.not441 = icmp eq i32 %i.k, 0                  ; 2 uses
  br i1 %.not441, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 608
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 600 ; 5 uses
  %wide.trip.count = and i64 %i.j, 4294967295
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !78   ; 4 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.cs, label %bb.i

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !117  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i.i, label %bb.f, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !145
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !78   ; 4 uses
  %i.w = load ptr, ptr %i.t, align 8              ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !78   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.v, i64 %i.y) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !147
  %i.ac = call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.w, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.d
  %i.ad = sub i64 %i.y, %i.v
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.ae = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.ae, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ae, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.d, !llvm.loop !172

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.af = icmp eq ptr %.19.i.i.i.i, %i.n
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !78 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.v) ; 2 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !147
  %i.al = call i32 @memcmp(ptr noundef %i.w, ptr noundef %i.ak, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.e
  %i.am = sub i64 %i.v, %i.ah
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.am, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.al, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.an = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.an, ptr %i.n, ptr %.19.i.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.n, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %spec.select.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !130
  %i.aq = trunc nuw i64 %indvars.iv to i32
  invoke void @_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb(i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !173

bb.h:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.as = load ptr, ptr %1, align 8, !tbaa !147, !noalias !174
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.at, ptr %12, align 8, !tbaa !75, !alias.scope !177
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 0, ptr %i.au, align 8, !tbaa !78, !alias.scope !177
  store i8 0, ptr %i.at, align 8, !tbaa !34, !alias.scope !177
  %i.av = add i64 %i.p, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.av)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !78, !alias.scope !177
  %i.ax = sub i64 4611686018427387903, %i.aw
  %i.ay = icmp ult i64 %i.ax, %i.p
  br i1 %i.ay, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.j
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.as, i64 noundef %i.p)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.k ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !78, !alias.scope !177
  %i.bb = icmp eq i64 %i.ba, 4611686018427387903
  br i1 %i.bb, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.cont.i.i unwind label %bb.k

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %12, align 8, !tbaa !147, !alias.scope !177 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.at
  br i1 %i.bf, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.bg = load i64, ptr %i.au, align 8, !tbaa !78, !noalias !180
  %i.bh = add i64 %i.bg, -4611686018427387894
  %i.bi = icmp ult i64 %i.bh, 10
  br i1 %i.bi, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.l
end_hunk_3
begin_hunk_4_@_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %.body
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn37.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ], [ %.pn37.pn, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.cw

bb.cs:                                            ; preds = %._crit_edge
  invoke fastcc void @_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ze = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cu:                                            ; preds = %bb.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.zf = load ptr, ptr %10, align 8, !tbaa !147  ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.zh = icmp eq ptr %i.zf, %i.zg
  br i1 %i.zh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.cu
  call void @_ZdlPv(ptr noundef %i.zf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.cv

bb.cv:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  ret void

bb.cw:                                            ; preds = %bb.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %bb.h
  %.pn41 = phi { ptr, i32 } [ %i.ar, %bb.h ], [ %i.ze, %bb.ct ], [ %.pn37.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ]
  %i.zi = load ptr, ptr %10, align 8, !tbaa !147  ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.zk = icmp eq ptr %i.zi, %i.zj
  br i1 %i.zk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.cw
  call void @_ZdlPv(ptr noundef %i.zi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  resume { ptr, i32 } %.pn41
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable align 8 %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::basic_ifstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull @.str.70, i32 noundef 8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !78
  store i8 0, ptr %i.a, align 8, !tbaa !34
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 2)
          to label %bb.b unwind label %bb.i       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = invoke { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = extractvalue { i64, i64 } %i.d, 0
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %2, align 8, !tbaa !8
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !212
  %i.m = load ptr, ptr %0, align 8, !tbaa !147
  %i.n = load i64, ptr %i.b, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !78
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %i.l, i32 -1, ptr null, i32 -1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = load ptr, ptr %0, align 8, !tbaa !147
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.q, %i.s
  %i.u = load ptr, ptr %1, align 8, !tbaa !147
  %i.v = load i64, ptr %i.p, align 8, !tbaa !78
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.t, i64 noundef %i.n, ptr noundef %i.u, i64 noundef %i.v)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %1, align 8, !tbaa !147    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.o
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.x) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.g:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %1, align 8, !tbaa !147   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.o
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.aa) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ac)
          to label %.noexc4 unwind label %bb.i

.noexc4:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.h, label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit

bb.h:                                             ; preds = %.noexc4
  %i.ae = load ptr, ptr %2, align 8, !tbaa !8
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !183
  %i.ak = or i32 %i.aj, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ah, i32 noundef %i.ak)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %bb.e, %bb.d, %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit: ; preds = %.noexc4, %bb.h
  %i.an = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8 ; 2 uses
  store ptr %i.an, ptr %2, align 8, !tbaa !8
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 24), align 8
  %i.ap = getelementptr i8, ptr %i.an, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %2, i64 %i.aq
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !8
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.ac) #21
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 8), align 8 ; 2 uses
  store ptr %i.as, ptr %2, align 8, !tbaa !8
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 16), align 8
  %i.au = getelementptr i8, ptr %i.as, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ax, align 8, !tbaa !213
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ay) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

.body:                                            ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.al, %bb.i ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i ]
  %i.az = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.a
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.az) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.f = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146
  %i.i = load ptr, ptr %0, align 8, !tbaa !145    ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i64 108, ptr %i.e, align 8, !tbaa !63
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 3 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !147
  %i.q = load i64, ptr %i.e, align 8, !tbaa !63   ; 3 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(108) %i.p, ptr noundef nonnull align 1 dereferenceable(108) @.str.24, i64 108, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  store i8 0, ptr %i.s, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i64 109, ptr %i.d, align 8, !tbaa !63
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc214 unwind label %bb.b  ; 3 uses

.noexc214:                                        ; preds = %.noexc.i
  store ptr %i.u, ptr %3, align 8, !tbaa !147
  %i.v = load i64, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(109) %i.u, ptr noundef nonnull align 1 dereferenceable(109) @.str.25, i64 109, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  store i8 0, ptr %i.x, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 56, ptr %i.c, align 8, !tbaa !63
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc218 unwind label %bb.c  ; 3 uses

.noexc218:                                        ; preds = %.noexc214
  store ptr %i.z, ptr %4, align 8, !tbaa !147
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !63  ; 3 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.z, ptr noundef nonnull align 1 dereferenceable(56) @.str.26, i64 56, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 0, ptr %i.ac, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 45, ptr %i.b, align 8, !tbaa !63
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc222 unwind label %bb.d  ; 3 uses

.noexc222:                                        ; preds = %.noexc218
  store ptr %i.ae, ptr %5, align 8, !tbaa !147
  %i.af = load i64, ptr %i.b, align 8, !tbaa !63  ; 3 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.ae, ptr noundef nonnull align 1 dereferenceable(45) @.str.27, i64 45, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !146 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !145 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = ashr exact i64 %i.ao, 5                 ; 5 uses
  %i.aq = icmp ugt i64 %i.ap, 288230376151711743
  br i1 %i.aq, label %bb.a, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.a:                                             ; preds = %.noexc222
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #19
          to label %.noexc224 unwind label %bb.e

.noexc224:                                        ; preds = %bb.a
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %.noexc222
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.al        ; 5 uses
  br i1 %.not.i.i.i.i, label %._crit_edge, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #20
          to label %.lr.ph.i.i.i.i.i.preheader unwind label %bb.e ; 6 uses

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.prol ], [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.prol ], [ %i.ap, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.as, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !75
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !78
  store i8 0, ptr %i.as, align 8, !tbaa !34
  %i.au = add i64 %.057.i.i.i.i.i.prol, -1        ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !215

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa991.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i.prol ]
  %i.aw = icmp ult i64 %i.ap, 4
  br i1 %i.aw, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.ax, ptr %.08.i.i.i.i.i, align 8, !tbaa !75
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !78
  store i8 0, ptr %i.ax, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !75
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.bb, align 8, !tbaa !78
  store i8 0, ptr %i.ba, align 8, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !75
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.be, align 8, !tbaa !78
  store i8 0, ptr %i.bd, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !75
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.bh, align 8, !tbaa !78
  store i8 0, ptr %i.bg, align 8, !tbaa !34
  %i.bi = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.3, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i, !llvm.loop !216

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa991 = phi ptr [ %.lcssa991.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bk = ptrtoint ptr %.lcssa991 to i64
  %i.bl = ptrtoint ptr %i.ar to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 5
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %.0.lcssa.i.i.i.i.i909 = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ], [ %.lcssa991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ] ; 4 uses
  %.sroa.0652.0896 = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke fastcc void @_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev(ptr dead_on_unwind noalias writable align 8 %6)
          to label %bb.f unwind label %bb.s

bb.b:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495

bb.c:                                             ; preds = %.noexc214
  %i.bp = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo:.noexc.i
  call void @_ZdlPv(ptr noundef %i.adu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.adw = load ptr, ptr %6, align 8, !tbaa !147  ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ady = icmp eq ptr %i.adw, %i.adx
  br i1 %i.ady, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452
  call void @_ZdlPv(ptr noundef %i.adw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aec, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.sroa.0652.0896, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455 ] ; 3 uses
  %i.adz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aeb = icmp eq ptr %i.adz, %i.aea
  br i1 %i.aeb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.adz) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.aec = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i456 = icmp eq ptr %i.aec, %.0.lcssa.i.i.i.i.i909
  br i1 %.not.i.i.i456, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !148

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  %.not.i.i1.i = icmp eq ptr %.sroa.0652.0896, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.cr

bb.cr:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0652.0896) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cr
  %i.aed = load ptr, ptr %5, align 8, !tbaa !147  ; 2 uses
  %i.aee = icmp eq ptr %i.aed, %i.ad
  br i1 %i.aee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.aed) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.aef = load ptr, ptr %4, align 8, !tbaa !147  ; 2 uses
  %i.aeg = icmp eq ptr %i.aef, %i.y
  br i1 %i.aeg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
  call void @_ZdlPv(ptr noundef %i.aef) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.aeh = load ptr, ptr %3, align 8, !tbaa !147  ; 2 uses
  %i.aei = icmp eq ptr %i.aeh, %i.t
  br i1 %i.aei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462
  call void @_ZdlPv(ptr noundef %i.aeh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.aej = load ptr, ptr %2, align 8, !tbaa !147  ; 2 uses
  %i.aek = icmp eq ptr %i.aej, %i.o
  br i1 %i.aek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465
  call void @_ZdlPv(ptr noundef %i.aej) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

_ZNSt6vectorIeSaIeEED2Ev.exit447:                 ; preds = %.loopexit692, %.loopexit.split-lp693, %bb.co, %bb.cp, %bb.ak
  %.pn194.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oi, %bb.ak ], [ %.pn194.pn, %bb.cp ], [ %.pn194.pn, %bb.co ], [ %lpad.loopexit694, %.loopexit692 ], [ %lpad.loopexit.split-lp695, %.loopexit.split-lp693 ] ; 2 uses
  %i.ael = load ptr, ptr %8, align 8, !tbaa !147  ; 2 uses
  %i.aem = icmp eq ptr %i.ael, %i.jf
  br i1 %i.aem, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469: ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit447
  call void @_ZdlPv(ptr noundef %i.ael) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471: ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit447, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469, %bb.aj
  %.pn194.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oh, %bb.aj ], [ %.pn194.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469 ], [ %.pn194.pn.pn.pn.pn, %_ZNSt6vectorIeSaIeEED2Ev.exit447 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.cs

bb.cs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, %bb.t
  %.pn201.pn = phi { ptr, i32 } [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280 ], [ %.pn194.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471 ], [ %i.hj, %bb.t ] ; 4 uses
  %i.aen = load ptr, ptr %6, align 8, !tbaa !147  ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aep = icmp eq ptr %i.aen, %i.aeo
  br i1 %i.aep, label %bb.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472: ; preds = %bb.cs
  call void @_ZdlPv(ptr noundef %i.aen) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483, label %.lr.ph.i.i.i476.preheader

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483, label %.lr.ph.i.i.i476.preheader

.lr.ph.i.i.i476.preheader:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472, %bb.s, %.thread, %bb.ct
  %.pn205940 = phi { ptr, i32 } [ %i.ce, %.thread ], [ %.pn201.pn, %bb.ct ], [ %i.hi, %bb.s ], [ %.pn201.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472 ]
  %.sroa.0652.0897938 = phi ptr [ %i.ar, %.thread ], [ %.sroa.0652.0896, %bb.ct ], [ %.sroa.0652.0896, %bb.s ], [ %.sroa.0652.0896, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i910937 = phi ptr [ %.lcssa991, %.thread ], [ %.0.lcssa.i.i.i.i.i909, %bb.ct ], [ %.0.lcssa.i.i.i.i.i909, %bb.s ], [ %.0.lcssa.i.i.i.i.i909, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472 ]
  br label %.lr.ph.i.i.i476

.lr.ph.i.i.i476:                                  ; preds = %.lr.ph.i.i.i476.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479
  %.05.i.i.i477 = phi ptr [ %i.aet, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479 ], [ %.sroa.0652.0897938, %.lr.ph.i.i.i476.preheader ] ; 3 uses
  %i.aeq = load ptr, ptr %.05.i.i.i477, align 8, !tbaa !147 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %.05.i.i.i477, i64 16
  %i.aes = icmp eq ptr %i.aeq, %i.aer
  br i1 %i.aes, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i478: ; preds = %.lr.ph.i.i.i476
  call void @_ZdlPv(ptr noundef %i.aeq) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479: ; preds = %.lr.ph.i.i.i476, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i478
  %i.aet = getelementptr inbounds nuw i8, ptr %.05.i.i.i477, i64 32 ; 2 uses
  %.not.i.i.i480 = icmp eq ptr %i.aet, %.0.lcssa.i.i.i.i.i910937
  br i1 %.not.i.i.i480, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483, label %.lr.ph.i.i.i476, !llvm.loop !148

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472, %bb.s, %bb.ct
  %.pn205941 = phi { ptr, i32 } [ %.pn201.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472 ], [ %.pn201.pn, %bb.ct ], [ %i.hi, %bb.s ], [ %.pn205940, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479 ] ; 2 uses
  %.sroa.0652.0897939 = phi ptr [ %.sroa.0652.0896, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472 ], [ %.sroa.0652.0896, %bb.ct ], [ %.sroa.0652.0896, %bb.s ], [ %.sroa.0652.0897938, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479 ] ; 2 uses
  %.not.i.i1.i484 = icmp eq ptr %.sroa.0652.0897939, null
  br i1 %.not.i.i1.i484, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit486, label %bb.cu

bb.cu:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0652.0897939) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit486

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit486: ; preds = %bb.cu, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483, %bb.e
  %.pn205.pn = phi { ptr, i32 } [ %i.br, %bb.e ], [ %.pn205941, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483 ], [ %.pn205941, %bb.cu ] ; 2 uses
  %i.aeu = load ptr, ptr %5, align 8, !tbaa !147  ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, %i.ad
  br i1 %i.aev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit486
  call void @_ZdlPv(ptr noundef %i.aeu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit486, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487, %bb.d
  %.pn205.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.d ], [ %.pn205.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487 ], [ %.pn205.pn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit486 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.aew = load ptr, ptr %4, align 8, !tbaa !147  ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.y
  br i1 %i.aex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489
  call void @_ZdlPv(ptr noundef %i.aew) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490, %bb.c
  %.pn205.pn.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.c ], [ %.pn205.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490 ], [ %.pn205.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.aey = load ptr, ptr %3, align 8, !tbaa !147  ; 2 uses
  %i.aez = icmp eq ptr %i.aey, %i.t
  br i1 %i.aez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492
  call void @_ZdlPv(ptr noundef %i.aey) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493, %bb.b
  %.pn205.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.b ], [ %.pn205.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493 ], [ %.pn205.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.afa = load ptr, ptr %2, align 8, !tbaa !147  ; 2 uses
  %i.afb = icmp eq ptr %i.afa, %i.o
  br i1 %i.afb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495
  call void @_ZdlPv(ptr noundef %i.afa) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn205.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z22generateChecksumReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::basic_ofstream", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = load ptr, ptr %0, align 8, !tbaa !145
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !78   ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.h = load ptr, ptr %1, align 8, !tbaa !147, !noalias !241
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !75, !alias.scope !244
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.j, align 8, !tbaa !78, !alias.scope !244
  store i8 0, ptr %i.i, align 8, !tbaa !34, !alias.scope !244
  %i.k = add i64 %i.f, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.k)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !78, !alias.scope !244
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.h, i64 noundef %i.f)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.p = load i64, ptr %i.j, align 8, !tbaa !78, !alias.scope !244
  %i.q = icmp eq i64 %i.p, 4611686018427387903
  br i1 %i.q, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.cont.i.i unwind label %bb.e

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !147, !alias.scope !244 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.t) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.v = load i64, ptr %i.j, align 8, !tbaa !78, !noalias !247
  %i.w = add i64 %i.v, -4611686018427387892
  %i.x = icmp ult i64 %i.w, 12
  br i1 %i.x, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.f:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.19, i64 noundef 12)
          to label %.noexc10 unwind label %bb.m   ; 6 uses

.noexc10:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.z, ptr %2, align 8, !tbaa !75, !alias.scope !247
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !147 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.noexc10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !78 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc10
  store ptr %i.aa, ptr %2, align 8, !tbaa !147, !alias.scope !247
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !34
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !34, !alias.scope !247
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !78
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.ai = phi i64 [ %i.ae, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !78, !alias.scope !247
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !147
  store i64 0, ptr %i.aj, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 8, !tbaa !34
  %i.al = load ptr, ptr %3, align 8, !tbaa !147   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.i
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.al) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.an = load ptr, ptr %2, align 8, !tbaa !147
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef %i.an, i32 noundef 48)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load ptr, ptr %4, align 8, !tbaa !8
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %4, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !183
  %i.au = and i32 %i.at, 5
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %_ZNSolsEPFRSoS_E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.aw = load ptr, ptr %2, align 8, !tbaa !147
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !78
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.aw, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !8
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 240
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i1.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.be)
          to label %.noexc31 unwind label %bb.o

.noexc31:                                         ; preds = %bb.l
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = invoke noundef signext i8 %i.bl(ptr noundef nonnull align 8 dereferenceable(570) %i.be, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.o, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc31, %bb.k
  %.0.i.i.i = phi i8 [ %i.bi, %bb.k ], [ %i.bm, %.noexc31 ]
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i8 noundef signext %.0.i.i.i)
          to label %.noexc33 unwind label %bb.o

.noexc33:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.o ; 0 uses

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %3, align 8, !tbaa !147   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.i
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.bq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %.invoke, %.noexc43, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i38, %.noexc41, %bb.q, %.noexc33, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc31, %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19, %_ZNSolsEPFRSoS_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.j, %_ZNSolsEPFRSoS_E.exit23
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #21
  br label %bb.s

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc33, %bb.i
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.20, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.bv = load ptr, ptr %2, align 8, !tbaa !147
  %i.bw = load i64, ptr %i.ak, align 8, !tbaa !78
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bv, i64 noundef %i.bw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21 unwind label %bb.o ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !8
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 240
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i35 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i35, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36

.invoke:                                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !28
  %.not.i1.i.i37 = icmp eq i8 %i.cf, 0
  br i1 %.not.i1.i.i37, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 67
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i38

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cd)
          to label %.noexc41 unwind label %bb.o

.noexc41:                                         ; preds = %bb.q
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef signext i8 %i.ck(ptr noundef nonnull align 8 dereferenceable(570) %i.cd, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i38 unwind label %bb.o, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i38: ; preds = %.noexc41, %bb.p
  %.0.i.i.i39 = phi i8 [ %i.ch, %bb.p ], [ %i.cl, %.noexc41 ]
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i8 noundef signext %.0.i.i.i39)
          to label %.noexc43 unwind label %bb.o

.noexc43:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i38
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %_ZNSolsEPFRSoS_E.exit23 unwind label %bb.o ; 0 uses

_ZNSolsEPFRSoS_E.exit23:                          ; preds = %.noexc43
  invoke fastcc void @_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %_ZNSolsEPFRSoS_E.exit23
  %i.co = load ptr, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, align 8 ; 2 uses
  store ptr %i.co, ptr %4, align 8, !tbaa !8
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, i64 24), align 8
  %i.cq = getelementptr i8, ptr %i.co, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %4, i64 %i.cr
  store ptr %i.cp, ptr %i.cs, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.ct) #21
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 248
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cu) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cv = load ptr, ptr %2, align 8, !tbaa !147   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.z
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.cv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.u

bb.s:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.o ], [ %i.bs, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cx = load ptr, ptr %2, align 8, !tbaa !147   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.z
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.cx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn.pn = phi { ptr, i32 } [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %.pn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

bb.t:                                             ; preds = %bb.b
  tail call fastcc void @_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.f = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146
  %i.i = load ptr, ptr %0, align 8, !tbaa !145
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = lshr exact i64 %i.l, 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i64 108, ptr %i.e, align 8, !tbaa !63
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 3 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !147
  %i.q = load i64, ptr %i.e, align 8, !tbaa !63   ; 3 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(108) %i.p, ptr noundef nonnull align 1 dereferenceable(108) @.str.24, i64 108, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  store i8 0, ptr %i.s, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i64 109, ptr %i.d, align 8, !tbaa !63
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc146 unwind label %bb.b  ; 3 uses

.noexc146:                                        ; preds = %.noexc.i
  store ptr %i.u, ptr %3, align 8, !tbaa !147
  %i.v = load i64, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(109) %i.u, ptr noundef nonnull align 1 dereferenceable(109) @.str.25, i64 109, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  store i8 0, ptr %i.x, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 56, ptr %i.c, align 8, !tbaa !63
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc150 unwind label %bb.c  ; 3 uses

.noexc150:                                        ; preds = %.noexc146
  store ptr %i.z, ptr %4, align 8, !tbaa !147
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !63  ; 3 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.z, ptr noundef nonnull align 1 dereferenceable(56) @.str.26, i64 56, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 0, ptr %i.ac, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 45, ptr %i.b, align 8, !tbaa !63
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc154 unwind label %bb.d  ; 3 uses

.noexc154:                                        ; preds = %.noexc150
  store ptr %i.ae, ptr %5, align 8, !tbaa !147
  %i.af = load i64, ptr %i.b, align 8, !tbaa !63  ; 3 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.ae, ptr noundef nonnull align 1 dereferenceable(45) @.str.27, i64 45, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !146 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !145 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = ashr exact i64 %i.ao, 5                 ; 5 uses
  %i.aq = icmp ugt i64 %i.ap, 288230376151711743
  br i1 %i.aq, label %bb.a, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.a:                                             ; preds = %.noexc154
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #19
          to label %.noexc156 unwind label %bb.e

.noexc156:                                        ; preds = %bb.a
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %.noexc154
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.al        ; 5 uses
  br i1 %.not.i.i.i.i, label %._crit_edge, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #20
          to label %.lr.ph.i.i.i.i.i.preheader unwind label %bb.e ; 6 uses

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.prol ], [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.prol ], [ %i.ap, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.as, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !75
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !78
  store i8 0, ptr %i.as, align 8, !tbaa !34
  %i.au = add i64 %.057.i.i.i.i.i.prol, -1        ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !250

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa747.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i.prol ]
  %i.aw = icmp ult i64 %i.ap, 4
  br i1 %i.aw, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.ax, ptr %.08.i.i.i.i.i, align 8, !tbaa !75
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !78
  store i8 0, ptr %i.ax, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !75
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.bb, align 8, !tbaa !78
  store i8 0, ptr %i.ba, align 8, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !75
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.be, align 8, !tbaa !78
  store i8 0, ptr %i.bd, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !75
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.bh, align 8, !tbaa !78
  store i8 0, ptr %i.bg, align 8, !tbaa !34
  %i.bi = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.3, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i, !llvm.loop !216

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa747 = phi ptr [ %.lcssa747.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bk = ptrtoint ptr %.lcssa747 to i64
  %i.bl = ptrtoint ptr %i.ar to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 5
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %.0.lcssa.i.i.i.i.i668 = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ], [ %.lcssa747, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ] ; 4 uses
  %.sroa.0442.0655 = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEc.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke fastcc void @_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev(ptr dead_on_unwind noalias writable align 8 %6)
          to label %bb.f unwind label %bb.k

bb.b:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

bb.c:                                             ; preds = %.noexc146
  %i.bp = landingpad { ptr, i32 }
          cleanup
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo:.noexc.i
  br i1 %i.ud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %bb.bs
  call void @_ZdlPv(ptr noundef %i.uc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ue = load ptr, ptr %6, align 8, !tbaa !147   ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ug = icmp eq ptr %i.ue, %i.uf
  br i1 %i.ug, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300
  call void @_ZdlPv(ptr noundef %i.ue) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.uk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.sroa.0442.0655, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ] ; 3 uses
  %i.uh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.uj = icmp eq ptr %i.uh, %i.ui
  br i1 %i.uj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.uh) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.uk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i304 = icmp eq ptr %i.uk, %.0.lcssa.i.i.i.i.i668
  br i1 %.not.i.i.i304, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !148

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  %.not.i.i1.i = icmp eq ptr %.sroa.0442.0655, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0442.0655) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bt
  %i.ul = load ptr, ptr %5, align 8, !tbaa !147   ; 2 uses
  %i.um = icmp eq ptr %i.ul, %i.ad
  br i1 %i.um, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ul) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.un = load ptr, ptr %4, align 8, !tbaa !147   ; 2 uses
  %i.uo = icmp eq ptr %i.un, %i.y
  br i1 %i.uo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  call void @_ZdlPv(ptr noundef %i.un) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.up = load ptr, ptr %3, align 8, !tbaa !147   ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.t
  br i1 %i.uq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310
  call void @_ZdlPv(ptr noundef %i.up) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ur = load ptr, ptr %2, align 8, !tbaa !147   ; 2 uses
  %i.us = icmp eq ptr %i.ur, %i.o
  br i1 %i.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313
  call void @_ZdlPv(ptr noundef %i.ur) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

_ZNSt6vectorIeSaIeEED2Ev.exit295:                 ; preds = %.loopexit481, %.loopexit.split-lp482, %bb.bq, %bb.br, %bb.u
  %.pn126.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ib, %bb.u ], [ %.pn126.pn.pn.pn, %bb.br ], [ %.pn126.pn.pn.pn, %bb.bq ], [ %lpad.loopexit483, %.loopexit481 ], [ %lpad.loopexit.split-lp484, %.loopexit.split-lp482 ] ; 2 uses
  %i.ut = load ptr, ptr %7, align 8, !tbaa !147   ; 2 uses
  %i.uu = icmp eq ptr %i.ut, %i.ef
  br i1 %i.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit295
  call void @_ZdlPv(ptr noundef %i.ut) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317, %bb.t
  %.pn126.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ia, %bb.t ], [ %.pn126.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317 ], [ %.pn126.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIeSaIeEED2Ev.exit295 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %bb.l
  %.pn126.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319 ], [ %i.ei, %bb.l ] ; 4 uses
  %i.uv = load ptr, ptr %6, align 8, !tbaa !147   ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ux = icmp eq ptr %i.uv, %i.uw
  br i1 %i.ux, label %bb.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %bb.bu
  call void @_ZdlPv(ptr noundef %i.uv) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331, label %.lr.ph.i.i.i324.preheader

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331, label %.lr.ph.i.i.i324.preheader

.lr.ph.i.i.i324.preheader:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320, %bb.k, %.thread, %bb.bv
  %.pn137699 = phi { ptr, i32 } [ %i.ce, %.thread ], [ %.pn126.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bv ], [ %i.eh, %bb.k ], [ %.pn126.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ]
  %.sroa.0442.0656697 = phi ptr [ %i.ar, %.thread ], [ %.sroa.0442.0655, %bb.bv ], [ %.sroa.0442.0655, %bb.k ], [ %.sroa.0442.0655, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i669696 = phi ptr [ %.lcssa747, %.thread ], [ %.0.lcssa.i.i.i.i.i668, %bb.bv ], [ %.0.lcssa.i.i.i.i.i668, %bb.k ], [ %.0.lcssa.i.i.i.i.i668, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ]
  br label %.lr.ph.i.i.i324

.lr.ph.i.i.i324:                                  ; preds = %.lr.ph.i.i.i324.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327
  %.05.i.i.i325 = phi ptr [ %i.vb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327 ], [ %.sroa.0442.0656697, %.lr.ph.i.i.i324.preheader ] ; 3 uses
  %i.uy = load ptr, ptr %.05.i.i.i325, align 8, !tbaa !147 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.05.i.i.i325, i64 16
  %i.va = icmp eq ptr %i.uy, %i.uz
  br i1 %i.va, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i326: ; preds = %.lr.ph.i.i.i324
  call void @_ZdlPv(ptr noundef %i.uy) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327: ; preds = %.lr.ph.i.i.i324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i326
  %i.vb = getelementptr inbounds nuw i8, ptr %.05.i.i.i325, i64 32 ; 2 uses
  %.not.i.i.i328 = icmp eq ptr %i.vb, %.0.lcssa.i.i.i.i.i669696
  br i1 %.not.i.i.i328, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331, label %.lr.ph.i.i.i324, !llvm.loop !148

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320, %bb.k, %bb.bv
  %.pn137700 = phi { ptr, i32 } [ %.pn126.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ], [ %.pn126.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bv ], [ %i.eh, %bb.k ], [ %.pn137699, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327 ] ; 2 uses
  %.sroa.0442.0656698 = phi ptr [ %.sroa.0442.0655, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ], [ %.sroa.0442.0655, %bb.bv ], [ %.sroa.0442.0655, %bb.k ], [ %.sroa.0442.0656697, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327 ] ; 2 uses
  %.not.i.i1.i332 = icmp eq ptr %.sroa.0442.0656698, null
  br i1 %.not.i.i1.i332, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit334, label %bb.bw

bb.bw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0442.0656698) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit334

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit334: ; preds = %bb.bw, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331, %bb.e
  %.pn137.pn = phi { ptr, i32 } [ %i.br, %bb.e ], [ %.pn137700, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331 ], [ %.pn137700, %bb.bw ] ; 2 uses
  %i.vc = load ptr, ptr %5, align 8, !tbaa !147   ; 2 uses
  %i.vd = icmp eq ptr %i.vc, %i.ad
  br i1 %i.vd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit334
  call void @_ZdlPv(ptr noundef %i.vc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit334, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, %bb.d
  %.pn137.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.d ], [ %.pn137.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335 ], [ %.pn137.pn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit334 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ve = load ptr, ptr %4, align 8, !tbaa !147   ; 2 uses
  %i.vf = icmp eq ptr %i.ve, %i.y
  br i1 %i.vf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337
  call void @_ZdlPv(ptr noundef %i.ve) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338, %bb.c
  %.pn137.pn.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.c ], [ %.pn137.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338 ], [ %.pn137.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.vg = load ptr, ptr %3, align 8, !tbaa !147   ; 2 uses
  %i.vh = icmp eq ptr %i.vg, %i.t
  br i1 %i.vh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340
  call void @_ZdlPv(ptr noundef %i.vg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341, %bb.b
  %.pn137.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.b ], [ %.pn137.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341 ], [ %.pn137.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.vi = load ptr, ptr %2, align 8, !tbaa !147   ; 2 uses
  %i.vj = icmp eq ptr %i.vi, %i.o
  br i1 %i.vj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343
  call void @_ZdlPv(ptr noundef %i.vi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn137.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z17generateFOMReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::basic_ofstream", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = load ptr, ptr %0, align 8, !tbaa !145
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !78   ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.h = load ptr, ptr %1, align 8, !tbaa !147, !noalias !267
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !75, !alias.scope !270
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.j, align 8, !tbaa !78, !alias.scope !270
  store i8 0, ptr %i.i, align 8, !tbaa !34, !alias.scope !270
  %i.k = add i64 %i.f, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.k)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !78, !alias.scope !270
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.h, i64 noundef %i.f)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.p = load i64, ptr %i.j, align 8, !tbaa !78, !alias.scope !270
  %i.q = icmp eq i64 %i.p, 4611686018427387903
  br i1 %i.q, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.cont.i.i unwind label %bb.e

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !147, !alias.scope !270 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.t) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.v = load i64, ptr %i.j, align 8, !tbaa !78, !noalias !273
  %i.w = add i64 %i.v, -4611686018427387897
  %i.x = icmp ult i64 %i.w, 7
  br i1 %i.x, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.f:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.21, i64 noundef 7)
          to label %.noexc10 unwind label %bb.m   ; 6 uses

.noexc10:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.z, ptr %2, align 8, !tbaa !75, !alias.scope !273
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !147 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.noexc10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !78 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc10
  store ptr %i.aa, ptr %2, align 8, !tbaa !147, !alias.scope !273
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !34
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !34, !alias.scope !273
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !78
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.ai = phi i64 [ %i.ae, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !78, !alias.scope !273
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !147
  store i64 0, ptr %i.aj, align 8, !tbaa !78
  store i8 0, ptr %i.ab, align 8, !tbaa !34
  %i.al = load ptr, ptr %3, align 8, !tbaa !147   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.i
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.al) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.an = load ptr, ptr %2, align 8, !tbaa !147
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef %i.an, i32 noundef 48)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load ptr, ptr %4, align 8, !tbaa !8
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %4, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !183
  %i.au = and i32 %i.at, 5
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %_ZNSolsEPFRSoS_E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.aw = load ptr, ptr %2, align 8, !tbaa !147
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !78
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.aw, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !8
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 240
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i1.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.be)
          to label %.noexc31 unwind label %bb.o

.noexc31:                                         ; preds = %bb.l
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = invoke noundef signext i8 %i.bl(ptr noundef nonnull align 8 dereferenceable(570) %i.be, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.o, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc31, %bb.k
  %.0.i.i.i = phi i8 [ %i.bi, %bb.k ], [ %i.bm, %.noexc31 ]
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i8 noundef signext %.0.i.i.i)
          to label %.noexc33 unwind label %bb.o

.noexc33:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.o ; 0 uses

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %3, align 8, !tbaa !147   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.i
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.bq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %.invoke, %.noexc43, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i38, %.noexc41, %bb.q, %.noexc33, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc31, %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19, %_ZNSolsEPFRSoS_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.j, %_ZNSolsEPFRSoS_E.exit23
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #21
  br label %bb.s

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc33, %bb.i
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.22, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.bv = load ptr, ptr %2, align 8, !tbaa !147
  %i.bw = load i64, ptr %i.ak, align 8, !tbaa !78
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bv, i64 noundef %i.bw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21 unwind label %bb.o ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !8
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 240
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i35 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i35, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36

.invoke:                                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !28
  %.not.i1.i.i37 = icmp eq i8 %i.cf, 0
  br i1 %.not.i1.i.i37, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 67
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i38

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cd)
          to label %.noexc41 unwind label %bb.o

.noexc41:                                         ; preds = %bb.q
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef signext i8 %i.ck(ptr noundef nonnull align 8 dereferenceable(570) %i.cd, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i38 unwind label %bb.o, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i38: ; preds = %.noexc41, %bb.p
  %.0.i.i.i39 = phi i8 [ %i.ch, %bb.p ], [ %i.cl, %.noexc41 ]
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i8 noundef signext %.0.i.i.i39)
          to label %.noexc43 unwind label %bb.o

.noexc43:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i38
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %_ZNSolsEPFRSoS_E.exit23 unwind label %bb.o ; 0 uses

_ZNSolsEPFRSoS_E.exit23:                          ; preds = %.noexc43
  invoke fastcc void @_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %_ZNSolsEPFRSoS_E.exit23
  %i.co = load ptr, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, align 8 ; 2 uses
  store ptr %i.co, ptr %4, align 8, !tbaa !8
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, i64 24), align 8
  %i.cq = getelementptr i8, ptr %i.co, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %4, i64 %i.cr
  store ptr %i.cp, ptr %i.cs, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.ct) #21
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 248
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cu) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cv = load ptr, ptr %2, align 8, !tbaa !147   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.z
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.cv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.u

bb.s:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.o ], [ %i.bs, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cx = load ptr, ptr %2, align 8, !tbaa !147   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.z
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.cx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn.pn = phi { ptr, i32 } [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %.pn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

bb.t:                                             ; preds = %bb.b
  tail call fastcc void @_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114writeFOMReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !146
  %i.g = load ptr, ptr %0, align 8, !tbaa !145
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = lshr i64 %i.j, 5                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 108, ptr %i.c, align 8, !tbaa !63
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 3 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !147
  %i.n = load i64, ptr %i.c, align 8, !tbaa !63   ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(108) %i.m, ptr noundef nonnull align 1 dereferenceable(108) @.str.24, i64 108, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i8 0, ptr %i.p, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 56, ptr %i.b, align 8, !tbaa !63
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc71 unwind label %bb.h   ; 3 uses

.noexc71:                                         ; preds = %.noexc.i
  store ptr %i.r, ptr %3, align 8, !tbaa !147
  %i.s = load i64, ptr %i.b, align 8, !tbaa !63   ; 3 uses
  store i64 %i.s, ptr %i.q, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.r, ptr noundef nonnull align 1 dereferenceable(56) @.str.26, i64 56, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  store i8 0, ptr %i.u, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 45, ptr %i.a, align 8, !tbaa !63
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc75 unwind label %bb.i   ; 3 uses

.noexc75:                                         ; preds = %.noexc71
  store ptr %i.w, ptr %4, align 8, !tbaa !147
  %i.x = load i64, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.w, ptr noundef nonnull align 1 dereferenceable(45) @.str.27, i64 45, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  store i8 0, ptr %i.z, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke fastcc void @_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev(ptr dead_on_unwind noalias writable align 8 %5)
          to label %bb.a unwind label %bb.j

bb.a:                                             ; preds = %.noexc75
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.28, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.ab = load ptr, ptr %2, align 8, !tbaa !147
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !78
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ab, i64 noundef %i.ac)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ae = load ptr, ptr %2, align 8, !tbaa !147
  %i.af = load i64, ptr %i.o, align 8, !tbaa !78
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ae, i64 noundef %i.af)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80 unwind label %bb.k ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.29, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80
  %i.ai = load ptr, ptr %1, align 8, !tbaa !8
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i1.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 67
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.an)
          to label %.noexc158 unwind label %bb.k

.noexc158:                                        ; preds = %bb.c
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef signext i8 %i.au(ptr noundef nonnull align 8 dereferenceable(570) %i.an, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.k, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc158, %bb.b
  %.0.i.i.i = phi i8 [ %i.ar, %bb.b ], [ %i.av, %.noexc158 ]
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i)
          to label %.noexc160 unwind label %bb.k

.noexc160:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.k ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc160
  %i.ay = load ptr, ptr %5, align 8, !tbaa !147
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !78
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85 unwind label %bb.k ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !8
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 240
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i162 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i162, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit85
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !28
  %.not.i1.i.i164 = icmp eq i8 %i.bj, 0
  br i1 %.not.i1.i.i164, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 67
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i165

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bh)
          to label %.noexc168 unwind label %bb.k

.noexc168:                                        ; preds = %bb.e
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef signext i8 %i.bo(ptr noundef nonnull align 8 dereferenceable(570) %i.bh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i165 unwind label %bb.k, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i165: ; preds = %.noexc168, %bb.d
  %.0.i.i.i166 = phi i8 [ %i.bl, %bb.d ], [ %i.bp, %.noexc168 ]
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i8 noundef signext %.0.i.i.i166)
          to label %.noexc170 unwind label %bb.k

.noexc170:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i165
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
          to label %_ZNSolsEPFRSoS_E.exit87 unwind label %bb.k ; 0 uses

_ZNSolsEPFRSoS_E.exit87:                          ; preds = %.noexc170
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.30, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89: ; preds = %_ZNSolsEPFRSoS_E.exit87
  %i.bt = load ptr, ptr %2, align 8, !tbaa !147
  %i.bu = load i64, ptr %i.o, align 8, !tbaa !78
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bt, i64 noundef %i.bu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91 unwind label %bb.k ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
  %i.bw = load ptr, ptr %2, align 8, !tbaa !147
  %i.bx = load i64, ptr %i.o, align 8, !tbaa !78
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bw, i64 noundef %i.bx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit93 unwind label %bb.k ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit93: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.58, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.k ; 0 uses

end_hunk_6
begin_hunk_7_@_ZN8LoopStatD2Ev:bb.a
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIeSaIeEED2Ev.exit9, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit7
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit9

_ZNSt6vectorIeSaIeEED2Ev.exit9:                   ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit7, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66   ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIeSaIeEED2Ev.exit11, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit9
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit11

_ZNSt6vectorIeSaIeEED2Ev.exit11:                  ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit9, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66   ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIeSaIeEED2Ev.exit13, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit11
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit13

_ZNSt6vectorIeSaIeEED2Ev.exit13:                  ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit11, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66   ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIeSaIeEED2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit13
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit15

_ZNSt6vectorIeSaIeEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit13, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit15
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit15, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !139  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i ], [ %i.v, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #22
  br label %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i:  ; preds = %bb.l, %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i.i17, label %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !140

_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.u, align 8, !tbaa !64
  br label %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.v, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #22
  br label %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !278
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !279  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef %i.f) #22
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !280

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #9

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240)) unnamed_addr #7 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i32 %2, ptr %3, i32 %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.peel.begin:
  %i.a = alloca i64, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 15, ptr %i.a, align 8, !tbaa !63
  %i.b = icmp eq i32 %4, -1                       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %.not.i.i.i.i.peel = icmp ne ptr %1, null
  %i.d = icmp eq i32 %2, -1                       ; 2 uses
  %or.cond.i.i.i.i.peel = select i1 %.not.i.i.i.i.peel, i1 %i.d, i1 false
  br i1 %or.cond.i.i.i.i.peel, label %bb.a, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

bb.a:                                             ; preds = %.peel.begin
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !281  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !283
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel: ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !284 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  %spec.select.peel = select i1 %i.n, ptr null, ptr %1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel: ; preds = %bb.a
  %i.o = load i8, ptr %i.f, align 1, !tbaa !34
  %i.p = zext i8 %i.o to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel, %.peel.begin
  %.sroa.045.2.peel = phi ptr [ %1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel ], [ %1, %.peel.begin ], [ %spec.select.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel ] ; 12 uses
  %.0.i.i.i.i.peel = phi i32 [ %i.p, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel ], [ %2, %.peel.begin ], [ %i.m, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel ] ; 2 uses
  %.not.i.i2.i.i.peel = icmp ne ptr %3, null
  %or.cond.i.i3.i.i.peel = select i1 %.not.i.i2.i.i.peel, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i.peel, label %bb.b, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel

bb.b:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !281
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !283
  %i.u = icmp ult ptr %i.r, %i.t
  br i1 %i.u, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel: ; preds = %bb.b
  %i.v = load ptr, ptr %3, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(64) %3), !inline_history !284 ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  %spec.select56.peel = select i1 %i.z, ptr null, ptr %3
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel: ; preds = %bb.b
  %i.aa = icmp eq i32 %.0.i.i.i.i.peel, -1
  br i1 %i.aa, label %bb.c, label %.preheader

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
  %.sroa.042.2.peel = phi ptr [ %spec.select56.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel ], [ %3, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel ] ; 2 uses
  %.0.i.i4.i.i.peel = phi i32 [ %i.y, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel ], [ %4, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.peel, -1
  %i.ac = icmp eq i32 %.0.i.i4.i.i.peel, -1
  %i.ad = xor i1 %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %.preheader

bb.c:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel
  %.sroa.042.2.peel105 = phi ptr [ %3, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.042.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ]
  %.not.i.i.peel = icmp ne ptr %.sroa.045.2.peel, null
  %or.cond.i.i.peel = select i1 %.not.i.i.peel, i1 %i.d, i1 false
  br i1 %or.cond.i.i.peel, label %bb.d, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !281 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !283
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel: ; preds = %bb.d
  %i.aj = load ptr, ptr %.sroa.045.2.peel, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.peel), !inline_history !285 ; 2 uses
  %5 = icmp ne i32 %i.am, -1
  tail call void @llvm.assume(i1 %5)
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel: ; preds = %bb.d
  %i.an = load i8, ptr %i.af, align 1, !tbaa !34
  %i.ao = zext i8 %i.an to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel, %bb.c
  %.0.i.i.peel = phi i32 [ %2, %bb.c ], [ %i.am, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel ], [ %i.ao, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel ]
  %i.ap = trunc i32 %.0.i.i.peel to i8
  store i8 %i.ap, ptr %i.c, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !281 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !283
  %i.au = icmp ult ptr %i.ar, %i.at
  br i1 %i.au, label %bb.f, label %bb.e, !prof !224

bb.e:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
  %i.av = load ptr, ptr %.sroa.045.2.peel, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.peel), !inline_history !286 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader

bb.f:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !281
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader: ; preds = %bb.f, %bb.e
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader
  %.sroa.045.0 = phi ptr [ %.sroa.045.2.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %.sroa.045.2, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 6 uses
  %.sroa.042.0 = phi ptr [ %.sroa.042.2.peel105, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %.sroa.042.2, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 8 uses
  %.0 = phi i64 [ 1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %i.et, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !281
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !283
  %i.be = icmp ult ptr %i.bb, %i.bd
  br i1 %i.be, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel
  %i.bf = load ptr, ptr %.sroa.045.0, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.0), !inline_history !284 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, -1
  %spec.select = select i1 %i.bj, ptr null, ptr %.sroa.045.0
  %i.bk = icmp eq i32 %i.bi, -1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i
  %.sroa.045.2 = phi ptr [ %spec.select, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ], [ %.sroa.045.0, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel ] ; 11 uses
  %.0.i.i.i.i = phi i1 [ %i.bk, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel ]
  %.not.i.i2.i.i = icmp ne ptr %.sroa.042.0, null
  %or.cond.i.i3.i.i = select i1 %.not.i.i2.i.i, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i, label %bb.g, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.g:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !281 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !283
  %i.bp = icmp ult ptr %i.bm, %i.bo
  br i1 %i.bp, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i: ; preds = %bb.g
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !34
  %i.br = zext i8 %i.bq to i32
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i: ; preds = %bb.g
  %i.bs = load ptr, ptr %.sroa.042.0, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.0), !inline_history !284 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, -1
  %spec.select56 = select i1 %i.bw, ptr null, ptr %.sroa.042.0
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i
  %.sroa.042.2 = phi ptr [ %.sroa.042.0, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i ], [ %.sroa.042.0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i ], [ %spec.select56, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i ] ; 2 uses
  %.0.i.i4.i.i = phi i32 [ %i.br, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i ], [ %4, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i ], [ %i.bv, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i ]
  %i.bx = icmp eq i32 %.0.i.i4.i.i, -1
  %i.by = xor i1 %.0.i.i.i.i, %i.bx
  %i.bz = icmp samesign ult i64 %.0, 15
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %bb.v, label %.preheader

.preheader:                                       ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel
  %.sroa.042.2.lcssa = phi ptr [ %.sroa.042.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %3, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.042.2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 7 uses
  %.sroa.045.2.lcssa = phi ptr [ %.sroa.045.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %.sroa.045.2.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.045.2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 8 uses
  %.sroa.11.0.lcssa = phi i32 [ %2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %2, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 3 uses
  %.0.lcssa = phi i64 [ 0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ 0, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 10 uses
  %.not.i.i.i.i15.peel = icmp ne ptr %.sroa.045.2.lcssa, null
  %i.cb = icmp eq i32 %.sroa.11.0.lcssa, -1       ; 2 uses
  %or.cond.i.i.i.i16.peel = select i1 %.not.i.i.i.i15.peel, i1 %i.cb, i1 false
  br i1 %or.cond.i.i.i.i16.peel, label %bb.h, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel

bb.h:                                             ; preds = %.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.045.2.lcssa, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !281 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.045.2.lcssa, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !283
  %i.cg = icmp ult ptr %i.cd, %i.cf
  br i1 %i.cg, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel: ; preds = %bb.h
  %i.ch = load ptr, ptr %.sroa.045.2.lcssa, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = invoke noundef i32 %i.cj(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.lcssa)
          to label %.noexc.peel unwind label %.loopexit.split-lp, !inline_history !287 ; 2 uses

.noexc.peel:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel
  %i.cl = icmp eq i32 %i.ck, -1
  %spec.select60.peel = select i1 %i.cl, ptr null, ptr %.sroa.045.2.lcssa
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel: ; preds = %bb.h
  %i.cm = load i8, ptr %i.cd, align 1, !tbaa !34
  %i.cn = zext i8 %i.cm to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel, %.noexc.peel, %.preheader
  %.sroa.045.4.peel = phi ptr [ %.sroa.045.2.lcssa, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel ], [ %.sroa.045.2.lcssa, %.preheader ], [ %spec.select60.peel, %.noexc.peel ] ; 10 uses
  %.0.i.i.i.i18.peel = phi i32 [ %i.cn, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel ], [ %.sroa.11.0.lcssa, %.preheader ], [ %i.ck, %.noexc.peel ] ; 3 uses
  %.not.i.i2.i.i19.peel = icmp ne ptr %.sroa.042.2.lcssa, null
  %or.cond.i.i3.i.i20.peel = select i1 %.not.i.i2.i.i19.peel, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i20.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel
  %i.co = icmp eq i32 %.0.i.i.i.i18.peel, -1
  %i.cp = xor i1 %i.b, %i.co
  br i1 %i.cp, label %bb.l, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.j:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.042.2.lcssa, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !281
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.042.2.lcssa, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !283
  %i.cu = icmp ult ptr %i.cr, %i.ct
  br i1 %i.cu, label %.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel: ; preds = %bb.j
  %i.cv = load ptr, ptr %.sroa.042.2.lcssa, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef i32 %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.2.lcssa)
          to label %.noexc26.peel unwind label %.loopexit.split-lp, !inline_history !287

.noexc26.peel:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %bb.k, label %.thr_comm.peel

bb.k:                                             ; preds = %.noexc26.peel
  %.not.peel = icmp eq i32 %.0.i.i.i.i18.peel, -1
  br i1 %.not.peel, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.l

.thr_comm.peel:                                   ; preds = %.noexc26.peel, %bb.j
  %i.da = icmp eq i32 %.0.i.i.i.i18.peel, -1
  br i1 %i.da, label %bb.l, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.l:                                             ; preds = %.thr_comm.peel, %bb.k, %bb.i
  %.sroa.042.354.peel = phi ptr [ %.sroa.042.2.lcssa, %.thr_comm.peel ], [ %.sroa.042.2.lcssa, %bb.i ], [ null, %bb.k ]
  %i.db = load i64, ptr %i.a, align 8, !tbaa !63
  %i.dc = icmp eq i64 %.0.lcssa, %i.db
  br i1 %i.dc, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.pre = load ptr, ptr %0, align 8, !tbaa !147
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.dd = add nuw nsw i64 %.0.lcssa, 1
  store i64 %i.dd, ptr %i.a, align 8, !tbaa !63
  %i.de = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.0.lcssa)
          to label %bb.n unwind label %.loopexit.split-lp75 ; 4 uses

bb.n:                                             ; preds = %bb.m
  %i.df = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  switch i64 %.0.lcssa, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  ]

bb.o:                                             ; preds = %bb.n
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !34
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr align 1 %i.df, i64 %.0.lcssa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel: ; preds = %bb.p, %bb.o, %bb.n
  %i.dh = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.c
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  call void @_ZdlPv(ptr noundef %i.dh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel
  store ptr %i.de, ptr %0, align 8, !tbaa !147
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !63
  store i64 %i.dj, ptr %i.c, align 8, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel
  %i.dk = phi ptr [ %.pre, %._crit_edge ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel ]
  %.not.i.i28.peel = icmp ne ptr %.sroa.045.4.peel, null
  %or.cond.i.i29.peel = select i1 %.not.i.i28.peel, i1 %i.cb, i1 false
  br i1 %or.cond.i.i29.peel, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !281 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !283
  %i.dp = icmp ult ptr %i.dm, %i.do
  br i1 %i.dp, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel: ; preds = %bb.r
  %i.dq = load ptr, ptr %.sroa.045.4.peel, align 8, !tbaa !8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = invoke noundef i32 %i.ds(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4.peel)
          to label %.noexc33.peel unwind label %.loopexit.split-lp80, !inline_history !288 ; 2 uses

.noexc33.peel:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel
  %6 = icmp ne i32 %i.dt, -1
  call void @llvm.assume(i1 %6)
  br label %bb.s

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel: ; preds = %bb.r
  %i.du = load i8, ptr %i.dm, align 1, !tbaa !34
  %i.dv = zext i8 %i.du to i32
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel, %.noexc33.peel, %bb.q
  %.0.i.i30.peel = phi i32 [ %.sroa.11.0.lcssa, %bb.q ], [ %i.dt, %.noexc33.peel ], [ %i.dv, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel ]
  %i.dw = trunc i32 %.0.i.i30.peel to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.0.lcssa
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !34
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !281 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !283
  %i.ec = icmp ult ptr %i.dz, %i.eb
  br i1 %i.ec, label %bb.u, label %bb.t, !prof !224

bb.t:                                             ; preds = %bb.s
  %i.ed = load ptr, ptr %.sroa.045.4.peel, align 8, !tbaa !8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 80
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef i32 %i.ef(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4.peel)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader unwind label %.loopexit.split-lp, !inline_history !289 ; 0 uses

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader: ; preds = %bb.u, %bb.t
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel

bb.u:                                             ; preds = %bb.s
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store ptr %i.eh, ptr %i.dy, align 8, !tbaa !281
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader

bb.v:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.not.i.i.not = icmp eq ptr %.sroa.045.2, null
  br i1 %.not.i.i.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !281 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !283
  %i.em = icmp ult ptr %i.ej, %i.el
  br i1 %i.em, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.w
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !34
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.w
  %i.eo = load ptr, ptr %.sroa.045.2, align 8, !tbaa !8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = tail call noundef i32 %i.eq(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2), !inline_history !285 ; 2 uses
  %7 = icmp ne i32 %i.er, -1
  tail call void @llvm.assume(i1 %7)
  %i.es = trunc i32 %i.er to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, %bb.v, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
  %.0.i.i = phi i8 [ -1, %bb.v ], [ %i.es, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ], [ %i.en, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ]
  %i.et = add nuw nsw i64 %.0, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0
  store i8 %.0.i.i, ptr %i.eu, align 1, !tbaa !34
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 16 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !281 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !283
  %i.ez = icmp ult ptr %i.ew, %i.ey
  br i1 %i.ez, label %bb.x, label %bb.y, !prof !224

bb.x:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  store ptr %i.fa, ptr %i.ev, align 8, !tbaa !281
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge: ; preds = %bb.x, %bb.y
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel, !llvm.loop !290

bb.y:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.fb = load ptr, ptr %.sroa.045.2, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = tail call noundef i32 %i.fd(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2), !inline_history !286 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader
  %.sroa.045.1 = phi ptr [ %.sroa.045.4.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.sroa.045.4, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 6 uses
  %.sroa.042.1 = phi ptr [ %.sroa.042.354.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.sroa.042.354, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 7 uses
  %.1.in = phi i64 [ %.0.lcssa, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 2 uses
  %.1 = add i64 %.1.in, 1                         ; 9 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.045.1, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !281
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.045.1, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !283
  %i.fj = icmp ult ptr %i.fg, %i.fi
  br i1 %i.fj, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel
  %i.fk = load ptr, ptr %.sroa.045.1, align 8, !tbaa !8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 72
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = invoke noundef i32 %i.fm(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.1)
          to label %.noexc unwind label %.loopexit, !inline_history !287 ; 2 uses

.noexc:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24
  %i.fo = icmp eq i32 %i.fn, -1
  %spec.select60 = select i1 %i.fo, ptr null, ptr %.sroa.045.1
  %i.fp = icmp eq i32 %i.fn, -1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel, %.noexc
  %.sroa.045.4 = phi ptr [ %spec.select60, %.noexc ], [ %.sroa.045.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel ] ; 10 uses
  %.0.i.i.i.i18 = phi i1 [ %i.fp, %.noexc ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel ] ; 3 uses
  %.not.i.i2.i.i19 = icmp ne ptr %.sroa.042.1, null
  %or.cond.i.i3.i.i20 = select i1 %.not.i.i2.i.i19, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i20, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.042.1, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !281
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.042.1, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !283
  %i.fu = icmp ult ptr %i.fr, %i.ft
  br i1 %i.fu, label %.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22: ; preds = %bb.z
  %i.fv = load ptr, ptr %.sroa.042.1, align 8, !tbaa !8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 72
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = invoke noundef i32 %i.fx(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.1)
          to label %.noexc26 unwind label %.loopexit, !inline_history !287

.noexc26:                                         ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22
  %i.fz = icmp eq i32 %i.fy, -1
  br i1 %i.fz, label %bb.aa, label %.thr_comm

bb.aa:                                            ; preds = %.noexc26
  br i1 %.0.i.i.i.i18, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.ac

.thr_comm:                                        ; preds = %bb.z, %.noexc26
  br i1 %.0.i.i.i.i18, label %bb.ac, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.ab:                                            ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17
  %i.ga = xor i1 %i.b, %.0.i.i.i.i18
  br i1 %i.ga, label %bb.ac, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.ac:                                            ; preds = %bb.aa, %.thr_comm, %bb.ab
  %.sroa.042.354 = phi ptr [ %.sroa.042.1, %.thr_comm ], [ %.sroa.042.1, %bb.ab ], [ null, %bb.aa ]
  %i.gb = load i64, ptr %i.a, align 8, !tbaa !63
  %i.gc = icmp eq i64 %.1, %i.gb
  br i1 %i.gc, label %bb.ad, label %._crit_edge84

._crit_edge84:                                    ; preds = %bb.ac
  %.pre85 = load ptr, ptr %0, align 8, !tbaa !147
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.gd = add i64 %.1.in, 2
  store i64 %i.gd, ptr %i.a, align 8, !tbaa !63
  %i.ge = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.1)
          to label %bb.ae unwind label %.loopexit74 ; 4 uses

bb.ae:                                            ; preds = %bb.ad
  %i.gf = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  switch i64 %.1, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.af:                                            ; preds = %bb.ae
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !34
  store i8 %i.gg, ptr %i.ge, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ge, ptr align 1 %i.gf, i64 %.1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.gh = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.c
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  call void @_ZdlPv(ptr noundef %i.gh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ge, ptr %0, align 8, !tbaa !147
  %i.gj = load i64, ptr %i.a, align 8, !tbaa !63
  store i64 %i.gj, ptr %i.c, align 8, !tbaa !34
  br label %bb.ah

.loopexit:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22, %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp:                               ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit74:                                      ; preds = %bb.ad
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp75:                             ; preds = %bb.m
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ah:                                            ; preds = %._crit_edge84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  %i.gk = phi ptr [ %.pre85, %._crit_edge84 ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit ]
  %.not.i.i28.not = icmp eq ptr %.sroa.045.4, null
  br i1 %.not.i.i28.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !281 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !283
  %i.gp = icmp ult ptr %i.gm, %i.go
  br i1 %i.gp, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31, !prof !224

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32: ; preds = %bb.ai
  %i.gq = load i8, ptr %i.gm, align 1, !tbaa !34
  br label %bb.aj

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31: ; preds = %bb.ai
  %i.gr = load ptr, ptr %.sroa.045.4, align 8, !tbaa !8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = invoke noundef i32 %i.gt(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4)
          to label %.noexc33 unwind label %.loopexit79, !inline_history !288 ; 2 uses

.noexc33:                                         ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31
  %8 = icmp ne i32 %i.gu, -1
  call void @llvm.assume(i1 %8)
  %i.gv = trunc i32 %i.gu to i8
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc33, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32, %bb.ah
  %.0.i.i30 = phi i8 [ -1, %bb.ah ], [ %i.gv, %.noexc33 ], [ %i.gq, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.1
  store i8 %.0.i.i30, ptr %i.gw, align 1, !tbaa !34
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 16 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !281 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !283
  %i.hb = icmp ult ptr %i.gy, %i.ha
  br i1 %i.hb, label %bb.ak, label %bb.al, !prof !224

bb.ak:                                            ; preds = %bb.aj
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  store ptr %i.hc, ptr %i.gx, align 8, !tbaa !281
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge

bb.al:                                            ; preds = %bb.aj
  %i.hd = load ptr, ptr %.sroa.045.4, align 8, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 80
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = invoke noundef i32 %i.hf(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge unwind label %.loopexit, !inline_history !289 ; 0 uses

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge: ; preds = %bb.al, %bb.ak
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel, !llvm.loop !292

.loopexit79:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp80:                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit: ; preds = %bb.aa, %.thr_comm, %bb.ab, %.thr_comm.peel, %bb.k, %bb.i
  %.1.lcssa67 = phi i64 [ %.0.lcssa, %bb.i ], [ %.0.lcssa, %bb.k ], [ %.0.lcssa, %.thr_comm.peel ], [ %.1, %bb.ab ], [ %.1, %.thr_comm ], [ %.1, %bb.aa ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.lcssa67, ptr %i.hh, align 8, !tbaa !78
  %i.hi = load ptr, ptr %0, align 8, !tbaa !147
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.1.lcssa67
  store i8 0, ptr %i.hj, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.am:                                            ; preds = %.loopexit79, %.loopexit.split-lp80, %.loopexit74, %.loopexit.split-lp75, %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp77, %.loopexit.split-lp75 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit76, %.loopexit74 ], [ %lpad.loopexit81, %.loopexit79 ], [ %lpad.loopexit.split-lp82, %.loopexit.split-lp80 ]
  %i.hk = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.c
  br i1 %i.hl, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.hk) #22
  br label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #12

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), x86_fp80 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126  ; 2 uses
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = ptrtoint ptr %i.b to i64                 ; 3 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64                     ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.g, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %2 to i64                       ; 2 uses
  %i.m = sub nsw i64 %i.h, %i.l
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.b
  %i.p = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 63
  %i.s = lshr i64 %i.p, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.n, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.515.023.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.f, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.022.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.b, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.021.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.r, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.020.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.t, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %i.u = add i32 %.sroa.515.023.i.i.i.i.i, -1
  %i.v = icmp eq i32 %.sroa.515.023.i.i.i.i.i, 0  ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.v, i64 -8, i64 0
  %spec.select.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.022.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i ; 2 uses
  %spec.select19.i.i.i.i.i = select i1 %i.v, i32 63, i32 %i.u ; 2 uses
  %i.w = zext nneg i32 %spec.select19.i.i.i.i.i to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = add i32 %.sroa.59.021.i.i.i.i.i, -1
  %i.z = icmp eq i32 %.sroa.59.021.i.i.i.i.i, 0   ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.z, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.020.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.z, i32 63, i32 %i.y ; 2 uses
  %i.aa = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !63
  %i.ad = and i64 %i.ac, %i.x
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ae = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !63
  %i.af = or i64 %i.ae, %i.ab
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ag = xor i64 %i.ab, -1
  %i.ah = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !63
  %i.ai = and i64 %i.ah, %i.ag
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ %i.ai, %bb.d ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !63
  %i.aj = add nsw i64 %.024.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.ak, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !293

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.b
  %i.al = shl nuw i64 1, %i.l                     ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.am = load i64, ptr %1, align 8, !tbaa !63
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %1, align 8, !tbaa !63
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !63
  %i.ar = add i32 %i.f, 1
  store i32 %i.ar, ptr %i.e, align 8, !tbaa !113
  %i.as = icmp eq i32 %i.f, 63
  br i1 %i.as, label %bb.g, label %_ZNSt13_Bit_iteratorppEv.exit

bb.g:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %i.e, align 8, !tbaa !113
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.at, ptr %i.a, align 8, !tbaa !112
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.h:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %0, align 8, !tbaa !112   ; 4 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = sub i64 %i.g, %i.av                     ; 2 uses
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = zext i32 %i.f to i64                    ; 2 uses
  %i.az = add nsw i64 %i.ax, %i.ay                ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775744
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #19
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.bb = add i64 %.sroa.speculated.i, %i.az      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775744)
  %i.be = add nuw nsw i64 %i.bd, 63
  %i.bf = select i1 %i.bc, i64 9223372036854775807, i64 %i.be ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1152921504606846968
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #20 ; 5 uses
  %i.bj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bk = sub i64 %i.bj, %i.av                    ; 4 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.j, label %bb.k, !prof !224

bb.j:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.au, i64 %i.bk, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.l, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bn = load i64, ptr %i.au, align 8, !tbaa !63
end_hunk_7
