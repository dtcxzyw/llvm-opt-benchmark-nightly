Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/genericgfpoly?download=true
inline.NumInlined: 338
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.zxing::ErrorHandler" = type { ptr, i32, i32, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.zxing::IllegalArgumentErrorHandler" = type { %"class.zxing::ErrorHandler" }
%"class.zxing::Ref" = type { ptr }
%"class.zxing::ArrayRef" = type { %"class.zxing::Counted.base", ptr }
%"class.zxing::Counted.base" = type <{ ptr, i32 }>
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<zxing::Ref<zxing::GenericGFPoly>, std::allocator<zxing::Ref<zxing::GenericGFPoly>>>::_Vector_impl" }
%"struct.std::_Vector_base<zxing::Ref<zxing::GenericGFPoly>, std::allocator<zxing::Ref<zxing::GenericGFPoly>>>::_Vector_impl" = type { %"struct.std::_Vector_base<zxing::Ref<zxing::GenericGFPoly>, std::allocator<zxing::Ref<zxing::GenericGFPoly>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<zxing::Ref<zxing::GenericGFPoly>, std::allocator<zxing::Ref<zxing::GenericGFPoly>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN5zxing12ErrorHandlerD2Ev = comdat any

$_ZN5zxing8ArrayRefIiED2Ev = comdat any

$_ZN5zxing13GenericGFPolyD2Ev = comdat any

$_ZN5zxing13GenericGFPolyD0Ev = comdat any

$_ZN5zxing27IllegalArgumentErrorHandlerD0Ev = comdat any

$_ZNK5zxing12ErrorHandler7ErrCodeEv = comdat any

$_ZNK5zxing12ErrorHandler6ErrMsgB5cxx11Ev = comdat any

$_ZNK5zxing12ErrorHandler11HandlerTypeEv = comdat any

$_ZN5zxing27IllegalArgumentErrorHandler4InitEv = comdat any

$_ZN5zxing8ArrayRefIiED0Ev = comdat any

$_ZN5zxing5ArrayIiED2Ev = comdat any

$_ZN5zxing5ArrayIiED0Ev = comdat any

$_ZTVN5zxing13GenericGFPolyE = comdat any

$_ZTIN5zxing13GenericGFPolyE = comdat any

$_ZTSN5zxing13GenericGFPolyE = comdat any

$_ZTIN5zxing7CountedE = comdat any

$_ZTSN5zxing7CountedE = comdat any

$_ZTVN5zxing27IllegalArgumentErrorHandlerE = comdat any

$_ZTIN5zxing27IllegalArgumentErrorHandlerE = comdat any

$_ZTSN5zxing27IllegalArgumentErrorHandlerE = comdat any

$_ZTVN5zxing8ArrayRefIiEE = comdat any

$_ZTIN5zxing8ArrayRefIiEE = comdat any

$_ZTSN5zxing8ArrayRefIiEE = comdat any

$_ZTVN5zxing5ArrayIiEE = comdat any

$_ZTIN5zxing5ArrayIiEE = comdat any

$_ZTSN5zxing5ArrayIiEE = comdat any

@_ZN5zxingL15gf_err_handler_E = internal global %"class.zxing::ErrorHandler" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN5zxing13GenericGFPolyE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5zxing13GenericGFPolyE, ptr @_ZN5zxing13GenericGFPolyD2Ev, ptr @_ZN5zxing13GenericGFPolyD0Ev] }, comdat, align 8
@.str = private unnamed_addr constant [18 x i8] c"need coefficients\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"GenericGFPolys do not have same GenericGF field\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"degree must not be less then 0\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"divide by 0\00", align 1
@_ZTIN5zxing13GenericGFPolyE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5zxing13GenericGFPolyE, ptr @_ZTIN5zxing7CountedE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5zxing13GenericGFPolyE = linkonce_odr hidden constant [24 x i8] c"N5zxing13GenericGFPolyE\00", comdat, align 1
@_ZTIN5zxing7CountedE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5zxing7CountedE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5zxing7CountedE = linkonce_odr hidden constant [17 x i8] c"N5zxing7CountedE\00", comdat, align 1
@_ZTVN5zxing12ErrorHandlerE = external constant { [10 x ptr] }, align 8
@_ZTVN5zxing27IllegalArgumentErrorHandlerE = linkonce_odr hidden constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN5zxing27IllegalArgumentErrorHandlerE, ptr @_ZN5zxing12ErrorHandlerD2Ev, ptr @_ZN5zxing27IllegalArgumentErrorHandlerD0Ev, ptr @_ZNK5zxing12ErrorHandler7ErrCodeEv, ptr @_ZNK5zxing12ErrorHandler6ErrMsgB5cxx11Ev, ptr @_ZNK5zxing12ErrorHandler11HandlerTypeEv, ptr @_ZN5zxing27IllegalArgumentErrorHandler4InitEv, ptr @_ZN5zxing12ErrorHandler9PrintInfoEv, ptr @_ZN5zxing12ErrorHandler5ResetEv] }, comdat, align 8
@_ZTIN5zxing27IllegalArgumentErrorHandlerE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5zxing27IllegalArgumentErrorHandlerE, ptr @_ZTIN5zxing12ErrorHandlerE }, comdat, align 8
@_ZTSN5zxing27IllegalArgumentErrorHandlerE = linkonce_odr hidden constant [38 x i8] c"N5zxing27IllegalArgumentErrorHandlerE\00", comdat, align 1
@_ZTIN5zxing12ErrorHandlerE = external constant ptr
@_ZTVN5zxing8ArrayRefIiEE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5zxing8ArrayRefIiEE, ptr @_ZN5zxing8ArrayRefIiED2Ev, ptr @_ZN5zxing8ArrayRefIiED0Ev] }, comdat, align 8
@_ZTIN5zxing8ArrayRefIiEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5zxing8ArrayRefIiEE, ptr @_ZTIN5zxing7CountedE }, comdat, align 8
@_ZTSN5zxing8ArrayRefIiEE = linkonce_odr hidden constant [21 x i8] c"N5zxing8ArrayRefIiEE\00", comdat, align 1
@_ZTVN5zxing5ArrayIiEE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5zxing5ArrayIiEE, ptr @_ZN5zxing5ArrayIiED2Ev, ptr @_ZN5zxing5ArrayIiED0Ev] }, comdat, align 8
@_ZTIN5zxing5ArrayIiEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5zxing5ArrayIiEE, ptr @_ZTIN5zxing7CountedE }, comdat, align 8
@_ZTSN5zxing5ArrayIiEE = linkonce_odr hidden constant [18 x i8] c"N5zxing5ArrayIiEE\00", comdat, align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_genericgfpoly.cpp, ptr null }]

