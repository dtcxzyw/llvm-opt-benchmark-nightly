Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3DNA?download=true
inline.NumInlined: 405
inline.NumDeleted: 180
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b3HashString = type <{ %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.bParse::bNameInfo" = type { ptr, i8, i32, i32 }
%class.b3HashInt = type { i32 }

$_ZN9b3HashMapI9b3HashIntiED2Ev = comdat any

$_ZN9b3HashMapI12b3HashStringiED2Ev = comdat any

$_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE9push_backERKS1_ = comdat any

$_ZN9b3HashMapI9b3HashIntiE6insertERKS0_RKi = comdat any

$_ZN9b3HashMapI12b3HashStringiE6insertERKS0_RKi = comdat any

$__clang_call_terminate = comdat any

$_ZN9b3HashMapI9b3HashIntiE10growTablesERKS0_ = comdat any

$_ZN9b3HashMapI12b3HashStringiE10growTablesERKS0_ = comdat any

$_ZN20b3AlignedObjectArrayI12b3HashStringE7reserveEi = comdat any

@.str = private unnamed_addr constant [5 x i8] c"SDNA\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ListBase\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%3d: %s \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" (%d fields) \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c" /* %d bytes */\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c";}\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"\0AtotalBytes=%d\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"b3Error[%s,%d]:\0A\00", align 1
@.str.14 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3Common/b3AlignedObjectArray.h\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"b3AlignedObjectArray reserve out-of-memory\0A\00", align 1
@str = private unnamed_addr constant [19 x i8] c"array parse error.\00", align 1
@str.1 = private unnamed_addr constant [20 x i8] c"array2 parse error.\00", align 1

@_ZN6bParse4bDNAC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6bParse4bDNAC2Ev
@_ZN6bParse4bDNAD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6bParse4bDNAD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6bParse4bDNAC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(420) initializes((4, 12), (16, 25), (36, 44), (48, 57), (68, 76), (80, 89), (100, 108), (112, 121), (132, 140), (144, 153), (164, 172), (176, 185), (196, 204), (208, 217), (228, 236), (240, 249), (260, 268), (272, 281), (292, 300), (304, 313), (324, 332), (336, 345), (356, 364), (368, 377), (388, 396), (400, 409), (416, 420)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.g, align 4, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.j, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.k, align 4, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.l, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.m, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.o, align 4, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.p, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %i.q, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.r, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 0, ptr %i.s, align 4, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.t, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 1, ptr %i.u, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %i.v, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %i.w, align 4, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.x, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 1, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.z, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %i.aa, align 4, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.ab, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 1, ptr %i.ac, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.ad, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.ae, align 4, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 0, ptr %i.af, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 1, ptr %i.ag, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr null, ptr %i.ah, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 0, ptr %i.ai, align 4, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 0, ptr %i.aj, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 1, ptr %i.ak, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.al, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 0, ptr %i.am, align 4, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.an, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 1, ptr %i.ao, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr null, ptr %i.ap, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 0, ptr %i.aq, align 4, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.ar, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 1, ptr %i.as, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %i.at, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 0, ptr %i.au, align 4, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 0, ptr %i.av, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i8 1, ptr %i.aw, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr null, ptr %i.ax, align 8, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i32 0, ptr %i.ay, align 4, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i32 0, ptr %i.az, align 8, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 0, ptr %i.ba, align 8, !tbaa !68
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9b3HashMapI9b3HashIntiED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i8, ptr %i.c, align 8, !range !69
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20b3AlignedObjectArrayI9b3HashIntED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20b3AlignedObjectArrayI9b3HashIntED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #23
  unreachable

_ZN20b3AlignedObjectArrayI9b3HashIntED2Ev.exit:   ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %.not.i.i.i1 = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i8, ptr %i.j, align 8, !range !69
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i2 = select i1 %.not.i.i.i1, i1 %i.l, i1 false
  br i1 %or.cond.i.i2, label %bb.d, label %_ZN20b3AlignedObjectArrayIiED2Ev.exit

bb.d:                                             ; preds = %_ZN20b3AlignedObjectArrayI9b3HashIntED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20b3AlignedObjectArrayIiED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #23
  unreachable

_ZN20b3AlignedObjectArrayIiED2Ev.exit:            ; preds = %_ZN20b3AlignedObjectArrayI9b3HashIntED2Ev.exit, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %.not.i.i.i3 = icmp ne ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i8, ptr %i.q, align 8, !range !69
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i4 = select i1 %.not.i.i.i3, i1 %i.s, i1 false
  br i1 %or.cond.i.i4, label %bb.f, label %_ZN20b3AlignedObjectArrayIiED2Ev.exit5

bb.f:                                             ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %_ZN20b3AlignedObjectArrayIiED2Ev.exit5 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

_ZN20b3AlignedObjectArrayIiED2Ev.exit5:           ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19   ; 2 uses
  %.not.i.i.i6 = icmp ne ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i8, ptr %i.x, align 8, !range !69
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond.i.i7 = select i1 %.not.i.i.i6, i1 %i.z, i1 false
  br i1 %or.cond.i.i7, label %bb.h, label %_ZN20b3AlignedObjectArrayIiED2Ev.exit8

bb.h:                                             ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit5
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.w)
          to label %_ZN20b3AlignedObjectArrayIiED2Ev.exit8 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #23
  unreachable

_ZN20b3AlignedObjectArrayIiED2Ev.exit8:           ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit5, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6bParse4bDNAD2Ev(ptr noundef nonnull align 8 dead_on_return(420) dereferenceable(420) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZN9b3HashMapI12b3HashStringiED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN9b3HashMapI9b3HashIntiED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.b) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load i8, ptr %i.e, align 8, !range !69
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.g, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20b3AlignedObjectArrayIsED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.d)
          to label %_ZN20b3AlignedObjectArrayIsED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #23
  unreachable

_ZN20b3AlignedObjectArrayIsED2Ev.exit:            ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i1 = icmp ne ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load i8, ptr %i.l, align 8, !range !69
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond.i.i2 = select i1 %.not.i.i.i1, i1 %i.n, i1 false
  br i1 %or.cond.i.i2, label %bb.d, label %_ZN20b3AlignedObjectArrayIPsED2Ev.exit

bb.d:                                             ; preds = %_ZN20b3AlignedObjectArrayIsED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.k)
          to label %_ZN20b3AlignedObjectArrayIPsED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #23
  unreachable

_ZN20b3AlignedObjectArrayIPsED2Ev.exit:           ; preds = %_ZN20b3AlignedObjectArrayIsED2Ev.exit, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i3 = icmp ne ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load i8, ptr %i.s, align 8, !range !69
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond.i.i4 = select i1 %.not.i.i.i3, i1 %i.u, i1 false
  br i1 %or.cond.i.i4, label %bb.f, label %_ZN20b3AlignedObjectArrayIPcED2Ev.exit

bb.f:                                             ; preds = %_ZN20b3AlignedObjectArrayIPsED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.r)
          to label %_ZN20b3AlignedObjectArrayIPcED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #23
  unreachable

_ZN20b3AlignedObjectArrayIPcED2Ev.exit:           ; preds = %_ZN20b3AlignedObjectArrayIPsED2Ev.exit, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26   ; 2 uses
  %.not.i.i.i5 = icmp ne ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i8, ptr %i.z, align 8, !range !69
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond.i.i6 = select i1 %.not.i.i.i5, i1 %i.ab, i1 false
  br i1 %or.cond.i.i6, label %bb.h, label %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEED2Ev.exit

bb.h:                                             ; preds = %_ZN20b3AlignedObjectArrayIPcED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.y)
          to label %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #23
  unreachable

_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEED2Ev.exit: ; preds = %_ZN20b3AlignedObjectArrayIPcED2Ev.exit, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i7 = icmp ne ptr %i.af, null
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !range !69
  %i.ai = trunc nuw i8 %i.ah to i1
  %or.cond.i.i8 = select i1 %.not.i.i.i7, i1 %i.ai, i1 false
  br i1 %or.cond.i.i8, label %bb.j, label %_ZN20b3AlignedObjectArrayIiED2Ev.exit

bb.j:                                             ; preds = %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.af)
          to label %_ZN20b3AlignedObjectArrayIiED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #23
  unreachable

_ZN20b3AlignedObjectArrayIiED2Ev.exit:            ; preds = %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEED2Ev.exit, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9b3HashMapI12b3HashStringiED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.b = load i32, ptr %i.a, align 4, !tbaa !63   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i.i, label %_ZN20b3AlignedObjectArrayI12b3HashStringE7destroyEii.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %zext.i.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN12b3HashStringD2Ev.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN12b3HashStringD2Ev.exit.i.i.i ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %indvars.iv.i.i.i ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN12b3HashStringD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !75
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZN12b3HashStringD2Ev.exit.i.i.i

_ZN12b3HashStringD2Ev.exit.i.i.i:                 ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.l = icmp eq i64 %indvars.iv.next.i.i.i, %zext.i.i
  br i1 %i.l, label %_ZN20b3AlignedObjectArrayI12b3HashStringE7destroyEii.exit.i.i, label %bb.b, !llvm.loop !0

_ZN20b3AlignedObjectArrayI12b3HashStringE7destroyEii.exit.i.i: ; preds = %_ZN12b3HashStringD2Ev.exit.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN20b3AlignedObjectArrayI12b3HashStringED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN20b3AlignedObjectArrayI12b3HashStringE7destroyEii.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load i8, ptr %i.o, align 8, !tbaa !61, !range !69, !noundef !77
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %_ZN20b3AlignedObjectArrayI12b3HashStringED2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.n)
          to label %_ZN20b3AlignedObjectArrayI12b3HashStringED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #23
  unreachable

_ZN20b3AlignedObjectArrayI12b3HashStringED2Ev.exit: ; preds = %_ZN20b3AlignedObjectArrayI12b3HashStringE7destroyEii.exit.i.i, %bb.c, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 2 uses
  %.not.i.i.i1 = icmp ne ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load i8, ptr %i.v, align 8, !range !69
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond.i.i = select i1 %.not.i.i.i1, i1 %i.x, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %_ZN20b3AlignedObjectArrayIiED2Ev.exit

bb.f:                                             ; preds = %_ZN20b3AlignedObjectArrayI12b3HashStringED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.u)
          to label %_ZN20b3AlignedObjectArrayIiED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #23
  unreachable

_ZN20b3AlignedObjectArrayIiED2Ev.exit:            ; preds = %_ZN20b3AlignedObjectArrayI12b3HashStringED2Ev.exit, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i2 = icmp ne ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load i8, ptr %i.ac, align 8, !range !69
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i.i3 = select i1 %.not.i.i.i2, i1 %i.ae, i1 false
  br i1 %or.cond.i.i3, label %bb.h, label %_ZN20b3AlignedObjectArrayIiED2Ev.exit4

bb.h:                                             ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ab)
          to label %_ZN20b3AlignedObjectArrayIiED2Ev.exit4 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #23
  unreachable

_ZN20b3AlignedObjectArrayIiED2Ev.exit4:           ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i5 = icmp ne ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i8, ptr %i.aj, align 8, !range !69
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond.i.i6 = select i1 %.not.i.i.i5, i1 %i.al, i1 false
  br i1 %or.cond.i.i6, label %bb.j, label %_ZN20b3AlignedObjectArrayIiED2Ev.exit7

bb.j:                                             ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit4
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ai)
          to label %_ZN20b3AlignedObjectArrayIiED2Ev.exit7 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #23
  unreachable

