Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/snappy/original/snappy?download=true
inline.NumInlined: 501
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [256 x i16] }
%"struct.std::array.10" = type { [16 x i8] }
%"class.snappy::SnappyDecompressor" = type <{ ptr, ptr, ptr, ptr, i64, i8, [5 x i8], [2 x i8] }>
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

@_ZTVN6snappy15ByteArraySourceE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN6snappy22UncheckedByteArraySinkE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN6snappy17SnappyIOVecReaderE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN6snappy6SourceD2Ev, ptr @_ZN6snappy17SnappyIOVecReaderD0Ev, ptr @_ZNK6snappy17SnappyIOVecReader9AvailableEv, ptr @_ZN6snappy17SnappyIOVecReader4PeekEPm, ptr @_ZN6snappy17SnappyIOVecReader4SkipEm] }, comdat, align 8
@_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE = internal unnamed_addr constant %"struct.std::array" { [256 x i16] [i16 -255, i16 4, i16 1, i16 255, i16 -254, i16 5, i16 2, i16 255, i16 -253, i16 6, i16 3, i16 255, i16 -252, i16 7, i16 4, i16 255, i16 -251, i16 8, i16 5, i16 255, i16 -250, i16 9, i16 6, i16 255, i16 -249, i16 10, i16 7, i16 255, i16 -248, i16 11, i16 8, i16 255, i16 -247, i16 -252, i16 9, i16 255, i16 -246, i16 -251, i16 10, i16 255, i16 -245, i16 -250, i16 11, i16 255, i16 -244, i16 -249, i16 12, i16 255, i16 -243, i16 -248, i16 13, i16 255, i16 -242, i16 -247, i16 14, i16 255, i16 -241, i16 -246, i16 15, i16 255, i16 -240, i16 -245, i16 16, i16 255, i16 -239, i16 -508, i16 17, i16 255, i16 -238, i16 -507, i16 18, i16 255, i16 -237, i16 -506, i16 19, i16 255, i16 -236, i16 -505, i16 20, i16 255, i16 -235, i16 -504, i16 21, i16 255, i16 -234, i16 -503, i16 22, i16 255, i16 -233, i16 -502, i16 23, i16 255, i16 -232, i16 -501, i16 24, i16 255, i16 -231, i16 -764, i16 25, i16 255, i16 -230, i16 -763, i16 26, i16 255, i16 -229, i16 -762, i16 27, i16 255, i16 -228, i16 -761, i16 28, i16 255, i16 -227, i16 -760, i16 29, i16 255, i16 -226, i16 -759, i16 30, i16 255, i16 -225, i16 -758, i16 31, i16 255, i16 -224, i16 -757, i16 32, i16 255, i16 -223, i16 -1020, i16 33, i16 255, i16 -222, i16 -1019, i16 34, i16 255, i16 -221, i16 -1018, i16 35, i16 255, i16 -220, i16 -1017, i16 36, i16 255, i16 -219, i16 -1016, i16 37, i16 255, i16 -218, i16 -1015, i16 38, i16 255, i16 -217, i16 -1014, i16 39, i16 255, i16 -216, i16 -1013, i16 40, i16 255, i16 -215, i16 -1276, i16 41, i16 255, i16 -214, i16 -1275, i16 42, i16 255, i16 -213, i16 -1274, i16 43, i16 255, i16 -212, i16 -1273, i16 44, i16 255, i16 -211, i16 -1272, i16 45, i16 255, i16 -210, i16 -1271, i16 46, i16 255, i16 -209, i16 -1270, i16 47, i16 255, i16 -208, i16 -1269, i16 48, i16 255, i16 -207, i16 -1532, i16 49, i16 255, i16 -206, i16 -1531, i16 50, i16 255, i16 -205, i16 -1530, i16 51, i16 255, i16 -204, i16 -1529, i16 52, i16 255, i16 -203, i16 -1528, i16 53, i16 255, i16 -202, i16 -1527, i16 54, i16 255, i16 -201, i16 -1526, i16 55, i16 255, i16 -200, i16 -1525, i16 56, i16 255, i16 -199, i16 -1788, i16 57, i16 255, i16 -198, i16 -1787, i16 58, i16 255, i16 -197, i16 -1786, i16 59, i16 255, i16 -196, i16 -1785, i16 60, i16 255, i16 255, i16 -1784, i16 61, i16 255, i16 255, i16 -1783, i16 62, i16 255, i16 255, i16 -1782, i16 63, i16 255, i16 255, i16 -1781, i16 64, i16 255] }, align 64
@_ZZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes = internal unnamed_addr global %"struct.std::array.10" zeroinitializer, align 8
@_ZGVZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes = internal global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN6snappy8internal13WorkingMemoryC1Em = dso_local unnamed_addr alias void (ptr, i64), ptr @_ZN6snappy8internal13WorkingMemoryC2Em
@_ZN6snappy8internal13WorkingMemoryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6snappy8internal13WorkingMemoryD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN6snappy19MaxCompressedLengthEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 32
  %i.b = udiv i64 %0, 6
  %i.c = add i64 %i.a, %i.b
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN6snappy21GetUncompressedLengthEPKcmPm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %.not.i.not = icmp eq i64 %1, 0
  br i1 %.not.i.not, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !16      ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i32                 ; 2 uses
  %i.e = icmp sgt i8 %i.b, -1
  br i1 %i.e, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not42.i.not = icmp eq i64 %1, 1
  br i1 %.not42.i.not, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !16    ; 2 uses
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
  %i.n = load i8, ptr %i.f, align 1, !tbaa !16    ; 2 uses
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
  %i.u = load i8, ptr %i.m, align 1, !tbaa !16    ; 2 uses
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
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !16   ; 2 uses
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw i32 %i.ab, 28
  %i.ad = or disjoint i32 %i.ac, %i.y
  %i.ae = icmp ult i8 %i.aa, 16
  br i1 %i.ae, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit, label %_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit.thread

_ZN6snappy6Varint16Parse32WithLimitEPKcS2_Pj.exit: ; preds = %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.y, %bb.h ], [ %i.d, %bb.b ], [ %i.k, %bb.d ], [ %i.r, %bb.f ], [ %i.ad, %bb.j ]
  %i.af = zext i32 %.0 to i64
  store i64 %i.af, ptr %2, align 8, !tbaa !18
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
define dso_local void @_ZN6snappy8internal13WorkingMemoryC2Em(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i64 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 65536) ; 3 uses
  %i.a = trunc nuw nsw i64 %.sroa.speculated to i32 ; 2 uses
  %i.b = icmp ugt i64 %1, 32768
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
  %.0.i = phi i64 [ %i.h, %bb.c ], [ 65536, %bb.a ], [ 512, %bb.b ] ; 2 uses
  %i.i = udiv i32 %i.a, 6
  %.zext = zext nneg i32 %i.i to i64
  %factor = shl nuw nsw i64 %.sroa.speculated, 1
  %i.j = add nuw nsw i64 %factor, 32
  %i.k = add nuw nsw i64 %i.j, %.zext
  %i.l = add nuw nsw i64 %i.k, %.0.i              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !125
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #21 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !126
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.speculated
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %i.s, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6snappy8internal13WorkingMemoryD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @_ZdlPv(ptr noundef %i.a) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK6snappy8internal13WorkingMemory12GetHashTableEmPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 3 uses
  %i.b = icmp ugt i32 %i.a, 32768
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
  %.0.i = phi i32 [ %i.g, %bb.c ], [ 32768, %bb.a ], [ 256, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.j = shl nuw nsw i32 %.0.i, 1
  %i.k = zext nneg i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.i, i8 0, i64 %i.k, i1 false)
  store i32 %.0.i, ptr %2, align 4, !tbaa !25
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !24
  ret ptr %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @_ZN6snappy8internal16CompressFragmentEPKcmPcPti(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address, ret: address, provenance) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = shl i32 %4, 1
  %i.b = add i32 %i.a, -2                         ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 8 uses
  %i.d = icmp ugt i64 %1, 14
  br i1 %i.d, label %bb.b, label %.thread252, !prof !26

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
  %.0153 = phi i32 [ %.0.copyload.i, %bb.b ], [ %i.pe, %bb.al ] ; 2 uses
  %.0118 = phi ptr [ %0, %bb.b ], [ %i.og, %bb.al ] ; 12 uses
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
  %i.s = lshr i32 %i.r, 16
  %i.t = and i32 %i.s, %i.b
  %i.u = zext nneg i32 %i.t to i64
  %i.v = add i64 %i.u, %i.i
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !28
  %i.y = zext i16 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = trunc i64 %i.q to i16
  store i16 %i.aa, ptr %i.w, align 2, !tbaa !28
  %.0.copyload.i160 = load i32, ptr %i.z, align 1
  %.not = icmp eq i32 %.0.copyload.i160, %.0153
  br i1 %.not, label %bb.p, label %bb.d, !prof !29

