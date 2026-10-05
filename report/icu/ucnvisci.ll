Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnvisci?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UConverterStaticData = type { i32, [60 x i8], i32, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, [19 x i8] }
%struct.UConverterImpl = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UConverterSharedData = type { i32, i32, ptr, ptr, i8, i8, ptr, i32, %struct.UConverterMBCSTable }
%struct.UConverterMBCSTable = type { i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, [64 x i16], ptr, ptr, i32, i8, i8, i8, i16, i32, ptr, ptr, ptr, ptr }
%struct.LookupDataStruct = type { i32, i32, i32 }

@_ZL16_ISCIIStaticData = internal constant %struct.UConverterStaticData { i32 100, [60 x i8] c"ISCII\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i8 0, i8 25, i8 1, i8 4, [4 x i8] c"\1A\00\00\00", i8 1, i8 0, i8 0, i8 0, i8 0, [19 x i8] zeroinitializer }, align 4
@_ZL10_ISCIIImpl = internal constant %struct.UConverterImpl { i32 25, ptr null, ptr null, ptr @_ZL10_ISCIIOpenP10UConverterP18UConverterLoadArgsP10UErrorCode, ptr @_ZL11_ISCIICloseP10UConverter, ptr @_ZL11_ISCIIResetP10UConverter21UConverterResetChoice, ptr @_ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL42UConverter_fromUnicode_ISCII_OFFSETS_LOGICP25UConverterFromUnicodeArgsP10UErrorCode, ptr @_ZL42UConverter_fromUnicode_ISCII_OFFSETS_LOGICP25UConverterFromUnicodeArgsP10UErrorCode, ptr null, ptr null, ptr @_ZL13_ISCIIgetNamePK10UConverter, ptr null, ptr @_ZL16_ISCII_SafeClonePK10UConverterPvPiP10UErrorCode, ptr @_ZL19_ISCIIGetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode, ptr null, ptr null }, align 8
@_ISCIIData_78 = local_unnamed_addr constant %struct.UConverterSharedData { i32 296, i32 -1, ptr null, ptr @_ZL16_ISCIIStaticData, i8 0, i8 0, ptr @_ZL10_ISCIIImpl, i32 0, %struct.UConverterMBCSTable zeroinitializer }, align 8
@_ZL17lookupInitialData = internal unnamed_addr constant [9 x %struct.LookupDataStruct] [%struct.LookupDataStruct { i32 0, i32 128, i32 66 }, %struct.LookupDataStruct { i32 1, i32 8, i32 67 }, %struct.LookupDataStruct { i32 2, i32 64, i32 75 }, %struct.LookupDataStruct { i32 3, i32 32, i32 74 }, %struct.LookupDataStruct { i32 4, i32 16, i32 71 }, %struct.LookupDataStruct { i32 5, i32 1, i32 68 }, %struct.LookupDataStruct { i32 6, i32 4, i32 69 }, %struct.LookupDataStruct { i32 7, i32 4, i32 72 }, %struct.LookupDataStruct { i32 8, i32 2, i32 73 }], align 16
@.str = private unnamed_addr constant [15 x i8] c"ISCII,version=\00", align 1
@_ZL11lookupTable = internal unnamed_addr constant [12 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] zeroinitializer, [2 x i16] [i16 0, i16 128], [2 x i16] [i16 1, i16 8], [2 x i16] [i16 5, i16 1], [2 x i16] [i16 6, i16 4], [2 x i16] [i16 1, i16 8], [2 x i16] [i16 4, i16 16], [2 x i16] [i16 7, i16 4], [2 x i16] [i16 8, i16 2], [2 x i16] [i16 3, i16 32], [2 x i16] [i16 2, i16 64]], align 16
@_ZL14toUnicodeTable = internal unnamed_addr constant [256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151, i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159, i16 160, i16 2305, i16 2306, i16 2307, i16 2309, i16 2310, i16 2311, i16 2312, i16 2313, i16 2314, i16 2315, i16 2318, i16 2319, i16 2320, i16 2317, i16 2322, i16 2323, i16 2324, i16 2321, i16 2325, i16 2326, i16 2327, i16 2328, i16 2329, i16 2330, i16 2331, i16 2332, i16 2333, i16 2334, i16 2335, i16 2336, i16 2337, i16 2338, i16 2339, i16 2340, i16 2341, i16 2342, i16 2343, i16 2344, i16 2345, i16 2346, i16 2347, i16 2348, i16 2349, i16 2350, i16 2351, i16 2399, i16 2352, i16 2353, i16 2354, i16 2355, i16 2356, i16 2357, i16 2358, i16 2359, i16 2360, i16 2361, i16 8205, i16 2366, i16 2367, i16 2368, i16 2369, i16 2370, i16 2371, i16 2374, i16 2375, i16 2376, i16 2373, i16 2378, i16 2379, i16 2380, i16 2377, i16 2381, i16 2364, i16 2404, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 2406, i16 2407, i16 2408, i16 2409, i16 2410, i16 2411, i16 2412, i16 2413, i16 2414, i16 2415, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@_ZL17nuktaSpecialCases = internal unnamed_addr constant [16 x [2 x i16]] [[2 x i16] [i16 16, i16 0], [2 x i16] [i16 166, i16 2316], [2 x i16] [i16 234, i16 2365], [2 x i16] [i16 223, i16 2372], [2 x i16] [i16 161, i16 2384], [2 x i16] [i16 179, i16 2392], [2 x i16] [i16 180, i16 2393], [2 x i16] [i16 181, i16 2394], [2 x i16] [i16 186, i16 2395], [2 x i16] [i16 191, i16 2396], [2 x i16] [i16 192, i16 2397], [2 x i16] [i16 201, i16 2398], [2 x i16] [i16 170, i16 2400], [2 x i16] [i16 167, i16 2401], [2 x i16] [i16 219, i16 2402], [2 x i16] [i16 220, i16 2403]], align 16
@_ZL13validityTable = internal unnamed_addr constant <{ [113 x i8], [15 x i8] }> <{ [113 x i8] c"\00\F8\FF\FF\80\FF\FF\FF\FF\FF\FF\BE\9E\A0\87\FF\FF\A0\87\FF\FF\FF\FE\FE\FE\FF\FF\FE\FF\FE\FF\FF\FE\FE\FE\FF\FF\FE\FE\FE\FF\81\FF\FE\FE\FE\FF\FF\FF\83\FF\F7\83\F7\FE\BF\FF\FF\00\00\D8\80\FF\FF\FF\FF\FF\BE\AC\A0\87\FF\FF\A0\87\FF\FF\FF\00\00\A0\80\80\80\80\04\14\1A\80\C0\C0\C0\C8\98\C0\98\BE\9E\88\88\80\80\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\C0", [15 x i8] zeroinitializer }>, align 16
@_ZL6pnjMap = internal unnamed_addr constant <{ [67 x i8], [13 x i8] }> <{ [67 x i8] c"\00\00\00\00\00\02\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\03\03\03\03\03\03\03\00\00\00\00\03\03\00\03\03\00\00\00\00\00\02\00\02\02", [13 x i8] zeroinitializer }>, align 16
@_ZL16fromUnicodeTable = internal unnamed_addr constant [128 x i16] [i16 160, i16 161, i16 162, i16 163, i16 -23328, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 170, i16 -22807, i16 174, i16 171, i16 172, i16 173, i16 178, i16 175, i16 176, i16 177, i16 179, i16 180, i16 181, i16 182, i16 183, i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191, i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 207, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 -1, i16 -1, i16 233, i16 -5399, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223, i16 -8215, i16 227, i16 224, i16 225, i16 226, i16 231, i16 228, i16 229, i16 230, i16 232, i16 236, i16 237, i16 -24087, i16 -1, i16 -3912, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19479, i16 -19223, i16 -18967, i16 -17687, i16 -16407, i16 -16151, i16 -13847, i16 206, i16 -21783, i16 -22551, i16 -9239, i16 -8983, i16 234, i16 -5398, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 250, i16 -3905, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@switch.table._ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode = private unnamed_addr constant [16 x i16] [i16 256, i16 2572, i16 2621, i16 2628, i16 2640, i16 2648, i16 2649, i16 2650, i16 2651, i16 2652, i16 2653, i16 2654, i16 2656, i16 2657, i16 2658, i16 2659], align 2

; Function Attrs: mustprogress uwtable
define internal void @_ZL10_ISCIIOpenP10UConverterP18UConverterLoadArgsP10UErrorCode(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !46
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(48) ptr @uprv_malloc_78(i64 noundef 48) #8 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !14
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 -2, ptr %i.c, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 65535, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.f, align 2, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  store i8 0, ptr %i.g, align 1, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !47   ; 2 uses
  %i.j = and i32 %i.i, 15                         ; 2 uses
  %i.k = icmp samesign ult i32 %i.j, 9
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [12 x i8], ptr @_ZL17lookupInitialData, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !48
  %.tr = trunc i32 %i.n to i16
  %i.o = shl i16 %.tr, 7                          ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i16 %i.o, ptr %i.p, align 4, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i16 %i.o, ptr %i.q, align 4, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i16 %i.o, ptr %i.r, align 2, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.t, ptr %i.u, align 4, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.t, ptr %i.v, align 4, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.t, ptr %i.w, align 4, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 1, ptr %i.x, align 4, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 26 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(15) %i.y, ptr noundef nonnull align 1 dereferenceable(15) @.str, i64 15, i1 false) #9
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #10
  %i.aa = trunc i32 %i.i to i8
  %i.ab = and i8 %i.aa, 15
  %i.ac = or disjoint i8 %i.ab, 48
  %sext = shl i64 %i.z, 32                        ; 2 uses
  %i.ad = ashr exact i64 %sext, 32
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 %i.ad
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !33
  %sext31 = add i64 %sext, 4294967296
  %i.af = ashr exact i64 %sext31, 32
  %i.ag = getelementptr inbounds i8, ptr %i.y, i64 %i.af
  store i8 0, ptr %i.ag, align 1, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 0, ptr %i.ah, align 4, !tbaa !34
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @uprv_free_78(ptr noundef nonnull %i.c)
  store ptr null, ptr %i.d, align 8, !tbaa !14
  store i32 1, ptr %2, align 4, !tbaa !36
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL11_ISCIICloseP10UConverter(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.d = load i8, ptr %i.c, align 2, !tbaa !49
  %.not4 = icmp eq i8 %i.d, 0
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @uprv_free_78(ptr noundef nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL11_ISCIIResetP10UConverter21UConverterResetChoice(ptr nofree noundef captures(none) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 13 uses
  %i.c = icmp slt i32 %1, 2
  br i1 %i.c, label %bb.b, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !29
  %.phi.trans.insert19 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre20 = load i16, ptr %.phi.trans.insert19, align 4, !tbaa !25
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 65535, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.e, align 4, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i16, ptr %i.f, align 4, !tbaa !25   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 %i.g, ptr %i.h, align 4, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.j, ptr %i.k, align 4, !tbaa !30
  store i16 -2, ptr %i.b, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 0, ptr %i.l, align 4, !tbaa !34
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.m = phi i16 [ %.pre20, %..thread_crit_edge ], [ %i.g, %bb.b ]
  %i.n = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.o, align 4, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.p, align 2, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.n, ptr %i.q, align 4, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i16 %i.m, ptr %i.r, align 2, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 1, ptr %i.s, align 4, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 0, ptr %i.t, align 1, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 86 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %1, align 4, !tbaa !36
  br label %bb.ec

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !57   ; 67 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 14 uses
  %i.o = load i32, ptr %1, align 4, !tbaa !36     ; 3 uses
  %i.p = icmp slt i32 %i.o, 1
  %i.q = icmp ult ptr %i.k, %i.d
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph.lr.ph, label %.loopexit841

.lr.ph.lr.ph:                                     ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  store i32 0, ptr %i.w, align 4, !tbaa !34
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bc
  %i.lf = phi i32 [ %i.kw, %bb.bh ], [ %i.gx, %bb.bc ] ; 4 uses
  %i.lg = phi ptr [ %i.kx, %bb.bh ], [ %i.bs, %bb.bc ] ; 2 uses
  %i.lh = phi ptr [ %i.ky, %bb.bh ], [ %i.bt, %bb.bc ] ; 2 uses
  %i.li = phi ptr [ %i.kz, %bb.bh ], [ %i.bu, %bb.bc ] ; 2 uses
  %i.lj = phi ptr [ %i.la, %bb.bh ], [ %i.bv, %bb.bc ] ; 2 uses
  %i.lk = phi ptr [ %i.lb, %bb.bh ], [ %i.bw, %bb.bc ] ; 2 uses
  %i.ll = phi ptr [ %i.lc, %bb.bh ], [ %i.bx, %bb.bc ] ; 2 uses
  %i.lm = phi ptr [ %i.ld, %bb.bh ], [ %i.gz, %bb.bc ] ; 2 uses
  %i.ln = phi ptr [ %i.le, %bb.bh ], [ %i.ha, %bb.bc ] ; 2 uses
  %.13620 = phi ptr [ %.12619, %bb.bh ], [ %.7614, %bb.bc ] ; 6 uses
  %i.lo = icmp ult ptr %.13620, %i.f
  br i1 %i.lo, label %bb.bj, label %.thread

bb.bj:                                            ; preds = %bb.bi
  %i.lp = getelementptr inbounds nuw i8, ptr %.13620, i64 2 ; 4 uses
  store i16 2652, ptr %.13620, align 2, !tbaa !41
  %i.lq = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not687 = icmp eq ptr %i.lq, null
  br i1 %.not687, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lr = ptrtoint ptr %i.hb to i64
  %i.ls = sub i64 %i.lr, %i.ai
  %i.lt = trunc i64 %i.ls to i32
  %i.lu = add i32 %i.lt, -2
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  store ptr %i.lv, ptr %i.x, align 8, !tbaa !58
  store i32 %i.lu, ptr %i.lq, align 4, !tbaa !43
  br label %bb.bl

.thread:                                          ; preds = %bb.bi
  %i.lw = load i8, ptr %i.ah, align 1, !tbaa !59  ; 2 uses
  %i.lx = add i8 %i.lw, 1
  store i8 %i.lx, ptr %i.ah, align 1, !tbaa !59
  %i.ly = sext i8 %i.lw to i64
  %i.lz = getelementptr inbounds [2 x i8], ptr %i.ag, i64 %i.ly
  store i16 2652, ptr %i.lz, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %bb.bu

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %i.ma = phi ptr [ %i.k, %bb.bk ], [ %i.lg, %bb.bj ] ; 3 uses
  %i.mb = phi ptr [ %i.k, %bb.bk ], [ %i.li, %bb.bj ] ; 3 uses
  %i.mc = phi ptr [ %i.k, %bb.bk ], [ %i.lk, %bb.bj ] ; 3 uses
  %i.md = phi ptr [ %i.k, %bb.bk ], [ %i.lm, %bb.bj ] ; 3 uses
  %i.me = icmp sgt i32 %i.lf, 0
  br i1 %i.me, label %bb.bu, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mf = icmp ult ptr %i.lp, %i.f
  br i1 %i.mf, label %bb.bn, label %bb.bt

bb.bn:                                            ; preds = %bb.bm
  %i.mg = getelementptr inbounds nuw i8, ptr %.13620, i64 4 ; 3 uses
  store i16 2637, ptr %i.lp, align 2, !tbaa !41
  %i.mh = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not689 = icmp eq ptr %i.mh, null
  br i1 %.not689, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mi = ptrtoint ptr %i.hb to i64
  %i.mj = sub i64 %i.mi, %i.an
  %i.mk = trunc i64 %i.mj to i32
  %i.ml = add i32 %i.mk, -2
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  store ptr %i.mm, ptr %i.x, align 8, !tbaa !58
  store i32 %i.ml, ptr %i.mh, align 4, !tbaa !43
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.ph = phi ptr [ %i.ma, %bb.bn ], [ %i.k, %bb.bo ] ; 2 uses
  %.ph1053 = phi ptr [ %i.mb, %bb.bn ], [ %i.k, %bb.bo ] ; 2 uses
  %.ph1054 = phi ptr [ %i.mc, %bb.bn ], [ %i.k, %bb.bo ] ; 2 uses
  %.ph1055 = phi ptr [ %i.md, %bb.bn ], [ %i.k, %bb.bo ] ; 2 uses
  %i.mn = icmp ult ptr %i.mg, %i.f
  br i1 %i.mn, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.mo = getelementptr inbounds nuw i8, ptr %.13620, i64 6 ; 2 uses
  store i16 2617, ptr %i.mg, align 2, !tbaa !41
  %i.mp = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not691 = icmp eq ptr %i.mp, null
  br i1 %.not691, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mq = ptrtoint ptr %i.hb to i64
  %i.mr = sub i64 %i.mq, %i.aq
  %i.ms = trunc i64 %i.mr to i32
  %i.mt = add i32 %i.ms, -2
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store ptr %i.mu, ptr %i.x, align 8, !tbaa !58
  store i32 %i.mt, ptr %i.mp, align 4, !tbaa !43
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bp
  %i.mv = load i8, ptr %i.ap, align 1, !tbaa !59  ; 2 uses
  %i.mw = add i8 %i.mv, 1
  store i8 %i.mw, ptr %i.ap, align 1, !tbaa !59
  %i.mx = sext i8 %i.mv to i64
  %i.my = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.mx
  store i16 2617, ptr %i.my, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bm
  %i.mz = load i8, ptr %i.ak, align 1, !tbaa !59  ; 3 uses
  %i.na = add i8 %i.mz, 1                         ; 2 uses
  store i8 %i.na, ptr %i.ak, align 1, !tbaa !59
  %i.nb = sext i8 %i.mz to i64
  %i.nc = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.nb
  store i16 2637, ptr %i.nc, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  %i.nd = add i8 %i.mz, 2
  store i8 %i.nd, ptr %i.am, align 1, !tbaa !59
  %i.ne = sext i8 %i.na to i64
  %i.nf = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.ne
  store i16 2617, ptr %i.nf, align 2, !tbaa !41
  br label %bb.bv

bb.bu:                                            ; preds = %.thread, %bb.bl
  %.146211052 = phi ptr [ %.13620, %.thread ], [ %i.lp, %bb.bl ]
  %i.ng = phi ptr [ %i.lm, %.thread ], [ %i.md, %bb.bl ]
  %i.nh = phi ptr [ %i.lk, %.thread ], [ %i.mc, %bb.bl ]
  %i.ni = phi ptr [ %i.li, %.thread ], [ %i.mb, %bb.bl ]
  %i.nj = phi ptr [ %i.lg, %.thread ], [ %i.ma, %bb.bl ]
  %i.nk = phi i32 [ 15, %.thread ], [ %i.lf, %bb.bl ]
  %i.nl = load i8, ptr %i.as, align 1, !tbaa !59  ; 3 uses
  %i.nm = add i8 %i.nl, 1
  %i.nn = sext i8 %i.nl to i64
  %i.no = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.nn
  store i16 2637, ptr %i.no, align 2, !tbaa !41
  %i.np = add i8 %i.nl, 2
  store i8 %i.np, ptr %i.as, align 1, !tbaa !59
  %i.nq = sext i8 %i.nm to i64
  %i.nr = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.nq
  store i16 2617, ptr %i.nr, align 2, !tbaa !41
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bq, %bb.br, %bb.bs, %bb.bu
  %i.ns = phi i32 [ %i.lf, %bb.br ], [ %i.lf, %bb.bq ], [ 15, %bb.bs ], [ 15, %bb.bt ], [ %i.nk, %bb.bu ]
  %i.nt = phi ptr [ %i.k, %bb.br ], [ %.ph, %bb.bq ], [ %.ph, %bb.bs ], [ %i.ma, %bb.bt ], [ %i.nj, %bb.bu ]
  %i.nu = phi ptr [ %i.lh, %bb.br ], [ %i.lh, %bb.bq ], [ %i.h, %bb.bs ], [ %i.h, %bb.bt ], [ %i.h, %bb.bu ]
  %i.nv = phi ptr [ %i.k, %bb.br ], [ %.ph1053, %bb.bq ], [ %.ph1053, %bb.bs ], [ %i.mb, %bb.bt ], [ %i.ni, %bb.bu ]
  %i.nw = phi ptr [ %i.lj, %bb.br ], [ %i.lj, %bb.bq ], [ %i.h, %bb.bs ], [ %i.h, %bb.bt ], [ %i.h, %bb.bu ]
  %i.nx = phi ptr [ %i.k, %bb.br ], [ %.ph1054, %bb.bq ], [ %.ph1054, %bb.bs ], [ %i.mc, %bb.bt ], [ %i.nh, %bb.bu ]
  %i.ny = phi ptr [ %i.ll, %bb.br ], [ %i.ll, %bb.bq ], [ %i.h, %bb.bs ], [ %i.h, %bb.bt ], [ %i.h, %bb.bu ]
  %i.nz = phi ptr [ %i.k, %bb.br ], [ %.ph1055, %bb.bq ], [ %.ph1055, %bb.bs ], [ %i.md, %bb.bt ], [ %i.ng, %bb.bu ]
  %i.oa = phi ptr [ %i.ln, %bb.br ], [ %i.ln, %bb.bq ], [ %i.h, %bb.bs ], [ %i.h, %bb.bt ], [ %i.h, %bb.bu ]
  %.16623 = phi ptr [ %i.mo, %bb.br ], [ %i.mo, %bb.bq ], [ %i.mg, %bb.bs ], [ %i.lp, %bb.bt ], [ %.146211052, %bb.bu ]
  store i32 65535, ptr %i.n, align 8, !tbaa !43
  store i16 -2, ptr %i.m, align 4, !tbaa !18
  br label %.outer.backedge

.fold.split:                                      ; preds = %.preheader840
  br label %bb.bw

.fold.split1124:                                  ; preds = %.preheader840
  br label %bb.bw

.fold.split1125:                                  ; preds = %.preheader840
  br label %bb.bw

.fold.split1126:                                  ; preds = %.preheader840
  br label %bb.bw

.fold.split1127:                                  ; preds = %.preheader840
  br label %bb.bw

.fold.split1128:                                  ; preds = %.preheader840
  br label %bb.bw

.fold.split1129:                                  ; preds = %.preheader840
  br label %bb.bw

.fold.split1130:                                  ; preds = %.preheader840
  br label %bb.bw

.fold.split1131:                                  ; preds = %.preheader840
  br label %bb.bw

.fold.split1132:                                  ; preds = %.preheader840
  br label %bb.bw

.fold.split1133:                                  ; preds = %.preheader840
  br label %bb.bw

.fold.split1134:                                  ; preds = %.preheader840
  br label %bb.bw

.fold.split1135:                                  ; preds = %.preheader840
  br label %bb.bw

.fold.split1136:                                  ; preds = %.preheader840
  br label %bb.bw

bb.bw:                                            ; preds = %.preheader840, %.fold.split1136, %.fold.split1135, %.fold.split1134, %.fold.split1133, %.fold.split1132, %.fold.split1131, %.fold.split1130, %.fold.split1129, %.fold.split1128, %.fold.split1127, %.fold.split1126, %.fold.split1125, %.fold.split1124, %.fold.split
  %.lcssa953 = phi i64 [ 1, %.preheader840 ], [ 14, %.fold.split1135 ], [ 2, %.fold.split ], [ 3, %.fold.split1124 ], [ 4, %.fold.split1125 ], [ 5, %.fold.split1126 ], [ 6, %.fold.split1127 ], [ 7, %.fold.split1128 ], [ 8, %.fold.split1129 ], [ 9, %.fold.split1130 ], [ 10, %.fold.split1131 ], [ 11, %.fold.split1132 ], [ 12, %.fold.split1133 ], [ 13, %.fold.split1134 ], [ 15, %.fold.split1136 ] ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr @_ZL17nuktaSpecialCases, i64 %.lcssa953
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 2
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !42
  %i.oe = zext i16 %i.od to i32                   ; 2 uses
  %i.of = and i32 %i.oe, 255
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw i8, ptr @_ZL13validityTable, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !33
  %i.oj = zext i8 %i.oi to i32
  %i.ok = load i32, ptr %i.v, align 4, !tbaa !30
  %i.ol = and i32 %i.ok, %i.oj
  %.not673 = icmp eq i32 %i.ol, 0
  br i1 %.not673, label %.thread810.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i16 -2, ptr %i.m, align 4, !tbaa !41
  store i32 65535, ptr %i.n, align 8, !tbaa !43
  br i1 %i.kh, label %bb.by, label %.thread813

bb.by:                                            ; preds = %bb.bx
  %i.om = load i32, ptr %i.w, align 4, !tbaa !34  ; 2 uses
  %.not674 = icmp eq i32 %i.om, 0
  br i1 %.not674, label %switch.early.test, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.on = icmp ult ptr %.7614, %i.f
  %i.oo = trunc i32 %i.om to i16                  ; 2 uses
  br i1 %i.on, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.op = getelementptr inbounds nuw i8, ptr %.7614, i64 2 ; 2 uses
  store i16 %i.oo, ptr %.7614, align 2, !tbaa !41
  %i.oq = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not679 = icmp eq ptr %i.oq, null
  br i1 %.not679, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.or = ptrtoint ptr %i.hb to i64
  %i.os = add i64 %i.aa, %i.or
  %i.ot = trunc i64 %i.os to i32
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  store ptr %i.ou, ptr %i.x, align 8, !tbaa !58
  store i32 %i.ot, ptr %i.oq, align 4, !tbaa !43
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bz
  %i.ov = load i8, ptr %i.bq, align 1, !tbaa !59  ; 2 uses
  %i.ow = add i8 %i.ov, 1
  store i8 %i.ow, ptr %i.bq, align 1, !tbaa !59
  %i.ox = sext i8 %i.ov to i64
  %i.oy = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.ox
  store i16 %i.oo, ptr %i.oy, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ca, %bb.cb, %bb.cc
  %i.oz = phi i32 [ %i.gx, %bb.cb ], [ %i.gx, %bb.ca ], [ 15, %bb.cc ]
  %i.pa = phi ptr [ %i.k, %bb.cb ], [ %i.bs, %bb.ca ], [ %i.bs, %bb.cc ]
  %i.pb = phi ptr [ %i.bt, %bb.cb ], [ %i.bt, %bb.ca ], [ %i.h, %bb.cc ]
  %i.pc = phi ptr [ %i.k, %bb.cb ], [ %i.bu, %bb.ca ], [ %i.bu, %bb.cc ]
  %i.pd = phi ptr [ %i.bv, %bb.cb ], [ %i.bv, %bb.ca ], [ %i.h, %bb.cc ]
  %i.pe = phi ptr [ %i.k, %bb.cb ], [ %i.bw, %bb.ca ], [ %i.bw, %bb.cc ]
  %i.pf = phi ptr [ %i.bx, %bb.cb ], [ %i.bx, %bb.ca ], [ %i.h, %bb.cc ]
  %i.pg = phi ptr [ %i.k, %bb.cb ], [ %i.gz, %bb.ca ], [ %i.gz, %bb.cc ]
  %i.ph = phi ptr [ %i.ha, %bb.cb ], [ %i.ha, %bb.ca ], [ %i.h, %bb.cc ]
  %.17624 = phi ptr [ %i.op, %bb.cb ], [ %i.op, %bb.ca ], [ %.7614, %bb.cc ]
  store i32 0, ptr %i.w, align 4, !tbaa !34
  br label %switch.early.test

switch.early.test:                                ; preds = %bb.by, %bb.cd
  %i.pi = phi i32 [ %i.oz, %bb.cd ], [ %i.gx, %bb.by ] ; 2 uses
  %i.pj = phi ptr [ %i.pa, %bb.cd ], [ %i.bs, %bb.by ]
  %i.pk = phi ptr [ %i.pb, %bb.cd ], [ %i.bt, %bb.by ] ; 2 uses
  %i.pl = phi ptr [ %i.pc, %bb.cd ], [ %i.bu, %bb.by ]
  %i.pm = phi ptr [ %i.pd, %bb.cd ], [ %i.bv, %bb.by ] ; 2 uses
  %i.pn = phi ptr [ %i.pe, %bb.cd ], [ %i.bw, %bb.by ]
  %i.po = phi ptr [ %i.pf, %bb.cd ], [ %i.bx, %bb.by ] ; 2 uses
  %i.pp = phi ptr [ %i.pg, %bb.cd ], [ %i.gz, %bb.by ]
  %i.pq = phi ptr [ %i.ph, %bb.cd ], [ %i.ha, %bb.by ] ; 2 uses
  %.18 = phi ptr [ %.17624, %bb.cd ], [ %.7614, %bb.by ] ; 4 uses
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode, i64 %.lcssa953
  %switch.load = load i16, ptr %switch.gep, align 2 ; 2 uses
  %2 = icmp ult ptr %.18, %i.f
  br i1 %2, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %switch.early.test
  %i.pr = getelementptr inbounds nuw i8, ptr %.18, i64 2 ; 2 uses
  store i16 %switch.load, ptr %.18, align 2, !tbaa !41
  %i.ps = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not680 = icmp eq ptr %i.ps, null
  br i1 %.not680, label %.outer.backedge, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.pt = ptrtoint ptr %i.hb to i64
  %i.pu = sub i64 %i.pt, %i.ab
  %i.pv = trunc i64 %i.pu to i32
  %i.pw = add i32 %i.pv, -2
  %i.px = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  store ptr %i.px, ptr %i.x, align 8, !tbaa !58
  store i32 %i.pw, ptr %i.ps, align 4, !tbaa !43
  br label %.outer.backedge

bb.cg:                                            ; preds = %switch.early.test
  %i.py = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.pz = getelementptr inbounds nuw i8, ptr %i.h, i64 93 ; 2 uses
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !59  ; 2 uses
  %i.qb = add i8 %i.qa, 1
  store i8 %i.qb, ptr %i.pz, align 1, !tbaa !59
  %i.qc = sext i8 %i.qa to i64
  %i.qd = getelementptr inbounds [2 x i8], ptr %i.py, i64 %i.qc
  store i16 %switch.load, ptr %i.qd, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %.loopexit841.thread

.thread810.thread:                                ; preds = %.preheader840, %bb.bw
  %i.qe = zext i8 %i.hc to i64
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr @_ZL14toUnicodeTable, i64 %i.qe
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !42
  %i.qh = zext i16 %i.qg to i32
  br label %bb.ch

.thread810:                                       ; preds = %.loopexit842
  %i.qi = zext i8 %i.hc to i64
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr @_ZL14toUnicodeTable, i64 %i.qi
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !42
  %i.ql = zext i16 %i.qk to i32                   ; 2 uses
  %i.qm = icmp ugt i8 %i.hc, -96
  br i1 %i.qm, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %.thread810.thread, %.thread810
  %i.qn = phi i32 [ %i.qh, %.thread810.thread ], [ %i.ql, %.thread810 ] ; 3 uses
  %i.qo = and i32 %i.qn, 127
  %i.qp = zext nneg i32 %i.qo to i64
  %i.qq = getelementptr inbounds nuw i8, ptr @_ZL13validityTable, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !33
  %i.qs = zext i8 %i.qr to i32
  %i.qt = load i32, ptr %i.v, align 4, !tbaa !30
  %i.qu = and i32 %i.qt, %i.qs
  %i.qv = icmp eq i32 %i.qu, 0
  br i1 %i.qv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.qw = load i16, ptr %i.t, align 4, !tbaa !26
  %i.qx = icmp ne i16 %i.qw, 768
  %i.qy = icmp ne i8 %i.hc, -48
  %or.cond63 = or i1 %i.qx, %i.qy
  %spec.store.select75 = select i1 %or.cond63, i32 65535, i32 %i.qn
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %.thread810
  %.14 = phi i32 [ %spec.store.select75, %bb.ci ], [ %i.qn, %bb.ch ], [ %i.ql, %.thread810 ]
  %i.qz = zext i8 %i.hc to i16
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ba, %bb.ax, %bb.ay, %bb.aw, %bb.cj, %.loopexit, %bb.az
  %.sink1137 = phi i16 [ %i.kc, %bb.az ], [ 232, %bb.ay ], [ 234, %bb.aw ], [ %i.qz, %bb.cj ], [ -2, %bb.ax ], [ 224, %.loopexit ], [ -2, %bb.ba ]
  %.15.ph = phi i32 [ %i.kb, %bb.az ], [ %spec.select832, %bb.ay ], [ %spec.select, %bb.aw ], [ %.14, %bb.cj ], [ 8204, %bb.ax ], [ %spec.select942, %.loopexit ], [ 8205, %bb.ba ] ; 7 uses
  store i16 %.sink1137, ptr %i.m, align 2, !tbaa !41
  %.pr = load i32, ptr %i.n, align 8, !tbaa !43   ; 2 uses
  %.not706 = icmp eq i32 %.pr, 65535
  br i1 %.not706, label %.thread813, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ra = load i16, ptr %i.t, align 4, !tbaa !26  ; 2 uses
  %i.rb = icmp eq i16 %i.ra, 256                  ; 3 uses
  %.pre988 = load i32, ptr %i.w, align 4, !tbaa !34 ; 7 uses
  %i.rc = add i32 %.pre988, -2560
  %or.cond.i = icmp ult i32 %i.rc, 80
  %or.cond.not = select i1 %i.rb, i1 %or.cond.i, i1 false
  br i1 %or.cond.not, label %_ZL14isPNJConsonanti.exit, label %_ZL14isPNJConsonanti.exit.thread

_ZL14isPNJConsonanti.exit:                        ; preds = %bb.cl
  %i.rd = zext nneg i32 %.pre988 to i64
  %i.re = getelementptr i8, ptr @_ZL6pnjMap, i64 %i.rd
  %i.rf = getelementptr i8, ptr %i.re, i64 -2560
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !33
  %.not708 = trunc i8 %i.rg to i1
  %i.rh = icmp eq i32 %.pr, 2381
  %or.cond834 = and i1 %i.rh, %.not708
  %i.ri = add nuw nsw i32 %.15.ph, 256
  %i.rj = icmp eq i32 %i.ri, %.pre988
  %or.cond836 = select i1 %or.cond834, i1 %i.rj, i1 false
  br i1 %or.cond836, label %bb.cm, label %_ZL14isPNJConsonanti.exit.thread.thread

bb.cm:                                            ; preds = %_ZL14isPNJConsonanti.exit
  %i.rk = ptrtoint ptr %i.hb to i64
  %i.rl = sub i64 %i.rk, %i.ba
  %i.rm = trunc i64 %i.rl to i32
  %i.rn = add i32 %i.rm, -3                       ; 2 uses
  %i.ro = icmp ult ptr %.7614, %i.f
  br i1 %i.ro, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.rp = getelementptr inbounds nuw i8, ptr %.7614, i64 2 ; 2 uses
  store i16 2673, ptr %.7614, align 2, !tbaa !41
  %i.rq = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not729 = icmp eq ptr %i.rq, null
  br i1 %.not729, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  store ptr %i.rr, ptr %i.x, align 8, !tbaa !58
  store i32 %i.rn, ptr %i.rq, align 4, !tbaa !43
  %.pre987 = load i32, ptr %i.w, align 4, !tbaa !34
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cm
  %i.rs = load i8, ptr %i.bc, align 1, !tbaa !59  ; 2 uses
  %i.rt = add i8 %i.rs, 1
  store i8 %i.rt, ptr %i.bc, align 1, !tbaa !59
  %i.ru = sext i8 %i.rs to i64
  %i.rv = getelementptr inbounds [2 x i8], ptr %i.bb, i64 %i.ru
  store i16 2673, ptr %i.rv, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn
  %i.rw = phi i32 [ %i.gx, %bb.co ], [ %i.gx, %bb.cn ], [ 15, %bb.cp ] ; 2 uses
  %i.rx = phi i32 [ %.pre987, %bb.co ], [ %.pre988, %bb.cn ], [ %.pre988, %bb.cp ]
  %i.ry = phi ptr [ %i.bt, %bb.co ], [ %i.bt, %bb.cn ], [ %i.h, %bb.cp ] ; 2 uses
  %i.rz = phi ptr [ %i.bv, %bb.co ], [ %i.bv, %bb.cn ], [ %i.h, %bb.cp ] ; 2 uses
  %i.sa = phi ptr [ %i.bx, %bb.co ], [ %i.bx, %bb.cn ], [ %i.h, %bb.cp ] ; 2 uses
  %i.sb = phi ptr [ %i.ha, %bb.co ], [ %i.ha, %bb.cn ], [ %i.h, %bb.cp ] ; 2 uses
  %.20 = phi ptr [ %i.rp, %bb.co ], [ %i.rp, %bb.cn ], [ %.7614, %bb.cp ] ; 4 uses
  %i.sc = icmp ult ptr %.20, %i.f
  %i.sd = trunc i32 %i.rx to i16                  ; 2 uses
  br i1 %i.sc, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.se = getelementptr inbounds nuw i8, ptr %.20, i64 2 ; 2 uses
  store i16 %i.sd, ptr %.20, align 2, !tbaa !41
  %i.sf = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not734 = icmp eq ptr %i.sf, null
  br i1 %.not734, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  store ptr %i.sg, ptr %i.x, align 8, !tbaa !58
  store i32 %i.rn, ptr %i.sf, align 4, !tbaa !43
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cq
  %i.sh = load i8, ptr %i.be, align 1, !tbaa !59  ; 2 uses
  %i.si = add i8 %i.sh, 1
  store i8 %i.si, ptr %i.be, align 1, !tbaa !59
  %i.sj = sext i8 %i.sh to i64
  %i.sk = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.sj
  store i16 %i.sd, ptr %i.sk, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cr, %bb.cs, %bb.ct
  %i.sl = phi i32 [ %i.rw, %bb.cs ], [ %i.rw, %bb.cr ], [ 15, %bb.ct ]
  %i.sm = phi ptr [ %i.ry, %bb.cs ], [ %i.ry, %bb.cr ], [ %i.h, %bb.ct ]
  %i.sn = phi ptr [ %i.rz, %bb.cs ], [ %i.rz, %bb.cr ], [ %i.h, %bb.ct ]
  %i.so = phi ptr [ %i.sa, %bb.cs ], [ %i.sa, %bb.cr ], [ %i.h, %bb.ct ]
  %i.sp = phi ptr [ %i.sb, %bb.cs ], [ %i.sb, %bb.cr ], [ %i.h, %bb.ct ]
  %.21 = phi ptr [ %i.se, %bb.cs ], [ %i.se, %bb.cr ], [ %.20, %bb.ct ]
  store i32 0, ptr %i.w, align 4, !tbaa !34
  store i32 65535, ptr %i.n, align 8, !tbaa !43
  br label %.outer.backedge

_ZL14isPNJConsonanti.exit.thread:                 ; preds = %bb.cl
  %.not709 = icmp eq i32 %.pre988, 0
  br i1 %.not709, label %bb.cz, label %_ZL14isPNJConsonanti.exit.thread.thread

_ZL14isPNJConsonanti.exit.thread.thread:          ; preds = %_ZL14isPNJConsonanti.exit, %_ZL14isPNJConsonanti.exit.thread
  %i.sq = icmp ult ptr %.7614, %i.f
  %i.sr = trunc i32 %.pre988 to i16               ; 2 uses
  br i1 %i.sq, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %_ZL14isPNJConsonanti.exit.thread.thread
  %i.ss = getelementptr inbounds nuw i8, ptr %.7614, i64 2 ; 2 uses
  store i16 %i.sr, ptr %.7614, align 2, !tbaa !41
  %i.st = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %.not714 = icmp eq ptr %i.st, null
  br i1 %.not714, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.su = ptrtoint ptr %i.hb to i64
  %i.sv = add i64 %i.bi, %i.su
  %i.sw = trunc i64 %i.sv to i32
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 4
  store ptr %i.sx, ptr %i.x, align 8, !tbaa !58
  store i32 %i.sw, ptr %i.st, align 4, !tbaa !43
  br label %bb.cy

bb.cx:                                            ; preds = %_ZL14isPNJConsonanti.exit.thread.thread
  %i.sy = load i8, ptr %i.bg, align 1, !tbaa !59  ; 2 uses
  %i.sz = add i8 %i.sy, 1
  store i8 %i.sz, ptr %i.bg, align 1, !tbaa !59
  %i.ta = sext i8 %i.sy to i64
  %i.tb = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.ta
  store i16 %i.sr, ptr %i.tb, align 2, !tbaa !41
  store i32 15, ptr %1, align 4, !tbaa !36
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cv, %bb.cw, %bb.cx
  %i.tc = phi i32 [ %i.gx, %bb.cw ], [ %i.gx, %bb.cv ], [ 15, %bb.cx ]
  %i.td = phi ptr [ %i.k, %bb.cw ], [ %i.bs, %bb.cv ], [ %i.bs, %bb.cx ]
  %i.te = phi ptr [ %i.bt, %bb.cw ], [ %i.bt, %bb.cv ], [ %i.h, %bb.cx ]
  %i.tf = phi ptr [ %i.k, %bb.cw ], [ %i.bu, %bb.cv ], [ %i.bu, %bb.cx ]
  %i.tg = phi ptr [ %i.bv, %bb.cw ], [ %i.bv, %bb.cv ], [ %i.h, %bb.cx ]
  %i.th = phi ptr [ %i.k, %bb.cw ], [ %i.bw, %bb.cv ], [ %i.bw, %bb.cx ]
  %i.ti = phi ptr [ %i.bx, %bb.cw ], [ %i.bx, %bb.cv ], [ %i.h, %bb.cx ]
  %i.tj = phi ptr [ %i.k, %bb.cw ], [ %i.gz, %bb.cv ], [ %i.gz, %bb.cx ]
  %i.tk = phi ptr [ %i.ha, %bb.cw ], [ %i.ha, %bb.cv ], [ %i.h, %bb.cx ]
  %.22 = phi ptr [ %i.ss, %bb.cw ], [ %i.ss, %bb.cv ], [ %.7614, %bb.cx ]
  store i32 0, ptr %i.w, align 4, !tbaa !34
  br label %bb.cz

end_hunk_1
