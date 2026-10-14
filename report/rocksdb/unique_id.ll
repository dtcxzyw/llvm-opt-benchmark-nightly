Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/unique_id?download=true
inline.NumInlined: 269
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.rocksdb::Status" = type { i8, i8, i8, i8, i8, i8, %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.rocksdb::Slice" = type { ptr, i64 }
%"struct.std::array" = type { [3 x i64] }
%"struct.std::array.5" = type { [2 x i64] }

$_ZN7rocksdb36GetUniqueIdFromTablePropertiesHelperISt5arrayImLm3EEEENS_6StatusERKNS_15TablePropertiesEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN7rocksdb36GetUniqueIdFromTablePropertiesHelperISt5arrayImLm2EEEENS_6StatusERKNS_15TablePropertiesEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

@.str = private unnamed_addr constant [22 x i8] c"Missing db_session_id\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Too short db_session_id\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Too long db_session_id\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Bad digit in db_session_id\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Missing db_id\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Missing or bad file number\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Not a valid unique_id\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.13 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb15EncodeSessionIdB5cxx11Emm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !12
  %i.b = tail call noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #10 ; 22 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !15
  store i64 20, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 20, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 0, ptr %i.d, align 1, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.t = tail call i64 @llvm.fshl.i64(i64 %1, i64 %2, i64 2) ; 8 uses
  %3 = udiv i64 %i.t, 36
  %4 = udiv i64 %i.t, 1296
  %5 = udiv i64 %i.t, 46656
  %6 = insertelement <4 x i64> poison, i64 %i.t, i64 0
  %7 = insertelement <4 x i64> %6, i64 %3, i64 1
  %8 = insertelement <4 x i64> %7, i64 %4, i64 2
  %9 = insertelement <4 x i64> %8, i64 %5, i64 3
  %10 = urem <4 x i64> %9, splat (i64 36)         ; 4 uses
  %11 = extractelement <4 x i64> %10, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr @.str.14, i64 %11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  store i8 %i.v, ptr %i.e, align 1, !tbaa !16
  %12 = extractelement <4 x i64> %10, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr @.str.14, i64 %12
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  store i8 %i.x, ptr %i.f, align 1, !tbaa !16
  %13 = extractelement <4 x i64> %10, i64 2
  %14 = getelementptr inbounds nuw i8, ptr @.str.14, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !16
  store i8 %15, ptr %i.g, align 1, !tbaa !16
  %16 = extractelement <4 x i64> %10, i64 3
  %i.y = getelementptr inbounds nuw i8, ptr @.str.14, i64 %16
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  store i8 %i.z, ptr %i.h, align 1, !tbaa !16
  %i.aa = udiv i64 %i.t, 1679616
  %i.ab = urem i64 %i.aa, 36
  %i.ac = getelementptr inbounds nuw i8, ptr @.str.14, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  store i8 %i.ad, ptr %i.i, align 1, !tbaa !16
  %i.ae = udiv i64 %i.t, 60466176
  %i.af = urem i64 %i.ae, 36
  %i.ag = getelementptr inbounds nuw i8, ptr @.str.14, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  store i8 %i.ah, ptr %i.j, align 1, !tbaa !16
  %i.ai = udiv i64 %i.t, 2176782336
  %i.aj = urem i64 %i.ai, 36
  %i.ak = getelementptr inbounds nuw i8, ptr @.str.14, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  store i8 %i.al, ptr %i.k, align 1, !tbaa !16
  %i.am = udiv i64 %i.t, 78364164096
  %.lhs.trunc = trunc nuw nsw i64 %i.am to i32
  %17 = insertelement <4 x i32> poison, i32 %.lhs.trunc, i64 0
  %i.an = and i64 %2, 4611686018427387903         ; 12 uses
  %i.ao = udiv i64 %i.an, 2176782336
  %.lhs.trunc15 = trunc nuw nsw i64 %i.ao to i32
  %i.ap = udiv i64 %i.an, 78364164096
  %.lhs.trunc17 = trunc nuw nsw i64 %i.ap to i32
  %i.aq = udiv i64 %i.an, 2821109907456
  %.lhs.trunc19 = trunc nuw nsw i64 %i.aq to i32
  %i.ar = insertelement <4 x i32> %17, i32 %.lhs.trunc15, i64 1
  %i.as = insertelement <4 x i32> %i.ar, i32 %.lhs.trunc17, i64 2
  %i.at = insertelement <4 x i32> %i.as, i32 %.lhs.trunc19, i64 3
  %i.au = urem <4 x i32> %i.at, splat (i32 36)    ; 4 uses
  %i.av = extractelement <4 x i32> %i.au, i64 0
  %.zext = zext nneg i32 %i.av to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @.str.14, i64 %.zext
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  store i8 %i.ax, ptr %i.b, align 1, !tbaa !16
  %18 = udiv i64 %i.an, 36
  %19 = udiv i64 %i.an, 1296
  %20 = udiv i64 %i.an, 46656
  %21 = insertelement <4 x i64> poison, i64 %i.an, i64 0
  %22 = insertelement <4 x i64> %21, i64 %18, i64 1
  %23 = insertelement <4 x i64> %22, i64 %19, i64 2
  %24 = insertelement <4 x i64> %23, i64 %20, i64 3
  %25 = urem <4 x i64> %24, splat (i64 36)        ; 4 uses
  %26 = extractelement <4 x i64> %25, i64 0
  %i.ay = getelementptr inbounds nuw i8, ptr @.str.14, i64 %26
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  store i8 %i.az, ptr %i.l, align 1, !tbaa !16
  %27 = extractelement <4 x i64> %25, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr @.str.14, i64 %27
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  store i8 %i.bb, ptr %i.m, align 1, !tbaa !16
  %28 = extractelement <4 x i64> %25, i64 2
  %29 = getelementptr inbounds nuw i8, ptr @.str.14, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !16
  store i8 %30, ptr %i.n, align 1, !tbaa !16
  %31 = extractelement <4 x i64> %25, i64 3
  %i.bc = getelementptr inbounds nuw i8, ptr @.str.14, i64 %31
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !16
  store i8 %i.bd, ptr %i.o, align 1, !tbaa !16
  %i.be = udiv i64 %i.an, 1679616
  %i.bf = urem i64 %i.be, 36
  %i.bg = getelementptr inbounds nuw i8, ptr @.str.14, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16
  store i8 %i.bh, ptr %i.p, align 1, !tbaa !16
  %i.bi = udiv i64 %i.an, 60466176
  %i.bj = urem i64 %i.bi, 36
  %i.bk = getelementptr inbounds nuw i8, ptr @.str.14, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !16
  store i8 %i.bl, ptr %i.q, align 1, !tbaa !16
  %i.bm = extractelement <4 x i32> %i.au, i64 1
  %.zext16 = zext nneg i32 %i.bm to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @.str.14, i64 %.zext16
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !16
  store i8 %i.bo, ptr %i.r, align 1, !tbaa !16
  %i.bp = extractelement <4 x i32> %i.au, i64 2
  %.zext18 = zext nneg i32 %i.bp to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @.str.14, i64 %.zext18
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !16
  store i8 %i.br, ptr %i.s, align 1, !tbaa !16
  %i.bs = extractelement <4 x i32> %i.au, i64 3
  %.zext20 = zext nneg i32 %i.bs to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @.str.14, i64 %.zext20
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !16
  %i.bw = udiv i64 %i.an, 101559956668416
  %.lhs.trunc21 = trunc nuw i64 %i.bw to i16
  %i.bx = urem i16 %.lhs.trunc21, 36
  %.zext22 = zext nneg i16 %i.bx to i64
  %i.by = getelementptr inbounds nuw i8, ptr @.str.14, i64 %.zext22
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !16
  %i.cb = udiv i64 %i.an, 3656158440062976
  %.lhs.trunc23 = trunc nuw nsw i64 %i.cb to i16
  %i.cc = urem i16 %.lhs.trunc23, 36
  %.zext24 = zext nneg i16 %i.cc to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @.str.14, i64 %.zext24
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !16
  %i.cg = udiv i64 %i.an, 131621703842267136
  %i.ch = getelementptr inbounds nuw i8, ptr @.str.14, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb15DecodeSessionIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmS8_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr @.str, ptr %4, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 21, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr @.str.11, ptr %5, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !20
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %i.b, 13
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr @.str.1, ptr %6, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 23, ptr %i.g, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr @.str.11, ptr %7, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !20
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.ai

