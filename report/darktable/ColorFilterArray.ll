Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ColorFilterArray?download=true
inline.NumInlined: 349
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [8192 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<rawspeed::CFAColor, std::allocator<rawspeed::CFAColor>>::_Vector_impl" }
%"struct.std::_Vector_base<rawspeed::CFAColor, std::allocator<rawspeed::CFAColor>>::_Vector_impl" = type { %"struct.std::_Vector_base<rawspeed::CFAColor, std::allocator<rawspeed::CFAColor>>::_Vector_impl_data" }
%"struct.std::_Vector_base<rawspeed::CFAColor, std::allocator<rawspeed::CFAColor>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EEaSERKS3_ = comdat any

$_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE17_M_default_appendEm = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@.str = private unnamed_addr constant [89 x i8] c"%s, line 64: if your CFA pattern is really %lu pixels in area we may as well give up now\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE = private unnamed_addr constant [59 x i8] c"void rawspeed::ColorFilterArray::setSize(const iPoint2D &)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s, line 74: No CFA size set\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed16ColorFilterArray10getColorAtEii = private unnamed_addr constant [64 x i8] c"CFAColor rawspeed::ColorFilterArray::getColorAt(int, int) const\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s, line 98: No CFA size set (or set to zero)\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed16ColorFilterArray10shiftRightEi = private unnamed_addr constant [49 x i8] c"void rawspeed::ColorFilterArray::shiftRight(int)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Shift right:%d\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"%s, line 116: No CFA size set (or set to zero)\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed16ColorFilterArray9shiftDownEi = private unnamed_addr constant [48 x i8] c"void rawspeed::ColorFilterArray::shiftDown(int)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Shift down:%d\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"%s, line 205: Unsupported CFA Color: %u\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE = private unnamed_addr constant [71 x i8] c"static std::string rawspeed::ColorFilterArray::colorToString(CFAColor)\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"%s, line 211: position out of CFA pattern\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed16ColorFilterArray10setColorAtENS_8iPoint2DENS_8CFAColorE = private unnamed_addr constant [64 x i8] c"void rawspeed::ColorFilterArray::setColorAt(iPoint2D, CFAColor)\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"%s, line 213: position out of CFA pattern\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"DCRAW filter:%x\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"RED\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"GREEN\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"BLUE\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"CYAN\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"MAGENTA\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"YELLOW\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"WHITE\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"FUJIGREEN\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@_ZTISt12out_of_range = external constant ptr
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array" zeroinitializer, comdat, align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@switch.table._ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE = private unnamed_addr constant [9 x ptr] [ptr @.str.25, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 8
@switch.table._ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE.2 = private unnamed_addr constant [9 x i8] c"\07\03\05\04\04\07\06\05\09", align 8

@_ZN8rawspeed16ColorFilterArrayC1ERKNS_8iPoint2DE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN8rawspeed16ColorFilterArrayC2ERKNS_8iPoint2DE

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed16ColorFilterArrayC2ERKNS_8iPoint2DE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = load i32, ptr %1, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %1, align 4, !tbaa !13     ; 3 uses
  store i64 %i.h, ptr %i.g, align 8, !tbaa !13
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i32 @llvm.abs.i32(i32 %i.i, i1 false)
  %i.k = zext i32 %i.j to i64
  %i.l = lshr i64 %i.h, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.m, i1 false)
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw nsw i64 %i.o, %i.k               ; 4 uses
  %i.q = icmp samesign ugt i64 %i.p, 36
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE, i64 noundef %i.p) #12
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p)
          to label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i unwind label %bb.f

_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !15  ; 3 uses
  %.pre4.i = load ptr, ptr %i.s, align 8, !tbaa !15 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %.pre.i, %.pre4.i
  br i1 %.not5.i.i.i.i.i, label %_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i
  %i.t = ptrtoaddr ptr %.pre4.i to i64
  %i.u = ptrtoaddr ptr %.pre.i to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @llvm.memset.p0.i64(ptr align 1 %.pre.i, i8 -1, i64 %i.v, i1 false), !tbaa !17
  br label %_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit

_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i, %bb.d, %bb.a
  ret void

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #18
  br label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EED2Ev.exit

