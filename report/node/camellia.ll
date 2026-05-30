inline.NumInlined: 22
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_camellia_context = type { i32, [68 x i32] }

@indexes = internal unnamed_addr constant [2 x [4 x [20 x i8]]] [[4 x [20 x i8]] [[20 x i8] c"\00\01\02\03\08\09\0A\0B&'$%\17\14\15\16\1B\FF\FF\1A", [20 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [20 x i8] c"\04\05\06\07\0C\0D\0E\0F\10\11\12\13\FF\18\19\FF\1F\1C\1D\1E", [20 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF"], [4 x [20 x i8]] [[20 x i8] c"\00\01\02\03=>?<\FF\FF\FF\FF\1B\18\19\1A# !\22", [20 x i8] c"\FF\FF\FF\FF\08\09\0A\0B\10\11\12\13\FF\FF\FF\FF'$%&", [20 x i8] c"\FF\FF\FF\FF\0C\0D\0E\0F:;89\1F\1C\1D\1E\FF\FF\FF\FF", [20 x i8] c"\04\05\06\07ABC@\14\15\16\17\FF\FF\FF\FF+()*"]], align 16
@transposes = internal unnamed_addr constant [2 x [20 x i8]] [[20 x i8] c"\15\16\17\14\FF\FF\FF\FF\12\13\10\11\0B\08\09\0A\0F\0C\0D\0E", [20 x i8] c"\19\1A\1B\18\1D\1E\1F\1C\12\13\10\11\FF\FF\FF\FF\FF\FF\FF\FF"], align 16
@.str = private unnamed_addr constant [26 x i8] c"  CAMELLIA-ECB-%3d (%s): \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@camellia_test_ecb_cipher = internal unnamed_addr constant [3 x [2 x [16 x i8]]] [[2 x [16 x i8]] [[16 x i8] c"gg18T\96is\08W\06VH\EA\BEC", [16 x i8] c"8<l*\AB\EF\7F\DE%\CDG\0B\F7t\A31"], [2 x [16 x i8]] [[16 x i8] c"\B4\994\01\B3\E9\96\F8N\E5\CE\E7\D7\9B\09\B9", [16 x i8] c"\D1v?\C0\19\D7|\C90\BF\F2\A5o|\93d"], [2 x [16 x i8]] [[16 x i8] c"\9A\CC#}\FF\16\D7l \EF|\91\9E:u\09", [16 x i8] c"\05\03\FB\10\AB$\1E|\F4]\8C\DE\EEGC5"]], align 16
@.str.6 = private unnamed_addr constant [26 x i8] c"  CAMELLIA-CBC-%3d (%s): \00", align 1
@camellia_test_cbc_iv = internal unnamed_addr constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@camellia_test_cbc_cipher = internal unnamed_addr constant [3 x [3 x [16 x i8]]] [[3 x [16 x i8]] [[16 x i8] c"\16\07\CFIK6\BB\F0\0D\AE\B0\B5\03\C81\AB", [16 x i8] c"\A2\F2\CFg\16)\EFx@\C5\A5\DF\B5\07H\87", [16 x i8] c"\0F\06\16P\08\CF\8B\8BZcXcbT>T"], [3 x [16 x i8]] [[16 x i8] c"*H0\ABZ\C4\A1\A2@YU\FD!\95\CF\93", [16 x i8] c"]Z\86\9B\D1L\E5Bd\F8\92\A6\DD.\C3\D5", [16 x i8] c"7\D3Y\C34\986\D8\84\E3\10\AD\DFh\C4I"], [3 x [16 x i8]] [[16 x i8] c"\E6\CF\A3_\C0+\13JM,\0Bg7\AC>\DA", [16 x i8] c"6\CB\EBs\BDPK@p\B1\B7\DE+!\EBP", [16 x i8] c"\E3\1A`U)}\96\CA30\CD\F1\B1\86\0A\83"]], align 16
@camellia_test_cbc_plain = internal unnamed_addr constant [3 x [16 x i8]] [[16 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*", [16 x i8] c"\AE-\8AW\1E\03\AC\9C\9E\B7o\ACE\AF\8EQ", [16 x i8] c"0\C8\1CF\A3\\\E4\11\E5\FB\C1\19\1A\0AR\EF"], align 16
@.str.7 = private unnamed_addr constant [26 x i8] c"  CAMELLIA-CTR-128 (%s): \00", align 1
@camellia_test_ctr_nonce_counter = internal unnamed_addr constant [3 x [16 x i8]] [[16 x i8] c"\00\00\000\00\00\00\00\00\00\00\00\00\00\00\01", [16 x i8] c"\00l\B6\DB\C0T;Y\DAH\D9\0B\00\00\00\01", [16 x i8] c"\00\E0\01{'w\7F?J\17\86\F0\00\00\00\01"], align 16
@camellia_test_ctr_key = internal unnamed_addr constant [3 x [16 x i8]] [[16 x i8] c"\AEhR\F8\12\10g\CCK\F7\A5vUw\F3\9E", [16 x i8] c"~$\06x\17\FA\E0\D7C\D6\CE\1F2S\91c", [16 x i8] c"v\91\BE\03^P \A8\ACna\85)\F9\A0\DC"], align 16
@camellia_test_ctr_len = internal unnamed_addr constant [3 x i32] [i32 16, i32 32, i32 36], align 4
@FSb = internal unnamed_addr constant [256 x i8] c"p\82,\EC\B3'\C0\E5\E4\85W5\EA\0C\AEA#\EFk\93E\19\A5!\ED\0EON\1De\92\BD\86\B8\AF\8F|\EB\1F\CE>0\DC_^\C5\0B\1A\A6\E19\CA\D5G]=\D9\01Z\D6QVlM\8B\0D\9Af\FB\CC\B0-t\12+ \F0\B1\84\99\DFL\CB\C24~v\05m\B7\A91\D1\17\04\D7\14X:a\DE\1B\11\1C2\0F\9C\16S\18\F2\22\FED\CF\B2\C3\B5z\91$\08\E8\A8`\FCiP\AA\D0\A0}\A1\89b\97T[\1E\95\E0\FFd\D2\10\C4\00H\A3\F7u\DB\8A\03\E6\DA\09?\DD\94\87\\\83\02\CDJ\903sg\F6\F3\9D\7F\BF\E2R\9B\D8&\C87\C6;\81\96oK\13\BEc.\E9y\A7\8C\9Fn\BC\8E)\F5\F9\B6/\FD\B4Yx\98\06j\E7Fq\BA\D4%\ABB\88\A2\8D\FAr\07\B9U\F8\EE\AC\0A6I*h<8\F1\A4@(\D3{\BB\C9C\C1\15\E3\AD\F4w\C7\80\9E", align 16
@FSb2 = internal unnamed_addr constant [256 x i8] c"\E0\05X\D9gN\81\CB\C9\0B\AEj\D5\18]\82F\DF\D6'\8A2KB\DB\1C\9E\9C:\CA%{\0Dq_\1F\F8\D7>\9D|`\B9\BE\BC\8B\164M\C3r\95\AB\8E\BAz\B3\02\B4\AD\A2\AC\D8\9A\17\1A5\CC\F7\99aZ\E8$V@\E1c\093\BF\98\97\85h\FC\EC\0A\DAoSb\A3.\08\AF(\B0t\C2\BD6\228d\1E9,\A60\E5D\FD\88\9Fe\87k\F4#H\10\D1Q\C0\F9\D2\A0U\A1A\FAC\13\C4/\A8\B6<+\C1\FF\C8\A5 \89\00\90G\EF\EA\B7\15\06\CD\B5\12~\BB)\0F\B8\07\04\9B\94!f\E6\CE\ED\E7;\FE\7F\C5\A47\B1L\91n\8Dv\03-\DE\96&}\C6\\\D3\F2O\19?\DCy\1DR\EB\F3m^\FBi\B2\F01\0C\D4\CF\8C\E2u\A9JW\84\11E\1B\F5\E4\0Es\AA\F1\DDY\14l\92T\D0xp\E3I\80P\A7\F6w\93\86\83*\C7[\E9\EE\8F\01=", align 16
@FSb3 = internal unnamed_addr constant [256 x i8] c"8A\16v\D9\93`\F2r\C2\AB\9Au\06W\A0\91\F7\B5\C9\A2\8C\D2\90\F6\07\A7'\8E\B2I\DEC\\\D7\C7>\F5\8Fg\1F\18n\AF/\E2\85\0DS\F0\9Ce\EA\A3\AE\9E\EC\80-k\A8+6\A6\C5\86M3\FDfX\96:\09\95\10x\D8B\CC\EF&\E5a\1A?;\82\B6\DB\D4\98\E8\8B\02\EB\0A,\1D\B0o\8D\88\0E\19\87N\0B\A9\0Cy\11\7F\22\E7Y\E1\DA=\C8\12\04tT0~\B4(UhP\BE\D0\C41\CB*\AD\0F\CAp\FF2i\08b\00$\D1\FB\BA\EDE\81sm\84\9F\EEJ\C3.\C1\01\E6%H\99\B9\B3{\F9\CE\BF\DFq)\CDl\13d\9Bc\9D\C0K\B7\A5\89_\B1\17\F4\BC\D3F\CF7^G\94\FA\FC[\97\FEZ\AC<L\035\F3#\B8]j\92\D5!DQ\C6}9\83\DC\AA|wV\05\1B\A4\154\1E\1C\F8R \14\E9\BD\DD\E4\A1\E0\8A\F1\D6z\BB\E3@O", align 16
@FSb4 = internal unnamed_addr constant [256 x i8] c"p,\B3\C0\E4W\EA\AE#kE\A5\EDO\1D\92\86\AF|\1F>\DC^\0B\A69\D5]\D9ZQl\8B\9A\FB\B0t+\F0\84\DF\CB4vm\A9\D1\04\14:\DE\112\9CS\F2\FE\CF\C3z$\E8`i\AA\A0\A1bT\1E\E0d\10\00\A3u\8A\E6\09\DD\87\83\CD\90s\F6\9D\BFR\D8\C8\C6\81o\13c\E9\A7\9F\BC)\F9/\B4x\06\E7q\D4\AB\88\8Dr\B9\F8\AC6*<\F1@\D3\BBC\15\ADw\80\82\EC'\E5\855\0CA\EF\93\19!\0ENe\BD\B8\8F\EB\CE0_\C5\1A\E1\CAG=\01\D6VM\0Df\CC-\12 \B1\99L\C2~\05\B71\17\D7Xa\1B\1C\0F\16\18\22D\B2\B5\91\08\A8\FCP\D0}\89\97[\95\FF\D2\C4H\F7\DB\03\DA?\94\\\02J3g\F3\7F\E2\9B&7;\96K\BE.y\8Cn\8E\F5\B6\FDY\98jF\BA%B\A2\FA\07U\EE\0AIh8\A4({\C9\C1\E3\F4\C7\9E", align 16
@camellia_test_ecb_key = internal unnamed_addr constant <{ <{ <{ [16 x i8], [16 x i8] }>, [32 x i8] }>, <{ <{ [24 x i8], [8 x i8] }>, [32 x i8] }>, [2 x [32 x i8]] }> <{ <{ <{ [16 x i8], [16 x i8] }>, [32 x i8] }> <{ <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\01#Eg\89\AB\CD\EF\FE\DC\BA\98vT2\10", [16 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }>, <{ <{ [24 x i8], [8 x i8] }>, [32 x i8] }> <{ <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c"\01#Eg\89\AB\CD\EF\FE\DC\BA\98vT2\10\00\11\223DUfw", [8 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }>, [2 x [32 x i8]] [[32 x i8] c"\01#Eg\89\AB\CD\EF\FE\DC\BA\98vT2\10\00\11\223DUfw\88\99\AA\BB\CC\DD\EE\FF", [32 x i8] zeroinitializer] }>, align 16
@camellia_test_ecb_plain = internal unnamed_addr constant <{ [16 x i8], <{ i8, i8, i8, i8, i8, [11 x i8] }> }> <{ [16 x i8] c"\01#Eg\89\AB\CD\EF\FE\DC\BA\98vT2\10", <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 0, i8 0, i8 0, i8 0, i8 2, [11 x i8] zeroinitializer }> }>, align 16
@camellia_test_cbc_key = internal unnamed_addr constant <{ <{ [16 x i8], [16 x i8] }>, <{ [24 x i8], [8 x i8] }>, [32 x i8] }> <{ <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", [16 x i8] zeroinitializer }>, <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c"\8Es\B0\F7\DA\0EdR\C8\10\F3+\80\90y\E5b\F8\EA\D2R,k{", [8 x i8] zeroinitializer }>, [32 x i8] c"`=\EB\10\15\CAq\BE+s\AE\F0\85}w\81\1F5,\07;a\08\D7-\98\10\A3\09\14\DF\F4" }>, align 16
@camellia_test_ctr_ct = internal constant <{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }> <{ <{ [16 x i8], [32 x i8] }> <{ [16 x i8] c"\D0\9D\C2\9A\82\14a\9A \87|v\DB\1F\0B?", [32 x i8] zeroinitializer }>, <{ [32 x i8], [16 x i8] }> <{ [32 x i8] c"\DB\F3\C7\8D\C0\83\96\D4\DA|\90we\BB\CBD+\8E\8E\0F1\F0\DC\A7,t\17\E3S`\E0H", [16 x i8] zeroinitializer }>, <{ [36 x i8], [12 x i8] }> <{ [36 x i8] c"\B1\9D\1F\CD\CBu\EB\88/\84\9C\E2M\85\CFs\9C\E6K+\\\9Ds\F1O-]\9D\CE\98\89\CD\DFP\86\96", [12 x i8] zeroinitializer }> }>, align 16
@camellia_test_ctr_pt = internal constant <{ <{ [16 x i8], [32 x i8] }>, <{ [32 x i8], [16 x i8] }>, <{ [36 x i8], [12 x i8] }> }> <{ <{ [16 x i8], [32 x i8] }> <{ [16 x i8] c"Single block msg", [32 x i8] zeroinitializer }>, <{ [32 x i8], [16 x i8] }> <{ [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", [16 x i8] zeroinitializer }>, <{ [36 x i8], [12 x i8] }> <{ [36 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#", [12 x i8] zeroinitializer }> }>, align 16
@str.5 = private unnamed_addr constant [7 x i8] c"passed\00", align 1
@str.6 = private unnamed_addr constant [7 x i8] c"failed\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @mbedtls_camellia_init(ptr noundef writeonly captures(none) initializes((0, 276)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(276) %0, i8 0, i64 276, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @mbedtls_camellia_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 276) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -36, 1) i32 @mbedtls_camellia_setkey_enc(ptr noundef captures(none) initializes((4, 276)) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 88 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(272) %i.b, i8 0, i64 272, i1 false)
  switch i32 %2, label %.loopexit [
    i32 128, label %.thread
    i32 192, label %bb.b
    i32 256, label %bb.b
  ]

.thread:                                          ; preds = %bb.a
  store i32 3, ptr %0, align 4, !tbaa !8
  br label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a, %bb.a
  store i32 4, ptr %0, align 4, !tbaa !8
  %i.c = lshr i32 %2, 3
  %i.d = zext nneg i32 %i.c to i64
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %.thread
  %i.e = phi i64 [ 16, %.thread ], [ %i.d, %bb.b ]
  %.0150448 = phi i32 [ 0, %.thread ], [ 1, %bb.b ] ; 4 uses
  %.not160.1.not446 = phi i1 [ true, %.thread ], [ false, %bb.b ] ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %1, i64 %i.e, i1 false), !tbaa !10
  %i.f = icmp eq i32 %2, 192
  br i1 %i.f, label %.preheader194.preheader, label %.loopexit195

.preheader194.preheader:                          ; preds = %.lr.ph.preheader
  %.16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16. = load <8 x i8>, ptr %.16..16..sroa_idx, align 16, !tbaa !10
  %i.g = xor <8 x i8> %.16., splat (i8 -1)
  %.24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <8 x i8> %i.g, ptr %.24..24..sroa_idx, align 8, !tbaa !10
  br label %.loopexit195

.loopexit195:                                     ; preds = %.preheader194.preheader, %.lr.ph.preheader
  %.0..0..0.copyload.i = load i32, ptr %i.a, align 16
  %i.h = tail call i32 @llvm.bswap.i32(i32 %.0..0..0.copyload.i) ; 11 uses
  %.4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.4..4..0.copyload.i.1 = load i32, ptr %.4..4..sroa_idx, align 4
  %i.i = tail call i32 @llvm.bswap.i32(i32 %.4..4..0.copyload.i.1) ; 10 uses
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.8..8..0.copyload.i.2 = load i32, ptr %.8..8..sroa_idx, align 8
  %i.j = tail call i32 @llvm.bswap.i32(i32 %.8..8..0.copyload.i.2) ; 11 uses
  %.12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.12..12..0.copyload.i.3 = load i32, ptr %.12..12..sroa_idx, align 4
  %i.k = tail call i32 @llvm.bswap.i32(i32 %.12..12..0.copyload.i.3) ; 10 uses
  %.16..16..sroa_idx1040 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..0.copyload.i.4 = load i32, ptr %.16..16..sroa_idx1040, align 16
  %i.l = tail call i32 @llvm.bswap.i32(i32 %.16..16..0.copyload.i.4) ; 8 uses
  %.20..20..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.20..20..0.copyload.i.5 = load i32, ptr %.20..20..sroa_idx, align 4
  %i.m = tail call i32 @llvm.bswap.i32(i32 %.20..20..0.copyload.i.5) ; 8 uses
  %.24..24..sroa_idx1041 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.24..24..0.copyload.i.6 = load i32, ptr %.24..24..sroa_idx1041, align 8
  %i.n = tail call i32 @llvm.bswap.i32(i32 %.24..24..0.copyload.i.6) ; 8 uses
  %.28..28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.28..28..0.copyload.i.7 = load i32, ptr %.28..28..sroa_idx, align 4
  %i.o = tail call i32 @llvm.bswap.i32(i32 %.28..28..0.copyload.i.7) ; 8 uses
  %i.p = xor i32 %i.l, %i.h                       ; 2 uses
  %i.q = xor i32 %i.m, %i.i
  %i.r = xor i32 %i.o, %i.k
  %i.s = xor i32 %i.p, -1600231809                ; 4 uses
  %i.t = xor i32 %i.q, 1003262091                 ; 4 uses
  %i.u = lshr i32 %i.s, 24
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !10
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw i32 %i.y, 24
  %i.aa = lshr i32 %i.s, 16
  %i.ab = and i32 %i.aa, 255
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @FSb2, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 16
  %i.ah = or disjoint i32 %i.ag, %i.z
  %i.ai = lshr i32 %i.s, 8
  %i.aj = and i32 %i.ai, 255
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @FSb3, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 8
  %i.ap = or disjoint i32 %i.ah, %i.ao
  %i.aq = and i32 %i.s, 255
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @FSb4, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.ap, %i.au
  %i.aw = lshr i32 %i.t, 24
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @FSb2, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw i32 %i.ba, 24
  %i.bc = lshr i32 %i.t, 16
  %i.bd = and i32 %i.bc, 255
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @FSb3, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !10
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 16
  %i.bj = or disjoint i32 %i.bi, %i.bb
  %i.bk = lshr i32 %i.t, 8
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @FSb4, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !10
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 8
  %i.br = or disjoint i32 %i.bj, %i.bq
  %i.bs = and i32 %i.t, 255
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !10
  %i.bw = zext i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.br, %i.bw            ; 3 uses
  %i.by = tail call i32 @llvm.fshl.i32(i32 %i.bx, i32 %i.bx, i32 8)
  %i.bz = xor i32 %i.by, %i.av                    ; 3 uses
  %i.ca = tail call i32 @llvm.fshl.i32(i32 %i.bz, i32 %i.bz, i32 16)
  %i.cb = xor i32 %i.ca, %i.bx                    ; 3 uses
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 24)
  %i.cd = xor i32 %i.cc, %i.bz                    ; 5 uses
  %i.ce = tail call i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 24)
  %i.cf = xor i32 %i.j, %i.ce
  %i.cg = xor i32 %i.cf, %i.n
  %i.ch = xor i32 %i.cg, %i.cb                    ; 2 uses
  %i.ci = xor i32 %i.cd, %i.r
  %i.cj = xor i32 %i.ch, -1233459112              ; 4 uses
  %i.ck = xor i32 %i.ci, 1286239154               ; 4 uses
  %i.cl = lshr i32 %i.cj, 24
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !10
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl nuw i32 %i.cp, 24
  %i.cr = lshr i32 %i.cj, 16
  %i.cs = and i32 %i.cr, 255
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @FSb2, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !10
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, 16
  %i.cy = or disjoint i32 %i.cx, %i.cq
  %i.cz = lshr i32 %i.cj, 8
  %i.da = and i32 %i.cz, 255
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @FSb3, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !10
  %i.de = zext i8 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 8
  %i.dg = or disjoint i32 %i.cy, %i.df
  %i.dh = and i32 %i.cj, 255
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @FSb4, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !10
  %i.dl = zext i8 %i.dk to i32
  %i.dm = or disjoint i32 %i.dg, %i.dl
  %i.dn = lshr i32 %i.ck, 24
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @FSb2, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !10
  %i.dr = zext i8 %i.dq to i32
  %i.ds = shl nuw i32 %i.dr, 24
  %i.dt = lshr i32 %i.ck, 16
  %i.du = and i32 %i.dt, 255
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr @FSb3, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !10
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 16
  %i.ea = or disjoint i32 %i.dz, %i.ds
  %i.eb = lshr i32 %i.ck, 8
  %i.ec = and i32 %i.eb, 255
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @FSb4, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !10
  %i.eg = zext i8 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 8
  %i.ei = or disjoint i32 %i.ea, %i.eh
  %i.ej = and i32 %i.ck, 255
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !10
  %i.en = zext i8 %i.em to i32
  %i.eo = or disjoint i32 %i.ei, %i.en            ; 3 uses
  %i.ep = tail call i32 @llvm.fshl.i32(i32 %i.eo, i32 %i.eo, i32 8)
  %i.eq = xor i32 %i.ep, %i.dm                    ; 3 uses
  %i.er = tail call i32 @llvm.fshl.i32(i32 %i.eq, i32 %i.eq, i32 16)
  %i.es = xor i32 %i.er, %i.eo                    ; 3 uses
  %i.et = tail call i32 @llvm.fshl.i32(i32 %i.es, i32 %i.es, i32 24)
  %i.eu = xor i32 %i.et, %i.eq                    ; 4 uses
  %i.ev = tail call i32 @llvm.fshl.i32(i32 %i.eu, i32 %i.eu, i32 24)
  %i.ew = xor i32 %i.p, %i.ev
  %i.ex = xor i32 %i.ew, %i.es
  %i.ey = xor i32 %i.ex, %i.h                     ; 2 uses
  %i.ez = xor i32 %i.eu, %i.m                     ; 2 uses
  %i.fa = xor i32 %i.cd, %i.o
  %i.fb = xor i32 %i.ey, -957401297               ; 4 uses
  %i.fc = xor i32 %i.ez, -380665154               ; 4 uses
  %i.fd = lshr i32 %i.fb, 24
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !10
  %i.fh = zext i8 %i.fg to i32
  %i.fi = shl nuw i32 %i.fh, 24
  %i.fj = lshr i32 %i.fb, 16
  %i.fk = and i32 %i.fj, 255
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @FSb2, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !10
  %i.fo = zext i8 %i.fn to i32
  %i.fp = shl nuw nsw i32 %i.fo, 16
  %i.fq = or disjoint i32 %i.fp, %i.fi
  %i.fr = lshr i32 %i.fb, 8
  %i.fs = and i32 %i.fr, 255
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @FSb3, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !10
end_hunk_0
begin_hunk_1_@mbedtls_camellia_setkey_enc:bb.a
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr @FSb4, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !10
  %i.jp = zext i8 %i.jo to i32
  %i.jq = shl nuw nsw i32 %i.jp, 8
  %i.jr = or disjoint i32 %i.jj, %i.jq
  %i.js = and i32 %i.ht, 255
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !10
  %i.jw = zext i8 %i.jv to i32
  %i.jx = or disjoint i32 %i.jr, %i.jw            ; 3 uses
  %i.jy = tail call i32 @llvm.fshl.i32(i32 %i.jx, i32 %i.jx, i32 8)
  %i.jz = xor i32 %i.jy, %i.iv                    ; 3 uses
  %i.ka = tail call i32 @llvm.fshl.i32(i32 %i.jz, i32 %i.jz, i32 16)
  %i.kb = xor i32 %i.ka, %i.jx                    ; 3 uses
  %i.kc = tail call i32 @llvm.fshl.i32(i32 %i.kb, i32 %i.kb, i32 24)
  %i.kd = xor i32 %i.kc, %i.jz                    ; 4 uses
  %i.ke = tail call i32 @llvm.fshl.i32(i32 %i.kd, i32 %i.kd, i32 24)
  %i.kf = xor i32 %i.ey, %i.ke
  %i.kg = xor i32 %i.kf, %i.kb                    ; 10 uses
  %i.kh = xor i32 %i.kd, %i.ez                    ; 9 uses
  %i.ki = icmp samesign ugt i32 %2, 128           ; 3 uses
  br i1 %i.ki, label %.preheader192.preheader, label %bb.c

.preheader192.preheader:                          ; preds = %.loopexit195
  %i.kj = xor i32 %i.kg, %i.l                     ; 2 uses
  %i.kk = xor i32 %i.kd, %i.eu                    ; 2 uses
  %i.kl = xor i32 %i.hm, %i.cd
  %i.km = xor i32 %i.kj, 283453434                ; 4 uses
  %i.kn = xor i32 %i.kk, -563598051               ; 4 uses
  %i.ko = lshr i32 %i.km, 24
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !10
  %i.ks = zext i8 %i.kr to i32
  %i.kt = shl nuw i32 %i.ks, 24
  %i.ku = lshr i32 %i.km, 16
  %i.kv = and i32 %i.ku, 255
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr @FSb2, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !10
  %i.kz = zext i8 %i.ky to i32
  %i.la = shl nuw nsw i32 %i.kz, 16
  %i.lb = or disjoint i32 %i.la, %i.kt
  %i.lc = lshr i32 %i.km, 8
  %i.ld = and i32 %i.lc, 255
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr @FSb3, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !10
  %i.lh = zext i8 %i.lg to i32
  %i.li = shl nuw nsw i32 %i.lh, 8
  %i.lj = or disjoint i32 %i.lb, %i.li
  %i.lk = and i32 %i.km, 255
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr @FSb4, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !10
  %i.lo = zext i8 %i.ln to i32
  %i.lp = or disjoint i32 %i.lj, %i.lo
  %i.lq = lshr i32 %i.kn, 24
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr @FSb2, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !10
  %i.lu = zext i8 %i.lt to i32
  %i.lv = shl nuw i32 %i.lu, 24
  %i.lw = lshr i32 %i.kn, 16
  %i.lx = and i32 %i.lw, 255
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr @FSb3, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !10
  %i.mb = zext i8 %i.ma to i32
  %i.mc = shl nuw nsw i32 %i.mb, 16
  %i.md = or disjoint i32 %i.mc, %i.lv
  %i.me = lshr i32 %i.kn, 8
  %i.mf = and i32 %i.me, 255
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr @FSb4, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !10
  %i.mj = zext i8 %i.mi to i32
  %i.mk = shl nuw nsw i32 %i.mj, 8
  %i.ml = or disjoint i32 %i.md, %i.mk
  %i.mm = and i32 %i.kn, 255
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !10
  %i.mq = zext i8 %i.mp to i32
  %i.mr = or disjoint i32 %i.ml, %i.mq            ; 3 uses
  %i.ms = tail call i32 @llvm.fshl.i32(i32 %i.mr, i32 %i.mr, i32 8)
  %i.mt = xor i32 %i.ms, %i.lp                    ; 3 uses
  %i.mu = tail call i32 @llvm.fshl.i32(i32 %i.mt, i32 %i.mt, i32 16)
  %i.mv = xor i32 %i.mu, %i.mr                    ; 3 uses
  %i.mw = tail call i32 @llvm.fshl.i32(i32 %i.mv, i32 %i.mv, i32 24)
  %i.mx = xor i32 %i.mw, %i.mt                    ; 3 uses
  %i.my = tail call i32 @llvm.fshl.i32(i32 %i.mx, i32 %i.mx, i32 24)
  %i.mz = xor i32 %i.n, %i.my
  %i.na = xor i32 %i.mz, %i.hq
  %i.nb = xor i32 %i.na, %i.mv                    ; 2 uses
  %i.nc = xor i32 %i.mx, %i.kl                    ; 2 uses
  %i.nd = xor i32 %i.nb, -1336506174              ; 4 uses
  %i.ne = xor i32 %i.nc, -1276722691              ; 4 uses
  %i.nf = lshr i32 %i.nd, 24
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.ng
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !10
  %i.nj = zext i8 %i.ni to i32
  %i.nk = shl nuw i32 %i.nj, 24
  %i.nl = lshr i32 %i.nd, 16
  %i.nm = and i32 %i.nl, 255
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw i8, ptr @FSb2, i64 %i.nn
  %i.np = load i8, ptr %i.no, align 1, !tbaa !10
  %i.nq = zext i8 %i.np to i32
  %i.nr = shl nuw nsw i32 %i.nq, 16
  %i.ns = or disjoint i32 %i.nr, %i.nk
  %i.nt = lshr i32 %i.nd, 8
  %i.nu = and i32 %i.nt, 255
  %i.nv = zext nneg i32 %i.nu to i64
  %i.nw = getelementptr inbounds nuw i8, ptr @FSb3, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !10
  %i.ny = zext i8 %i.nx to i32
  %i.nz = shl nuw nsw i32 %i.ny, 8
  %i.oa = or disjoint i32 %i.ns, %i.nz
  %i.ob = and i32 %i.nd, 255
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw i8, ptr @FSb4, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !10
  %i.of = zext i8 %i.oe to i32
  %i.og = or disjoint i32 %i.oa, %i.of
  %i.oh = lshr i32 %i.ne, 24
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr @FSb2, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !10
  %i.ol = zext i8 %i.ok to i32
  %i.om = shl nuw i32 %i.ol, 24
  %i.on = lshr i32 %i.ne, 16
  %i.oo = and i32 %i.on, 255
  %i.op = zext nneg i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr @FSb3, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !10
  %i.os = zext i8 %i.or to i32
  %i.ot = shl nuw nsw i32 %i.os, 16
  %i.ou = or disjoint i32 %i.ot, %i.om
  %i.ov = lshr i32 %i.ne, 8
  %i.ow = and i32 %i.ov, 255
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr @FSb4, i64 %i.ox
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !10
  %i.pa = zext i8 %i.oz to i32
  %i.pb = shl nuw nsw i32 %i.pa, 8
  %i.pc = or disjoint i32 %i.ou, %i.pb
  %i.pd = and i32 %i.ne, 255
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !10
  %i.ph = zext i8 %i.pg to i32
  %i.pi = or disjoint i32 %i.pc, %i.ph            ; 3 uses
  %i.pj = tail call i32 @llvm.fshl.i32(i32 %i.pi, i32 %i.pi, i32 8)
  %i.pk = xor i32 %i.pj, %i.og                    ; 3 uses
  %i.pl = tail call i32 @llvm.fshl.i32(i32 %i.pk, i32 %i.pk, i32 16)
  %i.pm = xor i32 %i.pl, %i.pi                    ; 3 uses
  %i.pn = tail call i32 @llvm.fshl.i32(i32 %i.pm, i32 %i.pm, i32 24)
  %i.po = xor i32 %i.pn, %i.pk                    ; 3 uses
  %i.pp = tail call i32 @llvm.fshl.i32(i32 %i.po, i32 %i.po, i32 24)
  %i.pq = xor i32 %i.kj, %i.pp
  %i.pr = xor i32 %i.pq, %i.pm
  %i.ps = xor i32 %i.po, %i.kk
  br label %bb.c

bb.c:                                             ; preds = %.preheader192.preheader, %.loopexit195
  %.sroa.69.0 = phi i32 [ %i.pr, %.preheader192.preheader ], [ 0, %.loopexit195 ] ; 7 uses
  %.sroa.73.0 = phi i32 [ %i.ps, %.preheader192.preheader ], [ 0, %.loopexit195 ] ; 7 uses
  %.sroa.77.0 = phi i32 [ %i.nb, %.preheader192.preheader ], [ 0, %.loopexit195 ] ; 7 uses
  %.sroa.81.0 = phi i32 [ %i.nc, %.preheader192.preheader ], [ 0, %.loopexit195 ] ; 7 uses
  %i.pt = zext nneg i32 %.0150448 to i64          ; 2 uses
  %i.pu = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.i, i32 15)
  %i.pv = tail call i32 @llvm.fshl.i32(i32 %i.i, i32 %i.j, i32 15)
  %i.pw = tail call i32 @llvm.fshl.i32(i32 %i.j, i32 %i.k, i32 15)
  %i.px = tail call i32 @llvm.fshl.i32(i32 %i.k, i32 %i.h, i32 15)
  br i1 %.not160.1.not446, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.py = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.i, i32 30)
  %i.pz = tail call i32 @llvm.fshl.i32(i32 %i.i, i32 %i.j, i32 30)
  %i.qa = tail call i32 @llvm.fshl.i32(i32 %i.j, i32 %i.k, i32 30)
  %i.qb = tail call i32 @llvm.fshl.i32(i32 %i.k, i32 %i.h, i32 30)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.90.1 = phi i32 [ undef, %bb.c ], [ %i.qb, %bb.d ]
  %.sroa.82.1 = phi i32 [ undef, %bb.c ], [ %i.qa, %bb.d ]
  %.sroa.74.1 = phi i32 [ undef, %bb.c ], [ %i.pz, %bb.d ]
  %.sroa.66.1 = phi i32 [ undef, %bb.c ], [ %i.py, %bb.d ]
  %i.qc = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.i, i32 13)
  %i.qd = tail call i32 @llvm.fshl.i32(i32 %i.i, i32 %i.j, i32 13)
  %i.qe = tail call i32 @llvm.fshl.i32(i32 %i.j, i32 %i.k, i32 13)
  %i.qf = tail call i32 @llvm.fshl.i32(i32 %i.k, i32 %i.h, i32 13)
  %i.qg = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.i, i32 28) ; 3 uses
  %i.qh = tail call i32 @llvm.fshl.i32(i32 %i.i, i32 %i.j, i32 28) ; 3 uses
  %i.qi = tail call i32 @llvm.fshl.i32(i32 %i.j, i32 %i.k, i32 28) ; 3 uses
  %i.qj = tail call i32 @llvm.fshl.i32(i32 %i.k, i32 %i.h, i32 28) ; 3 uses
  %i.qk = getelementptr inbounds nuw [80 x i8], ptr @indexes, i64 %i.pt ; 66 uses
  %i.ql = load i8, ptr %i.qk, align 16, !tbaa !10
  %i.qm = sext i8 %i.ql to i64
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.qm
  store i32 %i.h, ptr %i.qn, align 4, !tbaa !4
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 1
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !10
  %i.qq = sext i8 %i.qp to i64
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.qq
  store i32 %i.i, ptr %i.qr, align 4, !tbaa !4
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qk, i64 2
  %i.qt = load i8, ptr %i.qs, align 2, !tbaa !10
  %i.qu = sext i8 %i.qt to i64
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.qu
  store i32 %i.j, ptr %i.qv, align 4, !tbaa !4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qk, i64 3
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !10
  %i.qy = sext i8 %i.qx to i64
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.qy
  store i32 %i.k, ptr %i.qz, align 4, !tbaa !4
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.rb = load i8, ptr %i.ra, align 4, !tbaa !10
  %i.rc = sext i8 %i.rb to i64
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.rc
  store i32 %i.pu, ptr %i.rd, align 4, !tbaa !4
  %i.re = getelementptr inbounds nuw i8, ptr %i.qk, i64 5
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !10
  %i.rg = sext i8 %i.rf to i64
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.rg
  store i32 %i.pv, ptr %i.rh, align 4, !tbaa !4
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qk, i64 6
  %i.rj = load i8, ptr %i.ri, align 2, !tbaa !10
  %i.rk = sext i8 %i.rj to i64
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.rk
  store i32 %i.pw, ptr %i.rl, align 4, !tbaa !4
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qk, i64 7
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !10
  %i.ro = sext i8 %i.rn to i64
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ro
  store i32 %i.px, ptr %i.rp, align 4, !tbaa !4
  br i1 %.not160.1.not446, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.rr = load i8, ptr %i.rq, align 8, !tbaa !10
  %i.rs = sext i8 %i.rr to i64
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.rs
  store i32 %.sroa.66.1, ptr %i.rt, align 4, !tbaa !4
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qk, i64 9
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !10
  %i.rw = sext i8 %i.rv to i64
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.rw
  store i32 %.sroa.74.1, ptr %i.rx, align 4, !tbaa !4
  %i.ry = getelementptr inbounds nuw i8, ptr %i.qk, i64 10
  %i.rz = load i8, ptr %i.ry, align 2, !tbaa !10
  %i.sa = sext i8 %i.rz to i64
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.sa
  store i32 %.sroa.82.1, ptr %i.sb, align 4, !tbaa !4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qk, i64 11
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !10
  %i.se = sext i8 %i.sd to i64
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.se
  store i32 %.sroa.90.1, ptr %i.sf, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qk, i64 12
  %i.sh = load i8, ptr %i.sg, align 4, !tbaa !10
  %i.si = sext i8 %i.sh to i64
  %i.sj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.si
  store i32 %i.qc, ptr %i.sj, align 4, !tbaa !4
  %i.sk = getelementptr inbounds nuw i8, ptr %i.qk, i64 13
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !10
  %i.sm = sext i8 %i.sl to i64
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.sm
  store i32 %i.qd, ptr %i.sn, align 4, !tbaa !4
  %i.so = getelementptr inbounds nuw i8, ptr %i.qk, i64 14
  %i.sp = load i8, ptr %i.so, align 2, !tbaa !10
  %i.sq = sext i8 %i.sp to i64
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.sq
  store i32 %i.qe, ptr %i.sr, align 4, !tbaa !4
  %i.ss = getelementptr inbounds nuw i8, ptr %i.qk, i64 15
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !10
  %i.su = sext i8 %i.st to i64
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.su
  store i32 %i.qf, ptr %i.sv, align 4, !tbaa !4
  %i.sw = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.sx = load i8, ptr %i.sw, align 16, !tbaa !10
  %i.sy = sext i8 %i.sx to i64
  %i.sz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.sy
  store i32 %i.qg, ptr %i.sz, align 4, !tbaa !4
  br i1 %.not160.1.not446, label %.thread645.sink.split, label %.thread454

.thread454:                                       ; preds = %bb.g
  %i.ta = getelementptr inbounds nuw i8, ptr %i.qk, i64 17
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !10
  %i.tc = sext i8 %i.tb to i64
  %i.td = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.tc
  store i32 %i.qh, ptr %i.td, align 4, !tbaa !4
  %i.te = getelementptr inbounds nuw i8, ptr %i.qk, i64 18
  %i.tf = load i8, ptr %i.te, align 2, !tbaa !10
  %i.tg = sext i8 %i.tf to i64
  %i.th = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.tg
  store i32 %i.qi, ptr %i.th, align 4, !tbaa !4
  %i.ti = getelementptr inbounds nuw i8, ptr %i.qk, i64 19
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !10
  %i.tk = sext i8 %i.tj to i64
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.tk
  store i32 %i.qj, ptr %i.tl, align 4, !tbaa !4
  br i1 %i.ki, label %.thread455, label %.thread645

.thread455:                                       ; preds = %.thread454
  %i.tm = tail call i32 @llvm.fshl.i32(i32 %i.l, i32 %i.m, i32 15)
  %i.tn = tail call i32 @llvm.fshl.i32(i32 %i.m, i32 %i.n, i32 15)
  %i.to = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.o, i32 15)
  %i.tp = tail call i32 @llvm.fshl.i32(i32 %i.o, i32 %i.l, i32 15)
  %i.tq = tail call i32 @llvm.fshl.i32(i32 %i.l, i32 %i.m, i32 30)
  %i.tr = tail call i32 @llvm.fshl.i32(i32 %i.m, i32 %i.n, i32 30)
  %i.ts = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.o, i32 30)
  %i.tt = tail call i32 @llvm.fshl.i32(i32 %i.o, i32 %i.l, i32 30)
  %3 = trunc nuw i32 %.0150448 to i1              ; 0 uses
  %i.tu = tail call i32 @llvm.fshl.i32(i32 %i.l, i32 %i.m, i32 28) ; 2 uses
  %i.tv = tail call i32 @llvm.fshl.i32(i32 %i.m, i32 %i.n, i32 28) ; 2 uses
  %i.tw = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.o, i32 28) ; 2 uses
  %i.tx = tail call i32 @llvm.fshl.i32(i32 %i.o, i32 %i.l, i32 28)
  %i.ty = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  %i.tz = load i8, ptr %i.ty, align 8, !tbaa !10
  %i.ua = sext i8 %i.tz to i64
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ua
  store i32 %i.tm, ptr %i.ub, align 4, !tbaa !4
  %i.uc = getelementptr inbounds nuw i8, ptr %i.qk, i64 25
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !10
  %i.ue = sext i8 %i.ud to i64
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ue
  store i32 %i.tn, ptr %i.uf, align 4, !tbaa !4
  %i.ug = getelementptr inbounds nuw i8, ptr %i.qk, i64 26
  %i.uh = load i8, ptr %i.ug, align 2, !tbaa !10
  %i.ui = sext i8 %i.uh to i64
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ui
  store i32 %i.to, ptr %i.uj, align 4, !tbaa !4
  %i.uk = getelementptr inbounds nuw i8, ptr %i.qk, i64 27
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !10
  %i.um = sext i8 %i.ul to i64
  %i.un = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.um
  store i32 %i.tp, ptr %i.un, align 4, !tbaa !4
  %i.uo = getelementptr inbounds nuw i8, ptr %i.qk, i64 28
  %i.up = load i8, ptr %i.uo, align 4, !tbaa !10
  %i.uq = sext i8 %i.up to i64
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.uq
  store i32 %i.tq, ptr %i.ur, align 4, !tbaa !4
  %i.us = getelementptr inbounds nuw i8, ptr %i.qk, i64 29
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !10
  %i.uu = sext i8 %i.ut to i64
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.uu
  store i32 %i.tr, ptr %i.uv, align 4, !tbaa !4
  %i.uw = getelementptr inbounds nuw i8, ptr %i.qk, i64 30
  %i.ux = load i8, ptr %i.uw, align 2, !tbaa !10
  %i.uy = sext i8 %i.ux to i64
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.uy
  store i32 %i.ts, ptr %i.uz, align 4, !tbaa !4
  %i.va = getelementptr inbounds nuw i8, ptr %i.qk, i64 31
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !10
  %i.vc = sext i8 %i.vb to i64
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.vc
  store i32 %i.tt, ptr %i.vd, align 4, !tbaa !4
  %i.ve = getelementptr inbounds nuw i8, ptr %i.qk, i64 36
  %i.vf = load i8, ptr %i.ve, align 4, !tbaa !10
  %i.vg = sext i8 %i.vf to i64
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.vg
  store i32 %i.tu, ptr %i.vh, align 4, !tbaa !4
  %i.vi = getelementptr inbounds nuw i8, ptr %i.qk, i64 37
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !10
  %i.vk = sext i8 %i.vj to i64
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.vk
  store i32 %i.tv, ptr %i.vl, align 4, !tbaa !4
  %i.vm = getelementptr inbounds nuw i8, ptr %i.qk, i64 38
  %i.vn = load i8, ptr %i.vm, align 2, !tbaa !10
  %i.vo = sext i8 %i.vn to i64
  %i.vp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.vo
  store i32 %i.tw, ptr %i.vp, align 4, !tbaa !4
  br label %.thread645.sink.split