@_ZN5zxing13GenericGFPolyC1ERNS_9GenericGFENS_8ArrayRefIiEERNS_12ErrorHandlerE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN5zxing13GenericGFPolyC2ERNS_9GenericGFENS_8ArrayRefIiEERNS_12ErrorHandlerE

declare void @_ZN5zxing12ErrorHandlerC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5zxing13GenericGFPolyC2ERNS_9GenericGFENS_8ArrayRefIiEERNS_12ErrorHandlerE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 12), (16, 36), (40, 48)) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.zxing::IllegalArgumentErrorHandler", align 8 ; 13 uses
  %5 = alloca %"class.zxing::Ref", align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing13GenericGFPolyE, i64 16), ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIiEE, i64 16), ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  store ptr null, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 2                   ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 4 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  invoke void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing27IllegalArgumentErrorHandlerE, i64 16), ptr %4, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 4, ptr %i.r, align 8, !tbaa !29
  %i.s = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %4, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5zxing12ErrorHandlerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.v, align 8, !tbaa !31
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #14
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit

_ZN5zxing12ErrorHandlerD2Ev.exit:                 ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit40

bb.f:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %4, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN5zxing12ErrorHandlerD2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38: ; preds = %bb.f
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !31
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #14
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit40

_ZN5zxing12ErrorHandlerD2Ev.exit40:               ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38, %bb.e
  %.pn35 = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38 ], [ %i.aa, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.ab

bb.g:                                             ; preds = %bb.a
  %i.ah = icmp sgt i32 %i.p, 1
  br i1 %i.ah, label %bb.h, label %_ZN5zxing8ArrayRefIiEaSERKS1_.exit57

bb.h:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %i.k, align 4, !tbaa !32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.preheader, label %_ZN5zxing8ArrayRefIiEaSERKS1_.exit57

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = and i64 %i.o, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !45

.critedge:                                        ; preds = %.lr.ph
  %i.an = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ao = icmp eq i32 %i.an, %i.p
  br i1 %i.ao, label %.critedge.thread, label %bb.t

.critedge.thread:                                 ; preds = %bb.i, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  invoke void @_ZN5zxing9GenericGF7getZeroEv(ptr dead_on_unwind nonnull writable sret(%"class.zxing::Ref") align 8 %5, ptr noundef nonnull align 8 dereferenceable(92) %1)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %.critedge.thread
  %i.ap = load ptr, ptr %5, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19, !noalias !52 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null           ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5zxing13GenericGFPoly15getCoefficientsEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !12, !noalias !52
  %i.au = add i32 %i.at, 2
  store i32 %i.au, ptr %i.as, align 8, !tbaa !12
  br label %_ZN5zxing13GenericGFPoly15getCoefficientsEv.exit.thread

_ZN5zxing13GenericGFPoly15getCoefficientsEv.exit.thread: ; preds = %bb.j, %bb.k
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !19  ; 4 uses
  %.not5.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not5.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN5zxing13GenericGFPoly15getCoefficientsEv.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !12
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !12
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 -559026175, ptr %i.aw, align 8, !tbaa !12
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.av) #13, !inline_history !0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZN5zxing13GenericGFPoly15getCoefficientsEv.exit.thread
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !19
  br i1 %.not.i.i.i, label %_ZN5zxing8ArrayRefIiED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !12
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !12
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %_ZN5zxing8ArrayRefIiED2Ev.exit