_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EED2Ev.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %1, align 4, !tbaa !13     ; 3 uses
  store i64 %i.h, ptr %i.g, align 8, !tbaa !13
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i32 @llvm.abs.i32(i32 %i.i, i1 false)
  %i.k = zext i32 %i.j to i64
  %i.l = lshr i64 %i.h, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.m, i1 false)
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw nsw i64 %i.o, %i.k               ; 7 uses
  %i.q = icmp samesign ugt i64 %i.p, 36
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE, i64 noundef %i.p) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 4 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp ugt i64 %i.p, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = sub nuw nsw i64 %i.p, %i.x
  tail call void @_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.z)
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  %.pre4 = load ptr, ptr %i.s, align 8, !tbaa !15
  br label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %i.p, %i.x
  br i1 %i.aa, label %bb.h, label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, %i.ab
  br i1 %.not.i.i, label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !21
  br label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit: ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ac = phi ptr [ %.pre4, %bb.f ], [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ %i.ab, %_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ad = phi ptr [ %.pre, %bb.f ], [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.u, %_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 3 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit
  %i.ae = ptrtoaddr ptr %i.ac to i64
  %i.af = ptrtoaddr ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ad, i8 -1, i64 %i.ag, i1 false), !tbaa !17
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit: ; preds = %.lr.ph.preheader.i.i.i.i, %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit, %bb.d, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed16ColorFilterArray8asStringB5cxx11Ev:bb.a
  %i.l = phi i32 [ %i.o, %._crit_edge ], [ %i.e, %.preheader.lr.ph ]
  %i.m = phi i32 [ %i.p, %._crit_edge ], [ %i.j, %.preheader.lr.ph ] ; 3 uses
  %.01388 = phi i32 [ %i.q, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.t
  %.pre104 = load i32, ptr %i.d, align 4, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.o = phi i32 [ %.pre104, %._crit_edge.loopexit ], [ %i.l, %.preheader ] ; 2 uses
  %i.p = phi i32 [ %i.cw, %._crit_edge.loopexit ], [ %i.m, %.preheader ]
  %i.q = add nuw nsw i32 %.01388, 1               ; 2 uses
  %i.r = icmp slt i32 %i.q, %i.o
  br i1 %i.r, label %.preheader, label %._crit_edge89, !llvm.loop !50

.lr.ph:                                           ; preds = %.preheader, %bb.t
  %i.s = phi i32 [ %i.cw, %bb.t ], [ %i.m, %.preheader ] ; 5 uses
  %.01287 = phi i32 [ %i.cv, %bb.t ], [ 0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.t = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed16ColorFilterArray10getColorAtEii) #12
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.w = icmp sgt i32 %i.s, 0
  %i.x = load i32, ptr %i.d, align 4              ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  call void @llvm.assume(i1 %i.w)
  call void @llvm.assume(i1 %i.y)
  %i.z = urem i32 %.01287, %i.s
  %i.aa = add nuw nsw i32 %i.z, %i.s
  %i.ab = urem i32 %i.aa, %i.s
  %i.ac = urem i32 %.01388, %i.x
  %i.ad = add nuw nsw i32 %i.ac, %i.x
  %i.ae = urem i32 %i.ad, %i.x
  %i.af = zext nneg i32 %i.ab to i64
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = zext nneg i32 %i.s to i64
  %i.ai = mul nuw nsw i64 %i.ag, %i.ah
  %i.aj = getelementptr i8, ptr %i.t, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.af
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17  ; 2 uses
  %switch.tableidx = add i8 %i.al, 1              ; 3 uses
  %i.am = icmp ult i8 %switch.tableidx, 9
  br i1 %i.am, label %switch.lookup, label %_ZN8rawspeed12_GLOBAL__N_116getColorAsStringENS_8CFAColorE.exit.i

_ZN8rawspeed12_GLOBAL__N_116getColorAsStringENS_8CFAColorE.exit.i: ; preds = %bb.c
  %i.an = zext i8 %i.al to i32
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE, i32 noundef %i.an) #12
          to label %.noexc17 unwind label %bb.u

.noexc17:                                         ; preds = %_ZN8rawspeed12_GLOBAL__N_116getColorAsStringENS_8CFAColorE.exit.i
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.ao = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE, i64 %i.ao
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.ap = zext nneg i8 %switch.tableidx to i64
  %switch.gep155 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE.2, i64 %i.ap
  %switch.load156 = load i8, ptr %switch.gep155, align 1
  %switch.ext = zext i8 %switch.load156 to i64    ; 7 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !34, !alias.scope !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %switch.load, i64 %switch.ext, i1 false)
  store i64 %switch.ext, ptr %i.i, align 8, !tbaa !37, !alias.scope !55
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %switch.ext
  store i8 0, ptr %i.aq, align 1, !tbaa !38, !alias.scope !55
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !37  ; 7 uses
  %i.as = sub i64 9223372036854775807, %i.ar
  %i.at = icmp ult i64 %i.as, %switch.ext
  br i1 %i.at, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

