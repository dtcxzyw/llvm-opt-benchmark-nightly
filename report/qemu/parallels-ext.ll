Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/parallels-ext?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.QemuUUID = type { %union.anon.9 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i16, i16, i8, i8, [6 x i8] }
%struct.ParallelsFormatExtensionHeader = type { i64, [16 x i8] }

@.str = private unnamed_addr constant [12 x i8] c"ext_off > 0\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"../block/parallels-ext.c\00", align 1
@__PRETTY_FUNCTION__.parallels_read_format_extension = private unnamed_addr constant [75 x i8] c"int parallels_read_format_extension(BlockDriverState *, int64_t, Error **)\00", align 1
@__func__.parallels_read_format_extension = private unnamed_addr constant [32 x i8] c"parallels_read_format_extension\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to read Format Extension cluster\00", align 1
@__func__.parallels_parse_format_extension = private unnamed_addr constant [33 x i8] c"parallels_parse_format_extension\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Wrong parallels Format Extension magic: 0x%lx, expected: 0x%llx\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"Wrong checksum in Format Extension header. Format extension is corrupted.\00", align 1
@.str.5 = private unnamed_addr constant [112 x i8] c"Can not read feature header, as remaining bytes (%d) in Format Extension is less than Feature header size (%zu)\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Flags for extension feature are unsupported\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Feature data_size exceedes Format Extension cluster\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Unknown feature: 0x%lx\00", align 1
@__func__.parallels_load_bitmap = private unnamed_addr constant [22 x i8] c"parallels_load_bitmap\00", align 1
@.str.9 = private unnamed_addr constant [100 x i8] c"Too small Bitmap Feature area in Parallels Format Extension: %zu bytes, expected at least %zu bytes\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"Bitmap size (in sectors) %ld differs from disk size in sectors %ld\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"Bitmaps feature corrupted: l1 table exceeds extension data_size\00", align 1
@.str.12 = private unnamed_addr constant [87 x i8] c"Bitmap table size %u does not correspond to bitmap size and cluster size. Expected %lu\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"Failed to allocate the bitmap L1 table (%u entries)\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"!(bs->open_flags & BDRV_O_RDWR)\00", align 1
@__PRETTY_FUNCTION__.parallels_load_bitmap = private unnamed_addr constant [88 x i8] c"BdrvDirtyBitmap *parallels_load_bitmap(BlockDriverState *, uint8_t *, size_t, Error **)\00", align 1
@__func__.parallels_load_bitmap_data = private unnamed_addr constant [27 x i8] c"parallels_load_bitmap_data\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Failed to read bitmap data cluster\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"no_coroutine_fn\00", section "llvm.metadata"
@.str.17 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/block/block-io.h\00", section "llvm.metadata"
@.str.18 = private unnamed_addr constant [19 x i8] c"coroutine_mixed_fn\00", section "llvm.metadata"
@llvm.global.annotations = appending global [2 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pread, ptr @.str.16, ptr @.str.17, i32 53, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_pread, ptr @.str.18, ptr @.str.17, i32 53, ptr null }], section "llvm.metadata"

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -2147483648, 1) i32 @parallels_read_format_extension(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.QemuUUID, align 4           ; 5 uses
  %i.a = alloca [37 x i8], align 16               ; 6 uses
  %4 = alloca %struct.ParallelsFormatExtensionHeader, align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = zext i32 %i.g to i64
  %i.i = tail call ptr @qemu_blockalign(ptr noundef %0, i64 noundef %i.h) #7 ; 9 uses
  %i.j = icmp sgt i64 %1, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 305, ptr noundef nonnull @__PRETTY_FUNCTION__.parallels_read_format_extension) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16832 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %i.f, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = tail call i32 @bdrv_pread(ptr noundef %i.l, i64 noundef %1, i64 noundef %i.n, ptr noundef %i.i, i32 noundef 0) #7 ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = sub i32 0, %i.o
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 309, ptr noundef nonnull @__func__.parallels_read_format_extension, i32 noundef %i.q, ptr noundef nonnull @.str.2) #7
  br label %bb.ai

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i64 0, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(24) %i.i, i64 noundef 24, i1 noundef false) #7
  %i.u = load i64, ptr %4, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.w = add i32 %i.t, -24                        ; 3 uses
  %.not.i = icmp eq i64 %i.u, -6114959279056426361
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 222, ptr noundef nonnull @__func__.parallels_parse_format_extension, ptr noundef nonnull @.str.3, i64 noundef %i.u, i64 noundef -6114959279056426361) #7
  br label %._crit_edge152.i