bb.e:                                             ; preds = %bb.c
  %i.i = icmp ugt i64 %i.b, 24
  br i1 %i.i, label %bb.f, label %.lr.ph.preheader.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr @.str.2, ptr %8, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 22, ptr %i.j, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr @.str.11, ptr %9, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !20
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.ai

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.l = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.m = add nsw i64 %i.b, -12                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.m ; 12 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %i.n = phi i64 [ %i.w, %bb.i ], [ 0, %.lr.ph.preheader.i ]
  %i.o = phi ptr [ %i.y, %bb.i ], [ %i.l, %.lr.ph.preheader.i ] ; 2 uses
  %.02734.i = phi i64 [ %i.x, %bb.i ], [ %i.m, %.lr.ph.preheader.i ]
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16    ; 4 uses
  %i.q = mul i64 %i.n, 36
  %i.r = zext nneg i8 %i.p to i64
  %i.s = add i8 %i.p, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.t = add i8 %i.p, -65
  %or.cond5.i = icmp ult i8 %i.t, 26
  br i1 %or.cond5.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i8 %i.p, -97
  %or.cond8.i = icmp ult i8 %i.u, 26
  br i1 %or.cond8.i, label %bb.i, label %_ZN7rocksdb14ParseBaseCharsILi36EEEbPPKcmPm.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.i
  %.sink41.i = phi i64 [ -48, %.lr.ph.i ], [ -55, %bb.g ], [ -87, %bb.h ]
  %i.v = add nsw i64 %.sink41.i, %i.r             ; 2 uses
  %i.w = add i64 %i.v, %i.q                       ; 2 uses
  %i.x = add nsw i64 %.02734.i, -1                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %.lr.ph.i12.preheader, label %.lr.ph.i