.thread645.sink.split:                            ; preds = %bb.g, %.thread455
  %.sink1007 = phi i64 [ 39, %.thread455 ], [ 19, %bb.g ]
  %.sink = phi i32 [ %i.tx, %.thread455 ], [ %i.qj, %bb.g ] ; 2 uses
  %.sroa.146.0.ph = phi i32 [ %i.tw, %.thread455 ], [ %i.qi, %bb.g ]
  %.sroa.138.0.ph = phi i32 [ %i.tv, %.thread455 ], [ %i.qh, %bb.g ]
  %.sroa.130.0.ph = phi i32 [ %i.tu, %.thread455 ], [ %i.qg, %bb.g ]
  %i.vq = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.sink1007
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !10
  %i.vs = sext i8 %i.vr to i64
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.vs
  store i32 %.sink, ptr %i.vt, align 4, !tbaa !4
  br label %.thread645

.thread645:                                       ; preds = %.thread645.sink.split, %.thread454
  %.sroa.154.0 = phi i32 [ %i.qj, %.thread454 ], [ %.sink, %.thread645.sink.split ]
  %.sroa.146.0 = phi i32 [ %i.qi, %.thread454 ], [ %.sroa.146.0.ph, %.thread645.sink.split ]
  %.sroa.138.0 = phi i32 [ %i.qh, %.thread454 ], [ %.sroa.138.0.ph, %.thread645.sink.split ]
  %.sroa.130.0 = phi i32 [ %i.qg, %.thread454 ], [ %.sroa.130.0.ph, %.thread645.sink.split ]
  %i.vu = tail call i32 @llvm.fshl.i32(i32 %i.kg, i32 %i.kh, i32 15)
  %i.vv = tail call i32 @llvm.fshl.i32(i32 %i.kh, i32 %i.hq, i32 15)
  %i.vw = tail call i32 @llvm.fshl.i32(i32 %i.hq, i32 %i.hr, i32 15)
  %i.vx = tail call i32 @llvm.fshl.i32(i32 %i.hr, i32 %i.kg, i32 15)
  %i.vy = tail call i32 @llvm.fshl.i32(i32 %i.kg, i32 %i.kh, i32 30)
  %i.vz = tail call i32 @llvm.fshl.i32(i32 %i.kh, i32 %i.hq, i32 30)
  %i.wa = tail call i32 @llvm.fshl.i32(i32 %i.hq, i32 %i.hr, i32 30)
  %i.wb = tail call i32 @llvm.fshl.i32(i32 %i.hr, i32 %i.kg, i32 30)
  %i.wc = tail call i32 @llvm.fshl.i32(i32 %i.kg, i32 %i.kh, i32 13)
  %i.wd = tail call i32 @llvm.fshl.i32(i32 %i.kh, i32 %i.hq, i32 13) ; 2 uses
  %i.we = tail call i32 @llvm.fshl.i32(i32 %i.hq, i32 %i.hr, i32 13) ; 2 uses
  %i.wf = tail call i32 @llvm.fshl.i32(i32 %i.hr, i32 %i.kg, i32 13)
  br i1 %.not160.1.not446, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread645
  %i.wg = tail call i32 @llvm.fshl.i32(i32 %i.kg, i32 %i.kh, i32 28)
  %i.wh = tail call i32 @llvm.fshl.i32(i32 %i.kh, i32 %i.hq, i32 28)
  %i.wi = tail call i32 @llvm.fshl.i32(i32 %i.hq, i32 %i.hr, i32 28)
  %i.wj = tail call i32 @llvm.fshl.i32(i32 %i.hr, i32 %i.kg, i32 28)
  %i.wk = getelementptr inbounds nuw i8, ptr %i.qk, i64 40
  %i.wl = load i8, ptr %i.wk, align 8, !tbaa !10
  %i.wm = sext i8 %i.wl to i64
  %i.wn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.wm
  store i32 %i.kg, ptr %i.wn, align 4, !tbaa !4
  %i.wo = getelementptr inbounds nuw i8, ptr %i.qk, i64 41
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !10
  %i.wq = sext i8 %i.wp to i64
  %i.wr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.wq
  store i32 %i.kh, ptr %i.wr, align 4, !tbaa !4
  %i.ws = getelementptr inbounds nuw i8, ptr %i.qk, i64 42
  %i.wt = load i8, ptr %i.ws, align 2, !tbaa !10
  %i.wu = sext i8 %i.wt to i64
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.wu
  store i32 %i.hq, ptr %i.wv, align 4, !tbaa !4
  %i.ww = getelementptr inbounds nuw i8, ptr %i.qk, i64 43
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !10
  %i.wy = sext i8 %i.wx to i64
  %i.wz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.wy
  store i32 %i.hr, ptr %i.wz, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %.thread645, %bb.h
  %.sroa.154.3658677684703 = phi i32 [ %i.wj, %bb.h ], [ %.sroa.154.0, %.thread645 ]
  %.sroa.146.3660675686701 = phi i32 [ %i.wi, %bb.h ], [ %.sroa.146.0, %.thread645 ]
  %.sroa.138.3662673688699 = phi i32 [ %i.wh, %bb.h ], [ %.sroa.138.0, %.thread645 ]
  %.sroa.130.3664671690697 = phi i32 [ %i.wg, %bb.h ], [ %.sroa.130.0, %.thread645 ]
  %i.xa = getelementptr inbounds nuw i8, ptr %i.qk, i64 44
  %i.xb = load i8, ptr %i.xa, align 4, !tbaa !10
  %i.xc = sext i8 %i.xb to i64
  %i.xd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.xc
  store i32 %i.vu, ptr %i.xd, align 4, !tbaa !4
  %i.xe = getelementptr inbounds nuw i8, ptr %i.qk, i64 45
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !10
  %i.xg = sext i8 %i.xf to i64
  %i.xh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.xg
  store i32 %i.vv, ptr %i.xh, align 4, !tbaa !4
  %i.xi = getelementptr inbounds nuw i8, ptr %i.qk, i64 46
  %i.xj = load i8, ptr %i.xi, align 2, !tbaa !10
  %i.xk = sext i8 %i.xj to i64
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.xk
  store i32 %i.vw, ptr %i.xl, align 4, !tbaa !4
  %i.xm = getelementptr inbounds nuw i8, ptr %i.qk, i64 47
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !10
  %i.xo = sext i8 %i.xn to i64
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.xo
  store i32 %i.vx, ptr %i.xp, align 4, !tbaa !4
  %i.xq = getelementptr inbounds nuw i8, ptr %i.qk, i64 48
  %i.xr = load i8, ptr %i.xq, align 16, !tbaa !10
  %i.xs = sext i8 %i.xr to i64
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.xs
  store i32 %i.vy, ptr %i.xt, align 4, !tbaa !4
  %i.xu = getelementptr inbounds nuw i8, ptr %i.qk, i64 49
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !10
  %i.xw = sext i8 %i.xv to i64
  %i.xx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.xw
  store i32 %i.vz, ptr %i.xx, align 4, !tbaa !4
  %i.xy = getelementptr inbounds nuw i8, ptr %i.qk, i64 50
  %i.xz = load i8, ptr %i.xy, align 2, !tbaa !10
  %i.ya = sext i8 %i.xz to i64
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ya
  store i32 %i.wa, ptr %i.yb, align 4, !tbaa !4
  %i.yc = getelementptr inbounds nuw i8, ptr %i.qk, i64 51
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !10
  %i.ye = sext i8 %i.yd to i64
  %i.yf = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ye
  store i32 %i.wb, ptr %i.yf, align 4, !tbaa !4
  br i1 %.not160.1.not446, label %.thread1502.sink.split.sink.split, label %.thread710

