inline.NumInlined: 24
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_des_context = type { [32 x i32] }
%struct.mbedtls_des3_context = type { [96 x i32] }

@odd_parity_table = internal unnamed_addr constant [128 x i8] c"\01\02\04\07\08\0B\0D\0E\10\13\15\16\19\1A\1C\1F #%&)*,/12478;=>@CEFIJLOQRTWX[]^abdghkmnpsuvyz|\7F\80\83\85\86\89\8A\8C\8F\91\92\94\97\98\9B\9D\9E\A1\A2\A4\A7\A8\AB\AD\AE\B0\B3\B5\B6\B9\BA\BC\BF\C1\C2\C4\C7\C8\CB\CD\CE\D0\D3\D5\D6\D9\DA\DC\DF\E0\E3\E5\E6\E9\EA\EC\EF\F1\F2\F4\F7\F8\FB\FD\FE", align 16
@LHs = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 256, i32 257, i32 65536, i32 65537, i32 65792, i32 65793, i32 16777216, i32 16777217, i32 16777472, i32 16777473, i32 16842752, i32 16842753, i32 16843008, i32 16843009], align 16
@RHs = internal unnamed_addr constant [16 x i32] [i32 0, i32 16777216, i32 65536, i32 16842752, i32 256, i32 16777472, i32 65792, i32 16843008, i32 1, i32 16777217, i32 65537, i32 16842753, i32 257, i32 16777473, i32 65793, i32 16843009], align 16
@SB8 = internal unnamed_addr constant [64 x i32] [i32 268439616, i32 4096, i32 262144, i32 268701760, i32 268435456, i32 268439616, i32 64, i32 268435456, i32 262208, i32 268697600, i32 268701760, i32 266240, i32 268701696, i32 266304, i32 4096, i32 64, i32 268697600, i32 268435520, i32 268439552, i32 4160, i32 266240, i32 262208, i32 268697664, i32 268701696, i32 4160, i32 0, i32 0, i32 268697664, i32 268435520, i32 268439552, i32 266304, i32 262144, i32 266304, i32 262144, i32 268701696, i32 4096, i32 64, i32 268697664, i32 4096, i32 266304, i32 268439552, i32 64, i32 268435520, i32 268697600, i32 268697664, i32 268435456, i32 262144, i32 268439616, i32 0, i32 268701760, i32 262208, i32 268435520, i32 268697600, i32 268439552, i32 268439616, i32 0, i32 268701760, i32 266240, i32 266240, i32 4160, i32 4160, i32 262208, i32 268435456, i32 268701696], align 16
@SB6 = internal unnamed_addr constant [64 x i32] [i32 536870928, i32 541065216, i32 16384, i32 541081616, i32 541065216, i32 16, i32 541081616, i32 4194304, i32 536887296, i32 4210704, i32 4194304, i32 536870928, i32 4194320, i32 536887296, i32 536870912, i32 16400, i32 0, i32 4194320, i32 536887312, i32 16384, i32 4210688, i32 536887312, i32 16, i32 541065232, i32 541065232, i32 0, i32 4210704, i32 541081600, i32 16400, i32 4210688, i32 541081600, i32 536870912, i32 536887296, i32 16, i32 541065232, i32 4210688, i32 541081616, i32 4194304, i32 16400, i32 536870928, i32 4194304, i32 536887296, i32 536870912, i32 16400, i32 536870928, i32 541081616, i32 4210688, i32 541065216, i32 4210704, i32 541081600, i32 0, i32 541065232, i32 16, i32 16384, i32 541065216, i32 4210704, i32 16384, i32 4194320, i32 536887312, i32 0, i32 541081600, i32 536870912, i32 4194320, i32 536887312], align 16
@SB4 = internal unnamed_addr constant [64 x i32] [i32 8396801, i32 8321, i32 8321, i32 128, i32 8396928, i32 8388737, i32 8388609, i32 8193, i32 0, i32 8396800, i32 8396800, i32 8396929, i32 129, i32 0, i32 8388736, i32 8388609, i32 1, i32 8192, i32 8388608, i32 8396801, i32 128, i32 8388608, i32 8193, i32 8320, i32 8388737, i32 1, i32 8320, i32 8388736, i32 8192, i32 8396928, i32 8396929, i32 129, i32 8388736, i32 8388609, i32 8396800, i32 8396929, i32 129, i32 0, i32 0, i32 8396800, i32 8320, i32 8388736, i32 8388737, i32 1, i32 8396801, i32 8321, i32 8321, i32 128, i32 8396929, i32 129, i32 1, i32 8192, i32 8388609, i32 8193, i32 8396928, i32 8388737, i32 8193, i32 8320, i32 8388608, i32 8396801, i32 128, i32 8388608, i32 8192, i32 8396928], align 16
@SB2 = internal unnamed_addr constant [64 x i32] [i32 -2146402272, i32 -2147450880, i32 32768, i32 1081376, i32 1048576, i32 32, i32 -2146435040, i32 -2147450848, i32 -2147483616, i32 -2146402272, i32 -2146402304, i32 -2147483648, i32 -2147450880, i32 1048576, i32 32, i32 -2146435040, i32 1081344, i32 1048608, i32 -2147450848, i32 0, i32 -2147483648, i32 32768, i32 1081376, i32 -2146435072, i32 1048608, i32 -2147483616, i32 0, i32 1081344, i32 32800, i32 -2146402304, i32 -2146435072, i32 32800, i32 0, i32 1081376, i32 -2146435040, i32 1048576, i32 -2147450848, i32 -2146435072, i32 -2146402304, i32 32768, i32 -2146435072, i32 -2147450880, i32 32, i32 -2146402272, i32 1081376, i32 32, i32 32768, i32 -2147483648, i32 32800, i32 -2146402304, i32 1048576, i32 -2147483616, i32 1048608, i32 -2147450848, i32 -2147483616, i32 1048608, i32 1081344, i32 0, i32 -2147450880, i32 32800, i32 -2147483648, i32 -2146435040, i32 -2146402272, i32 1081344], align 16
@SB7 = internal unnamed_addr constant [64 x i32] [i32 2097152, i32 69206018, i32 67110914, i32 0, i32 2048, i32 67110914, i32 2099202, i32 69208064, i32 69208066, i32 2097152, i32 0, i32 67108866, i32 2, i32 67108864, i32 69206018, i32 2050, i32 67110912, i32 2099202, i32 2097154, i32 67110912, i32 67108866, i32 69206016, i32 69208064, i32 2097154, i32 69206016, i32 2048, i32 2050, i32 69208066, i32 2099200, i32 2, i32 67108864, i32 2099200, i32 67108864, i32 2099200, i32 2097152, i32 67110914, i32 67110914, i32 69206018, i32 69206018, i32 2, i32 2097154, i32 67108864, i32 67110912, i32 2097152, i32 69208064, i32 2050, i32 2099202, i32 69208064, i32 2050, i32 67108866, i32 69208066, i32 69206016, i32 2099200, i32 0, i32 2, i32 69208066, i32 0, i32 2099202, i32 69206016, i32 2048, i32 67108866, i32 67110912, i32 2048, i32 2097154], align 16
@SB5 = internal unnamed_addr constant [64 x i32] [i32 256, i32 34078976, i32 34078720, i32 1107296512, i32 524288, i32 256, i32 1073741824, i32 34078720, i32 1074266368, i32 524288, i32 33554688, i32 1074266368, i32 1107296512, i32 1107820544, i32 524544, i32 1073741824, i32 33554432, i32 1074266112, i32 1074266112, i32 0, i32 1073742080, i32 1107820800, i32 1107820800, i32 33554688, i32 1107820544, i32 1073742080, i32 0, i32 1107296256, i32 34078976, i32 33554432, i32 1107296256, i32 524544, i32 524288, i32 1107296512, i32 256, i32 33554432, i32 1073741824, i32 34078720, i32 1107296512, i32 1074266368, i32 33554688, i32 1073741824, i32 1107820544, i32 34078976, i32 1074266368, i32 256, i32 33554432, i32 1107820544, i32 1107820800, i32 524544, i32 1107296256, i32 1107820800, i32 34078720, i32 0, i32 1074266112, i32 1107296256, i32 524544, i32 33554688, i32 1073742080, i32 524288, i32 0, i32 1074266112, i32 34078976, i32 1073742080], align 16
@SB3 = internal unnamed_addr constant [64 x i32] [i32 520, i32 134349312, i32 0, i32 134348808, i32 134218240, i32 0, i32 131592, i32 134218240, i32 131080, i32 134217736, i32 134217736, i32 131072, i32 134349320, i32 131080, i32 134348800, i32 520, i32 134217728, i32 8, i32 134349312, i32 512, i32 131584, i32 134348800, i32 134348808, i32 131592, i32 134218248, i32 131584, i32 131072, i32 134218248, i32 8, i32 134349320, i32 512, i32 134217728, i32 134349312, i32 134217728, i32 131080, i32 520, i32 131072, i32 134349312, i32 134218240, i32 0, i32 512, i32 131080, i32 134349320, i32 134218240, i32 134217736, i32 512, i32 0, i32 134348808, i32 134218248, i32 131072, i32 134217728, i32 134349320, i32 8, i32 131592, i32 131584, i32 134217736, i32 134348800, i32 134218248, i32 520, i32 134348800, i32 131592, i32 8, i32 134348808, i32 131584], align 16
@SB1 = internal unnamed_addr constant [64 x i32] [i32 16843776, i32 0, i32 65536, i32 16843780, i32 16842756, i32 66564, i32 4, i32 65536, i32 1024, i32 16843776, i32 16843780, i32 1024, i32 16778244, i32 16842756, i32 16777216, i32 4, i32 1028, i32 16778240, i32 16778240, i32 66560, i32 66560, i32 16842752, i32 16842752, i32 16778244, i32 65540, i32 16777220, i32 16777220, i32 65540, i32 0, i32 1028, i32 66564, i32 16777216, i32 65536, i32 16843780, i32 4, i32 16842752, i32 16843776, i32 16777216, i32 16777216, i32 1024, i32 16842756, i32 65536, i32 66560, i32 16777220, i32 1024, i32 4, i32 16778244, i32 66564, i32 16843780, i32 65540, i32 16842752, i32 16778244, i32 16777220, i32 1028, i32 66564, i32 16843776, i32 1028, i32 16778240, i32 16778240, i32 0, i32 65540, i32 66560, i32 0, i32 16842756], align 16
@.str = private unnamed_addr constant [23 x i8] c"  DES%c-ECB-%3d (%s): \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@des3_test_keys = internal constant [24 x i8] c"\01#Eg\89\AB\CD\EF#Eg\89\AB\CD\EF\01Eg\89\AB\CD\EF\01#", align 16
@des3_test_ecb_dec = internal constant [3 x [8 x i8]] [[8 x i8] c"7+\98\BFRe\B0Y", [8 x i8] c"\C2\10\19\9C8Ze\A1", [8 x i8] c"\A2pVhi\E5\15\1D"], align 16
@des3_test_ecb_enc = internal constant [3 x [8 x i8]] [[8 x i8] c"\1C\D5\97\EA\84&s\FB", [8 x i8] c"\B3\92M\F3\C5\B5B\93", [8 x i8] c"\DA7dA\BAobo"], align 16
@.str.6 = private unnamed_addr constant [23 x i8] c"  DES%c-CBC-%3d (%s): \00", align 1
@des3_test_cbc_dec = internal constant [3 x [8 x i8]] [[8 x i8] c"X\D9H\EF\85\14e\9A", [8 x i8] c"_\C8x\D4\D7\92\D9T", [8 x i8] c"%\F9u\85\A8\1EH\BF"], align 16
@des3_test_cbc_enc = internal constant [3 x [8 x i8]] [[8 x i8] c"\91\1Cm\CFH\A7\C3M", [8 x i8] c"`\1Av\8F\A1\F9f\F1", [8 x i8] c"\A1P\0F\99\B2\CDdv"], align 16
@str.2 = private unnamed_addr constant [7 x i8] c"passed\00", align 1
@str.3 = private unnamed_addr constant [7 x i8] c"failed\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @mbedtls_des_init(ptr noundef writeonly captures(none) initializes((0, 128)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %0, i8 0, i64 128, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @mbedtls_des_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 128) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @mbedtls_des3_init(ptr noundef writeonly captures(none) initializes((0, 384)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(384) %0, i8 0, i64 384, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mbedtls_des3_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 384) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @mbedtls_des_key_set_parity(ptr noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  %i.b = lshr i8 %i.a, 1
  %i.c = zext nneg i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  store i8 %i.e, ptr %0, align 1, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8
  %i.h = lshr i8 %i.g, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  store i8 %i.k, ptr %i.f, align 1, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = lshr i8 %i.m, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  store i8 %i.q, ptr %i.l, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = lshr i8 %i.s, 1
  %i.u = zext nneg i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  store i8 %i.w, ptr %i.r, align 1, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = lshr i8 %i.y, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  store i8 %i.ac, ptr %i.x, align 1, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8
  %i.af = lshr i8 %i.ae, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8
  store i8 %i.ai, ptr %i.ad, align 1, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = lshr i8 %i.ak, 1
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  store i8 %i.ao, ptr %i.aj, align 1, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %i.ar = lshr i8 %i.aq, 1
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  store i8 %i.au, ptr %i.ap, align 1, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @mbedtls_des_key_check_key_parity(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8       ; 2 uses
  %i.b = lshr i8 %i.a, 1
  %i.c = zext nneg i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %.not = icmp eq i8 %i.a, %i.e
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8     ; 2 uses
  %i.h = lshr i8 %i.g, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %.not.1 = icmp eq i8 %i.g, %i.k
  br i1 %.not.1, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8     ; 2 uses
  %i.n = lshr i8 %i.m, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %.not.2 = icmp eq i8 %i.m, %i.q
  br i1 %.not.2, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8     ; 2 uses
  %i.t = lshr i8 %i.s, 1
  %i.u = zext nneg i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %.not.3 = icmp eq i8 %i.s, %i.w
  br i1 %.not.3, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8     ; 2 uses
  %i.z = lshr i8 %i.y, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %.not.4 = icmp eq i8 %i.y, %i.ac
  br i1 %.not.4, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8   ; 2 uses
  %i.af = lshr i8 %i.ae, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8
  %.not.5 = icmp eq i8 %i.ae, %i.ai
  br i1 %.not.5, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8   ; 2 uses
  %i.al = lshr i8 %i.ak, 1
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %.not.6 = icmp eq i8 %i.ak, %i.ao
  br i1 %.not.6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8   ; 2 uses
  %i.ar = lshr i8 %i.aq, 1
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @odd_parity_table, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %.not.7 = icmp ne i8 %i.aq, %i.au
  %spec.select = zext i1 %.not.7 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.06 = phi i32 [ 1, %bb.a ], [ 1, %bb.e ], [ 1, %bb.b ], [ %spec.select, %bb.h ], [ 1, %bb.c ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.g ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @mbedtls_des_key_check_weak(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 1
  %i.b = icmp ne i64 72340172838076673, %i.a
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 1
  %i.f = icmp ne i64 -72340172838076674, %i.e
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 1
  %i.j = icmp ne i64 1012762420019404575, %i.i
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %0, align 1
  %i.n = icmp ne i64 -1012762420019404576, %i.m
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %0, align 1
  %i.r = icmp ne i64 1009103189485625089, %i.q
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %0, align 1
  %i.v = icmp ne i64 75999403371856159, %i.u
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i64, ptr %0, align 1
  %i.z = icmp ne i64 -1080317445236727807, %i.y
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %0, align 1
  %i.ad = icmp ne i64 139895198055399904, %i.ac
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i64, ptr %0, align 1
  %i.ah = icmp ne i64 -143554428589179391, %i.ag
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i64, ptr %0, align 1
  %i.al = icmp ne i64 143554428589179390, %i.ak
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load i64, ptr %0, align 1
  %i.ap = icmp ne i64 -1076658214702948321, %i.ao
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i64, ptr %0, align 1
  %i.at = icmp ne i64 1076658214702948320, %i.as
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load i64, ptr %0, align 1
  %i.ax = icmp ne i64 -139895198055399905, %i.aw
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = load i64, ptr %0, align 1
  %i.bb = icmp ne i64 1080317445236727806, %i.ba
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = load i64, ptr %0, align 1
  %i.bf = icmp ne i64 -75999403371856160, %i.be
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i64, ptr %0, align 1
  %i.bj = icmp ne i64 -1009103189485625090, %i.bi
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  %spec.select = zext i1 %i.bl to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.04 = phi i32 [ 1, %bb.a ], [ 1, %bb.i ], [ 1, %bb.b ], [ %spec.select, %bb.p ], [ 1, %bb.c ], [ 1, %bb.k ], [ 1, %bb.d ], [ 1, %bb.o ], [ 1, %bb.e ], [ 1, %bb.j ], [ 1, %bb.f ], [ 1, %bb.n ], [ 1, %bb.g ], [ 1, %bb.l ], [ 1, %bb.h ], [ 1, %bb.m ]
  ret i32 %.04
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mbedtls_des_setkey(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %.0.copyload.i100 = load i32, ptr %1, align 1
  %i.a = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i100) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.copyload.i = load i32, ptr %i.b, align 1
  %i.c = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.d = lshr i32 %i.c, 4
  %i.e = xor i32 %i.d, %i.a
  %i.f = and i32 %i.e, 252645135                  ; 2 uses
  %i.g = xor i32 %i.f, %i.a                       ; 7 uses
  %i.h = shl nuw i32 %i.f, 4
  %i.i = xor i32 %i.h, %i.c
  %i.j = and i32 %i.a, 269488144
  %i.k = and i32 %i.i, -269488145
  %i.l = or disjoint i32 %i.k, %i.j               ; 8 uses
  %i.m = and i32 %i.g, 15
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @LHs, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = shl i32 %i.p, 3
  %i.r = lshr i32 %i.g, 8
  %i.s = and i32 %i.r, 15
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @LHs, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = shl i32 %i.v, 2
  %i.x = or i32 %i.w, %i.q
  %i.y = lshr i32 %i.g, 16
  %i.z = and i32 %i.y, 15
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @LHs, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = shl i32 %i.ac, 1
  %i.ae = or i32 %i.x, %i.ad
  %i.af = lshr i32 %i.g, 24
  %i.ag = and i32 %i.af, 15
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @LHs, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = or i32 %i.ae, %i.aj
  %i.al = lshr i32 %i.g, 5
  %i.am = and i32 %i.al, 15
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @LHs, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = shl i32 %i.ap, 7
  %i.ar = or i32 %i.ak, %i.aq
  %i.as = lshr i32 %i.g, 13
  %i.at = and i32 %i.as, 15
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @LHs, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = shl i32 %i.aw, 6
  %i.ay = or i32 %i.ar, %i.ax
  %i.az = lshr i32 %i.g, 21
  %i.ba = and i32 %i.az, 15
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @LHs, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = shl i32 %i.bd, 5
  %i.bf = or i32 %i.ay, %i.be
  %i.bg = lshr i32 %i.a, 29
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @LHs, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = shl i32 %i.bj, 4
  %i.bl = or i32 %i.bf, %i.bk
  %i.bm = lshr i32 %i.l, 1
  %i.bn = and i32 %i.bm, 15
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @RHs, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = shl i32 %i.bq, 3
  %i.bs = lshr i32 %i.l, 9
  %i.bt = and i32 %i.bs, 15
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @RHs, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = shl i32 %i.bw, 2
  %i.by = or i32 %i.bx, %i.br
  %i.bz = lshr i32 %i.l, 17
  %i.ca = and i32 %i.bz, 15
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr @RHs, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = shl i32 %i.cd, 1
  %i.cf = or i32 %i.by, %i.ce
  %i.cg = lshr i32 %i.l, 25
  %i.ch = and i32 %i.cg, 15
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @RHs, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = or i32 %i.cf, %i.ck
  %i.cm = lshr i32 %i.l, 4
  %i.cn = and i32 %i.cm, 15
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @RHs, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.cr = shl i32 %i.cq, 7
  %i.cs = or i32 %i.cl, %i.cr
  %i.ct = lshr i32 %i.l, 12
  %i.cu = and i32 %i.ct, 15
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @RHs, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.cy = shl i32 %i.cx, 6
  %i.cz = or i32 %i.cs, %i.cy
  %i.da = lshr i32 %i.l, 20
  %i.db = and i32 %i.da, 15
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @RHs, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !4
  %i.df = shl i32 %i.de, 5
  %i.dg = or i32 %i.cz, %i.df
  %i.dh = lshr i32 %i.l, 28
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr @RHs, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = shl i32 %i.dk, 4
  %i.dm = or i32 %i.dg, %i.dl
  %i.dn = and i32 %i.bl, 268435455
  %i.do = and i32 %i.dm, 268435455
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.0104 = phi ptr [ %0, %bb.a ], [ %i.iq, %bb.d ] ; 3 uses
  %.093103 = phi i32 [ %i.do, %bb.a ], [ %i.du, %bb.d ] ; 2 uses
  %.094102 = phi i32 [ %i.dn, %bb.a ], [ %i.dr, %bb.d ] ; 2 uses
  %.096101 = phi i32 [ 0, %bb.a ], [ %i.ir, %bb.d ] ; 2 uses
  switch i32 %.096101, label %bb.c [
    i32 15, label %bb.d
    i32 8, label %bb.d
    i32 1, label %bb.d
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  %.sink112 = phi i32 [ 2, %bb.c ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ] ; 2 uses
  %.sink111 = phi i32 [ 26, %bb.c ], [ 27, %bb.b ], [ 27, %bb.b ], [ 27, %bb.b ], [ 27, %bb.b ] ; 2 uses
  %.sink110 = phi i32 [ 268435452, %bb.c ], [ 268435454, %bb.b ], [ 268435454, %bb.b ], [ 268435454, %bb.b ], [ 268435454, %bb.b ] ; 2 uses
  %i.dp = shl nuw nsw i32 %.094102, %.sink112     ; 11 uses
  %i.dq = lshr i32 %.094102, %.sink111            ; 2 uses
  %.masked = and i32 %i.dp, %.sink110             ; 5 uses
  %i.dr = or i32 %.masked, %i.dq                  ; 6 uses
  %i.ds = shl nuw nsw i32 %.093103, %.sink112     ; 15 uses
  %i.dt = lshr i32 %.093103, %.sink111            ; 2 uses
  %.masked97 = and i32 %i.ds, %.sink110           ; 2 uses
  %i.du = or i32 %.masked97, %i.dt                ; 5 uses
  %i.dv = shl nuw i32 %.masked, 4
  %i.dw = and i32 %i.dv, 603979776
  %i.dx = shl i32 %i.dq, 28
  %i.dy = and i32 %i.dx, 268435456
  %i.dz = or disjoint i32 %i.dw, %i.dy
  %i.ea = shl i32 %i.dp, 14
  %i.eb = and i32 %i.ea, 134217728
  %i.ec = or disjoint i32 %i.dz, %i.eb
  %i.ed = shl i32 %i.dr, 18
  %i.ee = and i32 %i.ed, 34078720
  %i.ef = or disjoint i32 %i.ec, %i.ee
  %i.eg = shl i32 %i.dp, 6
  %i.eh = and i32 %i.eg, 16777216
  %i.ei = or disjoint i32 %i.ef, %i.eh
  %i.ej = shl i32 %i.dp, 9
  %i.ek = and i32 %i.ej, 2097152
  %i.el = or disjoint i32 %i.ei, %i.ek
  %i.em = lshr exact i32 %i.dp, 1
  %i.en = and i32 %i.em, 1048576
  %i.eo = or i32 %i.el, %i.en
  %i.ep = shl i32 %i.dr, 10                       ; 2 uses
  %i.eq = and i32 %i.ep, 262144
  %i.er = or i32 %i.eo, %i.eq
  %i.es = shl nuw nsw i32 %.masked, 2
  %i.et = and i32 %i.es, 131072
  %i.eu = or i32 %i.er, %i.et
  %i.ev = lshr i32 %i.dp, 10
  %i.ew = and i32 %i.ev, 65536
  %i.ex = or i32 %i.eu, %i.ew
  %i.ey = lshr i32 %i.ds, 13
  %i.ez = and i32 %i.ey, 8192
  %i.fa = lshr i32 %i.ds, 4
  %i.fb = and i32 %i.fa, 4096
  %i.fc = shl i32 %i.du, 6
  %i.fd = and i32 %i.fc, 2048
  %i.fe = lshr exact i32 %i.ds, 1
  %i.ff = and i32 %i.fe, 1024
  %i.fg = lshr i32 %.masked97, 14                 ; 2 uses
  %i.fh = and i32 %i.fg, 512
  %i.fi = and i32 %i.ds, 256
  %i.fj = lshr i32 %i.ds, 5
  %i.fk = and i32 %i.fj, 32
  %i.fl = lshr i32 %i.ds, 10
  %i.fm = and i32 %i.fl, 16
  %i.fn = lshr i32 %i.du, 3                       ; 2 uses
  %i.fo = and i32 %i.fn, 8
  %i.fp = lshr i32 %i.ds, 18
  %i.fq = and i32 %i.fp, 4
  %i.fr = lshr i32 %i.ds, 26
  %i.fs = and i32 %i.fr, 2
  %i.ft = lshr i32 %i.ds, 24
  %i.fu = and i32 %i.ft, 1
  %i.fv = or i32 %i.ex, %i.fi
  %i.fw = or i32 %i.fv, %i.ez
  %i.fx = or i32 %i.fw, %i.fb
  %i.fy = or i32 %i.fx, %i.fd
  %i.fz = or i32 %i.fy, %i.ff
  %i.ga = or i32 %i.fz, %i.fh
  %i.gb = or i32 %i.ga, %i.fk
  %i.gc = or i32 %i.gb, %i.fm
  %i.gd = or i32 %i.gc, %i.fo
  %i.ge = or i32 %i.gd, %i.fq
  %i.gf = or i32 %i.ge, %i.fs
  %i.gg = or i32 %i.gf, %i.fu
  %i.gh = getelementptr inbounds nuw i8, ptr %.0104, i64 4
  store i32 %i.gg, ptr %.0104, align 4, !tbaa !4
  %i.gi = shl i32 %i.dr, 15                       ; 2 uses
  %i.gj = and i32 %i.gi, 536870912
  %i.gk = shl i32 %i.dp, 17
  %i.gl = and i32 %i.gk, 268435456
  %i.gm = or disjoint i32 %i.gj, %i.gl
  %i.gn = and i32 %i.ep, 134217728
  %i.go = or disjoint i32 %i.gm, %i.gn
  %i.gp = shl i32 %i.dr, 22
  %i.gq = and i32 %i.gp, 67108864
  %i.gr = or disjoint i32 %i.go, %i.gq
  %i.gs = lshr i32 %i.dp, 2
  %i.gt = and i32 %i.gs, 33554432
  %i.gu = or disjoint i32 %i.gr, %i.gt
  %i.gv = shl nuw nsw i32 %.masked, 1
  %i.gw = and i32 %i.gv, 16777216
  %i.gx = or disjoint i32 %i.gu, %i.gw
  %i.gy = shl i32 %i.dr, 16
  %i.gz = and i32 %i.gy, 2097152
  %i.ha = or i32 %i.gx, %i.gz
  %i.hb = shl i32 %i.dp, 11
  %i.hc = and i32 %i.hb, 1048576
  %i.hd = or i32 %i.ha, %i.hc
  %i.he = shl nuw nsw i32 %.masked, 3
  %i.hf = and i32 %i.he, 524288
  %i.hg = or i32 %i.hd, %i.hf
  %i.hh = lshr i32 %i.dp, 6
  %i.hi = and i32 %i.hh, 262144
  %i.hj = or i32 %i.hg, %i.hi
  %i.hk = and i32 %i.gi, 131072
  %i.hl = or i32 %i.hj, %i.hk
  %i.hm = lshr i32 %i.dp, 4
  %i.hn = and i32 %i.hm, 65536
  %i.ho = or i32 %i.hl, %i.hn
  %i.hp = lshr i32 %i.ds, 2
  %i.hq = and i32 %i.hp, 8192
  %i.hr = shl i32 %i.du, 8
  %i.hs = and i32 %i.hr, 4096
  %i.ht = and i32 %i.fg, 2056
  %i.hu = lshr i32 %i.ds, 9
  %i.hv = and i32 %i.hu, 1024
  %i.hw = and i32 %i.ds, 512
  %i.hx = shl i32 %i.du, 7
  %i.hy = and i32 %i.hx, 256
  %i.hz = lshr i32 %i.ds, 7
  %i.ia = and i32 %i.hz, 32
  %i.ib = and i32 %i.fn, 17
  %i.ic = shl nuw nsw i32 %i.dt, 2
  %i.id = and i32 %i.ic, 4
  %i.ie = lshr i32 %i.ds, 21
  %i.if = and i32 %i.ie, 2
  %i.ig = or i32 %i.ho, %i.hw
  %i.ih = or i32 %i.ig, %i.hq
  %i.ii = or i32 %i.ih, %i.hs
  %i.ij = or i32 %i.ii, %i.ht
  %i.ik = or i32 %i.ij, %i.hv
  %i.il = or i32 %i.ik, %i.hy
  %i.im = or i32 %i.il, %i.ia
  %i.in = or i32 %i.im, %i.ib
  %i.io = or i32 %i.in, %i.id
  %i.ip = or i32 %i.io, %i.if
  %i.iq = getelementptr inbounds nuw i8, ptr %.0104, i64 8
  store i32 %i.ip, ptr %i.gh, align 4, !tbaa !4
  %i.ir = add nuw nsw i32 %.096101, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ir, 16
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !9

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @mbedtls_des_setkey_enc(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  tail call void @mbedtls_des_setkey(ptr noundef %0, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @mbedtls_des_setkey_dec(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  tail call void @mbedtls_des_setkey(ptr noundef %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load <4 x i32>, ptr %i.a, align 4, !tbaa !4
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.d = load <4 x i32>, ptr %0, align 4, !tbaa !4
  store <4 x i32> %i.c, ptr %0, align 4, !tbaa !4
  %i.e = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %i.e, ptr %i.a, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load <4 x i32>, ptr %i.g, align 4, !tbaa !4
  %i.i = shufflevector <4 x i32> %i.h, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.j = load <4 x i32>, ptr %i.f, align 4, !tbaa !4
  store <4 x i32> %i.i, ptr %i.f, align 4, !tbaa !4
  %i.k = shufflevector <4 x i32> %i.j, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %i.k, ptr %i.g, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = load <4 x i32>, ptr %i.m, align 4, !tbaa !4
  %i.o = shufflevector <4 x i32> %i.n, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.p = load <4 x i32>, ptr %i.l, align 4, !tbaa !4
  store <4 x i32> %i.o, ptr %i.l, align 4, !tbaa !4
  %i.q = shufflevector <4 x i32> %i.p, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %i.q, ptr %i.m, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.v = load <4 x i32>, ptr %i.r, align 4, !tbaa !4
  store <4 x i32> %i.u, ptr %i.r, align 4, !tbaa !4
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %i.w, ptr %i.s, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @mbedtls_des3_set2key_enc(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
des3_set2key.exit:
  %i.a = alloca [96 x i32], align 16              ; 84 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  tail call void @mbedtls_des_setkey(ptr noundef %0, ptr noundef readonly %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 2 uses
  store i32 %i.e, ptr %i.a, align 16, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load <2 x i32>, ptr %i.i, align 8, !tbaa !4
  store <2 x i32> %i.k, ptr %i.j, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.m = load <2 x i32>, ptr %0, align 4, !tbaa !4
  store <2 x i32> %i.m, ptr %i.l, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i32 %i.e, ptr %i.n, align 16, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  store i32 %i.g, ptr %i.o, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.t, ptr %i.u, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load <2 x i32>, ptr %i.v, align 16, !tbaa !4
  store <2 x i32> %i.y, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aa = load <2 x i32>, ptr %i.w, align 4, !tbaa !4
  store <2 x i32> %i.aa, ptr %i.z, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i32 %i.q, ptr %i.ab, align 8, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  store i32 %i.t, ptr %i.ac, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.ae, ptr %i.af, align 16, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = load <2 x i32>, ptr %i.aj, align 8, !tbaa !4
  store <2 x i32> %i.am, ptr %i.al, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ao = load <2 x i32>, ptr %i.ak, align 4, !tbaa !4
  store <2 x i32> %i.ao, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i32 %i.ae, ptr %i.ap, align 16, !tbaa !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store i32 %i.ah, ptr %i.aq, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.as, ptr %i.at, align 8, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ba = load <2 x i32>, ptr %i.ax, align 16, !tbaa !4
  store <2 x i32> %i.ba, ptr %i.az, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bc = load <2 x i32>, ptr %i.ay, align 4, !tbaa !4
  store <2 x i32> %i.bc, ptr %i.bb, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i32 %i.as, ptr %i.bd, align 8, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 284
  store i32 %i.av, ptr %i.be, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.bg, ptr %i.bh, align 16, !tbaa !4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bo = load <2 x i32>, ptr %i.bl, align 8, !tbaa !4
  store <2 x i32> %i.bo, ptr %i.bn, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bq = load <2 x i32>, ptr %i.bm, align 4, !tbaa !4
  store <2 x i32> %i.bq, ptr %i.bp, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i32 %i.bg, ptr %i.br, align 16, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  store i32 %i.bj, ptr %i.bs, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cc = load <2 x i32>, ptr %i.bz, align 16, !tbaa !4
  store <2 x i32> %i.cc, ptr %i.cb, align 4, !tbaa !4
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ce = load <2 x i32>, ptr %i.ca, align 4, !tbaa !4
  store <2 x i32> %i.ce, ptr %i.cd, align 4, !tbaa !4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i32 %i.bu, ptr %i.cf, align 8, !tbaa !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  store i32 %i.bx, ptr %i.cg, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %i.ci, ptr %i.cj, align 16, !tbaa !4
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cq = load <2 x i32>, ptr %i.cn, align 8, !tbaa !4
  store <2 x i32> %i.cq, ptr %i.cp, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.cs = load <2 x i32>, ptr %i.co, align 4, !tbaa !4
  store <2 x i32> %i.cs, ptr %i.cr, align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store i32 %i.ci, ptr %i.ct, align 16, !tbaa !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 308
  store i32 %i.cl, ptr %i.cu, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !4
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.de = load <2 x i32>, ptr %i.db, align 16, !tbaa !4
  store <2 x i32> %i.de, ptr %i.dd, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dg = load <2 x i32>, ptr %i.dc, align 4, !tbaa !4
  store <2 x i32> %i.dg, ptr %i.df, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i32 %i.cw, ptr %i.dh, align 8, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 316
  store i32 %i.cz, ptr %i.di, align 4, !tbaa !4
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %i.dk, ptr %i.dl, align 16, !tbaa !4
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ds = load <2 x i32>, ptr %i.dp, align 8, !tbaa !4
  store <2 x i32> %i.ds, ptr %i.dr, align 4, !tbaa !4
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.du = load <2 x i32>, ptr %i.dq, align 4, !tbaa !4
  store <2 x i32> %i.du, ptr %i.dt, align 4, !tbaa !4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store i32 %i.dk, ptr %i.dv, align 16, !tbaa !4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 324
  store i32 %i.dn, ptr %i.dw, align 4, !tbaa !4
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %i.dy, ptr %i.dz, align 8, !tbaa !4
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.eg = load <2 x i32>, ptr %i.ed, align 16, !tbaa !4
  store <2 x i32> %i.eg, ptr %i.ef, align 4, !tbaa !4
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ei = load <2 x i32>, ptr %i.ee, align 4, !tbaa !4
  store <2 x i32> %i.ei, ptr %i.eh, align 4, !tbaa !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store i32 %i.dy, ptr %i.ej, align 8, !tbaa !4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 332
  store i32 %i.eb, ptr %i.ek, align 4, !tbaa !4
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.em = load i32, ptr %i.el, align 4, !tbaa !4  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 %i.em, ptr %i.en, align 16, !tbaa !4
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !4  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !4
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.eu = load <2 x i32>, ptr %i.er, align 8, !tbaa !4
  store <2 x i32> %i.eu, ptr %i.et, align 4, !tbaa !4
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ew = load <2 x i32>, ptr %i.es, align 4, !tbaa !4
  store <2 x i32> %i.ew, ptr %i.ev, align 4, !tbaa !4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i32 %i.em, ptr %i.ex, align 16, !tbaa !4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 340
  store i32 %i.ep, ptr %i.ey, align 4, !tbaa !4
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 %i.fa, ptr %i.fb, align 8, !tbaa !4
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.fi = load <2 x i32>, ptr %i.ff, align 16, !tbaa !4
  store <2 x i32> %i.fi, ptr %i.fh, align 4, !tbaa !4
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.fk = load <2 x i32>, ptr %i.fg, align 4, !tbaa !4
  store <2 x i32> %i.fk, ptr %i.fj, align 4, !tbaa !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i32 %i.fa, ptr %i.fl, align 8, !tbaa !4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 348
  store i32 %i.fd, ptr %i.fm, align 4, !tbaa !4
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 %i.fo, ptr %i.fp, align 16, !tbaa !4
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4  ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.fw = load <2 x i32>, ptr %i.ft, align 8, !tbaa !4
  store <2 x i32> %i.fw, ptr %i.fv, align 4, !tbaa !4
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.fy = load <2 x i32>, ptr %i.fu, align 4, !tbaa !4
  store <2 x i32> %i.fy, ptr %i.fx, align 4, !tbaa !4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store i32 %i.fo, ptr %i.fz, align 16, !tbaa !4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  store i32 %i.fr, ptr %i.ga, align 4, !tbaa !4
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !4  ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 %i.gc, ptr %i.gd, align 8, !tbaa !4
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !4  ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.gk = load <2 x i32>, ptr %i.gh, align 16, !tbaa !4
  store <2 x i32> %i.gk, ptr %i.gj, align 4, !tbaa !4
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.gm = load <2 x i32>, ptr %i.gi, align 4, !tbaa !4
  store <2 x i32> %i.gm, ptr %i.gl, align 4, !tbaa !4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store i32 %i.gc, ptr %i.gn, align 8, !tbaa !4
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  store i32 %i.gf, ptr %i.go, align 4, !tbaa !4
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !4  ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i32 %i.gq, ptr %i.gr, align 16, !tbaa !4
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !4  ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.gy = load <2 x i32>, ptr %i.gv, align 8, !tbaa !4
  store <2 x i32> %i.gy, ptr %i.gx, align 4, !tbaa !4
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ha = load <2 x i32>, ptr %i.gw, align 4, !tbaa !4
  store <2 x i32> %i.ha, ptr %i.gz, align 4, !tbaa !4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store i32 %i.gq, ptr %i.hb, align 16, !tbaa !4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  store i32 %i.gt, ptr %i.hc, align 4, !tbaa !4
  %i.hd = load i32, ptr %0, align 4, !tbaa !4     ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i32 %i.hd, ptr %i.he, align 8, !tbaa !4
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !4  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.hl = load <2 x i32>, ptr %i.hi, align 16, !tbaa !4
  store <2 x i32> %i.hl, ptr %i.hk, align 4, !tbaa !4
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.hn = load <2 x i32>, ptr %i.hj, align 4, !tbaa !4
  store <2 x i32> %i.hn, ptr %i.hm, align 4, !tbaa !4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i32 %i.hd, ptr %i.ho, align 8, !tbaa !4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 380
  store i32 %i.hg, ptr %i.hp, align 4, !tbaa !4
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 384) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @mbedtls_des3_set2key_dec(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
des3_set2key.exit:
  %i.a = alloca [96 x i32], align 16              ; 84 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.a, ptr noundef readonly %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @mbedtls_des_setkey(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.e = load i32, ptr %i.d, align 8, !tbaa !4    ; 2 uses
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.k = load <2 x i32>, ptr %i.i, align 4, !tbaa !4
  store <2 x i32> %i.k, ptr %i.j, align 16, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.m = load <2 x i32>, ptr %i.a, align 16, !tbaa !4
  store <2 x i32> %i.m, ptr %i.l, align 16, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 %i.e, ptr %i.n, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 %i.g, ptr %i.o, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.q = load i32, ptr %i.p, align 16, !tbaa !4   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.q, ptr %i.r, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.t, ptr %i.u, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.y = load <2 x i32>, ptr %i.v, align 4, !tbaa !4
  store <2 x i32> %i.y, ptr %i.x, align 8, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.aa = load <2 x i32>, ptr %i.w, align 8, !tbaa !4
  store <2 x i32> %i.aa, ptr %i.z, align 8, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 %i.q, ptr %i.ab, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 %i.t, ptr %i.ac, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !4  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.am = load <2 x i32>, ptr %i.aj, align 4, !tbaa !4
  store <2 x i32> %i.am, ptr %i.al, align 16, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.ao = load <2 x i32>, ptr %i.ak, align 16, !tbaa !4
  store <2 x i32> %i.ao, ptr %i.an, align 16, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.ae, ptr %i.ap, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.ah, ptr %i.aq, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.as = load i32, ptr %i.ar, align 16, !tbaa !4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.ba = load <2 x i32>, ptr %i.ax, align 4, !tbaa !4
  store <2 x i32> %i.ba, ptr %i.az, align 8, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.bc = load <2 x i32>, ptr %i.ay, align 8, !tbaa !4
  store <2 x i32> %i.bc, ptr %i.bb, align 8, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.as, ptr %i.bd, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.av, ptr %i.be, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !4  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bo = load <2 x i32>, ptr %i.bl, align 4, !tbaa !4
  store <2 x i32> %i.bo, ptr %i.bn, align 16, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.bq = load <2 x i32>, ptr %i.bm, align 16, !tbaa !4
  store <2 x i32> %i.bq, ptr %i.bp, align 16, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 %i.bg, ptr %i.br, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 %i.bj, ptr %i.bs, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bu = load i32, ptr %i.bt, align 16, !tbaa !4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.cc = load <2 x i32>, ptr %i.bz, align 4, !tbaa !4
  store <2 x i32> %i.cc, ptr %i.cb, align 8, !tbaa !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.ce = load <2 x i32>, ptr %i.ca, align 8, !tbaa !4
  store <2 x i32> %i.ce, ptr %i.cd, align 8, !tbaa !4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %i.bu, ptr %i.cf, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 %i.bx, ptr %i.cg, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !4  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.cq = load <2 x i32>, ptr %i.cn, align 4, !tbaa !4
  store <2 x i32> %i.cq, ptr %i.cp, align 16, !tbaa !4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.cs = load <2 x i32>, ptr %i.co, align 16, !tbaa !4
  store <2 x i32> %i.cs, ptr %i.cr, align 16, !tbaa !4
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %i.ci, ptr %i.ct, align 4, !tbaa !4
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 %i.cl, ptr %i.cu, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cw = load i32, ptr %i.cv, align 16, !tbaa !4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.de = load <2 x i32>, ptr %i.db, align 4, !tbaa !4
  store <2 x i32> %i.de, ptr %i.dd, align 8, !tbaa !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.dg = load <2 x i32>, ptr %i.dc, align 8, !tbaa !4
  store <2 x i32> %i.dg, ptr %i.df, align 8, !tbaa !4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %i.cw, ptr %i.dh, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %i.cz, ptr %i.di, align 4, !tbaa !4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !4  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !4
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ds = load <2 x i32>, ptr %i.dp, align 4, !tbaa !4
  store <2 x i32> %i.ds, ptr %i.dr, align 16, !tbaa !4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.du = load <2 x i32>, ptr %i.dq, align 16, !tbaa !4
  store <2 x i32> %i.du, ptr %i.dt, align 16, !tbaa !4
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 %i.dk, ptr %i.dv, align 4, !tbaa !4
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 %i.dn, ptr %i.dw, align 4, !tbaa !4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.dy = load i32, ptr %i.dx, align 16, !tbaa !4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !4
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.eg = load <2 x i32>, ptr %i.ed, align 4, !tbaa !4
  store <2 x i32> %i.eg, ptr %i.ef, align 8, !tbaa !4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.ei = load <2 x i32>, ptr %i.ee, align 8, !tbaa !4
  store <2 x i32> %i.ei, ptr %i.eh, align 8, !tbaa !4
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 %i.dy, ptr %i.ej, align 4, !tbaa !4
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 332
  store i32 %i.eb, ptr %i.ek, align 4, !tbaa !4
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.em = load i32, ptr %i.el, align 8, !tbaa !4  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.em, ptr %i.en, align 4, !tbaa !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !4  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !4
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.eu = load <2 x i32>, ptr %i.er, align 4, !tbaa !4
  store <2 x i32> %i.eu, ptr %i.et, align 16, !tbaa !4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.ew = load <2 x i32>, ptr %i.es, align 16, !tbaa !4
  store <2 x i32> %i.ew, ptr %i.ev, align 16, !tbaa !4
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 %i.em, ptr %i.ex, align 4, !tbaa !4
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 340
  store i32 %i.ep, ptr %i.ey, align 4, !tbaa !4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fa = load i32, ptr %i.ez, align 16, !tbaa !4 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !4
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.fi = load <2 x i32>, ptr %i.ff, align 4, !tbaa !4
  store <2 x i32> %i.fi, ptr %i.fh, align 8, !tbaa !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.fk = load <2 x i32>, ptr %i.fg, align 8, !tbaa !4
  store <2 x i32> %i.fk, ptr %i.fj, align 8, !tbaa !4
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 %i.fa, ptr %i.fl, align 4, !tbaa !4
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 %i.fd, ptr %i.fm, align 4, !tbaa !4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !4  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4  ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !4
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.fw = load <2 x i32>, ptr %i.ft, align 4, !tbaa !4
  store <2 x i32> %i.fw, ptr %i.fv, align 16, !tbaa !4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.fy = load <2 x i32>, ptr %i.fu, align 16, !tbaa !4
  store <2 x i32> %i.fy, ptr %i.fx, align 16, !tbaa !4
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 %i.fo, ptr %i.fz, align 4, !tbaa !4
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 %i.fr, ptr %i.ga, align 4, !tbaa !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gc = load i32, ptr %i.gb, align 16, !tbaa !4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !4  ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !4
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.gk = load <2 x i32>, ptr %i.gh, align 4, !tbaa !4
  store <2 x i32> %i.gk, ptr %i.gj, align 8, !tbaa !4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.gm = load <2 x i32>, ptr %i.gi, align 8, !tbaa !4
  store <2 x i32> %i.gm, ptr %i.gl, align 8, !tbaa !4
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 %i.gc, ptr %i.gn, align 4, !tbaa !4
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 364
  store i32 %i.gf, ptr %i.go, align 4, !tbaa !4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !4  ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !4  ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !4
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.gy = load <2 x i32>, ptr %i.gv, align 4, !tbaa !4
  store <2 x i32> %i.gy, ptr %i.gx, align 16, !tbaa !4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.ha = load <2 x i32>, ptr %i.gw, align 16, !tbaa !4
  store <2 x i32> %i.ha, ptr %i.gz, align 16, !tbaa !4
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i32 %i.gq, ptr %i.hb, align 4, !tbaa !4
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i32 %i.gt, ptr %i.hc, align 4, !tbaa !4
  %i.hd = load i32, ptr %i.a, align 16, !tbaa !4  ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !4  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !4
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.hl = load <2 x i32>, ptr %i.hi, align 4, !tbaa !4
  store <2 x i32> %i.hl, ptr %i.hk, align 8, !tbaa !4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.hn = load <2 x i32>, ptr %i.hj, align 8, !tbaa !4
  store <2 x i32> %i.hn, ptr %i.hm, align 8, !tbaa !4
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %i.hd, ptr %i.ho, align 4, !tbaa !4
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 %i.hg, ptr %i.hp, align 4, !tbaa !4
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 384) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @mbedtls_des3_set3key_enc(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
des3_set3key.exit:
  %i.a = alloca [96 x i32], align 16              ; 52 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  tail call void @mbedtls_des_setkey(ptr noundef %0, ptr noundef readonly %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @mbedtls_des_setkey(ptr noundef nonnull %i.d, ptr noundef nonnull readonly %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.g = load <2 x i32>, ptr %i.f, align 4, !tbaa !4
  store <2 x i32> %i.g, ptr %i.a, align 16, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load <2 x i32>, ptr %i.h, align 8, !tbaa !4
  store <2 x i32> %i.j, ptr %i.i, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.m = load <2 x i32>, ptr %i.k, align 4, !tbaa !4
  store <2 x i32> %i.m, ptr %i.l, align 16, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load <2 x i32>, ptr %i.n, align 4, !tbaa !4
  store <2 x i32> %i.p, ptr %i.o, align 8, !tbaa !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load <2 x i32>, ptr %i.q, align 16, !tbaa !4
  store <2 x i32> %i.s, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.v = load <2 x i32>, ptr %i.t, align 4, !tbaa !4
  store <2 x i32> %i.v, ptr %i.u, align 8, !tbaa !4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load <2 x i32>, ptr %i.w, align 4, !tbaa !4
  store <2 x i32> %i.y, ptr %i.x, align 16, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load <2 x i32>, ptr %i.z, align 8, !tbaa !4
  store <2 x i32> %i.ab, ptr %i.aa, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.ae = load <2 x i32>, ptr %i.ac, align 4, !tbaa !4
  store <2 x i32> %i.ae, ptr %i.ad, align 16, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ah = load <2 x i32>, ptr %i.af, align 4, !tbaa !4
  store <2 x i32> %i.ah, ptr %i.ag, align 8, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ak = load <2 x i32>, ptr %i.ai, align 16, !tbaa !4
  store <2 x i32> %i.ak, ptr %i.aj, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.an = load <2 x i32>, ptr %i.al, align 4, !tbaa !4
  store <2 x i32> %i.an, ptr %i.am, align 8, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aq = load <2 x i32>, ptr %i.ao, align 4, !tbaa !4
  store <2 x i32> %i.aq, ptr %i.ap, align 16, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = load <2 x i32>, ptr %i.ar, align 8, !tbaa !4
  store <2 x i32> %i.at, ptr %i.as, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.aw = load <2 x i32>, ptr %i.au, align 4, !tbaa !4
  store <2 x i32> %i.aw, ptr %i.av, align 16, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.az = load <2 x i32>, ptr %i.ax, align 4, !tbaa !4
  store <2 x i32> %i.az, ptr %i.ay, align 8, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bc = load <2 x i32>, ptr %i.ba, align 16, !tbaa !4
  store <2 x i32> %i.bc, ptr %i.bb, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.bf = load <2 x i32>, ptr %i.bd, align 4, !tbaa !4
  store <2 x i32> %i.bf, ptr %i.be, align 8, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bi = load <2 x i32>, ptr %i.bg, align 4, !tbaa !4
  store <2 x i32> %i.bi, ptr %i.bh, align 16, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bl = load <2 x i32>, ptr %i.bj, align 8, !tbaa !4
  store <2 x i32> %i.bl, ptr %i.bk, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.bo = load <2 x i32>, ptr %i.bm, align 4, !tbaa !4
  store <2 x i32> %i.bo, ptr %i.bn, align 16, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.br = load <2 x i32>, ptr %i.bp, align 4, !tbaa !4
  store <2 x i32> %i.br, ptr %i.bq, align 8, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bu = load <2 x i32>, ptr %i.bs, align 16, !tbaa !4
  store <2 x i32> %i.bu, ptr %i.bt, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.bx = load <2 x i32>, ptr %i.bv, align 4, !tbaa !4
  store <2 x i32> %i.bx, ptr %i.bw, align 8, !tbaa !4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ca = load <2 x i32>, ptr %i.by, align 4, !tbaa !4
  store <2 x i32> %i.ca, ptr %i.bz, align 16, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cd = load <2 x i32>, ptr %i.cb, align 8, !tbaa !4
  store <2 x i32> %i.cd, ptr %i.cc, align 4, !tbaa !4
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.cg = load <2 x i32>, ptr %i.ce, align 4, !tbaa !4
  store <2 x i32> %i.cg, ptr %i.cf, align 16, !tbaa !4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.cj = load <2 x i32>, ptr %i.ch, align 4, !tbaa !4
  store <2 x i32> %i.cj, ptr %i.ci, align 8, !tbaa !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cm = load <2 x i32>, ptr %i.ck, align 16, !tbaa !4
  store <2 x i32> %i.cm, ptr %i.cl, align 4, !tbaa !4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.cp = load <2 x i32>, ptr %i.cn, align 4, !tbaa !4
  store <2 x i32> %i.cp, ptr %i.co, align 8, !tbaa !4
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cs = load <2 x i32>, ptr %i.cq, align 4, !tbaa !4
  store <2 x i32> %i.cs, ptr %i.cr, align 16, !tbaa !4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cv = load <2 x i32>, ptr %i.ct, align 8, !tbaa !4
  store <2 x i32> %i.cv, ptr %i.cu, align 4, !tbaa !4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.cy = load <2 x i32>, ptr %i.cw, align 4, !tbaa !4
  store <2 x i32> %i.cy, ptr %i.cx, align 16, !tbaa !4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.db = load <2 x i32>, ptr %i.cz, align 4, !tbaa !4
  store <2 x i32> %i.db, ptr %i.da, align 8, !tbaa !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.de = load <2 x i32>, ptr %i.dc, align 16, !tbaa !4
  store <2 x i32> %i.de, ptr %i.dd, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.dh = load <2 x i32>, ptr %i.df, align 4, !tbaa !4
  store <2 x i32> %i.dh, ptr %i.dg, align 8, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.dk = load <2 x i32>, ptr %i.di, align 4, !tbaa !4
  store <2 x i32> %i.dk, ptr %i.dj, align 16, !tbaa !4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dn = load <2 x i32>, ptr %i.dl, align 8, !tbaa !4
  store <2 x i32> %i.dn, ptr %i.dm, align 4, !tbaa !4
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.dq = load <2 x i32>, ptr %i.do, align 4, !tbaa !4
  store <2 x i32> %i.dq, ptr %i.dp, align 16, !tbaa !4
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.dt = load <2 x i32>, ptr %i.dr, align 4, !tbaa !4
  store <2 x i32> %i.dt, ptr %i.ds, align 8, !tbaa !4
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dw = load <2 x i32>, ptr %i.du, align 16, !tbaa !4
  store <2 x i32> %i.dw, ptr %i.dv, align 4, !tbaa !4
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.dz = load <2 x i32>, ptr %i.dx, align 4, !tbaa !4
  store <2 x i32> %i.dz, ptr %i.dy, align 8, !tbaa !4
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ec = load <2 x i32>, ptr %i.ea, align 4, !tbaa !4
  store <2 x i32> %i.ec, ptr %i.eb, align 16, !tbaa !4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ef = load <2 x i32>, ptr %i.ed, align 8, !tbaa !4
  store <2 x i32> %i.ef, ptr %i.ee, align 4, !tbaa !4
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.ei = load <2 x i32>, ptr %i.eg, align 4, !tbaa !4
  store <2 x i32> %i.ei, ptr %i.eh, align 16, !tbaa !4
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.el = load <2 x i32>, ptr %i.ej, align 4, !tbaa !4
  store <2 x i32> %i.el, ptr %i.ek, align 8, !tbaa !4
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.eo = load <2 x i32>, ptr %i.em, align 16, !tbaa !4
  store <2 x i32> %i.eo, ptr %i.en, align 4, !tbaa !4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.eq = load <2 x i32>, ptr %0, align 4, !tbaa !4
  store <2 x i32> %i.eq, ptr %i.ep, align 8, !tbaa !4
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 384) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @mbedtls_des3_set3key_dec(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
des3_set3key.exit:
  %i.a = alloca [96 x i32], align 16              ; 53 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.a, ptr noundef readonly %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @mbedtls_des_setkey(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.d, ptr noundef nonnull readonly %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.g = load <2 x i32>, ptr %i.f, align 8, !tbaa !4
  store <2 x i32> %i.g, ptr %0, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.j = load <2 x i32>, ptr %i.h, align 4, !tbaa !4
  store <2 x i32> %i.j, ptr %i.i, align 16, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.m = load <2 x i32>, ptr %i.k, align 8, !tbaa !4
  store <2 x i32> %i.m, ptr %i.l, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load <2 x i32>, ptr %i.n, align 16, !tbaa !4
  store <2 x i32> %i.p, ptr %i.o, align 4, !tbaa !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.s = load <2 x i32>, ptr %i.q, align 4, !tbaa !4
  store <2 x i32> %i.s, ptr %i.r, align 8, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.v = load <2 x i32>, ptr %i.t, align 16, !tbaa !4
  store <2 x i32> %i.v, ptr %i.u, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load <2 x i32>, ptr %i.w, align 8, !tbaa !4
  store <2 x i32> %i.y, ptr %i.x, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.ab = load <2 x i32>, ptr %i.z, align 4, !tbaa !4
  store <2 x i32> %i.ab, ptr %i.aa, align 16, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ae = load <2 x i32>, ptr %i.ac, align 8, !tbaa !4
  store <2 x i32> %i.ae, ptr %i.ad, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load <2 x i32>, ptr %i.af, align 16, !tbaa !4
  store <2 x i32> %i.ah, ptr %i.ag, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.ak = load <2 x i32>, ptr %i.ai, align 4, !tbaa !4
  store <2 x i32> %i.ak, ptr %i.aj, align 8, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.an = load <2 x i32>, ptr %i.al, align 16, !tbaa !4
  store <2 x i32> %i.an, ptr %i.am, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load <2 x i32>, ptr %i.ao, align 8, !tbaa !4
  store <2 x i32> %i.aq, ptr %i.ap, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.at = load <2 x i32>, ptr %i.ar, align 4, !tbaa !4
  store <2 x i32> %i.at, ptr %i.as, align 16, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aw = load <2 x i32>, ptr %i.au, align 8, !tbaa !4
  store <2 x i32> %i.aw, ptr %i.av, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load <2 x i32>, ptr %i.ax, align 16, !tbaa !4
  store <2 x i32> %i.az, ptr %i.ay, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.bc = load <2 x i32>, ptr %i.ba, align 4, !tbaa !4
  store <2 x i32> %i.bc, ptr %i.bb, align 8, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bf = load <2 x i32>, ptr %i.bd, align 16, !tbaa !4
  store <2 x i32> %i.bf, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = load <2 x i32>, ptr %i.bg, align 8, !tbaa !4
  store <2 x i32> %i.bi, ptr %i.bh, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.bl = load <2 x i32>, ptr %i.bj, align 4, !tbaa !4
  store <2 x i32> %i.bl, ptr %i.bk, align 16, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bo = load <2 x i32>, ptr %i.bm, align 8, !tbaa !4
  store <2 x i32> %i.bo, ptr %i.bn, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load <2 x i32>, ptr %i.bp, align 16, !tbaa !4
  store <2 x i32> %i.br, ptr %i.bq, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.bu = load <2 x i32>, ptr %i.bs, align 4, !tbaa !4
  store <2 x i32> %i.bu, ptr %i.bt, align 8, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bx = load <2 x i32>, ptr %i.bv, align 16, !tbaa !4
  store <2 x i32> %i.bx, ptr %i.bw, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ca = load <2 x i32>, ptr %i.by, align 8, !tbaa !4
  store <2 x i32> %i.ca, ptr %i.bz, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.cd = load <2 x i32>, ptr %i.cb, align 4, !tbaa !4
  store <2 x i32> %i.cd, ptr %i.cc, align 16, !tbaa !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cg = load <2 x i32>, ptr %i.ce, align 8, !tbaa !4
  store <2 x i32> %i.cg, ptr %i.cf, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cj = load <2 x i32>, ptr %i.ch, align 16, !tbaa !4
  store <2 x i32> %i.cj, ptr %i.ci, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.cm = load <2 x i32>, ptr %i.ck, align 4, !tbaa !4
  store <2 x i32> %i.cm, ptr %i.cl, align 8, !tbaa !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cp = load <2 x i32>, ptr %i.cn, align 16, !tbaa !4
  store <2 x i32> %i.cp, ptr %i.co, align 4, !tbaa !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cs = load <2 x i32>, ptr %i.cq, align 8, !tbaa !4
  store <2 x i32> %i.cs, ptr %i.cr, align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.cv = load <2 x i32>, ptr %i.ct, align 4, !tbaa !4
  store <2 x i32> %i.cv, ptr %i.cu, align 16, !tbaa !4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cy = load <2 x i32>, ptr %i.cw, align 8, !tbaa !4
  store <2 x i32> %i.cy, ptr %i.cx, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.db = load <2 x i32>, ptr %i.cz, align 16, !tbaa !4
  store <2 x i32> %i.db, ptr %i.da, align 4, !tbaa !4
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.de = load <2 x i32>, ptr %i.dc, align 4, !tbaa !4
  store <2 x i32> %i.de, ptr %i.dd, align 8, !tbaa !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dh = load <2 x i32>, ptr %i.df, align 16, !tbaa !4
  store <2 x i32> %i.dh, ptr %i.dg, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dk = load <2 x i32>, ptr %i.di, align 8, !tbaa !4
  store <2 x i32> %i.dk, ptr %i.dj, align 4, !tbaa !4
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.dn = load <2 x i32>, ptr %i.dl, align 4, !tbaa !4
  store <2 x i32> %i.dn, ptr %i.dm, align 16, !tbaa !4
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dq = load <2 x i32>, ptr %i.do, align 8, !tbaa !4
  store <2 x i32> %i.dq, ptr %i.dp, align 4, !tbaa !4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dt = load <2 x i32>, ptr %i.dr, align 16, !tbaa !4
  store <2 x i32> %i.dt, ptr %i.ds, align 4, !tbaa !4
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.dw = load <2 x i32>, ptr %i.du, align 4, !tbaa !4
  store <2 x i32> %i.dw, ptr %i.dv, align 8, !tbaa !4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dz = load <2 x i32>, ptr %i.dx, align 16, !tbaa !4
  store <2 x i32> %i.dz, ptr %i.dy, align 4, !tbaa !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ec = load <2 x i32>, ptr %i.ea, align 8, !tbaa !4
  store <2 x i32> %i.ec, ptr %i.eb, align 4, !tbaa !4
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.ef = load <2 x i32>, ptr %i.ed, align 4, !tbaa !4
  store <2 x i32> %i.ef, ptr %i.ee, align 16, !tbaa !4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ei = load <2 x i32>, ptr %i.eg, align 8, !tbaa !4
  store <2 x i32> %i.ei, ptr %i.eh, align 4, !tbaa !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.el = load <2 x i32>, ptr %i.ej, align 16, !tbaa !4
  store <2 x i32> %i.el, ptr %i.ek, align 4, !tbaa !4
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.eo = load <2 x i32>, ptr %i.em, align 4, !tbaa !4
  store <2 x i32> %i.eo, ptr %i.en, align 8, !tbaa !4
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.eq = load <2 x i32>, ptr %i.a, align 16, !tbaa !4
  store <2 x i32> %i.eq, ptr %i.ep, align 4, !tbaa !4
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 384) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @mbedtls_des_crypt_ecb(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %.0.copyload.i110 = load i32, ptr %1, align 1
  %i.a = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i110) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.copyload.i = load i32, ptr %i.b, align 1
  %i.c = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.d = lshr i32 %i.a, 4
  %i.e = xor i32 %i.d, %i.c
  %i.f = and i32 %i.e, 252645135                  ; 2 uses
  %i.g = xor i32 %i.f, %i.c                       ; 2 uses
  %i.h = shl nuw i32 %i.f, 4
  %i.i = xor i32 %i.h, %i.a                       ; 2 uses
  %i.j = lshr i32 %i.i, 16
  %.masked = and i32 %i.g, 65535
  %i.k = xor i32 %i.j, %.masked                   ; 2 uses
  %i.l = xor i32 %i.k, %i.g                       ; 2 uses
  %i.m = shl nuw i32 %i.k, 16
  %i.n = xor i32 %i.m, %i.i                       ; 2 uses
  %i.o = lshr i32 %i.l, 2
  %i.p = xor i32 %i.o, %i.n
  %i.q = and i32 %i.p, 858993459                  ; 2 uses
  %i.r = xor i32 %i.q, %i.n                       ; 2 uses
  %i.s = shl nuw i32 %i.q, 2
  %i.t = xor i32 %i.s, %i.l                       ; 2 uses
  %i.u = lshr i32 %i.t, 8
  %i.v = xor i32 %i.u, %i.r
  %i.w = and i32 %i.v, 16711935                   ; 2 uses
  %i.x = xor i32 %i.w, %i.r                       ; 2 uses
  %i.y = shl nuw i32 %i.w, 8
  %i.z = xor i32 %i.y, %i.t                       ; 2 uses
  %i.aa = tail call i32 @llvm.fshl.i32(i32 %i.z, i32 %i.z, i32 1) ; 2 uses
  %i.ab = xor i32 %i.aa, %i.x
  %i.ac = and i32 %i.ab, -1431655766              ; 2 uses
  %i.ad = xor i32 %i.ac, %i.aa
  %i.ae = xor i32 %i.ac, %i.x                     ; 2 uses
  %i.af = tail call i32 @llvm.fshl.i32(i32 %i.ae, i32 %i.ae, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.0114 = phi ptr [ %0, %bb.a ], [ %i.dd, %bb.b ] ; 5 uses
  %.0106113 = phi i32 [ %i.ad, %bb.a ], [ %i.eh, %bb.b ] ; 4 uses
  %.0107112 = phi i32 [ %i.af, %bb.a ], [ %i.cg, %bb.b ]
  %.0108111 = phi i32 [ 0, %bb.a ], [ %i.ei, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0114, i64 4
  %i.ah = load i32, ptr %.0114, align 4, !tbaa !4
  %i.ai = xor i32 %i.ah, %.0106113                ; 4 uses
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @SB8, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = lshr i32 %i.ai, 8
  %i.ao = and i32 %i.an, 63
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @SB6, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = lshr i32 %i.ai, 16
  %i.at = and i32 %i.as, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @SB4, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = lshr i32 %i.ai, 24
  %i.ay = and i32 %i.ax, 63
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @SB2, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %.0114, i64 8
  %i.bd = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.be = tail call i32 @llvm.fshl.i32(i32 %.0106113, i32 %.0106113, i32 28)
  %i.bf = xor i32 %i.bd, %i.be                    ; 4 uses
  %i.bg = and i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @SB7, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = lshr i32 %i.bf, 8
  %i.bl = and i32 %i.bk, 63
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @SB5, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = lshr i32 %i.bf, 16
  %i.bq = and i32 %i.bp, 63
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @SB3, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = lshr i32 %i.bf, 24
  %i.bv = and i32 %i.bu, 63
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @SB1, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = xor i32 %i.am, %.0107112
  %i.ca = xor i32 %i.bz, %i.ar
  %i.cb = xor i32 %i.ca, %i.aw
  %i.cc = xor i32 %i.cb, %i.bb
  %i.cd = xor i32 %i.cc, %i.bj
  %i.ce = xor i32 %i.cd, %i.bo
  %i.cf = xor i32 %i.ce, %i.bt
  %i.cg = xor i32 %i.cf, %i.by                    ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0114, i64 12
  %i.ci = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.cj = xor i32 %i.cg, %i.ci                    ; 4 uses
  %i.ck = and i32 %i.cj, 63
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @SB8, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = lshr i32 %i.cj, 8
  %i.cp = and i32 %i.co, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @SB6, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = lshr i32 %i.cj, 16
  %i.cu = and i32 %i.ct, 63
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @SB4, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.cy = lshr i32 %i.cj, 24
  %i.cz = and i32 %i.cy, 63
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @SB2, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4
  %i.dd = getelementptr inbounds nuw i8, ptr %.0114, i64 16
  %i.de = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.df = tail call i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 28)
  %i.dg = xor i32 %i.de, %i.df                    ; 4 uses
  %i.dh = and i32 %i.dg, 63
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr @SB7, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = lshr i32 %i.dg, 8
  %i.dm = and i32 %i.dl, 63
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @SB5, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4
  %i.dq = lshr i32 %i.dg, 16
  %i.dr = and i32 %i.dq, 63
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr @SB3, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4
  %i.dv = lshr i32 %i.dg, 24
  %i.dw = and i32 %i.dv, 63
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @SB1, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4
  %i.ea = xor i32 %i.cn, %i.cs
  %i.eb = xor i32 %i.ea, %i.cx
  %i.ec = xor i32 %i.eb, %i.dc
  %i.ed = xor i32 %i.ec, %i.dk
  %i.ee = xor i32 %i.ed, %i.dp
  %i.ef = xor i32 %i.ee, %i.du
  %i.eg = xor i32 %i.ef, %i.dz
  %i.eh = xor i32 %i.eg, %.0106113                ; 3 uses
  %i.ei = add nuw nsw i32 %.0108111, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ei, 8
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !11

bb.c:                                             ; preds = %bb.b
  %i.ej = tail call i32 @llvm.fshl.i32(i32 %i.eh, i32 %i.eh, i32 31) ; 2 uses
  %i.ek = xor i32 %i.ej, %i.cg
  %i.el = and i32 %i.ek, -1431655766              ; 2 uses
  %i.em = xor i32 %i.el, %i.ej                    ; 2 uses
  %i.en = xor i32 %i.el, %i.cg                    ; 2 uses
  %i.eo = tail call i32 @llvm.fshl.i32(i32 %i.en, i32 %i.en, i32 31) ; 2 uses
  %i.ep = lshr i32 %i.eo, 8
  %i.eq = xor i32 %i.ep, %i.em
  %i.er = and i32 %i.eq, 16711935                 ; 2 uses
  %i.es = xor i32 %i.er, %i.em                    ; 2 uses
  %i.et = shl nuw i32 %i.er, 8
  %i.eu = xor i32 %i.et, %i.eo                    ; 2 uses
  %i.ev = lshr i32 %i.eu, 2
  %i.ew = xor i32 %i.ev, %i.es
  %i.ex = and i32 %i.ew, 858993459                ; 2 uses
  %i.ey = xor i32 %i.ex, %i.es                    ; 2 uses
  %i.ez = shl nuw i32 %i.ex, 2
  %i.fa = xor i32 %i.ez, %i.eu                    ; 2 uses
  %i.fb = lshr i32 %i.ey, 16
  %.masked109 = and i32 %i.fa, 65535
  %i.fc = xor i32 %.masked109, %i.fb              ; 2 uses
  %i.fd = xor i32 %i.fc, %i.fa                    ; 2 uses
  %i.fe = shl nuw i32 %i.fc, 16
  %i.ff = xor i32 %i.fe, %i.ey                    ; 2 uses
  %i.fg = lshr i32 %i.ff, 4
  %i.fh = xor i32 %i.fg, %i.fd
  %i.fi = and i32 %i.fh, 252645135                ; 2 uses
  %i.fj = xor i32 %i.fi, %i.fd
  %i.fk = shl nuw i32 %i.fi, 4
  %i.fl = xor i32 %i.fk, %i.ff
  %i.fm = tail call i32 @llvm.bswap.i32(i32 %i.fl)
  store i32 %i.fm, ptr %2, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fo = tail call i32 @llvm.bswap.i32(i32 %i.fj)
  store i32 %i.fo, ptr %i.fn, align 1
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -50, 1) i32 @mbedtls_des_crypt_cbc(ptr noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr noundef captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef captures(none) %5) local_unnamed_addr #7 {
bb.a:
  %i.a = and i64 %2, 7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 1
  %.not3960 = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %i.b, label %.preheader47, label %.preheader49

.preheader49:                                     ; preds = %bb.b
  br i1 %.not3960, label %.loopexit, label %.lr.ph

.preheader47:                                     ; preds = %bb.b
  br i1 %.not3960, label %.loopexit, label %.preheader46.preheader

.preheader46.preheader:                           ; preds = %.preheader47
  %.0.copyload.i.pre = load i64, ptr %3, align 1
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.preheader, %.preheader46
  %.0.copyload.i = phi i64 [ %i.e, %.preheader46 ], [ %.0.copyload.i.pre, %.preheader46.preheader ]
  %.03163 = phi ptr [ %i.g, %.preheader46 ], [ %5, %.preheader46.preheader ] ; 5 uses
  %.03262 = phi ptr [ %i.f, %.preheader46 ], [ %4, %.preheader46.preheader ] ; 2 uses
  %.03461 = phi i64 [ %i.h, %.preheader46 ], [ %2, %.preheader46.preheader ]
  %.0.copyload.i43 = load i64, ptr %.03262, align 1
  %i.c = xor i64 %.0.copyload.i, %.0.copyload.i43
  store i64 %i.c, ptr %.03163, align 1
  %i.d = tail call i32 @mbedtls_des_crypt_ecb(ptr noundef %0, ptr noundef nonnull %.03163, ptr noundef nonnull %.03163) ; 0 uses
  %i.e = load i64, ptr %.03163, align 1           ; 2 uses
  store i64 %i.e, ptr %3, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %.03262, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.03163, i64 8
  %i.h = add i64 %.03461, -8                      ; 2 uses
  %.not39 = icmp eq i64 %i.h, 0
  br i1 %.not39, label %.loopexit, label %.preheader46, !llvm.loop !12

.lr.ph:                                           ; preds = %.preheader49, %.lr.ph
  %.156 = phi ptr [ %i.l, %.lr.ph ], [ %5, %.preheader49 ] ; 4 uses
  %.13355 = phi ptr [ %i.k, %.lr.ph ], [ %4, %.preheader49 ] ; 3 uses
  %.13554 = phi i64 [ %i.m, %.lr.ph ], [ %2, %.preheader49 ]
  %.sroa.0.0.copyload = load i64, ptr %.13355, align 1
  %i.i = tail call i32 @mbedtls_des_crypt_ecb(ptr noundef %0, ptr noundef nonnull %.13355, ptr noundef %.156) ; 0 uses
  %.0.copyload.i45 = load i64, ptr %.156, align 1
  %.0.copyload.i44 = load i64, ptr %3, align 1
  %i.j = xor i64 %.0.copyload.i44, %.0.copyload.i45
  store i64 %i.j, ptr %.156, align 1
  store i64 %.sroa.0.0.copyload, ptr %3, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.13355, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.156, i64 8
  %i.m = add i64 %.13554, -8                      ; 2 uses
  %.not38 = icmp eq i64 %i.m, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph, !llvm.loop !13

.loopexit:                                        ; preds = %.lr.ph, %.preheader46, %.preheader49, %.preheader47, %bb.a
  %.0 = phi i32 [ -50, %bb.a ], [ 0, %.preheader47 ], [ 0, %.preheader49 ], [ 0, %.preheader46 ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @mbedtls_des3_crypt_ecb(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %.0.copyload.i180 = load i32, ptr %1, align 1
  %i.a = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i180) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0.copyload.i = load i32, ptr %i.b, align 1
  %i.c = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.d = lshr i32 %i.a, 4
  %i.e = xor i32 %i.d, %i.c
  %i.f = and i32 %i.e, 252645135                  ; 2 uses
  %i.g = xor i32 %i.f, %i.c                       ; 2 uses
  %i.h = shl nuw i32 %i.f, 4
  %i.i = xor i32 %i.h, %i.a                       ; 2 uses
  %i.j = lshr i32 %i.i, 16
  %.masked = and i32 %i.g, 65535
  %i.k = xor i32 %i.j, %.masked                   ; 2 uses
  %i.l = xor i32 %i.k, %i.g                       ; 2 uses
  %i.m = shl nuw i32 %i.k, 16
  %i.n = xor i32 %i.m, %i.i                       ; 2 uses
  %i.o = lshr i32 %i.l, 2
  %i.p = xor i32 %i.o, %i.n
  %i.q = and i32 %i.p, 858993459                  ; 2 uses
  %i.r = xor i32 %i.q, %i.n                       ; 2 uses
  %i.s = shl nuw i32 %i.q, 2
  %i.t = xor i32 %i.s, %i.l                       ; 2 uses
  %i.u = lshr i32 %i.t, 8
  %i.v = xor i32 %i.u, %i.r
  %i.w = and i32 %i.v, 16711935                   ; 2 uses
  %i.x = xor i32 %i.w, %i.r                       ; 2 uses
  %i.y = shl nuw i32 %i.w, 8
  %i.z = xor i32 %i.y, %i.t                       ; 2 uses
  %i.aa = tail call i32 @llvm.fshl.i32(i32 %i.z, i32 %i.z, i32 1) ; 2 uses
  %i.ab = xor i32 %i.aa, %i.x
  %i.ac = and i32 %i.ab, -1431655766              ; 2 uses
  %i.ad = xor i32 %i.ac, %i.aa
  %i.ae = xor i32 %i.ac, %i.x                     ; 2 uses
  %i.af = tail call i32 @llvm.fshl.i32(i32 %i.ae, i32 %i.ae, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.0185 = phi ptr [ %0, %bb.a ], [ %i.dd, %bb.b ] ; 5 uses
  %.0170184 = phi i32 [ %i.ad, %bb.a ], [ %i.eh, %bb.b ] ; 4 uses
  %.0173183 = phi i32 [ %i.af, %bb.a ], [ %i.cg, %bb.b ]
  %.0176182 = phi i32 [ 0, %bb.a ], [ %i.ei, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0185, i64 4
  %i.ah = load i32, ptr %.0185, align 4, !tbaa !4
  %i.ai = xor i32 %i.ah, %.0170184                ; 4 uses
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @SB8, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = lshr i32 %i.ai, 8
  %i.ao = and i32 %i.an, 63
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @SB6, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = lshr i32 %i.ai, 16
  %i.at = and i32 %i.as, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @SB4, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = lshr i32 %i.ai, 24
  %i.ay = and i32 %i.ax, 63
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @SB2, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %.0185, i64 8
  %i.bd = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.be = tail call i32 @llvm.fshl.i32(i32 %.0170184, i32 %.0170184, i32 28)
  %i.bf = xor i32 %i.bd, %i.be                    ; 4 uses
  %i.bg = and i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @SB7, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = lshr i32 %i.bf, 8
  %i.bl = and i32 %i.bk, 63
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @SB5, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = lshr i32 %i.bf, 16
  %i.bq = and i32 %i.bp, 63
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @SB3, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = lshr i32 %i.bf, 24
  %i.bv = and i32 %i.bu, 63
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @SB1, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = xor i32 %i.am, %.0173183
  %i.ca = xor i32 %i.bz, %i.ar
  %i.cb = xor i32 %i.ca, %i.aw
  %i.cc = xor i32 %i.cb, %i.bb
  %i.cd = xor i32 %i.cc, %i.bj
  %i.ce = xor i32 %i.cd, %i.bo
  %i.cf = xor i32 %i.ce, %i.bt
  %i.cg = xor i32 %i.cf, %i.by                    ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0185, i64 12
  %i.ci = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.cj = xor i32 %i.cg, %i.ci                    ; 4 uses
  %i.ck = and i32 %i.cj, 63
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @SB8, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = lshr i32 %i.cj, 8
  %i.cp = and i32 %i.co, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @SB6, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = lshr i32 %i.cj, 16
  %i.cu = and i32 %i.ct, 63
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @SB4, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.cy = lshr i32 %i.cj, 24
  %i.cz = and i32 %i.cy, 63
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @SB2, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4
  %i.dd = getelementptr inbounds nuw i8, ptr %.0185, i64 16
  %i.de = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.df = tail call i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.cg, i32 28)
  %i.dg = xor i32 %i.de, %i.df                    ; 4 uses
  %i.dh = and i32 %i.dg, 63
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr @SB7, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = lshr i32 %i.dg, 8
  %i.dm = and i32 %i.dl, 63
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @SB5, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4
  %i.dq = lshr i32 %i.dg, 16
  %i.dr = and i32 %i.dq, 63
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr @SB3, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4
  %i.dv = lshr i32 %i.dg, 24
  %i.dw = and i32 %i.dv, 63
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @SB1, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4
  %i.ea = xor i32 %i.cn, %i.cs
  %i.eb = xor i32 %i.ea, %i.cx
  %i.ec = xor i32 %i.eb, %i.dc
  %i.ed = xor i32 %i.ec, %i.dk
  %i.ee = xor i32 %i.ed, %i.dp
  %i.ef = xor i32 %i.ee, %i.du
  %i.eg = xor i32 %i.ef, %i.dz
  %i.eh = xor i32 %i.eg, %.0170184                ; 2 uses
  %i.ei = add nuw nsw i32 %.0176182, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ei, 8
  br i1 %exitcond.not, label %.preheader181.preheader, label %bb.b, !llvm.loop !14

.preheader181.preheader:                          ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %0, i64 128
  br label %.preheader181

.preheader181:                                    ; preds = %.preheader181.preheader, %.preheader181
  %.1189 = phi ptr [ %i.hg, %.preheader181 ], [ %scevgep, %.preheader181.preheader ] ; 5 uses
  %.1171188 = phi i32 [ %i.gj, %.preheader181 ], [ %i.eh, %.preheader181.preheader ]
  %.1174187 = phi i32 [ %i.ik, %.preheader181 ], [ %i.cg, %.preheader181.preheader ] ; 4 uses
  %.1177186 = phi i32 [ %i.il, %.preheader181 ], [ 0, %.preheader181.preheader ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.1189, i64 4
  %i.ek = load i32, ptr %.1189, align 4, !tbaa !4
  %i.el = xor i32 %i.ek, %.1174187                ; 4 uses
  %i.em = and i32 %i.el, 63
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr @SB8, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !4
  %i.eq = lshr i32 %i.el, 8
  %i.er = and i32 %i.eq, 63
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr @SB6, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4
  %i.ev = lshr i32 %i.el, 16
  %i.ew = and i32 %i.ev, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr @SB4, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !4
  %i.fa = lshr i32 %i.el, 24
  %i.fb = and i32 %i.fa, 63
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @SB2, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !4
  %i.ff = getelementptr inbounds nuw i8, ptr %.1189, i64 8
  %i.fg = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.fh = tail call i32 @llvm.fshl.i32(i32 %.1174187, i32 %.1174187, i32 28)
  %i.fi = xor i32 %i.fg, %i.fh                    ; 4 uses
  %i.fj = and i32 %i.fi, 63
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr @SB7, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fn = lshr i32 %i.fi, 8
  %i.fo = and i32 %i.fn, 63
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr @SB5, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4
  %i.fs = lshr i32 %i.fi, 16
  %i.ft = and i32 %i.fs, 63
  %i.fu = zext nneg i32 %i.ft to i64
end_hunk_0
begin_hunk_1_@mbedtls_des3_crypt_ecb:bb.a
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !4
  %i.hb = lshr i32 %i.gm, 24
  %i.hc = and i32 %i.hb, 63
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr @SB2, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !4
  %i.hg = getelementptr inbounds nuw i8, ptr %.1189, i64 16
  %i.hh = load i32, ptr %i.gk, align 4, !tbaa !4
  %i.hi = tail call i32 @llvm.fshl.i32(i32 %i.gj, i32 %i.gj, i32 28)
  %i.hj = xor i32 %i.hh, %i.hi                    ; 4 uses
  %i.hk = and i32 %i.hj, 63
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr @SB7, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !4
  %i.ho = lshr i32 %i.hj, 8
  %i.hp = and i32 %i.ho, 63
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr @SB5, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !4
  %i.ht = lshr i32 %i.hj, 16
  %i.hu = and i32 %i.ht, 63
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr @SB3, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.hy = lshr i32 %i.hj, 24
  %i.hz = and i32 %i.hy, 63
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr @SB1, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !4
  %i.id = xor i32 %i.gq, %i.gv
  %i.ie = xor i32 %i.id, %i.ha
  %i.if = xor i32 %i.ie, %i.hf
  %i.ig = xor i32 %i.if, %i.hn
  %i.ih = xor i32 %i.ig, %i.hs
  %i.ii = xor i32 %i.ih, %i.hx
  %i.ij = xor i32 %i.ii, %i.ic
  %i.ik = xor i32 %i.ij, %.1174187                ; 2 uses
  %i.il = add nuw nsw i32 %.1177186, 1            ; 2 uses
  %exitcond202.not = icmp eq i32 %i.il, 8
  br i1 %exitcond202.not, label %.preheader.preheader, label %.preheader181, !llvm.loop !15

.preheader.preheader:                             ; preds = %.preheader181
  %scevgep201 = getelementptr i8, ptr %0, i64 256
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.2193 = phi ptr [ %i.lj, %.preheader ], [ %scevgep201, %.preheader.preheader ] ; 5 uses
  %.2172192 = phi i32 [ %i.mn, %.preheader ], [ %i.gj, %.preheader.preheader ] ; 4 uses
  %.2175191 = phi i32 [ %i.km, %.preheader ], [ %i.ik, %.preheader.preheader ]
  %.2178190 = phi i32 [ %i.mo, %.preheader ], [ 0, %.preheader.preheader ]
  %i.im = getelementptr inbounds nuw i8, ptr %.2193, i64 4
  %i.in = load i32, ptr %.2193, align 4, !tbaa !4
  %i.io = xor i32 %i.in, %.2172192                ; 4 uses
  %i.ip = and i32 %i.io, 63
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr @SB8, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !4
  %i.it = lshr i32 %i.io, 8
  %i.iu = and i32 %i.it, 63
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr @SB6, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !4
  %i.iy = lshr i32 %i.io, 16
  %i.iz = and i32 %i.iy, 63
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr @SB4, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !4
  %i.jd = lshr i32 %i.io, 24
  %i.je = and i32 %i.jd, 63
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr @SB2, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !4
  %i.ji = getelementptr inbounds nuw i8, ptr %.2193, i64 8
  %i.jj = load i32, ptr %i.im, align 4, !tbaa !4
  %i.jk = tail call i32 @llvm.fshl.i32(i32 %.2172192, i32 %.2172192, i32 28)
  %i.jl = xor i32 %i.jj, %i.jk                    ; 4 uses
  %i.jm = and i32 %i.jl, 63
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr @SB7, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !4
  %i.jq = lshr i32 %i.jl, 8
  %i.jr = and i32 %i.jq, 63
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr @SB5, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !4
  %i.jv = lshr i32 %i.jl, 16
  %i.jw = and i32 %i.jv, 63
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr @SB3, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !4
  %i.ka = lshr i32 %i.jl, 24
  %i.kb = and i32 %i.ka, 63
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr @SB1, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !4
  %i.kf = xor i32 %i.is, %.2175191
  %i.kg = xor i32 %i.kf, %i.ix
  %i.kh = xor i32 %i.kg, %i.jc
  %i.ki = xor i32 %i.kh, %i.jh
  %i.kj = xor i32 %i.ki, %i.jp
  %i.kk = xor i32 %i.kj, %i.ju
  %i.kl = xor i32 %i.kk, %i.jz
  %i.km = xor i32 %i.kl, %i.ke                    ; 6 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.2193, i64 12
  %i.ko = load i32, ptr %i.ji, align 4, !tbaa !4
  %i.kp = xor i32 %i.km, %i.ko                    ; 4 uses
  %i.kq = and i32 %i.kp, 63
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr @SB8, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !4
  %i.ku = lshr i32 %i.kp, 8
  %i.kv = and i32 %i.ku, 63
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr @SB6, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !4
  %i.kz = lshr i32 %i.kp, 16
  %i.la = and i32 %i.kz, 63
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr @SB4, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !4
  %i.le = lshr i32 %i.kp, 24
  %i.lf = and i32 %i.le, 63
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr @SB2, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !4
  %i.lj = getelementptr inbounds nuw i8, ptr %.2193, i64 16
  %i.lk = load i32, ptr %i.kn, align 4, !tbaa !4
  %i.ll = tail call i32 @llvm.fshl.i32(i32 %i.km, i32 %i.km, i32 28)
  %i.lm = xor i32 %i.lk, %i.ll                    ; 4 uses
  %i.ln = and i32 %i.lm, 63
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr @SB7, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !4
  %i.lr = lshr i32 %i.lm, 8
  %i.ls = and i32 %i.lr, 63
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr @SB5, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !4
  %i.lw = lshr i32 %i.lm, 16
  %i.lx = and i32 %i.lw, 63
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr @SB3, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !4
  %i.mb = lshr i32 %i.lm, 24
  %i.mc = and i32 %i.mb, 63
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr @SB1, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !4
  %i.mg = xor i32 %i.kt, %i.ky
  %i.mh = xor i32 %i.mg, %i.ld
  %i.mi = xor i32 %i.mh, %i.li
  %i.mj = xor i32 %i.mi, %i.lq
  %i.mk = xor i32 %i.mj, %i.lv
  %i.ml = xor i32 %i.mk, %i.ma
  %i.mm = xor i32 %i.ml, %i.mf
  %i.mn = xor i32 %i.mm, %.2172192                ; 3 uses
  %i.mo = add nuw nsw i32 %.2178190, 1            ; 2 uses
  %exitcond203.not = icmp eq i32 %i.mo, 8
  br i1 %exitcond203.not, label %bb.c, label %.preheader, !llvm.loop !16

bb.c:                                             ; preds = %.preheader
  %i.mp = tail call i32 @llvm.fshl.i32(i32 %i.mn, i32 %i.mn, i32 31) ; 2 uses
  %i.mq = xor i32 %i.mp, %i.km
  %i.mr = and i32 %i.mq, -1431655766              ; 2 uses
  %i.ms = xor i32 %i.mr, %i.mp                    ; 2 uses
  %i.mt = xor i32 %i.mr, %i.km                    ; 2 uses
  %i.mu = tail call i32 @llvm.fshl.i32(i32 %i.mt, i32 %i.mt, i32 31) ; 2 uses
  %i.mv = lshr i32 %i.mu, 8
  %i.mw = xor i32 %i.mv, %i.ms
  %i.mx = and i32 %i.mw, 16711935                 ; 2 uses
  %i.my = xor i32 %i.mx, %i.ms                    ; 2 uses
  %i.mz = shl nuw i32 %i.mx, 8
  %i.na = xor i32 %i.mz, %i.mu                    ; 2 uses
  %i.nb = lshr i32 %i.na, 2
  %i.nc = xor i32 %i.nb, %i.my
  %i.nd = and i32 %i.nc, 858993459                ; 2 uses
  %i.ne = xor i32 %i.nd, %i.my                    ; 2 uses
  %i.nf = shl nuw i32 %i.nd, 2
  %i.ng = xor i32 %i.nf, %i.na                    ; 2 uses
  %i.nh = lshr i32 %i.ne, 16
  %.masked179 = and i32 %i.ng, 65535
  %i.ni = xor i32 %.masked179, %i.nh              ; 2 uses
  %i.nj = xor i32 %i.ni, %i.ng                    ; 2 uses
  %i.nk = shl nuw i32 %i.ni, 16
  %i.nl = xor i32 %i.nk, %i.ne                    ; 2 uses
  %i.nm = lshr i32 %i.nl, 4
  %i.nn = xor i32 %i.nm, %i.nj
  %i.no = and i32 %i.nn, 252645135                ; 2 uses
  %i.np = xor i32 %i.no, %i.nj
  %i.nq = shl nuw i32 %i.no, 4
  %i.nr = xor i32 %i.nq, %i.nl
  %i.ns = tail call i32 @llvm.bswap.i32(i32 %i.nr)
  store i32 %i.ns, ptr %2, align 1
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.nu = tail call i32 @llvm.bswap.i32(i32 %i.np)
  store i32 %i.nu, ptr %i.nt, align 1
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -50, 1) i32 @mbedtls_des3_crypt_cbc(ptr noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr noundef captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef captures(none) %5) local_unnamed_addr #7 {
bb.a:
  %i.a = and i64 %2, 7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 1
  %.not3960 = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %i.b, label %.preheader47, label %.preheader49

.preheader49:                                     ; preds = %bb.b
  br i1 %.not3960, label %.loopexit, label %.lr.ph

.preheader47:                                     ; preds = %bb.b
  br i1 %.not3960, label %.loopexit, label %.preheader46.preheader

.preheader46.preheader:                           ; preds = %.preheader47
  %.0.copyload.i.pre = load i64, ptr %3, align 1
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.preheader, %.preheader46
  %.0.copyload.i = phi i64 [ %i.e, %.preheader46 ], [ %.0.copyload.i.pre, %.preheader46.preheader ]
  %.03163 = phi ptr [ %i.g, %.preheader46 ], [ %5, %.preheader46.preheader ] ; 5 uses
  %.03262 = phi ptr [ %i.f, %.preheader46 ], [ %4, %.preheader46.preheader ] ; 2 uses
  %.03461 = phi i64 [ %i.h, %.preheader46 ], [ %2, %.preheader46.preheader ]
  %.0.copyload.i43 = load i64, ptr %.03262, align 1
  %i.c = xor i64 %.0.copyload.i, %.0.copyload.i43
  store i64 %i.c, ptr %.03163, align 1
  %i.d = tail call i32 @mbedtls_des3_crypt_ecb(ptr noundef %0, ptr noundef nonnull %.03163, ptr noundef nonnull %.03163) ; 0 uses
  %i.e = load i64, ptr %.03163, align 1           ; 2 uses
  store i64 %i.e, ptr %3, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %.03262, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.03163, i64 8
  %i.h = add i64 %.03461, -8                      ; 2 uses
  %.not39 = icmp eq i64 %i.h, 0
  br i1 %.not39, label %.loopexit, label %.preheader46, !llvm.loop !17

.lr.ph:                                           ; preds = %.preheader49, %.lr.ph
  %.156 = phi ptr [ %i.l, %.lr.ph ], [ %5, %.preheader49 ] ; 4 uses
  %.13355 = phi ptr [ %i.k, %.lr.ph ], [ %4, %.preheader49 ] ; 3 uses
  %.13554 = phi i64 [ %i.m, %.lr.ph ], [ %2, %.preheader49 ]
  %.sroa.0.0.copyload = load i64, ptr %.13355, align 1
  %i.i = tail call i32 @mbedtls_des3_crypt_ecb(ptr noundef %0, ptr noundef nonnull %.13355, ptr noundef %.156) ; 0 uses
  %.0.copyload.i45 = load i64, ptr %.156, align 1
  %.0.copyload.i44 = load i64, ptr %3, align 1
  %i.j = xor i64 %.0.copyload.i44, %.0.copyload.i45
  store i64 %i.j, ptr %.156, align 1
  store i64 %.sroa.0.0.copyload, ptr %3, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.13355, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.156, i64 8
  %i.m = add i64 %.13554, -8                      ; 2 uses
  %.not38 = icmp eq i64 %i.m, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph, %.preheader46, %.preheader49, %.preheader47, %bb.a
  %.0 = phi i32 [ -50, %bb.a ], [ 0, %.preheader47 ], [ 0, %.preheader49 ], [ 0, %.preheader46 ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mbedtls_des_self_test(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [96 x i32], align 16              ; 28 uses
  %i.b = alloca [96 x i32], align 16              ; 29 uses
  %i.c = alloca [96 x i32], align 16              ; 28 uses
  %i.d = alloca [96 x i32], align 16              ; 35 uses
  %i.e = alloca [96 x i32], align 16              ; 28 uses
  %i.f = alloca [96 x i32], align 16              ; 29 uses
  %i.g = alloca [96 x i32], align 16              ; 28 uses
  %i.h = alloca [96 x i32], align 16              ; 35 uses
  %1 = alloca %struct.mbedtls_des_context, align 16 ; 22 uses
  %2 = alloca %struct.mbedtls_des3_context, align 16 ; 219 uses
  %i.i = alloca [8 x i8], align 8                 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %2, i8 0, i64 384, i1 false)
  %.not76 = icmp eq i32 %0, 0                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 336
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.er = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.ev = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  %i.fj = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.fm = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.fo = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.fr = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.ft = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.fv = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.fy = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.ga = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.gf = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.gh = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.gn = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.gs = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.gt = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.gu = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.gw = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.gz = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ha = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.hb = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.hf = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.hg = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.hh = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 368
  br label %.backedge173

.backedge173:                                     ; preds = %.backedge173.backedge, %bb.a
  %.064135 = phi i32 [ 0, %bb.a ], [ %.064135.be, %.backedge173.backedge ] ; 5 uses
  %i.hj = lshr i32 %.064135, 1                    ; 3 uses
  %i.hk = and i32 %.064135, 1                     ; 2 uses
  br i1 %.not76, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.backedge173
  %i.hl = icmp eq i32 %i.hj, 0
  %i.hm = select i1 %i.hl, i32 32, i32 51
  %i.hn = mul nuw nsw i32 %i.hj, 56
  %i.ho = add nuw nsw i32 %i.hn, 56
  %i.hp = icmp eq i32 %i.hk, 0
  %i.hq = select i1 %i.hp, ptr @.str.1, ptr @.str.2
  %i.hr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.hm, i32 noundef %i.ho, ptr noundef nonnull %i.hq) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.backedge173
  store i64 8367815003007840078, ptr %i.i, align 8
  switch i32 %.064135, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %vector.ph
    i32 3, label %vector.ph192
    i32 4, label %vector.ph214
    i32 5, label %vector.ph237
  ]

bb.d:                                             ; preds = %bb.c
  call void @mbedtls_des_setkey(ptr noundef nonnull %1, ptr noundef nonnull @des3_test_keys)
  %i.hs = load <4 x i32>, ptr %i.o, align 16, !tbaa !4
  %i.ht = shufflevector <4 x i32> %i.hs, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.hu = load <4 x i32>, ptr %1, align 16, !tbaa !4
  store <4 x i32> %i.ht, ptr %1, align 16, !tbaa !4
  %i.hv = shufflevector <4 x i32> %i.hu, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %i.hv, ptr %i.o, align 16, !tbaa !4
  %i.hw = load <4 x i32>, ptr %i.q, align 16, !tbaa !4
  %i.hx = shufflevector <4 x i32> %i.hw, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.hy = load <4 x i32>, ptr %i.p, align 16, !tbaa !4
  store <4 x i32> %i.hx, ptr %i.p, align 16, !tbaa !4
  %i.hz = shufflevector <4 x i32> %i.hy, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %i.hz, ptr %i.q, align 16, !tbaa !4
  %i.ia = load <4 x i32>, ptr %i.s, align 16, !tbaa !4
  %i.ib = shufflevector <4 x i32> %i.ia, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ic = load <4 x i32>, ptr %i.r, align 16, !tbaa !4
  store <4 x i32> %i.ib, ptr %i.r, align 16, !tbaa !4
  %i.id = shufflevector <4 x i32> %i.ic, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %i.id, ptr %i.s, align 16, !tbaa !4
  %i.ie = load <4 x i32>, ptr %i.u, align 16, !tbaa !4
  %i.if = shufflevector <4 x i32> %i.ie, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ig = load <4 x i32>, ptr %i.t, align 16, !tbaa !4
  store <4 x i32> %i.if, ptr %i.t, align 16, !tbaa !4
  %i.ih = shufflevector <4 x i32> %i.ig, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %i.ih, ptr %i.u, align 16, !tbaa !4
  br label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.e, %bb.d
  br label %.split.us

bb.e:                                             ; preds = %bb.c
  call void @mbedtls_des_setkey(ptr noundef nonnull %1, ptr noundef nonnull @des3_test_keys)
  br label %.split.us.preheader

vector.ph:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.h, ptr noundef nonnull readonly @des3_test_keys)
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.l, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @des3_test_keys, i64 8))
  %wide.vec = load <4 x i32>, ptr %i.fj, align 16, !tbaa !4
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec, ptr %2, align 16, !tbaa !4
  %wide.vec181 = load <4 x i32>, ptr %i.fk, align 16, !tbaa !4
  %interleaved.vec186 = shufflevector <4 x i32> %wide.vec181, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec186, ptr %i.fl, align 16, !tbaa !4
  %wide.vec187 = load <4 x i32>, ptr %i.h, align 16, !tbaa !4
  store <4 x i32> %wide.vec187, ptr %i.fm, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec, ptr %i.fn, align 16, !tbaa !4
  %wide.vec.1 = load <4 x i32>, ptr %i.fo, align 16, !tbaa !4
  %interleaved.vec.1 = shufflevector <4 x i32> %wide.vec.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec.1, ptr %i.fp, align 16, !tbaa !4
  %wide.vec181.1 = load <4 x i32>, ptr %i.fq, align 16, !tbaa !4
  %interleaved.vec186.1 = shufflevector <4 x i32> %wide.vec181.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec186.1, ptr %i.fs, align 16, !tbaa !4
  %wide.vec187.1 = load <4 x i32>, ptr %i.fr, align 16, !tbaa !4
  store <4 x i32> %wide.vec187.1, ptr %i.ft, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec.1, ptr %i.fu, align 16, !tbaa !4
  %wide.vec.2 = load <4 x i32>, ptr %i.fv, align 16, !tbaa !4
  %interleaved.vec.2 = shufflevector <4 x i32> %wide.vec.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec.2, ptr %i.fw, align 16, !tbaa !4
  %wide.vec181.2 = load <4 x i32>, ptr %i.fx, align 16, !tbaa !4
  %interleaved.vec186.2 = shufflevector <4 x i32> %wide.vec181.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec186.2, ptr %i.fz, align 16, !tbaa !4
  %wide.vec187.2 = load <4 x i32>, ptr %i.fy, align 16, !tbaa !4
  store <4 x i32> %wide.vec187.2, ptr %i.ga, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec.2, ptr %i.gb, align 16, !tbaa !4
  %wide.vec.3 = load <4 x i32>, ptr %i.gc, align 16, !tbaa !4
  %interleaved.vec.3 = shufflevector <4 x i32> %wide.vec.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec.3, ptr %i.gd, align 16, !tbaa !4
  %wide.vec181.3 = load <4 x i32>, ptr %i.ge, align 16, !tbaa !4
  %interleaved.vec186.3 = shufflevector <4 x i32> %wide.vec181.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec186.3, ptr %i.gg, align 16, !tbaa !4
  %wide.vec187.3 = load <4 x i32>, ptr %i.gf, align 16, !tbaa !4 ; 2 uses
  store <4 x i32> %wide.vec187.3, ptr %i.gh, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec.3, ptr %i.gi, align 16, !tbaa !4
  %interleaved.vec.4 = shufflevector <4 x i32> %wide.vec187.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec.4, ptr %i.gj, align 16, !tbaa !4
  %wide.vec181.4 = load <4 x i32>, ptr %i.gk, align 16, !tbaa !4
  %interleaved.vec186.4 = shufflevector <4 x i32> %wide.vec181.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec186.4, ptr %i.gm, align 16, !tbaa !4
  %wide.vec187.4 = load <4 x i32>, ptr %i.gl, align 16, !tbaa !4
  store <4 x i32> %wide.vec187.4, ptr %i.gn, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec.4, ptr %i.go, align 16, !tbaa !4
  %wide.vec.5 = load <4 x i32>, ptr %i.gp, align 16, !tbaa !4
  %interleaved.vec.5 = shufflevector <4 x i32> %wide.vec.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec.5, ptr %i.gq, align 16, !tbaa !4
  %wide.vec181.5 = load <4 x i32>, ptr %i.gr, align 16, !tbaa !4
  %interleaved.vec186.5 = shufflevector <4 x i32> %wide.vec181.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec186.5, ptr %i.gt, align 16, !tbaa !4
  %wide.vec187.5 = load <4 x i32>, ptr %i.gs, align 16, !tbaa !4
  store <4 x i32> %wide.vec187.5, ptr %i.gu, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec.5, ptr %i.gv, align 16, !tbaa !4
  %wide.vec.6 = load <4 x i32>, ptr %i.gw, align 16, !tbaa !4
  %interleaved.vec.6 = shufflevector <4 x i32> %wide.vec.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec.6, ptr %i.gx, align 16, !tbaa !4
  %wide.vec181.6 = load <4 x i32>, ptr %i.gy, align 16, !tbaa !4
  %interleaved.vec186.6 = shufflevector <4 x i32> %wide.vec181.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec186.6, ptr %i.ha, align 16, !tbaa !4
  %wide.vec187.6 = load <4 x i32>, ptr %i.gz, align 16, !tbaa !4
  store <4 x i32> %wide.vec187.6, ptr %i.hb, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec.6, ptr %i.hc, align 16, !tbaa !4
  %wide.vec.7 = load <4 x i32>, ptr %i.h, align 16, !tbaa !4
  %interleaved.vec.7 = shufflevector <4 x i32> %wide.vec.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec.7, ptr %i.hd, align 16, !tbaa !4
  %wide.vec181.7 = load <4 x i32>, ptr %i.he, align 16, !tbaa !4
  %interleaved.vec186.7 = shufflevector <4 x i32> %wide.vec181.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec186.7, ptr %i.hg, align 16, !tbaa !4
  %wide.vec187.7 = load <4 x i32>, ptr %i.hf, align 16, !tbaa !4
  store <4 x i32> %wide.vec187.7, ptr %i.hh, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec.7, ptr %i.hi, align 16, !tbaa !4
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.h, i64 noundef 384) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  br label %.split.preheader

vector.ph192:                                     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @mbedtls_des_setkey(ptr noundef nonnull %2, ptr noundef nonnull readonly @des3_test_keys)
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.n, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @des3_test_keys, i64 8))
  %wide.vec195 = load <4 x i32>, ptr %i.dj, align 16, !tbaa !4
  %interleaved.vec200 = shufflevector <4 x i32> %wide.vec195, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec200, ptr %i.g, align 16, !tbaa !4
  %wide.vec201 = load <4 x i32>, ptr %i.dk, align 16, !tbaa !4
  %interleaved.vec206 = shufflevector <4 x i32> %wide.vec201, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec206, ptr %i.dl, align 16, !tbaa !4
  %wide.vec207 = load <4 x i32>, ptr %2, align 16, !tbaa !4
  store <4 x i32> %wide.vec207, ptr %i.dm, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec200, ptr %i.dn, align 16, !tbaa !4
  %wide.vec195.1 = load <4 x i32>, ptr %i.do, align 16, !tbaa !4
  %interleaved.vec200.1 = shufflevector <4 x i32> %wide.vec195.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec200.1, ptr %i.dp, align 16, !tbaa !4
  %wide.vec201.1 = load <4 x i32>, ptr %i.dq, align 16, !tbaa !4
  %interleaved.vec206.1 = shufflevector <4 x i32> %wide.vec201.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec206.1, ptr %i.ds, align 16, !tbaa !4
  %wide.vec207.1 = load <4 x i32>, ptr %i.dr, align 16, !tbaa !4
  store <4 x i32> %wide.vec207.1, ptr %i.dt, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec200.1, ptr %i.du, align 16, !tbaa !4
  %wide.vec195.2 = load <4 x i32>, ptr %i.dv, align 16, !tbaa !4
  %interleaved.vec200.2 = shufflevector <4 x i32> %wide.vec195.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec200.2, ptr %i.dw, align 16, !tbaa !4
  %wide.vec201.2 = load <4 x i32>, ptr %i.dx, align 16, !tbaa !4
  %interleaved.vec206.2 = shufflevector <4 x i32> %wide.vec201.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec206.2, ptr %i.dz, align 16, !tbaa !4
  %wide.vec207.2 = load <4 x i32>, ptr %i.dy, align 16, !tbaa !4
  store <4 x i32> %wide.vec207.2, ptr %i.ea, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec200.2, ptr %i.eb, align 16, !tbaa !4
  %wide.vec195.3 = load <4 x i32>, ptr %i.ec, align 16, !tbaa !4
  %interleaved.vec200.3 = shufflevector <4 x i32> %wide.vec195.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec200.3, ptr %i.ed, align 16, !tbaa !4
  %wide.vec201.3 = load <4 x i32>, ptr %i.ee, align 16, !tbaa !4
  %interleaved.vec206.3 = shufflevector <4 x i32> %wide.vec201.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec206.3, ptr %i.eg, align 16, !tbaa !4
  %wide.vec207.3 = load <4 x i32>, ptr %i.ef, align 16, !tbaa !4 ; 2 uses
  store <4 x i32> %wide.vec207.3, ptr %i.eh, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec200.3, ptr %i.ei, align 16, !tbaa !4
  %interleaved.vec200.4 = shufflevector <4 x i32> %wide.vec207.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec200.4, ptr %i.ej, align 16, !tbaa !4
  %wide.vec201.4 = load <4 x i32>, ptr %i.ek, align 16, !tbaa !4
  %interleaved.vec206.4 = shufflevector <4 x i32> %wide.vec201.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec206.4, ptr %i.em, align 16, !tbaa !4
  %wide.vec207.4 = load <4 x i32>, ptr %i.el, align 16, !tbaa !4
  store <4 x i32> %wide.vec207.4, ptr %i.en, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec200.4, ptr %i.eo, align 16, !tbaa !4
  %wide.vec195.5 = load <4 x i32>, ptr %i.ep, align 16, !tbaa !4
  %interleaved.vec200.5 = shufflevector <4 x i32> %wide.vec195.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec200.5, ptr %i.eq, align 16, !tbaa !4
  %wide.vec201.5 = load <4 x i32>, ptr %i.er, align 16, !tbaa !4
  %interleaved.vec206.5 = shufflevector <4 x i32> %wide.vec201.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec206.5, ptr %i.et, align 16, !tbaa !4
  %wide.vec207.5 = load <4 x i32>, ptr %i.es, align 16, !tbaa !4
  store <4 x i32> %wide.vec207.5, ptr %i.eu, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec200.5, ptr %i.ev, align 16, !tbaa !4
  %wide.vec195.6 = load <4 x i32>, ptr %i.ew, align 16, !tbaa !4
  %interleaved.vec200.6 = shufflevector <4 x i32> %wide.vec195.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec200.6, ptr %i.ex, align 16, !tbaa !4
  %wide.vec201.6 = load <4 x i32>, ptr %i.ey, align 16, !tbaa !4
  %interleaved.vec206.6 = shufflevector <4 x i32> %wide.vec201.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec206.6, ptr %i.fa, align 16, !tbaa !4
  %wide.vec207.6 = load <4 x i32>, ptr %i.ez, align 16, !tbaa !4
  store <4 x i32> %wide.vec207.6, ptr %i.fb, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec200.6, ptr %i.fc, align 16, !tbaa !4
  %wide.vec195.7 = load <4 x i32>, ptr %2, align 16, !tbaa !4
  %interleaved.vec200.7 = shufflevector <4 x i32> %wide.vec195.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec200.7, ptr %i.fd, align 16, !tbaa !4
  %wide.vec201.7 = load <4 x i32>, ptr %i.fe, align 16, !tbaa !4
  %interleaved.vec206.7 = shufflevector <4 x i32> %wide.vec201.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec206.7, ptr %i.fg, align 16, !tbaa !4
  %wide.vec207.7 = load <4 x i32>, ptr %i.ff, align 16, !tbaa !4
  store <4 x i32> %wide.vec207.7, ptr %i.fh, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec200.7, ptr %i.fi, align 16, !tbaa !4
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.g, i64 noundef 384) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  br label %.split.preheader

vector.ph214:                                     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.f, ptr noundef nonnull readonly @des3_test_keys)
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.l, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @des3_test_keys, i64 8))
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.m, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @des3_test_keys, i64 16))
  %wide.vec217 = load <4 x i32>, ptr %i.bp, align 16, !tbaa !4
  %interleaved.vec222 = shufflevector <4 x i32> %wide.vec217, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec222, ptr %2, align 16, !tbaa !4
  %wide.vec223 = load <4 x i32>, ptr %i.bq, align 16, !tbaa !4
  %interleaved.vec228 = shufflevector <4 x i32> %wide.vec223, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec228, ptr %i.br, align 16, !tbaa !4
  %wide.vec229 = load <4 x i32>, ptr %i.bs, align 16, !tbaa !4
  %interleaved.vec234 = shufflevector <4 x i32> %wide.vec229, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec234, ptr %i.bt, align 16, !tbaa !4
  %wide.vec217.1 = load <4 x i32>, ptr %i.bu, align 16, !tbaa !4
  %interleaved.vec222.1 = shufflevector <4 x i32> %wide.vec217.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec222.1, ptr %i.bv, align 16, !tbaa !4
  %wide.vec223.1 = load <4 x i32>, ptr %i.bw, align 16, !tbaa !4
  %interleaved.vec228.1 = shufflevector <4 x i32> %wide.vec223.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec228.1, ptr %i.bx, align 16, !tbaa !4
  %wide.vec229.1 = load <4 x i32>, ptr %i.by, align 16, !tbaa !4
  %interleaved.vec234.1 = shufflevector <4 x i32> %wide.vec229.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec234.1, ptr %i.bz, align 16, !tbaa !4
  %wide.vec217.2 = load <4 x i32>, ptr %i.ca, align 16, !tbaa !4
  %interleaved.vec222.2 = shufflevector <4 x i32> %wide.vec217.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec222.2, ptr %i.cb, align 16, !tbaa !4
  %wide.vec223.2 = load <4 x i32>, ptr %i.cc, align 16, !tbaa !4
  %interleaved.vec228.2 = shufflevector <4 x i32> %wide.vec223.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec228.2, ptr %i.cd, align 16, !tbaa !4
  %wide.vec229.2 = load <4 x i32>, ptr %i.ce, align 16, !tbaa !4
  %interleaved.vec234.2 = shufflevector <4 x i32> %wide.vec229.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec234.2, ptr %i.cf, align 16, !tbaa !4
  %wide.vec217.3 = load <4 x i32>, ptr %i.cg, align 16, !tbaa !4
  %interleaved.vec222.3 = shufflevector <4 x i32> %wide.vec217.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec222.3, ptr %i.ch, align 16, !tbaa !4
  %wide.vec223.3 = load <4 x i32>, ptr %i.ci, align 16, !tbaa !4
  %interleaved.vec228.3 = shufflevector <4 x i32> %wide.vec223.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec228.3, ptr %i.cj, align 16, !tbaa !4
  %wide.vec229.3 = load <4 x i32>, ptr %i.ck, align 16, !tbaa !4
  %interleaved.vec234.3 = shufflevector <4 x i32> %wide.vec229.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec234.3, ptr %i.cl, align 16, !tbaa !4
  %wide.vec217.4 = load <4 x i32>, ptr %i.cm, align 16, !tbaa !4
  %interleaved.vec222.4 = shufflevector <4 x i32> %wide.vec217.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec222.4, ptr %i.cn, align 16, !tbaa !4
  %wide.vec223.4 = load <4 x i32>, ptr %i.co, align 16, !tbaa !4
  %interleaved.vec228.4 = shufflevector <4 x i32> %wide.vec223.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec228.4, ptr %i.cp, align 16, !tbaa !4
  %wide.vec229.4 = load <4 x i32>, ptr %i.cq, align 16, !tbaa !4
  %interleaved.vec234.4 = shufflevector <4 x i32> %wide.vec229.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec234.4, ptr %i.cr, align 16, !tbaa !4
  %wide.vec217.5 = load <4 x i32>, ptr %i.cs, align 16, !tbaa !4
  %interleaved.vec222.5 = shufflevector <4 x i32> %wide.vec217.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec222.5, ptr %i.ct, align 16, !tbaa !4
  %wide.vec223.5 = load <4 x i32>, ptr %i.cu, align 16, !tbaa !4
  %interleaved.vec228.5 = shufflevector <4 x i32> %wide.vec223.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec228.5, ptr %i.cv, align 16, !tbaa !4
  %wide.vec229.5 = load <4 x i32>, ptr %i.cw, align 16, !tbaa !4
  %interleaved.vec234.5 = shufflevector <4 x i32> %wide.vec229.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec234.5, ptr %i.cx, align 16, !tbaa !4
  %wide.vec217.6 = load <4 x i32>, ptr %i.cy, align 16, !tbaa !4
  %interleaved.vec222.6 = shufflevector <4 x i32> %wide.vec217.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec222.6, ptr %i.cz, align 16, !tbaa !4
  %wide.vec223.6 = load <4 x i32>, ptr %i.da, align 16, !tbaa !4
  %interleaved.vec228.6 = shufflevector <4 x i32> %wide.vec223.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec228.6, ptr %i.db, align 16, !tbaa !4
  %wide.vec229.6 = load <4 x i32>, ptr %i.dc, align 16, !tbaa !4
  %interleaved.vec234.6 = shufflevector <4 x i32> %wide.vec229.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec234.6, ptr %i.dd, align 16, !tbaa !4
  %wide.vec217.7 = load <4 x i32>, ptr %i.de, align 16, !tbaa !4
  %interleaved.vec222.7 = shufflevector <4 x i32> %wide.vec217.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec222.7, ptr %i.df, align 16, !tbaa !4
  %wide.vec223.7 = load <4 x i32>, ptr %i.dg, align 16, !tbaa !4
  %interleaved.vec228.7 = shufflevector <4 x i32> %wide.vec223.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec228.7, ptr %i.dh, align 16, !tbaa !4
  %wide.vec229.7 = load <4 x i32>, ptr %i.f, align 16, !tbaa !4
  %interleaved.vec234.7 = shufflevector <4 x i32> %wide.vec229.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec234.7, ptr %i.di, align 16, !tbaa !4
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.f, i64 noundef 384) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %.split.preheader

vector.ph237:                                     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @mbedtls_des_setkey(ptr noundef nonnull %2, ptr noundef nonnull readonly @des3_test_keys)
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.j, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @des3_test_keys, i64 8))
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.k, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @des3_test_keys, i64 16))
  %wide.vec240 = load <4 x i32>, ptr %i.v, align 16, !tbaa !4
  %interleaved.vec245 = shufflevector <4 x i32> %wide.vec240, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec245, ptr %i.e, align 16, !tbaa !4
  %wide.vec246 = load <4 x i32>, ptr %i.w, align 16, !tbaa !4
  %interleaved.vec251 = shufflevector <4 x i32> %wide.vec246, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec251, ptr %i.x, align 16, !tbaa !4
  %wide.vec252 = load <4 x i32>, ptr %i.y, align 16, !tbaa !4
  %interleaved.vec257 = shufflevector <4 x i32> %wide.vec252, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec257, ptr %i.z, align 16, !tbaa !4
  %wide.vec240.1 = load <4 x i32>, ptr %i.aa, align 16, !tbaa !4
  %interleaved.vec245.1 = shufflevector <4 x i32> %wide.vec240.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec245.1, ptr %i.ab, align 16, !tbaa !4
  %wide.vec246.1 = load <4 x i32>, ptr %i.ac, align 16, !tbaa !4
  %interleaved.vec251.1 = shufflevector <4 x i32> %wide.vec246.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec251.1, ptr %i.ad, align 16, !tbaa !4
  %wide.vec252.1 = load <4 x i32>, ptr %i.ae, align 16, !tbaa !4
  %interleaved.vec257.1 = shufflevector <4 x i32> %wide.vec252.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec257.1, ptr %i.af, align 16, !tbaa !4
  %wide.vec240.2 = load <4 x i32>, ptr %i.ag, align 16, !tbaa !4
  %interleaved.vec245.2 = shufflevector <4 x i32> %wide.vec240.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec245.2, ptr %i.ah, align 16, !tbaa !4
  %wide.vec246.2 = load <4 x i32>, ptr %i.ai, align 16, !tbaa !4
  %interleaved.vec251.2 = shufflevector <4 x i32> %wide.vec246.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec251.2, ptr %i.aj, align 16, !tbaa !4
  %wide.vec252.2 = load <4 x i32>, ptr %i.ak, align 16, !tbaa !4
  %interleaved.vec257.2 = shufflevector <4 x i32> %wide.vec252.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec257.2, ptr %i.al, align 16, !tbaa !4
  %wide.vec240.3 = load <4 x i32>, ptr %i.am, align 16, !tbaa !4
  %interleaved.vec245.3 = shufflevector <4 x i32> %wide.vec240.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec245.3, ptr %i.an, align 16, !tbaa !4
  %wide.vec246.3 = load <4 x i32>, ptr %i.ao, align 16, !tbaa !4
  %interleaved.vec251.3 = shufflevector <4 x i32> %wide.vec246.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec251.3, ptr %i.ap, align 16, !tbaa !4
  %wide.vec252.3 = load <4 x i32>, ptr %i.aq, align 16, !tbaa !4
  %interleaved.vec257.3 = shufflevector <4 x i32> %wide.vec252.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec257.3, ptr %i.ar, align 16, !tbaa !4
  %wide.vec240.4 = load <4 x i32>, ptr %i.as, align 16, !tbaa !4
  %interleaved.vec245.4 = shufflevector <4 x i32> %wide.vec240.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec245.4, ptr %i.at, align 16, !tbaa !4
  %wide.vec246.4 = load <4 x i32>, ptr %i.au, align 16, !tbaa !4
  %interleaved.vec251.4 = shufflevector <4 x i32> %wide.vec246.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec251.4, ptr %i.av, align 16, !tbaa !4
  %wide.vec252.4 = load <4 x i32>, ptr %i.aw, align 16, !tbaa !4
  %interleaved.vec257.4 = shufflevector <4 x i32> %wide.vec252.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec257.4, ptr %i.ax, align 16, !tbaa !4
  %wide.vec240.5 = load <4 x i32>, ptr %i.ay, align 16, !tbaa !4
  %interleaved.vec245.5 = shufflevector <4 x i32> %wide.vec240.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec245.5, ptr %i.az, align 16, !tbaa !4
  %wide.vec246.5 = load <4 x i32>, ptr %i.ba, align 16, !tbaa !4
  %interleaved.vec251.5 = shufflevector <4 x i32> %wide.vec246.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec251.5, ptr %i.bb, align 16, !tbaa !4
  %wide.vec252.5 = load <4 x i32>, ptr %i.bc, align 16, !tbaa !4
  %interleaved.vec257.5 = shufflevector <4 x i32> %wide.vec252.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec257.5, ptr %i.bd, align 16, !tbaa !4
  %wide.vec240.6 = load <4 x i32>, ptr %i.be, align 16, !tbaa !4
  %interleaved.vec245.6 = shufflevector <4 x i32> %wide.vec240.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec245.6, ptr %i.bf, align 16, !tbaa !4
  %wide.vec246.6 = load <4 x i32>, ptr %i.bg, align 16, !tbaa !4
  %interleaved.vec251.6 = shufflevector <4 x i32> %wide.vec246.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec251.6, ptr %i.bh, align 16, !tbaa !4
  %wide.vec252.6 = load <4 x i32>, ptr %i.bi, align 16, !tbaa !4
  %interleaved.vec257.6 = shufflevector <4 x i32> %wide.vec252.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec257.6, ptr %i.bj, align 16, !tbaa !4
  %wide.vec240.7 = load <4 x i32>, ptr %i.bk, align 16, !tbaa !4
  %interleaved.vec245.7 = shufflevector <4 x i32> %wide.vec240.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec245.7, ptr %i.bl, align 16, !tbaa !4
  %wide.vec246.7 = load <4 x i32>, ptr %i.bm, align 16, !tbaa !4
  %interleaved.vec251.7 = shufflevector <4 x i32> %wide.vec246.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec251.7, ptr %i.bn, align 16, !tbaa !4
  %wide.vec252.7 = load <4 x i32>, ptr %2, align 16, !tbaa !4
  %interleaved.vec257.7 = shufflevector <4 x i32> %wide.vec252.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec257.7, ptr %i.bo, align 16, !tbaa !4
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.e, i64 noundef 384) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %.split.preheader

