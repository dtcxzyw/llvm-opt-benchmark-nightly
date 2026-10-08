Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/jsonnet?download=true
inline.NumInlined: 1094
inline.NumDeleted: 309
begin_hunk_0
@.str.99 = private unnamed_addr constant [35 x i8] c"ERROR: invalid --max-trace value: \00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"--gc-growth-trigger\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"ERROR: invalid number \22\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"ERROR: invalid --gc-growth-trigger \22\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"--multi\00", align 1
@.str.106 = private unnamed_addr constant [36 x i8] c"ERROR: -m argument was empty string\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"--yaml-stream\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"--string\00", align 1
@.str.111 = private unnamed_addr constant [22 x i8] c"--no-trailing-newline\00", align 1
@.str.112 = private unnamed_addr constant [31 x i8] c"ERROR: unrecognized argument: \00", align 1
@.str.113 = private unnamed_addr constant [59 x i8] c"ERROR: cannot use --no-trailing-newline with --yaml-stream\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"ERROR: must give \00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"ERROR: only one \00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c" is allowed\0A\00", align 1
@.str.119 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.120 = private unnamed_addr constant [25 x i8] c"Writing to output file: \00", align 1
@.str.121 = private unnamed_addr constant [22 x i8] c"Opening output file: \00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.122 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1
@.str.125 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.126 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.129 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7versionRSo(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 32) ; 0 uses
  %i.b = tail call ptr @jsonnet_version()         ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !16
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %i.i = or i32 %i.h, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %i.i)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.j) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 67
  %i.u = load i8, ptr %i.t, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.q)
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef signext i8 %i.x(ptr noundef nonnull align 8 dereferenceable(570) %i.q, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.u, %bb.e ], [ %i.y, %bb.f ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare ptr @jsonnet_version() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5usageRSo(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z7versionRSo(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 30) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 19) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 39) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 49) ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 85) ; 0 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 72) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 86) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9, i64 noundef 74) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 66) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.11, i64 noundef 70) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 57) ; 0 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 68) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.14, i64 noundef 71) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.15, i64 noundef 83) ; 0 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.16, i64 noundef 40) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.17, i64 noundef 65) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.18, i64 noundef 31) ; 0 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.19, i64 noundef 87) ; 0 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.20, i64 noundef 65) ; 0 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.21, i64 noundef 33) ; 0 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.22, i64 noundef 84) ; 0 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.23, i64 noundef 59) ; 0 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.24, i64 noundef 66) ; 0 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.18, i64 noundef 31) ; 0 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.25, i64 noundef 87) ; 0 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 65) ; 0 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.21, i64 noundef 33) ; 0 uses
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.27, i64 noundef 84) ; 0 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.28, i64 noundef 59) ; 0 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.29, i64 noundef 23) ; 0 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.30, i64 noundef 83) ; 0 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.31, i64 noundef 77) ; 0 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.32, i64 noundef 58) ; 0 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.33, i64 noundef 29) ; 0 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.34, i64 noundef 28) ; 0 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.35, i64 noundef 14) ; 0 uses
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.36, i64 noundef 28) ; 0 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.37, i64 noundef 59) ; 0 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.38, i64 noundef 69) ; 0 uses
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.39, i64 noundef 82) ; 0 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.40, i64 noundef 63) ; 0 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !16
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 240
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 67
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ax)
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef signext i8 %i.be(ptr noundef nonnull align 8 dereferenceable(570) %i.ax, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.bb, %bb.c ], [ %i.bf, %bb.d ]
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z11get_var_valRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS4_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 61, i64 noundef 0) #25 ; 4 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.e = load ptr, ptr %1, align 8, !tbaa !46
  %i.f = tail call ptr @getenv(ptr noundef %i.e) #25 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.41, i64 noundef 28) ; 0 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.h, i64 noundef %i.j) ; 4 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.42, i64 noundef 15) ; 0 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load i8, ptr %i.s, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 67
  %i.v = load i8, ptr %i.u, align 1, !tbaa !42
  br label %.thread

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.r)
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef signext i8 %i.y(ptr noundef nonnull align 8 dereferenceable(570) %i.r, i8 noundef signext 10), !inline_history !0
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i8 [ %i.v, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %.0.i.i.i)
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 0 uses
  br label %bb.x