.thread1502.sink.split.sink.split:                ; preds = %bb.i
  %4 = getelementptr inbounds nuw i8, ptr %i.qk, i64 53
  %.sink1554 = load i8, ptr %4, align 1, !tbaa !10
  %5 = sext i8 %.sink1554 to i64
  %6 = getelementptr inbounds [4 x i8], ptr %i.b, i64 %5
  store i32 %i.wd, ptr %6, align 4, !tbaa !4
  %7 = getelementptr inbounds nuw i8, ptr %i.qk, i64 54
  %8 = load i8, ptr %7, align 1, !tbaa !10
  %9 = sext i8 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %i.b, i64 %9
  store i32 %i.we, ptr %10, align 4, !tbaa !4
  br label %.thread991.sink.split

.thread710:                                       ; preds = %bb.i
  %i.yg = getelementptr inbounds nuw i8, ptr %i.qk, i64 52
  %i.yh = load i8, ptr %i.yg, align 4, !tbaa !10
  %i.yi = sext i8 %i.yh to i64
  %i.yj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.yi
  store i32 %i.wc, ptr %i.yj, align 4, !tbaa !4
  %i.yk = getelementptr inbounds nuw i8, ptr %i.qk, i64 53
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !10
  %i.ym = sext i8 %i.yl to i64
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ym
  store i32 %i.wd, ptr %i.yn, align 4, !tbaa !4
  %i.yo = getelementptr inbounds nuw i8, ptr %i.qk, i64 54
  %i.yp = load i8, ptr %i.yo, align 2, !tbaa !10
  %i.yq = sext i8 %i.yp to i64
  %i.yr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.yq
  store i32 %i.we, ptr %i.yr, align 4, !tbaa !4
  %i.ys = getelementptr inbounds nuw i8, ptr %i.qk, i64 55
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !10
  %i.yu = sext i8 %i.yt to i64
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.yu
  store i32 %i.wf, ptr %i.yv, align 4, !tbaa !4
  br i1 %i.ki, label %.thread711, label %.thread991