.split.preheader:                                 ; preds = %vector.ph, %vector.ph192, %vector.ph214, %vector.ph237
  br label %.split

.split.us:                                        ; preds = %.split.us.preheader, %.split.us
  %.061132.us = phi i32 [ %i.ij, %.split.us ], [ 0, %.split.us.preheader ]
  %i.ii = call i32 @mbedtls_des_crypt_ecb(ptr noundef nonnull %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) ; 0 uses
  %i.ij = add nuw nsw i32 %.061132.us, 1          ; 2 uses
  %exitcond148.not = icmp eq i32 %i.ij, 100
  br i1 %exitcond148.not, label %.split134.us, label %.split.us, !llvm.loop !19

.split:                                           ; preds = %.split.preheader, %.split
  %.061132 = phi i32 [ %i.il, %.split ], [ 0, %.split.preheader ]
  %i.ik = call i32 @mbedtls_des3_crypt_ecb(ptr noundef nonnull %2, ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) ; 0 uses
  %i.il = add nuw nsw i32 %.061132, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.il, 100
  br i1 %exitcond.not, label %.split134.us, label %.split, !llvm.loop !19

.split134.us:                                     ; preds = %.split, %.split.us
  %cond = icmp eq i32 %i.hk, 0
  %i.im = zext nneg i32 %i.hj to i64              ; 2 uses
  %lhsv350 = load i64, ptr %i.i, align 8          ; 2 uses
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split134.us
  %i.in = getelementptr inbounds nuw [8 x i8], ptr @des3_test_ecb_dec, i64 %i.im
  %rhsv351 = load i64, ptr %i.in, align 8
  %.not352 = icmp eq i64 %lhsv350, %rhsv351
  br i1 %.not352, label %bb.j, label %bb.h