bb.d:                                             ; preds = %.preheader
  %i.ab = lshr i64 %.0.copyload.i159, 8           ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = mul i32 %i.ac, 506832829
  %i.ae = lshr i32 %i.ad, 16
  %i.af = and i32 %i.ae, %i.b
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = add i64 %i.ag, %i.i
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !28
  %i.ak = zext i16 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.am = trunc i64 %i.q to i16
  %i.an = add i16 %i.am, 1
  store i16 %i.an, ptr %i.ai, align 2, !tbaa !28
  %.0.copyload.i160.1 = load i32, ptr %i.al, align 1
  %.not.1 = icmp eq i32 %.0.copyload.i160.1, %i.ac
  br i1 %.not.1, label %bb.p, label %bb.e, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.ao = lshr i64 %.0.copyload.i159, 16          ; 2 uses
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = mul i32 %i.ap, 506832829
  %i.ar = lshr i32 %i.aq, 16
  %i.as = and i32 %i.ar, %i.b
  %i.at = zext nneg i32 %i.as to i64
  %i.au = add i64 %i.at, %i.i
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !28
  %i.ax = zext i16 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.az = trunc i64 %i.q to i16
  %i.ba = add i16 %i.az, 2
  store i16 %i.ba, ptr %i.av, align 2, !tbaa !28
  %.0.copyload.i160.2 = load i32, ptr %i.ay, align 1
  %.not.2 = icmp eq i32 %.0.copyload.i160.2, %i.ap
  br i1 %.not.2, label %bb.p, label %bb.f, !prof !29

bb.f:                                             ; preds = %bb.e
  %i.bb = lshr i64 %.0.copyload.i159, 24          ; 2 uses
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = mul i32 %i.bc, 506832829
  %i.be = lshr i32 %i.bd, 16
  %i.bf = and i32 %i.be, %i.b
  %i.bg = zext nneg i32 %i.bf to i64
end_hunk_0
begin_hunk_1_@_ZN6snappy8internal16CompressFragmentEPKcmPcPti:bb.a
bb.t:                                             ; preds = %bb.s
  %.tr37.i = trunc i32 %i.iy to i8
  %i.ja = shl i8 %.tr37.i, 2
  %i.jb = getelementptr inbounds nuw i8, ptr %.0117, i64 1 ; 2 uses
  store i8 %i.ja, ptr %.0117, align 1, !tbaa !16
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
  store i8 %.sink.i, ptr %.0117, align 1, !tbaa !16
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
  br i1 %i.js, label %bb.y, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, !llvm.loop !0

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader: ; preds = %bb.y, %bb.t, %bb.p
  %.9189.ph = phi i64 [ %.1181283.lcssa, %bb.p ], [ %.6186288, %bb.t ], [ %.6186288, %bb.y ]
  %.8148.ph = phi ptr [ %i.hq, %bb.p ], [ %i.iu, %bb.t ], [ %i.iu, %bb.y ]
  %.11129.ph = phi ptr [ %i.ht, %bb.p ], [ %.8126289, %bb.t ], [ %.8126289, %bb.y ]
  %.8.ph = phi ptr [ %i.hv, %bb.p ], [ %i.jd, %bb.t ], [ %i.jp, %bb.y ]
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit:    ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, %bb.ak
  %.9189 = phi i64 [ %.11191235, %bb.ak ], [ %.9189.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 3 uses
  %.8148 = phi ptr [ %i.pb, %bb.ak ], [ %.8148.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 6 uses
  %.11129 = phi ptr [ %i.og, %bb.ak ], [ %.11129.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 11 uses
  %.8 = phi ptr [ %.9, %bb.ak ], [ %.8.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.8148, i64 4 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.11129, i64 4 ; 3 uses
  %.not.i = icmp ugt ptr %i.ju, %i.k
  br i1 %.not.i, label %bb.aa, label %bb.z, !prof !29

bb.z:                                             ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %.0.copyload.i.i = load i64, ptr %i.jt, align 1 ; 2 uses
  %.0.copyload.i62.i = load i64, ptr %i.ju, align 1 ; 3 uses
  %.not59.i = icmp eq i64 %.0.copyload.i.i, %.0.copyload.i62.i
  br i1 %.not59.i, label %.thread.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread, !prof !29

.thread.i:                                        ; preds = %bb.z
  %i.jv = getelementptr inbounds nuw i8, ptr %.11129, i64 12
  br label %bb.aa

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread: ; preds = %bb.z
  %i.jw = xor i64 %.0.copyload.i62.i, %.0.copyload.i.i ; 2 uses
  %i.jx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jw, i1 true) ; 2 uses
  %i.jy = lshr i64 %i.jx, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %.11129, i64 8
  %.0.copyload.i63.i = load i64, ptr %i.jz, align 1
  %i.ka = tail call i64 asm "testl ${2:k}, ${2:k}\0A\09cmovzq $1, $0\0A\09", "=r,r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i63.i, i64 %i.jw, i64 %.0.copyload.i62.i) #23, !srcloc !132
  %i.kb = and i64 %i.jx, 24
  %i.kc = lshr i64 %i.ka, %i.kb
  %i.kd = add nuw nsw i64 %i.jy, 4                ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.kd
  %i.kf = ptrtoint ptr %.11129 to i64
  %i.kg = ptrtoint ptr %.8148 to i64
  %i.kh = sub i64 %i.kf, %i.kg
  br label %bb.af

bb.aa:                                            ; preds = %.thread.i, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %.182.i = phi i64 [ 0, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit ], [ 8, %.thread.i ] ; 2 uses
  %.1.i = phi ptr [ %i.ju, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit ], [ %i.jv, %.thread.i ] ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.8148, i64 68
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.ki, i32 0, i32 3, i32 1)
  %i.kj = getelementptr inbounds nuw i8, ptr %.1.i, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.kj, i32 0, i32 3, i32 1)
  %.not6098.i = icmp ugt ptr %.1.i, %i.k
  br i1 %.not6098.i, label %.preheader.i, label %.lr.ph.i, !prof !30

.preheader.i:                                     ; preds = %bb.ab, %bb.aa
  %.283.lcssa.i = phi i64 [ %.182.i, %bb.aa ], [ %i.ld, %bb.ab ] ; 3 uses
  %.2.lcssa.i = phi ptr [ %.1.i, %bb.aa ], [ %i.lc, %bb.ab ] ; 3 uses
  %i.kk = icmp ult ptr %.2.lcssa.i, %i.c
  br i1 %i.kk, label %.lr.ph104.preheader.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit, !prof !33

.lr.ph104.preheader.i:                            ; preds = %.preheader.i
  %.2.lcssa114.i = ptrtoaddr ptr %.2.lcssa.i to i64
  %i.kl = add i64 %.283.lcssa.i, %i.j
  %i.km = sub i64 %i.kl, %.2.lcssa114.i
  br label %.lr.ph104.i

.lr.ph.i:                                         ; preds = %bb.aa, %bb.ab
  %.2100.i = phi ptr [ %i.lc, %bb.ab ], [ %.1.i, %bb.aa ] ; 3 uses
  %.28399.i = phi i64 [ %i.ld, %bb.ab ], [ %.182.i, %bb.aa ] ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.28399.i
  %.0.copyload.i64.i = load i64, ptr %i.kn, align 1 ; 2 uses
  %.0.copyload.i65.i = load i64, ptr %.2100.i, align 1 ; 3 uses
  %i.ko = icmp eq i64 %.0.copyload.i64.i, %.0.copyload.i65.i
  br i1 %i.ko, label %bb.ab, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237: ; preds = %.lr.ph.i
  %i.kp = xor i64 %.0.copyload.i65.i, %.0.copyload.i64.i ; 2 uses
  %i.kq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kp, i1 true) ; 2 uses
  %i.kr = lshr i64 %i.kq, 3
  %i.ks = getelementptr inbounds nuw i8, ptr %.2100.i, i64 4
  %.0.copyload.i66.i = load i64, ptr %i.ks, align 1
  %i.kt = tail call i64 asm "testl ${2:k}, ${2:k}\0A\09cmovzq $1, $0\0A\09", "=r,r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i66.i, i64 %i.kp, i64 %.0.copyload.i65.i) #23, !srcloc !133
  %i.ku = and i64 %i.kq, 24
  %i.kv = lshr i64 %i.kt, %i.ku
  %i.kw = or disjoint i64 %i.kr, %.28399.i
  %i.kx = add i64 %i.kw, 4                        ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.kx
  %i.kz = ptrtoint ptr %.11129 to i64
  %i.la = ptrtoint ptr %.8148 to i64
  %i.lb = sub i64 %i.kz, %i.la
  br label %bb.ag

bb.ab:                                            ; preds = %.lr.ph.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.2100.i, i64 8 ; 3 uses
  %i.ld = add i64 %.28399.i, 8                    ; 2 uses
  %.not60.i = icmp ugt ptr %i.lc, %i.k
  br i1 %.not60.i, label %.preheader.i, label %.lr.ph.i, !prof !31

.lr.ph104.i:                                      ; preds = %bb.ac, %.lr.ph104.preheader.i
  %.4103.i = phi ptr [ %i.li, %bb.ac ], [ %.2.lcssa.i, %.lr.ph104.preheader.i ] ; 4 uses
  %.485102.i = phi i64 [ %i.lj, %bb.ac ], [ %.283.lcssa.i, %.lr.ph104.preheader.i ] ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.485102.i
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !16
  %i.lg = load i8, ptr %.4103.i, align 1, !tbaa !16
  %i.lh = icmp eq i8 %i.lf, %i.lg
  br i1 %i.lh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph104.i
  %i.li = getelementptr inbounds nuw i8, ptr %.4103.i, i64 1 ; 2 uses
  %i.lj = add i64 %.485102.i, 1
  %exitcond.not.i = icmp eq ptr %i.li, %i.c
  br i1 %exitcond.not.i, label %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit, label %.lr.ph104.i, !prof !31, !llvm.loop !128

