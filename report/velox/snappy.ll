Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/snappy?download=true
inline.NumInlined: 441
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [256 x i16] }
%"struct.std::array.10" = type { [16 x i8] }
%"class.snappy::SnappyDecompressor" = type <{ ptr, ptr, ptr, ptr, i32, i8, [5 x i8], [6 x i8] }>
%"class.snappy::internal::WorkingMemory" = type { ptr, i64, ptr, ptr, ptr }
%"class.snappy::SnappyIOVecWriter" = type { ptr, ptr, ptr, i64, i64, i64 }
%"class.snappy::ByteArraySource" = type { %"class.snappy::Source", ptr, i64 }
%"class.snappy::Source" = type { ptr }
%"class.snappy::SnappyArrayWriter" = type { ptr, ptr, ptr, ptr }
%"class.snappy::SnappyDecompressionValidator" = type { i64, i64 }
%"class.snappy::UncheckedByteArraySink" = type { %"class.snappy::Sink", ptr }
%"class.snappy::Sink" = type { ptr }
%"class.snappy::SnappyIOVecReader" = type { %"class.snappy::Source", ptr, ptr, i64, i64 }
%"class.snappy::SnappyScatteredWriter" = type { %"class.snappy::SnappySinkAllocator", %"class.std::vector.3", i64, i64, ptr, ptr, ptr, ptr }
%"class.snappy::SnappySinkAllocator" = type { ptr, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<snappy::SnappySinkAllocator::Datablock, std::allocator<snappy::SnappySinkAllocator::Datablock>>::_Vector_impl" }
%"struct.std::_Vector_base<snappy::SnappySinkAllocator::Datablock, std::allocator<snappy::SnappySinkAllocator::Datablock>>::_Vector_impl" = type { %"struct.std::_Vector_base<snappy::SnappySinkAllocator::Datablock, std::allocator<snappy::SnappySinkAllocator::Datablock>>::_Vector_impl_data" }
%"struct.std::_Vector_base<snappy::SnappySinkAllocator::Datablock, std::allocator<snappy::SnappySinkAllocator::Datablock>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl" }
%"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl" = type { %"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj = comdat any

$_ZN6snappy17SnappyIOVecReaderD0Ev = comdat any

$_ZNK6snappy17SnappyIOVecReader9AvailableEv = comdat any

$_ZN6snappy17SnappyIOVecReader4PeekEPm = comdat any

$_ZN6snappy17SnappyIOVecReader4SkipEm = comdat any

$_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyIOVecWriterEEEvPT_ = comdat any

$_ZN6snappy20DecompressBranchlessIPcEESt4pairIPKhlES4_S4_lT_l = comdat any

$_ZN6snappy17SnappyIOVecWriter13TryFastAppendEPKcmmPPc = comdat any

$_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc = comdat any

$_ZN6snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc = comdat any

$_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_ = comdat any

$_ZN6snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l = comdat any

$_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyArrayWriterEEEvPT_ = comdat any

$_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_21SnappyScatteredWriterINS_19SnappySinkAllocatorEEEEEvPT_ = comdat any

$_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc = comdat any

$_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm = comdat any

$_ZN6snappy19SnappySinkAllocator8AllocateEi = comdat any

$_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm = comdat any

$_ZN6snappy19SnappySinkAllocator7DeleterEPvPKcm = comdat any

$_ZTVN6snappy17SnappyIOVecReaderE = comdat any

$_ZTIN6snappy17SnappyIOVecReaderE = comdat any

$_ZTSN6snappy17SnappyIOVecReaderE = comdat any

@_ZTVN6snappy15ByteArraySourceE = external constant { [7 x ptr] }, align 8, !guid !14
@_ZTIN6snappy6SourceE = external constant ptr
@_ZTVN6snappy22UncheckedByteArraySinkE = external constant { [8 x ptr] }, align 8, !guid !15
@_ZTVN6snappy17SnappyIOVecReaderE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN6snappy17SnappyIOVecReaderE, ptr @_ZN6snappy6SourceD2Ev, ptr @_ZN6snappy17SnappyIOVecReaderD0Ev, ptr @_ZNK6snappy17SnappyIOVecReader9AvailableEv, ptr @_ZN6snappy17SnappyIOVecReader4PeekEPm, ptr @_ZN6snappy17SnappyIOVecReader4SkipEm] }, comdat, align 8, !guid !16
@_ZTIN6snappy17SnappyIOVecReaderE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6snappy17SnappyIOVecReaderE, ptr @_ZTIN6snappy6SourceE }, comdat, align 8, !guid !17
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6snappy17SnappyIOVecReaderE = linkonce_odr constant [29 x i8] c"N6snappy17SnappyIOVecReaderE\00", comdat, align 1, !guid !18
@_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE = internal unnamed_addr constant %"struct.std::array" { [256 x i16] [i16 -255, i16 4, i16 1, i16 255, i16 -254, i16 5, i16 2, i16 255, i16 -253, i16 6, i16 3, i16 255, i16 -252, i16 7, i16 4, i16 255, i16 -251, i16 8, i16 5, i16 255, i16 -250, i16 9, i16 6, i16 255, i16 -249, i16 10, i16 7, i16 255, i16 -248, i16 11, i16 8, i16 255, i16 -247, i16 -252, i16 9, i16 255, i16 -246, i16 -251, i16 10, i16 255, i16 -245, i16 -250, i16 11, i16 255, i16 -244, i16 -249, i16 12, i16 255, i16 -243, i16 -248, i16 13, i16 255, i16 -242, i16 -247, i16 14, i16 255, i16 -241, i16 -246, i16 15, i16 255, i16 -240, i16 -245, i16 16, i16 255, i16 -239, i16 -508, i16 17, i16 255, i16 -238, i16 -507, i16 18, i16 255, i16 -237, i16 -506, i16 19, i16 255, i16 -236, i16 -505, i16 20, i16 255, i16 -235, i16 -504, i16 21, i16 255, i16 -234, i16 -503, i16 22, i16 255, i16 -233, i16 -502, i16 23, i16 255, i16 -232, i16 -501, i16 24, i16 255, i16 -231, i16 -764, i16 25, i16 255, i16 -230, i16 -763, i16 26, i16 255, i16 -229, i16 -762, i16 27, i16 255, i16 -228, i16 -761, i16 28, i16 255, i16 -227, i16 -760, i16 29, i16 255, i16 -226, i16 -759, i16 30, i16 255, i16 -225, i16 -758, i16 31, i16 255, i16 -224, i16 -757, i16 32, i16 255, i16 -223, i16 -1020, i16 33, i16 255, i16 -222, i16 -1019, i16 34, i16 255, i16 -221, i16 -1018, i16 35, i16 255, i16 -220, i16 -1017, i16 36, i16 255, i16 -219, i16 -1016, i16 37, i16 255, i16 -218, i16 -1015, i16 38, i16 255, i16 -217, i16 -1014, i16 39, i16 255, i16 -216, i16 -1013, i16 40, i16 255, i16 -215, i16 -1276, i16 41, i16 255, i16 -214, i16 -1275, i16 42, i16 255, i16 -213, i16 -1274, i16 43, i16 255, i16 -212, i16 -1273, i16 44, i16 255, i16 -211, i16 -1272, i16 45, i16 255, i16 -210, i16 -1271, i16 46, i16 255, i16 -209, i16 -1270, i16 47, i16 255, i16 -208, i16 -1269, i16 48, i16 255, i16 -207, i16 -1532, i16 49, i16 255, i16 -206, i16 -1531, i16 50, i16 255, i16 -205, i16 -1530, i16 51, i16 255, i16 -204, i16 -1529, i16 52, i16 255, i16 -203, i16 -1528, i16 53, i16 255, i16 -202, i16 -1527, i16 54, i16 255, i16 -201, i16 -1526, i16 55, i16 255, i16 -200, i16 -1525, i16 56, i16 255, i16 -199, i16 -1788, i16 57, i16 255, i16 -198, i16 -1787, i16 58, i16 255, i16 -197, i16 -1786, i16 59, i16 255, i16 -196, i16 -1785, i16 60, i16 255, i16 255, i16 -1784, i16 61, i16 255, i16 255, i16 -1783, i16 62, i16 255, i16 255, i16 -1782, i16 63, i16 255, i16 255, i16 -1781, i16 64, i16 255] }, align 64, !guid !19
@_ZZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes = internal unnamed_addr global %"struct.std::array.10" zeroinitializer, align 8, !guid !20
@_ZGVZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes = internal global i64 0, align 8, !guid !21
@.str.2 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1, !guid !22
@.str.3 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1, !guid !23
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1, !guid !24