bb.g:                                             ; preds = %.split134.us
  %i.io = getelementptr inbounds nuw [8 x i8], ptr @des3_test_ecb_enc, i64 %i.im
  %rhsv = load i64, ptr %i.io, align 8
  %.not = icmp eq i64 %lhsv350, %rhsv
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.not76, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %puts83 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.f, %bb.g
  br i1 %.not76, label %bb.k, label %.thread161

bb.k:                                             ; preds = %bb.j
  %i.ip = add nuw nsw i32 %.064135, 1             ; 2 uses
  %exitcond149.not = icmp eq i32 %i.ip, 6
  br i1 %exitcond149.not, label %.loopexit172, label %.backedge173.backedge

.backedge173.backedge:                            ; preds = %bb.k, %.thread161
  %.064135.be = phi i32 [ %i.ip, %bb.k ], [ %i.iq, %.thread161 ]
  br label %.backedge173, !llvm.loop !20

.thread161:                                       ; preds = %bb.j
  %puts82 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.iq = add nuw nsw i32 %.064135, 1             ; 2 uses
  %exitcond149.not162 = icmp eq i32 %i.iq, 6
  br i1 %exitcond149.not162, label %bb.l, label %.backedge173.backedge

bb.l:                                             ; preds = %.thread161
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.loopexit172

