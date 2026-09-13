Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/cpio?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cpio_hdr_old = type { i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], i16, [2 x i16] }
%struct.cpio_hdr_odc = type { [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], [11 x i8], [6 x i8], [11 x i8] }
%struct.cpio_hdr_newc = type { [6 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }

@.str = private unnamed_addr constant [40 x i8] c"cli_scancpio_old: Invalid magic number\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CPIO: -- File %u --\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"cli_scancpio_old: Can't read file name\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"CPIO: Name: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"CPIO: Filesize: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"CPIO: Not a regular file, skipping\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"cli_scancpio_odc: Invalid magic string\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"cli_scancpio_odc: Can't convert name size\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"cli_scancpio_odc: Can't read file name\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"cli_scancpio_odc: Can't convert file size\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"cli_scancpio_newc: Invalid magic string\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"cli_scancpio_newc: Can't convert name size\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"cli_scancpio_newc: Can't read file name\0A\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"cli_scancpio_newc: Can't convert file size\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%\\\09\0A\0D\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_scancpio_old(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.cpio_hdr_old, align 2       ; 8 uses
  %i.a = alloca [513 x i8], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(513) %i.a, i8 0, i64 513, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %or.cond103.not106.not = icmp eq i64 %i.e, 0
  br i1 %or.cond103.not106.not, label %fmap_readn.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.20..20..20..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.22..22..22..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.6..6..6..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.f = phi i64 [ %i.e, %.lr.ph ], [ %i.bl, %.backedge ]
  %i.g = phi ptr [ %i.c, %.lr.ph ], [ %i.bj, %.backedge ] ; 2 uses
  %.0110 = phi i64 [ 0, %.lr.ph ], [ %.0.be, %.backedge ] ; 3 uses
  %.048109 = phi i32 [ 0, %.lr.ph ], [ %.250, %.backedge ] ; 3 uses
  %.051108 = phi i32 [ 0, %.lr.ph ], [ %i.q, %.backedge ]
  %.052107 = phi ptr [ null, %.lr.ph ], [ %.153, %.backedge ]
  %i.h = sub nuw i64 %i.f, %.0110                 ; 2 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.h, i64 26) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = call ptr %i.j(ptr noundef nonnull %i.g, i64 noundef %.0110, i64 noundef %spec.select.i, i32 noundef 0) #8, !inline_history !0 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %fmap_readn.exit.thread, label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %1, ptr nonnull align 1 %i.k, i64 %spec.select.i, i1 false)
  %i.l = icmp ugt i64 %i.h, 25
  br i1 %i.l, label %bb.c, label %fmap_readn.exit.thread

bb.c:                                             ; preds = %fmap_readn.exit
  %i.m = add i64 %.0110, 26                       ; 5 uses
  %.0..0..0. = load i16, ptr %1, align 2, !tbaa !33 ; 3 uses
  %i.n = icmp eq i16 %.0..0..0., 0
  %i.o = icmp ne i32 %.048109, 0
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %fmap_readn.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i16 %.0..0..0., 29127            ; 4 uses
  switch i16 %.0..0..0., label %fmap_readn.exit.thread.sink.split [
    i16 -14479, label %bb.e
    i16 29127, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.q = add i32 %.051108, 1                      ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %i.q) #8
  %.20..20..20. = load i16, ptr %.20..20..20..sroa_idx, align 2, !tbaa !34 ; 3 uses
  %.not = icmp eq i16 %.20..20..20., 0
  br i1 %.not, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %rev = call i16 @llvm.bswap.i16(i16 %.20..20..20.)
  %.in = select i1 %i.p, i16 %.20..20..20., i16 %rev ; 3 uses
  %i.r = zext i16 %.in to i32                     ; 2 uses
  %i.s = call i16 @llvm.umin.i16(i16 %.in, i16 513) ; 2 uses
  %i.t = zext nneg i16 %i.s to i32
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %i.v = zext nneg i16 %i.s to i64                ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.x = load i64, ptr %i.w, align 8, !tbaa !27   ; 2 uses
  %or.cond105.not = icmp ult i64 %i.m, %i.x
  br i1 %or.cond105.not, label %bb.g, label %fmap_readn.exit.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.y = sub nuw i64 %i.x, %i.m                   ; 2 uses
  %spec.select.i90 = call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.v, i64 %i.y) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28
  %i.ab = call ptr %i.aa(ptr noundef nonnull %i.u, i64 noundef %i.m, i64 noundef %spec.select.i90, i32 noundef 0) #8, !inline_history !0 ; 2 uses
  %.not.i91 = icmp eq ptr %i.ab, null
  br i1 %.not.i91, label %fmap_readn.exit.thread.sink.split, label %fmap_readn.exit92