@_ZN6snappy8internal13WorkingMemoryC1Em = unnamed_addr alias void (ptr, i64), ptr @_ZN6snappy8internal13WorkingMemoryC2Em
@_ZN6snappy8internal13WorkingMemoryD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6snappy8internal13WorkingMemoryD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN6snappy19MaxCompressedLengthEm(i64 noundef %0) local_unnamed_addr #0 !guid !132 {
bb.a:
  %i.a = add i64 %0, 32
  %i.b = udiv i64 %0, 6
  %i.c = add i64 %i.a, %i.b
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6snappy21GetUncompressedLengthEPKcmPm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #1 !guid !133 {
bb.a:
  %.not.i.not = icmp eq i64 %1, 0
  br i1 %.not.i.not, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !25      ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i32                 ; 2 uses
  %i.e = icmp sgt i8 %i.b, -1
  br i1 %i.e, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not42.i.not = icmp eq i64 %1, 1
  br i1 %.not42.i.not, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !25    ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 7
  %i.j = and i32 %i.i, 16256
  %i.k = or disjoint i32 %i.j, %i.d               ; 2 uses
  %i.l = icmp sgt i8 %i.g, -1
  br i1 %i.l, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not43.i = icmp samesign ugt i64 %1, 2
  br i1 %.not43.i, label %bb.f, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !25    ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 14
  %i.q = and i32 %i.p, 2080768
  %i.r = or disjoint i32 %i.q, %i.k               ; 2 uses
  %i.s = icmp sgt i8 %i.n, -1
  br i1 %i.s, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not44.i.not = icmp eq i64 %1, 3
  br i1 %.not44.i.not, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !25    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 21
  %i.x = and i32 %i.w, 266338304
  %i.y = or disjoint i32 %i.x, %i.r               ; 2 uses
  %i.z = icmp sgt i8 %i.u, -1
  br i1 %i.z, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not45.i = icmp samesign ugt i64 %1, 4
  br i1 %.not45.i, label %bb.j, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !25   ; 2 uses
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw i32 %i.ab, 28
  %i.ad = or disjoint i32 %i.ac, %i.y
  %i.ae = icmp ult i8 %i.aa, 16
  br i1 %i.ae, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit.thread

_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit: ; preds = %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.y, %bb.h ], [ %i.d, %bb.b ], [ %i.k, %bb.d ], [ %i.r, %bb.f ], [ %i.ad, %bb.j ]
  %i.af = zext i32 %.0 to i64
  store i64 %i.af, ptr %2, align 8, !tbaa !27
  br label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit.thread

_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit.thread: ; preds = %bb.g, %bb.e, %bb.c, %bb.a, %bb.j, %bb.i, %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit
  %.not8 = phi i1 [ true, %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ]
  ret i1 %.not8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6snappy8internal13WorkingMemoryC2Em(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i64 noundef %1) unnamed_addr #3 align 2 !guid !134 {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 65536) ; 3 uses
  %i.a = trunc nuw nsw i64 %.sroa.speculated to i32 ; 2 uses
  %i.b = icmp ugt i64 %1, 16384
  br i1 %i.b, label %_ZN6snappy12_GLOBAL__N_118CalculateTableSizeEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %1, 256
  br i1 %i.c, label %_ZN6snappy12_GLOBAL__N_118CalculateTableSizeEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.a, -1
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.d, i1 true)
  %i.f = xor i32 %i.e, 31
  %i.g = shl i32 4, %i.f
  %i.h = zext i32 %i.g to i64
  br label %_ZN6snappy12_GLOBAL__N_118CalculateTableSizeEj.exit

_ZN6snappy12_GLOBAL__N_118CalculateTableSizeEj.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ 32768, %bb.a ], [ 512, %bb.b ] ; 2 uses
  %i.i = udiv i32 %i.a, 6
  %.zext = zext nneg i32 %i.i to i64
  %factor = shl nuw nsw i64 %.sroa.speculated, 1
  %i.j = add nuw nsw i64 %factor, 32
  %i.k = add nuw nsw i64 %i.j, %.zext
  %i.l = add nuw nsw i64 %i.k, %.0.i              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !32
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #20 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.speculated
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %i.s, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6snappy8internal13WorkingMemoryD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 align 2 !guid !135 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.c) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK6snappy8internal13WorkingMemory12GetHashTableEmPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #4 align 2 !guid !136 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 3 uses
  %i.b = icmp ugt i32 %i.a, 16384
  br i1 %i.b, label %_ZN6snappy12_GLOBAL__N_118CalculateTableSizeEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %i.a, 256
  br i1 %i.c, label %_ZN6snappy12_GLOBAL__N_118CalculateTableSizeEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.a, -1
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.d, i1 true)
  %i.f = xor i32 %i.e, 31
  %i.g = shl nuw nsw i32 2, %i.f
  br label %_ZN6snappy12_GLOBAL__N_118CalculateTableSizeEj.exit