_ZN20b3AlignedObjectArrayIiED2Ev.exit7:           ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit4, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN6bParse4bDNA8lessThanEPS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !27
  %i.e = icmp slt i32 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN6bParse4bDNA7getNameEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN6bParse4bDNA7getTypeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN6bParse4bDNA9getStructEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext i16 @_ZN6bParse4bDNA9getLengthEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !83
  ret i16 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN6bParse4bDNA14getReverseTypeEs(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0, i16 noundef signext %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = sext i16 %1 to i32                       ; 3 uses
  %i.b = shl nsw i32 %i.a, 15
  %i.c = xor i32 %i.b, -1
  %i.d = add nsw i32 %i.c, %i.a                   ; 2 uses
  %i.e = ashr i32 %i.d, 10
  %i.f = xor i32 %i.e, %i.d
  %i.g = mul i32 %i.f, 9                          ; 2 uses
  %i.h = ashr i32 %i.g, 6
  %i.i = xor i32 %i.h, %i.g                       ; 2 uses
  %i.j = shl i32 %i.i, 11
  %i.k = xor i32 %i.j, -1
  %i.l = add nsw i32 %i.i, %i.k                   ; 2 uses
  %i.m = ashr i32 %i.l, 16
  %i.n = xor i32 %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.p = load i32, ptr %i.o, align 8, !tbaa !21
  %i.q = add nsw i32 %i.p, -1
  %i.r = and i32 %i.q, %i.n                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20
  %.not.i.i = icmp ult i32 %i.r, %i.t
  br i1 %.not.i.i, label %bb.b, label %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.w = sext i32 %i.r to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %.012.i.i = load i32, ptr %i.x, align 4, !tbaa !84 ; 2 uses
  %.not1113.i.i = icmp eq i32 %.012.i.i, -1
  br i1 %.not1113.i.i, label %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ab = load ptr, ptr %i.aa, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.014.i.i = phi i32 [ %.012.i.i, %.lr.ph.i.i ], [ %.0.i.i, %bb.d ]
  %i.ac = sext i32 %.014.i.i to i64               ; 3 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !86
  %i.af = icmp eq i32 %i.ae, %i.a
  br i1 %i.af, label %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ac
  %.0.i.i = load i32, ptr %i.ag, align 4, !tbaa !84 ; 2 uses
  %.not11.i.i = icmp eq i32 %.0.i.i, -1
  br i1 %.not11.i.i, label %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.thread, label %bb.c, !llvm.loop !1

_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit:       ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ac
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !84
  br label %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.thread

_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.thread: ; preds = %bb.d, %bb.b, %bb.a, %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit, %bb.e
  %.0 = phi i32 [ %i.ak, %bb.e ], [ -1, %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN6bParse4bDNA14getReverseTypeEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.b3HashString, align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !87
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.d, ptr %i.a, align 8, !tbaa !88
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !74
  %i.g = load i64, ptr %i.a, align 8, !tbaa !88
  store i64 %i.g, ptr %i.b, align 8, !tbaa !75
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !75
  store i8 %i.i, ptr %i.h, align 1, !tbaa !75
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !89
  %i.l = load ptr, ptr %2, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.n = load i64, ptr %i.k, align 8, !tbaa !89
  %.fr21.i.i = freeze i64 %i.n                    ; 8 uses
  %i.o = trunc i64 %.fr21.i.i to i32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %_ZN12b3HashStringC2EPKc.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.q = load ptr, ptr %2, align 8, !tbaa !74     ; 5 uses
  %wide.trip.count.i = and i64 %.fr21.i.i, 2147483647
  %i.r = add nsw i64 %wide.trip.count.i, -1
  %xtraiter = and i64 %.fr21.i.i, 3               ; 3 uses
  %i.s = icmp ult i64 %i.r, 3
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.fr21.i.i, 2147483644
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.f ] ; 5 uses
  %.01012.i = phi i32 [ -2128831035, %.lr.ph.i.new ], [ %i.ap, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !75
  %i.v = sext i8 %i.u to i32
  %i.w = xor i32 %.01012.i, %i.v
  %i.x = mul i32 %i.w, 16777619
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !75
  %i.ab = sext i8 %i.aa to i32
  %i.ac = xor i32 %i.x, %i.ab
  %i.ad = mul i32 %i.ac, 16777619
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !75
  %i.ah = sext i8 %i.ag to i32
  %i.ai = xor i32 %i.ad, %i.ah
  %i.aj = mul i32 %i.ai, 16777619
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !75
  %i.an = sext i8 %i.am to i32
  %i.ao = xor i32 %i.aj, %i.an
  %i.ap = mul i32 %i.ao, 16777619                 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !2

_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa:  ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN12b3HashStringC2EPKc.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa ]
  %.01012.i.epil.init = phi i32 [ -2128831035, %.lr.ph.i ], [ %i.ap, %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa ]
  %lcmp.mod49 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod49)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.g ] ; 2 uses
  %.01012.i.epil = phi i32 [ %.01012.i.epil.init, %.epil.preheader ], [ %i.au, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i.epil
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !75
  %i.as = sext i8 %i.ar to i32
  %i.at = xor i32 %.01012.i.epil, %i.as
  %i.au = mul i32 %i.at, 16777619                 ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN12b3HashStringC2EPKc.exit, label %bb.g, !llvm.loop !96

_ZN12b3HashStringC2EPKc.exit:                     ; preds = %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa, %bb.g, %bb.e
  %.010.lcssa.i = phi i32 [ -2128831035, %bb.e ], [ %i.ap, %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa ], [ %i.au, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.010.lcssa.i, ptr %i.av, align 8, !tbaa !92
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !21
  %i.ay = add nsw i32 %i.ax, -1
  %i.az = and i32 %i.ay, %.010.lcssa.i            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !20
  %.not.i.i = icmp ult i32 %i.az, %i.bb
  br i1 %.not.i.i, label %bb.h, label %_ZN12b3HashStringC2EPKc.exit._ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit.thread_crit_edge

_ZN12b3HashStringC2EPKc.exit._ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit.thread_crit_edge: ; preds = %_ZN12b3HashStringC2EPKc.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !74
  br label %_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit.thread

bb.h:                                             ; preds = %_ZN12b3HashStringC2EPKc.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !19
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %.013.i.i = load i32, ptr %i.bf, align 4, !tbaa !84 ; 3 uses
  %.not1114.i.i = icmp eq i32 %.013.i.i, -1
  %.pre24 = load ptr, ptr %2, align 8             ; 6 uses
  br i1 %.not1114.i.i, label %_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !62 ; 2 uses
  %i.bi = icmp eq i64 %.fr21.i.i, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  br i1 %i.bi, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_ZNK12b3HashString6equalsERKS_.exit.thread12.us.i.i
  %.015.us.i.i = phi i32 [ %.0.us.i.i, %_ZNK12b3HashString6equalsERKS_.exit.thread12.us.i.i ], [ %.013.i.i, %.lr.ph.i.i ]
  %i.bl = sext i32 %.015.us.i.i to i64            ; 3 uses
  %i.bm = getelementptr inbounds [40 x i8], ptr %i.bh, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !89
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit, label %_ZNK12b3HashString6equalsERKS_.exit.thread12.us.i.i

_ZNK12b3HashString6equalsERKS_.exit.thread12.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bl
  %.0.us.i.i = load i32, ptr %i.bq, align 4, !tbaa !84 ; 2 uses
  %.not11.us.i.i = icmp eq i32 %.0.us.i.i, -1
  br i1 %.not11.us.i.i, label %_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit.thread, label %.lr.ph.split.us.i.i, !llvm.loop !3

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZNK12b3HashString6equalsERKS_.exit.thread12.i.i
  %.015.i.i = phi i32 [ %.0.i.i, %_ZNK12b3HashString6equalsERKS_.exit.thread12.i.i ], [ %.013.i.i, %.lr.ph.i.i ]
  %i.br = sext i32 %.015.i.i to i64               ; 3 uses
  %i.bs = getelementptr inbounds [40 x i8], ptr %i.bh, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !89
  %i.bv = icmp eq i64 %.fr21.i.i, %i.bu
  br i1 %i.bv, label %_ZNK12b3HashString6equalsERKS_.exit.i.i, label %_ZNK12b3HashString6equalsERKS_.exit.thread12.i.i

_ZNK12b3HashString6equalsERKS_.exit.i.i:          ; preds = %.lr.ph.split.i.i
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !74
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %.pre24, ptr %i.bw, i64 %.fr21.i.i)
  %i.bx = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bx, label %_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit, label %_ZNK12b3HashString6equalsERKS_.exit.thread12.i.i

_ZNK12b3HashString6equalsERKS_.exit.thread12.i.i: ; preds = %_ZNK12b3HashString6equalsERKS_.exit.i.i, %.lr.ph.split.i.i
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.br
  %.0.i.i = load i32, ptr %i.by, align 4, !tbaa !84 ; 2 uses
  %.not11.i.i = icmp eq i32 %.0.i.i, -1
  br i1 %.not11.i.i, label %_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit.thread, label %.lr.ph.split.i.i, !llvm.loop !3

_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit:   ; preds = %_ZNK12b3HashString6equalsERKS_.exit.i.i, %.lr.ph.split.us.i.i
  %.pre-phi.i = phi i64 [ %i.bl, %.lr.ph.split.us.i.i ], [ %i.br, %_ZNK12b3HashString6equalsERKS_.exit.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !19 ; 2 uses
  %.not = icmp eq ptr %i.ca, null
  br i1 %.not, label %_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %.pre-phi.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !84
  br label %_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit.thread

_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit.thread: ; preds = %_ZNK12b3HashString6equalsERKS_.exit.thread12.i.i, %_ZNK12b3HashString6equalsERKS_.exit.thread12.us.i.i, %_ZN12b3HashStringC2EPKc.exit._ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit.thread_crit_edge, %bb.h, %_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit, %bb.i
  %i.cd = phi ptr [ %.pre24, %bb.i ], [ %.pre24, %_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit ], [ %.pre, %_ZN12b3HashStringC2EPKc.exit._ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit.thread_crit_edge ], [ %.pre24, %bb.h ], [ %.pre24, %_ZNK12b3HashString6equalsERKS_.exit.thread12.us.i.i ], [ %.pre24, %_ZNK12b3HashString6equalsERKS_.exit.thread12.i.i ] ; 2 uses
  %.0 = phi i32 [ %i.cc, %bb.i ], [ -1, %_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit ], [ -1, %_ZN12b3HashStringC2EPKc.exit._ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit.thread_crit_edge ], [ -1, %bb.h ], [ -1, %_ZNK12b3HashString6equalsERKS_.exit.thread12.us.i.i ], [ -1, %_ZNK12b3HashString6equalsERKS_.exit.thread12.i.i ]
  %i.ce = icmp eq ptr %i.cd, %i.b
  br i1 %i.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i8: ; preds = %_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit.thread
  %i.cf = icmp ult i64 %.fr21.i.i, 16
  call void @llvm.assume(i1 %i.cf)
  br label %_ZN12b3HashStringD2Ev.exit9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %_ZN9b3HashMapI12b3HashStringiE4findERKS0_.exit.thread
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !75
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #25
  br label %_ZN12b3HashStringD2Ev.exit9

_ZN12b3HashStringD2Ev.exit9:                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN6bParse4bDNA13getNumStructsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN6bParse4bDNA12flagNotEqualEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !84
  %i.f = icmp eq i32 %i.e, 1
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN6bParse4bDNA9flagEqualEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !84
  %i.f = icmp eq i32 %i.e, 2
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN6bParse4bDNA8flagNoneEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !84
  %i.f = icmp eq i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN6bParse4bDNA14getPointerSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN6bParse4bDNA19initRecurseCmpFlagsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = load i16, ptr %i.e, align 2, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !42   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph27, label %._crit_edge

.lr.ph27:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = zext i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph27, %.loopexit
  %i.m = phi i32 [ %i.h, %.lr.ph27 ], [ %i.am, %.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %.not = icmp eq i64 %indvars.iv, %i.l
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !84
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !83   ; 2 uses
  %i.w = sext i16 %i.v to i32
  %i.x = icmp sgt i16 %i.v, 0
  br i1 %i.x, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.023 = phi i32 [ %i.al, %bb.g ], [ 0, %.lr.ph.preheader ]
  %.pn22 = phi ptr [ %.01924, %bb.g ], [ %i.t, %.lr.ph.preheader ] ; 2 uses
  %.01924 = getelementptr inbounds nuw i8, ptr %.pn22, i64 4 ; 2 uses
  %i.z = load i16, ptr %.01924, align 2, !tbaa !83
  %i.aa = icmp eq i16 %i.z, %i.f
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn22, i64 6
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !83
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.ae = sext i16 %i.ac to i64
  %i.af = getelementptr inbounds [24 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !93, !range !69, !noundef !77
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  store i32 1, ptr %i.ak, align 4, !tbaa !84
  tail call void @_ZN6bParse4bDNA19initRecurseCmpFlagsEi(ptr noundef nonnull align 8 dereferenceable(420) %0, i32 noundef %i.y)
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f, %bb.e
  %i.al = add nuw nsw i32 %.023, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.al, %i.w
  br i1 %exitcond.not, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !97

.loopexit.loopexit:                               ; preds = %bb.g
  %.pre = load i32, ptr %i.g, align 4, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %bb.b, %bb.c
  %i.am = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.m, %bb.d ], [ %i.m, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge, !llvm.loop !98
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6bParse4bDNA12initCmpFlagsEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(420) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20   ; 2 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.c
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 12 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.n = load i32, ptr %i.c, align 4, !tbaa !20   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 7 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.n to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.l
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body
end_hunk_0
begin_hunk_1_@_ZN6bParse4bDNA12initCmpFlagsEPS0_:bb.a
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !18, !range !69, !noundef !77
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.e, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aq)
  br label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.au, align 8, !tbaa !18
  store ptr %.0.i12.i.i, ptr %i.ap, align 8, !tbaa !19
  store i32 %.0.i.i, ptr %i.f, align 8, !tbaa !21
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.av = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i12.i.i, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i ]
  %i.aw = sext i32 %i.d to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %i.b to i64
  %i.ax = shl nsw i64 %i.aw, 2
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.ax
  %i.ay = sub nsw i64 %wide.trip.count.i, %i.aw
  %i.az = shl nsw i64 %i.ay, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.az, i1 false), !tbaa !84
  %.pre65 = load i32, ptr %i.a, align 4, !tbaa !42
  br label %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit

_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit:    ; preds = %.lr.ph.i, %bb.a
  %i.ba = phi i32 [ %.pre65, %.lr.ph.i ], [ %i.b, %bb.a ]
  store i32 %i.b, ptr %i.c, align 4, !tbaa !20
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph57, label %._crit_edge

.lr.ph57:                                         ; preds = %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.f

.preheader:                                       ; preds = %.loopexit
  %i.bt = icmp sgt i32 %i.fd, 0
  br i1 %i.bt, label %.lr.ph59, label %._crit_edge

.lr.ph59:                                         ; preds = %.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre67 = load ptr, ptr %i.bu, align 8, !tbaa !19
  br label %bb.q

bb.f:                                             ; preds = %.lr.ph57, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !81 ; 3 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !83 ; 2 uses
  %i.by = sext i16 %i.bx to i32                   ; 3 uses
  %i.bz = shl nsw i32 %i.by, 15
  %i.ca = xor i32 %i.bz, -1
  %i.cb = add nsw i32 %i.ca, %i.by                ; 2 uses
  %i.cc = ashr i32 %i.cb, 10
  %i.cd = xor i32 %i.cc, %i.cb
  %i.ce = mul i32 %i.cd, 9                        ; 2 uses
  %i.cf = ashr i32 %i.ce, 6
  %i.cg = xor i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = shl i32 %i.cg, 11
  %i.ci = xor i32 %i.ch, -1
  %i.cj = add nsw i32 %i.cg, %i.ci                ; 2 uses
  %i.ck = ashr i32 %i.cj, 16
  %i.cl = xor i32 %i.ck, %i.cj
  %i.cm = load i32, ptr %i.be, align 8, !tbaa !21
  %i.cn = add nsw i32 %i.cm, -1
  %i.co = and i32 %i.cl, %i.cn                    ; 2 uses
  %i.cp = load i32, ptr %i.bf, align 4, !tbaa !20
  %.not.i.i.i44 = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i.i.i44, label %bb.g, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.cq = load ptr, ptr %i.bg, align 8, !tbaa !19
  %i.cr = sext i32 %i.co to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cr
  %.012.i.i.i = load i32, ptr %i.cs, align 4, !tbaa !84 ; 2 uses
  %.not1113.i.i.i = icmp eq i32 %.012.i.i.i, -1
  br i1 %.not1113.i.i.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %.lr.ph.i.i.i45

.lr.ph.i.i.i45:                                   ; preds = %bb.g
  %i.ct = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.cu = load ptr, ptr %i.bi, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i45
  %.014.i.i.i = phi i32 [ %.012.i.i.i, %.lr.ph.i.i.i45 ], [ %.0.i.i.i, %bb.i ]
  %i.cv = sext i32 %.014.i.i.i to i64             ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !86
  %i.cy = icmp eq i32 %i.cx, %i.by
  br i1 %i.cy, label %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cv
  %.0.i.i.i = load i32, ptr %i.cz, align 4, !tbaa !84 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %.0.i.i.i, -1
  br i1 %.not11.i.i.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %bb.h, !llvm.loop !1

_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i:     ; preds = %bb.h
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp eq ptr %i.da, null
  br i1 %.not.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %_ZN6bParse4bDNA14getReverseTypeEs.exit

_ZN6bParse4bDNA14getReverseTypeEs.exit:           ; preds = %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i
  %i.db = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.cv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !84 ; 3 uses
  %i.dd = icmp eq i32 %i.dc, -1
  br i1 %i.dd, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %bb.j

_ZN6bParse4bDNA14getReverseTypeEs.exit.thread:    ; preds = %bb.i, %bb.g, %bb.f, %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i, %_ZN6bParse4bDNA14getReverseTypeEs.exit
  %i.de = load ptr, ptr %i.bm, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv
  store i32 0, ptr %i.df, align 4, !tbaa !84
  br label %.loopexit

bb.j:                                             ; preds = %_ZN6bParse4bDNA14getReverseTypeEs.exit
  %i.dg = load i32, ptr %i.bk, align 4, !tbaa !42
  %i.dh = icmp slt i32 %i.dc, %i.dg
  br i1 %i.dh, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.di = load ptr, ptr %i.bl, align 8, !tbaa !41
  %i.dj = sext i32 %i.dc to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !81 ; 3 uses
  %i.dm = load ptr, ptr %i.bm, align 8, !tbaa !19
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv ; 2 uses
  store i32 1, ptr %i.dn, align 4, !tbaa !84
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !83 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !83
  %i.ds = icmp eq i16 %i.dp, %i.dr
  br i1 %i.ds, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.dt = load ptr, ptr %i.bn, align 8, !tbaa !48
  %i.du = sext i16 %i.bx to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !83
  %i.dx = load i16, ptr %i.dl, align 2, !tbaa !83
  %i.dy = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.dz = sext i16 %i.dx to i64
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !83
  %i.ec = icmp eq i16 %i.dw, %i.eb
  br i1 %i.ec, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ed = sext i16 %i.dp to i32
  %.not4350 = icmp sgt i16 %i.dp, 0
  br i1 %.not4350, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.m
  %i.ee = load ptr, ptr %i.bp, align 8, !tbaa !34
  %i.ef = load ptr, ptr %i.bq, align 8, !tbaa !34
  br label %bb.o

bb.n:                                             ; preds = %bb.p
  %i.eg = add nuw nsw i32 %.053, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.eg, %i.ed
  br i1 %exitcond.not, label %.critedge, label %bb.o, !llvm.loop !102

bb.o:                                             ; preds = %.lr.ph, %bb.n
  %.053 = phi i32 [ 0, %.lr.ph ], [ %i.eg, %bb.n ]
  %.pn52 = phi ptr [ %i.dl, %.lr.ph ], [ %.03755, %bb.n ] ; 2 uses
  %.pn4251 = phi ptr [ %i.bw, %.lr.ph ], [ %.03854, %bb.n ] ; 2 uses
  %.03854 = getelementptr inbounds nuw i8, ptr %.pn4251, i64 4 ; 2 uses
  %.03755 = getelementptr inbounds nuw i8, ptr %.pn52, i64 4 ; 2 uses
  %i.eh = load i16, ptr %.03854, align 2, !tbaa !83
  %i.ei = sext i16 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !80
  %i.el = load i16, ptr %.03755, align 2, !tbaa !83
  %i.em = sext i16 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !80
  %i.ep = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ek, ptr noundef nonnull dereferenceable(1) %i.eo) #27
  %.not = icmp eq i32 %i.ep, 0
  br i1 %.not, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn4251, i64 6
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !83
  %i.es = load ptr, ptr %i.br, align 8, !tbaa !26
  %i.et = sext i16 %i.er to i64
  %i.eu = getelementptr inbounds [24 x i8], ptr %i.es, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !79
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn52, i64 6
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !83
  %i.ey = load ptr, ptr %i.bs, align 8, !tbaa !26
  %i.ez = sext i16 %i.ex to i64
  %i.fa = getelementptr inbounds [24 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !79
  %i.fc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ev, ptr noundef nonnull dereferenceable(1) %i.fb) #27
  %.not41 = icmp eq i32 %i.fc, 0
  br i1 %.not41, label %bb.n, label %.loopexit