bb.g:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !47
  %i.ae = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #25
  %i.af = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.ad, ptr noundef nonnull %i.f, i64 noundef %i.ae) ; 0 uses
  br label %bb.x

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !47, !noalias !88
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !48, !alias.scope !88
  %i.aj = load ptr, ptr %0, align 8, !tbaa !46, !noalias !88 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %i.ah) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !88
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !49, !noalias !88
  %i.ak = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ak, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.h
  %i.al = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !46, !alias.scope !88
  %i.am = load i64, ptr %i.b, align 8, !tbaa !49, !noalias !88
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !42, !alias.scope !88
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %bb.h
  %i.an = phi ptr [ %i.al, %.noexc10.i.i ], [ %i.ai, %bb.h ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ao = load i8, ptr %i.aj, align 1, !tbaa !42
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.aj, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !49, !noalias !88 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !47, !alias.scope !88
  %i.ar = load ptr, ptr %3, align 8, !tbaa !46, !alias.scope !88
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !88
  %i.at = load ptr, ptr %1, align 8, !tbaa !46    ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  %i.aw = load ptr, ptr %3, align 8, !tbaa !46    ; 5 uses
  %i.ax = icmp eq ptr %i.aw, %i.ai                ; 2 uses
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.ax, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.ax, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ay = load i64, ptr %i.aq, align 8, !tbaa !47 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  switch i64 %i.ay, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !42
  store i8 %i.ba, ptr %i.at, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.aw, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bb = load i64, ptr %i.aq, align 8, !tbaa !47 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !47
  %i.bd = load ptr, ptr %1, align 8, !tbaa !46
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !42
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.aw, ptr %1, align 8, !tbaa !46
  %i.bg = load <2 x i64>, ptr %i.aq, align 8, !tbaa !42
  store <2 x i64> %i.bg, ptr %i.bf, align 8, !tbaa !42
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bh = load i64, ptr %i.au, align 8, !tbaa !42
  store ptr %i.aw, ptr %1, align 8, !tbaa !46
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load <2 x i64>, ptr %i.aq, align 8, !tbaa !42
  store <2 x i64> %i.bj, ptr %i.bi, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.at, ptr %3, align 8, !tbaa !46
  store i64 %i.bh, ptr %i.ai, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ai, ptr %3, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bk = phi ptr [ %i.at, %bb.n ], [ %i.ai, %bb.o ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.aq, align 8, !tbaa !47
  store i8 0, ptr %i.bk, align 1, !tbaa !42
  %i.bl = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ai
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bn = load i64, ptr %i.ai, align 8, !tbaa !42
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bp = add nuw i64 %i.c, 1                     ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.bq = load i64, ptr %i.ag, align 8, !tbaa !47, !noalias !89 ; 3 uses
  %.not34 = icmp ult i64 %i.c, %i.bq
  br i1 %.not34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.125, i64 noundef %i.bp, i64 noundef %i.bq) #26, !noalias !89
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.br, ptr %4, align 8, !tbaa !48, !alias.scope !89
  %i.bs = load ptr, ptr %0, align 8, !tbaa !46, !noalias !89
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bp ; 2 uses
  %i.bu = sub nuw i64 %i.bq, %i.bp                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !89
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !49, !noalias !89
  %i.bv = icmp ugt i64 %i.bu, 15
  br i1 %i.bv, label %.noexc10.i.i21, label %._crit_edge.i.i.i20

.noexc10.i.i21:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bw, ptr %4, align 8, !tbaa !46, !alias.scope !89
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !49, !noalias !89
  store i64 %i.bx, ptr %i.br, align 8, !tbaa !42, !alias.scope !89
  br label %._crit_edge.i.i.i20

._crit_edge.i.i.i20:                              ; preds = %.noexc10.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.by = phi ptr [ %i.bw, %.noexc10.i.i21 ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.bu, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit22
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i20
  %i.bz = load i8, ptr %i.bt, align 1, !tbaa !42
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit22

bb.r:                                             ; preds = %._crit_edge.i.i.i20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr nonnull align 1 %i.bt, i64 %i.bu, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit22: ; preds = %._crit_edge.i.i.i20, %bb.q, %bb.r
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !49, !noalias !89 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !47, !alias.scope !89
  %i.cc = load ptr, ptr %4, align 8, !tbaa !46, !alias.scope !89
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store i8 0, ptr %i.cd, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !89
  %i.ce = load ptr, ptr %2, align 8, !tbaa !46    ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  %i.ch = load ptr, ptr %4, align 8, !tbaa !46    ; 5 uses
  %i.ci = icmp eq ptr %i.ch, %i.br                ; 2 uses
  br i1 %i.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit22
  br i1 %i.ci, label %bb.s, label %.thread.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit22
  br i1 %i.ci, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i24

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  %i.cj = load i64, ptr %i.cb, align 8, !tbaa !47 ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.ck)
  switch i64 %i.cj, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.cl = load i8, ptr %i.ch, align 1, !tbaa !42
  store i8 %i.cl, ptr %i.ce, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %i.ch, i64 %i.cj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26: ; preds = %bb.u, %bb.t, %bb.s
  %i.cm = load i64, ptr %i.cb, align 8, !tbaa !47 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !47
  %i.co = load ptr, ptr %2, align 8, !tbaa !46
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  store i8 0, ptr %i.cp, align 1, !tbaa !42
  %.pre.i27 = load ptr, ptr %4, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30

.thread.i29:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ch, ptr %2, align 8, !tbaa !46
  %i.cr = load <2 x i64>, ptr %i.cb, align 8, !tbaa !42
  store <2 x i64> %i.cr, ptr %i.cq, align 8, !tbaa !42
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i24: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i23
  %i.cs = load i64, ptr %i.cf, align 8, !tbaa !42
  store ptr %i.ch, ptr %2, align 8, !tbaa !46
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cu = load <2 x i64>, ptr %i.cb, align 8, !tbaa !42
  store <2 x i64> %i.cu, ptr %i.ct, align 8, !tbaa !42
  %.not.i25 = icmp eq ptr %i.ce, null
  br i1 %.not.i25, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i24
  store ptr %i.ce, ptr %4, align 8, !tbaa !46
  store i64 %i.cs, ptr %i.br, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i24, %.thread.i29
  store ptr %i.br, ptr %4, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26, %bb.v, %bb.w
  %i.cv = phi ptr [ %i.ce, %bb.v ], [ %i.br, %bb.w ], [ %.pre.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i26 ]
  store i64 0, ptr %i.cb, align 8, !tbaa !47
  store i8 0, ptr %i.cv, align 1, !tbaa !42
  %i.cw = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.br
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30
  %i.cy = load i64, ptr %i.br, align 8, !tbaa !42
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.g, %.thread
  %.1 = phi i1 [ false, %.thread ], [ true, %bb.g ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z12get_var_fileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RS4_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.e = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 61, i64 noundef 0) #25 ; 4 uses
  %i.f = icmp ne i64 %i.e, -1                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.43, i64 noundef 42) ; 0 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !46
  %i.j = load i64, ptr %i.g, align 8, !tbaa !47
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.i, i64 noundef %i.j) ; 4 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.44, i64 noundef 2) ; 0 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load i8, ptr %i.s, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 67
  %i.v = load i8, ptr %i.u, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.r)
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef signext i8 %i.y(ptr noundef nonnull align 8 dereferenceable(570) %i.r, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.v, %bb.d ], [ %i.z, %bb.e ]
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %.0.i.i.i)
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 0 uses
  br label %bb.al

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !47, !noalias !100
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.ad, ptr %4, align 8, !tbaa !48, !alias.scope !100
  %i.ae = load ptr, ptr %0, align 8, !tbaa !46, !noalias !100 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.ac) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25, !noalias !100
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !tbaa !49, !noalias !100
  %i.af = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.af, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.f
  %i.ag = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !46, !alias.scope !100
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !49, !noalias !100
  store i64 %i.ah, ptr %i.ad, align 8, !tbaa !42, !alias.scope !100
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %bb.f
  %i.ai = phi ptr [ %i.ag, %.noexc10.i.i ], [ %i.ad, %bb.f ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aj = load i8, ptr %i.ae, align 1, !tbaa !42
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ae, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !49, !noalias !100 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !47, !alias.scope !100
  %i.am = load ptr, ptr %4, align 8, !tbaa !46, !alias.scope !100
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !100
  %i.ao = load ptr, ptr %2, align 8, !tbaa !46    ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  %i.ar = load ptr, ptr %4, align 8, !tbaa !46    ; 5 uses
  %i.as = icmp eq ptr %i.ar, %i.ad                ; 2 uses
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.as, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.as, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.at = load i64, ptr %i.al, align 8, !tbaa !47 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  switch i64 %i.at, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !42
  store i8 %i.av, ptr %i.ao, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ar, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !47 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !47
  %i.ay = load ptr, ptr %2, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !42
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ar, ptr %2, align 8, !tbaa !46
  %i.bb = load <2 x i64>, ptr %i.al, align 8, !tbaa !42
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !tbaa !42
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bc = load i64, ptr %i.ap, align 8, !tbaa !42
  store ptr %i.ar, ptr %2, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load <2 x i64>, ptr %i.al, align 8, !tbaa !42
  store <2 x i64> %i.be, ptr %i.bd, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ao, ptr %4, align 8, !tbaa !46
  store i64 %i.bc, ptr %i.ad, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ad, ptr %4, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.bf = phi ptr [ %i.ao, %bb.l ], [ %i.ad, %bb.m ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.al, align 8, !tbaa !47
  store i8 0, ptr %i.bf, align 1, !tbaa !42
  %i.bg = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ad
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bi = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.bk = add nuw i64 %i.e, 1                     ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.bl = load i64, ptr %i.g, align 8, !tbaa !47, !noalias !101 ; 3 uses
  %.not88 = icmp ult i64 %i.e, %i.bl
  br i1 %.not88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.125, i64 noundef %i.bk, i64 noundef %i.bl) #26, !noalias !101
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.bm, ptr %5, align 8, !tbaa !48, !alias.scope !101
  %i.bn = load ptr, ptr %0, align 8, !tbaa !46, !noalias !101
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bk ; 2 uses
  %i.bp = sub nuw i64 %i.bl, %i.bk                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !101
  store i64 %i.bp, ptr %i.c, align 8, !tbaa !49, !noalias !101
  %i.bq = icmp ugt i64 %i.bp, 15
  br i1 %i.bq, label %.noexc10.i.i33, label %._crit_edge.i.i.i32

.noexc10.i.i33:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.br = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.br, ptr %5, align 8, !tbaa !46, !alias.scope !101
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !49, !noalias !101
  store i64 %i.bs, ptr %i.bm, align 8, !tbaa !42, !alias.scope !101
  br label %._crit_edge.i.i.i32

._crit_edge.i.i.i32:                              ; preds = %.noexc10.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bt = phi ptr [ %i.br, %.noexc10.i.i33 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.bp, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i32
  %i.bu = load i8, ptr %i.bo, align 1, !tbaa !42
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !42
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr nonnull align 1 %i.bo, i64 %i.bp, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i32
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !49, !noalias !101 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !47, !alias.scope !101
  %i.bx = load ptr, ptr %5, align 8, !tbaa !46, !alias.scope !101
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store i8 0, ptr %i.by, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !101
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.bz, align 8, !tbaa !47
  %i.ca = load ptr, ptr %3, align 8, !tbaa !46
  store i8 0, ptr %i.ca, align 1, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !47 ; 2 uses
  %i.cd = load i64, ptr %i.bz, align 8, !tbaa !47
  %i.ce = sub i64 4611686018427387903, %i.cd
  %i.cf = icmp ult i64 %i.ce, %i.cc
  br i1 %i.cf, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.q
  %i.cg = load ptr, ptr %1, align 8, !tbaa !46
  %i.ch = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.cg, i64 noundef %i.cc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %bb.z ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !47
  %i.ck = add i64 %i.cj, -4611686018427387901
  %i.cl = icmp ult i64 %i.ck, 3
  br i1 %i.cl, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #26
          to label %.cont unwind label %bb.z

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull @.str.45, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader unwind label %bb.z ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.cn = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.46, i64 noundef 0, i64 noundef 1) #25 ; 2 uses
  %.not106 = icmp eq i64 %i.cn, -1
  br i1 %.not106, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit._crit_edge.thread, label %.lr.ph

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit._crit_edge.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.co = load i64, ptr %i.bw, align 8, !tbaa !47, !noalias !102
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i59

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.preheader
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.cr = phi i64 [ %i.cn, %.lr.ph ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ] ; 3 uses
  %.023107 = phi i64 [ 0, %.lr.ph ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.cs = load i64, ptr %i.bw, align 8, !tbaa !47, !noalias !103 ; 3 uses
  %i.ct = icmp ugt i64 %.023107, %i.cs
  br i1 %i.ct, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38

bb.s:                                             ; preds = %bb.r
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.125, i64 noundef %.023107, i64 noundef %i.cs) #26
          to label %.noexc42 unwind label %.loopexit.split-lp

.noexc42:                                         ; preds = %bb.s
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38: ; preds = %bb.r
  %reass.sub = sub i64 %i.cr, %.023107
  %i.cu = add i64 %reass.sub, 1
  store ptr %i.cp, ptr %6, align 8, !tbaa !48, !alias.scope !103
  %i.cv = load ptr, ptr %5, align 8, !tbaa !46, !noalias !103
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.023107 ; 2 uses
  %i.cx = sub nuw i64 %i.cs, %.023107
  %spec.select.i.i.i39 = call noundef i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cx) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !103
  store i64 %spec.select.i.i.i39, ptr %i.b, align 8, !tbaa !49, !noalias !103
  %i.cy = icmp ugt i64 %spec.select.i.i.i39, 15
  br i1 %i.cy, label %.noexc10.i.i41, label %._crit_edge.i.i.i40

