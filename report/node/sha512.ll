inline.NumInlined: 11
inline.NumDeleted: 1
begin_hunk_0
@sha512_test_sum = internal constant [3 x [64 x i8]] [[64 x i8] c"\DD\AF5\A1\93az\BA\CCAsI\AE A1\12\E6\FAN\89\A9~\A2\0A\9E\EE\E6KU\D3\9A!\92\99*'O\C1\A86\BA<#\A3\FE\EB\BDEMD#d<\E8\0E*\9A\C9O\A5L\A4\9F", [64 x i8] c"\8E\95\9Bu\DA\E3\13\DA\8C\F4\F7(\14\FC\14?\8Fwy\C6\EB\9F\7F\A1r\99\AE\AD\B6\88\90\18P\1D(\9EI\00\F7\E43\1B\99\DE\C4\B5C:\C7\D3)\EE\B6\DD&T^\96\E5[\87K\E9\09", [64 x i8] c"\E7\18H=\0C\E7idN.B\C7\BC\15\B4c\8E\1F\98\B1; D(V2\A8\03\AF\A9s\EB\DE\0F\F2D\87~\A6\0AL\B0C,\E5w\C3\1B\EB\00\9C\\,I\AA.N\AD\B2\17\AD\8C\C0\9B"], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"  SHA-%d test #%d: \00", align 1
@sha_test_buf = internal unnamed_addr constant [3 x [113 x i8]] [[113 x i8] c"abc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [113 x i8] c"abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu\00", [113 x i8] zeroinitializer], align 16
@sha384_test_sum = internal constant [3 x <{ [48 x i8], [16 x i8] }>] [<{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\CB\00u?E\A3^\8B\B5\A0=i\9A\C6P\07',2\AB\0E\DE\D1c\1A\8B`ZC\FF[\ED\80\86\07+\A1\E7\CC#X\BA\EC\A14\C8%\A7", [16 x i8] zeroinitializer }>, <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\093\0C3\F7\11G\E8=\19/\C7\82\CD\1BGS\11\1B\17;;\05\D2/\A0\80\86\E3\B0\F7\12\FC\C7\C7\1AU~-\B9f\C3\E9\FA\91t`9", [16 x i8] zeroinitializer }>, <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\9D\0E\18\09qdt\CB\08n\83N1\0AJ\1C\ED\14\9E\9C\00\F2HRyr\CE\C5pL*[\07\B8\B3\DC8\EC\C4\EB\AE\97\DD\D8\7F=\89\85", [16 x i8] zeroinitializer }>], align 16
@str = private unnamed_addr constant [7 x i8] c"passed\00", align 1
@str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
end_hunk_0
begin_hunk_1_@mbedtls_sha512_self_test:bb.a
; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @mbedtls_sha512_common_self_test(i32 noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %2 = alloca %struct.mbedtls_sha512_context, align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %.not = icmp eq i32 %1, 0                       ; 5 uses
  %i.b = select i1 %.not, ptr @sha512_test_sum, ptr @sha384_test_sum
  %i.c = tail call noalias dereferenceable_or_null(1024) ptr @calloc(i64 noundef 1024, i64 noundef 1) #14 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
end_hunk_1
begin_hunk_2_@mbedtls_sha512_common_self_test:bb.a
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i64 136, i1 false)
  %.not41 = icmp eq i32 %0, 0                     ; 5 uses
  %i.e = shl nuw nsw i32 %1, 7
  %i.f = sub nuw nsw i32 512, %i.e                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = shl nuw nsw i32 %1, 4
  %i.o = sub nuw nsw i32 64, %i.n
  %i.p = zext nneg i32 %i.o to i64                ; 3 uses
  br i1 %.not41, label %.backedge, label %4

4:                                                ; preds = %bb.d
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.f, i32 noundef 1) ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %4, %bb.d
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %6, align 8
  br i1 %.not, label %bb.e, label %7

7:                                                ; preds = %.backedge
  br label %bb.e

bb.e:                                             ; preds = %7, %.backedge
  %8 = phi <2 x i64> [ <i64 -3766243637369397544, i64 7105036623409894663>, %7 ], [ <i64 7640891576956012808, i64 -4942790177534073029>, %.backedge ]
  %9 = phi <2 x i64> [ <i64 -7973340178411365097, i64 1526699215303891257>, %7 ], [ <i64 4354685564936845355, i64 -6534734903238641935>, %.backedge ]
  %10 = phi <2 x i64> [ <i64 7436329637833083697, i64 -8163818279084223215>, %7 ], [ <i64 5840696475078001361, i64 -7276294671716946913>, %.backedge ]
  %11 = phi <2 x i64> [ <i64 -2662702644619276377, i64 5167115440072839076>, %7 ], [ <i64 2270897969802886507, i64 6620516959819538809>, %.backedge ]
  store <2 x i64> %8, ptr %i.g, align 8, !tbaa !10
  store <2 x i64> %9, ptr %i.h, align 8, !tbaa !10
  store <2 x i64> %10, ptr %i.i, align 8, !tbaa !10
  store <2 x i64> %11, ptr %i.j, align 8, !tbaa !10
  store i32 %1, ptr %i.k, align 8, !tbaa !12
  store i64 3, ptr %2, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.l, ptr noundef nonnull align 16 dereferenceable(3) @sha_test_buf, i64 3, i1 false)
  %12 = call i32 @mbedtls_sha512_finish(ptr noundef nonnull %2, ptr noundef nonnull %i.a) ; 0 uses
  %i.q = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b, i64 %i.p)
  %.not45 = icmp eq i32 %i.q, 0
  br i1 %.not45, label %13, label %bb.q