.lr.ph.i12.preheader:                             ; preds = %bb.i
  %i.z = load i8, ptr %scevgep, align 1, !tbaa !16 ; 4 uses
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = add i8 %i.z, -48
  %or.cond.i14 = icmp ult i8 %i.ab, 10
  br i1 %or.cond.i14, label %.lr.ph.i12.1, label %bb.j

_ZN7rocksdb14ParseBaseCharsILi36EEEbPPKcmPm.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store ptr @.str.3, ptr %10, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 26, ptr %i.ac, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store ptr @.str.11, ptr %11, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !20
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.ai

bb.j:                                             ; preds = %.lr.ph.i12.preheader
  %i.ae = add i8 %i.z, -65
  %or.cond5.i15 = icmp ult i8 %i.ae, 26
  br i1 %or.cond5.i15, label %.lr.ph.i12.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add i8 %i.z, -97
  %or.cond8.i16 = icmp ult i8 %i.af, 26
  br i1 %or.cond8.i16, label %.lr.ph.i12.1, label %_ZN7rocksdb14ParseBaseCharsILi36EEEbPPKcmPm.exit20

.lr.ph.i12.1:                                     ; preds = %bb.k, %bb.j, %.lr.ph.i12.preheader
  %.sink41.i18 = phi i64 [ -48, %.lr.ph.i12.preheader ], [ -55, %bb.j ], [ -87, %bb.k ]
  %i.ag = add nsw i64 %.sink41.i18, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %scevgep, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16  ; 4 uses
end_hunk_0