.critedge:                                        ; preds = %bb.n, %bb.m
  store i32 2, ptr %i.dn, align 4, !tbaa !84
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.p, %bb.j, %.critedge, %bb.l, %bb.k, %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fd = load i32, ptr %i.a, align 4, !tbaa !42  ; 3 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = icmp slt i64 %indvars.iv.next, %i.fe
  br i1 %i.ff, label %bb.f, label %.preheader, !llvm.loop !103

bb.q:                                             ; preds = %.lr.ph59, %bb.s
  %i.fg = phi i32 [ %i.fd, %.lr.ph59 ], [ %i.fm, %bb.s ]
  %i.fh = phi ptr [ %.pre67, %.lr.ph59 ], [ %i.fn, %bb.s ] ; 2 uses
  %indvars.iv62 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next63, %bb.s ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv62
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !84
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fl = trunc nuw nsw i64 %indvars.iv62 to i32
  tail call void @_ZN6bParse4bDNA19initRecurseCmpFlagsEi(ptr noundef nonnull align 8 dereferenceable(420) %0, i32 noundef %i.fl)
  %.pre66 = load ptr, ptr %i.bu, align 8, !tbaa !19
  %.pre68 = load i32, ptr %i.a, align 4, !tbaa !42
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.fm = phi i32 [ %i.fg, %bb.q ], [ %.pre68, %bb.r ] ; 2 uses
  %i.fn = phi ptr [ %i.fh, %bb.q ], [ %.pre66, %bb.r ]
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.fo = sext i32 %i.fm to i64
  %i.fp = icmp slt i64 %indvars.iv.next63, %i.fo
  br i1 %i.fp, label %bb.q, label %._crit_edge, !llvm.loop !104

._crit_edge:                                      ; preds = %bb.s, %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6bParse4bDNA4initEPcib(ptr noundef nonnull align 8 dereferenceable(420) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 16 uses
  %4 = alloca %"struct.bParse::bNameInfo", align 8 ; 7 uses
  %5 = alloca %class.b3HashInt, align 4           ; 4 uses
  %6 = alloca %struct.b3HashString, align 8       ; 14 uses
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str, i64 noundef 4) #27
  %i.d = icmp eq i32 %i.c, 0
  %spec.select.idx = select i1 %i.d, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 3 uses
  %.pre = load i32, ptr %spec.select, align 4, !tbaa !84 ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef %.pre) ; 2 uses
  store i32 %i.e, ptr %spec.select, align 4, !tbaa !84
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %i.e, %bb.b ], [ %.pre, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !84
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZL13name_is_arrayPcPiS0_.exit
  %i.m = phi i32 [ 0, %.lr.ph ], [ %i.bg, %_ZL13name_is_arrayPcPiS0_.exit ]
  %.0114 = phi ptr [ %i.g, %.lr.ph ], [ %i.bf, %_ZL13name_is_arrayPcPiS0_.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %.0114, ptr %4, align 8, !tbaa !79
  %i.n = load i8, ptr %.0114, align 1, !tbaa !75
  %i.o = icmp eq i8 %i.n, 42
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.0114, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !75
  %i.r = icmp eq i8 %i.q, 42
  %i.s = zext i1 %i.r to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi i8 [ 1, %bb.d ], [ %i.s, %bb.e ]
  store i8 %i.t, ptr %i.i, align 8, !tbaa !93
  %i.u = ptrtoaddr ptr %.0114 to i64              ; 2 uses
  %i.v = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0114) #27
  store i32 1, ptr %i.j, align 4, !tbaa !84
  store i32 1, ptr %i.k, align 8, !tbaa !84
  %i.w = call noundef ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %.0114, i32 noundef 91) #27 ; 4 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZL13name_is_arrayPcPiS0_.exit, label %.preheader84.i

.preheader84.i:                                   ; preds = %bb.f
  %i.y = shl i64 %i.v, 32
  %i.z = ashr exact i64 %i.y, 32                  ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.0114, i64 %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  %i.ad = icmp ult ptr %i.ac, %i.ab
  br i1 %i.ad, label %.lr.ph.preheader.i, label %.thread73.i

.lr.ph.preheader.i:                               ; preds = %.preheader84.i
  %i.ae = xor i64 %i.x, -1
  %i.af = getelementptr i8, ptr %i.w, i64 %i.z
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.u
  %scevgep.i = getelementptr i8, ptr %i.ag, i64 %i.ae ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %i.ah = phi ptr [ %i.ao, %bb.h ], [ %i.ac, %.lr.ph.preheader.i ] ; 3 uses
  %.04790.i = phi i32 [ %i.an, %bb.h ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !75  ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 93
  br i1 %i.aj, label %.thread73.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ak = add i8 %i.ai, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.ak, 10
  br i1 %or.cond.i, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %_ZL13name_is_arrayPcPiS0_.exit

bb.h:                                             ; preds = %bb.g
  %i.al = mul nsw i32 %.04790.i, 10
  %i.am = zext nneg i8 %i.ak to i32
  %i.an = add nsw i32 %i.al, %i.am                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ao, %scevgep.i
  br i1 %exitcond.not.i, label %.thread73.i, label %.lr.ph.i

.thread73.i:                                      ; preds = %bb.h, %.lr.ph.i, %.preheader84.i
  %i.ap = phi i32 [ 0, %.preheader84.i ], [ %i.an, %bb.h ], [ %.04790.i, %.lr.ph.i ] ; 2 uses
  %.lcssa87.i = phi ptr [ %i.ac, %.preheader84.i ], [ %scevgep.i, %bb.h ], [ %i.ah, %.lr.ph.i ]
  store i32 %i.ap, ptr %i.k, align 8, !tbaa !84
  %i.aq = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.lcssa87.i, i32 noundef 91) #27 ; 4 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %.not68.i = icmp eq ptr %i.aq, null
  br i1 %.not68.i, label %_ZL13name_is_arrayPcPiS0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.thread73.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.ab
  br i1 %i.at, label %.lr.ph98.preheader.i, label %.thread80.i

.lr.ph98.preheader.i:                             ; preds = %.preheader.i
  %i.au = xor i64 %i.ar, -1
  %i.av = getelementptr i8, ptr %i.aq, i64 %i.z
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.u
  %scevgep102.i = getelementptr i8, ptr %i.aw, i64 %i.au
  br label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %bb.j, %.lr.ph98.preheader.i
  %i.ax = phi ptr [ %i.be, %bb.j ], [ %i.as, %.lr.ph98.preheader.i ] ; 2 uses
  %.397.i = phi i32 [ %i.bd, %bb.j ], [ 0, %.lr.ph98.preheader.i ] ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !75  ; 2 uses
  %i.az = icmp eq i8 %i.ay, 93
  br i1 %i.az, label %.thread80.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph98.i
  %i.ba = add i8 %i.ay, -48                       ; 2 uses
  %or.cond5.i = icmp ult i8 %i.ba, 10
  br i1 %or.cond5.i, label %bb.j, label %.thread76.i

.thread76.i:                                      ; preds = %bb.i
  %puts69.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %_ZL13name_is_arrayPcPiS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = mul nsw i32 %.397.i, 10
  %i.bc = zext nneg i8 %i.ba to i32
  %i.bd = add nsw i32 %i.bb, %i.bc                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %exitcond103.not.i = icmp eq ptr %i.be, %scevgep102.i
  br i1 %exitcond103.not.i, label %.thread80.i, label %.lr.ph98.i

.thread80.i:                                      ; preds = %bb.j, %.lr.ph98.i, %.preheader.i
  %.3.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bd, %bb.j ], [ %.397.i, %.lr.ph98.i ]
  store i32 %i.ap, ptr %i.j, align 4, !tbaa !84
  store i32 %.3.lcssa.i, ptr %i.k, align 8, !tbaa !84
  br label %_ZL13name_is_arrayPcPiS0_.exit

_ZL13name_is_arrayPcPiS0_.exit:                   ; preds = %bb.f, %.thread.i, %.thread73.i, %.thread76.i, %.thread80.i
  call void @_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %.0114)
  %scevgep = getelementptr i8, ptr %.0114, i64 %strlen
  %i.bf = getelementptr inbounds nuw i8, ptr %scevgep, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bg = add nuw nsw i32 %i.m, 1                 ; 3 uses
  store i32 %i.bg, ptr %i.b, align 4, !tbaa !84
  %i.bh = icmp slt i32 %i.bg, %i.f
  br i1 %i.bh, label %bb.d, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %_ZL13name_is_arrayPcPiS0_.exit, %bb.c
  %.0.lcssa = phi ptr [ %i.g, %bb.c ], [ %i.bf, %_ZL13name_is_arrayPcPiS0_.exit ]
  %i.bi = ptrtoint ptr %.0.lcssa to i64
  %i.bj = add i64 %i.bi, 3
  %i.bk = and i64 %i.bj, -4
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %.pre143 = load i32, ptr %i.bm, align 4, !tbaa !84 ; 2 uses
  br i1 %3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.bn = call noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef %.pre143) ; 2 uses
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !84
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.bo = phi i32 [ %i.bn, %bb.k ], [ %.pre143, %._crit_edge ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !84
  %i.bq = icmp sgt i32 %i.bo, 0
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  br i1 %i.bq, label %.lr.ph117, label %.._crit_edge118_crit_edge

.._crit_edge118_crit_edge:                        ; preds = %bb.l
  %.pre148 = load i32, ptr %i.br, align 4, !tbaa !35
  br label %._crit_edge118

.lr.ph117:                                        ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.pre144 = load i32, ptr %i.br, align 4, !tbaa !35
  %.pre145 = load i32, ptr %i.bs, align 8, !tbaa !36
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph117, %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit
  %i.bv = phi i32 [ 0, %.lr.ph117 ], [ %i.dr, %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit ]
  %i.bw = phi i32 [ %.pre145, %.lr.ph117 ], [ %i.dk, %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit ] ; 7 uses
  %i.bx = phi i32 [ %.pre144, %.lr.ph117 ], [ %i.dp, %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit ] ; 2 uses
  %.2115 = phi ptr [ %i.bp, %.lr.ph117 ], [ %i.dq, %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit ] ; 3 uses
  %i.by = icmp eq i32 %i.bx, %i.bw
  br i1 %i.by, label %bb.n, label %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i32 %i.bw, 0
  %i.bz = shl nsw i32 %i.bw, 1
  %i.ca = select i1 %.not.i.i, i32 1, i32 %i.bz   ; 7 uses
  %i.cb = icmp slt i32 %i.bw, %i.ca
  br i1 %i.cb, label %bb.o, label %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayIPcE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIPcE8allocateEi.exit.i.i: ; preds = %bb.o
  %i.cc = sext i32 %i.ca to i64
  %i.cd = shl nsw i64 %i.cc, 3
  %i.ce = call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.cd, i32 noundef 16) ; 12 uses
  %i.cf = ptrtoaddr ptr %i.ce to i64
  %i.cg = icmp eq ptr %i.ce, null
  br i1 %i.cg, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayIPcE8allocateEi.exit.i.i
  %i.ch = load i32, ptr %i.br, align 4, !tbaa !35 ; 7 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  %.pre147 = load ptr, ptr %i.bt, align 8, !tbaa !34 ; 11 uses
  br i1 %i.ci, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %.pre147235 = ptrtoaddr ptr %.pre147 to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.ch to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ch, 4
  %i.cj = sub i64 %.pre147235, %i.cf
  %diff.check = icmp ugt i64 %i.cj, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.pre147, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !80
  %wide.load236 = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !80
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x ptr> %wide.load, ptr %i.ck, align 8, !tbaa !80
  store <2 x ptr> %wide.load236, ptr %i.cn, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.i.i.prol
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.pre147, i64 %indvars.iv.i.i.i.prol
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !80
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !107

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.cs = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ct = icmp ugt i64 %i.cs, -4
  br i1 %i.ct, label %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.i.i
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.pre147, i64 %indvars.iv.i.i.i
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !80
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !80
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i.i.i
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.pre147, i64 %indvars.iv.next.i.i.i
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !80
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i.i.i.1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.pre147, i64 %indvars.iv.next.i.i.i.1
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !80
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i.i.i.2
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.pre147, i64 %indvars.iv.next.i.i.i.2
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !80
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread, label %scalar.ph, !llvm.loop !108

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayIPcE8allocateEi.exit.i.i, %bb.o
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 301)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.15)
  store i32 0, ptr %i.br, align 4, !tbaa !35
  %.pre146 = load ptr, ptr %i.bt, align 8, !tbaa !34
  br label %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i: ; preds = %.split7.i.i, %.split.i.i
  %i.dg = phi ptr [ %.pre146, %.split7.i.i ], [ %.pre147, %.split.i.i ] ; 2 uses
  %.pre3.i = phi i32 [ 0, %.split7.i.i ], [ %i.ch, %.split.i.i ] ; 2 uses
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.ce, %.split.i.i ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.ca, %.split.i.i ] ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayIPcE10deallocateEv.exit.i.i, label %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread

_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i
  %.0.i.i206 = phi i32 [ %.0.i.i, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i ], [ %i.ca, %middle.block ], [ %i.ca, %scalar.ph ], [ %i.ca, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i12.i.i204 = phi ptr [ %.0.i12.i.i, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i ], [ %i.ce, %middle.block ], [ %i.ce, %scalar.ph ], [ %i.ce, %scalar.ph.prol.loopexit ] ; 2 uses
  %.pre3.i203 = phi i32 [ %.pre3.i, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i ], [ %i.ch, %middle.block ], [ %i.ch, %scalar.ph ], [ %i.ch, %scalar.ph.prol.loopexit ]
  %i.dh = phi ptr [ %i.dg, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i ], [ %.pre147, %middle.block ], [ %.pre147, %scalar.ph ], [ %.pre147, %scalar.ph.prol.loopexit ]
  %i.di = load i8, ptr %i.bu, align 8, !tbaa !33, !range !69, !noundef !77
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.p, label %_ZN20b3AlignedObjectArrayIPcE10deallocateEv.exit.i.i

bb.p:                                             ; preds = %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread
  call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.dh)
  %.pre.pre.i = load i32, ptr %i.br, align 4, !tbaa !35
  br label %_ZN20b3AlignedObjectArrayIPcE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayIPcE10deallocateEv.exit.i.i: ; preds = %bb.p, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i
  %.0.i.i207 = phi i32 [ %.0.i.i206, %bb.p ], [ %.0.i.i206, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread ], [ %.0.i.i, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i ] ; 2 uses
  %.0.i12.i.i205 = phi ptr [ %.0.i12.i.i204, %bb.p ], [ %.0.i12.i.i204, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread ], [ %.0.i12.i.i, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i ]
  %.pre.i = phi i32 [ %.pre.pre.i, %bb.p ], [ %.pre3.i203, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i.thread ], [ %.pre3.i, %_ZNK20b3AlignedObjectArrayIPcE4copyEiiPS0_.exit.i.i ]
  store i8 1, ptr %i.bu, align 8, !tbaa !33
  store ptr %.0.i12.i.i205, ptr %i.bt, align 8, !tbaa !34
  store i32 %.0.i.i207, ptr %i.bs, align 8, !tbaa !36
  br label %_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit

_ZN20b3AlignedObjectArrayIPcE9push_backERKS0_.exit: ; preds = %bb.m, %bb.n, %_ZN20b3AlignedObjectArrayIPcE10deallocateEv.exit.i.i
  %i.dk = phi i32 [ %.0.i.i207, %_ZN20b3AlignedObjectArrayIPcE10deallocateEv.exit.i.i ], [ %i.bw, %bb.n ], [ %i.bw, %bb.m ]
  %i.dl = phi i32 [ %.pre.i, %_ZN20b3AlignedObjectArrayIPcE10deallocateEv.exit.i.i ], [ %i.bw, %bb.n ], [ %i.bx, %bb.m ] ; 2 uses
  %i.dm = load ptr, ptr %i.bt, align 8, !tbaa !34
  %i.dn = sext i32 %i.dl to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dn
  store ptr %.2115, ptr %i.do, align 8, !tbaa !80
  %i.dp = add nsw i32 %i.dl, 1                    ; 3 uses
  store i32 %i.dp, ptr %i.br, align 4, !tbaa !35
end_hunk_1
begin_hunk_2_@_ZN6bParse4bDNA4initEPcib:bb.a
  %i.hp = ptrtoaddr ptr %i.ho to i64
  %i.hq = icmp eq ptr %i.ho, null
  br i1 %i.hq, label %.split7.i.i81, label %.split.i.i69

.split.i.i69:                                     ; preds = %_ZN20b3AlignedObjectArrayIPsE8allocateEi.exit.i.i
  %i.hr = load i32, ptr %i.gp, align 4, !tbaa !42 ; 7 uses
  %i.hs = icmp sgt i32 %i.hr, 0
  %.pre153 = load ptr, ptr %i.gr, align 8, !tbaa !41 ; 11 uses
  br i1 %i.hs, label %.lr.ph.i.i.i76, label %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i76:                                   ; preds = %.split.i.i69
  %.pre153264 = ptrtoaddr ptr %.pre153 to i64
  %wide.trip.count.i.i.i77 = zext nneg i32 %i.hr to i64 ; 5 uses
  %min.iters.check266 = icmp ult i32 %i.hr, 4
  %i.ht = sub i64 %.pre153264, %i.hp
  %diff.check268 = icmp ugt i64 %i.ht, -32
  %or.cond280 = select i1 %min.iters.check266, i1 true, i1 %diff.check268
  br i1 %or.cond280, label %scalar.ph265.preheader, label %vector.ph269

vector.ph269:                                     ; preds = %.lr.ph.i.i.i76
  %n.vec270 = and i64 %wide.trip.count.i.i.i77, 2147483644 ; 3 uses
  br label %vector.body271

vector.body271:                                   ; preds = %vector.body271, %vector.ph269
  %index272 = phi i64 [ 0, %vector.ph269 ], [ %index.next275, %vector.body271 ] ; 3 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %index272 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.pre153, i64 %index272 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %wide.load273 = load <2 x ptr>, ptr %i.hv, align 8, !tbaa !81
  %wide.load274 = load <2 x ptr>, ptr %i.hw, align 8, !tbaa !81
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <2 x ptr> %wide.load273, ptr %i.hu, align 8, !tbaa !81
  store <2 x ptr> %wide.load274, ptr %i.hx, align 8, !tbaa !81
  %index.next275 = add nuw i64 %index272, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next275, %n.vec270
  br i1 %i.hy, label %middle.block276, label %vector.body271, !llvm.loop !115

middle.block276:                                  ; preds = %vector.body271
  %cmp.n277 = icmp eq i64 %n.vec270, %wide.trip.count.i.i.i77
  br i1 %cmp.n277, label %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread, label %scalar.ph265.preheader

scalar.ph265.preheader:                           ; preds = %.lr.ph.i.i.i76, %middle.block276
  %indvars.iv.i.i.i78.ph = phi i64 [ 0, %.lr.ph.i.i.i76 ], [ %n.vec270, %middle.block276 ] ; 3 uses
  %xtraiter288 = and i64 %wide.trip.count.i.i.i77, 3 ; 2 uses
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod289.not, label %scalar.ph265.prol.loopexit, label %scalar.ph265.prol

scalar.ph265.prol:                                ; preds = %scalar.ph265.preheader, %scalar.ph265.prol
  %indvars.iv.i.i.i78.prol = phi i64 [ %indvars.iv.next.i.i.i79.prol, %scalar.ph265.prol ], [ %indvars.iv.i.i.i78.ph, %scalar.ph265.preheader ] ; 3 uses
  %prol.iter290 = phi i64 [ %prol.iter290.next, %scalar.ph265.prol ], [ 0, %scalar.ph265.preheader ]
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.i.i.i78.prol
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.pre153, i64 %indvars.iv.i.i.i78.prol
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !81
  store ptr %i.ib, ptr %i.hz, align 8, !tbaa !81
  %indvars.iv.next.i.i.i79.prol = add nuw nsw i64 %indvars.iv.i.i.i78.prol, 1 ; 2 uses
  %prol.iter290.next = add i64 %prol.iter290, 1   ; 2 uses
  %prol.iter290.cmp.not = icmp eq i64 %prol.iter290.next, %xtraiter288
  br i1 %prol.iter290.cmp.not, label %scalar.ph265.prol.loopexit, label %scalar.ph265.prol, !llvm.loop !116

scalar.ph265.prol.loopexit:                       ; preds = %scalar.ph265.prol, %scalar.ph265.preheader
  %indvars.iv.i.i.i78.unr = phi i64 [ %indvars.iv.i.i.i78.ph, %scalar.ph265.preheader ], [ %indvars.iv.next.i.i.i79.prol, %scalar.ph265.prol ]
  %i.ic = sub nsw i64 %indvars.iv.i.i.i78.ph, %wide.trip.count.i.i.i77
  %i.id = icmp ugt i64 %i.ic, -4
  br i1 %i.id, label %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread, label %scalar.ph265

scalar.ph265:                                     ; preds = %scalar.ph265.prol.loopexit, %scalar.ph265
  %indvars.iv.i.i.i78 = phi i64 [ %indvars.iv.next.i.i.i79.3, %scalar.ph265 ], [ %indvars.iv.i.i.i78.unr, %scalar.ph265.prol.loopexit ] ; 6 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.i.i.i78
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.pre153, i64 %indvars.iv.i.i.i78
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !81
  store ptr %i.ig, ptr %i.ie, align 8, !tbaa !81
  %indvars.iv.next.i.i.i79 = add nuw nsw i64 %indvars.iv.i.i.i78, 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.next.i.i.i79
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.pre153, i64 %indvars.iv.next.i.i.i79
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !81
  store ptr %i.ij, ptr %i.ih, align 8, !tbaa !81
  %indvars.iv.next.i.i.i79.1 = add nuw nsw i64 %indvars.iv.i.i.i78, 2 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.next.i.i.i79.1
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.pre153, i64 %indvars.iv.next.i.i.i79.1
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !81
  store ptr %i.im, ptr %i.ik, align 8, !tbaa !81
  %indvars.iv.next.i.i.i79.2 = add nuw nsw i64 %indvars.iv.i.i.i78, 3 ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.next.i.i.i79.2
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.pre153, i64 %indvars.iv.next.i.i.i79.2
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !81
  store ptr %i.ip, ptr %i.in, align 8, !tbaa !81
  %indvars.iv.next.i.i.i79.3 = add nuw nsw i64 %indvars.iv.i.i.i78, 4 ; 2 uses
  %exitcond.not.i.i.i80.3 = icmp eq i64 %indvars.iv.next.i.i.i79.3, %wide.trip.count.i.i.i77
  br i1 %exitcond.not.i.i.i80.3, label %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread, label %scalar.ph265, !llvm.loop !117

.split7.i.i81:                                    ; preds = %_ZN20b3AlignedObjectArrayIPsE8allocateEi.exit.i.i, %bb.aa
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 301)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.15)
  store i32 0, ptr %i.gp, align 4, !tbaa !42
  %.pre152 = load ptr, ptr %i.gr, align 8, !tbaa !41
  br label %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i: ; preds = %.split7.i.i81, %.split.i.i69
  %i.iq = phi ptr [ %.pre152, %.split7.i.i81 ], [ %.pre153, %.split.i.i69 ] ; 2 uses
  %.pre3.i70 = phi i32 [ 0, %.split7.i.i81 ], [ %i.hr, %.split.i.i69 ] ; 2 uses
  %.0.i12.i.i71 = phi ptr [ null, %.split7.i.i81 ], [ %i.ho, %.split.i.i69 ] ; 2 uses
  %.0.i.i72 = phi i32 [ 0, %.split7.i.i81 ], [ %i.hk, %.split.i.i69 ] ; 2 uses
  %.not.i10.i.i73 = icmp eq ptr %i.iq, null
  br i1 %.not.i10.i.i73, label %_ZN20b3AlignedObjectArrayIPsE10deallocateEv.exit.i.i, label %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread

_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread: ; preds = %scalar.ph265.prol.loopexit, %scalar.ph265, %middle.block276, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i
  %.0.i.i72224 = phi i32 [ %.0.i.i72, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ], [ %i.hk, %middle.block276 ], [ %i.hk, %scalar.ph265 ], [ %i.hk, %scalar.ph265.prol.loopexit ] ; 2 uses
  %.0.i12.i.i71222 = phi ptr [ %.0.i12.i.i71, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ], [ %i.ho, %middle.block276 ], [ %i.ho, %scalar.ph265 ], [ %i.ho, %scalar.ph265.prol.loopexit ] ; 2 uses
  %.pre3.i70221 = phi i32 [ %.pre3.i70, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ], [ %i.hr, %middle.block276 ], [ %i.hr, %scalar.ph265 ], [ %i.hr, %scalar.ph265.prol.loopexit ]
  %i.ir = phi ptr [ %i.iq, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ], [ %.pre153, %middle.block276 ], [ %.pre153, %scalar.ph265 ], [ %.pre153, %scalar.ph265.prol.loopexit ]
  %i.is = load i8, ptr %i.gs, align 8, !tbaa !40, !range !69, !noundef !77
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.ab, label %_ZN20b3AlignedObjectArrayIPsE10deallocateEv.exit.i.i

