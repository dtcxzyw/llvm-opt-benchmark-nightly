Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfImageChannel?download=true
inline.NumInlined: 59
inline.NumDeleted: 41
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.Imf_3_4::Channel" = type <{ i32, i32, i32, i8, [3 x i8] }>
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

@_ZTVN7Imf_3_412ImageChannelE = constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7Imf_3_412ImageChannelE, ptr @__cxa_pure_virtual, ptr @_ZN7Imf_3_412ImageChannelD1Ev, ptr @_ZN7Imf_3_412ImageChannelD0Ev, ptr @_ZN7Imf_3_412ImageChannel6resizeEv] }, align 8
@.str = private unnamed_addr constant [68 x i8] c"The x and y sampling rates for an image channel must be at least 1.\00", align 1
@_ZTIN7Iex_3_46ArgExcE = external constant ptr
@.str.1 = private unnamed_addr constant [152 x i8] c"The minimum x and y coordinates of the data window of an image level must be multiples of the x and y subsampling factors of all channels in the image.\00", align 1
@.str.2 = private unnamed_addr constant [141 x i8] c"The width and height of the data window of an image level must be multiples of the x and y subsampling factors of all channels in the image.\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Image channel dimensions too large.\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Attempt to access a pixel at location (\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c") in an image whose data window is (\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c") - (\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c").\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c") in a channel whose x and y sampling rates are \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c".  The pixel coordinates are not divisible by the sampling rates.\00", align 1
@_ZTIN7Imf_3_412ImageChannelE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7Imf_3_412ImageChannelE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7Imf_3_412ImageChannelE = constant [25 x i8] c"N7Imf_3_412ImageChannelE\00", align 1

@_ZN7Imf_3_412ImageChannelD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_412ImageChannelD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7Imf_3_412ImageChannelC2ERNS_10ImageLevelEiib(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 25), (28, 36), (40, 48)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %4 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7Imf_3_412ImageChannelE, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %i.d, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.a, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.f, align 4, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7Imf_3_412ImageChannelD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(48) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN7Imf_3_412ImageChannelD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #11
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK7Imf_3_412ImageChannel7channelEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"struct.Imf_3_4::Channel", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !17, !range !31, !noundef !21
  %i.j = trunc nuw i8 %i.i to i1
  call void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13) %1, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, i1 noundef zeroext %i.j)
  %.fca.0.load = load i64, ptr %1, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

declare void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13), i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_412ImageChannel6resizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16   ; 4 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 72) #12 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.f:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22, !nonnull !21, !align !23 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %i.m = srem i32 %i.l, %i.b
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27   ; 2 uses
  %i.p = srem i32 %i.o, %i.e
  %.not21 = icmp eq i32 %i.p, 0
  br i1 %.not21, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = tail call ptr @__cxa_allocate_exception(i64 72) #12 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull @.str.1)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #13
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.k:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28
  %i.u = sub nsw i32 %i.t, %i.l
  %i.v = add nsw i32 %i.u, 1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !29
  %i.y = sub nsw i32 %i.x, %i.o
  %i.z = add nsw i32 %i.y, 1                      ; 2 uses
  %i.aa = srem i32 %i.v, %i.b
  %i.ab = sdiv i32 %i.v, %i.b                     ; 3 uses
  %.not22 = icmp eq i32 %i.aa, 0
  br i1 %.not22, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = srem i32 %i.z, %i.e
  %i.ad = sdiv i32 %i.z, %i.e                     ; 2 uses
  %.not23 = icmp eq i32 %i.ac, 0
  br i1 %.not23, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 72) #12 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull @.str.2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.p:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ab, ptr %i.ag, align 4, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ad, ptr %i.ah, align 8, !tbaa !19
  %i.ai = sext i32 %i.ab to i64                   ; 2 uses
  %i.aj = sext i32 %i.ad to i64                   ; 2 uses
  %.not24 = icmp eq i32 %i.ab, 0
  br i1 %.not24, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ai, i64 %i.aj)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 72) #12 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ak, ptr noundef nonnull @.str.3)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #13
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.am = mul nsw i64 %i.aj, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.am, ptr %i.an, align 8, !tbaa !20
  ret void

bb.v:                                             ; preds = %bb.j, %bb.t, %bb.o, %bb.e
  %.sink = phi ptr [ %i.q, %bb.j ], [ %i.ak, %bb.t ], [ %i.ae, %bb.o ], [ %i.g, %bb.e ]
  %.pn28 = phi { ptr, i32 } [ %i.r, %bb.j ], [ %i.al, %bb.t ], [ %i.af, %bb.o ], [ %i.h, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #12
  resume { ptr, i32 } %.pn28
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN7Iex_3_46ArgExcD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress uwtable
define void @_ZNK7Imf_3_412ImageChannel11boundsCheckEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22, !nonnull !21, !align !23 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %i.e = icmp slt i32 %1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp sgt i32 %1, %i.g
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp slt i32 %2, %i.j
  %or.cond34 = select i1 %or.cond, i1 true, i1 %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp sgt i32 %2, %i.m
  %or.cond37 = select i1 %or.cond34, i1 true, i1 %i.n
  br i1 %or.cond37, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.4, i64 noundef 39)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef %1)
          to label %bb.c unwind label %bb.j       ; 2 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %bb.c
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %2)
          to label %bb.d unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.6, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %bb.d
  %i.u = load i32, ptr %i.c, align 8, !tbaa !26
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef %i.u)
          to label %bb.e unwind label %bb.j       ; 2 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40: ; preds = %bb.e
  %i.x = load i32, ptr %i.i, align 4, !tbaa !27
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef %i.x)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.7, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41: ; preds = %bb.f
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !28
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 noundef %i.aa)
          to label %bb.g unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %bb.g
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !29
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 noundef %i.ad)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43: ; preds = %bb.h
  %i.ag = call ptr @__cxa_allocate_exception(i64 72) #12 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #13
          to label %bb.z unwind label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn27 = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ai, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.y

bb.m:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !15
  %i.al = srem i32 %1, %i.ak
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !16
  %i.ao = srem i32 %2, %i.an
  %.not25 = icmp eq i32 %i.ao, 0
  br i1 %.not25, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.4, i64 noundef 39)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %bb.o
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i32 noundef %1)
          to label %bb.p unwind label %bb.u       ; 2 uses

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45: ; preds = %bb.p
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i32 noundef %2)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.9, i64 noundef 48)
end_hunk_0
