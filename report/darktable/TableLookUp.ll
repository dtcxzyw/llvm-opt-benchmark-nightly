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
  %.fr213 = freeze ptr %i.b
  %i.e = ptrtoint ptr %.fr213 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 4 uses
  %i.i = trunc i64 %i.h to i32                    ; 4 uses
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
  %i.ah = icmp slt <4 x i64> %vec.ind, %broadcast.splat115
  %i.ai = icmp slt <4 x i64> %step.add, %broadcast.splat115
  %i.aj = icmp slt <4 x i64> %step.add.2, %broadcast.splat115
  %i.ak = icmp slt <4 x i64> %step.add.3, %broadcast.splat115
  %i.al = select <4 x i1> %i.ah, <4 x i64> %vec.ind, <4 x i64> %broadcast.splat ; 4 uses
  %i.am = select <4 x i1> %i.ai, <4 x i64> %step.add, <4 x i64> %broadcast.splat ; 4 uses
  %i.an = select <4 x i1> %i.aj, <4 x i64> %step.add.2, <4 x i64> %broadcast.splat ; 4 uses
  %i.ao = select <4 x i1> %i.ak, <4 x i64> %step.add.3, <4 x i64> %broadcast.splat ; 4 uses
  %i.ap = extractelement <4 x i64> %i.al, i64 0
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ap
  %i.ar = extractelement <4 x i64> %i.al, i64 1
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ar
  %i.at = extractelement <4 x i64> %i.al, i64 2
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.at
  %i.av = extractelement <4 x i64> %i.al, i64 3
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.av
  %i.ax = extractelement <4 x i64> %i.am, i64 0
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ax
  %i.az = extractelement <4 x i64> %i.am, i64 1
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.az
  %i.bb = extractelement <4 x i64> %i.am, i64 2
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bb
  %i.bd = extractelement <4 x i64> %i.am, i64 3
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bd
  %i.bf = extractelement <4 x i64> %i.an, i64 0
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bf
  %i.bh = extractelement <4 x i64> %i.an, i64 1
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bh
  %i.bj = extractelement <4 x i64> %i.an, i64 2
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bj
  %i.bl = extractelement <4 x i64> %i.an, i64 3
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bl
  %i.bn = extractelement <4 x i64> %i.ao, i64 0
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bn
  %i.bp = extractelement <4 x i64> %i.ao, i64 1
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bp
  %i.br = extractelement <4 x i64> %i.ao, i64 2
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.br
  %i.bt = extractelement <4 x i64> %i.ao, i64 3
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bt
  %i.bv = load i16, ptr %i.aq, align 2, !tbaa !22, !alias.scope !53
  %i.bw = load i16, ptr %i.as, align 2, !tbaa !22, !alias.scope !53
  %i.bx = load i16, ptr %i.au, align 2, !tbaa !22, !alias.scope !53
  %i.by = load i16, ptr %i.aw, align 2, !tbaa !22, !alias.scope !53
  %i.bz = insertelement <4 x i16> poison, i16 %i.bv, i64 0
  %i.ca = insertelement <4 x i16> %i.bz, i16 %i.bw, i64 1
  %i.cb = insertelement <4 x i16> %i.ca, i16 %i.bx, i64 2
  %i.cc = insertelement <4 x i16> %i.cb, i16 %i.by, i64 3
  %i.cd = load i16, ptr %i.ay, align 2, !tbaa !22, !alias.scope !53
  %i.ce = load i16, ptr %i.ba, align 2, !tbaa !22, !alias.scope !53
  %i.cf = load i16, ptr %i.bc, align 2, !tbaa !22, !alias.scope !53
  %i.cg = load i16, ptr %i.be, align 2, !tbaa !22, !alias.scope !53
  %i.ch = insertelement <4 x i16> poison, i16 %i.cd, i64 0
  %i.ci = insertelement <4 x i16> %i.ch, i16 %i.ce, i64 1
  %i.cj = insertelement <4 x i16> %i.ci, i16 %i.cf, i64 2
  %i.ck = insertelement <4 x i16> %i.cj, i16 %i.cg, i64 3
  %i.cl = load i16, ptr %i.bg, align 2, !tbaa !22, !alias.scope !53
  %i.cm = load i16, ptr %i.bi, align 2, !tbaa !22, !alias.scope !53
  %i.cn = load i16, ptr %i.bk, align 2, !tbaa !22, !alias.scope !53
  %i.co = load i16, ptr %i.bm, align 2, !tbaa !22, !alias.scope !53
  %i.cp = insertelement <4 x i16> poison, i16 %i.cl, i64 0
  %i.cq = insertelement <4 x i16> %i.cp, i16 %i.cm, i64 1
  %i.cr = insertelement <4 x i16> %i.cq, i16 %i.cn, i64 2
  %i.cs = insertelement <4 x i16> %i.cr, i16 %i.co, i64 3
  %i.ct = load i16, ptr %i.bo, align 2, !tbaa !22, !alias.scope !53
  %i.cu = load i16, ptr %i.bq, align 2, !tbaa !22, !alias.scope !53
  %i.cv = load i16, ptr %i.bs, align 2, !tbaa !22, !alias.scope !53
  %i.cw = load i16, ptr %i.bu, align 2, !tbaa !22, !alias.scope !53
  %i.cx = insertelement <4 x i16> poison, i16 %i.ct, i64 0
  %i.cy = insertelement <4 x i16> %i.cx, i16 %i.cu, i64 1
  %i.cz = insertelement <4 x i16> %i.cy, i16 %i.cv, i64 2
  %i.da = insertelement <4 x i16> %i.cz, i16 %i.cw, i64 3
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store <4 x i16> %i.cc, ptr %i.db, align 2, !tbaa !22, !alias.scope !54, !noalias !55
  store <4 x i16> %i.ck, ptr %i.dc, align 2, !tbaa !22, !alias.scope !54, !noalias !55
  store <4 x i16> %i.cs, ptr %i.dd, align 2, !tbaa !22, !alias.scope !54, !noalias !55
  store <4 x i16> %i.da, ptr %i.de, align 2, !tbaa !22, !alias.scope !54, !noalias !55
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.df = icmp eq i64 %index.next, 65536
  br i1 %i.df, label %.loopexit, label %vector.body, !llvm.loop !36

