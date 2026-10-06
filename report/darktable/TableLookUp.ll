Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/TableLookUp?download=true
inline.NumInlined: 165
inline.NumDeleted: 90
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [8192 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@.str = private unnamed_addr constant [39 x i8] c"%s, line 45: Cannot construct 0 tables\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed11TableLookUpC2Eib = private unnamed_addr constant [46 x i8] c"rawspeed::TableLookUp::TableLookUp(int, bool)\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%s, line 55: Table lookup with %i entries is unsupported\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed11TableLookUp8setTableEiRKSt6vectorItSaItEE = private unnamed_addr constant [73 x i8] c"void rawspeed::TableLookUp::setTable(int, const std::vector<uint16_t> &)\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"%s, line 58: Table lookup with number greater than number of tables.\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"%s, line 89: Table lookup with number greater than number of tables.\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed11TableLookUp8getTableEi = private unnamed_addr constant [58 x i8] c"Array1DRef<uint16_t> rawspeed::TableLookUp::getTable(int)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array" zeroinitializer, comdat, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8

@_ZN8rawspeed11TableLookUpC1Eib = hidden unnamed_addr alias void (ptr, i32, i1), ptr @_ZN8rawspeed11TableLookUpC2Eib

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed11TableLookUpC2Eib(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 4), (8, 33)) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = zext i1 %2 to i8
  store i32 %1, ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.b, ptr %i.d, align 8, !tbaa !20
  %i.e = icmp slt i32 %1, 1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed11TableLookUpC2Eib) #13
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i16 0, ptr %i.a, align 2, !tbaa !22
  %i.g = shl nuw nsw i32 %1, 17
  %i.h = zext nneg i32 %i.g to i64
  invoke void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr null, i64 noundef %i.h, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
          to label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit unwind label %bb.f

_ZNSt6vectorItSaItEE6resizeEmRKt.exit:            ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.i, %bb.f ]
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #19
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #18 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.d
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed11TableLookUp8setTableEiRKSt6vectorItSaItEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = load ptr, ptr %2, align 8, !tbaa !23
  %i.d = freeze ptr %i.c                          ; 40 uses
  %.fr210 = freeze ptr %i.b
  %i.e = ptrtoint ptr %.fr210 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 7 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 11 uses
  %i.j = icmp sgt i32 %i.i, 65536
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed11TableLookUp8setTableEiRKSt6vectorItSaItEE, i32 noundef %i.i) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.l = icmp sgt i32 %1, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed11TableLookUp8setTableEiRKSt6vectorItSaItEE) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 6 uses
  %i.o = icmp sgt i32 %i.k, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ult i32 %1, %i.k
  tail call void @llvm.assume(i1 %i.p)
  %i.q = shl i32 %1, 17
  %i.r = zext i32 %i.q to i64                     ; 4 uses
  %i.s = getelementptr [2 x i8], ptr %i.n, i64 %i.r ; 32 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i8, ptr %i.t, align 8, !tbaa !20, !range !51, !noundef !52
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.preheader83, label %.preheader84