bb.p:                                             ; preds = %bb.o
  store i32 -559026175, ptr %i.bd, align 8, !tbaa !12
  %i.bh = load ptr, ptr %i.ar, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(12) %i.ar) #13, !inline_history !1
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit

_ZN5zxing8ArrayRefIiED2Ev.exit:                   ; preds = %bb.n, %bb.o, %bb.p
  %i.bk = load ptr, ptr %5, align 8, !tbaa !36    ; 4 uses
  %.not.i42 = icmp eq ptr %i.bk, null
  br i1 %.not.i42, label %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5zxing8ArrayRefIiED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !12
  %i.bn = add i32 %i.bm, -1                       ; 2 uses
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !12
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.r, label %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit

bb.r:                                             ; preds = %bb.q
  store i32 -559026175, ptr %i.bl, align 8, !tbaa !12
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(12) %i.bk) #13, !inline_history !2
  br label %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit

_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit:      ; preds = %_ZN5zxing8ArrayRefIiED2Ev.exit, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.loopexit

bb.s:                                             ; preds = %.critedge.thread
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.ab

bb.t:                                             ; preds = %.critedge
  %i.bt = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #15
          to label %bb.u unwind label %bb.z       ; 10 uses

bb.u:                                             ; preds = %bb.t
  %6 = sub nsw i32 %i.p, %i.an                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 6 uses
  store i32 0, ptr %i.bu, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing5ArrayIiEE, i64 16), ptr %i.bt, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %7 = sext i32 %6 to i64                         ; 2 uses
  %8 = icmp slt i32 %6, 0
  br i1 %8, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #16
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  %9 = shl nuw nsw i64 %7, 2                      ; 3 uses
  %10 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %9) #15
          to label %.noexc47 unwind label %bb.aa  ; 4 uses

.noexc47:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  store ptr %10, ptr %i.bv, align 8, !tbaa !23
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %10, i8 0, i64 %9, i1 false), !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 %9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !22
  %11 = load i32, ptr %i.bu, align 8, !tbaa !12
  %12 = add i32 %11, 2
  store i32 %12, ptr %i.bu, align 8, !tbaa !12
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !19  ; 4 uses
  %.not5.i.i.i49 = icmp eq ptr %i.ca, null
  br i1 %.not5.i.i.i49, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.noexc47
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !12
  %i.cd = add i32 %i.cc, -1                       ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !12
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 -559026175, ptr %i.cb, align 8, !tbaa !12
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(12) %i.ca) #13, !inline_history !0
  br label %bb.x

bb.x:                                             ; preds = %.noexc47, %bb.v, %bb.w
  store ptr %i.bt, ptr %i.e, align 8, !tbaa !19
  %i.ci = load i32, ptr %i.bu, align 8, !tbaa !12
  %i.cj = add i32 %i.ci, -1                       ; 2 uses
  store i32 %i.cj, ptr %i.bu, align 8, !tbaa !12
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.y, label %_ZN5zxing8ArrayRefIiED2Ev.exit52

bb.y:                                             ; preds = %bb.x
  store i32 -559026175, ptr %i.bu, align 8, !tbaa !12
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(12) %i.bt) #13, !inline_history !1
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !19
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit52