.preheader83:                                     ; preds = %bb.e
  %i.dg = icmp sgt i32 %i.i, 0
  br i1 %i.dg, label %bb.f, label %iter.check189

bb.f:                                             ; preds = %.preheader83
  %i.dh = add nuw i64 %i.h, 4294967295
  %i.di = and i64 %i.dh, 4294967295               ; 6 uses
  %wide.trip.count = and i64 %i.h, 2147483647     ; 6 uses
  %i.dj = load i16, ptr %i.d, align 2, !tbaa !22  ; 2 uses
  %i.dk = zext i16 %i.dj to i32                   ; 3 uses
  %.not = icmp eq i64 %i.di, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !22
  %i.dn = tail call i16 @llvm.umax.i16(i16 %i.dm, i16 %i.dj)
  %i.do = zext i16 %i.dn to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.speculated.peel = phi i32 [ %i.do, %bb.g ], [ %i.dk, %bb.f ]
  %i.dp = sub nsw i32 %.sroa.speculated.peel, %i.dk ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i32 %i.dp, 2
  %i.ds = lshr i32 %i.dr, 2
  %i.dt = sub nsw i32 %i.dk, %i.ds
  %.sroa.speculate.load.false.sroa.speculated.i.peel = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 0)
  %i.du = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i.peel to i16
  store i16 %i.du, ptr %i.s, align 2, !tbaa !22
  %i.dv = trunc nuw i32 %i.dp to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !22
  %exitcond96.peel.not = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond96.peel.not, label %.preheader, label %iter.check

iter.check:                                       ; preds = %bb.h
  %i.dx = add nsw i64 %wide.trip.count, -1        ; 7 uses
  %min.iters.check = icmp ult i64 %i.dx, 4
  br i1 %min.iters.check, label %.peel.next.preheader, label %vector.memcheck123

vector.memcheck123:                               ; preds = %iter.check
  %i.dy = shl nuw nsw i64 %i.r, 1                 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.n, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 4
  %i.eb = shl nuw nsw i64 %wide.trip.count, 2
  %i.ec = getelementptr i8, ptr %i.n, i64 %i.eb
end_hunk_0
begin_hunk_1_@_ZN8rawspeed11TableLookUp8setTableEiRKSt6vectorItSaItEE:bb.a
  %i.eo = zext <16 x i16> %i.en to <16 x i32>
  %i.ep = icmp samesign ult <16 x i64> %vec.ind133, %broadcast.splat130 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ek, i64 2
  %wide.masked.load = tail call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 2 %i.eq, <16 x i1> %i.ep, <16 x i16> poison), !tbaa !22, !alias.scope !56
  %i.er = tail call <16 x i16> @llvm.umax.v16i16(<16 x i16> %wide.masked.load, <16 x i16> %wide.load)
  %i.es = zext <16 x i16> %i.er to <16 x i32>
  %predphi = select <16 x i1> %i.ep, <16 x i32> %i.es, <16 x i32> %i.el
  %i.et = sub nsw <16 x i32> %predphi, %i.eo      ; 2 uses
  %i.eu = add nuw nsw <16 x i32> %i.et, splat (i32 2)
  %i.ev = lshr <16 x i32> %i.eu, splat (i32 2)
  %i.ew = sub nsw <16 x i32> %i.el, %i.ev
  %i.ex = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ew, <16 x i32> zeroinitializer)
  %i.ey = trunc nuw <16 x i32> %i.ex to <16 x i16>
  %i.ez = shl nuw nsw i64 %i.ej, 2
  %i.fa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ez
  %i.fb = trunc nuw <16 x i32> %i.et to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.ey, <16 x i16> %i.fb, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.fa, align 2, !tbaa !22, !alias.scope !57, !noalias !56
  %index.next135 = add nuw i64 %index132, 16      ; 2 uses
  %vec.ind.next136 = add nuw nsw <16 x i64> %vec.ind133, splat (i64 16)
  %i.fc = icmp eq i64 %index.next135, %n.vec
  br i1 %i.fc, label %middle.block137, label %vector.body131, !llvm.loop !40