.thread711:                                       ; preds = %.thread710
  %i.yw = tail call i32 @llvm.fshl.i32(i32 %.sroa.69.0, i32 %.sroa.73.0, i32 15)
  %i.yx = tail call i32 @llvm.fshl.i32(i32 %.sroa.73.0, i32 %.sroa.77.0, i32 15)
  %i.yy = tail call i32 @llvm.fshl.i32(i32 %.sroa.77.0, i32 %.sroa.81.0, i32 15)
  %i.yz = tail call i32 @llvm.fshl.i32(i32 %.sroa.81.0, i32 %.sroa.69.0, i32 15)
  %i.za = tail call i32 @llvm.fshl.i32(i32 %.sroa.69.0, i32 %.sroa.73.0, i32 30)
  %i.zb = tail call i32 @llvm.fshl.i32(i32 %.sroa.73.0, i32 %.sroa.77.0, i32 30)
  %i.zc = tail call i32 @llvm.fshl.i32(i32 %.sroa.77.0, i32 %.sroa.81.0, i32 30)
  %i.zd = tail call i32 @llvm.fshl.i32(i32 %.sroa.81.0, i32 %.sroa.69.0, i32 30)
  %11 = trunc nuw i32 %.0150448 to i1             ; 0 uses
  %i.ze = tail call i32 @llvm.fshl.i32(i32 %.sroa.69.0, i32 %.sroa.73.0, i32 28)
  %i.zf = tail call i32 @llvm.fshl.i32(i32 %.sroa.73.0, i32 %.sroa.77.0, i32 28)
  %i.zg = tail call i32 @llvm.fshl.i32(i32 %.sroa.77.0, i32 %.sroa.81.0, i32 28)
  %i.zh = tail call i32 @llvm.fshl.i32(i32 %.sroa.81.0, i32 %.sroa.69.0, i32 28)
  %i.zi = getelementptr inbounds nuw i8, ptr %i.qk, i64 60
  %i.zj = load i8, ptr %i.zi, align 4, !tbaa !10
  %i.zk = sext i8 %i.zj to i64
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.zk
  store i32 %.sroa.69.0, ptr %i.zl, align 4, !tbaa !4
  %i.zm = getelementptr inbounds nuw i8, ptr %i.qk, i64 61
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !10
  %i.zo = sext i8 %i.zn to i64
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.zo
  store i32 %.sroa.73.0, ptr %i.zp, align 4, !tbaa !4
  %i.zq = getelementptr inbounds nuw i8, ptr %i.qk, i64 62
  %i.zr = load i8, ptr %i.zq, align 2, !tbaa !10
  %i.zs = sext i8 %i.zr to i64
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.zs
  store i32 %.sroa.77.0, ptr %i.zt, align 4, !tbaa !4
  %i.zu = getelementptr inbounds nuw i8, ptr %i.qk, i64 63
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !10
  %i.zw = sext i8 %i.zv to i64
  %i.zx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.zw
  store i32 %.sroa.81.0, ptr %i.zx, align 4, !tbaa !4
  %i.zy = getelementptr inbounds nuw i8, ptr %i.qk, i64 64
  %i.zz = load i8, ptr %i.zy, align 16, !tbaa !10
  %i.aaa = sext i8 %i.zz to i64
  %i.aab = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aaa
  store i32 %i.yw, ptr %i.aab, align 4, !tbaa !4
  %i.aac = getelementptr inbounds nuw i8, ptr %i.qk, i64 65
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !10
  %i.aae = sext i8 %i.aad to i64
  %i.aaf = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aae
  store i32 %i.yx, ptr %i.aaf, align 4, !tbaa !4
  %i.aag = getelementptr inbounds nuw i8, ptr %i.qk, i64 66
  %i.aah = load i8, ptr %i.aag, align 2, !tbaa !10
  %i.aai = sext i8 %i.aah to i64
  %i.aaj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aai
  store i32 %i.yy, ptr %i.aaj, align 4, !tbaa !4
  %i.aak = getelementptr inbounds nuw i8, ptr %i.qk, i64 67
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !10
  %i.aam = sext i8 %i.aal to i64
  %i.aan = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aam
  store i32 %i.yz, ptr %i.aan, align 4, !tbaa !4
  %i.aao = getelementptr inbounds nuw i8, ptr %i.qk, i64 68
  %i.aap = load i8, ptr %i.aao, align 4, !tbaa !10
  %i.aaq = sext i8 %i.aap to i64
  %i.aar = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aaq
  store i32 %i.za, ptr %i.aar, align 4, !tbaa !4
  %i.aas = getelementptr inbounds nuw i8, ptr %i.qk, i64 69
  %12 = load i8, ptr %i.aas, align 1, !tbaa !10
  %13 = sext i8 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %i.b, i64 %13
  store i32 %i.zb, ptr %14, align 4, !tbaa !4
  %15 = getelementptr inbounds nuw i8, ptr %i.qk, i64 70
  %16 = load i8, ptr %15, align 2, !tbaa !10
  %17 = sext i8 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %i.b, i64 %17
  store i32 %i.zc, ptr %18, align 4, !tbaa !4
  %19 = getelementptr inbounds nuw i8, ptr %i.qk, i64 71
  %i.aat = load i8, ptr %19, align 1, !tbaa !10
  %i.aau = sext i8 %i.aat to i64
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aau
  store i32 %i.zd, ptr %i.aav, align 4, !tbaa !4
  br label %.thread991.sink.split