fmap_readn.exit92:                                ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.ab, i64 %spec.select.i90, i1 false)
  %.not120 = icmp ult i64 %i.y, %i.v
  br i1 %.not120, label %fmap_readn.exit.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %fmap_readn.exit92
  %i.ac = add i64 %i.m, %i.v                      ; 2 uses
  %2 = getelementptr i8, ptr %i.a, i64 %i.v
  %i.ad = getelementptr i8, ptr %2, i64 -1
  store i8 0, ptr %i.ad, align 1, !tbaa !29
  %i.ae = load i8, ptr %i.a, align 16, !tbaa !29  ; 2 uses
  %.not7.i = icmp eq i8 %i.ae, 0
  br i1 %.not7.i, label %sanitname.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.k
  %i.af = phi i8 [ %i.aj, %bb.k ], [ %i.ae, %bb.h ] ; 2 uses
  %.08.i = phi ptr [ %i.ai, %bb.k ], [ %i.a, %bb.h ] ; 2 uses
  %i.ag = icmp sgt i8 %i.af, -1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ah = zext nneg i8 %i.af to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.20, i32 %i.ah, i64 6)
  %.not6.i = icmp eq ptr %memchr.i, null
  br i1 %.not6.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  store i8 95, ptr %.08.i, align 1, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !29  ; 2 uses
  %.not.i93 = icmp eq i8 %i.aj, 0
  br i1 %.not.i93, label %sanitname.exit, label %.lr.ph.i

sanitname.exit:                                   ; preds = %bb.k, %bb.h
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #8
  %i.ak = load i64, ptr %i.a, align 16
  %i.al = xor i64 %i.ak, 2401057745290744404
  %i.am = getelementptr i8, ptr %i.a, i64 3
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = xor i64 %i.an, 9325101229362249
  %i.ap = or i64 %i.al, %i.ao
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %.not70 = icmp eq i32 %i.ar, 0
  %spec.select = select i1 %.not70, i32 1, i32 %.048109 ; 2 uses
  %i.as = icmp ugt i16 %.in, 513
  %i.at = and i32 %i.r, 1                         ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %sanitname.exit
  %spec.select85 = add nuw nsw i32 %i.at, %i.r
  %i.au = sub nsw i32 %spec.select85, %i.t
  %i.av = zext i32 %i.au to i64
  %i.aw = add i64 %i.ac, %i.av
  br label %bb.n

bb.m:                                             ; preds = %sanitname.exit
  %i.ax = zext nneg i32 %i.at to i64
  %spec.select86 = add i64 %i.ac, %i.ax
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.e
  %.153 = phi ptr [ %.052107, %bb.e ], [ %i.a, %bb.l ], [ %i.a, %bb.m ] ; 2 uses
  %.250 = phi i32 [ %.048109, %bb.e ], [ %spec.select, %bb.l ], [ %spec.select, %bb.m ]
  %.2 = phi i64 [ %i.m, %bb.e ], [ %i.aw, %bb.l ], [ %spec.select86, %bb.m ] ; 3 uses
  %.22..22..22.97 = load i16, ptr %.22..22..22..sroa_idx, align 2 ; 2 uses
  %rev74 = call i16 @llvm.bswap.i16(i16 %.22..22..22.97)
  %.in75 = select i1 %i.p, i16 %.22..22..22.97, i16 %rev74
  %i.ay = zext i16 %.in75 to i32
  %i.az = shl nuw i32 %i.ay, 16
  %.24..24..24.99 = load i16, ptr %.24..24..24..sroa_idx, align 2 ; 2 uses
  %rev76 = call i16 @llvm.bswap.i16(i16 %.24..24..24.99)
  %.in77 = select i1 %i.p, i16 %.24..24..24.99, i16 %rev76
  %i.ba = zext i16 %.in77 to i32                  ; 2 uses
  %i.bb = or disjoint i32 %i.az, %i.ba            ; 4 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, i32 noundef %i.bb) #8
  %.not78 = icmp eq i32 %i.bb, 0
  br i1 %.not78, label %.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = zext i32 %i.bb to i64                   ; 3 uses
  %i.bd = call i32 @cli_matchmeta(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.bc, i64 noundef %i.bc, i32 noundef 0, i32 noundef %i.q, i32 noundef 0) #8 ; 2 uses
  %.not79 = icmp eq i32 %i.bd, 0
  br i1 %.not79, label %bb.p, label %fmap_readn.exit.thread