bb.ad:                                            ; preds = %.lr.ph104.i
  %.not61.i = icmp ugt ptr %.4103.i, %i.l
  br i1 %.not61.i, label %.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.0.copyload.i67.i = load i64, ptr %.4103.i, align 1
  br label %.split

.split:                                           ; preds = %bb.ae, %bb.ad
  %.10190 = phi i64 [ %.9189, %bb.ad ], [ %.0.copyload.i67.i, %bb.ae ] ; 2 uses
  %i.lk = icmp ult i64 %.485102.i, 8
  %i.ll = add i64 %.485102.i, 4                   ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.ll ; 2 uses
  %i.ln = ptrtoint ptr %.11129 to i64
  %i.lo = ptrtoint ptr %.8148 to i64
  %i.lp = sub i64 %i.ln, %i.lo                    ; 2 uses
  br i1 %i.lk, label %bb.af, label %bb.ag

_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit: ; preds = %bb.ac, %.preheader.i
  %.485.lcssa.i = phi i64 [ %.283.lcssa.i, %.preheader.i ], [ %i.km, %bb.ac ] ; 2 uses
  %i.lq = icmp ult i64 %.485.lcssa.i, 8
  %i.lr = add i64 %.485.lcssa.i, 4                ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.11129, i64 %i.lr ; 2 uses
  %i.lt = ptrtoint ptr %.11129 to i64
  %i.lu = ptrtoint ptr %.8148 to i64
  %i.lv = sub i64 %i.lt, %i.lu                    ; 2 uses
  br i1 %i.lq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.split, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit
  %i.lw = phi i64 [ %i.kh, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lv, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lp, %.split ] ; 3 uses
  %i.lx = phi ptr [ %i.ke, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.ls, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lm, %.split ]
  %i.ly = phi i64 [ %i.kd, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %i.lr, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.ll, %.split ]
  %.11191236 = phi i64 [ %i.kc, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread ], [ %.9189, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %.10190, %.split ]
  %i.lz = shl nuw nsw i64 %i.ly, 2
  %i.ma = shl i64 %i.lw, 8
  %i.mb = add nuw i64 %i.lz, %i.ma
  %i.mc = trunc i64 %i.mb to i32
  %i.md = trunc nuw nsw i64 %i.lw to i32
  %i.me = lshr i32 %i.md, 3
  %i.mf = and i32 %i.me, 224
  %i.mg = add nsw i32 %i.mf, -15
  %i.mh = icmp ult i64 %i.lw, 2048                ; 2 uses
  %i.mi = select i1 %i.mh, i32 %i.mg, i32 -2
  %i.mj = add i32 %i.mi, %i.mc
  store i32 %i.mj, ptr %.8, align 1
  %i.mk = select i1 %i.mh, i64 2, i64 3
  %i.ml = getelementptr inbounds nuw i8, ptr %.8, i64 %i.mk
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.ag:                                            ; preds = %.split, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit
  %i.mm = phi i64 [ %i.lb, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.lv, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lp, %.split ] ; 6 uses
  %i.mn = phi ptr [ %i.ky, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.ls, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.lm, %.split ] ; 2 uses
  %i.mo = phi i64 [ %i.kx, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %i.lr, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %i.ll, %.split ] ; 5 uses
  %.11191244 = phi i64 [ %i.kv, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit.thread237 ], [ %.9189, %_ZN6snappy8internalL15FindMatchLengthEPKcS2_S2_Pm.exit ], [ %.10190, %.split ] ; 2 uses
  %i.mp = icmp ugt i64 %i.mo, 67
  br i1 %i.mp, label %.lr.ph.i167, label %._crit_edge.i164, !prof !34

.lr.ph.i167:                                      ; preds = %bb.ag
  %.tr21.i = trunc i64 %i.mm to i32
  %i.mq = shl i32 %.tr21.i, 8
  %i.mr = or disjoint i32 %i.mq, 254              ; 9 uses
  %i.ms = add i64 %i.mo, -68                      ; 2 uses
  %i.mt = lshr i64 %i.ms, 6
  %i.mu = add nuw nsw i64 %i.mt, 1
  %xtraiter = and i64 %i.mu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !prof !33

.prol.preheader:                                  ; preds = %.lr.ph.i167, %.prol.preheader
  %.023.i.prol = phi i64 [ %i.mw, %.prol.preheader ], [ %i.mo, %.lr.ph.i167 ]
  %.01522.i.prol = phi ptr [ %i.mv, %.prol.preheader ], [ %.8, %.lr.ph.i167 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i167 ]
  store i32 %i.mr, ptr %.01522.i.prol, align 1
  %i.mv = getelementptr inbounds nuw i8, ptr %.01522.i.prol, i64 3 ; 3 uses
  %i.mw = add i64 %.023.i.prol, -64               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !prof !35, !llvm.loop !129

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i167
  %.023.i.unr = phi i64 [ %i.mo, %.lr.ph.i167 ], [ %i.mw, %.prol.preheader ]
  %.01522.i.unr = phi ptr [ %.8, %.lr.ph.i167 ], [ %i.mv, %.prol.preheader ]
  %.lcssa416.unr = phi ptr [ poison, %.lr.ph.i167 ], [ %i.mv, %.prol.preheader ]
  %.lcssa415.unr = phi i64 [ poison, %.lr.ph.i167 ], [ %i.mw, %.prol.preheader ]
  %i.mx = icmp ult i64 %i.ms, 448
  br i1 %i.mx, label %._crit_edge.i164, label %.lr.ph.i167.new, !prof !30

.lr.ph.i167.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i167.new
  %.023.i = phi i64 [ %i.ng, %.lr.ph.i167.new ], [ %.023.i.unr, %.prol.loopexit ]
  %.01522.i = phi ptr [ %i.nf, %.lr.ph.i167.new ], [ %.01522.i.unr, %.prol.loopexit ] ; 9 uses
  store i32 %i.mr, ptr %.01522.i, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.01522.i, i64 3
  store i32 %i.mr, ptr %i.my, align 1
  %i.mz = getelementptr inbounds nuw i8, ptr %.01522.i, i64 6
  store i32 %i.mr, ptr %i.mz, align 1
  %i.na = getelementptr inbounds nuw i8, ptr %.01522.i, i64 9
  store i32 %i.mr, ptr %i.na, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %.01522.i, i64 12
  store i32 %i.mr, ptr %i.nb, align 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.01522.i, i64 15
  store i32 %i.mr, ptr %i.nc, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.01522.i, i64 18
  store i32 %i.mr, ptr %i.nd, align 1
  %i.ne = getelementptr inbounds nuw i8, ptr %.01522.i, i64 21
  store i32 %i.mr, ptr %i.ne, align 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.01522.i, i64 24 ; 2 uses
  %i.ng = add i64 %.023.i, -512                   ; 3 uses
  %i.nh = icmp ugt i64 %i.ng, 67
  br i1 %i.nh, label %.lr.ph.i167.new, label %._crit_edge.i164, !prof !37, !llvm.loop !130

._crit_edge.i164:                                 ; preds = %.prol.loopexit, %.lr.ph.i167.new, %bb.ag
  %.015.lcssa.i = phi ptr [ %.8, %bb.ag ], [ %.lcssa416.unr, %.prol.loopexit ], [ %i.nf, %.lr.ph.i167.new ] ; 5 uses
  %.0.lcssa.i = phi i64 [ %i.mo, %bb.ag ], [ %.lcssa415.unr, %.prol.loopexit ], [ %i.ng, %.lr.ph.i167.new ] ; 5 uses
  %i.ni = icmp samesign ugt i64 %.0.lcssa.i, 64
  br i1 %i.ni, label %.thread.i165, label %bb.ah

.thread.i165:                                     ; preds = %._crit_edge.i164
  %.tr.i166 = trunc i64 %i.mm to i32              ; 2 uses
  %i.nj = shl i32 %.tr.i166, 8
  %i.nk = or disjoint i32 %i.nj, 238
  store i32 %i.nk, ptr %.015.lcssa.i, align 1
  %i.nl = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  %i.nm = add nsw i64 %.0.lcssa.i, -60
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i164
  %i.nn = icmp samesign ult i64 %.0.lcssa.i, 12
  br i1 %i.nn, label %._crit_edge26.i, label %bb.aj

._crit_edge26.i:                                  ; preds = %bb.ah
  %.pre.i = trunc nuw nsw i64 %i.mm to i32
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge26.i, %.thread.i165
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge26.i ], [ %.tr.i166, %.thread.i165 ]
  %.120.i = phi i64 [ %.0.lcssa.i, %._crit_edge26.i ], [ %i.nm, %.thread.i165 ]
  %.11619.i = phi ptr [ %.015.lcssa.i, %._crit_edge26.i ], [ %i.nl, %.thread.i165 ] ; 2 uses
  %i.no = shl nuw nsw i64 %.120.i, 2
  %i.np = shl i64 %i.mm, 8
  %i.nq = add nuw i64 %i.no, %i.np
  %i.nr = trunc i64 %i.nq to i32
  %i.ns = lshr i32 %.pre-phi.i, 3
  %i.nt = and i32 %i.ns, 224
  %i.nu = add nsw i32 %i.nt, -15
  %i.nv = icmp ult i64 %i.mm, 2048                ; 2 uses
  %i.nw = select i1 %i.nv, i32 %i.nu, i32 -2
  %i.nx = add i32 %i.nw, %i.nr
  store i32 %i.nx, ptr %.11619.i, align 1
  %i.ny = select i1 %i.nv, i64 2, i64 3
  %i.nz = getelementptr inbounds nuw i8, ptr %.11619.i, i64 %i.ny
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.aj:                                            ; preds = %bb.ah
  %i.oa = shl nuw nsw i64 %.0.lcssa.i, 2
  %i.ob = shl i64 %i.mm, 8
  %i.oc = add i64 %i.ob, 4294967294
  %i.od = add i64 %i.oc, %i.oa
  %i.oe = trunc i64 %i.od to i32
  store i32 %i.oe, ptr %.015.lcssa.i, align 1
  %i.of = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit:          ; preds = %bb.aj, %bb.ai, %bb.af
  %i.og = phi ptr [ %i.lx, %bb.af ], [ %i.mn, %bb.ai ], [ %i.mn, %bb.aj ] ; 6 uses
  %.11191235 = phi i64 [ %.11191236, %bb.af ], [ %.11191244, %bb.ai ], [ %.11191244, %bb.aj ] ; 3 uses
  %.9 = phi ptr [ %i.ml, %bb.af ], [ %i.nz, %bb.ai ], [ %i.of, %bb.aj ] ; 3 uses
  %.not158 = icmp ult ptr %i.og, %i.e
  br i1 %.not158, label %bb.ak, label %.thread252, !prof !26

