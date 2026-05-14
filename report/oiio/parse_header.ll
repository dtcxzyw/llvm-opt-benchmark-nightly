inline.NumInlined: 69
inline.NumDeleted: 28
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exr_attr_tiledesc_t = type <{ i32, i32, i8 }>
%union.anon.1 = type { i32 }
%struct.exr_attr_v2f_t = type { float, float }
%union.anon.0 = type { i32 }
%struct.exr_attr_box2i_t = type { %struct.exr_attr_v2i_t, %struct.exr_attr_v2i_t }
%struct.exr_attr_v2i_t = type { i32, i32 }
%struct.exr_attr_chlist_t = type { i32, i32, ptr }
%struct._internal_exr_seq_scratch = type { ptr, i64, i64, i64, ptr, ptr, ptr }

@.str = private unnamed_addr constant [92 x i8] c"Invalid data window x dims (%d, %d) resulting in invalid tile level size (%ld) for level %d\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"Invalid data window y dims (%d, %d) resulting in invalid tile level size (%ld) for level %d\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Error during file initialization\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"Invalid combination of version flags: single part flag found, but also marked as deep (%d) or multipart (%d)\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Unable to extract header byte\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Unable to go to next part definition\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"Part %d (%s) has non-conforming shared attributes: %s%s%s%s%s%s%s\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"<missing name>\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Unable to read magic and version flags\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"File is not an OpenEXR file: magic 0x%08X (%d) flags 0x%08X\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"File is of an unsupported version: %d, magic 0x%08X flags 0x%08X\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"File has an unsupported flags: magic 0x%08X flags 0x%08X\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"End of file attempting to read header\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"attribute name\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"attribute type\00", align 1
@.str.18 = private unnamed_addr constant [75 x i8] c"Invalid empty string encountered parsing attribute type for attribute '%s'\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"Unable to read attribute size for attribute '%s', type '%s'\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"Unable to initialize attribute '%s', type '%s'\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Invalid type '%s' for attribute '%s'\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Invalid %s encountered: start '%s' (max %d)\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"chunkCount\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"dataWindow\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"displayWindow\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"lineOrder\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"pixelAspectRatio\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"screenWindowCenter\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"screenWindowWidth\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"tiles\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"Required attribute 'channels': Invalid type '%s'\00", align 1
@.str.39 = private unnamed_addr constant [60 x i8] c"Duplicate copy of required attribute 'channels' encountered\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"Unable to initialize attribute '%s', type 'chlist'\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"Required attribute '%s': Invalid type '%s'\00", align 1
@.str.42 = private unnamed_addr constant [54 x i8] c"Duplicate copy of required attribute '%s' encountered\00", align 1
@.str.43 = private unnamed_addr constant [56 x i8] c"Unable to initialize attribute '%s', type 'compression'\00", align 1
@.str.44 = private unnamed_addr constant [62 x i8] c"Duplicate copy of required attribute 'chunkCount' encountered\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"attribute 'chunkCount': Invalid type '%s'\00", align 1
@.str.47 = private unnamed_addr constant [57 x i8] c"Required attribute 'chunkCount': Invalid size %d (exp 4)\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"Unable to read chunkCount data\00", align 1
@.str.49 = private unnamed_addr constant [48 x i8] c"Unable to initialize attribute '%s', type 'int'\00", align 1
@.str.51 = private unnamed_addr constant [50 x i8] c"Unable to initialize attribute '%s', type 'box2i'\00", align 1
@.str.52 = private unnamed_addr constant [54 x i8] c"Unable to initialize attribute '%s', type 'lineOrder'\00", align 1
@.str.53 = private unnamed_addr constant [56 x i8] c"Duplicate copy of required attribute 'name' encountered\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"attribute 'name': Invalid type '%s'\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"Unable to initialize attribute '%s', type 'string'\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"Unable to read 'name' data\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"Required attribute '%s': Invalid size %d (exp 4)\00", align 1
@.str.59 = private unnamed_addr constant [47 x i8] c"Attribute '%s': Unable to read data (%d bytes)\00", align 1
@.str.60 = private unnamed_addr constant [50 x i8] c"Unable to initialize attribute '%s', type 'float'\00", align 1
@.str.62 = private unnamed_addr constant [51 x i8] c"Required attribute '%s': Invalid size %d (exp %lu)\00", align 1
@.str.63 = private unnamed_addr constant [48 x i8] c"Unable to initialize attribute '%s', type 'v2f'\00", align 1
@.str.65 = private unnamed_addr constant [46 x i8] c"Required attribute 'tiles': Invalid type '%s'\00", align 1
@.str.66 = private unnamed_addr constant [54 x i8] c"Required attribute 'tiles': Invalid size %d (exp %lu)\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"Unable to read 'tiles' data\00", align 1
@.str.68 = private unnamed_addr constant [51 x i8] c"Invalid level mode (%d) in tile description header\00", align 1
@.str.69 = private unnamed_addr constant [54 x i8] c"Invalid rounding mode (%d) in tile description header\00", align 1
@.str.70 = private unnamed_addr constant [57 x i8] c"Duplicate copy of required attribute 'tiles' encountered\00", align 1
@.str.71 = private unnamed_addr constant [53 x i8] c"Unable to initialize attribute '%s', type 'tiledesc'\00", align 1
@.str.72 = private unnamed_addr constant [56 x i8] c"Duplicate copy of required attribute 'type' encountered\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"Required attribute 'type': Invalid type '%s'\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"Unable to read 'type' data\00", align 1
@.str.79 = private unnamed_addr constant [55 x i8] c"attribute 'type': Unknown type string '%s' (length %d)\00", align 1
@.str.80 = private unnamed_addr constant [59 x i8] c"Duplicate copy of required attribute 'version' encountered\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"attribute 'version': Invalid type '%s'\00", align 1
@.str.82 = private unnamed_addr constant [45 x i8] c"attribute 'version': Invalid size %d (exp 4)\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"Unable to read version data\00", align 1
@.str.84 = private unnamed_addr constant [29 x i8] c"Invalid version %d: expect 1\00", align 1
@.str.85 = private unnamed_addr constant [52 x i8] c"Attribute '%s', type '%s': Invalid negative size %d\00", align 1
@.str.86 = private unnamed_addr constant [43 x i8] c"Attribute '%s', type '%s': Invalid size %d\00", align 1
@.str.87 = private unnamed_addr constant [74 x i8] c"Attribute '%s': Invalid size %d (exp '%s' size 4 * n, found odd bytes %d)\00", align 1
@.str.88 = private unnamed_addr constant [60 x i8] c"Attribute '%s': Invalid size %d (exp '%s' size 4 * %d (%d))\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"Unable to read '%s' %s data\00", align 1
@.str.90 = private unnamed_addr constant [44 x i8] c"Out of data parsing '%s', last channel '%s'\00", align 1
@.str.91 = private unnamed_addr constant [50 x i8] c"Attribute '%s': Invalid size %d (exp '%s' size 1)\00", align 1
@.str.92 = private unnamed_addr constant [62 x i8] c"Attribute '%s' (type '%s'): Invalid value %d (max allowed %d)\00", align 1
@.str.93 = private unnamed_addr constant [60 x i8] c"Attribute '%s': Invalid size %d (exp '%s' size 8 * %d (%d))\00", align 1
@.str.94 = private unnamed_addr constant [53 x i8] c"Attribute '%s': Invalid size %d (exp '%s' size >= 8)\00", align 1
@.str.95 = private unnamed_addr constant [45 x i8] c"Attribute '%s': Unable to read preview sizes\00", align 1
@.str.96 = private unnamed_addr constant [66 x i8] c"Attribute '%s': Invalid size %d (exp '%s' %u x %u * 4 + sizevals)\00", align 1
@.str.97 = private unnamed_addr constant [60 x i8] c"Attribute '%s', type '%s': Invalid size for preview %u x %u\00", align 1
@.str.98 = private unnamed_addr constant [55 x i8] c"Attribute '%s': Unable to read preview data (%d bytes)\00", align 1
@.str.99 = private unnamed_addr constant [45 x i8] c"Attribute '%s': Unable to read string length\00", align 1
@.str.100 = private unnamed_addr constant [68 x i8] c"Attribute '%s': Invalid size (%d) encountered parsing string vector\00", align 1
@.str.101 = private unnamed_addr constant [53 x i8] c"Attribute '%s': Unable to read string of length (%d)\00", align 1
@.str.102 = private unnamed_addr constant [51 x i8] c"Attribute '%s': Invalid size %d (exp '%s' size %d)\00", align 1
@.str.103 = private unnamed_addr constant [76 x i8] c"Attribute '%s': Invalid tile level specification encountered: found enum %d\00", align 1
@.str.104 = private unnamed_addr constant [79 x i8] c"Attribute '%s': Invalid tile rounding specification encountered: found enum %d\00", align 1
@.str.105 = private unnamed_addr constant [57 x i8] c"Attribute '%s': Unable to read opaque %s data (%d bytes)\00", align 1
@.str.106 = private unnamed_addr constant [39 x i8] c"Invalid chunk count (%d) for part '%s'\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"<first>\00", align 1
@.str.108 = private unnamed_addr constant [57 x i8] c"Invalid chunk count (%d) for part '%s' (%d), expect (%d)\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_compute_tile_information(ptr noundef %0, ptr noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7
  switch i32 %i.b, label %bb.b [
    i32 0, label %.thread190
    i32 2, label %.thread190
    i32 5, label %.thread190
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !18
  %i.d = icmp eq i8 %i.c, 4
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread190, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not139 = icmp eq i32 %2, 0
  br i1 %.not139, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %.not140 = icmp eq ptr %i.h, null
  br i1 %.not140, label %.thread190, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %.not141 = icmp eq ptr %i.j, null
  br i1 %.not141, label %.thread190, label %.thread

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %.not142 = icmp eq ptr %i.l, null
  br i1 %.not142, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.o = tail call i32 %i.n(ptr noundef nonnull %0, i32 noundef 13) #8
  br label %.thread190

.thread:                                          ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %.not143 = icmp eq ptr %i.q, null
  br i1 %.not143, label %.thread222, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  tail call void %i.s(ptr noundef nonnull %i.q) #8
  store ptr null, ptr %i.p, align 8, !tbaa !27
  br label %.thread222

bb.j:                                             ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27
  %i.t = icmp eq ptr %.pre, null
  br i1 %i.t, label %.thread222, label %.thread190

.thread222:                                       ; preds = %bb.i, %.thread, %bb.j
  %i.u = phi ptr [ %i.k, %bb.j ], [ %i.i, %.thread ], [ %i.i, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.0.0.copyload = load i32, ptr %i.w, align 8, !tbaa !3 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 148
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !3 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !3 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 156
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !3 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29   ; 4 uses
  %i.aa = sext i32 %.sroa.9.0.copyload to i64
  %i.ab = sext i32 %.sroa.0.0.copyload to i64
  %i.ac = sub nsw i64 %i.aa, %i.ab                ; 3 uses
  %i.ad = add nsw i64 %i.ac, 1                    ; 4 uses
  %i.ae = sext i32 %.sroa.12.0.copyload to i64
  %i.af = sext i32 %.sroa.6.0.copyload to i64
  %i.ag = sub nsw i64 %i.ae, %i.af                ; 4 uses
  %i.ah = add nsw i64 %i.ag, 1                    ; 4 uses
  %i.ai = load i32, ptr %i.z, align 1, !tbaa !30
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread222
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.m
end_hunk_0
begin_hunk_1_@extract_attr_float_vector:bb.a
  %i.n = load i64, ptr %i.m, align 8, !tbaa !111  ; 2 uses
  %i.o = icmp slt i64 %i.n, %i.g                  ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %scratch_attr_too_big.exit.i

bb.e:                                             ; preds = %bb.d
  %i.p = sub i64 %i.g, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !73
  %i.s = add nsw i64 %i.p, %i.r
  %.not.i.i = icmp sgt i64 %i.s, %i.k
  br i1 %.not.i.i, label %bb.g, label %scratch_attr_too_big.exit.i

bb.f:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %5, 2147483647
  %or.cond.i.i = and i1 %i.t, %i.o
  br i1 %or.cond.i.i, label %bb.g, label %scratch_attr_too_big.exit.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = tail call i32 (ptr, i32, ptr, ...) %i.v(ptr noundef nonnull %i.i, i32 noundef 17, ptr noundef nonnull @.str.86, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) #8, !inline_history !137
  br label %check_bad_attrsz.exit

scratch_attr_too_big.exit.i:                      ; preds = %bb.f, %bb.e, %bb.d
  %i.x = lshr i32 %5, 2
  %i.y = and i32 %5, 3                            ; 2 uses
  %.not33.i = icmp eq i32 %i.y, 0
  br i1 %.not33.i, label %check_bad_attrsz.exit, label %bb.h

bb.h:                                             ; preds = %scratch_attr_too_big.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ab = tail call i32 (ptr, i32, ptr, ...) %i.aa(ptr noundef nonnull %i.i, i32 noundef 17, ptr noundef nonnull @.str.87, ptr noundef nonnull %3, i32 noundef %5, ptr noundef nonnull %4, i32 noundef %i.y) #8, !inline_history !137
  br label %check_bad_attrsz.exit

check_bad_attrsz.exit:                            ; preds = %scratch_attr_too_big.exit.i, %bb.b, %bb.g, %bb.h
  %.0 = phi i32 [ %5, %bb.b ], [ %5, %bb.g ], [ %5, %bb.h ], [ %i.x, %scratch_attr_too_big.exit.i ] ; 2 uses
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.w, %bb.g ], [ %i.ab, %bb.h ], [ 0, %scratch_attr_too_big.exit.i ] ; 2 uses
  %i.ac = tail call i32 @exr_attr_float_vector_destroy(ptr noundef %0, ptr noundef %2) #8 ; 0 uses
  %i.ad = icmp eq i32 %.0.i, 0
  %i.ae = icmp sgt i32 %.0, 0
  %or.cond = and i1 %i.ae, %i.ad
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %check_bad_attrsz.exit
  %i.af = tail call i32 @exr_attr_float_vector_init(ptr noundef %0, ptr noundef %2, i32 noundef %.0) #8 ; 2 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !140
  %i.ak = sext i32 %5 to i64
  %i.al = tail call i32 %i.ah(ptr noundef nonnull %1, ptr noundef %i.aj, i64 noundef %i.ak) #8
  %.not29 = icmp eq i32 %i.al, 0
  br i1 %.not29, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = tail call i32 @exr_attr_float_vector_destroy(ptr noundef %0, ptr noundef nonnull %2) #8 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  %i.ap = tail call i32 (ptr, i32, ptr, ...) %i.ao(ptr noundef %0, i32 noundef 10, ptr noundef nonnull @.str.89, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %check_bad_attrsz.exit, %bb.i, %bb.k
  %.025 = phi i32 [ %i.af, %bb.i ], [ %i.ap, %bb.k ], [ %.0.i, %check_bad_attrsz.exit ], [ 0, %bb.j ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @extract_attr_preview(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %i.d = tail call i32 @exr_attr_preview_destroy(ptr noundef %0, ptr noundef %2) #8 ; 0 uses
  %i.e = icmp slt i32 %5, 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = tail call i32 (ptr, i32, ptr, ...) %i.g(ptr noundef nonnull %0, i32 noundef 17, ptr noundef nonnull @.str.94, ptr noundef nonnull %3, i32 noundef %5, ptr noundef nonnull %4) #8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = call i32 %i.j(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 8) #8 ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = call i32 (ptr, i32, ptr, ...) %i.m(ptr noundef nonnull %0, i32 noundef %i.k, ptr noundef nonnull @.str.95, ptr noundef nonnull %3) #8
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.a, align 4, !tbaa !3    ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3    ; 4 uses
  %i.r = shl i32 %i.o, 2
  %i.s = mul i32 %i.r, %i.q                       ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = zext nneg i32 %5 to i64
  %i.v = add nuw nsw i64 %i.t, 8
  %.not57 = icmp eq i64 %i.v, %i.u
  br i1 %.not57, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = call i32 (ptr, i32, ptr, ...) %i.x(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull @.str.96, ptr noundef nonnull %3, i32 noundef %5, ptr noundef nonnull %4, i32 noundef %i.o, i32 noundef %i.q) #8
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.z = icmp eq i32 %i.s, 0
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i64 %i.c, 1
  %.not58 = icmp ugt i64 %i.c, %i.t
  %or.cond = or i1 %i.aa, %.not58
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = call i32 (ptr, i32, ptr, ...) %i.ac(ptr noundef nonnull %0, i32 noundef 17, ptr noundef nonnull @.str.97, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %i.o, i32 noundef %i.q) #8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ae = call i32 @exr_attr_preview_init(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.o, i32 noundef %i.q) #8 ; 2 uses
  %.not59 = icmp eq i32 %i.ae, 0
  br i1 %.not59, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !143
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !3
  %i.aj = load i32, ptr %i.p, align 4, !tbaa !3
  %i.ak = shl i32 %i.ai, 2
  %i.al = mul i32 %i.ak, %i.aj
  %i.am = zext i32 %i.al to i64
  %i.an = call i32 %i.af(ptr noundef nonnull %1, ptr noundef %i.ah, i64 noundef %i.am) #8 ; 2 uses
  %.not60 = icmp eq i32 %i.an, 0
  br i1 %.not60, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = call i32 @exr_attr_preview_destroy(ptr noundef nonnull %0, ptr noundef nonnull %2) #8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.ar = call i32 (ptr, i32, ptr, ...) %i.aq(ptr noundef nonnull %0, i32 noundef %i.an, ptr noundef nonnull @.str.98, ptr noundef nonnull %3, i32 noundef %5) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.l, %bb.i, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.n, %bb.d ], [ %i.y, %bb.f ], [ %i.ad, %bb.i ], [ %i.ae, %bb.j ], [ %i.ar, %bb.l ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @extract_attr_string(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = sext i32 %5 to i64                       ; 2 uses
  %i.d = tail call i32 %i.b(ptr noundef nonnull %1, ptr noundef %6, i64 noundef %i.c) #8 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = tail call i32 (ptr, i32, ptr, ...) %i.f(ptr noundef %0, i32 noundef %i.d, ptr noundef nonnull @.str.89, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %6, i64 %i.c
  store i8 0, ptr %i.h, align 1, !tbaa !29
  %i.i = tail call i32 @exr_attr_string_init_static_with_length(ptr noundef %0, ptr noundef %2, ptr noundef %6, i32 noundef %5) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @extract_attr_string_vector(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp slt i32 %5, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = tail call i32 (ptr, i32, ptr, ...) %i.f(ptr noundef %i.d, i32 noundef 17, ptr noundef nonnull @.str.85, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) #8, !inline_history !137
  br label %check_bad_attrsz.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %5 to i64                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.l = load i64, ptr %i.k, align 8, !tbaa !110  ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !111  ; 2 uses
  %i.p = icmp slt i64 %i.o, %i.h                  ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.p, label %bb.e, label %.preheader104

bb.e:                                             ; preds = %bb.d
  %i.q = sub i64 %i.h, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !73
  %i.t = add nsw i64 %i.q, %i.s
  %.not.i.i = icmp sgt i64 %i.t, %i.l
  br i1 %.not.i.i, label %bb.g, label %.preheader104

bb.f:                                             ; preds = %bb.c
  %i.u = icmp eq i32 %5, 2147483647
  %or.cond.i.i = and i1 %i.u, %i.p
  br i1 %or.cond.i.i, label %bb.g, label %.preheader104

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40
  %i.x = tail call i32 (ptr, i32, ptr, ...) %i.w(ptr noundef nonnull %i.j, i32 noundef 17, ptr noundef nonnull @.str.86, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) #8, !inline_history !137
  br label %check_bad_attrsz.exit

check_bad_attrsz.exit:                            ; preds = %bb.b, %bb.g
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.x, %bb.g ] ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %.preheader104, label %bb.w

.preheader104:                                    ; preds = %bb.d, %bb.e, %bb.f, %check_bad_attrsz.exit
  %i.y = icmp sgt i32 %5, 0
  br i1 %i.y, label %.lr.ph147, label %._crit_edge148

.lr.ph147:                                        ; preds = %.preheader104
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph147, %bb.u
  %indvars.iv197 = phi i64 [ 0, %.lr.ph147 ], [ %indvars.iv.next198, %bb.u ] ; 11 uses
  %.080146 = phi ptr [ null, %.lr.ph147 ], [ %.2, %bb.u ] ; 3 uses
  %.081145 = phi i32 [ 0, %.lr.ph147 ], [ %i.ck, %bb.u ]
  %.082144 = phi i32 [ 0, %.lr.ph147 ], [ %.284, %bb.u ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.ad = call i32 %i.ac(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 4) #8 ; 2 uses
  %.not98 = icmp eq i32 %i.ad, 0
  br i1 %.not98, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = trunc nuw nsw i64 %indvars.iv197 to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40
  %i.ah = call i32 (ptr, i32, ptr, ...) %i.ag(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.99, ptr noundef nonnull %3) #8
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ai = add i32 %.081145, 4                     ; 2 uses
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !3   ; 3 uses
  %i.ak = icmp slt i32 %i.aj, 0
  %i.al = sub nsw i32 %5, %i.ai
  %i.am = icmp sgt i32 %i.aj, %i.al
  %or.cond = select i1 %i.ak, i1 true, i1 %i.am
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = trunc nuw nsw i64 %indvars.iv197 to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.aq = call i32 (ptr, i32, ptr, ...) %i.ap(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.100, ptr noundef nonnull %3, i32 noundef %i.aj) #8
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ar = icmp eq i32 %.082144, 0
  br i1 %i.ar, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !39
  %i.at = call ptr %i.as(i64 noundef 64) #8       ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = trunc nuw nsw i64 %indvars.iv197 to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !26
  %i.ay = call i32 %i.ax(ptr noundef nonnull %0, i32 noundef 1) #8
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.l
  %.183 = phi i32 [ %.082144, %bb.l ], [ 4, %bb.m ] ; 3 uses
  %.1 = phi ptr [ %.080146, %bb.l ], [ %i.at, %bb.m ] ; 6 uses
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.az = trunc nuw i64 %indvars.iv.next198 to i32 ; 4 uses
  %.not99 = icmp sgt i32 %.183, %i.az
  br i1 %.not99, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = shl nsw i32 %.183, 1                    ; 2 uses
  %i.bb = load ptr, ptr %i.aa, align 8, !tbaa !39
  %i.bc = sext i32 %i.ba to i64
  %i.bd = shl nsw i64 %i.bc, 4
  %i.be = call ptr %i.bb(i64 noundef %i.bd) #8    ; 5 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.p
  %.not155 = icmp eq i64 %indvars.iv197, 0
  br i1 %.not155, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %indvars.iv197, 1
  %i.bg = icmp eq i64 %indvars.iv197, 1
  br i1 %i.bg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %indvars.iv197, 9223372036854775806
  br label %.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.bh = trunc nuw nsw i64 %indvars.iv197 to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !26
  %i.bk = call i32 %i.bj(ptr noundef nonnull %0, i32 noundef 1) #8
  br label %.loopexit

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod337 = trunc i64 %indvars.iv197 to i1
  call void @llvm.assume(i1 %lcmp.mod337)
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.epil.init
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !145
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.bn = load ptr, ptr %i.ab, align 8, !tbaa !28
  call void %i.bn(ptr noundef %.1) #8
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !145
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.next
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv.next
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !145
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !146

bb.r:                                             ; preds = %._crit_edge, %bb.o
  %.284 = phi i32 [ %i.ba, %._crit_edge ], [ %.183, %bb.o ] ; 2 uses
  %.2 = phi ptr [ %i.be, %._crit_edge ], [ %.1, %bb.o ] ; 5 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %.2, i64 %indvars.iv197 ; 3 uses
  store <16 x i8> zeroinitializer, ptr %i.bs, align 8
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !3
  %i.bu = call i32 @exr_attr_string_init(ptr noundef %0, ptr noundef nonnull %i.bs, i32 noundef %i.bt) #8 ; 2 uses
  %.not100 = icmp eq i32 %i.bu, 0
  br i1 %.not100, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !130
  %i.by = load i32, ptr %i.a, align 4, !tbaa !3
  %i.bz = sext i32 %i.by to i64
  %i.ca = call i32 %i.bv(ptr noundef nonnull %1, ptr noundef %i.bx, i64 noundef %i.bz) #8 ; 2 uses
  %.not101 = icmp eq i32 %i.ca, 0
  br i1 %.not101, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !40
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ce = call i32 (ptr, i32, ptr, ...) %i.cc(ptr noundef %0, i32 noundef %i.ca, ptr noundef nonnull @.str.101, ptr noundef nonnull %3, i32 noundef %i.cd) #8
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !130
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.cf, i64 %i.ch
  store i8 0, ptr %i.ci, align 1, !tbaa !29
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ck = add nsw i32 %i.cj, %i.ai                ; 2 uses
  %i.cl = icmp slt i32 %i.ck, %5
  br i1 %i.cl, label %bb.h, label %._crit_edge148, !llvm.loop !147

._crit_edge148:                                   ; preds = %bb.u, %.preheader104
  %.085.lcssa = phi i32 [ 0, %.preheader104 ], [ %i.az, %bb.u ]
  %.082.lcssa = phi i32 [ 0, %.preheader104 ], [ %.284, %bb.u ]
  %.080.lcssa = phi ptr [ null, %.preheader104 ], [ %.2, %bb.u ]
  %i.cm = call i32 @exr_attr_string_vector_destroy(ptr noundef %0, ptr noundef %2) #8 ; 0 uses
  store i32 %.085.lcssa, ptr %2, align 8, !tbaa !53
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.082.lcssa, ptr %i.cn, align 4, !tbaa !148
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.080.lcssa, ptr %i.co, align 8, !tbaa !55
  br label %bb.w

.loopexit:                                        ; preds = %bb.r, %bb.t, %bb.q, %bb.n, %bb.k, %bb.i
  %.087 = phi i32 [ %i.ah, %bb.i ], [ %i.aq, %bb.k ], [ %i.ay, %bb.n ], [ %i.bk, %bb.q ], [ %i.ce, %bb.t ], [ %i.bu, %bb.r ] ; 2 uses
  %.186 = phi i32 [ %i.ae, %bb.i ], [ %i.an, %bb.k ], [ %i.av, %bb.n ], [ %i.bh, %bb.q ], [ %i.az, %bb.t ], [ %i.az, %bb.r ] ; 2 uses
  %.3 = phi ptr [ %.080146, %bb.i ], [ %.080146, %bb.k ], [ null, %bb.n ], [ %.1, %bb.q ], [ %.2, %bb.t ], [ %.2, %bb.r ] ; 3 uses
  %i.cp = icmp sgt i32 %.186, 0
  br i1 %i.cp, label %.lr.ph153.preheader, label %._crit_edge154

.lr.ph153.preheader:                              ; preds = %.loopexit
  %wide.trip.count = zext nneg i32 %.186 to i64
  br label %.lr.ph153

._crit_edge154:                                   ; preds = %.lr.ph153, %.loopexit
  %.not102 = icmp eq ptr %.3, null
  br i1 %.not102, label %bb.w, label %bb.v

.lr.ph153:                                        ; preds = %.lr.ph153.preheader, %.lr.ph153
  %indvars.iv200 = phi i64 [ 0, %.lr.ph153.preheader ], [ %indvars.iv.next201, %.lr.ph153 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %.3, i64 %indvars.iv200
  %i.cr = call i32 @exr_attr_string_destroy(ptr noundef %0, ptr noundef %i.cq) #8 ; 0 uses
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count
  br i1 %exitcond203.not, label %._crit_edge154, label %.lr.ph153, !llvm.loop !149

bb.v:                                             ; preds = %._crit_edge154
  %i.cs = load ptr, ptr %i.ab, align 8, !tbaa !28
  call void %i.cs(ptr noundef nonnull %.3) #8
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge154, %bb.v, %check_bad_attrsz.exit, %._crit_edge148
  %.088 = phi i32 [ 0, %._crit_edge148 ], [ %.0.i, %check_bad_attrsz.exit ], [ %.087, %bb.v ], [ %.087, %._crit_edge154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.088
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @extract_attr_tiledesc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %5, 9
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = tail call i32 (ptr, i32, ptr, ...) %i.b(ptr noundef %0, i32 noundef 17, ptr noundef nonnull @.str.102, ptr noundef nonnull %3, i32 noundef %5, ptr noundef nonnull %4, i32 noundef 9) #8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = tail call i32 %i.e(ptr noundef nonnull %1, ptr noundef %2, i64 noundef 9) #8 ; 2 uses
  %.not34 = icmp eq i32 %i.f, 0
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = tail call i32 (ptr, i32, ptr, ...) %i.h(ptr noundef %0, i32 noundef %i.f, ptr noundef nonnull @.str.89, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i8, ptr %i.j, align 1, !tbaa !33    ; 2 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = and i32 %i.l, 15                         ; 2 uses
  %i.n = icmp samesign ugt i32 %i.m, 2
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.q = tail call i32 (ptr, i32, ptr, ...) %i.p(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.103, ptr noundef nonnull %3, i32 noundef %i.m) #8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.r = icmp ugt i8 %i.k, 31
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = lshr i32 %i.l, 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = tail call i32 (ptr, i32, ptr, ...) %i.u(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.104, ptr noundef nonnull %3, i32 noundef %i.s) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.i, %bb.d ], [ %i.q, %bb.f ], [ %i.v, %bb.h ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @extract_attr_opaque(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %5, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = tail call i32 (ptr, i32, ptr, ...) %i.e(ptr noundef %i.c, i32 noundef 17, ptr noundef nonnull @.str.85, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) #8, !inline_history !137
  br label %check_bad_attrsz.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %5 to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.k = load i64, ptr %i.j, align 8, !tbaa !110  ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !111  ; 2 uses
  %i.o = icmp slt i64 %i.n, %i.g                  ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %check_bad_attrsz.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.p = sub i64 %i.g, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !73
  %i.s = add nsw i64 %i.p, %i.r
  %.not.i.i = icmp sgt i64 %i.s, %i.k
  br i1 %.not.i.i, label %bb.g, label %check_bad_attrsz.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %5, 2147483647
  %or.cond.i.i = and i1 %i.t, %i.o
  br i1 %or.cond.i.i, label %bb.g, label %check_bad_attrsz.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = tail call i32 (ptr, i32, ptr, ...) %i.v(ptr noundef nonnull %i.i, i32 noundef 17, ptr noundef nonnull @.str.86, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) #8, !inline_history !137
  br label %check_bad_attrsz.exit

check_bad_attrsz.exit:                            ; preds = %bb.b, %bb.g
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.w, %bb.g ] ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %check_bad_attrsz.exit.thread, label %bb.j

check_bad_attrsz.exit.thread:                     ; preds = %bb.d, %bb.e, %bb.f, %check_bad_attrsz.exit
  %i.x = tail call i32 @exr_attr_opaquedata_destroy(ptr noundef %0, ptr noundef %2) #8 ; 0 uses
  %i.y = sext i32 %5 to i64                       ; 2 uses
  %i.z = tail call i32 @exr_attr_opaquedata_init(ptr noundef %0, ptr noundef %2, i64 noundef %i.y) #8 ; 2 uses
  %.not29 = icmp eq i32 %i.z, 0
  br i1 %.not29, label %bb.h, label %bb.j

bb.h:                                             ; preds = %check_bad_attrsz.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !150
  %i.ae = tail call i32 %i.ab(ptr noundef nonnull %1, ptr noundef %i.ad, i64 noundef %i.y) #8
  %.not30 = icmp eq i32 %i.ae, 0
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = tail call i32 @exr_attr_opaquedata_destroy(ptr noundef %0, ptr noundef nonnull %2) #8 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.ai = tail call i32 (ptr, i32, ptr, ...) %i.ah(ptr noundef %0, i32 noundef 10, ptr noundef nonnull @.str.105, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %check_bad_attrsz.exit.thread, %check_bad_attrsz.exit, %bb.i
  %.0 = phi i32 [ %i.z, %check_bad_attrsz.exit.thread ], [ %.0.i, %check_bad_attrsz.exit ], [ %i.ai, %bb.i ], [ 0, %bb.h ]
  ret i32 %.0
}

declare i32 @exr_attr_list_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_populate_chunk_count(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.f = tail call i32 %i.e(ptr noundef nonnull %2, i32 noundef %4) #8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = tail call i32 (ptr, i32, ptr, ...) %i.h(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.44) #8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(4) @.str.45) #9
  %.not33 = icmp eq i32 %i.j, 0
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.m = tail call i32 %i.l(ptr noundef nonnull %2, i32 noundef %4) #8 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = tail call i32 (ptr, i32, ptr, ...) %i.o(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.46, ptr noundef nonnull %3) #8
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %.not34 = icmp eq i32 %4, 4
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.s = tail call i32 %i.r(ptr noundef nonnull %2, i32 noundef %4) #8 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = tail call i32 (ptr, i32, ptr, ...) %i.u(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.47, i32 noundef %4) #8
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.y = call i32 %i.x(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i64 noundef 4) #8 ; 2 uses
  %.not35 = icmp eq i32 %i.y, 0
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !69
  %i.ab = call i32 %i.aa(ptr noundef %0, i32 noundef %i.y, ptr noundef nonnull @.str.48) #8
  br label %bb.l
end_hunk_1