bb.g:                                             ; preds = %bb.e
  %i.x = sext i32 %i.w to i64
  %i.y = call i32 @qcrypto_hash_bytes(i32 noundef 0, ptr noundef nonnull %i.v, i64 noundef %i.x, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %2) #7
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %._crit_edge152.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.c, align 8
  %.not52.i = icmp eq i64 %i.aa, 16
  br i1 %.not52.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load i128, ptr %i.ab, align 1
  %i.ae = load i128, ptr %i.ac, align 1
  %i.af = icmp ne i128 %i.ad, %i.ae
  %i.ag = zext i1 %i.af to i32
  %.not53.i = icmp eq i32 %i.ag, 0
  br i1 %.not53.i, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %bb.i
  %i.ah = icmp ult i32 %i.w, 24
  br i1 %i.ah, label %.thread.i.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16880
  %.sroa.9.0..039145.sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.9.0.copyload.i107 = load i64, ptr %.sroa.9.0..039145.sroa_idx.i106, align 1
  %.not54.i110 = icmp eq i64 %.sroa.9.0.copyload.i107, 0
  br i1 %.not54.i110, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.aj = add i32 %i.t, -48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.10.0..039145.sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.al = ptrtoint ptr %i.i to i64
  %invariant.op = sub i64 7, %i.al
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 235, ptr noundef nonnull @__func__.parallels_parse_format_extension, ptr noundef nonnull @.str.4) #7
  br label %._crit_edge152.i

.thread.i.thread:                                 ; preds = %.preheader.i
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 246, ptr noundef nonnull @__func__.parallels_parse_format_extension, ptr noundef nonnull @.str.5, i32 noundef %i.w, i64 noundef 24) #7
  br label %._crit_edge152.i

._crit_edge:                                      ; preds = %bb.ah, %.lr.ph.i
  %.038146.i.lcssa = phi ptr [ null, %.lr.ph.i ], [ %i.do, %bb.ah ]
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 259, ptr noundef nonnull @__func__.parallels_parse_format_extension, ptr noundef nonnull @.str.6) #7
  br label %.thread.i

bb.k:                                             ; preds = %.lr.ph, %bb.ah
  %i.am = phi i32 [ %i.aj, %.lr.ph ], [ %i.dv, %bb.ah ] ; 2 uses
  %i.an = phi ptr [ %i.ak, %.lr.ph ], [ %i.du, %bb.ah ] ; 2 uses
  %.sroa.10.0.copyload.i114.in = phi ptr [ %.sroa.10.0..039145.sroa_idx.i108, %.lr.ph ], [ %.sroa.10.0..039145.sroa_idx.i, %bb.ah ]
  %.039145.i112 = phi ptr [ %i.v, %.lr.ph ], [ %i.dt, %bb.ah ] ; 5 uses
  %.038146.i111 = phi ptr [ null, %.lr.ph ], [ %i.do, %bb.ah ] ; 4 uses
  %.sroa.10.0.copyload.i114 = load i32, ptr %.sroa.10.0.copyload.i114.in, align 1 ; 3 uses
  %i.ao = icmp ugt i32 %.sroa.10.0.copyload.i114, %i.am
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 265, ptr noundef nonnull @__func__.parallels_parse_format_extension, ptr noundef nonnull @.str.7) #7
  br label %.thread.i