.invoke:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %switch.lookup
  %i.au = phi ptr [ @.str.15, %switch.lookup ], [ @.str.16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.au) #20
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %switch.lookup
  %i.av = add i64 %i.ar, %switch.ext              ; 9 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.a
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ay = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.ay)
  %.not.i.i.i.i = icmp samesign ugt i64 %i.av, 15
  br i1 %.not.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.az = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %.not.i.i.i.i55 = icmp ugt i64 %i.av, %i.az
  br i1 %.not.i.i.i.i55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %switch.ext, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !39
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.bb = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.thread ] ; 2 uses
  %i.bc = icmp slt i64 %i.av, 0
  br i1 %i.bc, label %.invoke, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bd = icmp ugt i64 %i.av, %i.bb
  br i1 %i.bd, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.be = shl nuw i64 %i.bb, 1                    ; 2 uses
  %i.bf = icmp ult i64 %i.av, %i.be
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.be, i64 9223372036854775807)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0.i = phi i64 [ %spec.store.select.i.i, %bb.g ], [ %i.av, %bb.f ], [ %i.av, %bb.e ] ; 2 uses
  %i.bg = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.bh = icmp slt i64 %i.bg, 0
  br i1 %i.bh, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !31

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.h
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #21
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc32:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %.pre.i.pre = load ptr, ptr %0, align 8, !tbaa !39 ; 4 uses
  switch i64 %i.ar, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %.noexc32
  %i.bj = load i8, ptr %.pre.i.pre, align 1, !tbaa !38
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.k:                                             ; preds = %.noexc32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr align 1 %.pre.i.pre, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %.noexc32, %bb.k, %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %switch.ext, i1 false)
  %i.bl = icmp eq ptr %.pre.i.pre, %i.a
  br i1 %i.bl, label %.noexc19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !38
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %.pre.i.pre, i64 noundef %i.bn) #18
  br label %.noexc19

.noexc19:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i
  store ptr %i.bi, ptr %0, align 8, !tbaa !39
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %.noexc19, %bb.d
  %i.bo = phi ptr [ %i.bi, %.noexc19 ], [ %.pre, %bb.d ]
  store i64 %i.av, ptr %i.b, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.av
  store i8 0, ptr %i.bp, align 1, !tbaa !38
  %i.bq = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.h
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.h, align 8, !tbaa !38
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.bu = load i32, ptr %i.c, align 8, !tbaa !28
  %i.bv = add nsw i32 %i.bu, -1
  %i.bw = icmp eq i32 %.01287, %i.bv              ; 2 uses
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !37  ; 9 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775807
  br i1 %i.by, label %.invoke142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bz = add nsw i64 %i.bx, 1                    ; 7 uses
  %i.ca = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.a
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.cc = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.cc)
  %.not.i.i.i = icmp eq i64 %i.bx, 15
  br i1 %.not.i.i.i, label %.thread, label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %.not.i.i.i56 = icmp ugt i64 %i.bz, %i.cd
  br i1 %.not.i.i.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bx
  %3 = select i1 %i.bw, i8 10, i8 44
  store i8 %3, ptr %i.ce, align 1, !tbaa !38
  %.pre103 = load ptr, ptr %0, align 8, !tbaa !39
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread
  %i.cf = icmp slt i64 %i.bx, -1
  br i1 %i.cf, label %.invoke142, label %bb.n