_ZN6snappy12_GLOBAL__N_118CalculateTableSizeEj.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.g, %bb.c ], [ 16384, %bb.a ], [ 256, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.j = shl nuw nsw i32 %.0.i, 1
  %i.k = zext nneg i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.i, i8 0, i64 %i.k, i1 false)
  store i32 %.0.i, ptr %2, align 4, !tbaa !37
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !34
  ret ptr %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN6snappy8internal16CompressFragmentEPKcmPcPti(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address, ret: address, provenance) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #6 !guid !142 {
bb.a:
  %i.a = shl i32 %4, 1
  %i.b = add i32 %i.a, -2                         ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 8 uses
  %i.d = icmp ugt i64 %1, 14
  br i1 %i.d, label %bb.b, label %.thread252, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -15 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.0.copyload.i = load i32, ptr %i.f, align 1
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.i = ptrtoint ptr %3 to i64                   ; 19 uses
  %i.j = ptrtoaddr ptr %i.c to i64
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 -8
  br label %bb.c

bb.c:                                             ; preds = %bb.al, %bb.b
  %.0153 = phi i32 [ %.0.copyload.i, %bb.b ], [ %i.pc, %bb.al ] ; 2 uses
  %.0118 = phi ptr [ %0, %bb.b ], [ %i.oe, %bb.al ] ; 12 uses
  %.0117 = phi ptr [ %2, %bb.b ], [ %.9, %bb.al ] ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0118, i64 1 ; 4 uses
  %.0.copyload.i159 = load i64, ptr %i.m, align 1 ; 5 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.g, %i.n
  %i.p = icmp sgt i64 %i.o, 15
  br i1 %i.p, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.c
  %i.q = sub i64 %i.n, %i.h                       ; 16 uses
  %i.r = mul i32 %.0153, 506832829
  %i.s = lshr i32 %i.r, 17
  %i.t = and i32 %i.s, %i.b
  %i.u = zext nneg i32 %i.t to i64
  %i.v = add i64 %i.u, %i.i
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !40
  %i.y = zext i16 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = trunc i64 %i.q to i16
  store i16 %i.aa, ptr %i.w, align 2, !tbaa !40
  %.0.copyload.i160 = load i32, ptr %i.z, align 1
  %.not = icmp eq i32 %.0.copyload.i160, %.0153
  br i1 %.not, label %bb.p, label %bb.d, !prof !41

bb.d:                                             ; preds = %.preheader
  %i.ab = lshr i64 %.0.copyload.i159, 8           ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = mul i32 %i.ac, 506832829
  %i.ae = lshr i32 %i.ad, 17
  %i.af = and i32 %i.ae, %i.b
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = add i64 %i.ag, %i.i
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !40
  %i.ak = zext i16 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.am = trunc i64 %i.q to i16
  %i.an = add i16 %i.am, 1
  store i16 %i.an, ptr %i.ai, align 2, !tbaa !40
  %.0.copyload.i160.1 = load i32, ptr %i.al, align 1
  %.not.1 = icmp eq i32 %.0.copyload.i160.1, %i.ac
  br i1 %.not.1, label %bb.p, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  %i.ao = lshr i64 %.0.copyload.i159, 16          ; 2 uses
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = mul i32 %i.ap, 506832829
  %i.ar = lshr i32 %i.aq, 17
  %i.as = and i32 %i.ar, %i.b
  %i.at = zext nneg i32 %i.as to i64
  %i.au = add i64 %i.at, %i.i
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !40
  %i.ax = zext i16 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.az = trunc i64 %i.q to i16
  %i.ba = add i16 %i.az, 2
  store i16 %i.ba, ptr %i.av, align 2, !tbaa !40
  %.0.copyload.i160.2 = load i32, ptr %i.ay, align 1
  %.not.2 = icmp eq i32 %.0.copyload.i160.2, %i.ap
  br i1 %.not.2, label %bb.p, label %bb.f, !prof !41

bb.f:                                             ; preds = %bb.e
  %i.bb = lshr i64 %.0.copyload.i159, 24          ; 2 uses
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = mul i32 %i.bc, 506832829
  %i.be = lshr i32 %i.bd, 17
