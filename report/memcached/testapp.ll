Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/testapp?download=true
inline.NumInlined: 158
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@test_vperror:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 6 uses
  %i.b = alloca [80 x i8], align 16               ; 5 uses
  %i.c = alloca [80 x i8], align 16               ; 5 uses
  %i.d = tail call i32 @dup(i32 noundef 2) #21    ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.62, i32 noundef 743, ptr noundef nonnull @__PRETTY_FUNCTION__.test_vperror) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 1 dereferenceable(24) @str, i64 noundef 24, i1 false) #21
  %i.f = call i32 @mkstemp(ptr noundef nonnull %i.a) #21 ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @__assert_fail(ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.62, i32 noundef 748, ptr noundef nonnull @__PRETTY_FUNCTION__.test_vperror) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = call i32 @dup2(i32 noundef %i.f, i32 noundef 2) #21
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @__assert_fail(ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.62, i32 noundef 750, ptr noundef nonnull @__PRETTY_FUNCTION__.test_vperror) #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = call i32 @close(i32 noundef %i.f) #21
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @__assert_fail(ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.62, i32 noundef 752, ptr noundef nonnull @__PRETTY_FUNCTION__.test_vperror) #22
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = tail call ptr @__errno_location() #24
  store i32 5, ptr %i.l, align 4, !tbaa !17
  call void (ptr, ...) @vperror(ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.205) #21
  %i.m = call i32 @dup2(i32 noundef %i.d, i32 noundef 2) #21
  %i.n = icmp eq i32 %i.m, 2
  br i1 %i.n, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @__assert_fail(ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.62, i32 noundef 759, ptr noundef nonnull @__PRETTY_FUNCTION__.test_vperror) #22
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  %i.o = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.192) ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.62, i32 noundef 765, ptr noundef nonnull @__PRETTY_FUNCTION__.test_vperror) #22
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.p = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 80, ptr noundef nonnull %i.o)
  %.not13 = icmp eq ptr %i.p, null
  br i1 %.not13, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @__assert_fail(ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.62, i32 noundef 767, ptr noundef nonnull @__PRETTY_FUNCTION__.test_vperror) #22
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.q = call i32 @fclose(ptr noundef nonnull %i.o) ; 0 uses
  %i.r = call i32 @unlink(ptr noundef nonnull %i.a) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, i8 0, i64 80, i1 false)
  %i.s = call ptr @strerror(i32 noundef 5) #21
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 80, ptr noundef nonnull @.str.208, ptr noundef %i.s) #21 ; 0 uses
  %i.u = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.b) #23
  %i.v = icmp eq i32 %i.u, 0
  %i.w = select i1 %i.v, i32 1, i32 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %i.w
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @test_issue_101() #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.209) #21
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @start_server(ptr noundef nonnull @port, i1 noundef zeroext false, i32 noundef 1000)
  store i32 %i.c, ptr @server_pid, align 4, !tbaa !17
  %i.d = load i16, ptr @port, align 2, !tbaa !30
  %i.e = tail call fastcc ptr @connect_server(i16 noundef zeroext %i.d, i1 noundef zeroext true) ; 6 uses
  %.not46 = icmp eq ptr %i.e, null
  br i1 %.not46, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.f
  %i.f = load i16, ptr @port, align 2, !tbaa !30
  %i.g = tail call fastcc ptr @connect_server(i16 noundef zeroext %i.f, i1 noundef zeroext true) ; 6 uses
  %.not46.1 = icmp eq ptr %i.g, null
  br i1 %.not46.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.g, align 8, !tbaa !32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.preheader.preheader, label %bb.g

.preheader.preheader:                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.62, i32 noundef 2188, ptr noundef nonnull @__PRETTY_FUNCTION__.test_issue_101) #22
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.e, align 8, !tbaa !32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.62, i32 noundef 2189, ptr noundef nonnull @__PRETTY_FUNCTION__.test_issue_101) #22
  unreachable