.loopexit172:                                     ; preds = %bb.k, %bb.l
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.kf = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.ko = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.kt = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.kx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.kz = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ld = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.li = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.lj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.ll = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.lp = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.lr = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.ls = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.lu = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.lv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.lx = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ma = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.mb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.md = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.mg = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.mh = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.mj = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ml = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.mm = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.mo = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.mp = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.mt = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.mv = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.mw = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.na = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.nb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.nc = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.nd = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.nh = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.ni = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.nn = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.np = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.nq = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.nu = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nw = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.nx = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.oa = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.ob = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.oc = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.od = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.oh = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.oi = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.ok = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.ol = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.on = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.oq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.or = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.os = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.ou = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.ox = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.oy = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.oz = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.pb = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.pe = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.pf = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.pg = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.pk = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.pm = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.po = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.pp = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.pq = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.pr = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ps = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.pt = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %i.pu = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.pv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.py = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.pz = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.qa = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.qc = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.qe = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.qf = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.qg = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 368
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.loopexit172
  %.165143 = phi i32 [ 0, %.loopexit172 ], [ %.165143.be, %.backedge.backedge ] ; 5 uses
  %i.qi = lshr i32 %.165143, 1                    ; 4 uses
  br i1 %.not76, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.backedge
  %i.qj = and i32 %.165143, 1
  %i.qk = icmp eq i32 %i.qi, 0
  %i.ql = select i1 %i.qk, i32 32, i32 51
  %i.qm = mul nuw nsw i32 %i.qi, 56
  %i.qn = add nuw nsw i32 %i.qm, 56
  %i.qo = icmp eq i32 %i.qj, 0
  %i.qp = select i1 %i.qo, ptr @.str.1, ptr @.str.2
  %i.qq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.ql, i32 noundef %i.qn, ptr noundef nonnull %i.qp) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.backedge
  store i64 8367815003007840078, ptr %i.i, align 8
  switch i32 %.165143, label %default.unreachable125 [
    i32 0, label %.lr.ph.i.preheader.us.preheader
    i32 1, label %.preheader46.i.preheader.us.preheader
    i32 2, label %vector.ph260
    i32 3, label %vector.ph282
    i32 4, label %vector.ph304
    i32 5, label %vector.ph327
  ]