end_hunk_0
begin_hunk_1_@_ZN6snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  %i.iy = add nsw i32 %i.ix, -1                   ; 4 uses
  %i.iz = icmp slt i32 %i.ix, 17
  br i1 %i.iz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.tr37.i = trunc i32 %i.iy to i8
  %i.ja = shl i8 %.tr37.i, 2
  %i.jb = getelementptr inbounds nuw i8, ptr %.0117, i64 1 ; 2 uses
  store i8 %i.ja, ptr %.0117, align 1, !tbaa !25
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jb, ptr noundef nonnull readonly align 1 dereferenceable(16) %.0118, i64 16, i1 false)
  %sext = shl i64 %i.iw, 32
  %i.jc = ashr exact i64 %sext, 32
  %i.jd = getelementptr inbounds i8, ptr %i.jb, i64 %i.jc
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.u:                                             ; preds = %bb.s
  %i.je = icmp samesign ult i32 %i.ix, 61
  br i1 %i.je, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.tr.i = trunc nuw nsw i32 %i.iy to i8
  %i.jf = shl nuw i8 %.tr.i, 2
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.jg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.iy, i1 true)
  %i.jh = lshr i32 %i.jg, 3
  %i.ji = xor i32 %i.jh, 3                        ; 2 uses
  %.tr38.i = trunc nuw nsw i32 %i.ji to i8
  %i.jj = shl nuw nsw i8 %.tr38.i, 2
  %i.jk = or disjoint i8 %i.jj, -16
  %i.jl = getelementptr inbounds nuw i8, ptr %.0117, i64 1 ; 2 uses
  store i32 %i.iy, ptr %i.jl, align 1
  %i.jm = zext nneg i32 %i.ji to i64
  %i.jn = getelementptr i8, ptr %i.jl, i64 %i.jm
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i = phi i8 [ %i.jf, %bb.v ], [ %i.jk, %bb.w ]
  %.pn.i = phi ptr [ %.0117, %bb.v ], [ %i.jn, %bb.w ]
  store i8 %.sink.i, ptr %.0117, align 1, !tbaa !25
  %.032.i = getelementptr i8, ptr %.pn.i, i64 1   ; 2 uses
  %i.jo = and i64 %i.iw, 2147483647
  %i.jp = getelementptr inbounds nuw i8, ptr %.032.i, i64 %i.jo ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.030.i = phi ptr [ %.032.i, %bb.x ], [ %i.jq, %bb.y ] ; 2 uses
  %.0.i = phi ptr [ %.0118, %bb.x ], [ %i.jr, %bb.y ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.030.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i, i64 16, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %.030.i, i64 16 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.js = icmp ult ptr %i.jq, %i.jp
  br i1 %i.js, label %bb.y, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, !llvm.loop !137

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader: ; preds = %bb.y, %bb.t, %bb.p
  %.9189.ph = phi i64 [ %.1181283.lcssa, %bb.p ], [ %.6186288, %bb.t ], [ %.6186288, %bb.y ]
  %.8148.ph = phi ptr [ %i.hq, %bb.p ], [ %i.iu, %bb.t ], [ %i.iu, %bb.y ]
  %.11129.ph = phi ptr [ %i.ht, %bb.p ], [ %.8126289, %bb.t ], [ %.8126289, %bb.y ]
  %.8.ph = phi ptr [ %i.hv, %bb.p ], [ %i.jd, %bb.t ], [ %i.jp, %bb.y ]
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit:    ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, %bb.ak
  %.9189 = phi i64 [ %.11191235, %bb.ak ], [ %.9189.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 3 uses
  %.8148 = phi ptr [ %i.oz, %bb.ak ], [ %.8148.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 5 uses
  %.11129 = phi ptr [ %i.oe, %bb.ak ], [ %.11129.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 11 uses
  %.8 = phi ptr [ %.9, %bb.ak ], [ %.8.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.8148, i64 4 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.11129, i64 4 ; 3 uses
  %.not.i = icmp ugt ptr %i.ju, %i.k
  br i1 %.not.i, label %bb.aa, label %bb.z, !prof !41

bb.z:                                             ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %.0.copyload.i.i = load i64, ptr %i.jt, align 1 ; 2 uses
  %.0.copyload.i60.i = load i64, ptr %i.ju, align 1 ; 3 uses
  %.not57.i = icmp eq i64 %.0.copyload.i.i, %.0.copyload.i60.i
  br i1 %.not57.i, label %.thread.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread, !prof !41

.thread.i:                                        ; preds = %bb.z
  %i.jv = getelementptr inbounds nuw i8, ptr %.11129, i64 12
  br label %bb.aa

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread: ; preds = %bb.z
  %i.jw = xor i64 %.0.copyload.i60.i, %.0.copyload.i.i ; 2 uses
  %i.jx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jw, i1 true) ; 2 uses
  %i.jy = lshr i64 %i.jx, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %.11129, i64 8
  %.0.copyload.i61.i = load i64, ptr %i.jz, align 1
  %i.ka = tail call i64 asm "testl ${2:k}, ${2:k}\0A\09cmovzq $1, $0\0A\09", "=r,r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i61.i, i64 %i.jw, i64 %.0.copyload.i60.i) #22, !srcloc !145
  %i.kb = and i64 %i.jx, 24
  %i.kc = lshr i64 %i.ka, %i.kb
  %i.kd = add nuw nsw i64 %i.jy, 4                ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.kd
  %i.kf = ptrtoint ptr %.11129 to i64
  %i.kg = ptrtoint ptr %.8148 to i64
  %i.kh = sub i64 %i.kf, %i.kg
  br label %bb.af

bb.aa:                                            ; preds = %.thread.i, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %.180.i = phi i64 [ 0, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit ], [ 8, %.thread.i ] ; 2 uses
  %.1.i = phi ptr [ %i.ju, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit ], [ %i.jv, %.thread.i ] ; 3 uses
  %.not5896.i = icmp ugt ptr %.1.i, %i.k
  br i1 %.not5896.i, label %.preheader.i, label %.lr.ph.i, !prof !143

.preheader.i:                                     ; preds = %bb.ab, %bb.aa
  %.281.lcssa.i = phi i64 [ %.180.i, %bb.aa ], [ %i.lb, %bb.ab ] ; 3 uses
  %.2.lcssa.i = phi ptr [ %.1.i, %bb.aa ], [ %i.la, %bb.ab ] ; 3 uses
  %i.ki = icmp ult ptr %.2.lcssa.i, %i.c
  br i1 %i.ki, label %.lr.ph102.preheader.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit, !prof !146

.lr.ph102.preheader.i:                            ; preds = %.preheader.i
  %.2.lcssa112.i = ptrtoaddr ptr %.2.lcssa.i to i64
  %i.kj = add i64 %.281.lcssa.i, %i.j
  %i.kk = sub i64 %i.kj, %.2.lcssa112.i
  br label %.lr.ph102.i

.lr.ph.i:                                         ; preds = %bb.aa, %bb.ab
  %.298.i = phi ptr [ %i.la, %bb.ab ], [ %.1.i, %bb.aa ] ; 3 uses
  %.28197.i = phi i64 [ %i.lb, %bb.ab ], [ %.180.i, %bb.aa ] ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.28197.i
  %.0.copyload.i62.i = load i64, ptr %i.kl, align 1 ; 2 uses
  %.0.copyload.i63.i = load i64, ptr %.298.i, align 1 ; 3 uses
  %i.km = icmp eq i64 %.0.copyload.i62.i, %.0.copyload.i63.i
  br i1 %i.km, label %bb.ab, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237: ; preds = %.lr.ph.i
  %i.kn = xor i64 %.0.copyload.i63.i, %.0.copyload.i62.i ; 2 uses
  %i.ko = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kn, i1 true) ; 2 uses
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = getelementptr inbounds nuw i8, ptr %.298.i, i64 4
  %.0.copyload.i64.i = load i64, ptr %i.kq, align 1
  %i.kr = tail call i64 asm "testl ${2:k}, ${2:k}\0A\09cmovzq $1, $0\0A\09", "=r,r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i64.i, i64 %i.kn, i64 %.0.copyload.i63.i) #22, !srcloc !147
  %i.ks = and i64 %i.ko, 24
  %i.kt = lshr i64 %i.kr, %i.ks
  %i.ku = or disjoint i64 %i.kp, %.28197.i
  %i.kv = add i64 %i.ku, 4                        ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.kv
  %i.kx = ptrtoint ptr %.11129 to i64
  %i.ky = ptrtoint ptr %.8148 to i64
  %i.kz = sub i64 %i.kx, %i.ky
  br label %bb.ag

bb.ab:                                            ; preds = %.lr.ph.i
  %i.la = getelementptr inbounds nuw i8, ptr %.298.i, i64 8 ; 3 uses
  %i.lb = add i64 %.28197.i, 8                    ; 2 uses
  %.not58.i = icmp ugt ptr %i.la, %i.k
  br i1 %.not58.i, label %.preheader.i, label %.lr.ph.i, !prof !144

.lr.ph102.i:                                      ; preds = %bb.ac, %.lr.ph102.preheader.i
  %.4101.i = phi ptr [ %i.lg, %bb.ac ], [ %.2.lcssa.i, %.lr.ph102.preheader.i ] ; 4 uses
  %.483100.i = phi i64 [ %i.lh, %bb.ac ], [ %.281.lcssa.i, %.lr.ph102.preheader.i ] ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.483100.i
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !25
  %i.le = load i8, ptr %.4101.i, align 1, !tbaa !25
  %i.lf = icmp eq i8 %i.ld, %i.le
  br i1 %i.lf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph102.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.4101.i, i64 1 ; 2 uses
  %i.lh = add i64 %.483100.i, 1
  %exitcond.not.i = icmp eq ptr %i.lg, %i.c
  br i1 %exitcond.not.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit, label %.lr.ph102.i, !prof !144, !llvm.loop !138

bb.ad:                                            ; preds = %.lr.ph102.i
  %.not59.i = icmp ugt ptr %.4101.i, %i.l
  br i1 %.not59.i, label %.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.0.copyload.i65.i = load i64, ptr %.4101.i, align 1
  br label %.split

.split:                                           ; preds = %bb.ae, %bb.ad
  %.10190 = phi i64 [ %.9189, %bb.ad ], [ %.0.copyload.i65.i, %bb.ae ] ; 2 uses
  %i.li = icmp ult i64 %.483100.i, 8
  %i.lj = add i64 %.483100.i, 4                   ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.lj ; 2 uses
  %i.ll = ptrtoint ptr %.11129 to i64
  %i.lm = ptrtoint ptr %.8148 to i64
  %i.ln = sub i64 %i.ll, %i.lm                    ; 2 uses
  br i1 %i.li, label %bb.af, label %bb.ag

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit: ; preds = %bb.ac, %.preheader.i
  %.483.lcssa.i = phi i64 [ %.281.lcssa.i, %.preheader.i ], [ %i.kk, %bb.ac ] ; 2 uses
  %i.lo = icmp ult i64 %.483.lcssa.i, 8
  %i.lp = add i64 %.483.lcssa.i, 4                ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.lp ; 2 uses
  %i.lr = ptrtoint ptr %.11129 to i64
  %i.ls = ptrtoint ptr %.8148 to i64
  %i.lt = sub i64 %i.lr, %i.ls                    ; 2 uses
  br i1 %i.lo, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.split, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit
  %i.lu = phi i64 [ %i.kh, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lt, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.ln, %.split ] ; 3 uses
  %i.lv = phi ptr [ %i.ke, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lq, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lk, %.split ]
  %i.lw = phi i64 [ %i.kd, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lp, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lj, %.split ]
  %.11191236 = phi i64 [ %i.kc, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %.9189, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %.10190, %.split ]
  %i.lx = shl nuw nsw i64 %i.lw, 2
  %i.ly = shl i64 %i.lu, 8
  %i.lz = add nuw i64 %i.lx, %i.ly
  %i.ma = trunc i64 %i.lz to i32
  %i.mb = trunc nuw nsw i64 %i.lu to i32
  %i.mc = lshr i32 %i.mb, 3
  %i.md = and i32 %i.mc, 224
  %i.me = add nsw i32 %i.md, -15
  %i.mf = icmp ult i64 %i.lu, 2048                ; 2 uses
  %i.mg = select i1 %i.mf, i32 %i.me, i32 -2
  %i.mh = add i32 %i.mg, %i.ma
  store i32 %i.mh, ptr %.8, align 1
  %i.mi = select i1 %i.mf, i64 2, i64 3
  %i.mj = getelementptr inbounds nuw i8, ptr %.8, i64 %i.mi
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.ag:                                            ; preds = %.split, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit
  %i.mk = phi i64 [ %i.kz, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.lt, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.ln, %.split ] ; 6 uses
  %i.ml = phi ptr [ %i.kw, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.lq, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lk, %.split ] ; 2 uses
  %i.mm = phi i64 [ %i.kv, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.lp, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lj, %.split ] ; 5 uses
  %.11191244 = phi i64 [ %i.kt, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %.9189, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %.10190, %.split ] ; 2 uses
  %i.mn = icmp ugt i64 %i.mm, 67
  br i1 %i.mn, label %.lr.ph.i167, label %._crit_edge.i164, !prof !148

.lr.ph.i167:                                      ; preds = %bb.ag
  %.tr21.i = trunc i64 %i.mk to i32
  %i.mo = shl i32 %.tr21.i, 8
  %i.mp = or disjoint i32 %i.mo, 254              ; 9 uses
  %i.mq = add i64 %i.mm, -68                      ; 2 uses
  %i.mr = lshr i64 %i.mq, 6
  %i.ms = add nuw nsw i64 %i.mr, 1
  %xtraiter = and i64 %i.ms, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !prof !146

.prol.preheader:                                  ; preds = %.lr.ph.i167, %.prol.preheader
  %.023.i.prol = phi i64 [ %i.mu, %.prol.preheader ], [ %i.mm, %.lr.ph.i167 ]
  %.01522.i.prol = phi ptr [ %i.mt, %.prol.preheader ], [ %.8, %.lr.ph.i167 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i167 ]
  store i32 %i.mp, ptr %.01522.i.prol, align 1
  %i.mt = getelementptr inbounds nuw i8, ptr %.01522.i.prol, i64 3 ; 3 uses
  %i.mu = add i64 %.023.i.prol, -64               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !prof !149, !llvm.loop !139

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i167
  %.023.i.unr = phi i64 [ %i.mm, %.lr.ph.i167 ], [ %i.mu, %.prol.preheader ]
  %.01522.i.unr = phi ptr [ %.8, %.lr.ph.i167 ], [ %i.mt, %.prol.preheader ]
  %.lcssa416.unr = phi ptr [ poison, %.lr.ph.i167 ], [ %i.mt, %.prol.preheader ]
  %.lcssa415.unr = phi i64 [ poison, %.lr.ph.i167 ], [ %i.mu, %.prol.preheader ]
  %i.mv = icmp ult i64 %i.mq, 448
  br i1 %i.mv, label %._crit_edge.i164, label %.lr.ph.i167.new, !prof !143

.lr.ph.i167.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i167.new
  %.023.i = phi i64 [ %i.ne, %.lr.ph.i167.new ], [ %.023.i.unr, %.prol.loopexit ]
  %.01522.i = phi ptr [ %i.nd, %.lr.ph.i167.new ], [ %.01522.i.unr, %.prol.loopexit ] ; 9 uses
  store i32 %i.mp, ptr %.01522.i, align 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.01522.i, i64 3
  store i32 %i.mp, ptr %i.mw, align 1
  %i.mx = getelementptr inbounds nuw i8, ptr %.01522.i, i64 6
  store i32 %i.mp, ptr %i.mx, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.01522.i, i64 9
  store i32 %i.mp, ptr %i.my, align 1
  %i.mz = getelementptr inbounds nuw i8, ptr %.01522.i, i64 12
  store i32 %i.mp, ptr %i.mz, align 1
  %i.na = getelementptr inbounds nuw i8, ptr %.01522.i, i64 15
  store i32 %i.mp, ptr %i.na, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %.01522.i, i64 18
  store i32 %i.mp, ptr %i.nb, align 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.01522.i, i64 21
  store i32 %i.mp, ptr %i.nc, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.01522.i, i64 24 ; 2 uses
  %i.ne = add i64 %.023.i, -512                   ; 3 uses
  %i.nf = icmp ugt i64 %i.ne, 67
  br i1 %i.nf, label %.lr.ph.i167.new, label %._crit_edge.i164, !prof !150, !llvm.loop !140

._crit_edge.i164:                                 ; preds = %.prol.loopexit, %.lr.ph.i167.new, %bb.ag
  %.015.lcssa.i = phi ptr [ %.8, %bb.ag ], [ %.lcssa416.unr, %.prol.loopexit ], [ %i.nd, %.lr.ph.i167.new ] ; 5 uses
  %.0.lcssa.i = phi i64 [ %i.mm, %bb.ag ], [ %.lcssa415.unr, %.prol.loopexit ], [ %i.ne, %.lr.ph.i167.new ] ; 5 uses
  %i.ng = icmp samesign ugt i64 %.0.lcssa.i, 64
  br i1 %i.ng, label %.thread.i165, label %bb.ah

.thread.i165:                                     ; preds = %._crit_edge.i164
  %.tr.i166 = trunc i64 %i.mk to i32              ; 2 uses
  %i.nh = shl i32 %.tr.i166, 8
  %i.ni = or disjoint i32 %i.nh, 238
  store i32 %i.ni, ptr %.015.lcssa.i, align 1
  %i.nj = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  %i.nk = add nsw i64 %.0.lcssa.i, -60
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i164
  %i.nl = icmp samesign ult i64 %.0.lcssa.i, 12
  br i1 %i.nl, label %._crit_edge26.i, label %bb.aj

._crit_edge26.i:                                  ; preds = %bb.ah
  %.pre.i = trunc nuw nsw i64 %i.mk to i32
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge26.i, %.thread.i165
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge26.i ], [ %.tr.i166, %.thread.i165 ]
  %.120.i = phi i64 [ %.0.lcssa.i, %._crit_edge26.i ], [ %i.nk, %.thread.i165 ]
  %.11619.i = phi ptr [ %.015.lcssa.i, %._crit_edge26.i ], [ %i.nj, %.thread.i165 ] ; 2 uses
  %i.nm = shl nuw nsw i64 %.120.i, 2
  %i.nn = shl i64 %i.mk, 8
  %i.no = add nuw i64 %i.nm, %i.nn
  %i.np = trunc i64 %i.no to i32
  %i.nq = lshr i32 %.pre-phi.i, 3
  %i.nr = and i32 %i.nq, 224
  %i.ns = add nsw i32 %i.nr, -15
  %i.nt = icmp ult i64 %i.mk, 2048                ; 2 uses
  %i.nu = select i1 %i.nt, i32 %i.ns, i32 -2
  %i.nv = add i32 %i.nu, %i.np
  store i32 %i.nv, ptr %.11619.i, align 1
  %i.nw = select i1 %i.nt, i64 2, i64 3
  %i.nx = getelementptr inbounds nuw i8, ptr %.11619.i, i64 %i.nw
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ny = shl nuw nsw i64 %.0.lcssa.i, 2
  %i.nz = shl i64 %i.mk, 8
  %i.oa = add i64 %i.nz, 4294967294
  %i.ob = add i64 %i.oa, %i.ny
  %i.oc = trunc i64 %i.ob to i32
  store i32 %i.oc, ptr %.015.lcssa.i, align 1
  %i.od = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit:          ; preds = %bb.aj, %bb.ai, %bb.af
  %i.oe = phi ptr [ %i.lv, %bb.af ], [ %i.ml, %bb.ai ], [ %i.ml, %bb.aj ] ; 6 uses
  %.11191235 = phi i64 [ %.11191236, %bb.af ], [ %.11191244, %bb.ai ], [ %.11191244, %bb.aj ] ; 3 uses
  %.9 = phi ptr [ %i.mj, %bb.af ], [ %i.nx, %bb.ai ], [ %i.od, %bb.aj ] ; 3 uses
  %.not158 = icmp ult ptr %i.oe, %i.e
  br i1 %.not158, label %bb.ak, label %.thread252, !prof !38

bb.ak:                                            ; preds = %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit
  %i.of = ptrtoint ptr %i.oe to i64
  %i.og = sub i64 %i.of, %i.h
  %i.oh = trunc i64 %i.og to i16                  ; 2 uses
  %i.oi = add i16 %i.oh, -1
  %i.oj = getelementptr inbounds i8, ptr %i.oe, i64 -1
  %.0.copyload.i168 = load i32, ptr %i.oj, align 1
  %i.ok = mul i32 %.0.copyload.i168, 506832829
  %i.ol = lshr i32 %i.ok, 17
  %i.om = and i32 %i.ol, %i.b
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = add i64 %i.on, %i.i
  %i.op = inttoptr i64 %i.oo to ptr
  store i16 %i.oi, ptr %i.op, align 2, !tbaa !40
  %i.oq = trunc i64 %.11191235 to i32             ; 2 uses
  %i.or = mul i32 %i.oq, 506832829
  %i.os = lshr i32 %i.or, 17
  %i.ot = and i32 %i.os, %i.b
  %i.ou = zext nneg i32 %i.ot to i64
  %i.ov = add i64 %i.ou, %i.i
  %i.ow = inttoptr i64 %i.ov to ptr               ; 2 uses
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !40
  %i.oy = zext i16 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 %i.oy ; 2 uses
  store i16 %i.oh, ptr %i.ow, align 2, !tbaa !40
  %.0.copyload.i169 = load i32, ptr %i.oz, align 1
  %i.pa = icmp eq i32 %.0.copyload.i169, %i.oq
  br i1 %i.pa, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit, label %bb.al, !llvm.loop !141

bb.al:                                            ; preds = %bb.ak
  %i.pb = lshr i64 %.11191235, 8
  %i.pc = trunc i64 %i.pb to i32
  br label %bb.c

.thread252:                                       ; preds = %bb.q, %bb.r, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit, %bb.a
  %.13 = phi ptr [ %0, %bb.a ], [ %.0118, %bb.r ], [ %i.oe, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0118, %bb.q ] ; 3 uses
  %.11 = phi ptr [ %2, %bb.a ], [ %.0117, %bb.r ], [ %.9, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0117, %bb.q ] ; 4 uses
  %i.pd = icmp ult ptr %.13, %i.c
  br i1 %i.pd, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.thread252
  %i.pe = ptrtoint ptr %i.c to i64
  %i.pf = ptrtoint ptr %.13 to i64
  %i.pg = sub i64 %i.pe, %i.pf                    ; 2 uses
  %i.ph = trunc i64 %i.pg to i32                  ; 2 uses
  %i.pi = add nsw i32 %i.ph, -1                   ; 3 uses
  %i.pj = icmp slt i32 %i.ph, 61
  br i1 %i.pj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.tr.i173 = trunc i32 %i.pi to i8
  %i.pk = shl i8 %.tr.i173, 2
  br label %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

bb.ao:                                            ; preds = %bb.am
  %i.pl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.pi, i1 true)
  %i.pm = lshr i32 %i.pl, 3
  %i.pn = xor i32 %i.pm, 3                        ; 2 uses
  %.tr16.i = trunc nuw nsw i32 %i.pn to i8
  %i.po = shl nuw nsw i8 %.tr16.i, 2
  %i.pp = or disjoint i8 %i.po, -16
  %i.pq = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 2 uses
  store i32 %i.pi, ptr %i.pq, align 1
  %i.pr = zext nneg i32 %i.pn to i64
  %i.ps = getelementptr i8, ptr %i.pq, i64 %i.pr
  br label %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit:    ; preds = %bb.an, %bb.ao
  %.sink.i170 = phi i8 [ %i.pk, %bb.an ], [ %i.pp, %bb.ao ]
  %.pn.i171 = phi ptr [ %.11, %bb.an ], [ %i.ps, %bb.ao ]
  store i8 %.sink.i170, ptr %.11, align 1, !tbaa !25
  %.0.i172 = getelementptr i8, ptr %.pn.i171, i64 1 ; 2 uses
  %sext257 = shl i64 %i.pg, 32
  %i.pt = ashr exact i64 %sext257, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i172, ptr readonly align 1 %.13, i64 %i.pt, i1 false)
  %i.pu = getelementptr inbounds i8, ptr %.0.i172, i64 %i.pt
  br label %bb.ap