bb.h:                                             ; preds = %.backedge82, %.preheader.preheader
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.n = tail call i64 %i.m(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.210, i64 noundef 35) #21
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.i, label %.backedge82

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @__errno_location() #24    ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17
  switch i32 %i.q, label %.loopexit [
    i32 4, label %.backedge82
    i32 12, label %.preheader.1
    i32 11, label %.preheader.1
  ]

.backedge82:                                      ; preds = %bb.i, %bb.h
  br label %bb.h

.preheader.1:                                     ; preds = %bb.i, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %.preheader.1
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.t = tail call i64 %i.s(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.210, i64 noundef 35) #21
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %bb.k, label %.backedge

bb.k:                                             ; preds = %bb.j
  %i.v = load i32, ptr %i.p, align 4, !tbaa !17
  switch i32 %i.v, label %.loopexit [
    i32 4, label %.backedge
    i32 12, label %bb.l
    i32 11, label %bb.l
  ]

.backedge:                                        ; preds = %bb.k, %bb.j
  br label %bb.j

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.w = tail call i32 @fork() #21                ; 4 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @abort() #22
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.y = icmp sgt i32 %i.w, 0
  br i1 %i.y, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.z = call i32 @waitpid(i32 noundef %i.w, ptr noundef nonnull %i.a, i32 noundef 0) #21 ; 2 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.ab = load i32, ptr %i.p, align 4, !tbaa !17
  %i.ac = icmp eq i32 %i.ab, 4
  br i1 %i.ac, label %bb.p, label %.critedge, !llvm.loop !52

.critedge:                                        ; preds = %bb.p, %bb.q
  %i.ad = icmp eq i32 %i.z, %i.w
  br i1 %i.ad, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge
  call void @__assert_fail(ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.62, i32 noundef 2220, ptr noundef nonnull @__PRETTY_FUNCTION__.test_issue_101) #22
  unreachable

bb.s:                                             ; preds = %.critedge
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !17
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @__assert_fail(ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.62, i32 noundef 2221, ptr noundef nonnull @__PRETTY_FUNCTION__.test_issue_101) #22
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit

bb.v:                                             ; preds = %bb.n
  %i.ag = load i16, ptr @port, align 2, !tbaa !30
  %i.ah = tail call fastcc ptr @connect_server(i16 noundef zeroext %i.ag, i1 noundef zeroext false) ; 2 uses
  store ptr %i.ah, ptr @con, align 8, !tbaa !35
  %.not45 = icmp eq ptr %i.ah, null
  br i1 %.not45, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.62, i32 noundef 2224, ptr noundef nonnull @__PRETTY_FUNCTION__.test_issue_101) #22
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ai = tail call i32 @test_binary_noop()       ; 0 uses
  tail call fastcc void @close_conn()
  tail call void @exit(i32 noundef 0) #22
  unreachable

.loopexit:                                        ; preds = %bb.i, %bb.k, %bb.u
  %.3 = phi i32 [ 1, %bb.u ], [ 2, %bb.k ], [ 2, %bb.i ]
  %i.aj = load i32, ptr %i.e, align 8, !tbaa !32  ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.loopexit
  %i.al = call i32 @close(i32 noundef %i.aj) #21  ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.loopexit
  call void @free(ptr noundef nonnull %i.e) #21
  %i.am = load i32, ptr %i.g, align 8, !tbaa !32  ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ao = call i32 @close(i32 noundef %i.am) #21  ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @free(ptr noundef nonnull %i.g) #21
  %i.ap = load i32, ptr @server_pid, align 4, !tbaa !17
  %i.aq = call i32 @kill(i32 noundef %i.ap, i32 noundef 15) #21
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @__assert_fail(ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.62, i32 noundef 2248, ptr noundef nonnull @__PRETTY_FUNCTION__.test_issue_101) #22
  unreachable