.noexc10.i.i41:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38
  %i.cz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc43 unwind label %.loopexit ; 2 uses

.noexc43:                                         ; preds = %.noexc10.i.i41
  store ptr %i.cz, ptr %6, align 8, !tbaa !46, !alias.scope !103
  %i.da = load i64, ptr %i.b, align 8, !tbaa !49, !noalias !103
  store i64 %i.da, ptr %i.cp, align 8, !tbaa !42, !alias.scope !103
  br label %._crit_edge.i.i.i40

._crit_edge.i.i.i40:                              ; preds = %.noexc43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38
  %i.db = phi ptr [ %i.cz, %.noexc43 ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i38 ] ; 2 uses
  switch i64 %spec.select.i.i.i39, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %bb.v
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i40
  %i.dc = load i8, ptr %i.cw, align 1, !tbaa !42
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !42
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.cw, i64 %spec.select.i.i.i39, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i40
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !49, !noalias !103 ; 2 uses
  store i64 %i.dd, ptr %i.cq, align 8, !tbaa !47, !alias.scope !103
  %i.de = load ptr, ptr %6, align 8, !tbaa !46, !alias.scope !103
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 0, ptr %i.df, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !103
  %i.dg = load i64, ptr %i.cq, align 8, !tbaa !47 ; 2 uses
  %i.dh = load i64, ptr %i.bz, align 8, !tbaa !47
  %i.di = sub i64 4611686018427387903, %i.dh
  %i.dj = icmp ult i64 %i.di, %i.dg
  br i1 %i.dj, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i45

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #26
          to label %.noexc46 unwind label %.loopexit.split-lp90