.invoke142:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cg = phi ptr [ @.str.15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ @.str.16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.cg) #20
          to label %.cont143 unwind label %.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont143:                                         ; preds = %.invoke142
  unreachable

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34
  %i.ch = icmp ugt i64 %i.bz, %i.cd
  br i1 %i.ch, label %.thread, label %bb.p

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, %bb.n
  %i.ci = phi i64 [ %i.cd, %bb.n ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.cj = shl nuw i64 %i.ci, 1                    ; 2 uses
  %i.ck = icmp ult i64 %i.bz, %i.cj
  br i1 %i.ck, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread
  %spec.store.select.i.i49 = call i64 @llvm.umin.i64(i64 %i.cj, i64 9223372036854775807)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread, %bb.n
  %.0.i35 = phi i64 [ %spec.store.select.i.i49, %bb.o ], [ %i.bz, %.thread ], [ %i.bz, %bb.n ] ; 2 uses
  %i.cl = add nuw i64 %.0.i35, 1                  ; 2 uses
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i36, !prof !31

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc52 unwind label %.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i36: ; preds = %bb.p
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #21
          to label %.noexc53 unwind label %.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc53:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i36
  %.pre.i43.pre = load ptr, ptr %0, align 8, !tbaa !39 ; 4 uses
  switch i64 %i.bx, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i39
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %.noexc53
  %i.co = load i8, ptr %.pre.i43.pre, align 1, !tbaa !38
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i39

bb.s:                                             ; preds = %.noexc53
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr align 1 %.pre.i43.pre, i64 %i.bx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i39: ; preds = %.noexc53, %bb.s, %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.bx
  %4 = select i1 %i.bw, i8 10, i8 44
  store i8 %4, ptr %i.cp, align 1, !tbaa !38
  %i.cq = icmp eq ptr %.pre.i43.pre, %i.a
  br i1 %i.cq, label %.noexc21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i39
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !38
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %.pre.i43.pre, i64 noundef %i.cs) #18
  br label %.noexc21

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i46
  store ptr %i.cn, ptr %0, align 8, !tbaa !39
  store i64 %.0.i35, ptr %i.a, align 8, !tbaa !38
  br label %bb.t

bb.t:                                             ; preds = %.noexc21, %bb.m
  %i.ct = phi ptr [ %i.cn, %.noexc21 ], [ %.pre103, %bb.m ]
  store i64 %i.bz, ptr %i.b, align 8, !tbaa !37
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.bz
  store i8 0, ptr %i.cu, align 1, !tbaa !38
  %i.cv = add nuw nsw i32 %.01287, 1              ; 2 uses
  %i.cw = load i32, ptr %i.c, align 8, !tbaa !28  ; 3 uses
  %i.cx = icmp slt i32 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !53