middle.block137:                                  ; preds = %vector.body131
  %cmp.n = icmp eq i64 %i.dx, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block137
  %min.epilog.iters.check = icmp eq i64 %i.eh, 0
  br i1 %min.epilog.iters.check, label %.peel.next.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.ei, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec138 = and i64 %i.dx, -4                   ; 3 uses
  %i.fd = or disjoint i64 %n.vec138, 1
  %broadcast.splatinsert139 = insertelement <4 x i64> poison, i64 %i.di, i64 0
  %broadcast.splat140 = shufflevector <4 x i64> %broadcast.splatinsert139, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat142 = shufflevector <4 x i64> %broadcast.splatinsert141, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat142, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index143 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next150, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind144 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next151, %vec.epilog.vector.body ] ; 2 uses
  %i.fe = or disjoint i64 %index143, 1            ; 2 uses
  %i.ff = getelementptr [2 x i8], ptr %i.d, i64 %i.fe ; 3 uses
  %wide.load145 = load <4 x i16>, ptr %i.ff, align 2, !tbaa !22, !alias.scope !56 ; 3 uses
  %i.fg = zext <4 x i16> %wide.load145 to <4 x i32> ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ff, i64 -2
  %wide.load146 = load <4 x i16>, ptr %i.fh, align 2, !tbaa !22, !alias.scope !56
  %i.fi = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load146, <4 x i16> %wide.load145)
  %i.fj = zext <4 x i16> %i.fi to <4 x i32>
  %i.fk = icmp ult <4 x i64> %vec.ind144, %broadcast.splat140 ; 2 uses
  %i.fl = getelementptr i8, ptr %i.ff, i64 2
  %wide.masked.load147 = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr align 2 %i.fl, <4 x i1> %i.fk, <4 x i16> poison), !tbaa !22, !alias.scope !56
  %i.fm = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.masked.load147, <4 x i16> %wide.load145)
  %i.fn = zext <4 x i16> %i.fm to <4 x i32>
  %predphi148 = select <4 x i1> %i.fk, <4 x i32> %i.fn, <4 x i32> %i.fg
  %i.fo = sub nsw <4 x i32> %predphi148, %i.fj    ; 2 uses
  %i.fp = add nuw nsw <4 x i32> %i.fo, splat (i32 2)
  %i.fq = lshr <4 x i32> %i.fp, splat (i32 2)
  %i.fr = sub nsw <4 x i32> %i.fg, %i.fq
  %i.fs = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fr, <4 x i32> zeroinitializer)
  %i.ft = shl nuw nsw i64 %i.fe, 2
  %i.fu = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ft
  %i.fv = shufflevector <4 x i32> %i.fs, <4 x i32> %i.fo, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec149 = trunc nuw <8 x i32> %i.fv to <8 x i16>
  store <8 x i16> %interleaved.vec149, ptr %i.fu, align 2, !tbaa !22, !alias.scope !57, !noalias !56
  %index.next150 = add nuw i64 %index143, 4       ; 2 uses
  %vec.ind.next151 = add nuw nsw <4 x i64> %vec.ind144, splat (i64 4)
  %i.fw = icmp eq i64 %index.next150, %n.vec138
  br i1 %i.fw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n152 = icmp eq i64 %i.dx, %n.vec138
  br i1 %cmp.n152, label %.preheader, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %iter.check, %vector.memcheck123, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv93.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck123 ], [ %i.ei, %vec.epilog.iter.check ], [ %i.fd, %vec.epilog.middle.block ] ; 7 uses
  %.neg = add nsw i64 %indvars.iv93.ph, 1
  %i.fx = and i64 %i.g, 2
  %lcmp.mod.not.not = icmp eq i64 %i.fx, 0
  br i1 %lcmp.mod.not.not, label %.peel.next.prol, label %.peel.next.prol.loopexit

.peel.next.prol:                                  ; preds = %.peel.next.preheader
  %i.fy = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv93.ph ; 3 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !22 ; 3 uses
  %i.ga = zext i16 %i.fz to i32                   ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fy, i64 -2
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !22
  %i.gd = tail call i16 @llvm.umin.i16(i16 %i.gc, i16 %i.fz)
  %i.ge = zext i16 %i.gd to i32
  %i.gf = icmp samesign ult i64 %indvars.iv93.ph, %i.di
  br i1 %i.gf, label %bb.i, label %.peel.next.prol.loopexit.unr-lcssa

bb.i:                                             ; preds = %.peel.next.prol
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !22
  %i.gi = tail call i16 @llvm.umax.i16(i16 %i.gh, i16 %i.fz)
  %i.gj = zext i16 %i.gi to i32
  br label %.peel.next.prol.loopexit.unr-lcssa

.peel.next.prol.loopexit.unr-lcssa:               ; preds = %bb.i, %.peel.next.prol
  %.sroa.speculated.prol = phi i32 [ %i.gj, %bb.i ], [ %i.ga, %.peel.next.prol ]
  %i.gk = sub nsw i32 %.sroa.speculated.prol, %i.ge ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, -1
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = add nuw nsw i32 %i.gk, 2
  %i.gn = lshr i32 %i.gm, 2
  %i.go = sub nsw i32 %i.ga, %i.gn
  %.sroa.speculate.load.false.sroa.speculated.i.prol = tail call i32 @llvm.smax.i32(i32 %i.go, i32 0)
  %i.gp = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i.prol to i16
  %i.gq = icmp samesign ult i64 %indvars.iv93.ph, 65536
  tail call void @llvm.assume(i1 %i.gq)
  %.idx.prol = shl nuw nsw i64 %indvars.iv93.ph, 2
  %i.gr = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.prol ; 2 uses
  store i16 %i.gp, ptr %i.gr, align 2, !tbaa !22
  %i.gs = trunc nuw i32 %i.gk to i16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !22
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.ph, 1
  br label %.peel.next.prol.loopexit

.peel.next.prol.loopexit:                         ; preds = %.peel.next.prol.loopexit.unr-lcssa, %.peel.next.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %.peel.next.preheader ], [ %indvars.iv.next94.prol, %.peel.next.prol.loopexit.unr-lcssa ]
  %i.gu = icmp eq i64 %wide.trip.count, %.neg
  br i1 %i.gu, label %.preheader, label %.peel.next