.noexc46:                                         ; preds = %bb.w
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i45: ; preds = %bb.v
  %i.dk = load ptr, ptr %6, align 8, !tbaa !46
  %i.dl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.dk, i64 noundef %i.dg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit48 unwind label %.loopexit89 ; 6 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i45
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !47 ; 4 uses
  %i.do = add i64 %i.dn, 1                        ; 3 uses
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !46 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit48
  %i.ds = icmp ult i64 %i.dn, 16
  call void @llvm.assume(i1 %i.ds)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit48
  %i.dt = load i64, ptr %i.dq, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51
  %i.du = phi i64 [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i51 ]
  %i.dv = icmp ugt i64 %i.do, %i.du
  br i1 %i.dv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i64 noundef %i.dn, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc52 unwind label %.loopexit89

.noexc52:                                         ; preds = %bb.x
  %.pre.i50 = load ptr, ptr %i.dl, align 8, !tbaa !46
  br label %bb.y

bb.y:                                             ; preds = %.noexc52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.dw = phi ptr [ %.pre.i50, %.noexc52 ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dn
  store i8 39, ptr %i.dx, align 1, !tbaa !42
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !47
  %i.dy = load ptr, ptr %i.dl, align 8, !tbaa !46
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.do
  store i8 0, ptr %i.dz, align 1, !tbaa !42
  %i.ea = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.cp
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.y
  %i.ec = load i64, ptr %i.cp, align 8, !tbaa !42
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ee = add nuw i64 %i.cr, 1                    ; 4 uses
  %i.ef = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.46, i64 noundef %i.ee, i64 noundef 1) #25 ; 2 uses
  %.not = icmp eq i64 %i.ef, -1
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit._crit_edge, label %bb.r, !llvm.loop !98