.preheader84:                                     ; preds = %bb.e
  %i.w = shl i64 %i.g, 31
  %sext = add i64 %i.w, -4294967296
  %i.x = ashr i64 %sext, 32                       ; 10 uses
  %sext101 = shl i64 %i.g, 31
  %i.y = ashr i64 %sext101, 32                    ; 9 uses
  %i.z = shl nuw nsw i64 %i.r, 1
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 131072 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 131072
  %i.ad = shl nsw i64 %i.x, 1                     ; 2 uses
  %i.ae = getelementptr i8, ptr %i.d, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.d, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.af, i64 2
  %bound0 = icmp ult ptr %i.s, %i.ac
  %bound1 = icmp ult ptr %i.d, %i.ab
  %found.conflict = and i1 %bound0, %bound1
  %bound0111 = icmp ult ptr %i.s, %i.ag
  %bound1112 = icmp ult ptr %i.ae, %i.ab
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx = or i1 %found.conflict, %found.conflict113
  br i1 %conflict.rdx, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader84
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert114 = insertelement <4 x i64> poison, i64 %i.y, i64 0
  %broadcast.splat115 = shufflevector <4 x i64> %broadcast.splatinsert114, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 6 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4) ; 2 uses
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8) ; 2 uses
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12) ; 2 uses
  %3 = icmp slt <4 x i64> %vec.ind, %broadcast.splat115
  %4 = icmp slt <4 x i64> %step.add, %broadcast.splat115
  %5 = icmp slt <4 x i64> %step.add.2, %broadcast.splat115
  %6 = icmp slt <4 x i64> %step.add.3, %broadcast.splat115
  %7 = select <4 x i1> %3, <4 x i64> %vec.ind, <4 x i64> %broadcast.splat ; 4 uses
  %8 = select <4 x i1> %4, <4 x i64> %step.add, <4 x i64> %broadcast.splat ; 4 uses
  %9 = select <4 x i1> %5, <4 x i64> %step.add.2, <4 x i64> %broadcast.splat ; 4 uses
  %10 = select <4 x i1> %6, <4 x i64> %step.add.3, <4 x i64> %broadcast.splat ; 4 uses
  %i.ah = extractelement <4 x i64> %7, i64 0
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ah
  %i.aj = extractelement <4 x i64> %7, i64 1
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aj
  %i.al = extractelement <4 x i64> %7, i64 2
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.al
  %i.an = extractelement <4 x i64> %7, i64 3
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.an
  %i.ap = extractelement <4 x i64> %8, i64 0
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ap
  %i.ar = extractelement <4 x i64> %8, i64 1
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ar
  %i.at = extractelement <4 x i64> %8, i64 2
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.at
  %i.av = extractelement <4 x i64> %8, i64 3
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.av
  %i.ax = extractelement <4 x i64> %9, i64 0
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ax
  %i.az = extractelement <4 x i64> %9, i64 1
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.az
  %i.bb = extractelement <4 x i64> %9, i64 2
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bb
  %i.bd = extractelement <4 x i64> %9, i64 3
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bd
  %i.bf = extractelement <4 x i64> %10, i64 0
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bf
  %i.bh = extractelement <4 x i64> %10, i64 1
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bh
  %i.bj = extractelement <4 x i64> %10, i64 2
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bj
  %i.bl = extractelement <4 x i64> %10, i64 3
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bl
  %i.bn = load i16, ptr %i.ai, align 2, !tbaa !22, !alias.scope !53
  %i.bo = load i16, ptr %i.ak, align 2, !tbaa !22, !alias.scope !53
  %i.bp = load i16, ptr %i.am, align 2, !tbaa !22, !alias.scope !53
  %i.bq = load i16, ptr %i.ao, align 2, !tbaa !22, !alias.scope !53
  %11 = insertelement <4 x i16> poison, i16 %i.bn, i64 0
  %12 = insertelement <4 x i16> %11, i16 %i.bo, i64 1
  %13 = insertelement <4 x i16> %12, i16 %i.bp, i64 2
  %14 = insertelement <4 x i16> %13, i16 %i.bq, i64 3
  %i.br = load i16, ptr %i.aq, align 2, !tbaa !22, !alias.scope !53
  %i.bs = load i16, ptr %i.as, align 2, !tbaa !22, !alias.scope !53
  %i.bt = load i16, ptr %i.au, align 2, !tbaa !22, !alias.scope !53
  %i.bu = load i16, ptr %i.aw, align 2, !tbaa !22, !alias.scope !53
  %15 = insertelement <4 x i16> poison, i16 %i.br, i64 0
  %16 = insertelement <4 x i16> %15, i16 %i.bs, i64 1
  %17 = insertelement <4 x i16> %16, i16 %i.bt, i64 2
  %18 = insertelement <4 x i16> %17, i16 %i.bu, i64 3
  %i.bv = load i16, ptr %i.ay, align 2, !tbaa !22, !alias.scope !53
  %i.bw = load i16, ptr %i.ba, align 2, !tbaa !22, !alias.scope !53
  %i.bx = load i16, ptr %i.bc, align 2, !tbaa !22, !alias.scope !53
  %i.by = load i16, ptr %i.be, align 2, !tbaa !22, !alias.scope !53
  %19 = insertelement <4 x i16> poison, i16 %i.bv, i64 0
  %20 = insertelement <4 x i16> %19, i16 %i.bw, i64 1
  %21 = insertelement <4 x i16> %20, i16 %i.bx, i64 2
  %22 = insertelement <4 x i16> %21, i16 %i.by, i64 3
  %23 = load i16, ptr %i.bg, align 2, !tbaa !22, !alias.scope !53
  %24 = load i16, ptr %i.bi, align 2, !tbaa !22, !alias.scope !53
  %25 = load i16, ptr %i.bk, align 2, !tbaa !22, !alias.scope !53
  %26 = load i16, ptr %i.bm, align 2, !tbaa !22, !alias.scope !53
  %27 = insertelement <4 x i16> poison, i16 %23, i64 0
  %28 = insertelement <4 x i16> %27, i16 %24, i64 1
  %29 = insertelement <4 x i16> %28, i16 %25, i64 2
  %30 = insertelement <4 x i16> %29, i16 %26, i64 3
  %31 = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index ; 4 uses
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 24
  store <4 x i16> %14, ptr %31, align 2, !tbaa !22, !alias.scope !54, !noalias !55
  store <4 x i16> %18, ptr %32, align 2, !tbaa !22, !alias.scope !54, !noalias !55
  store <4 x i16> %22, ptr %33, align 2, !tbaa !22, !alias.scope !54, !noalias !55
  store <4 x i16> %30, ptr %34, align 2, !tbaa !22, !alias.scope !54, !noalias !55
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.bz = icmp eq i64 %index.next, 65536
  br i1 %i.bz, label %.loopexit, label %vector.body, !llvm.loop !36