bb.ab:                                            ; preds = %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread
  call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ir)
  %.pre.pre.i75 = load i32, ptr %i.gp, align 4, !tbaa !42
  br label %_ZN20b3AlignedObjectArrayIPsE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayIPsE10deallocateEv.exit.i.i: ; preds = %bb.ab, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i
  %.0.i.i72225 = phi i32 [ %.0.i.i72224, %bb.ab ], [ %.0.i.i72224, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread ], [ %.0.i.i72, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ]
  %.0.i12.i.i71223 = phi ptr [ %.0.i12.i.i71222, %bb.ab ], [ %.0.i12.i.i71222, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread ], [ %.0.i12.i.i71, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ]
  %.pre.i74 = phi i32 [ %.pre.pre.i75, %bb.ab ], [ %.pre3.i70221, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i.thread ], [ %.pre3.i70, %_ZNK20b3AlignedObjectArrayIPsE4copyEiiPS0_.exit.i.i ]
  store i8 1, ptr %i.gs, align 8, !tbaa !40
  store ptr %.0.i12.i.i71223, ptr %i.gr, align 8, !tbaa !41
  store i32 %.0.i.i72225, ptr %i.gq, align 8, !tbaa !43
  br label %_ZN20b3AlignedObjectArrayIPsE9push_backERKS0_.exit

_ZN20b3AlignedObjectArrayIPsE9push_backERKS0_.exit: ; preds = %bb.y, %bb.z, %_ZN20b3AlignedObjectArrayIPsE10deallocateEv.exit.i.i
  %i.iu = phi i32 [ %.pre.i74, %_ZN20b3AlignedObjectArrayIPsE10deallocateEv.exit.i.i ], [ %i.hg, %bb.z ], [ %i.hg, %bb.y ] ; 2 uses
  %i.iv = load ptr, ptr %i.gr, align 8, !tbaa !41
  %i.iw = sext i32 %i.iu to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.iw
  store ptr %.2108132, ptr %i.ix, align 8, !tbaa !81
  %i.iy = add nsw i32 %i.iu, 1
  store i32 %i.iy, ptr %i.gp, align 4, !tbaa !42
  br i1 %3, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN20b3AlignedObjectArrayIPsE9push_backERKS0_.exit
  %i.iz = load i16, ptr %.2108132, align 2, !tbaa !83
  %i.ja = call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.iz)
  store i16 %i.ja, ptr %.2108132, align 2, !tbaa !83
  %i.jb = getelementptr inbounds nuw i8, ptr %.2108132, i64 2 ; 2 uses
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !83
  %i.jd = call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.jc) ; 3 uses
  store i16 %i.jd, ptr %i.jb, align 2, !tbaa !83
  %i.je = zext nneg i16 %i.jd to i32
  %storemerge49125 = getelementptr inbounds nuw i8, ptr %.2108132, i64 4 ; 2 uses
  %i.jf = icmp sgt i16 %i.jd, 0
  br i1 %i.jf, label %.lr.ph130, label %.loopexit

.lr.ph130:                                        ; preds = %bb.ac, %.lr.ph130
  %storemerge49128 = phi ptr [ %storemerge49, %.lr.ph130 ], [ %storemerge49125, %bb.ac ] ; 4 uses
  %.043127 = phi i32 [ %i.jl, %.lr.ph130 ], [ 0, %bb.ac ]
  %.pn126 = phi ptr [ %storemerge49128, %.lr.ph130 ], [ %.2108132, %bb.ac ]
  %i.jg = load i16, ptr %storemerge49128, align 2, !tbaa !83
  %i.jh = call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.jg)
  store i16 %i.jh, ptr %storemerge49128, align 2, !tbaa !83
  %i.ji = getelementptr inbounds nuw i8, ptr %.pn126, i64 6 ; 2 uses
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !83
  %i.jk = call noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext %i.jj)
  store i16 %i.jk, ptr %i.ji, align 2, !tbaa !83
  %i.jl = add nuw nsw i32 %.043127, 1             ; 2 uses
  %storemerge49 = getelementptr inbounds nuw i8, ptr %storemerge49128, i64 4 ; 2 uses
  %exitcond.not = icmp eq i32 %i.jl, %i.je
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph130, !llvm.loop !118

bb.ad:                                            ; preds = %_ZN20b3AlignedObjectArrayIPsE9push_backERKS0_.exit
  %i.jm = getelementptr inbounds nuw i8, ptr %.2108132, i64 2
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !83
  %i.jo = sext i16 %i.jn to i32
  %i.jp = shl nsw i32 %i.jo, 1
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr [2 x i8], ptr %.2108132, i64 %i.jq
  %i.js = getelementptr i8, ptr %i.jr, i64 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph130, %bb.ac, %bb.ad
  %.3109 = phi ptr [ %i.js, %bb.ad ], [ %storemerge49125, %bb.ac ], [ %storemerge49, %.lr.ph130 ]
  %i.jt = add nuw nsw i32 %i.hf, 1                ; 3 uses
  store i32 %i.jt, ptr %i.b, align 4, !tbaa !84
  %i.ju = icmp slt i32 %i.jt, %i.gm
  br i1 %i.ju, label %bb.y, label %.preheader, !llvm.loop !119

bb.ae:                                            ; preds = %.lr.ph136, %_ZN12b3HashStringD2Ev.exit
  %storemerge47135 = phi i32 [ 0, %.lr.ph136 ], [ %i.mq, %_ZN12b3HashStringD2Ev.exit ]
  %i.jv = load ptr, ptr %i.gw, align 8, !tbaa !41
  %i.jw = sext i32 %storemerge47135 to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.jw
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !81 ; 3 uses
  %i.jz = load i32, ptr %i.gx, align 8, !tbaa !68
  %.not48 = icmp eq i32 %i.jz, 0
  br i1 %.not48, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ka = load i16, ptr %i.jy, align 2, !tbaa !83
  %i.kb = load ptr, ptr %i.gy, align 8, !tbaa !34
  %i.kc = sext i16 %i.ka to i64                   ; 2 uses
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.kb, i64 %i.kc
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !80
  %i.kf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ke, ptr noundef nonnull dereferenceable(9) @.str.1) #27
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.kh = load ptr, ptr %i.gz, align 8, !tbaa !48
  %i.ki = getelementptr inbounds [2 x i8], ptr %i.kh, i64 %i.kc
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !83
  %i.kk = sdiv i16 %i.kj, 2
  %i.kl = sext i16 %i.kk to i32
  store i32 %i.kl, ptr %i.gx, align 8, !tbaa !68
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.km = load i16, ptr %i.jy, align 2, !tbaa !83
  %i.kn = sext i16 %i.km to i32
  store i32 %i.kn, ptr %5, align 4, !tbaa !86
  call void @_ZN9b3HashMapI9b3HashIntiE6insertERKS0_RKi(ptr noundef nonnull align 8 dereferenceable(128) %i.ha, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ko = load i16, ptr %i.jy, align 2, !tbaa !83
  %i.kp = load ptr, ptr %i.gy, align 8, !tbaa !34
  %i.kq = sext i16 %i.ko to i64
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.kq
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !80 ; 4 uses
  store ptr %i.hc, ptr %6, align 8, !tbaa !87
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %.noexc.i, label %bb.ai

.noexc.i:                                         ; preds = %bb.ah
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.ku = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ks) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.ku, ptr %i.a, align 8, !tbaa !88
  %i.kv = icmp ugt i64 %i.ku, 15
  br i1 %i.kv, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ai
  %i.kw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.kw, ptr %6, align 8, !tbaa !74
  %i.kx = load i64, ptr %i.a, align 8, !tbaa !88
  store i64 %i.kx, ptr %i.hc, align 8, !tbaa !75
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.ai
  %i.ky = phi ptr [ %i.kw, %.noexc.i.i ], [ %i.hc, %bb.ai ] ; 2 uses
  switch i64 %i.ku, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i
  %i.kz = load i8, ptr %i.ks, align 1, !tbaa !75
  store i8 %i.kz, ptr %i.ky, align 1, !tbaa !75
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ky, ptr nonnull align 1 %i.ks, i64 %i.ku, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i
  %i.la = load i64, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  store i64 %i.la, ptr %i.hd, align 8, !tbaa !89
  %i.lb = load ptr, ptr %6, align 8, !tbaa !74
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.la
  store i8 0, ptr %i.lc, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ld = load i64, ptr %i.hd, align 8, !tbaa !89 ; 4 uses
  %i.le = trunc i64 %i.ld to i32
  %i.lf = icmp sgt i32 %i.le, 0
  br i1 %i.lf, label %.lr.ph.i82, label %_ZN12b3HashStringC2EPKc.exit

.lr.ph.i82:                                       ; preds = %bb.al
  %i.lg = load ptr, ptr %6, align 8, !tbaa !74    ; 5 uses
  %wide.trip.count.i = and i64 %i.ld, 2147483647
  %i.lh = add nsw i64 %wide.trip.count.i, -1
  %xtraiter291 = and i64 %i.ld, 3                 ; 3 uses
  %i.li = icmp ult i64 %i.lh, 3
  br i1 %i.li, label %.epil.preheader, label %.lr.ph.i82.new

.lr.ph.i82.new:                                   ; preds = %.lr.ph.i82
  %unroll_iter = and i64 %i.ld, 2147483644
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i82.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i82.new ], [ %indvars.iv.next.i.3, %bb.am ] ; 5 uses
  %.01012.i = phi i32 [ -2128831035, %.lr.ph.i82.new ], [ %i.mf, %bb.am ]
  %niter = phi i64 [ 0, %.lr.ph.i82.new ], [ %niter.next.3, %bb.am ]
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 %indvars.iv.i
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !75
  %i.ll = sext i8 %i.lk to i32
  %i.lm = xor i32 %.01012.i, %i.ll
  %i.ln = mul i32 %i.lm, 16777619
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 %indvars.iv.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !75
  %i.lr = sext i8 %i.lq to i32
  %i.ls = xor i32 %i.ln, %i.lr
  %i.lt = mul i32 %i.ls, 16777619
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lg, i64 %indvars.iv.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 2
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !75
  %i.lx = sext i8 %i.lw to i32
  %i.ly = xor i32 %i.lt, %i.lx
  %i.lz = mul i32 %i.ly, 16777619
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lg, i64 %indvars.iv.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 3
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !75
  %i.md = sext i8 %i.mc to i32
  %i.me = xor i32 %i.lz, %i.md
  %i.mf = mul i32 %i.me, 16777619                 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa, label %bb.am, !llvm.loop !2

_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa:  ; preds = %bb.am
  %lcmp.mod292.not = icmp eq i64 %xtraiter291, 0
  br i1 %lcmp.mod292.not, label %_ZN12b3HashStringC2EPKc.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa, %.lr.ph.i82
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i82 ], [ %indvars.iv.next.i.3, %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa ]
  %.01012.i.epil.init = phi i32 [ -2128831035, %.lr.ph.i82 ], [ %i.mf, %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa ]
  %lcmp.mod294 = icmp ne i64 %xtraiter291, 0
  call void @llvm.assume(i1 %lcmp.mod294)
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.an ] ; 2 uses
  %.01012.i.epil = phi i32 [ %.01012.i.epil.init, %.epil.preheader ], [ %i.mk, %bb.an ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.an ]
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lg, i64 %indvars.iv.i.epil
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !75
  %i.mi = sext i8 %i.mh to i32
  %i.mj = xor i32 %.01012.i.epil, %i.mi
  %i.mk = mul i32 %i.mj, 16777619                 ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter291
  br i1 %epil.iter.cmp.not, label %_ZN12b3HashStringC2EPKc.exit, label %bb.an, !llvm.loop !120

_ZN12b3HashStringC2EPKc.exit:                     ; preds = %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa, %bb.an, %bb.al
  %.010.lcssa.i = phi i32 [ -2128831035, %bb.al ], [ %i.mf, %_ZN12b3HashStringC2EPKc.exit.loopexit.unr-lcssa ], [ %i.mk, %bb.an ]
  store i32 %.010.lcssa.i, ptr %i.he, align 8, !tbaa !92
  invoke void @_ZN9b3HashMapI12b3HashStringiE6insertERKS0_RKi(ptr noundef nonnull align 8 dereferenceable(128) %i.hb, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %_ZN12b3HashStringC2EPKc.exit
  %i.ml = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.hc
  br i1 %i.mm, label %_ZN12b3HashStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ao
  %i.mn = load i64, ptr %i.hc, align 8, !tbaa !75
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mo) #25
  br label %_ZN12b3HashStringD2Ev.exit

_ZN12b3HashStringD2Ev.exit:                       ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.mp = load i32, ptr %i.b, align 4, !tbaa !84
  %i.mq = add nsw i32 %i.mp, 1                    ; 3 uses
  store i32 %i.mq, ptr %i.b, align 4, !tbaa !84
  %i.mr = load i32, ptr %i.gt, align 4, !tbaa !42
  %i.ms = icmp slt i32 %i.mq, %i.mr
  br i1 %i.ms, label %bb.ae, label %._crit_edge137, !llvm.loop !121

bb.ap:                                            ; preds = %_ZN12b3HashStringC2EPKc.exit
  %i.mt = landingpad { ptr, i32 }
          cleanup
  %i.mu = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.hc
  br i1 %i.mv, label %_ZN12b3HashStringD2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84: ; preds = %bb.ap
  %i.mw = load i64, ptr %i.hc, align 8, !tbaa !75
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.mx) #25
  br label %_ZN12b3HashStringD2Ev.exit86

_ZN12b3HashStringD2Ev.exit86:                     ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  resume { ptr, i32 } %i.mt

._crit_edge137:                                   ; preds = %_ZN12b3HashStringD2Ev.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f       ; 6 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE7reserveEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %.split7.i, label %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE8allocateEi.exit.i

_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE8allocateEi.exit.i: ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = mul nsw i64 %i.i, 24
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i, label %.split.i

.split.i:                                         ; preds = %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE8allocateEi.exit.i
  %i.m = load i32, ptr %i.a, align 4, !tbaa !27   ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK20b3AlignedObjectArrayIN6bParse9bNameInfoEE4copyEiiPS1_.exit.i

.lr.ph.i.i:                                       ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !tbaa.struct !125
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !125
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayIN6bParse9bNameInfoEE4copyEiiPS1_.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !123

.split7.i:                                        ; preds = %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE8allocateEi.exit.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.15)
  store i32 0, ptr %i.a, align 4, !tbaa !27
  br label %_ZNK20b3AlignedObjectArrayIN6bParse9bNameInfoEE4copyEiiPS1_.exit.i

_ZNK20b3AlignedObjectArrayIN6bParse9bNameInfoEE4copyEiiPS1_.exit.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayIN6bParse9bNameInfoEE4copyEiiPS1_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayIN6bParse9bNameInfoEE4copyEiiPS1_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20b3AlignedObjectArrayIN6bParse9bNameInfoEE4copyEiiPS1_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !tbaa.struct !125
  br label %_ZNK20b3AlignedObjectArrayIN6bParse9bNameInfoEE4copyEiiPS1_.exit.i