bb.z:                                             ; preds = %.invoke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit:                                        ; preds = %.noexc10.i.i41
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

.loopexit89:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i45, %bb.x
  %lpad.loopexit91 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp90:                             ; preds = %bb.w
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp90, %.loopexit89
  %lpad.phi93 = phi { ptr, i32 } [ %lpad.loopexit91, %.loopexit89 ], [ %lpad.loopexit.split-lp92, %.loopexit.split-lp90 ] ; 2 uses
  %i.eh = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.cp
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.aa
  %i.ej = load i64, ptr %i.cp, align 8, !tbaa !42
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.aa, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  %.pn28 = phi { ptr, i32 } [ %lpad.phi93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.phi93, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.el = load i64, ptr %i.bw, align 8, !tbaa !47, !noalias !104 ; 3 uses
  %.not163 = icmp ult i64 %i.cr, %i.el
  br i1 %.not163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i59, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit._crit_edge
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.125, i64 noundef %i.ee, i64 noundef %i.el) #26
          to label %.noexc63 unwind label %bb.ai

.noexc63:                                         ; preds = %bb.ab
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit._crit_edge.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit._crit_edge
  %i.em = phi i64 [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit._crit_edge.thread ], [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit._crit_edge ]
  %.023.lcssa153 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit._crit_edge.thread ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit._crit_edge ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.en, ptr %7, align 8, !tbaa !48, !alias.scope !104
  %i.eo = load ptr, ptr %5, align 8, !tbaa !46, !noalias !104
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.023.lcssa153 ; 2 uses
  %i.eq = sub nuw i64 %i.em, %.023.lcssa153       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !104
  store i64 %i.eq, ptr %i.a, align 8, !tbaa !49, !noalias !104
  %i.er = icmp ugt i64 %i.eq, 15
  br i1 %i.er, label %.noexc10.i.i62, label %._crit_edge.i.i.i61

.noexc10.i.i62:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i59
  %i.es = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc64 unwind label %bb.ai  ; 2 uses

.noexc64:                                         ; preds = %.noexc10.i.i62
  store ptr %i.es, ptr %7, align 8, !tbaa !46, !alias.scope !104
  %i.et = load i64, ptr %i.a, align 8, !tbaa !49, !noalias !104
  store i64 %i.et, ptr %i.en, align 8, !tbaa !42, !alias.scope !104
  br label %._crit_edge.i.i.i61

._crit_edge.i.i.i61:                              ; preds = %.noexc64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i59
  %i.eu = phi ptr [ %i.es, %.noexc64 ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i59 ] ; 2 uses
  switch i64 %i.eq, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i61
  %i.ev = load i8, ptr %i.ep, align 1, !tbaa !42
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !42
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr align 1 %i.ep, i64 %i.eq, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i61
  %i.ew = load i64, ptr %i.a, align 8, !tbaa !49, !noalias !104 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !47, !alias.scope !104
  %i.ey = load ptr, ptr %7, align 8, !tbaa !46, !alias.scope !104
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ew
  store i8 0, ptr %i.ez, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !104
  %i.fa = load i64, ptr %i.ex, align 8, !tbaa !47 ; 2 uses
  %i.fb = load i64, ptr %i.bz, align 8, !tbaa !47
  %i.fc = sub i64 4611686018427387903, %i.fb
  %i.fd = icmp ult i64 %i.fc, %i.fa
  br i1 %i.fd, label %bb.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i66

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #26
          to label %.noexc67 unwind label %bb.aj