bb.m:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i113 = load i64, ptr %.039145.i112, align 1 ; 2 uses
  switch i64 %.sroa.0.0.copyload.i113, label %bb.ag [
    i64 0, label %parallels_parse_format_extension.exit
    i64 2321710809462125386, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ap = zext i32 %.sroa.10.0.copyload.i114 to i64 ; 3 uses
  %i.aq = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(37) %i.a, i8 0, i64 37, i1 false), !annotation !12
  %i.ar = icmp ult i32 %.sroa.10.0.copyload.i114, 32
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 131, ptr noundef nonnull @__func__.parallels_load_bitmap, ptr noundef nonnull @.str.9, i64 noundef range(i64 0, 4294967296) %i.ap, i64 noundef 32) #7
  br label %parallels_load_bitmap.exit.thread.i

bb.p:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.an, align 1 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.039145.i112, i64 32
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.039145.i112, i64 48
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 1
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.039145.i112, i64 52
  %.sroa.9.0.copyload.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i, align 1 ; 8 uses
  %i.as = shl i32 %.sroa.6.0.copyload.i.i, 9
  %i.at = getelementptr inbounds nuw i8, ptr %.039145.i112, i64 56 ; 3 uses
  %i.au = load i64, ptr %i.ai, align 8            ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.au
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__func__.parallels_load_bitmap, ptr noundef nonnull @.str.10, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef %i.au) #7
  br label %parallels_load_bitmap.exit.thread.i

bb.r:                                             ; preds = %bb.p
  %i.av = add nsw i64 %i.ap, -32
  %i.aw = zext i32 %.sroa.9.0.copyload.i.i to i64 ; 6 uses
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = icmp samesign ugt i64 %i.ax, %i.av
  br i1 %i.ay, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 149, ptr noundef nonnull @__func__.parallels_load_bitmap, ptr noundef nonnull @.str.11) #7
  br label %parallels_load_bitmap.exit.thread.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull readonly align 1 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false)
  call void @qemu_uuid_unparse(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #7
  %i.az = call ptr @bdrv_create_dirty_bitmap(ptr noundef nonnull %0, i32 noundef %i.as, ptr noundef nonnull %i.a, ptr noundef %2) #7 ; 11 uses
  %.not59.i.i = icmp eq ptr %i.az, null
  br i1 %.not59.i.i, label %parallels_load_bitmap.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = call i64 @bdrv_dirty_bitmap_size(ptr noundef nonnull %i.az) #7
  %i.bb = call i64 @bdrv_dirty_bitmap_serialization_size(ptr noundef nonnull %i.az, i64 noundef 0, i64 noundef %i.ba) #7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = add i64 %i.bb, -1
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = udiv i64 %i.bg, %i.be                   ; 2 uses
  %.not60.i.i = icmp eq i64 %i.bh, %i.aw
  br i1 %.not60.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 167, ptr noundef nonnull @__func__.parallels_load_bitmap, ptr noundef nonnull @.str.12, i32 noundef %.sroa.9.0.copyload.i.i, i64 noundef %i.bh) #7
  br label %.loopexit.i

bb.w:                                             ; preds = %bb.u
  %.not61.i.i = icmp eq i32 %.sroa.9.0.copyload.i.i, 0
  br i1 %.not61.i.i, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = call noalias ptr @g_try_malloc_n(i64 noundef %i.aw, i64 noundef 8) #9 ; 10 uses
  %.not62.i.i = icmp eq ptr %i.bi, null
  br i1 %.not62.i.i, label %bb.y, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bj = add i32 %.sroa.9.0.copyload.i.i, 2147483647
  %or.cond = icmp ult i32 %i.bj, -2147483645
  br i1 %or.cond, label %.lr.ph.i.i.preheader338, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.aw, 4294967292              ; 4 uses
  %i.bk = trunc nuw i64 %n.vec to i32
  %i.bl = shl nuw nsw i64 %n.vec, 3
  %i.bm = getelementptr i8, ptr %i.at, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bn = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.at, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load335 = load <2 x i64>, ptr %i.bo, align 1
  %i.bp = shl i64 %index, 32
  %i.bq = ashr exact i64 %i.bp, 29
  %i.br = getelementptr inbounds i8, ptr %i.bi, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <2 x i64> %wide.load, ptr %i.br, align 8
  store <2 x i64> %wide.load335, ptr %i.bs, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aw
  br i1 %cmp.n, label %.lr.ph.i18, label %.lr.ph.i.i.preheader338