_ZNK20b3AlignedObjectArrayIN6bParse9bNameInfoEE4copyEiiPS1_.exit.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayIN6bParse9bNameInfoEE4copyEiiPS1_.exit.i.loopexit.unr-lcssa, %.split7.i, %.split.i
  %.0.i12.i = phi ptr [ null, %.split7.i ], [ %i.k, %.split.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayIN6bParse9bNameInfoEE4copyEiiPS1_.exit.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i = phi i32 [ 0, %.split7.i ], [ %i.g, %.split.i ], [ %i.g, %_ZNK20b3AlignedObjectArrayIN6bParse9bNameInfoEE4copyEiiPS1_.exit.i.loopexit.unr-lcssa ], [ %i.g, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %.not.i10.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i, label %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE10deallocateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayIN6bParse9bNameInfoEE4copyEiiPS1_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !25, !range !69, !noundef !77
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE10deallocateEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE10deallocateEv.exit.i

_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE10deallocateEv.exit.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayIN6bParse9bNameInfoEE4copyEiiPS1_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !25
  store ptr %.0.i12.i, ptr %i.z, align 8, !tbaa !26
  store i32 %.0.i, ptr %i.c, align 8, !tbaa !28
  %.pre = load i32, ptr %i.a, align 4, !tbaa !27
  br label %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE7reserveEi.exit

_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE7reserveEi.exit: ; preds = %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE10deallocateEv.exit.i, %bb.b, %bb.a
  %i.af = phi i32 [ %.pre, %_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE10deallocateEv.exit.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds [24 x i8], ptr %i.ah, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !125
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !27
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 4, !tbaa !27
  ret void
}

declare noundef signext i16 @_ZN6bParse10ChunkUtils9swapShortEs(i16 noundef signext) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9b3HashMapI9b3HashIntiE6insertERKS0_RKi(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !86     ; 3 uses
  %i.b = shl i32 %i.a, 15
  %i.c = xor i32 %i.b, -1
  %i.d = add nsw i32 %i.a, %i.c                   ; 2 uses
  %i.e = ashr i32 %i.d, 10
  %i.f = xor i32 %i.e, %i.d
  %i.g = mul i32 %i.f, 9                          ; 2 uses
  %i.h = ashr i32 %i.g, 6
  %i.i = xor i32 %i.h, %i.g                       ; 2 uses
  %i.j = shl i32 %i.i, 11
  %i.k = xor i32 %i.j, -1
  %i.l = add nsw i32 %i.i, %i.k                   ; 2 uses
  %i.m = ashr i32 %i.l, 16
  %i.n = xor i32 %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !21   ; 7 uses
  %i.q = add nsw i32 %i.p, -1
  %i.r = and i32 %i.n, %i.q                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20
  %.not.i = icmp ult i32 %i.r, %i.t
  br i1 %.not.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.w = sext i32 %i.r to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %.012.i = load i32, ptr %i.x, align 4, !tbaa !84 ; 2 uses
  %.not1113.i = icmp eq i32 %.012.i, -1
  br i1 %.not1113.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.014.i = phi i32 [ %.012.i, %.lr.ph.i ], [ %.0.i, %bb.d ]
  %i.ac = sext i32 %.014.i to i64                 ; 3 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !86
  %i.af = icmp eq i32 %i.a, %i.ae
  br i1 %i.af, label %_ZNK9b3HashMapI9b3HashIntiE9findIndexERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ac
  %.0.i = load i32, ptr %i.ag, align 4, !tbaa !84 ; 2 uses
  %.not11.i = icmp eq i32 %.0.i, -1
  br i1 %.not11.i, label %.loopexit, label %bb.c, !llvm.loop !1

_ZNK9b3HashMapI9b3HashIntiE9findIndexERKS0_.exit: ; preds = %bb.c
  %i.ah = load i32, ptr %2, align 4, !tbaa !84
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ac
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !84
  br label %bb.o

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !20 ; 4 uses
  %i.an = icmp eq i32 %i.am, %i.p
  br i1 %i.an, label %bb.e, label %_ZN20b3AlignedObjectArrayIiE9push_backERKi.exit

end_hunk_2
begin_hunk_3_@_ZN9b3HashMapI12b3HashStringiE6insertERKS0_RKi:bb.a
  %i.ah = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ah, label %_ZNK9b3HashMapI12b3HashStringiE9findIndexERKS0_.exit, label %_ZNK12b3HashString6equalsERKS_.exit.thread12.i

_ZNK12b3HashString6equalsERKS_.exit.thread12.i:   ; preds = %_ZNK12b3HashString6equalsERKS_.exit.i, %.lr.ph.split.i
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ab
  %.0.i = load i32, ptr %i.ai, align 4, !tbaa !84 ; 2 uses
  %.not11.i = icmp eq i32 %.0.i, -1
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.split.i, !llvm.loop !3

_ZNK9b3HashMapI12b3HashStringiE9findIndexERKS0_.exit: ; preds = %_ZNK12b3HashString6equalsERKS_.exit.i, %.lr.ph.split.us.i
  %.pre-phi = phi i64 [ %i.v, %.lr.ph.split.us.i ], [ %i.ab, %_ZNK12b3HashString6equalsERKS_.exit.i ]
  %i.aj = load i32, ptr %2, align 4, !tbaa !84
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %.pre-phi
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !84
  br label %bb.m

.loopexit:                                        ; preds = %_ZNK12b3HashString6equalsERKS_.exit.thread12.i, %_ZNK12b3HashString6equalsERKS_.exit.thread12.us.i, %bb.a, %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !20 ; 4 uses
  %i.ap = icmp eq i32 %i.ao, %i.e
  br i1 %i.ap, label %bb.c, label %_ZN20b3AlignedObjectArrayIiE9push_backERKi.exit

bb.c:                                             ; preds = %.loopexit
  %.not.i.i = icmp eq i32 %i.e, 0
  %i.aq = shl nsw i32 %i.e, 1
  %i.ar = select i1 %.not.i.i, i32 1, i32 %i.aq   ; 7 uses
  %i.as = icmp slt i32 %i.e, %i.ar
  br i1 %i.as, label %bb.d, label %_ZN20b3AlignedObjectArrayIiE9push_backERKi.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.d
  %i.at = sext i32 %i.ar to i64
  %i.au = shl nsw i64 %i.at, 2
  %i.av = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.au, i32 noundef 16) ; 12 uses
  %i.aw = ptrtoaddr ptr %i.av to i64
  %i.ax = icmp eq ptr %i.av, null
  br i1 %i.ax, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.ay = load i32, ptr %i.an, align 4, !tbaa !20 ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19 ; 7 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ay to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ay, 8
  %i.bc = ptrtoaddr ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.aw
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !84
  %wide.load46 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !84
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x i32> %wide.load, ptr %i.be, align 4, !tbaa !84
  store <4 x i32> %wide.load46, ptr %i.bh, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i.i.i.prol
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i.i.i.prol
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !84
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !133

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.bm = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i.i.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i.i.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !84
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !84
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.i.i.i
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i.i.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !84
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.i.i.i.1
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i.i.i.1
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !84
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.i.i.i.2
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i.i.i.2
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !84
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph, !llvm.loop !134

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i, %bb.d
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.15)
  store i32 0, ptr %i.an, align 4, !tbaa !20
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.av, %.split.i.i ], [ %i.av, %middle.block ], [ %i.av, %scalar.ph ], [ %i.av, %scalar.ph.prol.loopexit ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.ar, %.split.i.i ], [ %i.ar, %middle.block ], [ %i.ar, %scalar.ph ], [ %i.ar, %scalar.ph.prol.loopexit ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !19 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !18, !range !69, !noundef !77
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.f, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.cb)
  br label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.cf, align 8, !tbaa !18
  store ptr %.0.i12.i.i, ptr %i.ca, align 8, !tbaa !19
  store i32 %.0.i.i, ptr %i.d, align 8, !tbaa !21
  %.pre.i = load i32, ptr %i.an, align 4, !tbaa !20
  br label %_ZN20b3AlignedObjectArrayIiE9push_backERKi.exit

_ZN20b3AlignedObjectArrayIiE9push_backERKi.exit:  ; preds = %.loopexit, %bb.c, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.cg = phi i32 [ %.pre.i, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.e, %bb.c ], [ %i.ao, %.loopexit ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cj = sext i32 %i.cg to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load i32, ptr %2, align 4, !tbaa !84
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !84
  %i.cm = load i32, ptr %i.an, align 4, !tbaa !20
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.an, align 4, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !63 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !64
  %i.cs = icmp eq i32 %i.cp, %i.cr
  br i1 %i.cs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN20b3AlignedObjectArrayIiE9push_backERKi.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.not.i.i16 = icmp eq i32 %i.cp, 0
  %i.cu = shl nsw i32 %i.cp, 1
  %i.cv = select i1 %.not.i.i16, i32 1, i32 %i.cu
  tail call void @_ZN20b3AlignedObjectArrayI12b3HashStringE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %i.ct, i32 noundef %i.cv)
  %.pre.i17 = load i32, ptr %i.co, align 4, !tbaa !63
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN20b3AlignedObjectArrayIiE9push_backERKi.exit
  %i.cw = phi i32 [ %.pre.i17, %bb.g ], [ %i.cp, %_ZN20b3AlignedObjectArrayIiE9push_backERKi.exit ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !62
  %i.cz = sext i32 %i.cw to i64
  %i.da = getelementptr inbounds [40 x i8], ptr %i.cy, i64 %i.cz ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 3 uses
  store ptr %i.db, ptr %i.da, align 8, !tbaa !87
  %i.dc = load ptr, ptr %1, align 8, !tbaa !74    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !89 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.de, ptr %i.a, align 8, !tbaa !88
  %i.df = icmp ugt i64 %i.de, 15
  br i1 %i.df, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.dg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %i.da, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.dg, ptr %i.da, align 8, !tbaa !74
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !88
  store i64 %i.dh, ptr %i.db, align 8, !tbaa !75
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.h
  %i.di = phi ptr [ %i.dg, %.noexc.i.i.i ], [ %i.db, %bb.h ] ; 2 uses
  switch i64 %i.de, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN20b3AlignedObjectArrayI12b3HashStringE9push_backERKS0_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dj = load i8, ptr %i.dc, align 1, !tbaa !75
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !75
  br label %_ZN20b3AlignedObjectArrayI12b3HashStringE9push_backERKS0_.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %i.dc, i64 %i.de, i1 false)
  br label %_ZN20b3AlignedObjectArrayI12b3HashStringE9push_backERKS0_.exit

_ZN20b3AlignedObjectArrayI12b3HashStringE9push_backERKS0_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.i, %bb.j
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !89
  %i.dm = load ptr, ptr %i.da, align 8, !tbaa !74
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dk
  store i8 0, ptr %i.dn, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dp = load i32, ptr %i.b, align 8, !tbaa !92
  store i32 %i.dp, ptr %i.do, align 8, !tbaa !92
  %i.dq = load i32, ptr %i.co, align 4, !tbaa !63
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.co, align 4, !tbaa !63
  %i.ds = load i32, ptr %i.d, align 8, !tbaa !21
  %i.dt = icmp slt i32 %i.e, %i.ds
  br i1 %i.dt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN20b3AlignedObjectArrayI12b3HashStringE9push_backERKS0_.exit
  call void @_ZN9b3HashMapI12b3HashStringiE10growTablesERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %i.du = load i32, ptr %i.b, align 8, !tbaa !92
  %i.dv = load i32, ptr %i.d, align 8, !tbaa !21
  %i.dw = add nsw i32 %i.dv, -1
  %i.dx = and i32 %i.dw, %i.du
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN20b3AlignedObjectArrayI12b3HashStringE9push_backERKS0_.exit
  %.0 = phi i32 [ %i.dx, %bb.k ], [ %i.g, %_ZN20b3AlignedObjectArrayI12b3HashStringE9push_backERKS0_.exit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !19
  %i.ea = sext i32 %.0 to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !84
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !19
  %i.ef = sext i32 %i.ao to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ef
  store i32 %i.ec, ptr %i.eg, align 4, !tbaa !84
  store i32 %i.ao, ptr %i.eb, align 4, !tbaa !84
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK9b3HashMapI12b3HashStringiE9findIndexERKS0_.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef i32 @_ZN6bParse4bDNA12getArraySizeEPc(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(420) %0, ptr noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.a, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.015.lcssa = phi i32 [ 1, %bb.a ], [ %.116, %bb.e ]
  ret i32 %.015.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.01419 = phi ptr [ null, %.lr.ph.preheader ], [ %.1, %bb.e ] ; 4 uses
  %.01518 = phi i32 [ 1, %.lr.ph.preheader ], [ %.116, %bb.e ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !75    ; 2 uses
  %i.f = icmp eq i8 %i.e, 91
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i8 %i.e, 93
  %i.i = icmp ne ptr %.01419, null
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.01419, ptr noundef null, i32 noundef 10) #24, !inline_history !135
  %i.k = trunc i64 %i.j to i32
  %i.l = mul nsw i32 %.01518, %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.116 = phi i32 [ %.01518, %bb.b ], [ %i.l, %bb.d ], [ %.01518, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %i.g, %bb.b ], [ %.01419, %bb.d ], [ %.01419, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !136
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6bParse4bDNA19dumpTypeDefinitionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0) local_unnamed_addr #12 align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph48, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81   ; 4 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !83
  %i.s = sext i16 %i.r to i32                     ; 3 uses
  %i.t = shl nsw i32 %i.s, 15
  %i.u = xor i32 %i.t, -1
  %i.v = add nsw i32 %i.u, %i.s                   ; 2 uses
  %i.w = ashr i32 %i.v, 10
  %i.x = xor i32 %i.w, %i.v
  %i.y = mul i32 %i.x, 9                          ; 2 uses
  %i.z = ashr i32 %i.y, 6
  %i.aa = xor i32 %i.z, %i.y                      ; 2 uses
  %i.ab = shl i32 %i.aa, 11
  %i.ac = xor i32 %i.ab, -1
  %i.ad = add nsw i32 %i.aa, %i.ac                ; 2 uses
  %i.ae = ashr i32 %i.ad, 16
  %i.af = xor i32 %i.ae, %i.ad
  %i.ag = load i32, ptr %i.e, align 8, !tbaa !21
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = and i32 %i.af, %i.ah                    ; 2 uses
  %i.aj = load i32, ptr %i.f, align 4, !tbaa !20
  %.not.i.i.i = icmp ult i32 %i.ai, %i.aj
  br i1 %.not.i.i.i, label %bb.b, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %.012.i.i.i = load i32, ptr %i.am, align 4, !tbaa !84 ; 2 uses
  %.not1113.i.i.i = icmp eq i32 %.012.i.i.i, -1
  br i1 %.not1113.i.i.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ao = load ptr, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.014.i.i.i = phi i32 [ %.012.i.i.i, %.lr.ph.i.i.i ], [ %.0.i.i.i, %bb.d ]
  %i.ap = sext i32 %.014.i.i.i to i64             ; 3 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !86
  %i.as = icmp eq i32 %i.ar, %i.s
  br i1 %i.as, label %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  %.0.i.i.i = load i32, ptr %i.at, align 4, !tbaa !84 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %.0.i.i.i, -1
  br i1 %.not11.i.i.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %bb.c, !llvm.loop !1

_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i:     ; preds = %bb.c
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !19  ; 2 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %_ZN6bParse4bDNA14getReverseTypeEs.exit

_ZN6bParse4bDNA14getReverseTypeEs.exit:           ; preds = %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i
  %i.av = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ap
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !84 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %bb.e

_ZN6bParse4bDNA14getReverseTypeEs.exit.thread:    ; preds = %bb.d, %bb.b, %bb.a, %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i, %_ZN6bParse4bDNA14getReverseTypeEs.exit
  %i.ay = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  store i32 0, ptr %i.az, align 4, !tbaa !84
  br label %bb.j

bb.e:                                             ; preds = %_ZN6bParse4bDNA14getReverseTypeEs.exit
  %i.ba = sext i32 %i.aw to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !81
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !83
  %i.be = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.bf = sext i16 %i.bd to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !80
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.bi, ptr noundef %i.bh) ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !83 ; 2 uses
  %i.bm = sext i16 %i.bl to i32                   ; 3 uses
  %i.bn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.bm) ; 0 uses
  %putchar = tail call i32 @putchar(i32 123)      ; 0 uses
  %i.bo = icmp sgt i16 %i.bl, 0
  br i1 %i.bo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.bp = add nsw i32 %i.bm, -1                   ; 2 uses
  %.not = icmp eq i32 %i.bp, 0
  %.pre56 = load ptr, ptr %i.k, align 8, !tbaa !34 ; 2 uses
  br i1 %.not, label %._crit_edge.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bq = add nsw i32 %i.bm, -2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split, %bb.h
  %i.br = phi ptr [ %.pre56, %.lr.ph.split ], [ %.pre, %bb.h ]
  %.03445 = phi i32 [ 0, %.lr.ph.split ], [ %i.cz, %bb.h ] ; 2 uses
  %.pn44 = phi ptr [ %i.q, %.lr.ph.split ], [ %.03546, %bb.h ] ; 2 uses
  %.03643 = phi i32 [ 0, %.lr.ph.split ], [ %i.cy, %bb.h ]
  %.03546 = getelementptr inbounds nuw i8, ptr %.pn44, i64 4 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn44, i64 6 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !83
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.bv = sext i16 %i.bt to i64
  %i.bw = getelementptr inbounds [24 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !79
  %i.by = load i16, ptr %.03546, align 2, !tbaa !83
  %i.bz = sext i16 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !80
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %i.cb, ptr noundef %i.bx) ; 0 uses
  %i.cd = load i16, ptr %i.bs, align 2, !tbaa !83
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.cf = sext i16 %i.cd to i64
  %i.cg = getelementptr inbounds [24 x i8], ptr %i.ce, i64 %i.cf ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !139
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !140
  %i.cl = mul nsw i32 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !93, !range !69, !noundef !77
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cp = load i16, ptr %.03546, align 2, !tbaa !83
  %i.cq = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.cr = sext i16 %i.cp to i64
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !83
  %i.cu = sext i16 %i.ct to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0 = phi i32 [ %i.cu, %bb.g ], [ 8, %bb.f ]
  %i.cv = mul nsw i32 %i.cl, %.0                  ; 2 uses
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.cv) ; 0 uses
  %i.cx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !34  ; 2 uses
  %i.cy = add nsw i32 %i.cv, %.03643              ; 2 uses
  %i.cz = add nuw nsw i32 %.03445, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %.03445, %i.bq
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin.loopexit, label %bb.f, !llvm.loop !137