.noexc67:                                         ; preds = %bb.af
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i66: ; preds = %bb.ae
  %i.fe = load ptr, ptr %7, align 8, !tbaa !46
  %i.ff = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.fe, i64 noundef %i.fa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit69 unwind label %bb.aj ; 6 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i66
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !47 ; 4 uses
  %i.fi = add i64 %i.fh, 1                        ; 3 uses
  %i.fj = load ptr, ptr %i.ff, align 8, !tbaa !46 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit69
  %i.fm = icmp ult i64 %i.fh, 16
  call void @llvm.assume(i1 %i.fm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit69
  %i.fn = load i64, ptr %i.fk, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i71: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73
  %i.fo = phi i64 [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73 ]
  %i.fp = icmp ugt i64 %i.fi, %i.fo
  br i1 %i.fp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i71
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, i64 noundef %i.fh, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc74 unwind label %bb.aj

.noexc74:                                         ; preds = %bb.ag
  %.pre.i72 = load ptr, ptr %i.ff, align 8, !tbaa !46
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i71
  %i.fq = phi ptr [ %.pre.i72, %.noexc74 ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i71 ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fh
  store i8 39, ptr %i.fr, align 1, !tbaa !42
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !47
  %i.fs = load ptr, ptr %i.ff, align 8, !tbaa !46
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fi
  store i8 0, ptr %i.ft, align 1, !tbaa !42
  %i.fu = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.en
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.ah
  %i.fw = load i64, ptr %i.en, align 8, !tbaa !42
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.fy = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.bm
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.ga = load i64, ptr %i.bm, align 8, !tbaa !42
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.al

bb.ai:                                            ; preds = %.noexc10.i.i62, %bb.ab
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.aj:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i66, %bb.af
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ge = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.en
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.aj
  %i.gg = load i64, ptr %i.en, align 8, !tbaa !42
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.gc, %bb.ai ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.gd, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.z
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %i.eg, %bb.z ]
  %i.gi = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.bm
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.ak
  %i.gk = load i64, ptr %i.bm, align 8, !tbaa !42
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn28.pn

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret i1 %i.f
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::map", align 8          ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::basic_ofstream", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %8 = alloca %"class.std::basic_ifstream", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::basic_ofstream", align 8 ; 18 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %14 = alloca %struct.JsonnetConfig, align 8     ; 22 uses
  %15 = alloca %"class.std::__cxx11::list", align 8 ; 15 uses
  %16 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 16 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = invoke ptr @jsonnet_make()
          to label %bb.b unwind label %bb.m       ; 13 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %14, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 5 uses
  store i64 0, ptr %i.h, align 8, !tbaa !47
  store i8 0, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 57 ; 3 uses
  store i8 0, ptr %i.j, align 1, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 58 ; 3 uses
  store i8 0, ptr %i.k, align 2, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 2 uses
  store i64 0, ptr %i.n, align 8, !tbaa !47
  store i8 0, ptr %i.m, align 8, !tbaa !42
  %i.o = call ptr @getenv(ptr noundef nonnull @.str.47) #25 ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %15, ptr %i.p, align 8, !tbaa !126
  store ptr %15, ptr %15, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store i64 0, ptr %i.q, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.r, ptr %17, align 8, !tbaa !48
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.s, ptr %i.c, align 8, !tbaa !49
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc70 unwind label %bb.n   ; 2 uses

.noexc70:                                         ; preds = %.noexc.i
  store ptr %i.u, ptr %17, align 8, !tbaa !46
  %i.v = load i64, ptr %i.c, align 8, !tbaa !49
  store i64 %i.v, ptr %i.r, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc70, %bb.c
  %i.w = phi ptr [ %i.u, %.noexc70 ], [ %i.r, %bb.c ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %i.o, align 1, !tbaa !42
  store i8 %i.x, ptr %i.w, align 1, !tbaa !42
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.o, i64 %i.s, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.y = load i64, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !47
  %i.aa = load ptr, ptr %17, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 8)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %17, align 8, !tbaa !46   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.r
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !42
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.ag, ptr %18, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !47
  store i8 0, ptr %i.ag, align 8, !tbaa !42
  br label %bb.h

end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag:.peel.begin
  %.0.i.i.i.i18.peel = phi i32 [ %i.co, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel ], [ %.sroa.11.0.lcssa, %.preheader ], [ %i.cl, %.noexc.peel ] ; 3 uses
  %.not.i.i2.i.i19.peel = icmp ne ptr %.sroa.042.2.lcssa, null
  %or.cond.i.i3.i.i20.peel = select i1 %.not.i.i2.i.i19.peel, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i20.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel
  %i.cp = icmp eq i32 %.0.i.i.i.i18.peel, -1
  %i.cq = xor i1 %i.b, %i.cp
  br i1 %i.cq, label %bb.k, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.j:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.042.2.lcssa, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !196
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.042.2.lcssa, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !197
  %i.cv = icmp ult ptr %i.cs, %i.cu
  br i1 %i.cv, label %.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel, !prof !198

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel: ; preds = %bb.j
  %i.cw = load ptr, ptr %.sroa.042.2.lcssa, align 8, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef i32 %i.cy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.2.lcssa)
          to label %.noexc26.peel unwind label %.loopexit.split-lp, !inline_history !190

.noexc26.peel:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel
  %i.da = icmp eq i32 %i.cz, -1
  br i1 %i.da, label %.split.peel, label %.thr_comm.peel

.split.peel:                                      ; preds = %.noexc26.peel
  %.not.peel = icmp eq i32 %.0.i.i.i.i18.peel, -1
  br i1 %.not.peel, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.k

.thr_comm.peel:                                   ; preds = %.noexc26.peel, %bb.j
  %i.db = icmp eq i32 %.0.i.i.i.i18.peel, -1
  br i1 %i.db, label %bb.k, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.k:                                             ; preds = %.thr_comm.peel, %.split.peel, %bb.i
  %.sroa.042.354.peel = phi ptr [ %.sroa.042.2.lcssa, %.thr_comm.peel ], [ %.sroa.042.2.lcssa, %bb.i ], [ null, %.split.peel ]
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !49
  %i.dd = icmp eq i64 %.013.lcssa, %i.dc
  br i1 %i.dd, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %0, align 8, !tbaa !46
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.de = add nuw nsw i64 %.013.lcssa, 1
  store i64 %i.de, ptr %i.a, align 8, !tbaa !49
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.013.lcssa)
          to label %bb.m unwind label %.loopexit.split-lp72 ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.dg = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  switch i64 %.013.lcssa, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  ]

bb.n:                                             ; preds = %bb.m
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !42
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.dg, i64 %.013.lcssa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel: ; preds = %bb.o, %bb.n, %bb.m
  %i.di = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.c
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !42
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel
  store ptr %i.df, ptr %0, align 8, !tbaa !46
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.dm, ptr %i.c, align 8, !tbaa !42
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel
  %i.dn = phi ptr [ %.pre, %._crit_edge ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel ]
  %.not.i.i28.peel = icmp ne ptr %.sroa.045.4.peel, null
  %or.cond.i.i29.peel = select i1 %.not.i.i28.peel, i1 %i.cc, i1 false
  br i1 %or.cond.i.i29.peel, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !196 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !197
  %i.ds = icmp ult ptr %i.dp, %i.dr
  br i1 %i.ds, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel, !prof !198

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel: ; preds = %bb.q
  %i.dt = load ptr, ptr %.sroa.045.4.peel, align 8, !tbaa !16
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4.peel)
          to label %.noexc33.peel unwind label %.loopexit.split-lp77, !inline_history !191 ; 2 uses