bb.ap:                                            ; preds = %.thread252, %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit
  %.0 = phi ptr [ %.11, %.thread252 ], [ %i.pu, %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6snappy9MemCopy64EPcPKvm(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 !guid !152 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = icmp ugt i64 %2, 32
  br i1 %i.a, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6snappy9MemCopy64ElPKvm(i64 noundef %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 !guid !153 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6snappy13ClearDeferredEPPKvPmPh(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2) local_unnamed_addr #7 !guid !154 {
bb.a:
  store ptr %2, ptr %0, align 8, !tbaa !44
  store i64 0, ptr %1, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6snappy12DeferMemCopyEPPKvPmS1_m(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #7 !guid !155 {
bb.a:
  store ptr %2, ptr %0, align 8, !tbaa !44
  store i64 %3, ptr %1, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0) local_unnamed_addr #3 align 2 !guid !157 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !51
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.k) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.o = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.a) #23 ; 2 uses
  %i.t = load i64, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.u = trunc i64 %i.t to i32
  store i32 %i.u, ptr %i.i, align 8, !tbaa !51
  %i.v = icmp eq i64 %i.t, 0                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = zext i1 %i.v to i8
  store i8 %i.x, ptr %i.w, align 4, !tbaa !54
end_hunk_1
begin_hunk_2_@_ZN6snappy13RawUncompressEPKcmPc:bb.a
  %3 = alloca %"class.snappy::SnappyDecompressor", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.snappy::SnappyArrayWriter", align 8 ; 7 uses
  %5 = alloca %"class.snappy::ByteArraySource", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6snappy15ByteArraySourceE, i64 16), ptr %5, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %1, ptr %i.c, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %2, ptr %4, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %2, ptr %i.d, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %2, ptr %i.f, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %5, ptr %3, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i8 0, ptr %i.i, align 4, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !37
  %i.j = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(42) %3, ptr noundef nonnull %i.a)
  br i1 %i.j, label %bb.b, label %_ZN6snappy13RawUncompressEPNS_6SourceEPc.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %5, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %5) #23, !inline_history !169 ; 0 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !37
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  store ptr %i.q, ptr %i.e, align 8, !tbaa !75
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 63)
  %i.r = sub nsw i64 0, %.sroa.speculated.i.i.i.i
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %i.f, align 8, !tbaa !76
  call void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyArrayWriterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(42) %3, ptr noundef nonnull %4)
  %i.t = load i8, ptr %i.i, align 4, !tbaa !54, !range !70, !noundef !71
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %_ZN6snappy13RawUncompressEPNS_6SourceEPc.exit

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.x = icmp eq ptr %i.v, %i.w
  br label %_ZN6snappy13RawUncompressEPNS_6SourceEPc.exit

