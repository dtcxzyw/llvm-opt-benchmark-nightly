inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_cipher_context_t = type { ptr, i32, i32, ptr, ptr, [16 x i8], i64, [16 x i8], i64, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"AES 128\00", align 1
@aes_128_key = internal constant [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", align 16
@aes_128_subkeys = internal constant [2 x [16 x i8]] [[16 x i8] c"\FB\EE\D6\185q3f|\85\E0\8Fr6\A8\DE", [16 x i8] c"\F7\DD\AC0j\E2f\CC\F9\0B\C1\1E\E4mQ;"], align 16
@test_message = internal constant [64 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*\AE-\8AW\1E\03\AC\9C\9E\B7o\ACE\AF\8EQ0\C8\1CF\A3\\\E4\11\E5\FB\C1\19\1A\0AR\EF\F6\9F$E\DFO\9B\17\AD+A{\E6l7\10", align 16
@aes_message_lengths = internal constant [4 x i32] [i32 0, i32 16, i32 20, i32 64], align 16
@aes_128_expected_result = internal constant [4 x [16 x i8]] [[16 x i8] c"\BB\1Di)\E9Y7(\7F\A3}\12\9BugF", [16 x i8] c"\07\0A\16\B4kMAD\F7\9B\DD\9D\D0J(|", [16 x i8] c"}\85D\9E\A6\EA\19\C8#\A7\BFx\83}\FA\DE", [16 x i8] c"Q\F0\BE\BF~;\9D\92\FCIt\17y6<\FE"], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"AES 192\00", align 1
@aes_192_key = internal constant [24 x i8] c"\8Es\B0\F7\DA\0EdR\C8\10\F3+\80\90y\E5b\F8\EA\D2R,k{", align 16
@aes_192_subkeys = internal constant [2 x [16 x i8]] [[16 x i8] c"D\8A[\1C\93QK'>\E6C\9D\D4\DA\A2\96", [16 x i8] c"\89\14\B69&\A2\96N}\CC\87;\A9\B5E,"], align 16
@aes_192_expected_result = internal constant [4 x [16 x i8]] [[16 x i8] c"\D1}\DFF\AD\AA\CD\E51\CA\C4\83\DEz\93g", [16 x i8] c"\9E\99\A7\BF1\E7\10\90\06b\F6^a|Q\84", [16 x i8] c"=u\C1\94\ED\96\07\04D\A9\FA~\C7@\EC\F8", [16 x i8] c"\A1\D5\DF\0E\EDy\0FyMwX\96Y\F3\9A\11"], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"AES 256\00", align 1
@aes_256_key = internal constant [32 x i8] c"`=\EB\10\15\CAq\BE+s\AE\F0\85}w\81\1F5,\07;a\08\D7-\98\10\A3\09\14\DF\F4", align 16
@aes_256_subkeys = internal constant [2 x [16 x i8]] [[16 x i8] c"\CA\D1\ED\03)\9E\ED\AC.\9A\99\80\86!P/", [16 x i8] c"\95\A3\DA\06S=\DBX]53\01\0CB\A0\D9"], align 16
@aes_256_expected_result = internal constant [4 x [16 x i8]] [[16 x i8] c"\02\89b\F6\1B{\F8\9E\FCkU\1FFg\D9\83", [16 x i8] c"(\A7\02?E.\8F\82\BDK\F2\8D\8C7\C3\\", [16 x i8] c"\15g'\DC\08x\94J\02<\1F\E0;\ADm\93", [16 x i8] c"\E1\99!\90T\9Fn\D5ij,\05l1T\10"], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"3DES 2 key\00", align 1
@des3_2key_key = internal constant [24 x i8] c"\01#Eg\89\AB\CD\EF#Eg\89\AB\CD\EF\01\01#Eg\89\AB\CD\EF", align 16
@des3_2key_subkeys = internal constant [2 x [8 x i8]] [[8 x i8] c"\0D\D2\CBz=\88\88\D9", [8 x i8] c"\1B\A5\96\F4{\11\11\B2"], align 16
@des3_message_lengths = internal constant [4 x i32] [i32 0, i32 16, i32 20, i32 32], align 16
@des3_2key_expected_result = internal constant [4 x [8 x i8]] [[8 x i8] c"y\CER\A7\F7\86\A9`", [8 x i8] c"\CC\18\A0\B7\9A\F2A;", [8 x i8] c"\C0m7~\CD\10\19i", [8 x i8] c"\9C\D35\80\F9\B6M\FB"], align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"3DES 3 key\00", align 1
@des3_3key_key = internal constant [24 x i8] c"\01#Eg\89\AA\CD\EF#Eg\89\AB\CD\EF\01Eg\89\AB\CD\EF\01#", align 16
@des3_3key_subkeys = internal constant [2 x [8 x i8]] [[8 x i8] c"\9Dt\E793\17\96\C0", [8 x i8] c":\E9\CErf/-\9B"], align 16
@des3_3key_expected_result = internal constant [4 x [8 x i8]] [[8 x i8] c"}\B0\D3}\F96\C5P", [8 x i8] c"0#\9C\F1\F5.f\09", [8 x i8] c"l\9F>\E4\92?k\E2", [8 x i8] c"\99B\9B\D0\BFy\04\E5"], align 16
@.str.6 = private unnamed_addr constant [23 x i8] c"  %s CMAC subkey #%d: \00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"  %s CMAC #%d: \00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"  AES CMAC 128 PRF #%d: \00", align 1
@PRFK = internal constant [18 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\ED\CB", align 16
@PRFM = internal constant [20 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13", align 16
@str.5 = private unnamed_addr constant [22 x i8] c"test execution failed\00", align 1
@str.9 = private unnamed_addr constant [8 x i8] c"skipped\00", align 1
@str.10 = private unnamed_addr constant [7 x i8] c"passed\00", align 1
@str.11 = private unnamed_addr constant [7 x i8] c"failed\00", align 1

; Function Attrs: nounwind uwtable
define i32 @mbedtls_cipher_cmac_starts(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mbedtls_cipher_info_get_type.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %mbedtls_cipher_info_get_type.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %2 to i32
  %i.f = tail call i32 @mbedtls_cipher_setkey(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.e, i32 noundef 1) #10 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %mbedtls_cipher_info_get_type.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %mbedtls_cipher_info_get_type.exit.thread, label %mbedtls_cipher_info_get_type.exit

mbedtls_cipher_info_get_type.exit:                ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = lshr i32 %i.j, 16
  %trunc = trunc i32 %i.k to i8
  switch i8 %trunc, label %mbedtls_cipher_info_get_type.exit.thread [
    i8 2, label %bb.e
    i8 3, label %bb.e
    i8 4, label %bb.e
    i8 36, label %bb.e
  ]

bb.e:                                             ; preds = %mbedtls_cipher_info_get_type.exit, %mbedtls_cipher_info_get_type.exit, %mbedtls_cipher_info_get_type.exit, %mbedtls_cipher_info_get_type.exit
  %i.l = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #11 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %mbedtls_cipher_info_get_type.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.l, ptr %i.n, align 8, !tbaa !14
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.l, i64 noundef 16) #10
  br label %mbedtls_cipher_info_get_type.exit.thread

mbedtls_cipher_info_get_type.exit.thread:         ; preds = %bb.d, %bb.e, %mbedtls_cipher_info_get_type.exit, %bb.c, %bb.a, %bb.b, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -24832, %bb.a ], [ %i.f, %bb.c ], [ -24832, %mbedtls_cipher_info_get_type.exit ], [ -24832, %bb.b ], [ -24960, %bb.e ], [ -24832, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @mbedtls_cipher_setkey(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @mbedtls_cipher_cmac_update(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 33 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit, label %mbedtls_cipher_info_get_block_size.exit

mbedtls_cipher_info_get_block_size.exit:          ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 31                         ; 7 uses
  %i.l = zext nneg i32 %i.k to i64                ; 28 uses
  %i.m = icmp samesign ult i32 %i.k, 17
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !15   ; 3 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %mbedtls_cipher_info_get_block_size.exit
  %i.p = sub i64 %i.l, %i.o                       ; 2 uses
  %i.q = icmp ugt i64 %2, %i.p
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %1, i64 %i.p, i1 false)
  %.not.i8192 = icmp samesign ult i32 %i.k, 8
  br i1 %.not.i8192, label %.preheader89, label %.lr.ph

.preheader89:                                     ; preds = %.lr.ph, %.lr.ph.1, %bb.e
  %.0.i80.lcssa = phi i64 [ 0, %bb.e ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 5 uses
  %i.t = icmp samesign ult i64 %.0.i80.lcssa, %i.l
  br i1 %i.t, label %iter.check, label %mbedtls_xor_no_simd.exit83

iter.check:                                       ; preds = %.preheader89
  %i.u = sub nuw nsw i64 %i.l, %.0.i80.lcssa      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.u, 8
  br i1 %min.iters.check, label %.lr.ph95.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %iter.check
  %n.mod.vf163 = and i64 %i.l, 7                  ; 2 uses
  %n.vec164 = sub nuw nsw i64 %i.u, %n.mod.vf163  ; 2 uses
  %i.v = add nuw i64 %.0.i80.lcssa, %n.vec164
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index165 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next168, %vec.epilog.vector.body ] ; 2 uses
  %i.w = add i64 %.0.i80.lcssa, %index165         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %wide.load166 = load <8 x i8>, ptr %i.x, align 1, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.w ; 2 uses
  %wide.load167 = load <8 x i8>, ptr %i.y, align 1, !tbaa !17
  %i.z = xor <8 x i8> %wide.load167, %wide.load166
  store <8 x i8> %i.z, ptr %i.y, align 1, !tbaa !17
  %index.next168 = add nuw i64 %index165, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next168, %n.vec164
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n169 = icmp eq i64 %n.mod.vf163, 0
  br i1 %cmp.n169, label %mbedtls_xor_no_simd.exit83, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %iter.check, %vec.epilog.middle.block
  %.1.i8294.ph = phi i64 [ %.0.i80.lcssa, %iter.check ], [ %i.v, %vec.epilog.middle.block ]
  br label %.lr.ph95

.lr.ph:                                           ; preds = %bb.e
  %.0.copyload.i84 = load i64, ptr %i.r, align 8
  %.0.copyload.i = load i64, ptr %i.g, align 8
  %i.ab = xor i64 %.0.copyload.i, %.0.copyload.i84
  store i64 %i.ab, ptr %i.g, align 8
  %.not.i81 = icmp samesign ult i32 %i.k, 16
  br i1 %.not.i81, label %.preheader89, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.0.copyload.i84.1 = load i64, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.0.copyload.i.1 = load i64, ptr %i.ad, align 8
  %i.ae = xor i64 %.0.copyload.i.1, %.0.copyload.i84.1
  store i64 %i.ae, ptr %i.ad, align 8
  br label %.preheader89

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %.lr.ph95
  %.1.i8294 = phi i64 [ %i.ak, %.lr.ph95 ], [ %.1.i8294.ph, %.lr.ph95.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 %.1.i8294
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i8294 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = xor i8 %i.ai, %i.ag
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !17
  %i.ak = add nuw nsw i64 %.1.i8294, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.l
  br i1 %exitcond.not, label %mbedtls_xor_no_simd.exit83, label %.lr.ph95, !llvm.loop !22

mbedtls_xor_no_simd.exit83:                       ; preds = %.lr.ph95, %vec.epilog.middle.block, %.preheader89
  %i.al = call i32 @mbedtls_cipher_update(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef %i.l, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not77 = icmp eq i32 %i.al, 0
  br i1 %.not77, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %mbedtls_xor_no_simd.exit83
  %i.am = load i64, ptr %i.n, align 8, !tbaa !15
  %i.an = sub i64 %i.l, %i.am                     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  %i.ap = sub i64 %2, %i.an
  store i64 0, ptr %i.n, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %mbedtls_cipher_info_get_block_size.exit
  %.063 = phi i64 [ %i.ap, %bb.f ], [ %2, %bb.d ], [ %2, %mbedtls_cipher_info_get_block_size.exit ] ; 4 uses
  %.060 = phi ptr [ %i.ao, %bb.f ], [ %1, %bb.d ], [ %1, %mbedtls_cipher_info_get_block_size.exit ] ; 7 uses
  %i.aq = add nsw i64 %i.l, -1
  %i.ar = add i64 %i.aq, %.063
  %i.as = udiv i64 %i.ar, %i.l                    ; 4 uses
  %i.at = icmp ugt i64 %i.as, 1
  br i1 %i.at, label %.preheader88.lr.ph, label %._crit_edge

.preheader88.lr.ph:                               ; preds = %bb.g
  %.not.i96 = icmp samesign ult i32 %i.k, 8
  br i1 %.not.i96, label %.preheader88.us.preheader, label %.preheader88.preheader

.preheader88.preheader:                           ; preds = %.preheader88.lr.ph
  %i.au = and i64 %i.l, 24                        ; 3 uses
  %i.av = add nsw i64 %i.au, -8
  %i.aw = or disjoint i64 %i.au, 1                ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.l)
  %i.ax = sub nsw i64 %umax, %i.av                ; 2 uses
  %umax174 = call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.l) ; 2 uses
  %i.ay = sub nsw i64 %umax174, %i.au             ; 6 uses
  %.not.i = icmp samesign ult i32 %i.k, 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %min.iters.check175 = icmp ult i64 %i.ay, 4
  %i.ba = getelementptr i8, ptr %i.g, i64 %i.ax
  %invariant.gep = getelementptr i8, ptr %.060, i64 %i.ax
  %min.iters.check177 = icmp ult i64 %i.ay, 16
  %n.mod.vf179 = and i64 %i.ay, 12
  %n.vec180 = and i64 %i.ay, -16                  ; 4 uses
  %cmp.n187 = icmp eq i64 %i.ay, %n.vec180
  %min.epilog.iters.check192 = icmp eq i64 %n.mod.vf179, 0
  %n.mod.vf194 = and i64 %umax174, 3              ; 2 uses
  %n.vec195 = sub nsw i64 %i.ay, %n.mod.vf194     ; 2 uses
  %cmp.n202 = icmp eq i64 %n.mod.vf194, 0
  br label %.preheader88

.preheader88.us.preheader:                        ; preds = %.preheader88.lr.ph
  %scevgep205 = getelementptr i8, ptr %i.g, i64 %i.l
  %i.bb = add i64 %i.as, -1
  %i.bc = mul i64 %i.bb, %i.l
  %scevgep206 = getelementptr i8, ptr %.060, i64 %i.bc
  %min.iters.check210 = icmp samesign ult i32 %i.k, 4
  %bound0207 = icmp ult ptr %i.g, %scevgep206
  %bound1208 = icmp ult ptr %.060, %scevgep205
  %found.conflict209 = and i1 %bound0207, %bound1208
  %n.vec229 = and i64 %i.l, 4                     ; 2 uses
  %cmp.n236 = icmp eq i64 %n.vec229, %i.l
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check223

iter.check223:                                    ; preds = %.preheader88.us.preheader, %bb.h
  %.059104.us = phi i64 [ %i.bo, %bb.h ], [ 1, %.preheader88.us.preheader ]
  %.1103.us = phi ptr [ %i.bn, %bb.h ], [ %.060, %.preheader88.us.preheader ] ; 7 uses
  %.164102.us = phi i64 [ %i.bm, %bb.h ], [ %.063, %.preheader88.us.preheader ]
  %brmerge = select i1 %min.iters.check210, i1 true, i1 %found.conflict209
  br i1 %brmerge, label %vec.epilog.scalar.ph224.preheader, label %vec.epilog.vector.body230

vec.epilog.vector.body230:                        ; preds = %iter.check223
  %wide.load232 = load <4 x i8>, ptr %.1103.us, align 1, !tbaa !17, !alias.scope !23
  %wide.load233 = load <4 x i8>, ptr %i.g, align 8, !tbaa !17, !alias.scope !26, !noalias !23
  %i.bd = xor <4 x i8> %wide.load233, %wide.load232
  store <4 x i8> %i.bd, ptr %i.g, align 8, !tbaa !17, !alias.scope !26, !noalias !23
  br i1 %cmp.n236, label %.mbedtls_xor_no_simd.exit_crit_edge.us, label %vec.epilog.scalar.ph224.preheader

vec.epilog.scalar.ph224.preheader:                ; preds = %iter.check223, %vec.epilog.vector.body230
  %.1.i100.us.ph = phi i64 [ %n.vec229, %vec.epilog.vector.body230 ], [ 0, %iter.check223 ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph224.prol.loopexit, label %vec.epilog.scalar.ph224.prol

vec.epilog.scalar.ph224.prol:                     ; preds = %vec.epilog.scalar.ph224.preheader, %vec.epilog.scalar.ph224.prol
  %.1.i100.us.prol = phi i64 [ %i.bj, %vec.epilog.scalar.ph224.prol ], [ %.1.i100.us.ph, %vec.epilog.scalar.ph224.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph224.prol ], [ 0, %vec.epilog.scalar.ph224.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %.1103.us, i64 %.1.i100.us.prol
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i100.us.prol ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !17
  %i.bi = xor i8 %i.bh, %i.bf
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !17
  %i.bj = add nuw nsw i64 %.1.i100.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph224.prol.loopexit, label %vec.epilog.scalar.ph224.prol, !llvm.loop !28

vec.epilog.scalar.ph224.prol.loopexit:            ; preds = %vec.epilog.scalar.ph224.prol, %vec.epilog.scalar.ph224.preheader
  %.1.i100.us.unr = phi i64 [ %.1.i100.us.ph, %vec.epilog.scalar.ph224.preheader ], [ %i.bj, %vec.epilog.scalar.ph224.prol ]
  %i.bk = sub nsw i64 %.1.i100.us.ph, %i.l
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %.mbedtls_xor_no_simd.exit_crit_edge.us, label %vec.epilog.scalar.ph224

bb.h:                                             ; preds = %.mbedtls_xor_no_simd.exit_crit_edge.us
  %i.bm = sub i64 %.164102.us, %i.l               ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1103.us, i64 %i.l ; 2 uses
  %i.bo = add nuw i64 %.059104.us, 1              ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.as
  br i1 %i.bp, label %iter.check223, label %._crit_edge, !llvm.loop !30

vec.epilog.scalar.ph224:                          ; preds = %vec.epilog.scalar.ph224.prol.loopexit, %vec.epilog.scalar.ph224
  %.1.i100.us = phi i64 [ %i.cn, %vec.epilog.scalar.ph224 ], [ %.1.i100.us.unr, %vec.epilog.scalar.ph224.prol.loopexit ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.1103.us, i64 %.1.i100.us
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i100.us ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = xor i8 %i.bt, %i.br
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !17
  %i.bv = add nuw nsw i64 %.1.i100.us, 1          ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1103.us, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bv ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17
  %i.ca = xor i8 %i.bz, %i.bx
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !17
  %i.cb = add nuw nsw i64 %.1.i100.us, 2          ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1103.us, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cb ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !17
  %i.cg = xor i8 %i.cf, %i.cd
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !17
  %i.ch = add nuw nsw i64 %.1.i100.us, 3          ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.1103.us, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !17
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ch ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !17
  %i.cm = xor i8 %i.cl, %i.cj
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !17
  %i.cn = add nuw nsw i64 %.1.i100.us, 4          ; 2 uses
  %exitcond120.not.3 = icmp eq i64 %i.cn, %i.l
  br i1 %exitcond120.not.3, label %.mbedtls_xor_no_simd.exit_crit_edge.us, label %vec.epilog.scalar.ph224, !llvm.loop !31

.mbedtls_xor_no_simd.exit_crit_edge.us:           ; preds = %vec.epilog.scalar.ph224.prol.loopexit, %vec.epilog.scalar.ph224, %vec.epilog.vector.body230
  %i.co = call i32 @mbedtls_cipher_update(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef %i.l, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not79.us = icmp eq i32 %i.co, 0
  br i1 %.not79.us, label %bb.h, label %.loopexit

.preheader88:                                     ; preds = %.preheader88.preheader, %bb.j
  %indvar = phi i64 [ 0, %.preheader88.preheader ], [ %indvar.next, %bb.j ] ; 2 uses
  %.059104 = phi i64 [ 1, %.preheader88.preheader ], [ %i.ds, %bb.j ]
  %.1103 = phi ptr [ %.060, %.preheader88.preheader ], [ %i.dr, %bb.j ] ; 6 uses
  %.164102 = phi i64 [ %.063, %.preheader88.preheader ], [ %i.dq, %bb.j ]
  %i.cp = mul i64 %indvar, %i.l                   ; 2 uses
  %.0.copyload.i86 = load i64, ptr %.1103, align 1
  %.0.copyload.i85 = load i64, ptr %i.g, align 8
  %i.cq = xor i64 %.0.copyload.i85, %.0.copyload.i86
  store i64 %i.cq, ptr %i.g, align 8
  br i1 %.not.i, label %..preheader_crit_edge, label %bb.i

..preheader_crit_edge:                            ; preds = %bb.i, %.preheader88
  %.lcssa242 = phi i64 [ 8, %.preheader88 ], [ 16, %bb.i ] ; 10 uses
  %i.cr = icmp samesign ult i64 %.lcssa242, %i.l
  br i1 %i.cr, label %iter.check189, label %mbedtls_xor_no_simd.exit

iter.check189:                                    ; preds = %..preheader_crit_edge
  br i1 %min.iters.check175, label %.lr.ph101.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check189
  %scevgep = getelementptr i8, ptr %i.g, i64 %.lcssa242
  %i.cs = add nsw i64 %.lcssa242, -8              ; 2 uses
  %scevgep171 = getelementptr i8, ptr %i.ba, i64 %i.cs
  %i.ct = getelementptr i8, ptr %.060, i64 %.lcssa242
  %scevgep172 = getelementptr i8, ptr %i.ct, i64 %i.cp
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.cs
  %scevgep173 = getelementptr i8, ptr %gep, i64 %i.cp
  %bound0 = icmp ult ptr %scevgep, %scevgep173
  %bound1 = icmp ult ptr %scevgep172, %scevgep171
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph101.preheader, label %vector.main.loop.iter.check176

vector.main.loop.iter.check176:                   ; preds = %vector.memcheck
  br i1 %min.iters.check177, label %vec.epilog.ph193, label %vector.ph178

vector.ph178:                                     ; preds = %vector.main.loop.iter.check176
  %i.cu = add i64 %.lcssa242, %n.vec180
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph178
  %index182 = phi i64 [ 0, %vector.ph178 ], [ %index.next185, %vector.body181 ] ; 2 uses
  %i.cv = add i64 %.lcssa242, %index182           ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.1103, i64 %i.cv
  %wide.load183 = load <16 x i8>, ptr %i.cw, align 1, !tbaa !17, !alias.scope !32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cv ; 2 uses
  %wide.load184 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !17, !alias.scope !35, !noalias !32
  %i.cy = xor <16 x i8> %wide.load184, %wide.load183
  store <16 x i8> %i.cy, ptr %i.cx, align 1, !tbaa !17, !alias.scope !35, !noalias !32
  %index.next185 = add nuw i64 %index182, 16      ; 2 uses
  %i.cz = icmp eq i64 %index.next185, %n.vec180
  br i1 %i.cz, label %middle.block186, label %vector.body181, !llvm.loop !37

middle.block186:                                  ; preds = %vector.body181
  br i1 %cmp.n187, label %mbedtls_xor_no_simd.exit, label %vec.epilog.iter.check191

vec.epilog.iter.check191:                         ; preds = %middle.block186
  br i1 %min.epilog.iters.check192, label %.lr.ph101.preheader, label %vec.epilog.ph193, !prof !38

vec.epilog.ph193:                                 ; preds = %vector.main.loop.iter.check176, %vec.epilog.iter.check191
  %vec.epilog.resume.val188 = phi i64 [ %n.vec180, %vec.epilog.iter.check191 ], [ 0, %vector.main.loop.iter.check176 ]
  %i.da = add i64 %.lcssa242, %n.vec195
  br label %vec.epilog.vector.body196

vec.epilog.vector.body196:                        ; preds = %vec.epilog.vector.body196, %vec.epilog.ph193
  %index197 = phi i64 [ %vec.epilog.resume.val188, %vec.epilog.ph193 ], [ %index.next200, %vec.epilog.vector.body196 ] ; 2 uses
  %i.db = add i64 %.lcssa242, %index197           ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.1103, i64 %i.db
  %wide.load198 = load <4 x i8>, ptr %i.dc, align 1, !tbaa !17, !alias.scope !32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.db ; 2 uses
  %wide.load199 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !17, !alias.scope !35, !noalias !32
  %i.de = xor <4 x i8> %wide.load199, %wide.load198
  store <4 x i8> %i.de, ptr %i.dd, align 1, !tbaa !17, !alias.scope !35, !noalias !32
  %index.next200 = add nuw i64 %index197, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next200, %n.vec195
  br i1 %i.df, label %vec.epilog.middle.block201, label %vec.epilog.vector.body196, !llvm.loop !39

vec.epilog.middle.block201:                       ; preds = %vec.epilog.vector.body196
  br i1 %cmp.n202, label %mbedtls_xor_no_simd.exit, label %.lr.ph101.preheader

.lr.ph101.preheader:                              ; preds = %vector.memcheck, %iter.check189, %vec.epilog.iter.check191, %vec.epilog.middle.block201
  %.1.i100.ph = phi i64 [ %.lcssa242, %iter.check189 ], [ %.lcssa242, %vector.memcheck ], [ %i.cu, %vec.epilog.iter.check191 ], [ %i.da, %vec.epilog.middle.block201 ]
  br label %.lr.ph101

bb.i:                                             ; preds = %.preheader88
  %i.dg = getelementptr inbounds nuw i8, ptr %.1103, i64 8
  %.0.copyload.i86.1 = load i64, ptr %i.dg, align 1
  %.0.copyload.i85.1 = load i64, ptr %i.az, align 8
  %i.dh = xor i64 %.0.copyload.i85.1, %.0.copyload.i86.1
  store i64 %i.dh, ptr %i.az, align 8
  br label %..preheader_crit_edge

.lr.ph101:                                        ; preds = %.lr.ph101.preheader, %.lr.ph101
  %.1.i100 = phi i64 [ %i.dn, %.lr.ph101 ], [ %.1.i100.ph, %.lr.ph101.preheader ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.1103, i64 %.1.i100
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i100 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !17
  %i.dm = xor i8 %i.dl, %i.dj
  store i8 %i.dm, ptr %i.dk, align 1, !tbaa !17
  %i.dn = add nuw nsw i64 %.1.i100, 1             ; 2 uses
  %i.do = icmp samesign ult i64 %i.dn, %i.l
  br i1 %i.do, label %.lr.ph101, label %mbedtls_xor_no_simd.exit, !llvm.loop !40

mbedtls_xor_no_simd.exit:                         ; preds = %.lr.ph101, %middle.block186, %vec.epilog.middle.block201, %..preheader_crit_edge
  %i.dp = call i32 @mbedtls_cipher_update(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef %i.l, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not79 = icmp eq i32 %i.dp, 0
  br i1 %.not79, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %mbedtls_xor_no_simd.exit
  %i.dq = sub i64 %.164102, %i.l                  ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1103, i64 %i.l ; 2 uses
  %i.ds = add nuw i64 %.059104, 1                 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.as
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dt, label %.preheader88, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.j, %bb.h, %bb.g
  %.164.lcssa = phi i64 [ %.063, %bb.g ], [ %i.bm, %bb.h ], [ %i.dq, %bb.j ] ; 3 uses
  %.1.lcssa = phi ptr [ %.060, %bb.g ], [ %i.bn, %bb.h ], [ %i.dr, %bb.j ]
  %.not78 = icmp eq i64 %.164.lcssa, 0
  br i1 %.not78, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dv = load i64, ptr %i.n, align 8, !tbaa !15
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr align 1 %.1.lcssa, i64 %.164.lcssa, i1 false)
  %i.dx = load i64, ptr %i.n, align 8, !tbaa !15
  %i.dy = add i64 %i.dx, %.164.lcssa
  store i64 %i.dy, ptr %i.n, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %mbedtls_xor_no_simd.exit, %.mbedtls_xor_no_simd.exit_crit_edge.us, %mbedtls_xor_no_simd.exit83, %bb.k, %._crit_edge, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ -24832, %bb.a ], [ -24832, %bb.c ], [ -24832, %bb.b ], [ %i.al, %mbedtls_xor_no_simd.exit83 ], [ 0, %._crit_edge ], [ 0, %bb.k ], [ %i.co, %.mbedtls_xor_no_simd.exit_crit_edge.us ], [ %i.dp, %mbedtls_xor_no_simd.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @mbedtls_cipher_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @mbedtls_cipher_cmac_finish(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 9 uses
  %i.b = alloca [16 x i8], align 16               ; 9 uses
  %i.c = alloca [16 x i8], align 16               ; 18 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 13 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = icmp eq ptr %1, null
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %bb.k, label %mbedtls_cipher_info_get_block_size.exit

mbedtls_cipher_info_get_block_size.exit:          ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 31                         ; 8 uses
  %i.o = zext nneg i32 %i.n to i64                ; 16 uses
  %i.p = icmp samesign ult i32 %i.n, 17
  tail call void @llvm.assume(i1 %i.p)
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 16) #10
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #10
  %i.q = call fastcc i32 @cmac_generate_subkeys(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !15   ; 4 uses
  %i.u = icmp ult i64 %i.t, %i.o
  br i1 %i.u, label %.lr.ph.preheader.i, label %.preheader57

.preheader57:                                     ; preds = %mbedtls_cipher_info_get_block_size.exit
  %.not.i4058 = icmp samesign ult i32 %i.n, 8
  br i1 %.not.i4058, label %.preheader55, label %.lr.ph

.lr.ph.preheader.i:                               ; preds = %mbedtls_cipher_info_get_block_size.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %.015.i = phi i64 [ %i.ac, %bb.h ], [ 0, %.lr.ph.preheader.i ] ; 6 uses
  %i.w = icmp samesign ult i64 %.015.i, %i.t
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.015.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %.015.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !17
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.aa = icmp eq i64 %.015.i, %i.t
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 -128, ptr %i.v, align 1, !tbaa !17
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %.015.i
  store i8 0, ptr %i.ab, align 1, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.ac = add nuw nsw i64 %.015.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.o
  br i1 %exitcond.not.i, label %cmac_pad.exit.preheader, label %.lr.ph.i, !llvm.loop !41

cmac_pad.exit.preheader:                          ; preds = %bb.h
  %.not.i4462 = icmp samesign ult i32 %i.n, 8
  br i1 %.not.i4462, label %.preheader54, label %cmac_pad.exit

.preheader54:                                     ; preds = %cmac_pad.exit, %cmac_pad.exit.1, %cmac_pad.exit.preheader
  %.0.i43.lcssa = phi i64 [ 0, %cmac_pad.exit.preheader ], [ 8, %cmac_pad.exit ], [ 16, %cmac_pad.exit.1 ] ; 5 uses
  %i.ad = icmp samesign ult i64 %.0.i43.lcssa, %i.o
  br i1 %i.ad, label %iter.check122, label %mbedtls_xor.exit46

iter.check122:                                    ; preds = %.preheader54
  %i.ae = sub nuw nsw i64 %i.o, %.0.i43.lcssa     ; 2 uses
  %min.iters.check106 = icmp samesign ult i64 %i.ae, 8
  br i1 %min.iters.check106, label %.lr.ph67.preheader, label %vec.epilog.ph126

vec.epilog.ph126:                                 ; preds = %iter.check122
  %n.mod.vf127 = and i64 %i.o, 7                  ; 2 uses
  %n.vec128 = sub nuw nsw i64 %i.ae, %n.mod.vf127 ; 2 uses
  %i.af = add nuw i64 %.0.i43.lcssa, %n.vec128
  br label %vec.epilog.vector.body129

vec.epilog.vector.body129:                        ; preds = %vec.epilog.vector.body129, %vec.epilog.ph126
  %index130 = phi i64 [ 0, %vec.epilog.ph126 ], [ %index.next133, %vec.epilog.vector.body129 ] ; 2 uses
  %i.ag = add i64 %.0.i43.lcssa, %index130        ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag ; 2 uses
  %wide.load131 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ag
  %wide.load132 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !17
  %i.aj = xor <8 x i8> %wide.load132, %wide.load131
  store <8 x i8> %i.aj, ptr %i.ah, align 1, !tbaa !17
  %index.next133 = add nuw i64 %index130, 8       ; 2 uses
  %i.ak = icmp eq i64 %index.next133, %n.vec128
  br i1 %i.ak, label %vec.epilog.middle.block134, label %vec.epilog.vector.body129, !llvm.loop !42

vec.epilog.middle.block134:                       ; preds = %vec.epilog.vector.body129
  %cmp.n135 = icmp eq i64 %n.mod.vf127, 0
  br i1 %cmp.n135, label %mbedtls_xor.exit46, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %iter.check122, %vec.epilog.middle.block134
  %.1.i4566.ph = phi i64 [ %.0.i43.lcssa, %iter.check122 ], [ %i.af, %vec.epilog.middle.block134 ]
  br label %.lr.ph67

cmac_pad.exit:                                    ; preds = %cmac_pad.exit.preheader
  %.0.copyload.i47 = load i64, ptr %i.c, align 16
  %.0.copyload.i = load i64, ptr %i.b, align 16
  %i.al = xor i64 %.0.copyload.i, %.0.copyload.i47
  store i64 %i.al, ptr %i.c, align 16
  %.not.i44 = icmp samesign ult i32 %i.n, 16
  br i1 %.not.i44, label %.preheader54, label %cmac_pad.exit.1

cmac_pad.exit.1:                                  ; preds = %cmac_pad.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.0.copyload.i47.1 = load i64, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.an, align 8
  %i.ao = xor i64 %.0.copyload.i.1, %.0.copyload.i47.1
  store i64 %i.ao, ptr %i.am, align 8
  br label %.preheader54

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.lr.ph67
  %.1.i4566 = phi i64 [ %i.au, %.lr.ph67 ], [ %.1.i4566.ph, %.lr.ph67.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i4566 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i4566
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.at = xor i8 %i.as, %i.aq
  store i8 %i.at, ptr %i.ap, align 1, !tbaa !17
  %i.au = add nuw nsw i64 %.1.i4566, 1            ; 2 uses
  %exitcond78.not = icmp eq i64 %i.au, %i.o
  br i1 %exitcond78.not, label %mbedtls_xor.exit46, label %.lr.ph67, !llvm.loop !43

.preheader55:                                     ; preds = %.lr.ph, %.lr.ph.1, %.preheader57
  %.0.i39.lcssa = phi i64 [ 0, %.preheader57 ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 5 uses
  %i.av = icmp samesign ult i64 %.0.i39.lcssa, %i.o
  br i1 %i.av, label %iter.check, label %mbedtls_xor.exit46

iter.check:                                       ; preds = %.preheader55
  %i.aw = sub nuw nsw i64 %i.o, %.0.i39.lcssa     ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aw, 8
  br i1 %min.iters.check, label %.lr.ph61.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %iter.check
  %n.mod.vf98 = and i64 %i.o, 7                   ; 2 uses
  %n.vec99 = sub nuw nsw i64 %i.aw, %n.mod.vf98   ; 2 uses
  %i.ax = add nuw i64 %.0.i39.lcssa, %n.vec99
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index100 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next103, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = add i64 %.0.i39.lcssa, %index100        ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ay
  %wide.load101 = load <8 x i8>, ptr %i.az, align 1, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %wide.load102 = load <8 x i8>, ptr %i.ba, align 1, !tbaa !17
  %i.bb = xor <8 x i8> %wide.load102, %wide.load101
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ay
  store <8 x i8> %i.bb, ptr %i.bc, align 1, !tbaa !17
  %index.next103 = add nuw i64 %index100, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next103, %n.vec99
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n104 = icmp eq i64 %n.mod.vf98, 0
  br i1 %cmp.n104, label %mbedtls_xor.exit46, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %iter.check, %vec.epilog.middle.block
  %.1.i4160.ph = phi i64 [ %.0.i39.lcssa, %iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph61

.lr.ph:                                           ; preds = %.preheader57
  %.0.copyload.i49 = load i64, ptr %i.r, align 8
  %.0.copyload.i48 = load i64, ptr %i.a, align 16
  %i.be = xor i64 %.0.copyload.i48, %.0.copyload.i49
  store i64 %i.be, ptr %i.c, align 16
  %.not.i40 = icmp samesign ult i32 %i.n, 16
  br i1 %.not.i40, label %.preheader55, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.0.copyload.i49.1 = load i64, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.0.copyload.i48.1 = load i64, ptr %i.bg, align 8
  %i.bh = xor i64 %.0.copyload.i48.1, %.0.copyload.i49.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bh, ptr %i.bi, align 8
  br label %.preheader55

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %.lr.ph61
  %.1.i4160 = phi i64 [ %i.bp, %.lr.ph61 ], [ %.1.i4160.ph, %.lr.ph61.preheader ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 %.1.i4160
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i4160
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = xor i8 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i4160
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !17
  %i.bp = add nuw nsw i64 %.1.i4160, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %i.o
  br i1 %exitcond.not, label %mbedtls_xor.exit46, label %.lr.ph61, !llvm.loop !45

mbedtls_xor.exit46:                               ; preds = %.lr.ph61, %.lr.ph67, %vec.epilog.middle.block, %vec.epilog.middle.block134, %.preheader55, %.preheader54
  %.not.i68 = icmp samesign ult i32 %i.n, 8
  br i1 %.not.i68, label %.preheader, label %.lr.ph70

.preheader:                                       ; preds = %.lr.ph70, %.lr.ph70.1, %mbedtls_xor.exit46
  %.0.i.lcssa = phi i64 [ 0, %mbedtls_xor.exit46 ], [ 8, %.lr.ph70 ], [ 16, %.lr.ph70.1 ] ; 5 uses
  %i.bq = icmp samesign ult i64 %.0.i.lcssa, %i.o
  br i1 %i.bq, label %iter.check153, label %mbedtls_xor.exit

iter.check153:                                    ; preds = %.preheader
  %i.br = sub nuw nsw i64 %i.o, %.0.i.lcssa       ; 2 uses
  %min.iters.check137 = icmp samesign ult i64 %i.br, 8
  br i1 %min.iters.check137, label %.lr.ph73.preheader, label %vec.epilog.ph157

vec.epilog.ph157:                                 ; preds = %iter.check153
  %n.mod.vf158 = and i64 %i.o, 7                  ; 2 uses
  %n.vec159 = sub nuw nsw i64 %i.br, %n.mod.vf158 ; 2 uses
  %i.bs = add nuw i64 %.0.i.lcssa, %n.vec159
  br label %vec.epilog.vector.body160

vec.epilog.vector.body160:                        ; preds = %vec.epilog.vector.body160, %vec.epilog.ph157
  %index161 = phi i64 [ 0, %vec.epilog.ph157 ], [ %index.next164, %vec.epilog.vector.body160 ] ; 2 uses
  %i.bt = add i64 %.0.i.lcssa, %index161          ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bt
  %wide.load162 = load <8 x i8>, ptr %i.bu, align 1, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bt ; 2 uses
  %wide.load163 = load <8 x i8>, ptr %i.bv, align 1, !tbaa !17
  %i.bw = xor <8 x i8> %wide.load163, %wide.load162
  store <8 x i8> %i.bw, ptr %i.bv, align 1, !tbaa !17
  %index.next164 = add nuw i64 %index161, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next164, %n.vec159
  br i1 %i.bx, label %vec.epilog.middle.block165, label %vec.epilog.vector.body160, !llvm.loop !46

vec.epilog.middle.block165:                       ; preds = %vec.epilog.vector.body160
  %cmp.n166 = icmp eq i64 %n.mod.vf158, 0
  br i1 %cmp.n166, label %mbedtls_xor.exit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %iter.check153, %vec.epilog.middle.block165
  %.1.i72.ph = phi i64 [ %.0.i.lcssa, %iter.check153 ], [ %i.bs, %vec.epilog.middle.block165 ]
  br label %.lr.ph73

.lr.ph70:                                         ; preds = %mbedtls_xor.exit46
  %.0.copyload.i51 = load i64, ptr %i.c, align 16
  %.0.copyload.i50 = load i64, ptr %i.i, align 8
  %i.by = xor i64 %.0.copyload.i50, %.0.copyload.i51
  store i64 %i.by, ptr %i.i, align 8
  %.not.i = icmp samesign ult i32 %i.n, 16
  br i1 %.not.i, label %.preheader, label %.lr.ph70.1

.lr.ph70.1:                                       ; preds = %.lr.ph70
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i51.1 = load i64, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.0.copyload.i50.1 = load i64, ptr %i.ca, align 8
  %i.cb = xor i64 %.0.copyload.i50.1, %.0.copyload.i51.1
  store i64 %i.cb, ptr %i.ca, align 8
  br label %.preheader

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %.lr.ph73
  %.1.i72 = phi i64 [ %i.ch, %.lr.ph73 ], [ %.1.i72.ph, %.lr.ph73.preheader ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i72
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 %.1.i72 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !17
  %i.cg = xor i8 %i.cf, %i.cd
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !17
  %i.ch = add nuw nsw i64 %.1.i72, 1              ; 2 uses
  %exitcond79.not = icmp eq i64 %i.ch, %i.o
  br i1 %exitcond79.not, label %mbedtls_xor.exit, label %.lr.ph73, !llvm.loop !47

mbedtls_xor.exit:                                 ; preds = %.lr.ph73, %vec.epilog.middle.block165, %.preheader
  %i.ci = call i32 @mbedtls_cipher_update(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i64 noundef %i.o, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d) #10 ; 2 uses
  %.not = icmp eq i32 %i.ci, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %mbedtls_xor.exit
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.i, i64 %i.o, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %mbedtls_xor.exit, %bb.i
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 16) #10
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #10
  store i64 0, ptr %i.s, align 8, !tbaa !15
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.r, i64 noundef 16) #10
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.i, i64 noundef 16) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.j
  %.0 = phi i32 [ %i.ci, %bb.j ], [ -24832, %bb.c ], [ -24832, %bb.b ], [ -24832, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cmac_generate_subkeys(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 14 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 16) #10
  %i.c = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %mbedtls_cipher_info_get_block_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 31
  %i.h = zext nneg i32 %i.g to i64
  br label %mbedtls_cipher_info_get_block_size.exit

mbedtls_cipher_info_get_block_size.exit:          ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]   ; 31 uses
  %i.i = call i32 @mbedtls_cipher_update(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %.0.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10 ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %cmac_multiply_by_u.exit

bb.c:                                             ; preds = %mbedtls_cipher_info_get_block_size.exit
  switch i64 %.0.i, label %cmac_multiply_by_u.exit [
    i64 16, label %.lr.ph.i
    i64 8, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.019.i = phi i8 [ 27, %bb.d ], [ -121, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %.0.i, -4      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i
  %.0.copyload.i.i = load i32, ptr %i.j, align 1
  %i.k = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i) ; 2 uses
  %i.l = shl i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i
  %i.n = call i32 @llvm.bswap.i32(i32 %i.l)
  store i32 %i.n, ptr %i.m, align 1
  %i.o = icmp samesign ugt i64 %.0.i, 7
  br i1 %i.o, label %.lr.ph.i.1, label %bb.e

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %indvars.iv.next.i.1 = add nsw i64 %.0.i, -8    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.1
  %.0.copyload.i.i.1 = load i32, ptr %i.p, align 1
  %i.q = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.1) ; 2 uses
  %i.r = call i32 @llvm.fshl.i32(i32 %i.q, i32 %i.k, i32 1)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i.1
  %i.t = call i32 @llvm.bswap.i32(i32 %i.r)
  store i32 %i.t, ptr %i.s, align 1
  %i.u = icmp samesign ugt i64 %.0.i, 11
  br i1 %i.u, label %.lr.ph.i.2, label %bb.e

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %indvars.iv.next.i.2 = add nsw i64 %.0.i, -12   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.2
  %.0.copyload.i.i.2 = load i32, ptr %i.v, align 1
  %i.w = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.2) ; 2 uses
  %i.x = call i32 @llvm.fshl.i32(i32 %i.w, i32 %i.q, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i.2
  %i.z = call i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.z, ptr %i.y, align 1
  %i.aa = icmp samesign ugt i64 %.0.i, 15
  br i1 %i.aa, label %.lr.ph.i.3, label %bb.e

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %indvars.iv.next.i.3 = add nsw i64 %.0.i, -16   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.3
  %.0.copyload.i.i.3 = load i32, ptr %i.ab, align 1
  %i.ac = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.3) ; 2 uses
  %i.ad = call i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.w, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i.3
  %i.af = call i32 @llvm.bswap.i32(i32 %i.ad)
  store i32 %i.af, ptr %i.ae, align 1
  %i.ag = icmp samesign ugt i64 %.0.i, 19
  br i1 %i.ag, label %.lr.ph.i.4, label %bb.e

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %indvars.iv.next.i.4 = add nsw i64 %.0.i, -20   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.4
  %.0.copyload.i.i.4 = load i32, ptr %i.ah, align 1
  %i.ai = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.4) ; 2 uses
  %i.aj = call i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ac, i32 1)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i.4
  %i.al = call i32 @llvm.bswap.i32(i32 %i.aj)
  store i32 %i.al, ptr %i.ak, align 1
  %i.am = icmp samesign ugt i64 %.0.i, 23
  br i1 %i.am, label %.lr.ph.i.5, label %bb.e

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %indvars.iv.next.i.5 = add nsw i64 %.0.i, -24   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.5
  %.0.copyload.i.i.5 = load i32, ptr %i.an, align 1
  %i.ao = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.5) ; 2 uses
  %i.ap = call i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ai, i32 1)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i.5
  %i.ar = call i32 @llvm.bswap.i32(i32 %i.ap)
  store i32 %i.ar, ptr %i.aq, align 1
  %i.as = icmp samesign ugt i64 %.0.i, 27
  br i1 %i.as, label %.lr.ph.i.6, label %bb.e

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %indvars.iv.next.i.6 = add nsw i64 %.0.i, -28   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.6
  %.0.copyload.i.i.6 = load i32, ptr %i.at, align 1
  %i.au = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.6)
  %i.av = call i32 @llvm.fshl.i32(i32 %i.au, i32 %i.ao, i32 1)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i.6
  %i.ax = call i32 @llvm.bswap.i32(i32 %i.av)
  store i32 %i.ax, ptr %i.aw, align 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %i.ay = load i8, ptr %i.a, align 16, !tbaa !17
  %i.az = lshr i8 %i.ay, 7
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 2) %i.ba) #10, !srcloc !48
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = and i8 %.019.i, %i.bc
  %i.be = getelementptr i8, ptr %1, i64 %.0.i
  %i.bf = getelementptr i8, ptr %i.be, i64 -1     ; 2 uses
end_hunk_0