.noexc33.peel:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel
  %i.dx = icmp ne i32 %i.dw, -1
  call void @llvm.assume(i1 %i.dx)
  br label %bb.r

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel: ; preds = %bb.q
  %i.dy = load i8, ptr %i.dp, align 1, !tbaa !42
  %i.dz = zext i8 %i.dy to i32
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel, %.noexc33.peel, %bb.p
  %.0.i.i30.peel = phi i32 [ %.sroa.11.0.lcssa, %bb.p ], [ %i.dw, %.noexc33.peel ], [ %i.dz, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel ]
  %i.ea = trunc i32 %.0.i.i30.peel to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.013.lcssa
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !42
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 16 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !196 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !197
  %i.eg = icmp ult ptr %i.ed, %i.ef
  br i1 %i.eg, label %bb.t, label %bb.s, !prof !198

bb.s:                                             ; preds = %bb.r
  %i.eh = load ptr, ptr %.sroa.045.4.peel, align 8, !tbaa !16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = invoke noundef i32 %i.ej(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4.peel)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader unwind label %.loopexit.split-lp, !inline_history !192 ; 0 uses

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader: ; preds = %bb.t, %bb.s
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel

bb.t:                                             ; preds = %bb.r
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store ptr %i.el, ptr %i.ec, align 8, !tbaa !196
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader

bb.u:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.not.i.i.not = icmp eq ptr %.sroa.045.2, null
  br i1 %.not.i.i.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !196 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !197
  %i.eq = icmp ult ptr %i.en, %i.ep
  br i1 %i.eq, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !198

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.v
  %i.er = load i8, ptr %i.en, align 1, !tbaa !42
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.v
  %i.es = load ptr, ptr %.sroa.045.2, align 8, !tbaa !16
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = tail call noundef i32 %i.eu(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2), !inline_history !188 ; 2 uses
  %i.ew = icmp ne i32 %i.ev, -1
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = trunc i32 %i.ev to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, %bb.u, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
  %.0.i.i = phi i8 [ -1, %bb.u ], [ %i.ex, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ], [ %i.er, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ]
  %i.ey = add nuw nsw i64 %.013, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 %.013
  store i8 %.0.i.i, ptr %i.ez, align 1, !tbaa !42
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 16 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !196 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !197
  %i.fe = icmp ult ptr %i.fb, %i.fd
  br i1 %i.fe, label %bb.w, label %bb.x, !prof !198

bb.w:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store ptr %i.ff, ptr %i.fa, align 8, !tbaa !196
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge: ; preds = %bb.w, %bb.x
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel, !llvm.loop !193

