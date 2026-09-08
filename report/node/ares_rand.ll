Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ares_rand?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ares_timeval_t = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @ares_init_rand_state() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ares_malloc_zero(i64 noundef 544) #8 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ares_init_rand_engine(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ares_malloc_zero(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ares_init_rand_engine(ptr noundef initializes((0, 4), (536, 544)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %struct.ares_timeval_t, align 8     ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 0, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16   ; 2 uses
  %i.f = and i32 %i.e, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !17
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = and i32 %i.e, 2
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %0, align 8, !tbaa !17
  %i.h = tail call noalias ptr @fopen64(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !18
  %.not11 = icmp eq ptr %i.h, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @setvbuf(ptr noundef nonnull %i.h, ptr noundef null, i32 noundef 2, i64 noundef 0) #8 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.c
  store i32 4, ptr %0, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.l = tail call i32 @ares_is_64bit() #8
  %.not.i.i.i = icmp eq i32 %i.l, 0
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = lshr i64 %i.m, 32                        ; 2 uses
  %i.o = select i1 %.not.i.i.i, i64 0, i64 %i.n
  %.0.in.i.i.i = xor i64 %i.o, %i.m
  %.0.i.i.i = trunc i64 %.0.in.i.i.i to i32
  store i32 %.0.i.i.i, ptr %i.b, align 16
  %i.p = tail call i32 @ares_is_64bit() #8
  %.not.i18.i.i = icmp eq i32 %i.p, 0
  %i.q = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.r = lshr i64 %i.q, 32                        ; 2 uses
  %i.s = select i1 %.not.i18.i.i, i64 0, i64 %i.r
  %.0.in.i19.i.i = xor i64 %i.s, %i.q
  %.0.i20.i.i = trunc i64 %.0.in.i19.i.i to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.0.i20.i.i, ptr %i.t, align 4
  call void @ares_tvnow(ptr noundef nonnull %1) #8
  %i.u = load i64, ptr %1, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !24
  %.tr.i.i = trunc i64 %i.u to i32
  %.narrow.i.i = xor i32 %i.w, %.tr.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.narrow.i.i, ptr %i.x, align 8
  %i.y = call i32 @ares_is_64bit() #8
  %.not.i21.i.i = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not.i21.i.i, i64 0, i64 %i.n
  %i.aa = call i32 @ares_is_64bit() #8
  %.not.i24.i.i = icmp eq i32 %i.aa, 0
  %i.ab = select i1 %.not.i24.i.i, i64 0, i64 %i.r
  %i.ac = xor i64 %i.z, %i.ab
  %i.ad = xor i64 %i.ac, %i.m
  %i.ae = xor i64 %i.ad, %i.q
  %i.af = trunc i64 %i.ae to i32
  %i.ag = load i64, ptr %1, align 8, !tbaa !23
  %i.ah = load i32, ptr %i.v, align 8, !tbaa !24
  %.tr16.i.i = trunc i64 %i.ag to i32
  %.narrow17.i.i = xor i32 %i.ah, %.tr16.i.i
  %i.ai = xor i32 %.narrow17.i.i, %i.af
  call void @srand(i32 noundef %i.ai) #8
  store i64 12, ptr %i.a, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.aj = call i32 @rand() #8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = load i64, ptr %i.a, align 8, !tbaa !25  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !18
  %i.an = add nuw nsw i64 %i.al, 1
  store i64 %i.an, ptr %i.a, align 8, !tbaa !25
  %i.ao = icmp ult i64 %i.al, 31
  br i1 %i.ao, label %bb.g, label %ares_rc4_generate_key.exit.i, !llvm.loop !20

ares_rc4_generate_key.exit.i:                     ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.k, align 8, !tbaa !18
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.ap, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.aq, align 8, !tbaa !18
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.ar, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.as, align 8, !tbaa !18
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.at, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.au, align 8, !tbaa !18
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.av, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.aw, align 8, !tbaa !18
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.ax, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.ay, align 8, !tbaa !18
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.az, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 216
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.ba, align 8, !tbaa !18
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.bb, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 248
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.bc, align 8, !tbaa !18
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.bd, align 8, !tbaa !18
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %ares_rc4_generate_key.exit.i
  %.125.i = phi i64 [ 0, %ares_rc4_generate_key.exit.i ], [ %i.bv, %.preheader.i ] ; 4 uses
  %.02224.i = phi i8 [ 0, %ares_rc4_generate_key.exit.i ], [ %.narrow.i.1, %.preheader.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 %.125.i ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !18  ; 2 uses
  %.tr.i = add i8 %i.bf, %.02224.i
  %i.bg = and i64 %.125.i, 30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !18
  %.narrow.i = add i8 %.tr.i, %i.bi               ; 2 uses
  %i.bj = zext i8 %.narrow.i to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bj ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !18
  store i8 %i.bl, ptr %i.be, align 1, !tbaa !18
  store i8 %i.bf, ptr %i.bk, align 1, !tbaa !18
  %i.bm = or disjoint i64 %.125.i, 1              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !18  ; 2 uses
  %.tr.i.1 = add i8 %i.bo, %.narrow.i
  %i.bp = and i64 %i.bm, 31
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18
  %.narrow.i.1 = add i8 %.tr.i.1, %i.br           ; 2 uses
  %i.bs = zext i8 %.narrow.i.1 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !18
  store i8 %i.bu, ptr %i.bn, align 1, !tbaa !18
  store i8 %i.bo, ptr %i.bt, align 1, !tbaa !18
  %i.bv = add nuw nsw i64 %.125.i, 2              ; 2 uses
  %exitcond26.not.i.1 = icmp eq i64 %i.bv, 256
  br i1 %exitcond26.not.i.1, label %ares_rc4_init.exit, label %.preheader.i, !llvm.loop !21

ares_rc4_init.exit:                               ; preds = %.preheader.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.h

bb.h:                                             ; preds = %ares_rc4_init.exit, %bb.e, %bb.b
  ret void
}

declare void @ares_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @ares_destroy_rand_state(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !17
  %cond.i = icmp eq i32 %i.a, 2
  br i1 %cond.i, label %bb.c, label %ares_clear_rand_state.exit

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = tail call i32 @fclose(ptr noundef %i.c)  ; 0 uses
  br label %ares_clear_rand_state.exit

ares_clear_rand_state.exit:                       ; preds = %bb.b, %bb.c
  tail call void @ares_free(ptr noundef nonnull %0) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %ares_clear_rand_state.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ares_rand_bytes(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = icmp ugt i64 %2, %i.b
  %i.d = icmp ult i64 %2, 256
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = sub nuw i64 256, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call fastcc void @ares_rand_bytes_fetch(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef %i.e)
  store i64 256, ptr %i.a, align 8, !tbaa !15
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.g = phi i64 [ 256, %.thread ], [ %i.b, %bb.b ]
  %i.h = sub i64 256, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.j, i64 %2, i1 false)
  %i.k = load i64, ptr %i.a, align 8, !tbaa !15
  %i.l = sub i64 %i.k, %2
  store i64 %i.l, ptr %i.a, align 8, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @ares_rand_bytes_fetch(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ares_rand_bytes_fetch(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !17
  switch i32 %i.c, label %ares_reinit_rand.exit [
    i32 1, label %.preheader.outer
    i32 2, label %.preheader48
    i32 4, label %bb.d
  ]

.preheader.outer:                                 ; preds = %.backedge, %bb.c
  %.029.ph = phi i64 [ %i.n, %bb.c ], [ 0, %.backedge ] ; 3 uses
  %i.d = sub i64 %2, %.029.ph
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.029.ph
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 256)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.outer, %bb.b
  %i.g = tail call i64 @getrandom(ptr noundef %i.e, i64 noundef %i.f, i32 noundef 0) #8 ; 2 uses
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.i = tail call ptr @__errno_location() #9
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %i.k = icmp eq i32 %i.j, 38
  br i1 %i.k, label %.thread41, label %.preheader

.thread41:                                        ; preds = %bb.b
  %i.l = load i32, ptr %i.b, align 4, !tbaa !16
  %i.m = or i32 %i.l, 1
  store i32 %i.m, ptr %i.b, align 4, !tbaa !16
  br label %.loopexit49

bb.c:                                             ; preds = %.preheader
  %i.n = add i64 %i.g, %.029.ph                   ; 2 uses
  %i.o = icmp eq i64 %i.n, %2
  br i1 %i.o, label %.thread46, label %.preheader.outer

.preheader48:                                     ; preds = %.backedge, %.preheader48
  %.231 = phi i64 [ %i.u, %.preheader48 ], [ 0, %.backedge ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.231
  %i.q = sub i64 %2, %.231
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.s = tail call i64 @fread(ptr noundef %i.p, i64 noundef 1, i64 noundef %i.q, ptr noundef %i.r) ; 2 uses
end_hunk_0