bb.ak:                                            ; preds = %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = sub i64 %i.oh, %i.h
  %i.oj = trunc i64 %i.oi to i16                  ; 2 uses
  %i.ok = add i16 %i.oj, -1
  %i.ol = getelementptr inbounds i8, ptr %i.og, i64 -1
  %.0.copyload.i168 = load i32, ptr %i.ol, align 1
  %i.om = mul i32 %.0.copyload.i168, 506832829
  %i.on = lshr i32 %i.om, 16
  %i.oo = and i32 %i.on, %i.b
  %i.op = zext nneg i32 %i.oo to i64
  %i.oq = add i64 %i.op, %i.i
  %i.or = inttoptr i64 %i.oq to ptr
  store i16 %i.ok, ptr %i.or, align 2, !tbaa !28
  %i.os = trunc i64 %.11191235 to i32             ; 2 uses
  %i.ot = mul i32 %i.os, 506832829
  %i.ou = lshr i32 %i.ot, 16
  %i.ov = and i32 %i.ou, %i.b
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = add i64 %i.ow, %i.i
  %i.oy = inttoptr i64 %i.ox to ptr               ; 2 uses
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !28
  %i.pa = zext i16 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 %i.pa ; 2 uses
  store i16 %i.oj, ptr %i.oy, align 2, !tbaa !28
  %.0.copyload.i169 = load i32, ptr %i.pb, align 1
  %i.pc = icmp eq i32 %.0.copyload.i169, %i.os
  br i1 %i.pc, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit, label %bb.al, !llvm.loop !131

bb.al:                                            ; preds = %bb.ak
  %i.pd = lshr i64 %.11191235, 8
  %i.pe = trunc i64 %i.pd to i32
  br label %bb.c

.thread252:                                       ; preds = %bb.q, %bb.r, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit, %bb.a
  %.13 = phi ptr [ %0, %bb.a ], [ %.0118, %bb.r ], [ %i.og, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0118, %bb.q ] ; 3 uses
  %.11 = phi ptr [ %2, %bb.a ], [ %.0117, %bb.r ], [ %.9, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0117, %bb.q ] ; 4 uses
  %i.pf = icmp ult ptr %.13, %i.c
  br i1 %i.pf, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.thread252
  %i.pg = ptrtoint ptr %i.c to i64
  %i.ph = ptrtoint ptr %.13 to i64
  %i.pi = sub i64 %i.pg, %i.ph                    ; 2 uses
  %i.pj = trunc i64 %i.pi to i32                  ; 2 uses
  %i.pk = add nsw i32 %i.pj, -1                   ; 3 uses
  %i.pl = icmp slt i32 %i.pj, 61
  br i1 %i.pl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.tr.i173 = trunc i32 %i.pk to i8
  %i.pm = shl i8 %.tr.i173, 2
  br label %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

bb.ao:                                            ; preds = %bb.am
  %i.pn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.pk, i1 true)
  %i.po = lshr i32 %i.pn, 3
  %i.pp = xor i32 %i.po, 3                        ; 2 uses
  %.tr16.i = trunc nuw nsw i32 %i.pp to i8
  %i.pq = shl nuw nsw i8 %.tr16.i, 2
  %i.pr = or disjoint i8 %i.pq, -16
  %i.ps = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 2 uses
  store i32 %i.pk, ptr %i.ps, align 1
  %i.pt = zext nneg i32 %i.pp to i64
  %i.pu = getelementptr i8, ptr %i.ps, i64 %i.pt
  br label %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit:    ; preds = %bb.an, %bb.ao
  %.sink.i170 = phi i8 [ %i.pm, %bb.an ], [ %i.pr, %bb.ao ]
  %.pn.i171 = phi ptr [ %.11, %bb.an ], [ %i.pu, %bb.ao ]
  store i8 %.sink.i170, ptr %.11, align 1, !tbaa !16
  %.0.i172 = getelementptr i8, ptr %.pn.i171, i64 1 ; 2 uses
  %sext257 = shl i64 %i.pi, 32
  %i.pv = ashr exact i64 %sext257, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i172, ptr readonly align 1 %.13, i64 %i.pv, i1 false)
  %i.pw = getelementptr inbounds i8, ptr %.0.i172, i64 %i.pv
  br label %bb.ap

bb.ap:                                            ; preds = %.thread252, %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit
  %.0 = phi ptr [ %.11, %.thread252 ], [ %i.pw, %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN6snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address, ret: address, provenance) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 %6) local_unnamed_addr #7 {
bb.a:
  %i.a = shl i32 %4, 1
  %i.b = add i32 %i.a, -2                         ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 15 uses
  %i.d = icmp ugt i64 %1, 14
  br i1 %i.d, label %bb.b, label %.thread351, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -15 ; 3 uses
  %i.f = ptrtoint ptr %5 to i64                   ; 9 uses
  %i.g = zext i32 %i.b to i64                     ; 9 uses
  %i.h = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.i = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.j = ptrtoaddr ptr %i.c to i64
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 10 uses
  %i.l = trunc i64 %i.j to i32                    ; 5 uses
  %i.m = icmp slt i64 %1, 17
  br i1 %i.m, label %.thread351, label %.lr.ph573.lr.ph, !prof !30

.lr.ph573.lr.ph:                                  ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %.lr.ph573

.loopexit.loopexit:                               ; preds = %bb.ac
  %i.o = getelementptr inbounds nuw i8, ptr %i.gi, i64 2 ; 2 uses
  %i.p = icmp ugt ptr %i.o, %i.e
  br i1 %i.p, label %.thread351, label %.lr.ph573, !prof !139