bb.u:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116getColorAsStringENS_8CFAColorE.exit.i, %bb.b
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %.invoke, %bb.i
  %lpad.loopexit.split-lp157 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %2, align 8, !tbaa !39    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.h
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.db = load i64, ptr %i.h, align 8, !tbaa !38
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.u ], [ %lpad.loopexit.split-lp157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %lpad.loopexit.split-lp157, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.loopexit.split-lp59

.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i36, %.invoke142, %bb.q
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp59

.loopexit.split-lp59:                             ; preds = %.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn15 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %lpad.loopexit.split-lp159, %.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dd = load ptr, ptr %0, align 8, !tbaa !39    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.a
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %.loopexit.split-lp59
  %i.df = load i64, ptr %i.a, align 8, !tbaa !38
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %.loopexit.split-lp59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  resume { ptr, i32 } %.pn15

._crit_edge89:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %switch.tableidx = add i8 %1, 1                 ; 3 uses
  %i.a = icmp ult i8 %switch.tableidx, 9
  br i1 %i.a, label %switch.lookup, label %_ZN8rawspeed12_GLOBAL__N_116getColorAsStringENS_8CFAColorE.exit

_ZN8rawspeed12_GLOBAL__N_116getColorAsStringENS_8CFAColorE.exit: ; preds = %bb.a
  %i.b = zext i8 %1 to i32
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE, i32 noundef %i.b) #12
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep13 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8rawspeed16ColorFilterArray13colorToStringB5cxx11ENS_8CFAColorE.2, i64 %i.d
  %switch.load14 = load i8, ptr %switch.gep13, align 1
  %switch.ext = zext i8 %switch.load14 to i64     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %switch.load, i64 %switch.ext, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %switch.ext, ptr %i.f, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %switch.ext
  store i8 0, ptr %i.g, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN8rawspeed16ColorFilterArray16shiftDcrawFilterEjii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = lshr i32 %0, 2
  %i.c = xor i32 %i.b, %0
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 2
  %i.f = lshr i32 %0, 4
  %i.g = lshr i32 %0, 6
  %i.h = xor i32 %i.g, %i.f
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %i.j = shl nuw nsw i32 %i.i, 4
  %i.k = shl nuw nsw i32 %i.i, 6
  %i.l = or disjoint i32 %i.j, %i.k
  %i.m = or disjoint i32 %i.e, %i.l
  %i.n = or disjoint i32 %i.m, %i.d
  %i.o = xor i32 %i.n, %0                         ; 4 uses
  %i.p = insertelement <2 x i32> poison, i32 %i.o, i64 0
  %i.q = shufflevector <2 x i32> %i.p, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = lshr <2 x i32> %i.q, <i32 8, i32 12>
  %i.s = lshr <2 x i32> %i.q, <i32 10, i32 14>
  %i.t = xor <2 x i32> %i.s, %i.r
  %i.u = and <2 x i32> %i.t, splat (i32 3)
  %i.v = shufflevector <2 x i32> %i.u, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.w = shl nuw nsw <4 x i32> %i.v, <i32 8, i32 10, i32 12, i32 14>
  %i.x = lshr i32 %i.o, 16
  %i.y = lshr i32 %i.o, 18
  %i.z = xor i32 %i.y, %i.x
  %i.aa = and i32 %i.z, 3                         ; 2 uses
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = shl nuw nsw i32 %i.aa, 18
  %i.ad = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.w)
  %op.rdx37 = or disjoint i32 %i.ad, %i.ab
  %op.rdx38 = or disjoint i32 %op.rdx37, %i.ac
  %i.ae = xor i32 %op.rdx38, %i.o                 ; 4 uses
  %i.af = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ah = lshr <2 x i32> %i.ag, <i32 20, i32 24>
  %i.ai = lshr <2 x i32> %i.ag, <i32 22, i32 26>
  %i.aj = xor <2 x i32> %i.ai, %i.ah
  %i.ak = and <2 x i32> %i.aj, splat (i32 3)
  %i.al = shufflevector <2 x i32> %i.ak, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.am = shl nuw nsw <4 x i32> %i.al, <i32 20, i32 22, i32 24, i32 26>
  %i.an = lshr i32 %i.ae, 28
  %i.ao = lshr i32 %i.ae, 30
  %.masked = and i32 %i.an, 3
  %i.ap = xor i32 %i.ao, %.masked                 ; 2 uses
  %i.aq = shl nuw nsw i32 %i.ap, 28
  %i.ar = shl nuw i32 %i.ap, 30
  %i.as = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.am)
  %op.rdx = or disjoint i32 %i.as, %i.aq
  %op.rdx36 = or disjoint i32 %op.rdx, %i.ar
  %i.at = xor i32 %op.rdx36, %i.ae
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  %.1 = phi i32 [ %0, %bb.a ], [ %i.at, %.preheader.preheader ] ; 3 uses
  %i.au = icmp eq i32 %2, 0
  %i.av = shl nsw i32 %2, 2
  %.2 = tail call i32 @llvm.fshr.i32(i32 %.1, i32 %.1, i32 %i.av)
  %.0 = select i1 %i.au, i32 %.1, i32 %.2
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed16ColorFilterArray10setColorAtENS_8iPoint2DENS_8CFAColorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = icmp sle i32 %i.b, %.sroa.0.0.extract.trunc
  %i.d = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16ColorFilterArray10setColorAtENS_8iPoint2DENS_8CFAColorE) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29
  %i.g = icmp sle i32 %i.f, %.sroa.4.0.extract.trunc
  %i.h = icmp slt i64 %1, 0
  %or.cond5 = or i1 %i.h, %i.g
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_1