bb.p:                                             ; preds = %bb.o
  %.6..6..6.95 = load i16, ptr %.6..6..6..sroa_idx, align 2 ; 2 uses
  %rev80 = call i16 @llvm.bswap.i16(i16 %.6..6..6.95)
  %.in81 = select i1 %i.p, i16 %.6..6..6.95, i16 %rev80
  %.not82 = icmp slt i16 %.in81, -28672
  br i1 %.not82, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.bf = call i32 @cli_magic_scan_nested_fmap_type(ptr noundef %i.be, i64 noundef %.2, i64 noundef %i.bc, ptr noundef %0, i32 noundef 0, ptr noundef %.153, i32 noundef 0) #8 ; 2 uses
  %.not83 = icmp eq i32 %i.bf, 0
  br i1 %.not83, label %bb.s, label %fmap_readn.exit.thread

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bg = and i32 %i.ba, 1
  %spec.select87 = add i32 %i.bb, %i.bg
  %i.bh = zext i32 %spec.select87 to i64
  %i.bi = add i64 %.2, %i.bh
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.n
  %.0.be = phi i64 [ %i.bi, %bb.s ], [ %.2, %bb.n ] ; 2 uses
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !27 ; 2 uses
  %or.cond103.not = icmp ult i64 %.0.be, %i.bl
  br i1 %or.cond103.not, label %bb.b, label %fmap_readn.exit.thread

fmap_readn.exit.thread.sink.split:                ; preds = %fmap_readn.exit92, %bb.g, %bb.f, %bb.d
  %.str.2.sink = phi ptr [ @.str, %bb.d ], [ @.str.2, %bb.f ], [ @.str.2, %bb.g ], [ @.str.2, %fmap_readn.exit92 ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.2.sink) #8
  br label %fmap_readn.exit.thread

fmap_readn.exit.thread:                           ; preds = %bb.o, %bb.r, %fmap_readn.exit, %bb.c, %.backedge, %bb.b, %fmap_readn.exit.thread.sink.split, %bb.a
  %.256 = phi i32 [ 0, %bb.a ], [ 26, %fmap_readn.exit.thread.sink.split ], [ %i.bf, %bb.r ], [ 0, %bb.b ], [ 0, %.backedge ], [ 0, %bb.c ], [ 0, %fmap_readn.exit ], [ %i.bd, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret i32 %.256
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #3

declare i32 @cli_matchmeta(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cli_magic_scan_nested_fmap_type(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @cli_scancpio_odc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.cpio_hdr_odc, align 1       ; 9 uses
  %i.a = alloca [513 x i8], align 16              ; 12 uses
  %i.b = alloca [12 x i8], align 1                ; 9 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(513) %i.a, i8 0, i64 513, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(76) %1, i8 0, i64 76, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %or.cond53.not56.not = icmp eq i64 %i.h, 0
  br i1 %or.cond53.not56.not, label %fmap_readn.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.m = phi i64 [ %i.h, %.lr.ph ], [ %i.cf, %.backedge ]
  %i.n = phi ptr [ %i.f, %.lr.ph ], [ %i.cd, %.backedge ] ; 2 uses
  %.059 = phi i64 [ 0, %.lr.ph ], [ %.0.be, %.backedge ] ; 3 uses
  %.02458 = phi i32 [ 0, %.lr.ph ], [ %.2, %.backedge ] ; 3 uses
  %.02657 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %.backedge ]
  %i.o = sub nuw i64 %i.m, %.059                  ; 2 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.o, i64 76) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28
  %i.r = call ptr %i.q(ptr noundef nonnull %i.n, i64 noundef %.059, i64 noundef %spec.select.i, i32 noundef 0) #8, !inline_history !0 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %fmap_readn.exit.thread, label %fmap_readn.exit

fmap_readn.exit:                                  ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.r, i64 %spec.select.i, i1 false)
  %i.s = icmp ugt i64 %i.o, 75
  br i1 %i.s, label %bb.c, label %fmap_readn.exit.thread

bb.c:                                             ; preds = %fmap_readn.exit
  %i.t = add i64 %.059, 76                        ; 5 uses
  %i.u = load i8, ptr %1, align 1, !tbaa !29
  %i.v = icmp eq i8 %i.u, 0
  %i.w = icmp ne i32 %.02458, 0
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %fmap_readn.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %1, align 1
  %i.y = xor i32 %i.x, 925906736
end_hunk_0