vector.ph260:                                     ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.d, ptr noundef nonnull readonly @des3_test_keys)
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.l, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @des3_test_keys, i64 8))
  %wide.vec263 = load <4 x i32>, ptr %i.oi, align 16, !tbaa !4
  %interleaved.vec268 = shufflevector <4 x i32> %wide.vec263, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec268, ptr %2, align 16, !tbaa !4
  %wide.vec269 = load <4 x i32>, ptr %i.oj, align 16, !tbaa !4
  %interleaved.vec274 = shufflevector <4 x i32> %wide.vec269, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec274, ptr %i.ok, align 16, !tbaa !4
  %wide.vec275 = load <4 x i32>, ptr %i.d, align 16, !tbaa !4
  store <4 x i32> %wide.vec275, ptr %i.ol, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec268, ptr %i.om, align 16, !tbaa !4
  %wide.vec263.1 = load <4 x i32>, ptr %i.on, align 16, !tbaa !4
  %interleaved.vec268.1 = shufflevector <4 x i32> %wide.vec263.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec268.1, ptr %i.oo, align 16, !tbaa !4
  %wide.vec269.1 = load <4 x i32>, ptr %i.op, align 16, !tbaa !4
  %interleaved.vec274.1 = shufflevector <4 x i32> %wide.vec269.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec274.1, ptr %i.or, align 16, !tbaa !4
  %wide.vec275.1 = load <4 x i32>, ptr %i.oq, align 16, !tbaa !4
  store <4 x i32> %wide.vec275.1, ptr %i.os, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec268.1, ptr %i.ot, align 16, !tbaa !4
  %wide.vec263.2 = load <4 x i32>, ptr %i.ou, align 16, !tbaa !4
  %interleaved.vec268.2 = shufflevector <4 x i32> %wide.vec263.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec268.2, ptr %i.ov, align 16, !tbaa !4
  %wide.vec269.2 = load <4 x i32>, ptr %i.ow, align 16, !tbaa !4
  %interleaved.vec274.2 = shufflevector <4 x i32> %wide.vec269.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec274.2, ptr %i.oy, align 16, !tbaa !4
  %wide.vec275.2 = load <4 x i32>, ptr %i.ox, align 16, !tbaa !4
  store <4 x i32> %wide.vec275.2, ptr %i.oz, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec268.2, ptr %i.pa, align 16, !tbaa !4
  %wide.vec263.3 = load <4 x i32>, ptr %i.pb, align 16, !tbaa !4
  %interleaved.vec268.3 = shufflevector <4 x i32> %wide.vec263.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec268.3, ptr %i.pc, align 16, !tbaa !4
  %wide.vec269.3 = load <4 x i32>, ptr %i.pd, align 16, !tbaa !4
  %interleaved.vec274.3 = shufflevector <4 x i32> %wide.vec269.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec274.3, ptr %i.pf, align 16, !tbaa !4
  %wide.vec275.3 = load <4 x i32>, ptr %i.pe, align 16, !tbaa !4 ; 2 uses
  store <4 x i32> %wide.vec275.3, ptr %i.pg, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec268.3, ptr %i.ph, align 16, !tbaa !4
  %interleaved.vec268.4 = shufflevector <4 x i32> %wide.vec275.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec268.4, ptr %i.pi, align 16, !tbaa !4
  %wide.vec269.4 = load <4 x i32>, ptr %i.pj, align 16, !tbaa !4
  %interleaved.vec274.4 = shufflevector <4 x i32> %wide.vec269.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec274.4, ptr %i.pl, align 16, !tbaa !4
  %wide.vec275.4 = load <4 x i32>, ptr %i.pk, align 16, !tbaa !4
  store <4 x i32> %wide.vec275.4, ptr %i.pm, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec268.4, ptr %i.pn, align 16, !tbaa !4
  %wide.vec263.5 = load <4 x i32>, ptr %i.po, align 16, !tbaa !4
  %interleaved.vec268.5 = shufflevector <4 x i32> %wide.vec263.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec268.5, ptr %i.pp, align 16, !tbaa !4
  %wide.vec269.5 = load <4 x i32>, ptr %i.pq, align 16, !tbaa !4
  %interleaved.vec274.5 = shufflevector <4 x i32> %wide.vec269.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec274.5, ptr %i.ps, align 16, !tbaa !4
  %wide.vec275.5 = load <4 x i32>, ptr %i.pr, align 16, !tbaa !4
  store <4 x i32> %wide.vec275.5, ptr %i.pt, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec268.5, ptr %i.pu, align 16, !tbaa !4
  %wide.vec263.6 = load <4 x i32>, ptr %i.pv, align 16, !tbaa !4
  %interleaved.vec268.6 = shufflevector <4 x i32> %wide.vec263.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec268.6, ptr %i.pw, align 16, !tbaa !4
  %wide.vec269.6 = load <4 x i32>, ptr %i.px, align 16, !tbaa !4
  %interleaved.vec274.6 = shufflevector <4 x i32> %wide.vec269.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec274.6, ptr %i.pz, align 16, !tbaa !4
  %wide.vec275.6 = load <4 x i32>, ptr %i.py, align 16, !tbaa !4
  store <4 x i32> %wide.vec275.6, ptr %i.qa, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec268.6, ptr %i.qb, align 16, !tbaa !4
  %wide.vec263.7 = load <4 x i32>, ptr %i.d, align 16, !tbaa !4
  %interleaved.vec268.7 = shufflevector <4 x i32> %wide.vec263.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec268.7, ptr %i.qc, align 16, !tbaa !4
  %wide.vec269.7 = load <4 x i32>, ptr %i.qd, align 16, !tbaa !4
  %interleaved.vec274.7 = shufflevector <4 x i32> %wide.vec269.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec274.7, ptr %i.qf, align 16, !tbaa !4
  %wide.vec275.7 = load <4 x i32>, ptr %i.qe, align 16, !tbaa !4
  store <4 x i32> %wide.vec275.7, ptr %i.qg, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec268.7, ptr %i.qh, align 16, !tbaa !4
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.d, i64 noundef 384) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %.lr.ph.i104.preheader.preheader