.lr.ph573:                                        ; preds = %.lr.ph573.lr.ph, %.loopexit.loopexit
  %i.q = phi ptr [ %i.n, %.lr.ph573.lr.ph ], [ %i.o, %.loopexit.loopexit ]
  %.0192578 = phi ptr [ %0, %.lr.ph573.lr.ph ], [ %i.gi, %.loopexit.loopexit ] ; 7 uses
  %.0201577 = phi ptr [ %2, %.lr.ph573.lr.ph ], [ %.3204, %.loopexit.loopexit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0192578, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.g
  %i.s = lshr i32 %i.y, 9
  %i.t = add i32 %i.y, 1
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u ; 2 uses
  %i.w = icmp ugt ptr %i.v, %i.e
  br i1 %i.w, label %.thread351, label %bb.d, !prof !31

bb.d:                                             ; preds = %.lr.ph573, %bb.c
  %i.x = phi ptr [ %i.q, %.lr.ph573 ], [ %i.v, %bb.c ] ; 2 uses
  %i.y = phi i32 [ 513, %.lr.ph573 ], [ %i.t, %bb.c ] ; 2 uses
  %.1193572 = phi ptr [ %i.r, %.lr.ph573 ], [ %i.x, %bb.c ] ; 7 uses
  %.0189 = load i64, ptr %.1193572, align 1       ; 2 uses
  %i.z = mul i64 %.0189, 58295818150454627
  %i.aa = lshr i64 %i.z, 49
  %i.ab = and i64 %i.aa, %i.g
  %i.ac = add i64 %i.ab, %i.f
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !28
  %i.af = zext i16 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = ptrtoint ptr %.1193572 to i64
  %i.ai = sub i64 %i.ah, %i.h
  %i.aj = trunc i64 %i.ai to i16                  ; 3 uses
  store i16 %i.aj, ptr %i.ad, align 2, !tbaa !28
  %i.ak = trunc i64 %.0189 to i32                 ; 3 uses
  %.0.copyload.i215 = load i32, ptr %i.ag, align 1
  %i.al = icmp eq i32 %.0.copyload.i215, %i.ak
  br i1 %i.al, label %bb.e, label %bb.g, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.af ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1193572, i64 4 ; 3 uses
  %.not34.i = icmp ugt ptr %i.ao, %i.k
  br i1 %.not34.i, label %.critedge28.preheader.i, label %.lr.ph.i

.critedge28.preheader.loopexit.i:                 ; preds = %bb.f
  %i.ap = trunc nuw i64 %indvars.iv.next.i to i32
end_hunk_1
begin_hunk_2_@_ZN6snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i:bb.a
  br label %.lr.ph40.i258

.lr.ph.i243:                                      ; preds = %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit240, %bb.j
  %indvars.iv.i244 = phi i64 [ %indvars.iv.next.i250, %bb.j ], [ 0, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit240 ] ; 3 uses
  %.036.i245 = phi ptr [ %i.dl, %bb.j ], [ %i.cu, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit240 ] ; 2 uses
  %.0.copyload.i.i246 = load i64, ptr %.036.i245, align 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.i244
  %.0.copyload.i29.i247 = load i64, ptr %i.dj, align 1 ; 2 uses
  %i.dk = icmp eq i64 %.0.copyload.i.i246, %.0.copyload.i29.i247
  br i1 %i.dk, label %bb.j, label %.critedge.i248

bb.j:                                             ; preds = %.lr.ph.i243
  %i.dl = getelementptr inbounds nuw i8, ptr %.036.i245, i64 8 ; 3 uses
  %indvars.iv.next.i250 = add nuw nsw i64 %indvars.iv.i244, 8 ; 2 uses
  %.not.i251 = icmp ugt ptr %i.dl, %i.k
  br i1 %.not.i251, label %.critedge28.preheader.loopexit.i252, label %.lr.ph.i243, !llvm.loop !134

.critedge.i248:                                   ; preds = %.lr.ph.i243
  %i.dm = trunc nuw nsw i64 %indvars.iv.i244 to i32
  %i.dn = xor i64 %.0.copyload.i29.i247, %.0.copyload.i.i246
  %i.do = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dn, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = lshr i32 %i.dp, 3
  %i.dr = or disjoint i32 %i.dq, %i.dm
  br label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265

.lr.ph40.i258:                                    ; preds = %.critedge28.i262, %.lr.ph40.preheader.i256
  %indvars.iv48.i259 = phi i64 [ %i.df, %.lr.ph40.preheader.i256 ], [ %indvars.iv.next49.i263, %.critedge28.i262 ] ; 3 uses
  %.139.i260 = phi ptr [ %.0.lcssa.i255, %.lr.ph40.preheader.i256 ], [ %i.dw, %.critedge28.i262 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv48.i259
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  %i.du = load i8, ptr %.139.i260, align 1, !tbaa !16
  %i.dv = icmp eq i8 %i.dt, %i.du
  br i1 %i.dv, label %.critedge28.i262, label %.critedge2.loopexit.split.loop.exit.i261

.critedge28.i262:                                 ; preds = %.lr.ph40.i258
  %i.dw = getelementptr inbounds nuw i8, ptr %.139.i260, i64 1 ; 2 uses
  %indvars.iv.next49.i263 = add nuw nsw i64 %indvars.iv48.i259, 1
  %exitcond.not.i264 = icmp eq ptr %i.dw, %i.c
  br i1 %exitcond.not.i264, label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265, label %.lr.ph40.i258, !llvm.loop !135

.critedge2.loopexit.split.loop.exit.i261:         ; preds = %.lr.ph40.i258
  %i.dx = trunc nuw i64 %indvars.iv48.i259 to i32
  br label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265

_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265: ; preds = %.critedge28.i262, %.critedge28.preheader.i253, %.critedge.i248, %.critedge2.loopexit.split.loop.exit.i261
  %.2.i249 = phi i32 [ %i.dr, %.critedge.i248 ], [ %.026.lcssa.i254, %.critedge28.preheader.i253 ], [ %i.dx, %.critedge2.loopexit.split.loop.exit.i261 ], [ %i.di, %.critedge28.i262 ] ; 2 uses
  %i.dy = sext i32 %.2.i249 to i64
  %i.dz = zext i32 %i.ct to i64
  %i.ea = icmp ugt i64 %i.dy, %i.dz
  br i1 %i.ea, label %bb.k, label %.preheader

bb.k:                                             ; preds = %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265
  store i16 %i.aj, ptr %i.cz, align 2, !tbaa !28
  br label %.preheader

.preheader:                                       ; preds = %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit, %bb.k
  %.4196.ph = phi ptr [ %i.cu, %bb.k ], [ %.1193572, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %.1193572, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265 ] ; 3 uses
  %.3183.ph = phi ptr [ %i.dc, %bb.k ], [ %i.am, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %i.bv, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265 ] ; 3 uses
  %.3178.ph = phi i32 [ %.2.i249, %bb.k ], [ %i.bk, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %i.ct, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265 ] ; 2 uses
  %i.eb = icmp ugt ptr %.4196.ph, %.0192578
  %i.ec = icmp ugt ptr %.3183.ph, %0
  %or.cond397 = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond397, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %.4179400 = phi i32 [ %i.ei, %bb.l ], [ %.3178.ph, %.preheader ] ; 2 uses
  %.4184399 = phi ptr [ %i.ef, %bb.l ], [ %.3183.ph, %.preheader ] ; 2 uses
  %.5197398 = phi ptr [ %i.ed, %bb.l ], [ %.4196.ph, %.preheader ] ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.5197398, i64 -1 ; 4 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !16
  %i.ef = getelementptr inbounds i8, ptr %.4184399, i64 -1 ; 4 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16
  %i.eh = icmp eq i8 %i.ee, %i.eg
  br i1 %i.eh, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph
  %i.ei = add i32 %.4179400, 1                    ; 2 uses
  %i.ej = icmp ugt ptr %i.ed, %.0192578
  %i.ek = icmp ugt ptr %i.ef, %0
  %or.cond = and i1 %i.ej, %i.ek
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !136

.critedge:                                        ; preds = %.lr.ph, %bb.l, %.preheader
  %.5197.lcssa = phi ptr [ %.4196.ph, %.preheader ], [ %i.ed, %bb.l ], [ %.5197398, %.lr.ph ] ; 4 uses
  %.4184.lcssa = phi ptr [ %.3183.ph, %.preheader ], [ %i.ef, %bb.l ], [ %.4184399, %.lr.ph ]
  %.4179.lcssa = phi i32 [ %.3178.ph, %.preheader ], [ %i.ei, %bb.l ], [ %.4179400, %.lr.ph ]
  %i.el = ptrtoint ptr %.5197.lcssa to i64        ; 2 uses
  %i.em = sub i64 %i.el, %i.h
  %i.en = trunc i64 %i.em to i16                  ; 2 uses
  %i.eo = add i16 %i.en, 1                        ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.5197.lcssa, i64 1 ; 2 uses
  %.0.copyload.i267 = load i64, ptr %i.ep, align 1
  %i.eq = mul i64 %.0.copyload.i267, 58295818150454627
  %i.er = lshr i64 %i.eq, 49
  %i.es = and i64 %i.er, %i.g
  %i.et = add i64 %i.es, %i.f
  %i.eu = inttoptr i64 %i.et to ptr
  store i16 %i.eo, ptr %i.eu, align 2, !tbaa !28
  %i.ev = add i16 %i.en, 2
  %i.ew = getelementptr inbounds nuw i8, ptr %.5197.lcssa, i64 2
  %.0.copyload.i268 = load i64, ptr %i.ew, align 1
  %i.ex = mul i64 %.0.copyload.i268, 58295818150454627
  %i.ey = lshr i64 %i.ex, 49
  %i.ez = and i64 %i.ey, %i.g
  %i.fa = add i64 %i.ez, %i.f
  %i.fb = inttoptr i64 %i.fa to ptr
  store i16 %i.ev, ptr %i.fb, align 2, !tbaa !28
  %.0.copyload.i269 = load i32, ptr %i.ep, align 1
  %i.fc = mul i32 %.0.copyload.i269, -1640531535
  %i.fd = lshr i32 %i.fc, 17
  %i.fe = and i32 %i.fd, %i.b
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = add i64 %i.ff, %i.i
  %i.fh = inttoptr i64 %i.fg to ptr
  store i16 %i.eo, ptr %i.fh, align 2, !tbaa !28
  %i.fi = ptrtoint ptr %.0192578 to i64
  %i.fj = sub i64 %i.el, %i.fi                    ; 4 uses
  %i.fk = icmp sgt i64 %i.fj, 0
  br i1 %i.fk, label %bb.m, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.m:                                             ; preds = %.critedge
  %i.fl = trunc i64 %i.fj to i32                  ; 3 uses
  %i.fm = add nsw i32 %i.fl, -1                   ; 4 uses
  %i.fn = icmp slt i32 %i.fl, 17
  br i1 %i.fn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.tr37.i = trunc i32 %i.fm to i8
  %i.fo = shl i8 %.tr37.i, 2
  %i.fp = getelementptr inbounds nuw i8, ptr %.0201577, i64 1 ; 2 uses
  store i8 %i.fo, ptr %.0201577, align 1, !tbaa !16
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fp, ptr noundef nonnull readonly align 1 dereferenceable(16) %.0192578, i64 16, i1 false)
  %sext = shl i64 %i.fj, 32
  %i.fq = ashr exact i64 %sext, 32
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 %i.fq
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.o:                                             ; preds = %bb.m
  %i.fs = icmp samesign ult i32 %i.fl, 61
  br i1 %i.fs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.tr.i = trunc nuw nsw i32 %i.fm to i8
  %i.ft = shl nuw i8 %.tr.i, 2
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.fu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fm, i1 true)
  %i.fv = lshr i32 %i.fu, 3
  %i.fw = xor i32 %i.fv, 3                        ; 2 uses
  %.tr38.i = trunc nuw nsw i32 %i.fw to i8
  %i.fx = shl nuw nsw i8 %.tr38.i, 2
  %i.fy = or disjoint i8 %i.fx, -16
  %i.fz = getelementptr inbounds nuw i8, ptr %.0201577, i64 1 ; 2 uses
  store i32 %i.fm, ptr %i.fz, align 1
  %i.ga = zext nneg i32 %i.fw to i64
  %i.gb = getelementptr i8, ptr %i.fz, i64 %i.ga
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink.i = phi i8 [ %i.ft, %bb.p ], [ %i.fy, %bb.q ]
  %.pn.i = phi ptr [ %.0201577, %bb.p ], [ %i.gb, %bb.q ]
  store i8 %.sink.i, ptr %.0201577, align 1, !tbaa !16
  %.032.i = getelementptr i8, ptr %.pn.i, i64 1   ; 2 uses
  %i.gc = and i64 %i.fj, 2147483647
  %i.gd = getelementptr inbounds nuw i8, ptr %.032.i, i64 %i.gc ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.030.i = phi ptr [ %.032.i, %bb.r ], [ %i.ge, %bb.s ] ; 2 uses
  %.0.i = phi ptr [ %.0192578, %bb.r ], [ %i.gf, %bb.s ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.030.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i, i64 16, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.030.i, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.gg = icmp ult ptr %i.ge, %i.gd
  br i1 %i.gg, label %bb.s, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, !llvm.loop !0

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader: ; preds = %bb.s, %bb.n, %.critedge
  %.2203.ph = phi ptr [ %.0201577, %.critedge ], [ %i.fr, %bb.n ], [ %i.gd, %bb.s ]
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit:    ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306
  %.2203 = phi ptr [ %.3204, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306 ], [ %.2203.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 5 uses
  %.6198 = phi ptr [ %i.gi, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306 ], [ %.5197.lcssa, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 2 uses
  %.5185 = phi ptr [ %.7187, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306 ], [ %.4184.lcssa, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ]
  %.5 = phi i32 [ %.7, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306 ], [ %.4179.lcssa, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 3 uses
  %i.gh = zext i32 %.5 to i64                     ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.6198, i64 %i.gh ; 17 uses
  %i.gj = ptrtoint ptr %.6198 to i64
  %i.gk = ptrtoint ptr %.5185 to i64
  %i.gl = sub i64 %i.gj, %i.gk                    ; 9 uses
  %i.gm = icmp ult i32 %.5, 12
  br i1 %i.gm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %i.gn = shl nuw nsw i64 %i.gh, 2
  %i.go = shl i64 %i.gl, 8
  %i.gp = or disjoint i64 %i.gn, %i.go
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = trunc nuw nsw i64 %i.gl to i32
  %i.gs = lshr i32 %i.gr, 3
  %i.gt = and i32 %i.gs, 224
  %i.gu = add nsw i32 %i.gt, -15
  %i.gv = icmp ult i64 %i.gl, 2048                ; 2 uses
  %i.gw = select i1 %i.gv, i32 %i.gu, i32 -2
  %i.gx = add i32 %i.gw, %i.gq
  store i32 %i.gx, ptr %.2203, align 1
  %i.gy = select i1 %i.gv, i64 2, i64 3
  %i.gz = getelementptr inbounds nuw i8, ptr %.2203, i64 %i.gy
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.u:                                             ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %i.ha = icmp ugt i32 %.5, 67
  br i1 %i.ha, label %.lr.ph.i273, label %._crit_edge.i, !prof !34

.lr.ph.i273:                                      ; preds = %bb.u
  %.tr21.i = trunc i64 %i.gl to i32
  %i.hb = shl i32 %.tr21.i, 8
  %i.hc = or disjoint i32 %i.hb, 254              ; 9 uses
  %i.hd = add nsw i64 %i.gh, -68                  ; 2 uses
  %i.he = lshr i64 %i.hd, 6
  %i.hf = add nuw nsw i64 %i.he, 1
  %xtraiter = and i64 %i.hf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !prof !33

.prol.preheader:                                  ; preds = %.lr.ph.i273, %.prol.preheader
  %.023.i.prol = phi i64 [ %i.hh, %.prol.preheader ], [ %i.gh, %.lr.ph.i273 ]
  %.01522.i.prol = phi ptr [ %i.hg, %.prol.preheader ], [ %.2203, %.lr.ph.i273 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i273 ]
  store i32 %i.hc, ptr %.01522.i.prol, align 1
  %i.hg = getelementptr inbounds nuw i8, ptr %.01522.i.prol, i64 3 ; 3 uses
  %i.hh = add i64 %.023.i.prol, -64               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !prof !35, !llvm.loop !137

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i273
  %.023.i.unr = phi i64 [ %i.gh, %.lr.ph.i273 ], [ %i.hh, %.prol.preheader ]
  %.01522.i.unr = phi ptr [ %.2203, %.lr.ph.i273 ], [ %i.hg, %.prol.preheader ]
  %.lcssa609.unr = phi ptr [ poison, %.lr.ph.i273 ], [ %i.hg, %.prol.preheader ]
  %.lcssa608.unr = phi i64 [ poison, %.lr.ph.i273 ], [ %i.hh, %.prol.preheader ]
  %i.hi = icmp ult i64 %i.hd, 448
  br i1 %i.hi, label %._crit_edge.i, label %.lr.ph.i273.new, !prof !30

.lr.ph.i273.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i273.new
  %.023.i = phi i64 [ %i.hr, %.lr.ph.i273.new ], [ %.023.i.unr, %.prol.loopexit ]
  %.01522.i = phi ptr [ %i.hq, %.lr.ph.i273.new ], [ %.01522.i.unr, %.prol.loopexit ] ; 9 uses
  store i32 %i.hc, ptr %.01522.i, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.01522.i, i64 3
  store i32 %i.hc, ptr %i.hj, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %.01522.i, i64 6
  store i32 %i.hc, ptr %i.hk, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.01522.i, i64 9
  store i32 %i.hc, ptr %i.hl, align 1
  %i.hm = getelementptr inbounds nuw i8, ptr %.01522.i, i64 12
  store i32 %i.hc, ptr %i.hm, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %.01522.i, i64 15
  store i32 %i.hc, ptr %i.hn, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %.01522.i, i64 18
  store i32 %i.hc, ptr %i.ho, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.01522.i, i64 21
  store i32 %i.hc, ptr %i.hp, align 1
  %i.hq = getelementptr inbounds nuw i8, ptr %.01522.i, i64 24 ; 2 uses
  %i.hr = add i64 %.023.i, -512                   ; 3 uses
  %i.hs = icmp ugt i64 %i.hr, 67
  br i1 %i.hs, label %.lr.ph.i273.new, label %._crit_edge.i, !prof !37, !llvm.loop !138

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i273.new, %bb.u
  %.015.lcssa.i = phi ptr [ %.2203, %bb.u ], [ %.lcssa609.unr, %.prol.loopexit ], [ %i.hq, %.lr.ph.i273.new ] ; 5 uses
  %.0.lcssa.i270 = phi i64 [ %i.gh, %bb.u ], [ %.lcssa608.unr, %.prol.loopexit ], [ %i.hr, %.lr.ph.i273.new ] ; 5 uses
  %i.ht = icmp samesign ugt i64 %.0.lcssa.i270, 64
  br i1 %i.ht, label %.thread.i, label %bb.v

.thread.i:                                        ; preds = %._crit_edge.i
  %.tr.i272 = trunc i64 %i.gl to i32              ; 2 uses
  %i.hu = shl i32 %.tr.i272, 8
  %i.hv = or disjoint i32 %i.hu, 238
  store i32 %i.hv, ptr %.015.lcssa.i, align 1
  %i.hw = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  %i.hx = add nsw i64 %.0.lcssa.i270, -60
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i
  %i.hy = icmp samesign ult i64 %.0.lcssa.i270, 12
  br i1 %i.hy, label %._crit_edge26.i, label %bb.x

._crit_edge26.i:                                  ; preds = %bb.v
  %.pre.i = trunc nuw nsw i64 %i.gl to i32
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge26.i, %.thread.i
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge26.i ], [ %.tr.i272, %.thread.i ]
  %.120.i = phi i64 [ %.0.lcssa.i270, %._crit_edge26.i ], [ %i.hx, %.thread.i ]
  %.11619.i = phi ptr [ %.015.lcssa.i, %._crit_edge26.i ], [ %i.hw, %.thread.i ] ; 2 uses
  %i.hz = shl nuw nsw i64 %.120.i, 2
  %i.ia = shl i64 %i.gl, 8
  %i.ib = add nuw i64 %i.hz, %i.ia
  %i.ic = trunc i64 %i.ib to i32
  %i.id = lshr i32 %.pre-phi.i, 3
  %i.ie = and i32 %i.id, 224
  %i.if = add nsw i32 %i.ie, -15
  %i.ig = icmp ult i64 %i.gl, 2048                ; 2 uses
  %i.ih = select i1 %i.ig, i32 %i.if, i32 -2
  %i.ii = add i32 %i.ih, %i.ic
  store i32 %i.ii, ptr %.11619.i, align 1
  %i.ij = select i1 %i.ig, i64 2, i64 3
  %i.ik = getelementptr inbounds nuw i8, ptr %.11619.i, i64 %i.ij
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.x:                                             ; preds = %bb.v
  %i.il = shl nuw nsw i64 %.0.lcssa.i270, 2
  %i.im = shl i64 %i.gl, 8
  %i.in = add i64 %i.im, 4294967294
  %i.io = add i64 %i.in, %i.il
  %i.ip = trunc i64 %i.io to i32
  store i32 %i.ip, ptr %.015.lcssa.i, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit:          ; preds = %bb.x, %bb.w, %bb.t
  %.3204 = phi ptr [ %i.gz, %bb.t ], [ %i.ik, %bb.w ], [ %i.iq, %bb.x ] ; 4 uses
  %.not = icmp ult ptr %i.gi, %i.e
  br i1 %.not, label %bb.y, label %.thread351, !prof !26

bb.y:                                             ; preds = %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit
  %i.ir = ptrtoint ptr %i.gi to i64
  %i.is = sub i64 %i.ir, %i.h                     ; 2 uses
  %i.it = icmp sgt i64 %i.is, 7
  %i.iu = trunc i64 %i.is to i16                  ; 7 uses
  br i1 %i.it, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %bb.y
  %i.iv = add i16 %i.iu, -7
  %i.iw = getelementptr inbounds i8, ptr %i.gi, i64 -7
  %.0.copyload.i274 = load i64, ptr %i.iw, align 1
  %i.ix = mul i64 %.0.copyload.i274, 58295818150454627
  %i.iy = lshr i64 %i.ix, 49
  %i.iz = and i64 %i.iy, %i.g
  %i.ja = add i64 %i.iz, %i.f
  %i.jb = inttoptr i64 %i.ja to ptr
  store i16 %i.iv, ptr %i.jb, align 2, !tbaa !28
  %i.jc = add i16 %i.iu, -4
  %i.jd = getelementptr inbounds i8, ptr %i.gi, i64 -4
  %.0.copyload.i275 = load i64, ptr %i.jd, align 1
  %i.je = mul i64 %.0.copyload.i275, 58295818150454627
  %i.jf = lshr i64 %i.je, 49
  %i.jg = and i64 %i.jf, %i.g
  %i.jh = add i64 %i.jg, %i.f
  %i.ji = inttoptr i64 %i.jh to ptr
  store i16 %i.jc, ptr %i.ji, align 2, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.y, %bb.z
  %i.jj = add i16 %i.iu, -3
  %i.jk = getelementptr inbounds i8, ptr %i.gi, i64 -3
  %.0.copyload.i276 = load i64, ptr %i.jk, align 1
  %i.jl = mul i64 %.0.copyload.i276, 58295818150454627
  %i.jm = lshr i64 %i.jl, 49
  %i.jn = and i64 %i.jm, %i.g
  %i.jo = add i64 %i.jn, %i.f
  %i.jp = inttoptr i64 %i.jo to ptr
  store i16 %i.jj, ptr %i.jp, align 2, !tbaa !28
  %i.jq = add i16 %i.iu, -2                       ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %i.gi, i64 -2 ; 2 uses
  %.0.copyload.i277 = load i64, ptr %i.jr, align 1
  %i.js = mul i64 %.0.copyload.i277, 58295818150454627
  %i.jt = lshr i64 %i.js, 49
  %i.ju = and i64 %i.jt, %i.g
  %i.jv = add i64 %i.ju, %i.f
  %i.jw = inttoptr i64 %i.jv to ptr
  store i16 %i.jq, ptr %i.jw, align 2, !tbaa !28
  %.0.copyload.i278 = load i32, ptr %i.jr, align 1
  %i.jx = mul i32 %.0.copyload.i278, -1640531535
  %i.jy = lshr i32 %i.jx, 17
  %i.jz = and i32 %i.jy, %i.b
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = add i64 %i.ka, %i.i
  %i.kc = inttoptr i64 %i.kb to ptr
  store i16 %i.jq, ptr %i.kc, align 2, !tbaa !28
  %i.kd = add i16 %i.iu, -1
  %i.ke = getelementptr inbounds i8, ptr %i.gi, i64 -1
  %.0.copyload.i279 = load i32, ptr %i.ke, align 1
  %i.kf = mul i32 %.0.copyload.i279, -1640531535
  %i.kg = lshr i32 %i.kf, 17
  %i.kh = and i32 %i.kg, %i.b
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = add i64 %i.ki, %i.i
  %i.kk = inttoptr i64 %i.kj to ptr
  store i16 %i.kd, ptr %i.kk, align 2, !tbaa !28
  %.0.copyload.i280 = load i64, ptr %i.gi, align 1
  %i.kl = mul i64 %.0.copyload.i280, 58295818150454627
  %i.km = lshr i64 %i.kl, 49
  %i.kn = and i64 %i.km, %i.g
  %i.ko = add i64 %i.kn, %i.f
  %i.kp = inttoptr i64 %i.ko to ptr               ; 2 uses
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !28
  %i.kr = zext i16 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 %i.kr ; 6 uses
  store i16 %i.iu, ptr %i.kp, align 2, !tbaa !28
  %.0.copyload.i281 = load i32, ptr %i.gi, align 1 ; 2 uses
  %.0.copyload.i282 = load i32, ptr %i.ks, align 1
  %i.kt = icmp eq i32 %.0.copyload.i281, %.0.copyload.i282
  br i1 %i.kt, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 4 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 3 uses
  %.not34.i283 = icmp ugt ptr %i.kv, %i.k
  br i1 %.not34.i283, label %.critedge28.preheader.i294, label %.lr.ph.i284

.critedge28.preheader.loopexit.i293:              ; preds = %bb.ab
  %i.kw = trunc nuw i64 %indvars.iv.next.i291 to i32
  br label %.critedge28.preheader.i294

.critedge28.preheader.i294:                       ; preds = %.critedge28.preheader.loopexit.i293, %bb.aa
  %.026.lcssa.i295 = phi i32 [ 0, %bb.aa ], [ %i.kw, %.critedge28.preheader.loopexit.i293 ] ; 3 uses
  %.0.lcssa.i296 = phi ptr [ %i.kv, %bb.aa ], [ %i.le, %.critedge28.preheader.loopexit.i293 ] ; 3 uses
  %i.kx = icmp ult ptr %.0.lcssa.i296, %i.c
  br i1 %i.kx, label %.lr.ph40.preheader.i297, label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306

.lr.ph40.preheader.i297:                          ; preds = %.critedge28.preheader.i294
  %.0.lcssa50.i298 = ptrtoaddr ptr %.0.lcssa.i296 to i64
  %i.ky = zext i32 %.026.lcssa.i295 to i64
  %i.kz = add i32 %.026.lcssa.i295, %i.l
  %i.la = trunc i64 %.0.lcssa50.i298 to i32
  %i.lb = sub i32 %i.kz, %i.la
  br label %.lr.ph40.i299

.lr.ph.i284:                                      ; preds = %bb.aa, %bb.ab
  %indvars.iv.i285 = phi i64 [ %indvars.iv.next.i291, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %.036.i286 = phi ptr [ %i.le, %bb.ab ], [ %i.kv, %bb.aa ] ; 2 uses
  %.0.copyload.i.i287 = load i64, ptr %.036.i286, align 1 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ku, i64 %indvars.iv.i285
  %.0.copyload.i29.i288 = load i64, ptr %i.lc, align 1 ; 2 uses
  %i.ld = icmp eq i64 %.0.copyload.i.i287, %.0.copyload.i29.i288
  br i1 %i.ld, label %bb.ab, label %.critedge.i289

bb.ab:                                            ; preds = %.lr.ph.i284
  %i.le = getelementptr inbounds nuw i8, ptr %.036.i286, i64 8 ; 3 uses
  %indvars.iv.next.i291 = add nuw nsw i64 %indvars.iv.i285, 8 ; 2 uses
  %.not.i292 = icmp ugt ptr %i.le, %i.k
  br i1 %.not.i292, label %.critedge28.preheader.loopexit.i293, label %.lr.ph.i284, !llvm.loop !134

.critedge.i289:                                   ; preds = %.lr.ph.i284
  %i.lf = trunc nuw nsw i64 %indvars.iv.i285 to i32
  %i.lg = xor i64 %.0.copyload.i29.i288, %.0.copyload.i.i287
  %i.lh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lg, i1 true)
  %i.li = trunc nuw nsw i64 %i.lh to i32
  %i.lj = lshr i32 %i.li, 3
  %i.lk = or disjoint i32 %i.lj, %i.lf
  br label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306

.lr.ph40.i299:                                    ; preds = %.critedge28.i303, %.lr.ph40.preheader.i297
  %indvars.iv48.i300 = phi i64 [ %i.ky, %.lr.ph40.preheader.i297 ], [ %indvars.iv.next49.i304, %.critedge28.i303 ] ; 3 uses
  %.139.i301 = phi ptr [ %.0.lcssa.i296, %.lr.ph40.preheader.i297 ], [ %i.lp, %.critedge28.i303 ] ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ku, i64 %indvars.iv48.i300
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !16
  %i.ln = load i8, ptr %.139.i301, align 1, !tbaa !16
  %i.lo = icmp eq i8 %i.lm, %i.ln
  br i1 %i.lo, label %.critedge28.i303, label %.critedge2.loopexit.split.loop.exit.i302

.critedge28.i303:                                 ; preds = %.lr.ph40.i299
  %i.lp = getelementptr inbounds nuw i8, ptr %.139.i301, i64 1 ; 2 uses
  %indvars.iv.next49.i304 = add nuw nsw i64 %indvars.iv48.i300, 1
  %exitcond.not.i305 = icmp eq ptr %i.lp, %i.c
  br i1 %exitcond.not.i305, label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306, label %.lr.ph40.i299, !llvm.loop !135

.critedge2.loopexit.split.loop.exit.i302:         ; preds = %.lr.ph40.i299
  %i.lq = trunc nuw i64 %indvars.iv48.i300 to i32
  br label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306

bb.ac:                                            ; preds = %._crit_edge
  %i.lr = mul i32 %.0.copyload.i281, -1640531535
  %i.ls = lshr i32 %i.lr, 17
  %i.lt = and i32 %i.ls, %i.b
  %i.lu = zext nneg i32 %i.lt to i64
  %i.lv = add i64 %i.lu, %i.i
  %i.lw = inttoptr i64 %i.lv to ptr               ; 2 uses
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !28
  %i.ly = zext i16 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 %i.ly ; 6 uses
  store i16 %i.iu, ptr %i.lw, align 2, !tbaa !28
  %.0.copyload.i308 = load i32, ptr %i.gi, align 1
  %.0.copyload.i309 = load i32, ptr %i.lz, align 1
  %i.ma = icmp eq i32 %.0.copyload.i308, %.0.copyload.i309
  br i1 %i.ma, label %bb.ad, label %.loopexit.loopexit

bb.ad:                                            ; preds = %bb.ac
end_hunk_2
begin_hunk_3_@_ZN6snappy13RawUncompressEPKcmPc
define dso_local noundef zeroext i1 @_ZN6snappy13RawUncompressEPKcmPc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.snappy::SnappyDecompressor", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.snappy::SnappyArrayWriter", align 8 ; 7 uses
  %5 = alloca %"class.snappy::ByteArraySource", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6snappy15ByteArraySourceE, i64 16), ptr %5, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %1, ptr %i.c, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %2, ptr %4, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %2, ptr %i.d, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %2, ptr %i.f, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %5, ptr %3, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !25
  %i.j = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(46) %3, ptr noundef nonnull %i.a)
  br i1 %i.j, label %bb.b, label %_ZN6snappy13RawUncompressEPNS_6SourceEPc.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %5, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %5) #24, !inline_history !147 ; 0 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !25
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  store ptr %i.q, ptr %i.e, align 8, !tbaa !70
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 63)
  %i.r = sub nsw i64 0, %.sroa.speculated.i.i.i.i
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %i.f, align 8, !tbaa !71
  call void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyArrayWriterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %3, ptr noundef nonnull %4)
  %i.t = load i8, ptr %i.i, align 8, !tbaa !49, !range !65, !noundef !66
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %_ZN6snappy13RawUncompressEPNS_6SourceEPc.exit

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.x = icmp eq ptr %i.v, %i.w
  br label %_ZN6snappy13RawUncompressEPNS_6SourceEPc.exit