_ZN6snappy13RawUncompressEPNS_6SourceEPc.exit:    ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.x, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.y = load ptr, ptr %3, align 8, !tbaa !50     ; 2 uses
  %i.z = load i32, ptr %i.h, align 8, !tbaa !51
  %i.aa = zext i32 %i.z to i64
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.aa) #23, !inline_history !170
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN6snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i1 %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6snappy13RawUncompressEPNS_6SourceEPc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !guid !174 {
bb.a:
  %2 = alloca %"class.snappy::SnappyDecompressor", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.snappy::SnappyArrayWriter", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %1, ptr %3, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  store i8 0, ptr %i.g, align 4, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !37
  %i.h = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(42) %2, ptr noundef nonnull %i.a)
  br i1 %i.h, label %bb.b, label %_ZN6snappyL18InternalUncompressINS_17SnappyArrayWriterEEEbPNS_6SourceEPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0) #23, !inline_history !172 ; 0 uses
  %i.m = load i32, ptr %i.a, align 4, !tbaa !37
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !75
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.n, i64 63)
  %i.p = sub nsw i64 0, %.sroa.speculated.i.i.i
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  store ptr %i.q, ptr %i.d, align 8, !tbaa !76
  call void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyArrayWriterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(42) %2, ptr noundef nonnull %3)
  %i.r = load i8, ptr %i.g, align 4, !tbaa !54, !range !70, !noundef !71
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %_ZN6snappyL18InternalUncompressINS_17SnappyArrayWriterEEEbPNS_6SourceEPT_.exit

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.v = icmp eq ptr %i.t, %i.u
  br label %_ZN6snappyL18InternalUncompressINS_17SnappyArrayWriterEEEbPNS_6SourceEPT_.exit