._crit_edge.loopexit.peel.begin.loopexit:         ; preds = %bb.h
  %i.da = icmp eq i32 %i.cz, %i.bp
  %i.db = select i1 %i.da, ptr @.str.7, ptr @.str.8
  br label %._crit_edge.loopexit.peel.begin

._crit_edge.loopexit.peel.begin:                  ; preds = %._crit_edge.loopexit.peel.begin.loopexit, %.lr.ph
  %i.dc = phi ptr [ %.pre56, %.lr.ph ], [ %.pre, %._crit_edge.loopexit.peel.begin.loopexit ]
  %.str.7..str.8 = phi ptr [ @.str.7, %.lr.ph ], [ %i.db, %._crit_edge.loopexit.peel.begin.loopexit ]
  %i.dd = phi ptr [ %i.q, %.lr.ph ], [ %.03546, %._crit_edge.loopexit.peel.begin.loopexit ] ; 2 uses
  %i.de = phi i32 [ 0, %.lr.ph ], [ %i.cy, %._crit_edge.loopexit.peel.begin.loopexit ]
  %.03546.peel = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 6 ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !83
  %i.dh = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.di = sext i16 %i.dg to i64
  %i.dj = getelementptr inbounds [24 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !79
  %i.dl = load i16, ptr %.03546.peel, align 2, !tbaa !83
  %i.dm = sext i16 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !80
  %i.dp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %i.do, ptr noundef %i.dk) ; 0 uses
  %i.dq = load i16, ptr %i.df, align 2, !tbaa !83
  %i.dr = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.ds = sext i16 %i.dq to i64
  %i.dt = getelementptr inbounds [24 x i8], ptr %i.dr, i64 %i.ds ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !139
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !140
  %i.dy = mul nsw i32 %i.dx, %i.dv
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !93, !range !69, !noundef !77
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %._crit_edge.loopexit.peel.next, label %bb.i

bb.i:                                             ; preds = %._crit_edge.loopexit.peel.begin
  %i.ec = load i16, ptr %.03546.peel, align 2, !tbaa !83
  %i.ed = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.ee = sext i16 %i.ec to i64
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !83
  %i.eh = sext i16 %i.eg to i32
  br label %._crit_edge.loopexit.peel.next

._crit_edge.loopexit.peel.next:                   ; preds = %bb.i, %._crit_edge.loopexit.peel.begin
  %.0.peel = phi i32 [ %i.eh, %bb.i ], [ 8, %._crit_edge.loopexit.peel.begin ]
  %i.ei = mul nsw i32 %i.dy, %.0.peel             ; 2 uses
  %i.ej = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.ei) ; 0 uses
  %i.ek = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.7..str.8) ; 0 uses
  %i.el = add nsw i32 %i.ei, %i.de
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.peel.next, %bb.e
  %.036.lcssa = phi i32 [ 0, %bb.e ], [ %i.el, %._crit_edge.loopexit.peel.next ]
  %i.em = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %.036.lcssa) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.en = load i32, ptr %i.a, align 4, !tbaa !42
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp slt i64 %indvars.iv.next, %i.eo
  br i1 %i.ep, label %bb.a, label %._crit_edge49, !llvm.loop !138

._crit_edge49:                                    ; preds = %bb.j, %.preheader
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

declare void @_Z21b3AlignedFreeInternalPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #16

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #18

declare void @b3OutputErrorMessageVarArgsInternal(ptr noundef, ...) local_unnamed_addr #9

declare noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9b3HashMapI9b3HashIntiE10growTablesERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20   ; 4 uses
  %i.e = icmp slt i32 %i.d, %i.b
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.c
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 12 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.n = load i32, ptr %i.c, align 4, !tbaa !20   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 7 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.n to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.l
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !84
  %wide.load62 = load <4 x i32>, ptr %i.v, align 4, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %wide.load, ptr %i.t, align 4, !tbaa !84
  store <4 x i32> %wide.load62, ptr %i.w, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.prol
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.prol
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !84
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !143

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !84
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !84
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i.1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.1
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !84
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i.2
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.2
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !84
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph, !llvm.loop !144

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.15)
  store i32 0, ptr %i.c, align 4, !tbaa !20
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.k, %.split.i.i ], [ %i.k, %middle.block ], [ %i.k, %scalar.ph ], [ %i.k, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.b, %.split.i.i ], [ %i.b, %middle.block ], [ %i.b, %scalar.ph ], [ %i.b, %scalar.ph.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !18, !range !69, !noundef !77
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.e, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aq)
  br label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.au, align 8, !tbaa !18
  store ptr %.0.i12.i.i, ptr %i.ap, align 8, !tbaa !19
  store i32 %.0.i.i, ptr %i.f, align 8, !tbaa !21
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.av = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i12.i.i, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = sext i32 %i.d to i64
  %wide.trip.count.i = sext i32 %i.b to i64
  %i.ay = shl nsw i64 %i.ax, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.ay
  %i.az = shl nsw i64 %wide.trip.count.i, 2       ; 3 uses
  %i.ba = sub nsw i64 %i.az, %i.ay
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ba, i1 false), !tbaa !84
  store i32 %i.b, ptr %i.c, align 4, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !20 ; 2 uses
  %i.bd = icmp sgt i32 %i.b, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit40

bb.f:                                             ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !21
  %i.bg = icmp slt i32 %i.bf, %i.b
  br i1 %i.bg, label %bb.g, label %..lr.ph.i20_crit_edge

..lr.ph.i20_crit_edge:                            ; preds = %bb.f
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre53 = load ptr, ptr %.phi.trans.insert52, align 8, !tbaa !19
  br label %.lr.ph.i20

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i26 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i26, label %.split7.i.i39, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i27

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i27: ; preds = %bb.g
  %i.bh = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.az, i32 noundef 16) ; 12 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = icmp eq ptr %i.bh, null
  br i1 %i.bj, label %.split7.i.i39, label %.split.i.i28

.split.i.i28:                                     ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i27
  %i.bk = load i32, ptr %i.bb, align 4, !tbaa !20 ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i.i.i34, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i29

.lr.ph.i.i.i34:                                   ; preds = %.split.i.i28
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_3
begin_hunk_4_@_ZN9b3HashMapI12b3HashStringiE10growTablesERKS0_:bb.a
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !84
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !84
  %indvars.iv.next.i.i.i37 = add nuw nsw i64 %indvars.iv.i.i.i36, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i37
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i37
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !84
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !84
  %indvars.iv.next.i.i.i37.1 = add nuw nsw i64 %indvars.iv.i.i.i36, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i37.1
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i37.1
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !84
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !84
  %indvars.iv.next.i.i.i37.2 = add nuw nsw i64 %indvars.iv.i.i.i36, 3 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i37.2
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i37.2
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !84
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !84
  %indvars.iv.next.i.i.i37.3 = add nuw nsw i64 %indvars.iv.i.i.i36, 4 ; 2 uses
  %exitcond.not.i.i.i38.3 = icmp eq i64 %indvars.iv.next.i.i.i37.3, %wide.trip.count.i.i.i35
  br i1 %exitcond.not.i.i.i38.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i29, label %scalar.ph65, !llvm.loop !154

.split7.i.i39:                                    ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i27, %bb.g
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.15)
  store i32 0, ptr %i.bb, align 4, !tbaa !20
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i29

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i29: ; preds = %scalar.ph65.prol.loopexit, %scalar.ph65, %middle.block76, %.split7.i.i39, %.split.i.i28
  %.0.i12.i.i30 = phi ptr [ null, %.split7.i.i39 ], [ %i.bh, %.split.i.i28 ], [ %i.bh, %middle.block76 ], [ %i.bh, %scalar.ph65 ], [ %i.bh, %scalar.ph65.prol.loopexit ] ; 2 uses
  %.0.i.i31 = phi i32 [ 0, %.split7.i.i39 ], [ %i.b, %.split.i.i28 ], [ %i.b, %middle.block76 ], [ %i.b, %scalar.ph65 ], [ %i.b, %scalar.ph65.prol.loopexit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !19 ; 2 uses
  %.not.i10.i.i32 = icmp eq ptr %i.cn, null
  br i1 %.not.i10.i.i32, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i33, label %bb.h

bb.h:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i29
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !18, !range !69, !noundef !77
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.i, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i33

bb.i:                                             ; preds = %bb.h
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.cn)
  br label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i33

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i33: ; preds = %bb.i, %bb.h, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i29
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.cr, align 8, !tbaa !18
  store ptr %.0.i12.i.i30, ptr %i.cm, align 8, !tbaa !19
  store i32 %.0.i.i31, ptr %i.be, align 8, !tbaa !21
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %..lr.ph.i20_crit_edge, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i33
  %i.cs = phi ptr [ %.pre53, %..lr.ph.i20_crit_edge ], [ %.0.i12.i.i30, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i33 ]
  %i.ct = sext i32 %i.bc to i64
  %i.cu = shl nsw i64 %i.ct, 2                    ; 2 uses
  %scevgep48 = getelementptr i8, ptr %i.cs, i64 %i.cu
  %i.cv = sub nsw i64 %i.az, %i.cu
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep48, i8 0, i64 %i.cv, i1 false), !tbaa !84
  br label %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit40

_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit40:  ; preds = %.lr.ph.i20, %.lr.ph.i
  store i32 %i.b, ptr %i.bb, align 4, !tbaa !20
  %i.cw = icmp sgt i32 %i.b, 0
  br i1 %i.cw, label %.lr.ph45, label %.preheader

.lr.ph45:                                         ; preds = %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit40
  %i.cx = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.cy = zext nneg i32 %i.b to i64
  %i.cz = shl nuw nsw i64 %i.cy, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cx, i8 -1, i64 %i.cz, i1 false), !tbaa !84
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !19
  %i.dc = zext nneg i32 %i.b to i64
  %i.dd = shl nuw nsw i64 %i.dc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.db, i8 -1, i64 %i.dd, i1 false), !tbaa !84
  br label %.preheader

.preheader:                                       ; preds = %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit40, %.lr.ph45
  %i.de = icmp sgt i32 %i.d, 0
  br i1 %i.de, label %.lr.ph47, label %.loopexit

.lr.ph47:                                         ; preds = %.preheader
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !62 ; 3 uses
  %i.dh = load ptr, ptr %i.aw, align 8, !tbaa !19 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !19 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter85 = and i64 %wide.trip.count, 1
  %i.dk = icmp eq i32 %i.d, 1
  br i1 %i.dk, label %.epil.preheader, label %.lr.ph47.new