13:                                               ; preds = %bb.e
  br i1 %.not41, label %bb.f, label %14

14:                                               ; preds = %13
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.f, i32 noundef 2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %13, %14
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %16, align 8
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %17 = phi ptr [ getelementptr inbounds nuw (i8, ptr @sha384_test_sum, i64 64), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @sha512_test_sum, i64 64), %bb.f ]
  %i.r = phi <2 x i64> [ <i64 -3766243637369397544, i64 7105036623409894663>, %bb.g ], [ <i64 7640891576956012808, i64 -4942790177534073029>, %bb.f ]
  %i.s = phi <2 x i64> [ <i64 -7973340178411365097, i64 1526699215303891257>, %bb.g ], [ <i64 4354685564936845355, i64 -6534734903238641935>, %bb.f ]
  %i.t = phi <2 x i64> [ <i64 7436329637833083697, i64 -8163818279084223215>, %bb.g ], [ <i64 5840696475078001361, i64 -7276294671716946913>, %bb.f ]
end_hunk_2
begin_hunk_3_@mbedtls_sha512_common_self_test:bb.a
  store <2 x i64> %i.t, ptr %i.i, align 8, !tbaa !10
  store <2 x i64> %i.u, ptr %i.j, align 8, !tbaa !10
  store i32 %1, ptr %i.k, align 8, !tbaa !12
  store i64 112, ptr %2, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.l, ptr noundef nonnull align 1 dereferenceable(112) getelementptr inbounds nuw (i8, ptr @sha_test_buf, i64 113), i64 112, i1 false)
  %18 = call i32 @mbedtls_sha512_finish(ptr noundef nonnull %2, ptr noundef nonnull %i.a) ; 0 uses
  %bcmp.1 = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %17, i64 %i.p)
  %i.v = icmp eq i32 %bcmp.1, 0
  br i1 %i.v, label %19, label %bb.q

19:                                               ; preds = %bb.h
  br i1 %.not41, label %.thread72, label %20

20:                                               ; preds = %19
  %puts.1 = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.f, i32 noundef 3) ; 0 uses
  br label %.thread72

.thread72:                                        ; preds = %19, %20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br i1 %.not, label %bb.i, label %22

22:                                               ; preds = %.thread72
  br label %bb.i