scalar.ph:                                        ; preds = %.preheader84, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %scalar.ph ], [ 0, %.preheader84 ] ; 11 uses
  %i.gv = icmp slt i64 %indvars.iv, %i.y
  %.in.v = select i1 %i.gv, i64 %indvars.iv, i64 %i.x
  %.in = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v
  %i.gw = load i16, ptr %.in, align 2, !tbaa !22
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !22
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.gy = icmp slt i64 %indvars.iv.next, %i.y
  %.in.v.1 = select i1 %i.gy, i64 %indvars.iv.next, i64 %i.x
  %.in.1 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.1
  %i.gz = load i16, ptr %.in.1, align 2, !tbaa !22
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !22
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.hb = icmp slt i64 %indvars.iv.next.1, %i.y
  %.in.v.2 = select i1 %i.hb, i64 %indvars.iv.next.1, i64 %i.x
  %.in.2 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.2
  %i.hc = load i16, ptr %.in.2, align 2, !tbaa !22
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.1
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !22
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.he = icmp slt i64 %indvars.iv.next.2, %i.y
  %.in.v.3 = select i1 %i.he, i64 %indvars.iv.next.2, i64 %i.x
  %.in.3 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.3
  %i.hf = load i16, ptr %.in.3, align 2, !tbaa !22
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.2
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !22
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 3 uses
  %i.hh = icmp slt i64 %indvars.iv.next.3, %i.y
  %.in.v.4 = select i1 %i.hh, i64 %indvars.iv.next.3, i64 %i.x
  %.in.4 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.4
  %i.hi = load i16, ptr %.in.4, align 2, !tbaa !22
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.3
  store i16 %i.hi, ptr %i.hj, align 2, !tbaa !22
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 3 uses
  %i.hk = icmp slt i64 %indvars.iv.next.4, %i.y
  %.in.v.5 = select i1 %i.hk, i64 %indvars.iv.next.4, i64 %i.x
  %.in.5 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.5
  %i.hl = load i16, ptr %.in.5, align 2, !tbaa !22
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.4
  store i16 %i.hl, ptr %i.hm, align 2, !tbaa !22
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 3 uses
  %i.hn = icmp slt i64 %indvars.iv.next.5, %i.y
  %.in.v.6 = select i1 %i.hn, i64 %indvars.iv.next.5, i64 %i.x
  %.in.6 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.6
  %i.ho = load i16, ptr %.in.6, align 2, !tbaa !22
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.5
  store i16 %i.ho, ptr %i.hp, align 2, !tbaa !22
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 3 uses
  %i.hq = icmp slt i64 %indvars.iv.next.6, %i.y
  %.in.v.7 = select i1 %i.hq, i64 %indvars.iv.next.6, i64 %i.x
  %.in.7 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.7
  %i.hr = load i16, ptr %.in.7, align 2, !tbaa !22
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.6
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !22
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, 65536
  br i1 %exitcond.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !42

.preheader:                                       ; preds = %.peel.next.prol.loopexit, %bb.l, %middle.block137, %vec.epilog.middle.block, %bb.h
  %.not90 = icmp eq i32 %i.i, 65536
  br i1 %.not90, label %.loopexit, label %iter.check189

iter.check189:                                    ; preds = %.preheader83, %.preheader
  %i.ht = shl i64 %i.g, 31
  %sext82 = add i64 %i.ht, -4294967296
  %i.hu = ashr i64 %sext82, 32                    ; 2 uses
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hu ; 12 uses
  %3 = and i64 %i.h, 4294967295                   ; 8 uses
  %4 = sub nsw i64 65536, %3                      ; 7 uses
  %min.iters.check161 = icmp ult i64 %4, 8
  br i1 %min.iters.check161, label %vec.epilog.scalar.ph191.preheader, label %vector.memcheck162

vector.memcheck162:                               ; preds = %iter.check189
  %i.hw = shl nuw nsw i64 %3, 2
  %i.hx = shl nuw nsw i64 %i.r, 1                 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.n, i64 %i.hw
  %i.hz = getelementptr i8, ptr %i.hy, i64 %i.hx
  %i.ia = getelementptr i8, ptr %i.n, i64 %i.hx
  %i.ib = getelementptr i8, ptr %i.ia, i64 262144
  %i.ic = shl nuw nsw i64 %i.hu, 1
  %i.id = getelementptr i8, ptr %i.d, i64 %i.ic
  %i.ie = getelementptr i8, ptr %i.id, i64 2
  %bound0163 = icmp ult ptr %i.hz, %i.ie
  %bound1164 = icmp ult ptr %i.hv, %i.ib
  %found.conflict165 = and i1 %bound0163, %bound1164
  br i1 %found.conflict165, label %vec.epilog.scalar.ph191.preheader, label %vector.main.loop.iter.check166

vector.main.loop.iter.check166:                   ; preds = %vector.memcheck162
  %min.iters.check167 = icmp ult i64 %4, 64
  br i1 %min.iters.check167, label %vec.epilog.ph193, label %vector.ph168