bb.x:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.fg = load ptr, ptr %.sroa.045.2, align 8, !tbaa !16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = tail call noundef i32 %i.fi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2), !inline_history !189 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader
  %.sroa.045.1 = phi ptr [ %.sroa.045.4.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.sroa.045.4, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 6 uses
  %.sroa.042.1 = phi ptr [ %.sroa.042.354.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.sroa.042.354, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 7 uses
  %.1.in = phi i64 [ %.013.lcssa, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 2 uses
  %.1 = add i64 %.1.in, 1                         ; 9 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.045.1, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !196
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.045.1, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !197
  %i.fo = icmp ult ptr %i.fl, %i.fn
  br i1 %i.fo, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24, !prof !198

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel
  %i.fp = load ptr, ptr %.sroa.045.1, align 8, !tbaa !16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = invoke noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.1)
          to label %.noexc unwind label %.loopexit, !inline_history !190 ; 2 uses

.noexc:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24
  %i.ft = icmp eq i32 %i.fs, -1
  %spec.select58 = select i1 %i.ft, ptr null, ptr %.sroa.045.1
  %i.fu = icmp eq i32 %i.fs, -1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel, %.noexc
  %.sroa.045.4 = phi ptr [ %spec.select58, %.noexc ], [ %.sroa.045.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel ] ; 10 uses
  %.0.i.i.i.i18 = phi i1 [ %i.fu, %.noexc ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel ] ; 3 uses
  %.not.i.i2.i.i19 = icmp ne ptr %.sroa.042.1, null
  %or.cond.i.i3.i.i20 = select i1 %.not.i.i2.i.i19, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i20, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.042.1, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !196
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.042.1, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !197
  %i.fz = icmp ult ptr %i.fw, %i.fy
  br i1 %i.fz, label %.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22, !prof !198

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22: ; preds = %bb.y
  %i.ga = load ptr, ptr %.sroa.042.1, align 8, !tbaa !16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = invoke noundef i32 %i.gc(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.1)
          to label %.noexc26 unwind label %.loopexit, !inline_history !190

.noexc26:                                         ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22
  %i.ge = icmp eq i32 %i.gd, -1
  br i1 %i.ge, label %.split, label %.thr_comm

.split:                                           ; preds = %.noexc26
  br i1 %.0.i.i.i.i18, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.aa

.thr_comm:                                        ; preds = %bb.y, %.noexc26
  br i1 %.0.i.i.i.i18, label %bb.aa, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.z:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17
  %i.gf = xor i1 %i.b, %.0.i.i.i.i18
  br i1 %i.gf, label %bb.aa, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.aa:                                            ; preds = %.split, %.thr_comm, %bb.z
  %.sroa.042.354 = phi ptr [ %.sroa.042.1, %.thr_comm ], [ %.sroa.042.1, %bb.z ], [ null, %.split ]
  %i.gg = load i64, ptr %i.a, align 8, !tbaa !49
  %i.gh = icmp eq i64 %.1, %i.gg
  br i1 %i.gh, label %bb.ab, label %._crit_edge81

._crit_edge81:                                    ; preds = %bb.aa
  %.pre82 = load ptr, ptr %0, align 8, !tbaa !46
  br label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.gi = add i64 %.1.in, 2
  store i64 %i.gi, ptr %i.a, align 8, !tbaa !49
  %i.gj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.1)
          to label %bb.ac unwind label %.loopexit71 ; 4 uses

bb.ac:                                            ; preds = %bb.ab
  %i.gk = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  switch i64 %.1, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !42
  store i8 %i.gl, ptr %i.gj, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gj, ptr align 1 %i.gk, i64 %.1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.gm = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.c
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.go = load i64, ptr %i.c, align 8, !tbaa !42
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gj, ptr %0, align 8, !tbaa !46
  %i.gq = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.gq, ptr %i.c, align 8, !tbaa !42
  br label %bb.af

.loopexit:                                        ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22, %bb.aj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit71:                                      ; preds = %bb.ab
  %lpad.loopexit73 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp72:                             ; preds = %bb.l
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.af:                                            ; preds = %._crit_edge81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  %i.gr = phi ptr [ %.pre82, %._crit_edge81 ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit ]
  %.not.i.i28.not = icmp eq ptr %.sroa.045.4, null
  br i1 %.not.i.i28.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !196 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !197
  %i.gw = icmp ult ptr %i.gt, %i.gv
  br i1 %i.gw, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31, !prof !198

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32: ; preds = %bb.ag
  %i.gx = load i8, ptr %i.gt, align 1, !tbaa !42
  br label %bb.ah

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31: ; preds = %bb.ag
  %i.gy = load ptr, ptr %.sroa.045.4, align 8, !tbaa !16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 72
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = invoke noundef i32 %i.ha(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4)
          to label %.noexc33 unwind label %.loopexit76, !inline_history !191 ; 2 uses

.noexc33:                                         ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31
  %i.hc = icmp ne i32 %i.hb, -1
  call void @llvm.assume(i1 %i.hc)
  %i.hd = trunc i32 %i.hb to i8
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc33, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32, %bb.af
  %.0.i.i30 = phi i8 [ -1, %bb.af ], [ %i.hd, %.noexc33 ], [ %i.gx, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32 ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.1
  store i8 %.0.i.i30, ptr %i.he, align 1, !tbaa !42
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 16 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !196 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !197
  %i.hj = icmp ult ptr %i.hg, %i.hi
  br i1 %i.hj, label %bb.ai, label %bb.aj, !prof !198

bb.ai:                                            ; preds = %bb.ah
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  store ptr %i.hk, ptr %i.hf, align 8, !tbaa !196
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge

bb.aj:                                            ; preds = %bb.ah
  %i.hl = load ptr, ptr %.sroa.045.4, align 8, !tbaa !16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 80
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = invoke noundef i32 %i.hn(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge unwind label %.loopexit, !inline_history !192 ; 0 uses

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge: ; preds = %bb.aj, %bb.ai
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel, !llvm.loop !194

.loopexit76:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31
  %lpad.loopexit78 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp77:                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit: ; preds = %bb.z, %.thr_comm, %.split, %.thr_comm.peel, %.split.peel, %bb.i
  %.1.lcssa63 = phi i64 [ %.013.lcssa, %bb.i ], [ %.013.lcssa, %.split.peel ], [ %.013.lcssa, %.thr_comm.peel ], [ %.1, %.split ], [ %.1, %.thr_comm ], [ %.1, %bb.z ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.lcssa63, ptr %i.hp, align 8, !tbaa !47
  %i.hq = load ptr, ptr %0, align 8, !tbaa !46
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.1.lcssa63
  store i8 0, ptr %i.hr, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

bb.ak:                                            ; preds = %.loopexit76, %.loopexit.split-lp77, %.loopexit71, %.loopexit.split-lp72, %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp74, %.loopexit.split-lp72 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit73, %.loopexit71 ], [ %lpad.loopexit78, %.loopexit76 ], [ %lpad.loopexit.split-lp79, %.loopexit.split-lp77 ]
  %i.hs = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.c
  br i1 %i.ht, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ak
  %i.hu = load i64, ptr %i.c, align 8, !tbaa !42
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #27
  br label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !42
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !42
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !200

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRPKcEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !76     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !48
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.129) #26
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.i, ptr %i.a, align 8, !tbaa !49
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !46
  %i.l = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.l, ptr %i.g, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcEEEvPT_DpOT0_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !42
  store i8 %i.n, ptr %i.m, align 1, !tbaa !42
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcEEEvPT_DpOT0_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcEEEvPT_DpOT0_.exit

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcEEEvPT_DpOT0_.exit: ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !47
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.b, align 8, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRPKcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcEEEvPT_DpOT0_.exit
  %i.u = phi ptr [ %.pre, %bb.f ], [ %i.t, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPKcEEEvPT_DpOT0_.exit ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  ret ptr %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRPKcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
end_hunk_1