bb.ad:                                            ; preds = %bb.ab, %bb.a
  %.140 = phi i32 [ 0, %bb.a ], [ %.3, %bb.ab ]
  ret i32 %.140
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @test_crc32c() #0 {
vector.ph:
  %i.a = alloca [256 x i8], align 16              ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.a, align 16, !tbaa !16
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.b, align 16, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.c, align 16, !tbaa !16
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.d, align 16, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.e, align 16, !tbaa !16
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.f, align 16, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.g, align 16, !tbaa !16
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.h, align 16, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.i, align 16, !tbaa !16
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.j, align 16, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.k, align 16, !tbaa !16
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.l, align 16, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.m, align 16, !tbaa !16
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.n, align 16, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.o, align 16, !tbaa !16
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.p, align 16, !tbaa !16
  %i.q = load ptr, ptr @crc32c, align 8, !tbaa !27
  %i.r = call i32 %i.q(i32 noundef 0, ptr noundef nonnull %i.a, i64 noundef 256) #21
  %i.s = call i32 @crc32c_sw(i32 noundef 0, ptr noundef nonnull %i.a, i64 noundef 256) #21
  %i.t = icmp eq i32 %i.r, -1673258933
  br i1 %i.t, label %bb.b, label %bb.a

bb.a:                                             ; preds = %vector.ph
  call void @__assert_fail(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.62, i32 noundef 863, ptr noundef nonnull @__PRETTY_FUNCTION__.test_crc32c) #22
  unreachable

bb.b:                                             ; preds = %vector.ph
  %i.u = icmp eq i32 %i.s, -1673258933
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @__assert_fail(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.62, i32 noundef 864, ptr noundef nonnull @__PRETTY_FUNCTION__.test_crc32c) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = load ptr, ptr @crc32c, align 8, !tbaa !27
  %i.w = call i32 %i.v(i32 noundef -1673258933, ptr noundef nonnull %i.a, i64 noundef 256) #21
  %i.x = call i32 @crc32c_sw(i32 noundef -1673258933, ptr noundef nonnull %i.a, i64 noundef 256) #21
  %i.y = icmp eq i32 %i.w, -1374622118
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @__assert_fail(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.62, i32 noundef 869, ptr noundef nonnull @__PRETTY_FUNCTION__.test_crc32c) #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.z = icmp eq i32 %i.x, -1374622118
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @__assert_fail(ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.62, i32 noundef 870, ptr noundef nonnull @__PRETTY_FUNCTION__.test_crc32c) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr @crc32c, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.ac = call i32 %i.aa(i32 noundef -1374622118, ptr noundef nonnull %i.ab, i64 noundef 254) #21
  %i.ad = call i32 @crc32c_sw(i32 noundef -1374622118, ptr noundef nonnull %i.ab, i64 noundef 254) #21
  %i.ae = icmp eq i32 %i.ac, -315115258
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.62, i32 noundef 875, ptr noundef nonnull @__PRETTY_FUNCTION__.test_crc32c) #22
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.af = icmp eq i32 %i.ad, -315115258
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @__assert_fail(ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.62, i32 noundef 876, ptr noundef nonnull @__PRETTY_FUNCTION__.test_crc32c) #22
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @start_memcached_server() #0 {
bb.a:
  %i.a = tail call fastcc i32 @start_server(ptr noundef nonnull @port, i1 noundef zeroext false, i32 noundef 600)
  store i32 %i.a, ptr @server_pid, align 4, !tbaa !17
  %i.b = load ptr, ptr @con, align 8, !tbaa !35   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %close_conn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @close(i32 noundef %i.d) #21 ; 0 uses
  %.pre.i = load ptr, ptr @con, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ]
  tail call void @free(ptr noundef %i.g) #21
  store ptr null, ptr @con, align 8, !tbaa !35
  br label %close_conn.exit

close_conn.exit:                                  ; preds = %bb.a, %bb.d
  %i.h = load i16, ptr @port, align 2, !tbaa !30
  %i.i = tail call fastcc ptr @connect_server(i16 noundef zeroext %i.h, i1 noundef zeroext false) ; 2 uses
  store ptr %i.i, ptr @con, align 8, !tbaa !35
  %.not = icmp eq ptr %i.i, null
end_hunk_0