vector.ph168:                                     ; preds = %vector.main.loop.iter.check166
  %5 = and i64 %4, 56
  %n.vec173 = and i64 %4, -64                     ; 4 uses
  %6 = add nsw i64 %3, %n.vec173
  %i.if = load i16, ptr %i.hv, align 2, !tbaa !22, !alias.scope !60
  %broadcast.splatinsert179 = insertelement <16 x i16> poison, i16 %i.if, i64 0
  %interleaved.vec181 = shufflevector <16 x i16> %broadcast.splatinsert179, <16 x i16> zeroinitializer, <32 x i32> <i32 0, i32 16, i32 0, i32 17, i32 0, i32 18, i32 0, i32 19, i32 0, i32 20, i32 0, i32 21, i32 0, i32 22, i32 0, i32 23, i32 0, i32 24, i32 0, i32 25, i32 0, i32 26, i32 0, i32 27, i32 0, i32 28, i32 0, i32 29, i32 0, i32 30, i32 0, i32 31> ; 4 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.ph168, %vector.body173
  %index178 = phi i64 [ 0, %vector.ph168 ], [ %index.next189, %vector.body173 ] ; 2 uses
  %7 = add nuw i64 %3, %index178                  ; 4 uses
  %8 = shl nuw nsw i64 %7, 2
  %9 = shl i64 %7, 2
  %10 = shl i64 %7, 2
  %11 = shl i64 %7, 2
  %12 = getelementptr inbounds nuw i8, ptr %i.s, i64 %8
  %13 = getelementptr i8, ptr %i.s, i64 %9
  %14 = getelementptr i8, ptr %13, i64 64
  %15 = getelementptr i8, ptr %i.s, i64 %10
  %16 = getelementptr i8, ptr %15, i64 128
  %17 = getelementptr i8, ptr %i.s, i64 %11
  %18 = getelementptr i8, ptr %17, i64 192
  store <32 x i16> %interleaved.vec181, ptr %12, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  store <32 x i16> %interleaved.vec181, ptr %14, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  store <32 x i16> %interleaved.vec181, ptr %16, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  store <32 x i16> %interleaved.vec181, ptr %18, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  %index.next189 = add nuw i64 %index178, 64      ; 2 uses
  %i.ig = icmp eq i64 %index.next189, %n.vec173
  br i1 %i.ig, label %middle.block187, label %vector.body173, !llvm.loop !46

middle.block187:                                  ; preds = %vector.body173
  %cmp.n188 = icmp eq i64 %4, %n.vec173
  br i1 %cmp.n188, label %.loopexit, label %vec.epilog.iter.check190

vec.epilog.iter.check190:                         ; preds = %middle.block187
  %min.epilog.iters.check192 = icmp eq i64 %5, 0
  br i1 %min.epilog.iters.check192, label %vec.epilog.scalar.ph191.preheader, label %vec.epilog.ph193, !prof !29

vec.epilog.ph193:                                 ; preds = %vector.main.loop.iter.check166, %vec.epilog.iter.check190
  %vec.epilog.resume.val198 = phi i64 [ %n.vec173, %vec.epilog.iter.check190 ], [ 0, %vector.main.loop.iter.check166 ]
  %n.vec200 = and i64 %4, -8                      ; 3 uses
  %19 = add nsw i64 %3, %n.vec200
  %i.ih = load i16, ptr %i.hv, align 2, !tbaa !22, !alias.scope !60
  %broadcast.splatinsert203 = insertelement <8 x i16> poison, i16 %i.ih, i64 0
  %interleaved.vec205 = shufflevector <8 x i16> %broadcast.splatinsert203, <8 x i16> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  br label %vec.epilog.vector.body200

vec.epilog.vector.body200:                        ; preds = %vec.epilog.vector.body200, %vec.epilog.ph193
  %index205 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph193 ], [ %index.next210, %vec.epilog.vector.body200 ] ; 2 uses
  %20 = add nuw i64 %3, %index205
  %21 = shl nuw nsw i64 %20, 2
  %22 = getelementptr inbounds nuw i8, ptr %i.s, i64 %21
  store <16 x i16> %interleaved.vec205, ptr %22, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  %index.next210 = add nuw i64 %index205, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next210, %n.vec200
  br i1 %i.ii, label %vec.epilog.middle.block208, label %vec.epilog.vector.body200, !llvm.loop !47

vec.epilog.middle.block208:                       ; preds = %vec.epilog.vector.body200
  %cmp.n209 = icmp eq i64 %4, %n.vec200
  br i1 %cmp.n209, label %.loopexit, label %vec.epilog.scalar.ph191.preheader

vec.epilog.scalar.ph191.preheader:                ; preds = %iter.check189, %vector.memcheck162, %vec.epilog.iter.check190, %vec.epilog.middle.block208
  %indvars.iv99.ph = phi i64 [ %3, %iter.check189 ], [ %3, %vector.memcheck162 ], [ %6, %vec.epilog.iter.check190 ], [ %19, %vec.epilog.middle.block208 ] ; 4 uses
  %23 = sub nsw i64 0, %indvars.iv99.ph
  %xtraiter221 = and i64 %23, 7                   ; 2 uses
  %lcmp.mod218.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod218.not, label %vec.epilog.scalar.ph191.prol.loopexit, label %vec.epilog.scalar.ph191.prol