.preheader83:                                     ; preds = %bb.e
  %i.ca = icmp sgt i32 %i.i, 0
  br i1 %i.ca, label %bb.f, label %iter.check188

bb.f:                                             ; preds = %.preheader83
  %i.cb = add nuw i64 %i.h, 4294967295
  %i.cc = and i64 %i.cb, 4294967295               ; 6 uses
  %wide.trip.count = and i64 %i.h, 2147483647     ; 6 uses
  %i.cd = load i16, ptr %i.d, align 2, !tbaa !22  ; 2 uses
  %i.ce = zext i16 %i.cd to i32                   ; 3 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !22
  %i.ch = tail call i16 @llvm.umax.i16(i16 %i.cg, i16 %i.cd)
  %i.ci = zext i16 %i.ch to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.speculated.peel = phi i32 [ %i.ci, %bb.g ], [ %i.ce, %bb.f ]
  %i.cj = sub nsw i32 %.sroa.speculated.peel, %i.ce ; 3 uses
  %i.ck = icmp sgt i32 %i.cj, -1
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = add nuw nsw i32 %i.cj, 2
  %i.cm = lshr i32 %i.cl, 2
  %i.cn = sub nsw i32 %i.ce, %i.cm
  %.sroa.speculate.load.false.sroa.speculated.i.peel = tail call i32 @llvm.smax.i32(i32 %i.cn, i32 0)
  %i.co = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i.peel to i16
  store i16 %i.co, ptr %i.s, align 2, !tbaa !22
  %i.cp = trunc nuw i32 %i.cj to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !22
  %exitcond96.peel.not = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond96.peel.not, label %.preheader, label %iter.check

iter.check:                                       ; preds = %bb.h
  %i.cr = add nsw i64 %wide.trip.count, -1        ; 7 uses
  %min.iters.check = icmp ult i64 %i.cr, 4
  br i1 %min.iters.check, label %.peel.next.preheader, label %vector.memcheck123

vector.memcheck123:                               ; preds = %iter.check
  %i.cs = shl nuw nsw i64 %i.r, 1                 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.n, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 4
  %i.cv = shl nuw nsw i64 %wide.trip.count, 2
  %i.cw = getelementptr i8, ptr %i.n, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.cs
  %i.cy = shl nuw nsw i64 %wide.trip.count, 1
  %i.cz = getelementptr i8, ptr %i.d, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 2
  %bound0124 = icmp ult ptr %i.cu, %i.da
  %bound1125 = icmp ult ptr %i.d, %i.cx
  %found.conflict126 = and i1 %bound0124, %bound1125
  br i1 %found.conflict126, label %.peel.next.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck123
  %min.iters.check127 = icmp ult i64 %i.cr, 16
  br i1 %min.iters.check127, label %vec.epilog.ph, label %vector.ph128

vector.ph128:                                     ; preds = %vector.main.loop.iter.check
  %i.db = and i64 %i.cr, 12
  %n.vec = and i64 %i.cr, -16                     ; 4 uses
  %i.dc = or disjoint i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert129 = insertelement <16 x i64> poison, i64 %i.cc, i64 0
  %broadcast.splat130 = shufflevector <16 x i64> %broadcast.splatinsert129, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body131