_ZN6snappy13RawUncompressEPNS_6SourceEPc.exit:    ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.x, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.y = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.z = load i64, ptr %i.h, align 8, !tbaa !46
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.z) #24, !inline_history !148
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZN6snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i1 %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6snappy13RawUncompressEPNS_6SourceEPc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.snappy::SnappyDecompressor", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.snappy::SnappyArrayWriter", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %1, ptr %3, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %0, ptr %2, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !25
  %i.h = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(46) %2, ptr noundef nonnull %i.a)
  br i1 %i.h, label %bb.b, label %_ZN6snappyL18InternalUncompressINS_17SnappyArrayWriterEEEbPNS_6SourceEPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0) #24, !inline_history !149 ; 0 uses
  %i.m = load i32, ptr %i.a, align 4, !tbaa !25
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !70
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.n, i64 63)
  %i.p = sub nsw i64 0, %.sroa.speculated.i.i.i
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  store ptr %i.q, ptr %i.d, align 8, !tbaa !71
  call void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyArrayWriterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %2, ptr noundef nonnull %3)
  %i.r = load i8, ptr %i.g, align 8, !tbaa !49, !range !65, !noundef !66
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %_ZN6snappyL18InternalUncompressINS_17SnappyArrayWriterEEEbPNS_6SourceEPT_.exit

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.v = icmp eq ptr %i.t, %i.u
  br label %_ZN6snappyL18InternalUncompressINS_17SnappyArrayWriterEEEbPNS_6SourceEPT_.exit