.thread991.sink.split:                            ; preds = %.thread711, %.thread1502.sink.split.sink.split
  %.sink1027 = phi i64 [ 76, %.thread711 ], [ 56, %.thread1502.sink.split.sink.split ]
  %.sroa.130.3664671690697.sink = phi i32 [ %i.ze, %.thread711 ], [ %.sroa.130.3664671690697, %.thread1502.sink.split.sink.split ]
  %.sink1022 = phi i64 [ 77, %.thread711 ], [ 57, %.thread1502.sink.split.sink.split ]
  %.sroa.138.3662673688699.sink = phi i32 [ %i.zf, %.thread711 ], [ %.sroa.138.3662673688699, %.thread1502.sink.split.sink.split ]
  %.sink1017 = phi i64 [ 78, %.thread711 ], [ 58, %.thread1502.sink.split.sink.split ]
  %.sroa.146.3660675686701.sink = phi i32 [ %i.zg, %.thread711 ], [ %.sroa.146.3660675686701, %.thread1502.sink.split.sink.split ]
  %.sink1012 = phi i64 [ 79, %.thread711 ], [ 59, %.thread1502.sink.split.sink.split ]
  %.sroa.154.3658677684703.sink = phi i32 [ %i.zh, %.thread711 ], [ %.sroa.154.3658677684703, %.thread1502.sink.split.sink.split ]
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.sink1027
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !10
  %i.aay = sext i8 %i.aax to i64
  %i.aaz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aay
  store i32 %.sroa.130.3664671690697.sink, ptr %i.aaz, align 4, !tbaa !4
  %i.aba = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.sink1022
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !10
  %i.abc = sext i8 %i.abb to i64
  %i.abd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.abc
  store i32 %.sroa.138.3662673688699.sink, ptr %i.abd, align 4, !tbaa !4
  %i.abe = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.sink1017
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !10
  %i.abg = sext i8 %i.abf to i64
  %i.abh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.abg
  store i32 %.sroa.146.3660675686701.sink, ptr %i.abh, align 4, !tbaa !4
  %i.abi = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.sink1012
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !10
  %i.abk = sext i8 %i.abj to i64
  %i.abl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.abk
  store i32 %.sroa.154.3658677684703.sink, ptr %i.abl, align 4, !tbaa !4
  br label %.thread991