vector.ph282:                                     ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @mbedtls_des_setkey(ptr noundef nonnull %2, ptr noundef nonnull readonly @des3_test_keys)
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.it, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @des3_test_keys, i64 8))
  %wide.vec285 = load <4 x i32>, ptr %i.mi, align 16, !tbaa !4
  %interleaved.vec290 = shufflevector <4 x i32> %wide.vec285, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec290, ptr %i.c, align 16, !tbaa !4
  %wide.vec291 = load <4 x i32>, ptr %i.mj, align 16, !tbaa !4
  %interleaved.vec296 = shufflevector <4 x i32> %wide.vec291, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec296, ptr %i.mk, align 16, !tbaa !4
  %wide.vec297 = load <4 x i32>, ptr %2, align 16, !tbaa !4
  store <4 x i32> %wide.vec297, ptr %i.ml, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec290, ptr %i.mm, align 16, !tbaa !4
  %wide.vec285.1 = load <4 x i32>, ptr %i.mn, align 16, !tbaa !4
  %interleaved.vec290.1 = shufflevector <4 x i32> %wide.vec285.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec290.1, ptr %i.mo, align 16, !tbaa !4
  %wide.vec291.1 = load <4 x i32>, ptr %i.mp, align 16, !tbaa !4
  %interleaved.vec296.1 = shufflevector <4 x i32> %wide.vec291.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec296.1, ptr %i.mr, align 16, !tbaa !4
  %wide.vec297.1 = load <4 x i32>, ptr %i.mq, align 16, !tbaa !4
  store <4 x i32> %wide.vec297.1, ptr %i.ms, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec290.1, ptr %i.mt, align 16, !tbaa !4
  %wide.vec285.2 = load <4 x i32>, ptr %i.mu, align 16, !tbaa !4
  %interleaved.vec290.2 = shufflevector <4 x i32> %wide.vec285.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec290.2, ptr %i.mv, align 16, !tbaa !4
  %wide.vec291.2 = load <4 x i32>, ptr %i.mw, align 16, !tbaa !4
  %interleaved.vec296.2 = shufflevector <4 x i32> %wide.vec291.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec296.2, ptr %i.my, align 16, !tbaa !4
  %wide.vec297.2 = load <4 x i32>, ptr %i.mx, align 16, !tbaa !4
  store <4 x i32> %wide.vec297.2, ptr %i.mz, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec290.2, ptr %i.na, align 16, !tbaa !4
  %wide.vec285.3 = load <4 x i32>, ptr %i.nb, align 16, !tbaa !4
  %interleaved.vec290.3 = shufflevector <4 x i32> %wide.vec285.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec290.3, ptr %i.nc, align 16, !tbaa !4
  %wide.vec291.3 = load <4 x i32>, ptr %i.nd, align 16, !tbaa !4
  %interleaved.vec296.3 = shufflevector <4 x i32> %wide.vec291.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec296.3, ptr %i.nf, align 16, !tbaa !4
  %wide.vec297.3 = load <4 x i32>, ptr %i.ne, align 16, !tbaa !4 ; 2 uses
  store <4 x i32> %wide.vec297.3, ptr %i.ng, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec290.3, ptr %i.nh, align 16, !tbaa !4
  %interleaved.vec290.4 = shufflevector <4 x i32> %wide.vec297.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec290.4, ptr %i.ni, align 16, !tbaa !4
  %wide.vec291.4 = load <4 x i32>, ptr %i.nj, align 16, !tbaa !4
  %interleaved.vec296.4 = shufflevector <4 x i32> %wide.vec291.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec296.4, ptr %i.nl, align 16, !tbaa !4
  %wide.vec297.4 = load <4 x i32>, ptr %i.nk, align 16, !tbaa !4
  store <4 x i32> %wide.vec297.4, ptr %i.nm, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec290.4, ptr %i.nn, align 16, !tbaa !4
  %wide.vec285.5 = load <4 x i32>, ptr %i.no, align 16, !tbaa !4
  %interleaved.vec290.5 = shufflevector <4 x i32> %wide.vec285.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec290.5, ptr %i.np, align 16, !tbaa !4
  %wide.vec291.5 = load <4 x i32>, ptr %i.nq, align 16, !tbaa !4
  %interleaved.vec296.5 = shufflevector <4 x i32> %wide.vec291.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec296.5, ptr %i.ns, align 16, !tbaa !4
  %wide.vec297.5 = load <4 x i32>, ptr %i.nr, align 16, !tbaa !4
  store <4 x i32> %wide.vec297.5, ptr %i.nt, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec290.5, ptr %i.nu, align 16, !tbaa !4
  %wide.vec285.6 = load <4 x i32>, ptr %i.nv, align 16, !tbaa !4
  %interleaved.vec290.6 = shufflevector <4 x i32> %wide.vec285.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec290.6, ptr %i.nw, align 16, !tbaa !4
  %wide.vec291.6 = load <4 x i32>, ptr %i.nx, align 16, !tbaa !4
  %interleaved.vec296.6 = shufflevector <4 x i32> %wide.vec291.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec296.6, ptr %i.nz, align 16, !tbaa !4
  %wide.vec297.6 = load <4 x i32>, ptr %i.ny, align 16, !tbaa !4
  store <4 x i32> %wide.vec297.6, ptr %i.oa, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec290.6, ptr %i.ob, align 16, !tbaa !4
  %wide.vec285.7 = load <4 x i32>, ptr %2, align 16, !tbaa !4
  %interleaved.vec290.7 = shufflevector <4 x i32> %wide.vec285.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec290.7, ptr %i.oc, align 16, !tbaa !4
  %wide.vec291.7 = load <4 x i32>, ptr %i.od, align 16, !tbaa !4
  %interleaved.vec296.7 = shufflevector <4 x i32> %wide.vec291.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec296.7, ptr %i.of, align 16, !tbaa !4
  %wide.vec297.7 = load <4 x i32>, ptr %i.oe, align 16, !tbaa !4
  store <4 x i32> %wide.vec297.7, ptr %i.og, align 16, !tbaa !4
  store <4 x i32> %interleaved.vec290.7, ptr %i.oh, align 16, !tbaa !4
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef 384) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.preheader46.i114.preheader.preheader