bb.i:                                             ; preds = %.thread72, %22
  %23 = phi <2 x i64> [ <i64 -3766243637369397544, i64 7105036623409894663>, %22 ], [ <i64 7640891576956012808, i64 -4942790177534073029>, %.thread72 ]
  %24 = phi <2 x i64> [ <i64 -7973340178411365097, i64 1526699215303891257>, %22 ], [ <i64 4354685564936845355, i64 -6534734903238641935>, %.thread72 ]
  %25 = phi <2 x i64> [ <i64 7436329637833083697, i64 -8163818279084223215>, %22 ], [ <i64 5840696475078001361, i64 -7276294671716946913>, %.thread72 ]
  %26 = phi <2 x i64> [ <i64 -2662702644619276377, i64 5167115440072839076>, %22 ], [ <i64 2270897969802886507, i64 6620516959819538809>, %.thread72 ]
  store <2 x i64> %23, ptr %i.g, align 8, !tbaa !10
  store <2 x i64> %24, ptr %i.h, align 8, !tbaa !10
  store <2 x i64> %25, ptr %i.i, align 8, !tbaa !10
  store <2 x i64> %26, ptr %i.j, align 8, !tbaa !10
  store i32 %1, ptr %i.k, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %i.c, i8 97, i64 1000, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %mbedtls_sha512_update.exit, %bb.i
  %.061 = phi i32 [ 0, %bb.i ], [ %i.ar, %mbedtls_sha512_update.exit ]
  %i.w = load i64, ptr %2, align 8, !tbaa !10     ; 4 uses
  %i.x = trunc i64 %i.w to i32
end_hunk_3
begin_hunk_4_@mbedtls_sha512_common_self_test:bb.a
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !10
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.m, align 8, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
end_hunk_4
begin_hunk_5_@mbedtls_sha512_common_self_test:bb.a

bb.m:                                             ; preds = %bb.l
  %i.af = and i64 %i.w, 127
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.c, i64 %i.aa, i1 false)
  %i.ah = call i32 @mbedtls_internal_sha512_process(ptr noundef nonnull %2, ptr noundef nonnull %i.l) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa
  %i.aj = sub nuw nsw i64 1000, %i.aa
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %bb.l
  %.042.i = phi i64 [ %i.aj, %bb.m ], [ 1000, %bb.l ] ; 3 uses
  %.039.i = phi ptr [ %i.ai, %bb.m ], [ %i.c, %bb.l ] ; 2 uses
  br label %bb.n
end_hunk_5
begin_hunk_6_@mbedtls_sha512_common_self_test:bb.a
.thread62.i:                                      ; preds = %bb.o
  %i.ap = and i64 %.042.i, 896
  %i.aq = getelementptr inbounds nuw i8, ptr %.039.i, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 1 %i.aq, i64 %i.ao, i1 false)
  br label %mbedtls_sha512_update.exit

mbedtls_sha512_update.exit:                       ; preds = %.thread62.i, %bb.o
end_hunk_6
begin_hunk_7_@mbedtls_sha512_common_self_test:bb.a
  %exitcond.not = icmp eq i32 %i.ar, 1000
  br i1 %exitcond.not, label %mbedtls_sha512_update.exit60, label %bb.j, !llvm.loop !21

mbedtls_sha512_update.exit60:                     ; preds = %mbedtls_sha512_update.exit
  %i.as = call i32 @mbedtls_sha512_finish(ptr noundef nonnull %2, ptr noundef nonnull %i.a) ; 0 uses
  %27 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @sha512_test_sum, i64 128), ptr getelementptr inbounds nuw (i8, ptr @sha384_test_sum, i64 128)
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %27, i64 %i.p)
  %.not45.a = icmp eq i32 %bcmp, 0
  br i1 %.not45.a, label %bb.p, label %bb.q

bb.p:                                             ; preds = %mbedtls_sha512_update.exit60
  br i1 %.not41, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.p
  %puts.a = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %mbedtls_sha512_update.exit60, %bb.h, %bb.e
  br i1 %.not41, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %puts46 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.q, %bb.r, %.thread
  %.4 = phi i32 [ 1, %bb.r ], [ 1, %bb.q ], [ 0, %.thread ], [ 0, %bb.p ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %2, i64 noundef 216) #13
  call void @free(ptr noundef %i.c) #13
  br label %bb.s
end_hunk_7
begin_hunk_8_@puts
!19 = !{!18, !11, i64 8}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
end_hunk_8