.thread991:                                       ; preds = %.thread991.sink.split, %.thread710
  %i.abm = getelementptr inbounds nuw [20 x i8], ptr @transposes, i64 %i.pt ; 20 uses
  %i.abn = mul nuw nsw i32 %.0150448, 12
  %i.abo = zext nneg i32 %i.abn to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.abo ; 20 uses
  %i.abp = load i8, ptr %i.abm, align 4, !tbaa !10
  %i.abq = sext i8 %i.abp to i64
  %i.abr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.abq
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !4
  %i.abt = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 128
  store i32 %i.abs, ptr %i.abt, align 4, !tbaa !4
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abm, i64 1
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !10
  %i.abw = sext i8 %i.abv to i64
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.abw
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !4
  %i.abz = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 132
  store i32 %i.aby, ptr %i.abz, align 4, !tbaa !4
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abm, i64 2
  %i.acb = load i8, ptr %i.aca, align 2, !tbaa !10
  %i.acc = sext i8 %i.acb to i64
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.acc
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !4
  %i.acf = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 136
  store i32 %i.ace, ptr %i.acf, align 4, !tbaa !4
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abm, i64 3
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !10
  %i.aci = sext i8 %i.ach to i64
  %i.acj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aci
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !4
  %i.acl = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 140
  store i32 %i.ack, ptr %i.acl, align 4, !tbaa !4
  br i1 %.not160.1.not446, label %.thread995, label %bb.j