vector.body131:                                   ; preds = %vector.ph128, %vector.body131
  %index132 = phi i64 [ 0, %vector.ph128 ], [ %index.next135, %vector.body131 ] ; 2 uses
  %vec.ind133 = phi <16 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16>, %vector.ph128 ], [ %vec.ind.next136, %vector.body131 ] ; 2 uses
  %i.dd = or disjoint i64 %index132, 1            ; 2 uses
  %i.de = getelementptr [2 x i8], ptr %i.d, i64 %i.dd ; 3 uses
  %wide.load = load <16 x i16>, ptr %i.de, align 2, !tbaa !22, !alias.scope !56 ; 3 uses
  %i.df = zext <16 x i16> %wide.load to <16 x i32> ; 2 uses
  %i.dg = getelementptr i8, ptr %i.de, i64 -2
  %wide.load134 = load <16 x i16>, ptr %i.dg, align 2, !tbaa !22, !alias.scope !56
  %i.dh = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %wide.load134, <16 x i16> %wide.load)
  %i.di = zext <16 x i16> %i.dh to <16 x i32>
  %i.dj = icmp samesign ult <16 x i64> %vec.ind133, %broadcast.splat130 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.de, i64 2
  %wide.masked.load = tail call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 2 %i.dk, <16 x i1> %i.dj, <16 x i16> poison), !tbaa !22, !alias.scope !56
  %i.dl = tail call <16 x i16> @llvm.umax.v16i16(<16 x i16> %wide.masked.load, <16 x i16> %wide.load)
  %i.dm = zext <16 x i16> %i.dl to <16 x i32>
  %predphi = select <16 x i1> %i.dj, <16 x i32> %i.dm, <16 x i32> %i.df
  %i.dn = sub nsw <16 x i32> %predphi, %i.di      ; 2 uses
  %i.do = add nuw nsw <16 x i32> %i.dn, splat (i32 2)
  %i.dp = lshr <16 x i32> %i.do, splat (i32 2)
  %i.dq = sub nsw <16 x i32> %i.df, %i.dp
  %i.dr = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.dq, <16 x i32> zeroinitializer)
  %i.ds = trunc nuw <16 x i32> %i.dr to <16 x i16>
  %i.dt = shl nuw nsw i64 %i.dd, 2
  %i.du = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.dt
  %i.dv = trunc nuw <16 x i32> %i.dn to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.ds, <16 x i16> %i.dv, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.du, align 2, !tbaa !22, !alias.scope !57, !noalias !56
  %index.next135 = add nuw i64 %index132, 16      ; 2 uses
  %vec.ind.next136 = add nuw nsw <16 x i64> %vec.ind133, splat (i64 16)
  %i.dw = icmp eq i64 %index.next135, %n.vec
  br i1 %i.dw, label %middle.block137, label %vector.body131, !llvm.loop !40