_ZN6snappyL18InternalUncompressINS_17SnappyArrayWriterEEEbPNS_6SourceEPT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.v, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.w = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.x = load i32, ptr %i.f, align 8, !tbaa !51
  %i.y = zext i32 %i.x to i64
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef %i.y) #23, !inline_history !173
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6snappy10UncompressEPKcmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 !guid !175 {
bb.a:
  %.not.i.not.i = icmp eq i64 %1, 0
  br i1 %.not.i.not.i, label %_ZN6snappy21GetUncompressedLengthEPKcmPm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !25      ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i32                 ; 2 uses
  %i.e = icmp sgt i8 %i.b, -1
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not42.i.not.i = icmp eq i64 %1, 1
  br i1 %.not42.i.not.i, label %_ZN6snappy21GetUncompressedLengthEPKcmPm.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !25    ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 7
  %i.j = and i32 %i.i, 16256
  %i.k = or disjoint i32 %i.j, %i.d               ; 2 uses
  %i.l = icmp sgt i8 %i.g, -1
  br i1 %i.l, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not43.i.i = icmp samesign ugt i64 %1, 2
  br i1 %.not43.i.i, label %bb.f, label %_ZN6snappy21GetUncompressedLengthEPKcmPm.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !25    ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 14
  %i.q = and i32 %i.p, 2080768
  %i.r = or disjoint i32 %i.q, %i.k               ; 2 uses
  %i.s = icmp sgt i8 %i.n, -1
  br i1 %i.s, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not44.i.not.i = icmp eq i64 %1, 3
  br i1 %.not44.i.not.i, label %_ZN6snappy21GetUncompressedLengthEPKcmPm.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !25    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 21
  %i.x = and i32 %i.w, 266338304
  %i.y = or disjoint i32 %i.x, %i.r               ; 2 uses
  %i.z = icmp sgt i8 %i.u, -1
  br i1 %i.z, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not45.i.i = icmp samesign ugt i64 %1, 4
  br i1 %.not45.i.i, label %bb.j, label %_ZN6snappy21GetUncompressedLengthEPKcmPm.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !25   ; 2 uses
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw i32 %i.ab, 28
  %i.ad = or disjoint i32 %i.ac, %i.y
  %i.ae = icmp ult i8 %i.aa, 16
  br i1 %i.ae, label %bb.k, label %_ZN6snappy21GetUncompressedLengthEPKcmPm.exit.thread

bb.k:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j
  %.0.i = phi i32 [ %i.y, %bb.h ], [ %i.d, %bb.b ], [ %i.k, %bb.d ], [ %i.r, %bb.f ], [ %i.ad, %bb.j ]
  %i.af = zext i32 %.0.i to i64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.af, i8 noundef signext 0) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !79
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN6snappy15string_as_arrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %2, align 8, !tbaa !80
  br label %_ZN6snappy15string_as_arrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6snappy15string_as_arrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.k, %bb.l
  %i.ak = phi ptr [ %i.aj, %bb.l ], [ null, %bb.k ]
  %i.al = tail call noundef zeroext i1 @_ZN6snappy13RawUncompressEPKcmPc(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %i.ak)
  br label %_ZN6snappy21GetUncompressedLengthEPKcmPm.exit.thread