bb.j:                                             ; preds = %.thread991
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abm, i64 4
  %i.acn = load i8, ptr %i.acm, align 4, !tbaa !10
  %i.aco = sext i8 %i.acn to i64
  %i.acp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aco
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !4
  %i.acr = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 144
  store i32 %i.acq, ptr %i.acr, align 4, !tbaa !4
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abm, i64 5
  %i.act = load i8, ptr %i.acs, align 1, !tbaa !10
  %i.acu = sext i8 %i.act to i64
  %i.acv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.acu
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !4
  %i.acx = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 148
  store i32 %i.acw, ptr %i.acx, align 4, !tbaa !4
  %i.acy = getelementptr inbounds nuw i8, ptr %i.abm, i64 6
  %i.acz = load i8, ptr %i.acy, align 2, !tbaa !10
  %i.ada = sext i8 %i.acz to i64
  %i.adb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ada
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !4
  %i.add = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 152
  store i32 %i.adc, ptr %i.add, align 4, !tbaa !4
  %i.ade = getelementptr inbounds nuw i8, ptr %i.abm, i64 7
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !10
  %i.adg = sext i8 %i.adf to i64
  %i.adh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.adg
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !4
  %i.adj = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 156
  store i32 %i.adi, ptr %i.adj, align 4, !tbaa !4
  br label %.thread995