.lr.ph.i.i.preheader338:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.05067.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block ] ; 4 uses
  %.05166.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.preheader ], [ %i.bm, %middle.block ] ; 2 uses
  %i.bu = sub i32 %.sroa.9.0.copyload.i.i, %.05067.i.i.ph
  %xtraiter = and i32 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader338, %.lr.ph.i.i.prol
  %.05067.i.i.prol = phi i32 [ %i.bx, %.lr.ph.i.i.prol ], [ %.05067.i.i.ph, %.lr.ph.i.i.preheader338 ] ; 2 uses
  %.05166.i.i.prol = phi ptr [ %i.by, %.lr.ph.i.i.prol ], [ %.05166.i.i.ph, %.lr.ph.i.i.preheader338 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader338 ]
  %.051.val.i.i.prol = load i64, ptr %.05166.i.i.prol, align 1
  %i.bv = sext i32 %.05067.i.i.prol to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bv
  store i64 %.051.val.i.i.prol, ptr %i.bw, align 8
  %i.bx = add nuw i32 %.05067.i.i.prol, 1         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.05166.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !8

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader338
  %.05067.i.i.unr = phi i32 [ %.05067.i.i.ph, %.lr.ph.i.i.preheader338 ], [ %i.bx, %.lr.ph.i.i.prol ]
  %.05166.i.i.unr = phi ptr [ %.05166.i.i.ph, %.lr.ph.i.i.preheader338 ], [ %i.by, %.lr.ph.i.i.prol ]
  %i.bz = sub i32 %.05067.i.i.ph, %.sroa.9.0.copyload.i.i
  %i.ca = icmp ugt i32 %i.bz, -4
  br i1 %i.ca, label %.lr.ph.i18, label %.lr.ph.i.i