.preheader46.i114.preheader.preheader:            ; preds = %vector.ph327, %vector.ph282
  br label %.preheader46.i114.preheader

vector.ph304:                                     ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.b, ptr noundef nonnull readonly @des3_test_keys)
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.l, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @des3_test_keys, i64 8))
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.is, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @des3_test_keys, i64 16))
  %wide.vec307 = load <4 x i32>, ptr %i.ko, align 16, !tbaa !4
  %interleaved.vec312 = shufflevector <4 x i32> %wide.vec307, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec312, ptr %2, align 16, !tbaa !4
  %wide.vec313 = load <4 x i32>, ptr %i.kp, align 16, !tbaa !4
  %interleaved.vec318 = shufflevector <4 x i32> %wide.vec313, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec318, ptr %i.kq, align 16, !tbaa !4
  %wide.vec319 = load <4 x i32>, ptr %i.kr, align 16, !tbaa !4
  %interleaved.vec324 = shufflevector <4 x i32> %wide.vec319, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec324, ptr %i.ks, align 16, !tbaa !4
  %wide.vec307.1 = load <4 x i32>, ptr %i.kt, align 16, !tbaa !4
  %interleaved.vec312.1 = shufflevector <4 x i32> %wide.vec307.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec312.1, ptr %i.ku, align 16, !tbaa !4
  %wide.vec313.1 = load <4 x i32>, ptr %i.kv, align 16, !tbaa !4
  %interleaved.vec318.1 = shufflevector <4 x i32> %wide.vec313.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec318.1, ptr %i.kw, align 16, !tbaa !4
  %wide.vec319.1 = load <4 x i32>, ptr %i.kx, align 16, !tbaa !4
  %interleaved.vec324.1 = shufflevector <4 x i32> %wide.vec319.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec324.1, ptr %i.ky, align 16, !tbaa !4
  %wide.vec307.2 = load <4 x i32>, ptr %i.kz, align 16, !tbaa !4
  %interleaved.vec312.2 = shufflevector <4 x i32> %wide.vec307.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec312.2, ptr %i.la, align 16, !tbaa !4
  %wide.vec313.2 = load <4 x i32>, ptr %i.lb, align 16, !tbaa !4
  %interleaved.vec318.2 = shufflevector <4 x i32> %wide.vec313.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec318.2, ptr %i.lc, align 16, !tbaa !4
  %wide.vec319.2 = load <4 x i32>, ptr %i.ld, align 16, !tbaa !4
  %interleaved.vec324.2 = shufflevector <4 x i32> %wide.vec319.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec324.2, ptr %i.le, align 16, !tbaa !4
  %wide.vec307.3 = load <4 x i32>, ptr %i.lf, align 16, !tbaa !4
  %interleaved.vec312.3 = shufflevector <4 x i32> %wide.vec307.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec312.3, ptr %i.lg, align 16, !tbaa !4
  %wide.vec313.3 = load <4 x i32>, ptr %i.lh, align 16, !tbaa !4
  %interleaved.vec318.3 = shufflevector <4 x i32> %wide.vec313.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec318.3, ptr %i.li, align 16, !tbaa !4
  %wide.vec319.3 = load <4 x i32>, ptr %i.lj, align 16, !tbaa !4
  %interleaved.vec324.3 = shufflevector <4 x i32> %wide.vec319.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec324.3, ptr %i.lk, align 16, !tbaa !4
  %wide.vec307.4 = load <4 x i32>, ptr %i.ll, align 16, !tbaa !4
  %interleaved.vec312.4 = shufflevector <4 x i32> %wide.vec307.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec312.4, ptr %i.lm, align 16, !tbaa !4
  %wide.vec313.4 = load <4 x i32>, ptr %i.ln, align 16, !tbaa !4
  %interleaved.vec318.4 = shufflevector <4 x i32> %wide.vec313.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec318.4, ptr %i.lo, align 16, !tbaa !4
  %wide.vec319.4 = load <4 x i32>, ptr %i.lp, align 16, !tbaa !4
  %interleaved.vec324.4 = shufflevector <4 x i32> %wide.vec319.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec324.4, ptr %i.lq, align 16, !tbaa !4
  %wide.vec307.5 = load <4 x i32>, ptr %i.lr, align 16, !tbaa !4
  %interleaved.vec312.5 = shufflevector <4 x i32> %wide.vec307.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec312.5, ptr %i.ls, align 16, !tbaa !4
  %wide.vec313.5 = load <4 x i32>, ptr %i.lt, align 16, !tbaa !4
  %interleaved.vec318.5 = shufflevector <4 x i32> %wide.vec313.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec318.5, ptr %i.lu, align 16, !tbaa !4
  %wide.vec319.5 = load <4 x i32>, ptr %i.lv, align 16, !tbaa !4
  %interleaved.vec324.5 = shufflevector <4 x i32> %wide.vec319.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec324.5, ptr %i.lw, align 16, !tbaa !4
  %wide.vec307.6 = load <4 x i32>, ptr %i.lx, align 16, !tbaa !4
  %interleaved.vec312.6 = shufflevector <4 x i32> %wide.vec307.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec312.6, ptr %i.ly, align 16, !tbaa !4
  %wide.vec313.6 = load <4 x i32>, ptr %i.lz, align 16, !tbaa !4
  %interleaved.vec318.6 = shufflevector <4 x i32> %wide.vec313.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec318.6, ptr %i.ma, align 16, !tbaa !4
  %wide.vec319.6 = load <4 x i32>, ptr %i.mb, align 16, !tbaa !4
  %interleaved.vec324.6 = shufflevector <4 x i32> %wide.vec319.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec324.6, ptr %i.mc, align 16, !tbaa !4
  %wide.vec307.7 = load <4 x i32>, ptr %i.md, align 16, !tbaa !4
  %interleaved.vec312.7 = shufflevector <4 x i32> %wide.vec307.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec312.7, ptr %i.me, align 16, !tbaa !4
  %wide.vec313.7 = load <4 x i32>, ptr %i.mf, align 16, !tbaa !4
  %interleaved.vec318.7 = shufflevector <4 x i32> %wide.vec313.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec318.7, ptr %i.mg, align 16, !tbaa !4
  %wide.vec319.7 = load <4 x i32>, ptr %i.b, align 16, !tbaa !4
  %interleaved.vec324.7 = shufflevector <4 x i32> %wide.vec319.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec324.7, ptr %i.mh, align 16, !tbaa !4
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 384) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.lr.ph.i104.preheader.preheader