.thread995:                                       ; preds = %.thread991, %bb.j
  %i.adk = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.adl = load i8, ptr %i.adk, align 4, !tbaa !10
  %i.adm = sext i8 %i.adl to i64
  %i.adn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.adm
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !4
  %i.adp = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 160
  store i32 %i.ado, ptr %i.adp, align 4, !tbaa !4
  %i.adq = getelementptr inbounds nuw i8, ptr %i.abm, i64 9
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !10
  %i.ads = sext i8 %i.adr to i64
  %i.adt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ads
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !4
  %i.adv = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 164
  store i32 %i.adu, ptr %i.adv, align 4, !tbaa !4
  %i.adw = getelementptr inbounds nuw i8, ptr %i.abm, i64 10
  %i.adx = load i8, ptr %i.adw, align 2, !tbaa !10
  %i.ady = sext i8 %i.adx to i64
  %i.adz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ady
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !4
  %i.aeb = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 168
  store i32 %i.aea, ptr %i.aeb, align 4, !tbaa !4
  %i.aec = getelementptr inbounds nuw i8, ptr %i.abm, i64 11
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !10
  %i.aee = sext i8 %i.aed to i64
  %i.aef = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aee
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !4
  %i.aeh = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 172
  store i32 %i.aeg, ptr %i.aeh, align 4, !tbaa !4
  br i1 %.not160.1.not446, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.thread995
  %i.aei = getelementptr inbounds nuw i8, ptr %i.abm, i64 12
  %i.aej = load i8, ptr %i.aei, align 4, !tbaa !10
  %i.aek = sext i8 %i.aej to i64
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aek
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !4
  %i.aen = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 176
  store i32 %i.aem, ptr %i.aen, align 4, !tbaa !4
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.abm, i64 13
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !10
  %i.aeq = sext i8 %i.aep to i64
  %i.aer = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aeq
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !4
  %i.aet = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 180
  store i32 %i.aes, ptr %i.aet, align 4, !tbaa !4
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.abm, i64 14
  %i.aev = load i8, ptr %i.aeu, align 2, !tbaa !10
  %i.aew = sext i8 %i.aev to i64
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aew
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !4
  %i.aez = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 184
  store i32 %i.aey, ptr %i.aez, align 4, !tbaa !4
  %i.afa = getelementptr inbounds nuw i8, ptr %i.abm, i64 15
  %i.afb = load i8, ptr %i.afa, align 1, !tbaa !10
  %i.afc = sext i8 %i.afb to i64
  %i.afd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.afc
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !4
  %i.aff = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 188
  store i32 %i.afe, ptr %i.aff, align 4, !tbaa !4
  %i.afg = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.afh = load i8, ptr %i.afg, align 4, !tbaa !10
  %i.afi = sext i8 %i.afh to i64
  %i.afj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.afi
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !4
  %i.afl = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 192
  store i32 %i.afk, ptr %i.afl, align 4, !tbaa !4
  %i.afm = getelementptr inbounds nuw i8, ptr %i.abm, i64 17
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !10
  %i.afo = sext i8 %i.afn to i64
  %i.afp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.afo
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !4
  %i.afr = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 196
  store i32 %i.afq, ptr %i.afr, align 4, !tbaa !4
  %i.afs = getelementptr inbounds nuw i8, ptr %i.abm, i64 18
  %i.aft = load i8, ptr %i.afs, align 2, !tbaa !10
  %i.afu = sext i8 %i.aft to i64
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.afu
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !4
  %i.afx = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 200
  store i32 %i.afw, ptr %i.afx, align 4, !tbaa !4
  %i.afy = getelementptr inbounds nuw i8, ptr %i.abm, i64 19
  %i.afz = load i8, ptr %i.afy, align 1, !tbaa !10
  %i.aga = sext i8 %i.afz to i64
  %i.agb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aga
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !4
  %i.agd = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 204
  store i32 %i.agc, ptr %i.agd, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.thread995, %bb.a
  %.0 = phi i32 [ -36, %bb.a ], [ 0, %.thread995 ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define range(i32 -36, 1) i32 @mbedtls_camellia_setkey_dec(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.mbedtls_camellia_context, align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(276) %3, i8 0, i64 276, i1 false)
  %i.a = call i32 @mbedtls_camellia_setkey_enc(ptr noundef nonnull %3, ptr noundef %1, i32 noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %vector.memcheck, label %bb.b

vector.memcheck:                                  ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4, !tbaa !8      ; 2 uses
  store i32 %i.b, ptr %0, align 4, !tbaa !8
  %.not54 = icmp eq i32 %i.b, 4                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 196
  %i.e = select i1 %.not54, i32 8, i32 0          ; 4 uses
  %i.f = shl nuw nsw i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g ; 19 uses
end_hunk_1