_ZN6snappy21GetUncompressedLengthEPKcmPm.exit.thread: ; preds = %bb.g, %bb.e, %bb.c, %bb.a, %bb.j, %bb.i, %_ZN6snappy15string_as_arrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.0 = phi i1 [ %i.al, %_ZN6snappy15string_as_arrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6snappy23IsValidCompressedBufferEPKcm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 !guid !176 {
bb.a:
  %2 = alloca %"class.snappy::SnappyDecompressor", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.snappy::ByteArraySource", align 8 ; 9 uses
  %4 = alloca %"class.snappy::SnappyDecompressionValidator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6snappy15ByteArraySourceE, i64 16), ptr %3, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %1, ptr %i.c, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  store i8 0, ptr %i.f, align 4, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !37
  %i.g = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(42) %2, ptr noundef nonnull %i.a)
  br i1 %i.g, label %bb.b, label %_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %3) #23, !inline_history !1 ; 0 uses
  %i.l = load i32, ptr %i.a, align 4, !tbaa !37
  %i.m = zext i32 %i.l to i64
  store i64 %i.m, ptr %4, align 8, !tbaa !82
  call void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_(ptr noundef nonnull align 8 dereferenceable(42) %2, ptr noundef nonnull %4)
  %i.n = load i8, ptr %i.f, align 4, !tbaa !54, !range !70, !noundef !71
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %4, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !83
  %i.s = icmp eq i64 %i.p, %i.r
  br label %_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit

_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.s, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.t = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.u = load i32, ptr %i.e, align 8, !tbaa !51
  %i.v = zext i32 %i.u to i64
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef %i.v) #23, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN6snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6snappy17IsValidCompressedEPNS_6SourceE(ptr noundef %0) local_unnamed_addr #3 !guid !177 {
bb.a:
  %1 = alloca %"class.snappy::SnappyDecompressor", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.snappy::SnappyDecompressionValidator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr %0, ptr %1, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  store i8 0, ptr %i.d, align 4, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !37
  %i.e = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull %i.a)
  br i1 %i.e, label %bb.b, label %_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0) #23, !inline_history !1 ; 0 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !37
  %i.k = zext i32 %i.j to i64
  store i64 %i.k, ptr %2, align 8, !tbaa !82
  call void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull %2)
  %i.l = load i8, ptr %i.d, align 4, !tbaa !54, !range !70, !noundef !71
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %2, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !83
  %i.q = icmp eq i64 %i.n, %i.p
  br label %_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit

_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.q, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.r = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.s = load i32, ptr %i.c, align 8, !tbaa !51
  %i.t = zext i32 %i.s to i64
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %i.t) #23, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6snappy11RawCompressEPKcmPcPm(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #3 !guid !178 {
bb.a:
  %4 = alloca %"class.snappy::ByteArraySource", align 8 ; 7 uses
  %5 = alloca %"class.snappy::UncheckedByteArraySink", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6snappy15ByteArraySourceE, i64 16), ptr %4, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %1, ptr %i.b, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6snappy22UncheckedByteArraySinkE, i64 16), ptr %5, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !86
  %i.d = call noundef i64 @_ZN6snappy8CompressEPNS_6SourceEPNS_4SinkE(ptr noundef nonnull %4, ptr noundef nonnull %5) ; 0 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.f, %i.g
  store i64 %i.h, ptr %3, align 8, !tbaa !27
  call void @_ZN6snappy22UncheckedByteArraySinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN6snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6snappy22UncheckedByteArraySinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6snappy20RawCompressFromIOVecEPK5iovecmPcPm(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 !guid !179 {
bb.a:
  %4 = alloca %"class.snappy::SnappyIOVecReader", align 8 ; 9 uses
  %5 = alloca %"class.snappy::UncheckedByteArraySink", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6snappy17SnappyIOVecReaderE, i64 16), ptr %4, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !64
  store ptr %i.c, ptr %i.b, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !90
end_hunk_2