.lr.ph.i104.preheader.preheader:                  ; preds = %vector.ph260, %vector.ph304
  br label %.lr.ph.i104.preheader

vector.ph327:                                     ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @mbedtls_des_setkey(ptr noundef nonnull %2, ptr noundef nonnull readonly @des3_test_keys)
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.ir, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @des3_test_keys, i64 8))
  call void @mbedtls_des_setkey(ptr noundef nonnull %i.k, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @des3_test_keys, i64 16))
  %wide.vec330 = load <4 x i32>, ptr %i.iu, align 16, !tbaa !4
  %interleaved.vec335 = shufflevector <4 x i32> %wide.vec330, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec335, ptr %i.a, align 16, !tbaa !4
  %wide.vec336 = load <4 x i32>, ptr %i.iv, align 16, !tbaa !4
  %interleaved.vec341 = shufflevector <4 x i32> %wide.vec336, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec341, ptr %i.iw, align 16, !tbaa !4
  %wide.vec342 = load <4 x i32>, ptr %i.ix, align 16, !tbaa !4
  %interleaved.vec347 = shufflevector <4 x i32> %wide.vec342, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec347, ptr %i.iy, align 16, !tbaa !4
  %wide.vec330.1 = load <4 x i32>, ptr %i.iz, align 16, !tbaa !4
  %interleaved.vec335.1 = shufflevector <4 x i32> %wide.vec330.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec335.1, ptr %i.ja, align 16, !tbaa !4
  %wide.vec336.1 = load <4 x i32>, ptr %i.jb, align 16, !tbaa !4
  %interleaved.vec341.1 = shufflevector <4 x i32> %wide.vec336.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec341.1, ptr %i.jc, align 16, !tbaa !4
  %wide.vec342.1 = load <4 x i32>, ptr %i.jd, align 16, !tbaa !4
  %interleaved.vec347.1 = shufflevector <4 x i32> %wide.vec342.1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec347.1, ptr %i.je, align 16, !tbaa !4
  %wide.vec330.2 = load <4 x i32>, ptr %i.jf, align 16, !tbaa !4
  %interleaved.vec335.2 = shufflevector <4 x i32> %wide.vec330.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec335.2, ptr %i.jg, align 16, !tbaa !4
  %wide.vec336.2 = load <4 x i32>, ptr %i.jh, align 16, !tbaa !4
  %interleaved.vec341.2 = shufflevector <4 x i32> %wide.vec336.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec341.2, ptr %i.ji, align 16, !tbaa !4
  %wide.vec342.2 = load <4 x i32>, ptr %i.jj, align 16, !tbaa !4
  %interleaved.vec347.2 = shufflevector <4 x i32> %wide.vec342.2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec347.2, ptr %i.jk, align 16, !tbaa !4
  %wide.vec330.3 = load <4 x i32>, ptr %i.jl, align 16, !tbaa !4
  %interleaved.vec335.3 = shufflevector <4 x i32> %wide.vec330.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec335.3, ptr %i.jm, align 16, !tbaa !4
  %wide.vec336.3 = load <4 x i32>, ptr %i.jn, align 16, !tbaa !4
  %interleaved.vec341.3 = shufflevector <4 x i32> %wide.vec336.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec341.3, ptr %i.jo, align 16, !tbaa !4
  %wide.vec342.3 = load <4 x i32>, ptr %i.jp, align 16, !tbaa !4
  %interleaved.vec347.3 = shufflevector <4 x i32> %wide.vec342.3, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec347.3, ptr %i.jq, align 16, !tbaa !4
  %wide.vec330.4 = load <4 x i32>, ptr %i.jr, align 16, !tbaa !4
  %interleaved.vec335.4 = shufflevector <4 x i32> %wide.vec330.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec335.4, ptr %i.js, align 16, !tbaa !4
  %wide.vec336.4 = load <4 x i32>, ptr %i.jt, align 16, !tbaa !4
  %interleaved.vec341.4 = shufflevector <4 x i32> %wide.vec336.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec341.4, ptr %i.ju, align 16, !tbaa !4
  %wide.vec342.4 = load <4 x i32>, ptr %i.jv, align 16, !tbaa !4
  %interleaved.vec347.4 = shufflevector <4 x i32> %wide.vec342.4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec347.4, ptr %i.jw, align 16, !tbaa !4
  %wide.vec330.5 = load <4 x i32>, ptr %i.jx, align 16, !tbaa !4
  %interleaved.vec335.5 = shufflevector <4 x i32> %wide.vec330.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec335.5, ptr %i.jy, align 16, !tbaa !4
  %wide.vec336.5 = load <4 x i32>, ptr %i.jz, align 16, !tbaa !4
  %interleaved.vec341.5 = shufflevector <4 x i32> %wide.vec336.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec341.5, ptr %i.ka, align 16, !tbaa !4
  %wide.vec342.5 = load <4 x i32>, ptr %i.kb, align 16, !tbaa !4
  %interleaved.vec347.5 = shufflevector <4 x i32> %wide.vec342.5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec347.5, ptr %i.kc, align 16, !tbaa !4
  %wide.vec330.6 = load <4 x i32>, ptr %i.kd, align 16, !tbaa !4
  %interleaved.vec335.6 = shufflevector <4 x i32> %wide.vec330.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec335.6, ptr %i.ke, align 16, !tbaa !4
  %wide.vec336.6 = load <4 x i32>, ptr %i.kf, align 16, !tbaa !4
  %interleaved.vec341.6 = shufflevector <4 x i32> %wide.vec336.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec341.6, ptr %i.kg, align 16, !tbaa !4
  %wide.vec342.6 = load <4 x i32>, ptr %i.kh, align 16, !tbaa !4
  %interleaved.vec347.6 = shufflevector <4 x i32> %wide.vec342.6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec347.6, ptr %i.ki, align 16, !tbaa !4
  %wide.vec330.7 = load <4 x i32>, ptr %i.kj, align 16, !tbaa !4
  %interleaved.vec335.7 = shufflevector <4 x i32> %wide.vec330.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec335.7, ptr %i.kk, align 16, !tbaa !4
  %wide.vec336.7 = load <4 x i32>, ptr %i.kl, align 16, !tbaa !4
  %interleaved.vec341.7 = shufflevector <4 x i32> %wide.vec336.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec341.7, ptr %i.km, align 16, !tbaa !4
  %wide.vec342.7 = load <4 x i32>, ptr %2, align 16, !tbaa !4
  %interleaved.vec347.7 = shufflevector <4 x i32> %wide.vec342.7, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec347.7, ptr %i.kn, align 16, !tbaa !4
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 384) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.preheader46.i114.preheader.preheader

.preheader46.i.preheader.us.preheader:            ; preds = %bb.n
  call void @mbedtls_des_setkey(ptr noundef nonnull %1, ptr noundef nonnull @des3_test_keys)
  br label %.preheader46.i.preheader.us

.preheader46.i.preheader.us:                      ; preds = %.preheader46.i.preheader.us.preheader, %.preheader46.i.preheader.us
  %.0.copyload.i43.i.us = phi i64 [ %.sroa.02.0138.us, %.preheader46.i.preheader.us ], [ 8367815003007840078, %.preheader46.i.preheader.us.preheader ]
  %.sroa.02.0138.us = phi i64 [ %i.qt, %.preheader46.i.preheader.us ], [ -1167088091436534766, %.preheader46.i.preheader.us.preheader ] ; 3 uses
  %.263137.us = phi i32 [ %i.qu, %.preheader46.i.preheader.us ], [ 0, %.preheader46.i.preheader.us.preheader ]
  %i.qr = xor i64 %.0.copyload.i43.i.us, %.sroa.02.0138.us
  store i64 %i.qr, ptr %i.i, align 8
  %i.qs = call i32 @mbedtls_des_crypt_ecb(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) ; 0 uses
  %i.qt = load i64, ptr %i.i, align 8             ; 2 uses
  store i64 %.sroa.02.0138.us, ptr %i.i, align 8
  %i.qu = add nuw nsw i32 %.263137.us, 1          ; 2 uses
  %exitcond151.not = icmp eq i32 %i.qu, 100
  br i1 %exitcond151.not, label %.loopexit128.thread, label %.preheader46.i.preheader.us, !llvm.loop !21

.lr.ph.i.preheader.us.preheader:                  ; preds = %bb.n
  call void @mbedtls_des_setkey(ptr noundef nonnull %1, ptr noundef nonnull @des3_test_keys)
  %i.qv = load <4 x i32>, ptr %i.o, align 16, !tbaa !4
  %i.qw = shufflevector <4 x i32> %i.qv, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.qx = load <4 x i32>, ptr %1, align 16, !tbaa !4
  store <4 x i32> %i.qw, ptr %1, align 16, !tbaa !4
  %i.qy = shufflevector <4 x i32> %i.qx, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %i.qy, ptr %i.o, align 16, !tbaa !4
  %i.qz = load <4 x i32>, ptr %i.q, align 16, !tbaa !4
  %i.ra = shufflevector <4 x i32> %i.qz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.rb = load <4 x i32>, ptr %i.p, align 16, !tbaa !4
  store <4 x i32> %i.ra, ptr %i.p, align 16, !tbaa !4
  %i.rc = shufflevector <4 x i32> %i.rb, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %i.rc, ptr %i.q, align 16, !tbaa !4
  %i.rd = load <4 x i32>, ptr %i.s, align 16, !tbaa !4
  %i.re = shufflevector <4 x i32> %i.rd, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.rf = load <4 x i32>, ptr %i.r, align 16, !tbaa !4
  store <4 x i32> %i.re, ptr %i.r, align 16, !tbaa !4
  %i.rg = shufflevector <4 x i32> %i.rf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %i.rg, ptr %i.s, align 16, !tbaa !4
  %i.rh = load <4 x i32>, ptr %i.u, align 16, !tbaa !4
  %i.ri = shufflevector <4 x i32> %i.rh, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.rj = load <4 x i32>, ptr %i.t, align 16, !tbaa !4
  store <4 x i32> %i.ri, ptr %i.t, align 16, !tbaa !4
  %i.rk = shufflevector <4 x i32> %i.rj, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %i.rk, ptr %i.u, align 16, !tbaa !4
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %.lr.ph.i.preheader.us
  %.sroa.0.0.copyload.i.us = phi i64 [ %i.rm, %.lr.ph.i.preheader.us ], [ 8367815003007840078, %.lr.ph.i.preheader.us.preheader ]
  %.162142.us = phi i32 [ %i.rn, %.lr.ph.i.preheader.us ], [ 0, %.lr.ph.i.preheader.us.preheader ]
  %.sroa.0.0141.us = phi i64 [ %.sroa.0.0.copyload.i.us, %.lr.ph.i.preheader.us ], [ -1167088091436534766, %.lr.ph.i.preheader.us.preheader ]
  %i.rl = call i32 @mbedtls_des_crypt_ecb(ptr noundef nonnull readonly %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) ; 0 uses
  %.0.copyload.i45.i.us = load i64, ptr %i.i, align 8
  %i.rm = xor i64 %.0.copyload.i45.i.us, %.sroa.0.0141.us ; 2 uses
  store i64 %i.rm, ptr %i.i, align 8
  %i.rn = add nuw nsw i32 %.162142.us, 1          ; 2 uses
  %exitcond153.not = icmp eq i32 %i.rn, 100
  br i1 %exitcond153.not, label %.critedge, label %.lr.ph.i.preheader.us, !llvm.loop !22

.lr.ph.i104.preheader:                            ; preds = %.lr.ph.i104.preheader.preheader, %.lr.ph.i104.preheader
  %.sroa.0.0.copyload.i108 = phi i64 [ %i.rp, %.lr.ph.i104.preheader ], [ 8367815003007840078, %.lr.ph.i104.preheader.preheader ]
  %.162142 = phi i32 [ %i.rq, %.lr.ph.i104.preheader ], [ 0, %.lr.ph.i104.preheader.preheader ]
  %.sroa.0.0141 = phi i64 [ %.sroa.0.0.copyload.i108, %.lr.ph.i104.preheader ], [ -1167088091436534766, %.lr.ph.i104.preheader.preheader ]
  %i.ro = call i32 @mbedtls_des3_crypt_ecb(ptr noundef nonnull readonly %2, ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) ; 0 uses
  %.0.copyload.i45.i109 = load i64, ptr %i.i, align 8
  %i.rp = xor i64 %.0.copyload.i45.i109, %.sroa.0.0141 ; 2 uses
  store i64 %i.rp, ptr %i.i, align 8
  %i.rq = add nuw nsw i32 %.162142, 1             ; 2 uses
  %exitcond152.not = icmp eq i32 %i.rq, 100
  br i1 %exitcond152.not, label %.critedge, label %.lr.ph.i104.preheader, !llvm.loop !22

.preheader46.i114.preheader:                      ; preds = %.preheader46.i114.preheader.preheader, %.preheader46.i114.preheader
  %.0.copyload.i43.i119 = phi i64 [ %.sroa.02.0138, %.preheader46.i114.preheader ], [ 8367815003007840078, %.preheader46.i114.preheader.preheader ]
  %.sroa.02.0138 = phi i64 [ %i.rt, %.preheader46.i114.preheader ], [ -1167088091436534766, %.preheader46.i114.preheader.preheader ] ; 3 uses
  %.263137 = phi i32 [ %i.ru, %.preheader46.i114.preheader ], [ 0, %.preheader46.i114.preheader.preheader ]
  %i.rr = xor i64 %.0.copyload.i43.i119, %.sroa.02.0138
  store i64 %i.rr, ptr %i.i, align 8
  %i.rs = call i32 @mbedtls_des3_crypt_ecb(ptr noundef nonnull readonly %2, ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) ; 0 uses
  %i.rt = load i64, ptr %i.i, align 8             ; 2 uses
  store i64 %.sroa.02.0138, ptr %i.i, align 8
  %i.ru = add nuw nsw i32 %.263137, 1             ; 2 uses
  %exitcond150.not = icmp eq i32 %i.ru, 100
  br i1 %exitcond150.not, label %.loopexit128.thread, label %.preheader46.i114.preheader, !llvm.loop !21

.loopexit128.thread:                              ; preds = %.preheader46.i114.preheader, %.preheader46.i.preheader.us
  %.us-phi = phi i64 [ %i.qt, %.preheader46.i.preheader.us ], [ %i.rt, %.preheader46.i114.preheader ] ; 2 uses
  store i64 %.us-phi, ptr %i.i, align 8
  %i.rv = zext nneg i32 %i.qi to i64
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr @des3_test_cbc_enc, i64 %i.rv
  %rhsv354 = load i64, ptr %i.rw, align 8
  %.not355 = icmp eq i64 %.us-phi, %rhsv354
  br i1 %.not355, label %.thread, label %bb.o

.critedge:                                        ; preds = %.lr.ph.i104.preheader, %.lr.ph.i.preheader.us
  %i.rx = zext nneg i32 %i.qi to i64
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr @des3_test_cbc_dec, i64 %i.rx
  %lhsv356 = load i64, ptr %i.i, align 8
  %rhsv357 = load i64, ptr %i.ry, align 8
  %.not358 = icmp eq i64 %lhsv356, %rhsv357
  br i1 %.not358, label %.thread, label %bb.o

bb.o:                                             ; preds = %.loopexit128.thread, %.critedge
  br i1 %.not76, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %puts74 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %.loopexit

.thread:                                          ; preds = %.critedge, %.loopexit128.thread
  br i1 %.not76, label %bb.q, label %.thread166

bb.q:                                             ; preds = %.thread
  %i.rz = add nuw nsw i32 %.165143, 1             ; 2 uses
  %exitcond154.not = icmp eq i32 %i.rz, 6
  br i1 %exitcond154.not, label %.loopexit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.q, %.thread166
  %.165143.be = phi i32 [ %i.rz, %bb.q ], [ %i.sa, %.thread166 ]
  br label %.backedge, !llvm.loop !23

.thread166:                                       ; preds = %.thread
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.sa = add nuw nsw i32 %.165143, 1             ; 2 uses
  %exitcond154.not167 = icmp eq i32 %i.sa, 6
  br i1 %exitcond154.not167, label %bb.r, label %.backedge.backedge

bb.r:                                             ; preds = %.thread166
  %putchar68 = call i32 @putchar(i32 10)          ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.o, %bb.p, %bb.h, %bb.i, %bb.r
  %.not84 = phi i32 [ 1, %bb.i ], [ 0, %bb.r ], [ 1, %bb.h ], [ 1, %bb.p ], [ 1, %bb.o ], [ 0, %bb.q ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %1, i64 noundef 128) #11
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %2, i64 noundef 384) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i32 %.not84

default.unreachable:                              ; preds = %bb.c
  unreachable

default.unreachable125:                           ; preds = %bb.n
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
end_hunk_1