vec.epilog.scalar.ph191.prol:                     ; preds = %vec.epilog.scalar.ph191.preheader, %vec.epilog.scalar.ph191.prol
  %indvars.iv99.prol = phi i64 [ %indvars.iv.next100.prol, %vec.epilog.scalar.ph191.prol ], [ %indvars.iv99.ph, %vec.epilog.scalar.ph191.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph191.prol ], [ 0, %vec.epilog.scalar.ph191.preheader ]
  %i.ij = load i16, ptr %i.hv, align 2, !tbaa !22
  %i.ik = icmp samesign ult i64 %indvars.iv99.prol, 65536
  tail call void @llvm.assume(i1 %i.ik)
  %.idx105.prol = shl nuw nsw i64 %indvars.iv99.prol, 2
  %24 = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx105.prol ; 2 uses
  store i16 %i.ij, ptr %24, align 2, !tbaa !22
  %i.il = getelementptr inbounds nuw i8, ptr %24, i64 2
  store i16 0, ptr %i.il, align 2, !tbaa !22
  %indvars.iv.next100.prol = add nuw nsw i64 %indvars.iv99.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter221
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph191.prol.loopexit, label %vec.epilog.scalar.ph191.prol, !llvm.loop !48

vec.epilog.scalar.ph191.prol.loopexit:            ; preds = %vec.epilog.scalar.ph191.prol, %vec.epilog.scalar.ph191.preheader
  %indvars.iv99.unr = phi i64 [ %indvars.iv99.ph, %vec.epilog.scalar.ph191.preheader ], [ %indvars.iv.next100.prol, %vec.epilog.scalar.ph191.prol ]
  %25 = add nsw i64 %indvars.iv99.ph, -65529
  %i.im = icmp ult i64 %25, 7
  br i1 %i.im, label %.loopexit, label %vec.epilog.scalar.ph191

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.l
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.1, %bb.l ], [ %indvars.iv93.unr, %.peel.next.prol.loopexit ] ; 7 uses
  %i.in = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv93 ; 3 uses
  %i.io = load i16, ptr %i.in, align 2, !tbaa !22 ; 3 uses
  %i.ip = zext i16 %i.io to i32                   ; 2 uses
  %i.iq = getelementptr i8, ptr %i.in, i64 -2
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !22
  %i.is = tail call i16 @llvm.umin.i16(i16 %i.ir, i16 %i.io)
  %i.it = zext i16 %i.is to i32
  %i.iu = icmp samesign ult i64 %indvars.iv93, %i.di
  br i1 %i.iu, label %bb.j, label %.peel.next.1

bb.j:                                             ; preds = %.peel.next
  %i.iv = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !22
  %i.ix = tail call i16 @llvm.umax.i16(i16 %i.iw, i16 %i.io)
  %i.iy = zext i16 %i.ix to i32
  br label %.peel.next.1

.peel.next.1:                                     ; preds = %.peel.next, %bb.j
  %.sroa.speculated = phi i32 [ %i.iy, %bb.j ], [ %i.ip, %.peel.next ]
  %i.iz = sub nsw i32 %.sroa.speculated, %i.it    ; 3 uses
  %i.ja = icmp sgt i32 %i.iz, -1
  tail call void @llvm.assume(i1 %i.ja)
  %i.jb = add nuw nsw i32 %i.iz, 2
  %i.jc = lshr i32 %i.jb, 2
  %i.jd = sub nsw i32 %i.ip, %i.jc
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.jd, i32 0)
  %i.je = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i to i16
  %i.jf = icmp samesign ult i64 %indvars.iv93, 65536
  tail call void @llvm.assume(i1 %i.jf)
  %.idx = shl nuw nsw i64 %indvars.iv93, 2
  %i.jg = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx ; 2 uses
  store i16 %i.je, ptr %i.jg, align 2, !tbaa !22
  %i.jh = trunc nuw i32 %i.iz to i16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  store i16 %i.jh, ptr %i.ji, align 2, !tbaa !22
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 3 uses
  %i.jj = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv.next94 ; 3 uses
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !22 ; 3 uses
  %i.jl = zext i16 %i.jk to i32                   ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jj, i64 -2
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !22
  %i.jo = tail call i16 @llvm.umin.i16(i16 %i.jn, i16 %i.jk)
  %i.jp = zext i16 %i.jo to i32
  %i.jq = icmp samesign ult i64 %indvars.iv.next94, %i.di
  br i1 %i.jq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.peel.next.1
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !22
  %i.jt = tail call i16 @llvm.umax.i16(i16 %i.js, i16 %i.jk)
  %i.ju = zext i16 %i.jt to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.peel.next.1
  %.sroa.speculated.1 = phi i32 [ %i.ju, %bb.k ], [ %i.jl, %.peel.next.1 ]
  %i.jv = sub nsw i32 %.sroa.speculated.1, %i.jp  ; 3 uses
  %i.jw = icmp sgt i32 %i.jv, -1
  tail call void @llvm.assume(i1 %i.jw)
  %i.jx = add nuw nsw i32 %i.jv, 2
  %i.jy = lshr i32 %i.jx, 2
  %i.jz = sub nsw i32 %i.jl, %i.jy
  %.sroa.speculate.load.false.sroa.speculated.i.1 = tail call i32 @llvm.smax.i32(i32 %i.jz, i32 0)
  %i.ka = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i.1 to i16
  %i.kb = icmp ne i64 %indvars.iv93, 65535
  tail call void @llvm.assume(i1 %i.kb)
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next94, 2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.1 ; 2 uses
  store i16 %i.ka, ptr %i.kc, align 2, !tbaa !22
  %i.kd = trunc nuw i32 %i.jv to i16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  store i16 %i.kd, ptr %i.ke, align 2, !tbaa !22
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %exitcond96.not.1 = icmp eq i64 %indvars.iv.next94.1, %wide.trip.count
  br i1 %exitcond96.not.1, label %.preheader, label %.peel.next, !llvm.loop !49