.lr.ph47.new:                                     ; preds = %.lr.ph47
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph47.new
  %indvars.iv = phi i64 [ 0, %.lr.ph47.new ], [ %indvars.iv.next.1, %bb.j ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph47.new ], [ %niter.next.1, %bb.j ]
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %indvars.iv
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !92
  %i.do = load i32, ptr %i.a, align 8, !tbaa !21
  %i.dp = add nsw i32 %i.do, -1
  %i.dq = and i32 %i.dp, %i.dn
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !84
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !84
  %i.dv = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !84
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.dw = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %indvars.iv.next
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !92
  %i.dz = load i32, ptr %i.a, align 8, !tbaa !21
  %i.ea = add nsw i32 %i.dz, -1
  %i.eb = and i32 %i.ea, %i.dy
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.ec ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !84
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !84
  %i.eg = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !84
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.j, !llvm.loop !155

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph47
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod87 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.eh = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %indvars.iv.epil.init
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !92
  %i.ek = load i32, ptr %i.a, align 8, !tbaa !21
  %i.el = add nsw i32 %i.ek, -1
  %i.em = and i32 %i.el, %i.ej
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !84
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.epil.init
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !84
  %i.er = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.er, ptr %i.eo, align 4, !tbaa !84
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI12b3HashStringE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64
  %i.d = icmp slt i32 %i.c, %1
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %.split7, label %_ZN20b3AlignedObjectArrayI12b3HashStringE8allocateEi.exit

_ZN20b3AlignedObjectArrayI12b3HashStringE8allocateEi.exit: ; preds = %bb.b
  %i.e = sext i32 %1 to i64
  %i.f = mul nsw i64 %i.e, 40
  %i.g = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.f, i32 noundef 16) ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.split7, label %.split

.split:                                           ; preds = %_ZN20b3AlignedObjectArrayI12b3HashStringE8allocateEi.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !63   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %_ZN20b3AlignedObjectArrayI12b3HashStringE7destroyEii.exit

.lr.ph.i:                                         ; preds = %.split
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext = zext nneg i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN12b3HashStringC2ERKS_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN12b3HashStringC2ERKS_.exit.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %indvars.iv.i ; 7 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store ptr %i.p, ptr %i.m, align 8, !tbaa !87
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !74   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !89   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.s, ptr %i.a, align 8, !tbaa !88
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %i.m, align 8, !tbaa !74
  %i.v = load i64, ptr %i.a, align 8, !tbaa !88
  store i64 %i.v, ptr %i.p, align 8, !tbaa !75
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.w = phi ptr [ %i.u, %.noexc.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN12b3HashStringC2ERKS_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !75
  store i8 %i.x, ptr %i.w, align 1, !tbaa !75
  br label %_ZN12b3HashStringC2ERKS_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZN12b3HashStringC2ERKS_.exit.i

_ZN12b3HashStringC2ERKS_.exit.i:                  ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !89
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !92
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !92
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.af = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.af, label %_ZNK20b3AlignedObjectArrayI12b3HashStringE4copyEiiPS0_.exit, label %bb.c, !llvm.loop !156

.split7:                                          ; preds = %bb.b, %_ZN20b3AlignedObjectArrayI12b3HashStringE8allocateEi.exit
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.15)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !63
  br label %_ZN20b3AlignedObjectArrayI12b3HashStringE7destroyEii.exit

_ZNK20b3AlignedObjectArrayI12b3HashStringE4copyEiiPS0_.exit: ; preds = %_ZN12b3HashStringC2ERKS_.exit.i
  %.pre = load i32, ptr %i.i, align 4, !tbaa !63  ; 2 uses
  %i.ah = icmp sgt i32 %.pre, 0
  br i1 %i.ah, label %.lr.ph.i10, label %_ZN20b3AlignedObjectArrayI12b3HashStringE7destroyEii.exit

.lr.ph.i10:                                       ; preds = %_ZNK20b3AlignedObjectArrayI12b3HashStringE4copyEiiPS0_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext19 = zext nneg i32 %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZN12b3HashStringD2Ev.exit.i, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ 0, %.lr.ph.i10 ], [ %indvars.iv.next.i12, %_ZN12b3HashStringD2Ev.exit.i ] ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %indvars.iv.i11 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !74 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN12b3HashStringD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !75
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #25
  br label %_ZN12b3HashStringD2Ev.exit.i

_ZN12b3HashStringD2Ev.exit.i:                     ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %i.aq = icmp eq i64 %indvars.iv.next.i12, %zext19
  br i1 %i.aq, label %_ZN20b3AlignedObjectArrayI12b3HashStringE7destroyEii.exit, label %bb.f, !llvm.loop !0

_ZN20b3AlignedObjectArrayI12b3HashStringE7destroyEii.exit: ; preds = %_ZN12b3HashStringD2Ev.exit.i, %.split, %.split7, %_ZNK20b3AlignedObjectArrayI12b3HashStringE4copyEiiPS0_.exit
  %.030 = phi i32 [ 0, %.split7 ], [ %1, %_ZNK20b3AlignedObjectArrayI12b3HashStringE4copyEiiPS0_.exit ], [ %1, %.split ], [ %1, %_ZN12b3HashStringD2Ev.exit.i ]
  %.0.i1729 = phi ptr [ null, %.split7 ], [ %i.g, %_ZNK20b3AlignedObjectArrayI12b3HashStringE4copyEiiPS0_.exit ], [ %i.g, %.split ], [ %i.g, %_ZN12b3HashStringD2Ev.exit.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !62 ; 2 uses
  %.not.i15 = icmp eq ptr %i.as, null
  br i1 %.not.i15, label %_ZN20b3AlignedObjectArrayI12b3HashStringE10deallocateEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN20b3AlignedObjectArrayI12b3HashStringE7destroyEii.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i8, ptr %i.at, align 8, !tbaa !61, !range !69, !noundef !77
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %_ZN20b3AlignedObjectArrayI12b3HashStringE10deallocateEv.exit

bb.h:                                             ; preds = %bb.g
  call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.as)
  br label %_ZN20b3AlignedObjectArrayI12b3HashStringE10deallocateEv.exit

_ZN20b3AlignedObjectArrayI12b3HashStringE10deallocateEv.exit: ; preds = %bb.g, %bb.h, %_ZN20b3AlignedObjectArrayI12b3HashStringE7destroyEii.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.aw, align 8, !tbaa !61
  store ptr %.0.i1729, ptr %i.ar, align 8, !tbaa !62
  store i32 %.030, ptr %i.b, align 8, !tbaa !64
  br label %bb.i

bb.i:                                             ; preds = %_ZN20b3AlignedObjectArrayI12b3HashStringE10deallocateEv.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !76}
!1 = distinct !{!1, !76}
!2 = distinct !{!2, !76}
!3 = distinct !{!3, !76}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"_ZTS18b3AlignedAllocatorIiLj16EE"}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 int", !14, i64 0}
!16 = !{!"bool", !9, i64 0}
!17 = !{!"_ZTS20b3AlignedObjectArrayIiE", !13, i64 0, !10, i64 4, !10, i64 8, !15, i64 16, !16, i64 24}
!18 = !{!17, !16, i64 24}
!19 = !{!17, !15, i64 16}
!20 = !{!17, !10, i64 4}
!21 = !{!17, !10, i64 8}
!22 = !{!"_ZTS18b3AlignedAllocatorIN6bParse9bNameInfoELj16EE"}
!23 = !{!"p1 _ZTSN6bParse9bNameInfoE", !14, i64 0}
!24 = !{!"_ZTS20b3AlignedObjectArrayIN6bParse9bNameInfoEE", !22, i64 0, !10, i64 4, !10, i64 8, !23, i64 16, !16, i64 24}
!25 = !{!24, !16, i64 24}
!26 = !{!24, !23, i64 16}
!27 = !{!24, !10, i64 4}
!28 = !{!24, !10, i64 8}
!29 = !{!"_ZTS18b3AlignedAllocatorIPcLj16EE"}
!30 = !{!"any p2 pointer", !14, i64 0}
!31 = !{!"p2 omnipotent char", !30, i64 0}
!32 = !{!"_ZTS20b3AlignedObjectArrayIPcE", !29, i64 0, !10, i64 4, !10, i64 8, !31, i64 16, !16, i64 24}
!33 = !{!32, !16, i64 24}
!34 = !{!32, !31, i64 16}
!35 = !{!32, !10, i64 4}
!36 = !{!32, !10, i64 8}
!37 = !{!"_ZTS18b3AlignedAllocatorIPsLj16EE"}
!38 = !{!"p2 short", !30, i64 0}
!39 = !{!"_ZTS20b3AlignedObjectArrayIPsE", !37, i64 0, !10, i64 4, !10, i64 8, !38, i64 16, !16, i64 24}
!40 = !{!39, !16, i64 24}
!41 = !{!39, !38, i64 16}
!42 = !{!39, !10, i64 4}
!43 = !{!39, !10, i64 8}
!44 = !{!"_ZTS18b3AlignedAllocatorIsLj16EE"}
!45 = !{!"p1 short", !14, i64 0}
!46 = !{!"_ZTS20b3AlignedObjectArrayIsE", !44, i64 0, !10, i64 4, !10, i64 8, !45, i64 16, !16, i64 24}
!47 = !{!46, !16, i64 24}
!48 = !{!46, !45, i64 16}
!49 = !{!46, !10, i64 4}
!50 = !{!46, !10, i64 8}
!51 = !{!"_ZTS18b3AlignedAllocatorI9b3HashIntLj16EE"}
!52 = !{!"p1 _ZTS9b3HashInt", !14, i64 0}
!53 = !{!"_ZTS20b3AlignedObjectArrayI9b3HashIntE", !51, i64 0, !10, i64 4, !10, i64 8, !52, i64 16, !16, i64 24}
!54 = !{!53, !16, i64 24}
!55 = !{!53, !52, i64 16}
!56 = !{!53, !10, i64 4}
!57 = !{!53, !10, i64 8}
!58 = !{!"_ZTS18b3AlignedAllocatorI12b3HashStringLj16EE"}
!59 = !{!"p1 _ZTS12b3HashString", !14, i64 0}
!60 = !{!"_ZTS20b3AlignedObjectArrayI12b3HashStringE", !58, i64 0, !10, i64 4, !10, i64 8, !59, i64 16, !16, i64 24}
!61 = !{!60, !16, i64 24}
!62 = !{!60, !59, i64 16}
!63 = !{!60, !10, i64 4}
!64 = !{!60, !10, i64 8}
!65 = !{!"_ZTS9b3HashMapI9b3HashIntiE", !17, i64 0, !17, i64 32, !17, i64 64, !53, i64 96}
!66 = !{!"_ZTS9b3HashMapI12b3HashStringiE", !17, i64 0, !17, i64 32, !17, i64 64, !60, i64 96}
!67 = !{!"_ZTSN6bParse4bDNAE", !17, i64 0, !24, i64 32, !32, i64 64, !39, i64 96, !46, i64 128, !65, i64 160, !66, i64 288, !10, i64 416}
!68 = !{!67, !10, i64 416}
!69 = !{i8 0, i8 2}
!70 = !{!"p1 omnipotent char", !14, i64 0}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !70, i64 0}
!72 = !{!"long", !9, i64 0}
!73 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !71, i64 0, !72, i64 8, !9, i64 16}
!74 = !{!73, !70, i64 0}
!75 = !{!9, !9, i64 0}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{}
!78 = !{!"_ZTSN6bParse9bNameInfoE", !70, i64 0, !16, i64 8, !10, i64 12, !10, i64 16}
!79 = !{!78, !70, i64 0}
!80 = !{!70, !70, i64 0}
!81 = !{!45, !45, i64 0}
!82 = !{!"short", !9, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!10, !10, i64 0}
!85 = !{!"_ZTS9b3HashInt", !10, i64 0}
!86 = !{!85, !10, i64 0}
!87 = !{!71, !70, i64 0}
!88 = !{!72, !72, i64 0}
!89 = !{!73, !72, i64 8}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !{!"_ZTS12b3HashString", !73, i64 0, !10, i64 32}
!92 = !{!91, !10, i64 32}
!93 = !{!78, !16, i64 8}
!94 = !{!"llvm.loop.isvectorized", i32 1}
!95 = !{!"llvm.loop.unroll.runtime.disable"}
!96 = distinct !{!96, !90}
!97 = distinct !{!97, !76}
!98 = distinct !{!98, !76}
!99 = distinct !{!99, !76, !94, !95}
!100 = distinct !{!100, !90}
!101 = distinct !{!101, !76, !94}
!102 = distinct !{!102, !76}
!103 = distinct !{!103, !76}
!104 = distinct !{!104, !76}
!105 = distinct !{!105, !76}
!106 = distinct !{!106, !76, !94, !95}
!107 = distinct !{!107, !90}
!108 = distinct !{!108, !76, !94}
!109 = distinct !{!109, !76}
!110 = distinct !{!110, !76, !94, !95}
!111 = distinct !{!111, !76, !94, !95}
!112 = distinct !{!112, !90}
!113 = distinct !{!113, !76, !94}
!114 = distinct !{!114, !76}
!115 = distinct !{!115, !76, !94, !95}
!116 = distinct !{!116, !90}
!117 = distinct !{!117, !76, !94}
!118 = distinct !{!118, !76}
!119 = distinct !{!119, !76}
!120 = distinct !{!120, !90}
!121 = distinct !{!121, !76}
!122 = !{!"branch_weights", i32 4, i32 12}
!123 = distinct !{!123, !76}
!124 = !{!16, !16, i64 0}
!125 = !{i64 0, i64 8, !80, i64 8, i64 1, !124, i64 12, i64 4, !84, i64 16, i64 4, !84}
!126 = distinct !{!126, !76, !94, !95}
!127 = distinct !{!127, !90}
!128 = distinct !{!128, !76, !94}
!129 = distinct !{!129, !76, !94, !95}
!130 = distinct !{!130, !90}
!131 = distinct !{!131, !76, !94}
!132 = distinct !{!132, !76, !94, !95}
!133 = distinct !{!133, !90}
!134 = distinct !{!134, !76, !94}
!135 = distinct !{null}
!136 = distinct !{!136, !76}
!137 = distinct !{!137, !76, !141}
!138 = distinct !{!138, !76}
!139 = !{!78, !10, i64 12}
!140 = !{!78, !10, i64 16}
!141 = !{!"llvm.loop.peeled.count", i32 1}
!142 = distinct !{!142, !76, !94, !95}
!143 = distinct !{!143, !90}
!144 = distinct !{!144, !76, !94}
!145 = distinct !{!145, !76, !94, !95}
!146 = distinct !{!146, !90}
!147 = distinct !{!147, !76, !94}
!148 = distinct !{!148, !76}
!149 = distinct !{!149, !76, !94, !95}
!150 = distinct !{!150, !90}
!151 = distinct !{!151, !76, !94}
!152 = distinct !{!152, !76, !94, !95}
!153 = distinct !{!153, !90}
!154 = distinct !{!154, !76, !94}
!155 = distinct !{!155, !76}
!156 = distinct !{!156, !76}
end_hunk_4