middle.block137:                                  ; preds = %vector.body131
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block137
  %min.epilog.iters.check = icmp eq i64 %i.db, 0
  br i1 %min.epilog.iters.check, label %.peel.next.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.dc, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec138 = and i64 %i.cr, -4                   ; 3 uses
  %i.dx = or disjoint i64 %n.vec138, 1
  %broadcast.splatinsert139 = insertelement <4 x i64> poison, i64 %i.cc, i64 0
  %broadcast.splat140 = shufflevector <4 x i64> %broadcast.splatinsert139, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat142 = shufflevector <4 x i64> %broadcast.splatinsert141, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat142, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index143 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next150, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind144 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next151, %vec.epilog.vector.body ] ; 2 uses
  %i.dy = or disjoint i64 %index143, 1            ; 2 uses
  %i.dz = getelementptr [2 x i8], ptr %i.d, i64 %i.dy ; 3 uses
  %wide.load145 = load <4 x i16>, ptr %i.dz, align 2, !tbaa !22, !alias.scope !56 ; 3 uses
  %i.ea = zext <4 x i16> %wide.load145 to <4 x i32> ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dz, i64 -2
  %wide.load146 = load <4 x i16>, ptr %i.eb, align 2, !tbaa !22, !alias.scope !56
  %i.ec = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load146, <4 x i16> %wide.load145)
  %i.ed = zext <4 x i16> %i.ec to <4 x i32>
  %i.ee = icmp ult <4 x i64> %vec.ind144, %broadcast.splat140 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dz, i64 2
  %wide.masked.load147 = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr align 2 %i.ef, <4 x i1> %i.ee, <4 x i16> poison), !tbaa !22, !alias.scope !56
  %i.eg = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.masked.load147, <4 x i16> %wide.load145)
  %i.eh = zext <4 x i16> %i.eg to <4 x i32>
  %predphi148 = select <4 x i1> %i.ee, <4 x i32> %i.eh, <4 x i32> %i.ea
  %i.ei = sub nsw <4 x i32> %predphi148, %i.ed    ; 2 uses
  %i.ej = add nuw nsw <4 x i32> %i.ei, splat (i32 2)
  %i.ek = lshr <4 x i32> %i.ej, splat (i32 2)
  %i.el = sub nsw <4 x i32> %i.ea, %i.ek
  %i.em = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.el, <4 x i32> zeroinitializer)
  %i.en = shl nuw nsw i64 %i.dy, 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.en
  %i.ep = shufflevector <4 x i32> %i.em, <4 x i32> %i.ei, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec149 = trunc nuw <8 x i32> %i.ep to <8 x i16>
  store <8 x i16> %interleaved.vec149, ptr %i.eo, align 2, !tbaa !22, !alias.scope !57, !noalias !56
  %index.next150 = add nuw i64 %index143, 4       ; 2 uses
  %vec.ind.next151 = add nuw nsw <4 x i64> %vec.ind144, splat (i64 4)
  %i.eq = icmp eq i64 %index.next150, %n.vec138
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n152 = icmp eq i64 %i.cr, %n.vec138
  br i1 %cmp.n152, label %.preheader, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %iter.check, %vector.memcheck123, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv93.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck123 ], [ %i.dc, %vec.epilog.iter.check ], [ %i.dx, %vec.epilog.middle.block ] ; 7 uses
  %.neg = add nsw i64 %indvars.iv93.ph, 1
  %i.er = and i64 %i.g, 2
  %lcmp.mod.not.not = icmp eq i64 %i.er, 0
  br i1 %lcmp.mod.not.not, label %.peel.next.prol, label %.peel.next.prol.loopexit

.peel.next.prol:                                  ; preds = %.peel.next.preheader
  %i.es = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv93.ph ; 3 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !22 ; 3 uses
  %i.eu = zext i16 %i.et to i32                   ; 2 uses
  %i.ev = getelementptr i8, ptr %i.es, i64 -2
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !22
  %i.ex = tail call i16 @llvm.umin.i16(i16 %i.ew, i16 %i.et)
  %i.ey = zext i16 %i.ex to i32
  %i.ez = icmp samesign ult i64 %indvars.iv93.ph, %i.cc
  br i1 %i.ez, label %bb.i, label %.peel.next.prol.loopexit.unr-lcssa

bb.i:                                             ; preds = %.peel.next.prol
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !22
  %i.fc = tail call i16 @llvm.umax.i16(i16 %i.fb, i16 %i.et)
  %i.fd = zext i16 %i.fc to i32
  br label %.peel.next.prol.loopexit.unr-lcssa

.peel.next.prol.loopexit.unr-lcssa:               ; preds = %bb.i, %.peel.next.prol
  %.sroa.speculated.prol = phi i32 [ %i.fd, %bb.i ], [ %i.eu, %.peel.next.prol ]
  %i.fe = sub nsw i32 %.sroa.speculated.prol, %i.ey ; 3 uses
  %i.ff = icmp sgt i32 %i.fe, -1
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = add nuw nsw i32 %i.fe, 2
  %i.fh = lshr i32 %i.fg, 2
  %i.fi = sub nsw i32 %i.eu, %i.fh
  %.sroa.speculate.load.false.sroa.speculated.i.prol = tail call i32 @llvm.smax.i32(i32 %i.fi, i32 0)
  %i.fj = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i.prol to i16
  %i.fk = icmp samesign ult i64 %indvars.iv93.ph, 65536
  tail call void @llvm.assume(i1 %i.fk)
  %.idx.prol = shl nuw nsw i64 %indvars.iv93.ph, 2
  %i.fl = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.prol ; 2 uses
end_hunk_0