vec.epilog.scalar.ph191:                          ; preds = %vec.epilog.scalar.ph191.prol.loopexit, %vec.epilog.scalar.ph191
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.7, %vec.epilog.scalar.ph191 ], [ %indvars.iv99.unr, %vec.epilog.scalar.ph191.prol.loopexit ] ; 10 uses
  %i.kf = load i16, ptr %i.hv, align 2, !tbaa !22
  %.idx105 = shl nuw nsw i64 %indvars.iv99, 2
  %26 = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx105 ; 2 uses
  store i16 %i.kf, ptr %26, align 2, !tbaa !22
  %i.kg = getelementptr inbounds nuw i8, ptr %26, i64 2
  store i16 0, ptr %i.kg, align 2, !tbaa !22
  %i.kh = load i16, ptr %i.hv, align 2, !tbaa !22
  %indvars.iv.next100 = shl i64 %indvars.iv99, 2
  %27 = getelementptr i8, ptr %i.s, i64 %indvars.iv.next100 ; 2 uses
  %28 = getelementptr i8, ptr %27, i64 4
  store i16 %i.kh, ptr %28, align 2, !tbaa !22
  %i.ki = getelementptr i8, ptr %27, i64 6
  store i16 0, ptr %i.ki, align 2, !tbaa !22
  %i.kj = load i16, ptr %i.hv, align 2, !tbaa !22
  %indvars.iv.next100.1 = shl i64 %indvars.iv99, 2
  %29 = getelementptr i8, ptr %i.s, i64 %indvars.iv.next100.1 ; 2 uses
  %30 = getelementptr i8, ptr %29, i64 8
  store i16 %i.kj, ptr %30, align 2, !tbaa !22
  %i.kk = getelementptr i8, ptr %29, i64 10
  store i16 0, ptr %i.kk, align 2, !tbaa !22
  %i.kl = load i16, ptr %i.hv, align 2, !tbaa !22
  %indvars.iv.next100.2 = shl i64 %indvars.iv99, 2
  %31 = getelementptr i8, ptr %i.s, i64 %indvars.iv.next100.2 ; 2 uses
  %32 = getelementptr i8, ptr %31, i64 12
  store i16 %i.kl, ptr %32, align 2, !tbaa !22
  %i.km = getelementptr i8, ptr %31, i64 14
  store i16 0, ptr %i.km, align 2, !tbaa !22
  %i.kn = load i16, ptr %i.hv, align 2, !tbaa !22
  %indvars.iv.next100.3 = shl i64 %indvars.iv99, 2
  %33 = getelementptr i8, ptr %i.s, i64 %indvars.iv.next100.3 ; 2 uses
  %34 = getelementptr i8, ptr %33, i64 16
  store i16 %i.kn, ptr %34, align 2, !tbaa !22
  %i.ko = getelementptr i8, ptr %33, i64 18
  store i16 0, ptr %i.ko, align 2, !tbaa !22
  %i.kp = load i16, ptr %i.hv, align 2, !tbaa !22
  %indvars.iv.next100.4 = shl i64 %indvars.iv99, 2
  %35 = getelementptr i8, ptr %i.s, i64 %indvars.iv.next100.4 ; 2 uses
  %36 = getelementptr i8, ptr %35, i64 20
  store i16 %i.kp, ptr %36, align 2, !tbaa !22
  %i.kq = getelementptr i8, ptr %35, i64 22
  store i16 0, ptr %i.kq, align 2, !tbaa !22
  %i.kr = load i16, ptr %i.hv, align 2, !tbaa !22
  %indvars.iv.next100.5 = shl i64 %indvars.iv99, 2
  %37 = getelementptr i8, ptr %i.s, i64 %indvars.iv.next100.5 ; 2 uses
  %38 = getelementptr i8, ptr %37, i64 24
  store i16 %i.kr, ptr %38, align 2, !tbaa !22
  %i.ks = getelementptr i8, ptr %37, i64 26
  store i16 0, ptr %i.ks, align 2, !tbaa !22
  %indvars.iv.next100.6 = add nuw nsw i64 %indvars.iv99, 7 ; 2 uses
  %39 = load i16, ptr %i.hv, align 2, !tbaa !22
  %i.kt = icmp ult i64 %indvars.iv99, 65529
  tail call void @llvm.assume(i1 %i.kt)
  %.idx105.7 = shl nuw nsw i64 %indvars.iv.next100.6, 2
  %40 = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx105.7 ; 2 uses
  store i16 %39, ptr %40, align 2, !tbaa !22
  %i.ku = getelementptr inbounds nuw i8, ptr %40, i64 2
  store i16 0, ptr %i.ku, align 2, !tbaa !22
  %indvars.iv.next100.7 = add nuw nsw i64 %indvars.iv99, 8
  %exitcond98.not.7 = icmp eq i64 %indvars.iv.next100.6, 65535
  br i1 %exitcond98.not.7, label %.loopexit, label %vec.epilog.scalar.ph191, !llvm.loop !50

