Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/readcdf?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
@.str.63 = private unnamed_addr constant [17 x i8] c"EncryptedPackage\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"EncryptedSummary\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"QuickBooks\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"quickbooks\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"mfbu_header\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"Microsoft Outlook Message\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"vnd.ms-outlook\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"__properties_version1.0\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"__recip_version1.0_#00000000\00", align 1
@sectioninfo = internal unnamed_addr constant [6 x { ptr, ptr, [5 x ptr], [5 x i32], [4 x i8] }] [{ ptr, ptr, [5 x ptr], [5 x i32], [4 x i8] } { ptr @.str.61, ptr @.str.62, [5 x ptr] [ptr @.str.63, ptr @.str.64, ptr null, ptr null, ptr null], [5 x i32] [i32 2, i32 2, i32 0, i32 0, i32 0], [4 x i8] zeroinitializer }, { ptr, ptr, [5 x ptr], [5 x i32], [4 x i8] } { ptr @.str.65, ptr @.str.66, [5 x ptr] [ptr @.str.67, ptr null, ptr null, ptr null, ptr null], [5 x i32] [i32 2, i32 0, i32 0, i32 0, i32 0], [4 x i8] zeroinitializer }, { ptr, ptr, [5 x ptr], [5 x i32], [4 x i8] } { ptr @.str.46, ptr @.str.34, [5 x ptr] [ptr @.str.45, ptr @.str.47, ptr null, ptr null, ptr null], [5 x i32] [i32 2, i32 2, i32 0, i32 0, i32 0], [4 x i8] zeroinitializer }, { ptr, ptr, [5 x ptr], [5 x i32], [4 x i8] } { ptr @.str.49, ptr @.str.32, [5 x ptr] [ptr @.str.48, ptr null, ptr null, ptr null, ptr null], [5 x i32] [i32 2, i32 0, i32 0, i32 0, i32 0], [4 x i8] zeroinitializer }, { ptr, ptr, [5 x ptr], [5 x i32], [4 x i8] } { ptr @.str.51, ptr @.str.36, [5 x ptr] [ptr @.str.50, ptr null, ptr null, ptr null, ptr null], [5 x i32] [i32 2, i32 0, i32 0, i32 0, i32 0], [4 x i8] zeroinitializer }, { ptr, ptr, [5 x ptr], [5 x i32], [4 x i8] } { ptr @.str.68, ptr @.str.69, [5 x ptr] [ptr @.str.70, ptr @.str.71, ptr null, ptr null, ptr null], [5 x i32] [i32 2, i32 1, i32 0, i32 0, i32 0], [4 x i8] zeroinitializer }], align 16
@llvm.compiler.used = appending global [1 x ptr] [ptr @rcsid], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @file_trycdf(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.cdf_info_t, align 8         ; 15 uses
  %3 = alloca %struct.cdf_header_t, align 8       ; 12 uses
  %4 = alloca %struct.cdf_sat_t, align 8          ; 13 uses
  %5 = alloca %struct.cdf_sat_t, align 8          ; 9 uses
  %6 = alloca %struct.cdf_stream_t, align 8       ; 9 uses
  %7 = alloca %struct.cdf_stream_t, align 8       ; 14 uses
  %8 = alloca %struct.cdf_dir_t, align 8          ; 11 uses
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.g = load i64, ptr %i.f, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr @.str, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %7, align 8, !tbaa !35
  store i32 %i.c, ptr %2, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.e, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.g, ptr %i.i, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !22
  %i.l = and i32 %i.k, 16779264
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.m = call i32 @cdf_read_header(ptr noundef nonnull %2, ptr noundef nonnull %3) #6
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call i32 @cdf_read_sat(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %.thread46, label %bb.d

.thread46:                                        ; preds = %bb.c
  store ptr @.str.1, ptr %i.a, align 8, !tbaa !15
  br label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 @cdf_read_ssat(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %.thread49, label %bb.e

.thread49:                                        ; preds = %bb.d
  store ptr @.str.2, ptr %i.a, align 8, !tbaa !15
  %i.s = load ptr, ptr %4, align 8, !tbaa !42
  call void @_efree(ptr noundef %i.s) #6
  br label %bb.aa

bb.e:                                             ; preds = %bb.d
  %i.t = call i32 @cdf_read_dir(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %8) #6
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr @.str.3, ptr %i.a, align 8, !tbaa !15
  br label %bb.z

bb.g:                                             ; preds = %bb.e
  %i.v = call i32 @cdf_read_short_stream(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %i.b) #6
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr @.str.4, ptr %i.a, align 8, !tbaa !15
  br label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.x = call i32 @cdf_read_user_stream(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #6
  %.not33 = icmp eq i32 %i.x, -1
  br i1 %.not33, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.ac = mul i64 %i.ab, %i.z
  %i.ad = icmp ugt i64 %i.ac, 16
  br i1 %i.ad, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.af = load i128, ptr %i.ae, align 1
  %i.ag = xor i128 %i.af, 144103237054924249205597581839164266312
  %i.ah = getelementptr i8, ptr %i.ae, i64 16
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i128
  %i.ak = xor i128 %i.aj, 101
  %i.al = or i128 %i.ag, %i.ak
  %i.am = icmp ne i128 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ap = load i32, ptr %i.j, align 4, !tbaa !22  ; 2 uses
  %i.aq = and i32 %i.ap, 1040
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #6
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %bb.ah, label %.thread44

bb.n:                                             ; preds = %bb.l
  %i.au = and i32 %i.ap, 16
  %.not36 = icmp eq i32 %i.au, 0
  br i1 %.not36, label %.thread44, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #6
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %bb.ah, label %.thread44

bb.p:                                             ; preds = %bb.k, %bb.j
  %i.ax = call i32 @cdf_zero_stream(ptr noundef nonnull %7) #6 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  %i.ay = call i32 @cdf_read_summary_info(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7) #6
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ba = tail call ptr @__errno_location() #7
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !45
  %.not34 = icmp eq i32 %i.bb, 3
  br i1 %.not34, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr @.str.9, ptr %i.a, align 8, !tbaa !15
  br label %.thread

bb.t:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.bd = call fastcc i32 @cdf_check_summary_info(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %8, ptr noundef %7, ptr noundef %i.bc, ptr noundef %i.a)
  %i.be = call i32 @cdf_zero_stream(ptr noundef nonnull %7) #6 ; 0 uses
  %i.bf = icmp slt i32 %i.bd, 1
  br i1 %i.bf, label %.thread, label %.thread44

.thread:                                          ; preds = %bb.r, %bb.s, %bb.t
  %i.bg = call i32 @cdf_read_doc_summary_info(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7) #6
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.thread
  %i.bi = tail call ptr @__errno_location() #7
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !45
  %.not35 = icmp eq i32 %i.bj, 3
  br i1 %.not35, label %.thread42, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr @.str.9, ptr %i.a, align 8, !tbaa !15
  br label %.thread42

bb.w:                                             ; preds = %.thread
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.bl = call fastcc i32 @cdf_check_summary_info(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %8, ptr noundef %7, ptr noundef %i.bk, ptr noundef %i.a)
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %.thread42, label %.thread44

.thread42:                                        ; preds = %bb.u, %bb.v, %bb.w
  %i.bn = call fastcc i32 @cdf_file_dir_info(ptr noundef nonnull %0, ptr noundef %8) ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.x, label %.thread44

bb.x:                                             ; preds = %.thread42
  store ptr @.str.10, ptr %i.a, align 8, !tbaa !15
  br label %.thread44

.thread44:                                        ; preds = %bb.t, %bb.m, %bb.o, %bb.n, %bb.w, %bb.x, %.thread42
  %.2.a = phi i32 [ 1, %bb.w ], [ -1, %bb.x ], [ %i.bn, %.thread42 ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.m ], [ 1, %bb.t ]
  %i.bp = call i32 @cdf_zero_stream(ptr noundef nonnull %7) #6 ; 0 uses
  %i.bq = call i32 @cdf_zero_stream(ptr noundef nonnull %6) #6 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %.thread44, %bb.h
  %.3.a = phi i32 [ -1, %bb.h ], [ %.2.a, %.thread44 ]
  %i.br = load ptr, ptr %8, align 8, !tbaa !25
  call void @_efree(ptr noundef %i.br) #6
  br label %bb.z

bb.z:                                             ; preds = %bb.f, %bb.y
  %.4.a = phi i32 [ -1, %bb.f ], [ %.3.a, %bb.y ] ; 2 uses
  %i.bs = load ptr, ptr %5, align 8, !tbaa !42
  call void @_efree(ptr noundef %i.bs) #6
  %i.bt = load ptr, ptr %4, align 8, !tbaa !42
  call void @_efree(ptr noundef %i.bt) #6
  %.not37 = icmp eq i32 %.4.a, -1
  br i1 %.not37, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %.thread49, %.thread46, %bb.z
  %i.bu = load i32, ptr %i.j, align 4, !tbaa !22  ; 2 uses
  %i.bv = and i32 %i.bu, 1040
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bx = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #6
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !26
  %.not39 = icmp eq i8 %i.ca, 0
  br i1 %.not39, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.bz) #6
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %bb.ah, label %bb.ag

bb.ae:                                            ; preds = %bb.aa
  %i.cd = and i32 %i.bu, 16
  %.not38 = icmp eq i32 %i.cd, 0
  br i1 %.not38, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #6
  %i.cf = icmp eq i32 %i.ce, -1
  br i1 %i.cf, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ac, %bb.ad
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.o, %bb.m, %bb.b, %bb.a, %bb.ag
  %.024 = phi i32 [ -1, %bb.m ], [ 0, %bb.a ], [ -1, %bb.o ], [ %.4.a, %bb.z ], [ -1, %bb.ab ], [ 1, %bb.ag ], [ -1, %bb.ad ], [ 0, %bb.b ], [ -1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.024
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @cdf_read_header(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cdf_read_sat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cdf_read_ssat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cdf_read_dir(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cdf_read_short_stream(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cdf_read_user_stream(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @file_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @cdf_zero_stream(ptr noundef) local_unnamed_addr #2

declare i32 @cdf_read_summary_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2, 2) i32 @cdf_check_summary_info(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr nofree noundef readonly captures(address_is_null) %8, ptr nofree noundef nonnull writeonly captures(none) %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [256 x i8], align 16              ; 3 uses
  %10 = alloca %struct.timespec, align 8          ; 7 uses
  %i.c = alloca [64 x i8], align 16               ; 13 uses
  %i.d = alloca [1024 x i8], align 16             ; 8 uses
  %i.e = alloca [64 x i8], align 16               ; 6 uses
  %11 = alloca %struct.cdf_summary_info_header_t, align 4 ; 10 uses
  %i.f = alloca ptr, align 8                      ; 9 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca [32 x i8], align 16               ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.i = call i32 @cdf_unpack_summary_info(ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %11, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #6
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %cdf_file_summary_info.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 15 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  %i.m = and i32 %i.l, 1040
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %cdf_clsid_to_mime.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.o = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #6
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %cdf_file_summary_info.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i16, ptr %11, align 4, !tbaa !53
  %i.r = icmp eq i16 %i.q, -2
  %i.s = select i1 %i.r, ptr @.str.19, ptr @.str.20
  %i.t = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.s) #6
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %cdf_file_summary_info.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 6
  %i.w = load i16, ptr %i.v, align 2, !tbaa !54   ; 2 uses
  switch i16 %i.w, label %bb.h [
    i16 2, label %bb.f
    i16 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.y = load i16, ptr %i.x, align 4, !tbaa !55
  %i.z = zext i16 %i.y to i32                     ; 2 uses
  %i.aa = and i32 %i.z, 255
  %i.ab = lshr i32 %i.z, 8
  %i.ac = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, i32 noundef %i.aa, i32 noundef %i.ab) #6
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %cdf_file_summary_info.exit.thread, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !55
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = and i32 %i.ag, 255
  %i.aj = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, i32 noundef %i.ah, i32 noundef %i.ai) #6
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %cdf_file_summary_info.exit.thread, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.al = zext i16 %i.w to i32
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.an = load i16, ptr %i.am, align 4, !tbaa !55
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = and i32 %i.ao, 255
  %i.aq = lshr i32 %i.ao, 8
  %i.ar = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, i32 noundef %i.al, i32 noundef %i.ap, i32 noundef %i.aq) #6
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %cdf_file_summary_info.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.not.i = icmp eq ptr %8, null
  br i1 %.not.i, label %cdf_clsid_to_mime.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.au = load i64, ptr %i.at, align 8, !tbaa !56
  %i.av = icmp eq i64 %i.au, 790660
  br i1 %i.av, label %bb.k, label %cdf_clsid_to_mime.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !56
  %i.ay = icmp eq i64 %i.ax, 5044031582654955712
  br i1 %i.ay, label %cdf_clsid_to_mime.exit.i, label %cdf_clsid_to_mime.exit.thread.i

cdf_clsid_to_mime.exit.i:                         ; preds = %bb.k
  %i.az = call i32 (ptr, ptr, ...) @file_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.24) #6
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %cdf_file_summary_info.exit.thread, label %cdf_clsid_to_mime.exit.thread.i

cdf_clsid_to_mime.exit.thread.i:                  ; preds = %cdf_clsid_to_mime.exit.i, %bb.k, %bb.j, %bb.i, %bb.b
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !56  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.bd = load i32, ptr %i.k, align 4, !tbaa !22  ; 2 uses
  %i.be = and i32 %i.bd, 1040
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = icmp ne ptr %8, null
  %or.cond.i.i = and i1 %i.bg, %i.bf
  br i1 %or.cond.i.i, label %bb.l, label %cdf_clsid_to_mime.exit.i.i

bb.l:                                             ; preds = %cdf_clsid_to_mime.exit.thread.i
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !56
  %i.bj = icmp eq i64 %i.bi, 790660
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !56
  %i.bm = icmp eq i64 %i.bl, 5044031582654955712
  br i1 %i.bm, label %cdf_clsid_to_mime.exit.i.i, label %bb.n

end_hunk_0
