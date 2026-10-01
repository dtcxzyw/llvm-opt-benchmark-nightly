Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/test-crypto-pbkdf?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0
@.str.16 = private unnamed_addr constant [30 x i8] c"pass phrase equals block size\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"\13\9C0\C0\96k\C3+\A5_\DB\F2\12S\0A\C9\C5\ECY\F1\A4R\F5\CC\9A\D9@\FE\A0Y\8E\D1\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"/crypto/pbkdf/rfc3962/sha1/iter1200c\00", align 1
@.str.19 = private unnamed_addr constant [66 x i8] c"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"pass phrase exceeds block size\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"\9C\CA\D6\D4hw\0C\D5\1B\10\E6\A6\87!\BEa\1A\8BM(&\01\DB;6\BE\92F\91^\C8*\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"/crypto/pbkdf/rfc3962/sha1/iter50\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\F0\9D\84\9E\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"EXAMPLE.COMpianist\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"k\9C\F2mEEZC\A5\B8\BB'j@;9\E7\FE7\A0\C4\1E\02\C2\81\FF0i\E1\E9OR\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"/crypto/pbkdf/rfc6070/sha1/iter1\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"\0C`\C8\0F\96\1F\0Eq\F3\A9\B5$\AF`\12\06/\E07\A6\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"/crypto/pbkdf/rfc6070/sha1/iter2\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"\EAl\01M\C7-o\8C\CD\1E\D9*\CE\1DA\F0\D8\DE\89W\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"/crypto/pbkdf/rfc6070/sha1/iter4096\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"K\00y\01\B7eH\9A\BE\ADI\D9&\F7!\D0e\A4)\C1\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"/crypto/pbkdf/rfc6070/sha1/iter16777216\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"\EE\FE=a\CDM\A4\E4\E9\94[=k\A2\15\8C&4\E9\84\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"/crypto/pbkdf/rfc6070/sha1/iter4096a\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"passwordPASSWORDpassword\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"saltSALTsaltSALTsaltSALTsaltSALTsalt\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"=.\ECO\E4\1C\84\9B\80\C8\D86b\C0\E4J\8B)\1A\96L\F2\F0p8\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"/crypto/pbkdf/rfc6070/sha1/iter4096b\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"pass\00word\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"sa\00lt\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"V\FAj\A7UH\09\9D\CC7\D7\F04%\E0\C3\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"/crypto/pbkdf/nonrfc/sha1/iter2\00", align 1
@.str.44 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"\13:L\E87\B4\D2R\1E\E2\BF\03\E1\1Cq\CAyN\07\97\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"/crypto/pbkdf/nonrfc/sha256/iter1200\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"\224K\C4\B6\E3&u\A8\09\0F>\A8\0B\E0\1D_\95\12j,\DD\C3\FA\CCJ^m\CA\04\ECX\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"/crypto/pbkdf/nonrfc/sha512/iter1200\00", align 1
@.str.49 = private unnamed_addr constant [130 x i8] c"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"\0F\B2\ED,\0En\FB}}\8E\DDX\01\B4Yr\99\92\160^\A46\8Dv\14\80\F3\E3z\22\B9\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"/crypto/pbkdf/nonrfc/sha224/iter1200\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"\13;\88\0C\0ER\A2AI35\A6\C3\83\AE#\F6wC\9E[0\92>J:\AA$i<\ED \00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"/crypto/pbkdf/nonrfc/sha384/iter1200\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"\FE\E3\E1\84\C9%>\10G\C8}S\C6\A5\E3w)Av\BDK\E3\9B\AC\05l\11\DD\17\C5\93\80\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"/crypto/pbkdf/nonrfc/ripemd160/iter1200\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"\D6\CB\D8\A7\DB\0C\A2*#^G\AF\DB\DA\A8\EF\E4\01\0Do\B53\C8\BD\CE\BF\91\14\8B\\HA\00", align 1
@test_data = internal global [19 x { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] }] [{ ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.3, i32 1, i32 1, ptr @.str.4, i64 8, ptr @.str.5, i64 21, ptr @.str.6, i64 32, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.7, i32 1, i32 2, ptr @.str.4, i64 8, ptr @.str.5, i64 21, ptr @.str.8, i64 32, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.9, i32 1, i32 1200, ptr @.str.4, i64 8, ptr @.str.5, i64 21, ptr @.str.10, i64 32, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.11, i32 1, i32 5, ptr @.str.4, i64 8, ptr @.str.12, i64 8, ptr @.str.13, i64 32, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.14, i32 1, i32 1200, ptr @.str.15, i64 64, ptr @.str.16, i64 29, ptr @.str.17, i64 32, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.18, i32 1, i32 1200, ptr @.str.19, i64 65, ptr @.str.20, i64 30, ptr @.str.21, i64 32, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.22, i32 1, i32 50, ptr @.str.23, i64 4, ptr @.str.24, i64 18, ptr @.str.25, i64 32, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.26, i32 1, i32 1, ptr @.str.4, i64 8, ptr @.str.27, i64 4, ptr @.str.28, i64 20, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.29, i32 1, i32 2, ptr @.str.4, i64 8, ptr @.str.27, i64 4, ptr @.str.30, i64 20, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.31, i32 1, i32 4096, ptr @.str.4, i64 8, ptr @.str.27, i64 4, ptr @.str.32, i64 20, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.33, i32 1, i32 16777216, ptr @.str.4, i64 8, ptr @.str.27, i64 4, ptr @.str.34, i64 20, i8 1, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.35, i32 1, i32 4096, ptr @.str.36, i64 24, ptr @.str.37, i64 36, ptr @.str.38, i64 25, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.39, i32 1, i32 4096, ptr @.str.40, i64 9, ptr @.str.41, i64 5, ptr @.str.42, i64 16, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.43, i32 1, i32 2, ptr @.str.44, i64 0, ptr @.str.27, i64 4, ptr @.str.45, i64 20, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.46, i32 3, i32 1200, ptr @.str.19, i64 65, ptr @.str.20, i64 30, ptr @.str.47, i64 32, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.48, i32 5, i32 1200, ptr @.str.49, i64 129, ptr @.str.20, i64 30, ptr @.str.50, i64 32, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.51, i32 2, i32 1200, ptr @.str.49, i64 129, ptr @.str.20, i64 30, ptr @.str.52, i64 32, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.53, i32 4, i32 1200, ptr @.str.49, i64 129, ptr @.str.20, i64 30, ptr @.str.54, i64 32, i8 0, [7 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, i8, [7 x i8] } { ptr @.str.55, i32 6, i32 1200, ptr @.str.49, i64 129, ptr @.str.20, i64 30, ptr @.str.56, i64 32, i8 0, [7 x i8] zeroinitializer }], align 16
@qemu_g_test_slow.cached = internal unnamed_addr global i32 -1, align 4
@g_test_config_vars = external local_unnamed_addr constant ptr, align 8
@.str.58 = private unnamed_addr constant [12 x i8] c"G_TEST_SLOW\00", align 1
@error_abort = external global ptr, align 8
@__func__.test_pbkdf = private unnamed_addr constant [11 x i8] c"test_pbkdf\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"actual == expect\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@__func__.test_pbkdf_timing_sha256 = private unnamed_addr constant [25 x i8] c"test_pbkdf_timing_sha256\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"iters >= (1 << 15)\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store i32 %0, ptr %i.a, align 4
  store ptr %1, ptr %i.b, align 8
  call void (ptr, ptr, ...) @g_test_init(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #8
  %i.c = call i32 @qcrypto_init(ptr noundef null) #8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %bb.b, !prof !9

.preheader:                                       ; preds = %bb.a
  %i.d = load ptr, ptr @g_test_config_vars, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 437, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.1) #9
  unreachable

bb.c:                                             ; preds = %.preheader, %bb.j
  %.013 = phi i64 [ 0, %.preheader ], [ %i.v, %bb.j ] ; 2 uses
  %i.f = getelementptr inbounds nuw [72 x i8], ptr @test_data, i64 %.013 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = call zeroext i1 @qcrypto_pbkdf2_supports(i32 noundef %i.h) #8
  br i1 %i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.k = load i8, ptr %i.j, align 8, !range !10, !noundef !11
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr @qemu_g_test_slow.cached, align 4 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.f, label %qemu_g_test_slow.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.e, align 4
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call ptr @getenv(ptr noundef nonnull @.str.58) #8
  %i.q = icmp ne ptr %i.p, null
  %i.r = zext i1 %i.q to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = phi i32 [ 1, %bb.f ], [ %i.r, %bb.g ]    ; 2 uses
  store i32 %i.s, ptr @qemu_g_test_slow.cached, align 4
  br label %qemu_g_test_slow.exit

qemu_g_test_slow.exit:                            ; preds = %bb.e, %bb.h
  %i.t = phi i32 [ %i.s, %bb.h ], [ %i.m, %bb.e ]
  %.not12 = icmp eq i32 %i.t, 0
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %qemu_g_test_slow.exit, %bb.d
  %i.u = load ptr, ptr %i.f, align 8
  call void @g_test_add_data_func(ptr noundef %i.u, ptr noundef nonnull %i.f, ptr noundef nonnull @test_pbkdf) #8
  br label %bb.j

bb.j:                                             ; preds = %qemu_g_test_slow.exit, %bb.i, %bb.c
  %i.v = add nuw nsw i64 %.013, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, 19
  br i1 %exitcond.not, label %bb.k, label %bb.c, !llvm.loop !8

bb.k:                                             ; preds = %bb.j
  %i.w = load i32, ptr @qemu_g_test_slow.cached, align 4 ; 2 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.l, label %qemu_g_test_slow.exit10

bb.l:                                             ; preds = %bb.k
  %i.y = load i32, ptr %i.e, align 4
  %.not.i9 = icmp eq i32 %i.y, 0
  br i1 %.not.i9, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = call ptr @getenv(ptr noundef nonnull @.str.58) #8
  %i.aa = icmp ne ptr %i.z, null
  %i.ab = zext i1 %i.aa to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = phi i32 [ 1, %bb.l ], [ %i.ab, %bb.m ]  ; 2 uses
  store i32 %i.ac, ptr @qemu_g_test_slow.cached, align 4
  br label %qemu_g_test_slow.exit10

qemu_g_test_slow.exit10:                          ; preds = %bb.k, %bb.n
  %i.ad = phi i32 [ %i.ac, %bb.n ], [ %i.w, %bb.k ]
  %.not11 = icmp eq i32 %i.ad, 0
  br i1 %.not11, label %bb.q, label %bb.o

bb.o:                                             ; preds = %qemu_g_test_slow.exit10
  %i.ae = call zeroext i1 @qcrypto_pbkdf2_supports(i32 noundef 3) #8
  br i1 %i.ae, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @g_test_add_func(ptr noundef nonnull @.str.2, ptr noundef nonnull @test_pbkdf_timing_sha256) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %qemu_g_test_slow.exit10
  %i.af = call i32 @g_test_run() #8
  ret i32 %i.af
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @g_test_init(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @qcrypto_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @qcrypto_pbkdf2_supports(i32 noundef) local_unnamed_addr #2

declare void @g_test_add_data_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_pbkdf(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 8 uses
  %i.c = tail call noalias ptr @g_malloc0(i64 noundef %i.b) #10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = zext i32 %i.o to i64
  %i.q = tail call i32 @qcrypto_pbkdf2(i32 noundef %i.e, ptr noundef %i.g, i64 noundef %i.i, ptr noundef %i.k, i64 noundef %i.m, i64 noundef %i.p, ptr noundef %i.c, i64 noundef %i.b, ptr noundef nonnull @error_abort) #8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8              ; 4 uses
  %i.t = load i64, ptr %i.a, align 8              ; 8 uses
  %i.u = shl i64 %i.t, 1                          ; 2 uses
  %i.v = or disjoint i64 %i.u, 1
  %i.w = tail call noalias ptr @g_malloc0(i64 noundef %i.v) #10 ; 8 uses
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %hex_string.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.t, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader57, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %1 = shl i64 %i.t, 1
  %2 = getelementptr i8, ptr %i.w, i64 %1
  %3 = getelementptr i8, ptr %i.s, i64 %i.t
  %bound0 = icmp ult ptr %i.w, %3
  %bound1 = icmp ult ptr %i.s, %2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %index
  %wide.load = load <8 x i8>, ptr %i.x, align 1, !alias.scope !19 ; 3 uses
  %i.y = lshr <8 x i8> %wide.load, splat (i8 4)   ; 2 uses
  %i.z = icmp ult <8 x i8> %wide.load, splat (i8 -96)
  %i.aa = or disjoint <8 x i8> %i.y, splat (i8 48)
  %i.ab = add nuw nsw <8 x i8> %i.y, splat (i8 87)
  %i.ac = select <8 x i1> %i.z, <8 x i8> %i.aa, <8 x i8> %i.ab
  %i.ad = shl i64 %index, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ad
  %i.af = and <8 x i8> %wide.load, splat (i8 15)  ; 3 uses
  %i.ag = icmp samesign ult <8 x i8> %i.af, splat (i8 10)
  %i.ah = or disjoint <8 x i8> %i.af, splat (i8 48)
  %i.ai = add nuw nsw <8 x i8> %i.af, splat (i8 87)
  %i.aj = select <8 x i1> %i.ag, <8 x i8> %i.ah, <8 x i8> %i.ai
  %interleaved.vec = shufflevector <8 x i8> %i.ac, <8 x i8> %i.aj, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.ae, align 1, !alias.scope !20, !noalias !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %hex_string.exit, label %.lr.ph.i.preheader57

.lr.ph.i.preheader57:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.028.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader57, %.lr.ph.i
  %.028.i = phi i64 [ %i.ay, %.lr.ph.i ], [ %.028.i.ph, %.lr.ph.i.preheader57 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 %.028.i
  %i.am = load i8, ptr %i.al, align 1             ; 3 uses
  %i.an = lshr i8 %i.am, 4                        ; 2 uses
  %i.ao = icmp ult i8 %i.am, -96
  %i.ap = or disjoint i8 %i.an, 48
  %i.aq = add nuw nsw i8 %i.an, 87
  %.0.i.i = select i1 %i.ao, i8 %i.ap, i8 %i.aq
  %i.ar = shl i64 %.028.i, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ar ; 2 uses
  store i8 %.0.i.i, ptr %i.as, align 1
  %i.at = and i8 %i.am, 15                        ; 3 uses
  %i.au = icmp samesign ult i8 %i.at, 10
  %i.av = or disjoint i8 %i.at, 48
  %i.aw = add nuw nsw i8 %i.at, 87
  %.0.i27.i = select i1 %i.au, i8 %i.av, i8 %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %.0.i27.i, ptr %i.ax, align 1
  %i.ay = add nuw i64 %.028.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ay, %i.t
  br i1 %exitcond.not.i, label %hex_string.exit, label %.lr.ph.i, !llvm.loop !16

hex_string.exit:                                  ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.az, align 1
  %i.ba = shl i64 %i.b, 1                         ; 2 uses
  %i.bb = or disjoint i64 %i.ba, 1
  %i.bc = tail call noalias ptr @g_malloc0(i64 noundef %i.bb) #10 ; 6 uses
  %.not.i35 = icmp eq i64 %i.b, 0
  br i1 %.not.i35, label %hex_string.exit41, label %.lr.ph.i36.preheader

.lr.ph.i36.preheader:                             ; preds = %hex_string.exit
  %min.iters.check45 = icmp ult i64 %i.b, 8
  br i1 %min.iters.check45, label %.lr.ph.i36.preheader56, label %vector.ph46

vector.ph46:                                      ; preds = %.lr.ph.i36.preheader
  %n.vec47 = and i64 %i.b, -8                     ; 3 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next52, %vector.body48 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %index49
  %wide.load50 = load <8 x i8>, ptr %i.bd, align 1 ; 3 uses
  %i.be = lshr <8 x i8> %wide.load50, splat (i8 4) ; 2 uses
  %i.bf = icmp ult <8 x i8> %wide.load50, splat (i8 -96)
  %i.bg = or disjoint <8 x i8> %i.be, splat (i8 48)
  %i.bh = add nuw nsw <8 x i8> %i.be, splat (i8 87)
  %i.bi = select <8 x i1> %i.bf, <8 x i8> %i.bg, <8 x i8> %i.bh
  %i.bj = shl i64 %index49, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bj
  %i.bl = and <8 x i8> %wide.load50, splat (i8 15) ; 3 uses
  %i.bm = icmp samesign ult <8 x i8> %i.bl, splat (i8 10)
  %i.bn = or disjoint <8 x i8> %i.bl, splat (i8 48)
  %i.bo = add nuw nsw <8 x i8> %i.bl, splat (i8 87)
  %i.bp = select <8 x i1> %i.bm, <8 x i8> %i.bn, <8 x i8> %i.bo
  %interleaved.vec51 = shufflevector <8 x i8> %i.bi, <8 x i8> %i.bp, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec51, ptr %i.bk, align 1
  %index.next52 = add nuw i64 %index49, 8         ; 2 uses
  %i.bq = icmp eq i64 %index.next52, %n.vec47
  br i1 %i.bq, label %middle.block53, label %vector.body48, !llvm.loop !17

middle.block53:                                   ; preds = %vector.body48
  %cmp.n54 = icmp eq i64 %i.b, %n.vec47
  br i1 %cmp.n54, label %hex_string.exit41, label %.lr.ph.i36.preheader56

.lr.ph.i36.preheader56:                           ; preds = %.lr.ph.i36.preheader, %middle.block53
  %.028.i37.ph = phi i64 [ 0, %.lr.ph.i36.preheader ], [ %n.vec47, %middle.block53 ]
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.preheader56, %.lr.ph.i36
  %.028.i37 = phi i64 [ %i.ce, %.lr.ph.i36 ], [ %.028.i37.ph, %.lr.ph.i36.preheader56 ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 %.028.i37
  %i.bs = load i8, ptr %i.br, align 1             ; 3 uses
  %i.bt = lshr i8 %i.bs, 4                        ; 2 uses
  %i.bu = icmp ult i8 %i.bs, -96
  %i.bv = or disjoint i8 %i.bt, 48
  %i.bw = add nuw nsw i8 %i.bt, 87
  %.0.i.i38 = select i1 %i.bu, i8 %i.bv, i8 %i.bw
  %i.bx = shl i64 %.028.i37, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bx ; 2 uses
  store i8 %.0.i.i38, ptr %i.by, align 1
  %i.bz = and i8 %i.bs, 15                        ; 3 uses
  %i.ca = icmp samesign ult i8 %i.bz, 10
  %i.cb = or disjoint i8 %i.bz, 48
  %i.cc = add nuw nsw i8 %i.bz, 87
  %.0.i27.i39 = select i1 %i.ca, i8 %i.cb, i8 %i.cc
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %.0.i27.i39, ptr %i.cd, align 1
  %i.ce = add nuw i64 %.028.i37, 1                ; 2 uses
  %exitcond.not.i40 = icmp eq i64 %i.ce, %i.b
  br i1 %exitcond.not.i40, label %hex_string.exit41, label %.lr.ph.i36, !llvm.loop !18

hex_string.exit41:                                ; preds = %.lr.ph.i36, %middle.block53, %hex_string.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.cf, align 1
  %i.cg = tail call i32 @g_strcmp0(ptr noundef %i.bc, ptr noundef nonnull %i.w) #8
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %hex_string.exit41
  tail call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 404, ptr noundef nonnull @__func__.test_pbkdf, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.bc, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.w) #8
  br label %bb.c

bb.c:                                             ; preds = %hex_string.exit41, %bb.b
  tail call void @g_free(ptr noundef nonnull %i.bc) #8
  tail call void @g_free(ptr noundef nonnull %i.w) #8
  tail call void @g_free(ptr noundef %i.c) #8
  ret void
}

declare void @g_test_add_func(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_pbkdf_timing_sha256() #4 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 noundef 93, i64 noundef 32, i1 noundef false) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 noundef 124, i64 noundef 32, i1 noundef false) #8
  %i.c = call i64 @qcrypto_pbkdf2_count_iters(i32 noundef 3, ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %i.b, i64 noundef 32, i64 noundef 32, ptr noundef nonnull @error_abort) #8
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp slt i32 %i.d, 32768
  br i1 %i.e, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 427, ptr noundef nonnull @__func__.test_pbkdf_timing_sha256, ptr noundef nonnull @.str.61) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare i32 @g_test_run() local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #6

declare i32 @qcrypto_pbkdf2(i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_assertion_message_cmpstr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i64 @qcrypto_pbkdf2_count_iters(i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = distinct !{!12, !"LVerDomain"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !7, !21, !22}
!16 = distinct !{!16, !7, !21}
!17 = distinct !{!17, !7, !21, !22}
!18 = distinct !{!18, !7, !22, !21}
!19 = !{!13}
!20 = !{!14}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