bb.y:                                             ; preds = %bb.x
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @__func__.parallels_load_bitmap, ptr noundef nonnull @.str.13, i32 noundef %.sroa.9.0.copyload.i.i) #7
  br label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05067.i.i = phi i32 [ %i.cp, %.lr.ph.i.i ], [ %.05067.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.05166.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %.05166.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.051.val.i.i = load i64, ptr %.05166.i.i, align 1
  %i.cb = sext i32 %.05067.i.i to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.cb
  store i64 %.051.val.i.i, ptr %i.cc, align 8
  %i.cd = add nuw i32 %.05067.i.i, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.05166.i.i, i64 8
  %.051.val.i.i.1 = load i64, ptr %i.ce, align 1
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.cf
  store i64 %.051.val.i.i.1, ptr %i.cg, align 8
  %i.ch = add nuw i32 %.05067.i.i, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %.05166.i.i, i64 16
  %.051.val.i.i.2 = load i64, ptr %i.ci, align 1
  %i.cj = sext i32 %i.ch to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.cj
  store i64 %.051.val.i.i.2, ptr %i.ck, align 8
  %i.cl = add nuw i32 %.05067.i.i, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %.05166.i.i, i64 24
  %.051.val.i.i.3 = load i64, ptr %i.cm, align 1
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.cn
  store i64 %.051.val.i.i.3, ptr %i.co, align 8
  %i.cp = add nuw i32 %.05067.i.i, 4              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.05166.i.i, i64 32
  %exitcond.not.i.i.3 = icmp eq i32 %i.cp, %.sroa.9.0.copyload.i.i
  br i1 %exitcond.not.i.i.3, label %.lr.ph.i18, label %.lr.ph.i.i, !llvm.loop !9

.lr.ph.i18:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block
  %i.cr = load ptr, ptr %i.d, align 8
  %i.cs = call i64 @bdrv_dirty_bitmap_size(ptr noundef nonnull %i.az) #7
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 144 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = zext i32 %i.cu to i64
  %i.cw = call ptr @qemu_blockalign(ptr noundef nonnull %0, i64 noundef %i.cv) #7 ; 4 uses
  %i.cx = load i32, ptr %i.ct, align 8
  %i.cy = call i64 @bdrv_dirty_bitmap_serialization_coverage(i32 noundef %i.cx, ptr noundef nonnull %i.az) #7 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.ad, %.lr.ph.i18
  %.04352.i = phi i64 [ 0, %.lr.ph.i18 ], [ %i.dk, %bb.ad ] ; 2 uses
  %.04451.i = phi i64 [ 0, %.lr.ph.i18 ], [ %i.dl, %bb.ad ] ; 4 uses
  %i.cz = sub i64 %i.cs, %.04451.i
  %i.da = call i64 @llvm.umin.i64(i64 %i.cz, i64 %i.cy) ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.04352.i
  %i.dc = load i64, ptr %i.db, align 8            ; 2 uses
  switch i64 %i.dc, label %bb.ab [
    i64 0, label %bb.ad
    i64 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  call void @bdrv_dirty_bitmap_deserialize_ones(ptr noundef nonnull %i.az, i64 noundef %.04451.i, i64 noundef %i.da, i1 noundef zeroext false) #7
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.dd = load ptr, ptr %i.k, align 8
  %i.de = shl i64 %i.dc, 9
  %i.df = load i32, ptr %i.ct, align 8
  %i.dg = zext i32 %i.df to i64
  %i.dh = call i32 @bdrv_pread(ptr noundef %i.dd, i64 noundef %i.de, i64 noundef %i.dg, ptr noundef %i.cw, i32 noundef 0) #7 ; 2 uses
  %i.di = icmp slt i32 %i.dh, 0
  br i1 %i.di, label %parallels_load_bitmap_data.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @bdrv_dirty_bitmap_deserialize_part(ptr noundef nonnull %i.az, ptr noundef %i.cw, i64 noundef %.04451.i, i64 noundef %i.da, i1 noundef zeroext false) #7
  br label %bb.ad

parallels_load_bitmap_data.exit.thread:           ; preds = %bb.ab
  %i.dj = sub i32 0, %i.dh
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 93, ptr noundef nonnull @__func__.parallels_load_bitmap_data, i32 noundef %i.dj, ptr noundef nonnull @.str.15) #7
  call void @qemu_vfree(ptr noundef %i.cw) #7
  br label %.loopexit.i

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.z
  %i.dk = add nuw nsw i64 %.04352.i, 1            ; 2 uses
  %i.dl = add i64 %.04451.i, %i.cy
  %exitcond.not.i = icmp eq i64 %i.dk, %i.aw
  br i1 %exitcond.not.i, label %parallels_load_bitmap_data.exit, label %bb.z, !llvm.loop !10

parallels_load_bitmap_data.exit:                  ; preds = %bb.ad
  call void @bdrv_dirty_bitmap_deserialize_finish(ptr noundef nonnull %i.az) #7
  call void @qemu_vfree(ptr noundef %i.cw) #7
  br label %bb.ae

bb.ae:                                            ; preds = %parallels_load_bitmap_data.exit, %bb.w
  %.065.i.i = phi ptr [ null, %bb.w ], [ %i.bi, %parallels_load_bitmap_data.exit ]
  %i.dm = load i32, ptr %0, align 8
  %i.dn = and i32 %i.dm, 2
  %.not63.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not63.i.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 191, ptr noundef nonnull @__PRETTY_FUNCTION__.parallels_load_bitmap) #8
  unreachable

.loopexit.i:                                      ; preds = %parallels_load_bitmap_data.exit.thread, %bb.y, %bb.v
  %.1.i.i = phi ptr [ null, %bb.y ], [ null, %bb.v ], [ %i.bi, %parallels_load_bitmap_data.exit.thread ]
  call void @bdrv_release_dirty_bitmap(ptr noundef nonnull %i.az) #7
  br label %parallels_load_bitmap.exit.thread.i