_ZN5zxing8ArrayRefIiED2Ev.exit52:                 ; preds = %bb.x, %bb.y
  %i.co = phi ptr [ %i.bt, %bb.x ], [ %.pre, %bb.y ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !22
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !23 ; 7 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = lshr exact i64 %i.cv, 2                 ; 4 uses
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %_ZN5zxing8ArrayRefIiED2Ev.exit52
  %i.cz = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !23 ; 2 uses
  %wide.trip.count78 = and i64 %i.cw, 2147483647  ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv ; 6 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count78, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73
  %i.dc = ptrtoaddr ptr %i.db to i64
  %i.dd = shl i64 %indvar, 2
  %i.de = add i64 %i.dd, %i.dc
  %reass.sub = sub i64 %i.cu, %i.de
  %i.df = add i64 %reass.sub, -5
  %diff.check = icmp ult i64 %i.df, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cw, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <4 x i32>, ptr %i.dg, align 4, !tbaa !32
  %wide.load93 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !32
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <4 x i32> %wide.load, ptr %i.di, align 4, !tbaa !32
  store <4 x i32> %wide.load93, ptr %i.dj, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count78, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph73, %middle.block
  %indvars.iv75.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph73 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.cw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv75.prol = phi i64 [ %indvars.iv.next76.prol, %scalar.ph.prol ], [ %indvars.iv75.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv75.prol
  %i.dl = load i32, ptr %gep.prol, align 4, !tbaa !32
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv75.prol
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !32
  %indvars.iv.next76.prol = add nuw nsw i64 %indvars.iv75.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !49

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv75.unr = phi i64 [ %indvars.iv75.ph, %scalar.ph.preheader ], [ %indvars.iv.next76.prol, %scalar.ph.prol ]
  %i.dn = sub nsw i64 %indvars.iv75.ph, %wide.trip.count78
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %.loopexit, label %scalar.ph

bb.z:                                             ; preds = %bb.t
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 40) #14
  br label %bb.ab

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv75 = phi i64 [ %indvars.iv.next76.3, %scalar.ph ], [ %indvars.iv75.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv75
  %i.dr = load i32, ptr %gep, align 4, !tbaa !32
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv75
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !32
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next76
  %i.dt = load i32, ptr %gep.1, align 4, !tbaa !32
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next76
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !32
  %indvars.iv.next76.1 = add nuw nsw i64 %indvars.iv75, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next76.1
  %i.dv = load i32, ptr %gep.2, align 4, !tbaa !32
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next76.1
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !32
  %indvars.iv.next76.2 = add nuw nsw i64 %indvars.iv75, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next76.2
  %i.dx = load i32, ptr %gep.3, align 4, !tbaa !32
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next76.2
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !32
  %indvars.iv.next76.3 = add nuw nsw i64 %indvars.iv75, 4 ; 2 uses
  %exitcond79.not.3 = icmp eq i64 %indvars.iv.next76.3, %wide.trip.count78
  br i1 %exitcond79.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !50

_ZN5zxing8ArrayRefIiEaSERKS1_.exit57:             ; preds = %bb.g, %bb.h
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !12
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !12
  store ptr %i.g, ptr %i.e, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5zxing8ArrayRefIiED2Ev.exit52, %_ZN5zxing8ArrayRefIiEaSERKS1_.exit57, %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit, %_ZN5zxing12ErrorHandlerD2Ev.exit
  ret void

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.s, %_ZN5zxing12ErrorHandlerD2Ev.exit40
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %_ZN5zxing12ErrorHandlerD2Ev.exit40 ], [ %i.dq, %bb.aa ], [ %i.bs, %bb.s ], [ %i.dp, %bb.z ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIiEE, i64 16), ptr %i.c, align 8, !tbaa !14
  %i.ec = load ptr, ptr %i.e, align 8, !tbaa !19  ; 4 uses
  %.not.i58 = icmp eq ptr %i.ec, null
  br i1 %.not.i58, label %_ZN5zxing8ArrayRefIiED2Ev.exit59, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !12
  %i.ef = add i32 %i.ee, -1                       ; 2 uses
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !12
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.ad, label %_ZN5zxing8ArrayRefIiED2Ev.exit59

bb.ad:                                            ; preds = %bb.ac
  store i32 -559026175, ptr %i.ed, align 8, !tbaa !12
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !14
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(12) %i.ec) #13, !inline_history !1
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit59

_ZN5zxing8ArrayRefIiED2Ev.exit59:                 ; preds = %bb.ab, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn35.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5zxing12ErrorHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !31
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZN5zxing9GenericGF7getZeroEv(ptr dead_on_unwind writable sret(%"class.zxing::Ref") align 8, ptr noundef nonnull align 8 dereferenceable(92)) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5zxing13GenericGFPoly15getCoefficientsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.zxing::ArrayRef") align 8 captures(none) initializes((0, 12), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIiEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN5zxing8ArrayRefIiEC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !12
  br label %_ZN5zxing8ArrayRefIiEC2ERKS1_.exit

_ZN5zxing8ArrayRefIiEC2ERKS1_.exit:               ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.g, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5zxing8ArrayRefIiED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIiEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN5zxing7Counted7releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12
  %i.e = add i32 %i.d, -1                         ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !12
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5zxing7Counted7releaseEv.exit

bb.c:                                             ; preds = %bb.b
  store i32 -559026175, ptr %i.c, align 8, !tbaa !12
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #13, !inline_history !53
  br label %_ZN5zxing7Counted7releaseEv.exit

_ZN5zxing7Counted7releaseEv.exit:                 ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -2147483648, 2147483647) i32 @_ZN5zxing13GenericGFPoly9getDegreeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 2
  %i.k = trunc i64 %i.j to i32
  %i.l = add nsw i32 %i.k, -1
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN5zxing13GenericGFPoly6isZeroEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %i.f = icmp eq i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN5zxing13GenericGFPoly14getCoefficientEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
end_hunk_0