_ZN6snappyL18InternalUncompressINS_17SnappyArrayWriterEEEbPNS_6SourceEPT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.v, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.w = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.x = load i64, ptr %i.f, align 8, !tbaa !46
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef %i.x) #24, !inline_history !150
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6snappy10UncompressEPKcmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not.i.not.i = icmp eq i64 %1, 0
  br i1 %.not.i.not.i, label %_ZN6snappy21GetUncompressedLengthEPKcmPm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !16      ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i32                 ; 2 uses
  %i.e = icmp sgt i8 %i.b, -1
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not42.i.not.i = icmp eq i64 %1, 1
  br i1 %.not42.i.not.i, label %_ZN6snappy21GetUncompressedLengthEPKcmPm.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !16    ; 2 uses
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
  %i.n = load i8, ptr %i.f, align 1, !tbaa !16    ; 2 uses
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
  %i.u = load i8, ptr %i.m, align 1, !tbaa !16    ; 2 uses
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
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !16   ; 2 uses
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw i32 %i.ab, 28
  %i.ad = or disjoint i32 %i.ac, %i.y
  %i.ae = icmp ult i8 %i.aa, 16
  br i1 %i.ae, label %bb.k, label %_ZN6snappy21GetUncompressedLengthEPKcmPm.exit.thread