.loopexit:                                        ; preds = %vector.body, %scalar.ph, %vec.epilog.scalar.ph191.prol.loopexit, %vec.epilog.scalar.ph191, %middle.block187, %vec.epilog.middle.block208, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: mustprogress uwtable
define hidden { ptr, i32 } @_ZN8rawspeed11TableLookUp8getTableEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed11TableLookUp8getTableEi) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = icmp sgt i32 %i.a, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i32 %1, %i.a
  tail call void @llvm.assume(i1 %i.f)
  %i.g = shl nuw nsw i32 %1, 17
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.h
  %.fca.0.insert.i.i = insertvalue { ptr, i32 } poison, ptr %i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i32 } %.fca.0.insert.i.i, i32 131072, 1
  ret { ptr, i32 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr %3, align 2, !tbaa !22     ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !75

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.d, ptr nonnull align 2 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !25
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i16, ptr %i.o, align 2, !tbaa !22
  store i16 %i.s, ptr %i.d, align 2, !tbaa !22
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !25
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 1                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !75

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.z, ptr align 2 %1, i64 %i.v, i1 false)
  br label %iter.check162

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 2
  br i1 %i.aa, label %bb.j, label %iter.check162

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -2
  %i.ac = load i16, ptr %1, align 2, !tbaa !22
  store i16 %i.ac, ptr %i.ab, align 2, !tbaa !22
  br label %iter.check162

iter.check162:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 1                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -2                   ; 3 uses
  %i.af = lshr exact i64 %i.ae, 1
  %i.ag = add nuw i64 %i.af, 1                    ; 5 uses
  %min.iters.check149 = icmp ult i64 %i.ae, 14
  br i1 %min.iters.check149, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check150

vector.main.loop.iter.check150:                   ; preds = %iter.check162
  %min.iters.check151 = icmp ult i64 %i.ae, 126
  br i1 %min.iters.check151, label %vec.epilog.ph166, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check150
  %i.ah = and i64 %i.ag, 56
  %n.vec153 = and i64 %i.ag, -64                  ; 4 uses
  %i.ai = shl i64 %n.vec153, 1
  %i.aj = getelementptr i8, ptr %1, i64 %i.ai
  %broadcast.splatinsert154 = insertelement <16 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat155 = shufflevector <16 x i16> %broadcast.splatinsert154, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.ph152, %vector.body156
  %index157 = phi i64 [ 0, %vector.ph152 ], [ %index.next159, %vector.body156 ] ; 2 uses
  %i.ak = shl i64 %index157, 1
  %next.gep158 = getelementptr i8, ptr %1, i64 %i.ak ; 4 uses
  %i.al = getelementptr i8, ptr %next.gep158, i64 32
  %i.am = getelementptr i8, ptr %next.gep158, i64 64
  %i.an = getelementptr i8, ptr %next.gep158, i64 96
  store <16 x i16> %broadcast.splat155, ptr %next.gep158, align 2, !tbaa !22
  store <16 x i16> %broadcast.splat155, ptr %i.al, align 2, !tbaa !22
  store <16 x i16> %broadcast.splat155, ptr %i.am, align 2, !tbaa !22
  store <16 x i16> %broadcast.splat155, ptr %i.an, align 2, !tbaa !22
  %index.next159 = add nuw i64 %index157, 64      ; 2 uses
  %i.ao = icmp eq i64 %index.next159, %n.vec153
  br i1 %i.ao, label %middle.block160, label %vector.body156, !llvm.loop !63

middle.block160:                                  ; preds = %vector.body156
  %cmp.n161 = icmp eq i64 %i.ag, %n.vec153
  br i1 %cmp.n161, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %vec.epilog.iter.check163

vec.epilog.iter.check163:                         ; preds = %middle.block160
  %min.epilog.iters.check165 = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check165, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph166, !prof !29

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check150, %vec.epilog.iter.check163
  %vec.epilog.resume.val167 = phi i64 [ %n.vec153, %vec.epilog.iter.check163 ], [ 0, %vector.main.loop.iter.check150 ]
  %n.vec168 = and i64 %i.ag, -8                   ; 3 uses
  %i.ap = shl i64 %n.vec168, 1
  %i.aq = getelementptr i8, ptr %1, i64 %i.ap
  %broadcast.splatinsert169 = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat170 = shufflevector <8 x i16> %broadcast.splatinsert169, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body171

vec.epilog.vector.body171:                        ; preds = %vec.epilog.vector.body171, %vec.epilog.ph166
  %index172 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph166 ], [ %index.next174, %vec.epilog.vector.body171 ] ; 2 uses
  %i.ar = shl i64 %index172, 1
  %next.gep173 = getelementptr i8, ptr %1, i64 %i.ar
  store <8 x i16> %broadcast.splat170, ptr %next.gep173, align 2, !tbaa !22
  %index.next174 = add nuw i64 %index172, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next174, %n.vec168
  br i1 %i.as, label %vec.epilog.middle.block175, label %vec.epilog.vector.body171, !llvm.loop !64

vec.epilog.middle.block175:                       ; preds = %vec.epilog.vector.body171
  %cmp.n176 = icmp eq i64 %i.ag, %n.vec168
  br i1 %cmp.n176, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check162, %vec.epilog.iter.check163, %vec.epilog.middle.block175
  %.06.i.i.i.ph = phi ptr [ %1, %iter.check162 ], [ %i.aj, %vec.epilog.iter.check163 ], [ %i.aq, %vec.epilog.middle.block175 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i16 %i.i, ptr %.06.i.i.i, align 2, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !65

bb.k:                                             ; preds = %bb.c
  %i.au = icmp eq i64 %2, %i.l
  br i1 %i.au, label %_ZSt24__uninitialized_fill_n_aIPtmttET_S1_T0_RKT1_RSaIT2_E.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.av = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.av, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 4 uses
  %i.ax = shl i64 %2, 1
  %i.ay = add i64 %i.ax, -2
  %i.az = sub i64 %i.ay, %i.k                     ; 3 uses
  %i.ba = lshr i64 %i.az, 1
  %i.bb = add nuw i64 %i.ba, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.az, 14
end_hunk_1