parallels_load_bitmap.exit.thread.i:              ; preds = %bb.t, %.loopexit.i, %bb.s, %bb.q, %bb.o
  %.2.i.ph.i = phi ptr [ null, %bb.q ], [ %.1.i.i, %.loopexit.i ], [ null, %bb.o ], [ null, %bb.s ], [ null, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @g_free(ptr noundef %.2.i.ph.i) #7
  br label %.thread.i

bb.ag:                                            ; preds = %bb.m
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 282, ptr noundef nonnull @__func__.parallels_parse_format_extension, ptr noundef nonnull @.str.8, i64 noundef %.sroa.0.0.copyload.i113) #7
  br label %.thread.i

bb.ah:                                            ; preds = %bb.ae
  call void @bdrv_dirty_bitmap_set_readonly(ptr noundef nonnull %i.az, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @g_free(ptr noundef %.065.i.i) #7
  %i.do = call ptr @g_slist_append(ptr noundef %.038146.i111, ptr noundef nonnull %i.az) #7 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  %i.dq = ptrtoint ptr %i.dp to i64
  %.reass.i.reass.reass = add i64 %i.dq, %invariant.op
  %i.dr = sdiv i64 %.reass.i.reass.reass, 8
  %i.ds = shl nsw i64 %i.dr, 3
  %i.dt = getelementptr inbounds i8, ptr %i.i, i64 %i.ds ; 4 uses
  %.sroa.9.0..039145.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..039145.sroa_idx.i, align 1
  %.sroa.10.0..039145.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = add i32 %i.am, -24
  %.not54.i = icmp eq i64 %.sroa.9.0.copyload.i, 0
  br i1 %.not54.i, label %bb.k, label %._crit_edge

.thread.i:                                        ; preds = %bb.ag, %parallels_load_bitmap.exit.thread.i, %bb.l, %._crit_edge
  %.2.i = phi ptr [ %.038146.i111, %bb.l ], [ %.038146.i111, %bb.ag ], [ %.038146.i111, %parallels_load_bitmap.exit.thread.i ], [ %.038146.i.lcssa, %._crit_edge ] ; 3 uses
  %.not56148.i = icmp eq ptr %.2.i, null
  br i1 %.not56148.i, label %._crit_edge152.i, label %.lr.ph151.i

.lr.ph151.i:                                      ; preds = %.thread.i, %.lr.ph151.i
  %.037149.i = phi ptr [ %i.dy, %.lr.ph151.i ], [ %.2.i, %.thread.i ] ; 2 uses
  %i.dw = load ptr, ptr %.037149.i, align 8
  call void @bdrv_release_dirty_bitmap(ptr noundef %i.dw) #7
  %i.dx = getelementptr inbounds nuw i8, ptr %.037149.i, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %.not56.i = icmp eq ptr %i.dy, null
  br i1 %.not56.i, label %._crit_edge152.i, label %.lr.ph151.i, !llvm.loop !11

._crit_edge152.i:                                 ; preds = %.lr.ph151.i, %.thread.i.thread, %.thread.i, %bb.j, %bb.g, %bb.f
  %.2247.i = phi ptr [ null, %bb.j ], [ null, %.thread.i ], [ null, %bb.f ], [ null, %bb.g ], [ null, %.thread.i.thread ], [ %.2.i, %.lr.ph151.i ]
  call void @g_slist_free(ptr noundef %.2247.i) #7
  br label %parallels_parse_format_extension.exit

parallels_parse_format_extension.exit:            ; preds = %bb.m, %._crit_edge152.i
  %.245.i = phi i32 [ -22, %._crit_edge152.i ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %.val.i = load ptr, ptr %i.b, align 8
  call void @g_free(ptr noundef %.val.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.ai

bb.ai:                                            ; preds = %parallels_parse_format_extension.exit, %bb.d
  %.0 = phi i32 [ %i.o, %bb.d ], [ %.245.i, %parallels_parse_format_extension.exit ]
  call void @qemu_vfree(ptr noundef %i.i) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1
end_hunk_0