bb.k:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j
  %.0.i = phi i32 [ %i.y, %bb.h ], [ %i.d, %bb.b ], [ %i.k, %bb.d ], [ %i.r, %bb.f ], [ %i.ad, %bb.j ]
  %i.af = zext i32 %.0.i to i64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.af, i8 noundef signext 0) #24
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN6snappy15string_as_arrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %2, align 8, !tbaa !75
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
define dso_local noundef zeroext i1 @_ZN6snappy23IsValidCompressedBufferEPKcm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.snappy::SnappyDecompressor", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.snappy::ByteArraySource", align 8 ; 9 uses
  %4 = alloca %"class.snappy::SnappyDecompressionValidator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6snappy15ByteArraySourceE, i64 16), ptr %3, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %1, ptr %i.c, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %3, ptr %2, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i8 0, ptr %i.f, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !25
  %i.g = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(46) %2, ptr noundef nonnull %i.a)
  br i1 %i.g, label %bb.b, label %_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %3) #24, !inline_history !2 ; 0 uses
  %i.l = load i32, ptr %i.a, align 4, !tbaa !25
  %i.m = zext i32 %i.l to i64
  store i64 %i.m, ptr %4, align 8, !tbaa !77
  call void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %2, ptr noundef nonnull %4)
  %i.n = load i8, ptr %i.f, align 8, !tbaa !49, !range !65, !noundef !66
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %4, align 8, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !78
  %i.s = icmp eq i64 %i.p, %i.r
  br label %_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit

_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.s, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.t = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.u = load i64, ptr %i.e, align 8, !tbaa !46
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef %i.u) #24, !inline_history !3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZN6snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6snappy17IsValidCompressedEPNS_6SourceE(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %"class.snappy::SnappyDecompressor", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.snappy::SnappyDecompressionValidator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr %0, ptr %1, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !25
  %i.e = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(46) %1, ptr noundef nonnull %i.a)
  br i1 %i.e, label %bb.b, label %_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0) #24, !inline_history !2 ; 0 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !25
  %i.k = zext i32 %i.j to i64
  store i64 %i.k, ptr %2, align 8, !tbaa !77
  call void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %1, ptr noundef nonnull %2)
  %i.l = load i8, ptr %i.d, align 8, !tbaa !49, !range !65, !noundef !66
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %2, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !78
  %i.q = icmp eq i64 %i.n, %i.p
  br label %_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit

_ZN6snappyL18InternalUncompressINS_28SnappyDecompressionValidatorEEEbPNS_6SourceEPT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.q, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.r = load ptr, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.s = load i64, ptr %i.c, align 8, !tbaa !46
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %i.s) #24, !inline_history !3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6snappy11RawCompressEPKcmPcPm(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.snappy::ByteArraySource", align 8 ; 7 uses
  %5 = alloca %"class.snappy::UncheckedByteArraySink", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6snappy15ByteArraySourceE, i64 16), ptr %4, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %1, ptr %i.b, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6snappy22UncheckedByteArraySinkE, i64 16), ptr %5, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !81
  %i.d = call noundef i64 @_ZN6snappy8CompressEPNS_6SourceEPNS_4SinkENS_18CompressionOptionsE(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 1) ; 0 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.f, %i.g
  store i64 %i.h, ptr %3, align 8, !tbaa !18
  call void @_ZN6snappy22UncheckedByteArraySinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN6snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6snappy11RawCompressEPKcmPcPmNS_18CompressionOptionsE(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, i32 %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %"class.snappy::ByteArraySource", align 8 ; 7 uses
  %6 = alloca %"class.snappy::UncheckedByteArraySink", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6snappy15ByteArraySourceE, i64 16), ptr %5, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %1, ptr %i.b, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6snappy22UncheckedByteArraySinkE, i64 16), ptr %6, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !81
  %i.d = call noundef i64 @_ZN6snappy8CompressEPNS_6SourceEPNS_4SinkENS_18CompressionOptionsE(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 %4) ; 0 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.f, %i.g
  store i64 %i.h, ptr %3, align 8, !tbaa !18
  call void @_ZN6snappy22UncheckedByteArraySinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN6snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
end_hunk_3
