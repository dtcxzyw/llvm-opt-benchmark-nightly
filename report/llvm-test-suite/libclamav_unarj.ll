inline.NumInlined: 28
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.arj_main_hdr_tag = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i16 }>
%struct.arj_file_hdr_tag = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i16 }>
%struct.arj_decode_tag = type { i32, ptr, i16, i16, i8, i32, i32, i16, i16, [1019 x i16], [1019 x i16], [510 x i8], [4096 x i16], [19 x i8], [256 x i16] }

@.str = private unnamed_addr constant [19 x i8] c"in cli_unarj_open\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Not in ARJ format\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to read main header\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"in cli_unarj_prepare_file\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"in cli_unarj_extract_file\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"PASSWORDed file (skipping)\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Target offset: %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%s/file.uar\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Filename: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Not an ARJ archive\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Header Size: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"arj_read_header: invalid header_size: %u\0A \00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"ARJ Main File Header\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"First Header Size: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Version: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Min version: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Host OS: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Flags: 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Security version: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"File type: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Format error. First Header Size < 30\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Comment: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Extended header size: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"arj_read_file_header: invalid header_size: %u\0A \00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"ARJ File Header\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Method: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"Compressed size: %u\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"Original size: %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"in arj_unstore\0A\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c"UNARJ: bounds exceeded - probably a corrupted file.\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"ERROR: bounds exceeded\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -124, 1) i32 @cli_unarj_open(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 11 uses
  %i.b = alloca i16, align 2                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.arj_main_hdr_tag, align 1   ; 12 uses
  %i.d = alloca [2 x i8], align 1                 ; 5 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.e = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.d, i32 noundef 2) #11
  %.not.i = icmp eq i32 %i.e, 2
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr %i.d, align 1
  %i.g = icmp ne i16 %i.f, -5536
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #11
  br label %bb.z

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.j = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 2) #11
  %.not.i4 = icmp eq i32 %i.j, 2
  br i1 %.not.i4, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.k = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #11 ; 0 uses
  %i.l = load i16, ptr %i.a, align 2, !tbaa !8
  %i.m = zext i16 %i.l to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10, i32 noundef %i.m) #11
  %i.n = load i16, ptr %i.a, align 2, !tbaa !8    ; 3 uses
  %i.o = zext i16 %i.n to i32
  %i.p = icmp eq i16 %i.n, 0
  br i1 %i.p, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp ugt i16 %i.n, 2600
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i32 noundef %i.o) #11
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.r = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %2, i32 noundef 30) #11
  %.not31.i = icmp eq i32 %i.r, 30
  br i1 %.not31.i, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #11
  %i.s = load i8, ptr %2, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13, i32 noundef %i.t) #11
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !12
  %i.w = zext i8 %i.v to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14, i32 noundef %i.w) #11
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = zext i8 %i.y to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15, i32 noundef %i.z) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = zext i8 %i.ab to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16, i32 noundef %i.ac) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15
  %i.af = zext i8 %i.ae to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.17, i32 noundef %i.af) #11
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ai = zext i8 %i.ah to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18, i32 noundef %i.ai) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  %i.al = zext i8 %i.ak to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, i32 noundef %i.al) #11
  %i.am = load i8, ptr %2, align 1, !tbaa !10     ; 3 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = icmp ult i8 %i.am, 30
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20) #11
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %.not32.i = icmp eq i8 %i.am, 30
  br i1 %.not32.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = add nuw nsw i64 %i.an, 4294967266
  %3 = and i64 %i.ap, 4294967295
  %i.aq = call i64 @lseek(i32 noundef %0, i64 noundef %3, i32 noundef 1) #11
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = load i16, ptr %i.a, align 2, !tbaa !8
  %i.at = zext i16 %i.as to i64
  %i.au = call ptr @cli_malloc(i64 noundef %i.at) #11 ; 9 uses
  %.not33.i = icmp eq ptr %i.au, null
  br i1 %.not33.i, label %.loopexit, label %.preheader41.i

.preheader41.i:                                   ; preds = %bb.n
  %i.av = load i16, ptr %i.a, align 2, !tbaa !8
  %.not48.i = icmp eq i16 %i.av, 0
  br i1 %.not48.i, label %._crit_edge.thread.i, label %.lr.ph.i

bb.o:                                             ; preds = %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aw = zext i16 %.pre.pre.i to i64
  %i.ax = icmp samesign ult i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !18

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.preheader41.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.az = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.ay, i32 noundef 1) #11
  %.not34.i = icmp eq i32 %i.az, 1
  br i1 %.not34.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  call void @free(ptr noundef nonnull %i.au) #11
  br label %.loopexit

bb.q:                                             ; preds = %.lr.ph.i
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !20
  %i.bb = icmp eq i8 %i.ba, 0
  %.pre.pre.i = load i16, ptr %i.a, align 2, !tbaa !8 ; 3 uses
  br i1 %i.bb, label %._crit_edge.i, label %bb.o

._crit_edge.i:                                    ; preds = %bb.q, %bb.o
  %.in = phi i64 [ %indvars.iv, %bb.q ], [ %indvars.iv.next, %bb.o ]
  %i.bc = trunc nuw i64 %.in to i16
  %i.bd = icmp eq i16 %.pre.pre.i, %i.bc
  br i1 %i.bd, label %._crit_edge.thread.i, label %bb.r

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.preheader41.i
  call void @free(ptr noundef nonnull %i.au) #11
  br label %.loopexit

bb.r:                                             ; preds = %._crit_edge.i
  %i.be = zext i16 %.pre.pre.i to i64
  %i.bf = call ptr @cli_malloc(i64 noundef %i.be) #11 ; 6 uses
  %.not35.i = icmp eq ptr %i.bf, null
  br i1 %.not35.i, label %bb.s, label %.preheader40.i

.preheader40.i:                                   ; preds = %bb.r
  store i16 0, ptr %i.b, align 2, !tbaa !8
  %i.bg = load i16, ptr %i.a, align 2, !tbaa !8
  %.not49.i = icmp eq i16 %i.bg, 0
  br i1 %.not49.i, label %._crit_edge46.thread.i, label %.lr.ph45.i

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.au) #11
  br label %.loopexit

bb.t:                                             ; preds = %bb.v
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1 ; 3 uses
  %indvars13 = trunc nuw i64 %indvars.iv.next12 to i16 ; 2 uses
  store i16 %indvars13, ptr %i.b, align 2, !tbaa !8
  %i.bh = zext i16 %.pre50.pre.i to i64
  %i.bi = icmp samesign ult i64 %indvars.iv.next12, %i.bh
  br i1 %i.bi, label %.lr.ph45.i, label %._crit_edge46.i, !llvm.loop !21

.lr.ph45.i:                                       ; preds = %.preheader40.i, %bb.t
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %bb.t ], [ 0, %.preheader40.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv11 ; 2 uses
  %i.bk = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bj, i32 noundef 1) #11
  %.not37.i = icmp eq i32 %i.bk, 1
  br i1 %.not37.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph45.i
  call void @free(ptr noundef %i.au) #11
  call void @free(ptr noundef nonnull %i.bf) #11
  br label %.loopexit

bb.v:                                             ; preds = %.lr.ph45.i
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !20
  %i.bm = icmp eq i8 %i.bl, 0
  %.pre50.pre.i = load i16, ptr %i.a, align 2, !tbaa !8 ; 2 uses
  br i1 %i.bm, label %._crit_edge46.i.split.loop.exit, label %bb.t

._crit_edge46.i.split.loop.exit:                  ; preds = %bb.v
  %i.bn = trunc nuw i64 %indvars.iv11 to i16
  br label %._crit_edge46.i

._crit_edge46.i:                                  ; preds = %bb.t, %._crit_edge46.i.split.loop.exit
  %i.bo = phi i16 [ %i.bn, %._crit_edge46.i.split.loop.exit ], [ %indvars13, %bb.t ]
  %i.bp = icmp eq i16 %i.bo, %.pre50.pre.i
  br i1 %i.bp, label %._crit_edge46.thread.i, label %bb.w

._crit_edge46.thread.i:                           ; preds = %._crit_edge46.i, %.preheader40.i
  call void @free(ptr noundef %i.au) #11
  call void @free(ptr noundef nonnull %i.bf) #11
  br label %.loopexit

bb.w:                                             ; preds = %._crit_edge46.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.au) #11
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.bf) #11
  call void @free(ptr noundef %i.au) #11
  call void @free(ptr noundef nonnull %i.bf) #11
  %i.bq = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.c, i32 noundef 4) #11
  %.not38.i = icmp eq i32 %i.bq, 4
  br i1 %.not38.i, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %bb.w, %bb.y
  %i.br = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i32 noundef 2) #11
  %.not39.i = icmp eq i32 %i.br, 2
  br i1 %.not39.i, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.preheader.i
  %i.bs = load i16, ptr %i.b, align 2, !tbaa !8
  %i.bt = zext i16 %i.bs to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, i32 noundef %i.bt) #11
  %i.bu = load i16, ptr %i.b, align 2, !tbaa !8   ; 2 uses
  %i.bv = icmp eq i16 %i.bu, 0
  br i1 %i.bv, label %arj_read_main_header.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = zext i16 %i.bu to i64
  %i.bx = add nuw nsw i64 %i.bw, 4
  %i.by = call i64 @lseek(i32 noundef %0, i64 noundef %i.bx, i32 noundef 1) #11
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %.loopexit, label %.preheader.i

arj_read_main_header.exit:                        ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.z

.loopexit:                                        ; preds = %.preheader.i, %bb.y, %bb.m, %bb.e, %bb.h, %bb.f, %bb.k, %bb.i, %bb.p, %._crit_edge.thread.i, %bb.u, %._crit_edge46.thread.i, %bb.n, %bb.w, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #11
  br label %bb.z

bb.z:                                             ; preds = %arj_read_main_header.exit, %.loopexit, %bb.d
  %.0 = phi i32 [ -124, %bb.d ], [ -124, %.loopexit ], [ 0, %arj_read_main_header.exit ]
  ret i32 %.0
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -124, 3) i32 @cli_unarj_prepare_file(i32 noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 10 uses
  %i.b = alloca i16, align 2                      ; 7 uses
  %3 = alloca %struct.arj_file_hdr_tag, align 1   ; 14 uses
  %i.c = alloca [2 x i8], align 1                 ; 5 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #11
  %i.d = icmp eq ptr %2, null
  %i.e = icmp eq ptr %1, null
  %or.cond.not11 = or i1 %i.e, %i.d
  %i.f = icmp slt i32 %0, 0
  %or.cond3 = or i1 %i.f, %or.cond.not11
  br i1 %or.cond3, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.g = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.c, i32 noundef 2) #11
  %.not.i = icmp eq i32 %i.g, 2
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.c, align 1
  %i.i = icmp ne i16 %i.h, -5536
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #11
  br label %bb.ab

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.l = call i32 @cli_readn(i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull %i.a, i32 noundef 2) #11
  %.not.i12 = icmp eq i32 %i.l, 2
  br i1 %.not.i12, label %bb.g, label %arj_read_file_header.exit

bb.g:                                             ; preds = %bb.f
  %i.m = load i16, ptr %i.a, align 2, !tbaa !8
  %i.n = zext i16 %i.m to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10, i32 noundef %i.n) #11
  %i.o = load i16, ptr %i.a, align 2, !tbaa !8    ; 3 uses
  %i.p = zext i16 %i.o to i32
  %i.q = icmp eq i16 %i.o, 0
  br i1 %i.q, label %arj_read_file_header.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp ugt i16 %i.o, 2600
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23, i32 noundef %i.p) #11
  br label %arj_read_file_header.exit

bb.j:                                             ; preds = %bb.h
  %i.s = call i32 @cli_readn(i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull %3, i32 noundef 30) #11
  %.not38.i = icmp eq i32 %i.s, 30
  br i1 %.not38.i, label %bb.k, label %arj_read_file_header.exit

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  %i.v = load i8, ptr %3, align 1, !tbaa !22
  %i.w = zext i8 %i.v to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13, i32 noundef %i.w) #11
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !24
  %i.z = zext i8 %i.y to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14, i32 noundef %i.z) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !25
  %i.ac = zext i8 %i.ab to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15, i32 noundef %i.ac) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !26
  %i.af = zext i8 %i.ae to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16, i32 noundef %i.af) #11
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !27
  %i.ai = zext i8 %i.ah to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.17, i32 noundef %i.ai) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.al = zext i8 %i.ak to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25, i32 noundef %i.al) #11
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.an = load i8, ptr %i.am, align 1, !tbaa !29
  %i.ao = zext i8 %i.an to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, i32 noundef %i.ao) #11
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !30
  %i.ar = zext i8 %i.aq to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, i32 noundef %i.ar) #11
  %i.as = load i32, ptr %i.t, align 1, !tbaa !31
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, i32 noundef %i.as) #11
  %i.at = load i32, ptr %i.u, align 1, !tbaa !32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27, i32 noundef %i.at) #11
  %i.au = load i8, ptr %3, align 1, !tbaa !22     ; 3 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = icmp ult i8 %i.au, 30
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20) #11
  br label %arj_read_file_header.exit

bb.m:                                             ; preds = %bb.k
  %.not39.i = icmp eq i8 %i.au, 30
  br i1 %.not39.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = add nuw nsw i64 %i.av, 4294967266
  %4 = and i64 %i.ax, 4294967295
  %i.ay = call i64 @lseek(i32 noundef range(i32 0, -2147483648) %0, i64 noundef %4, i32 noundef 1) #11
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %arj_read_file_header.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ba = load i16, ptr %i.a, align 2, !tbaa !8
  %i.bb = zext i16 %i.ba to i64
  %i.bc = call ptr @cli_malloc(i64 noundef %i.bb) #11 ; 10 uses
  %.not40.i = icmp eq ptr %i.bc, null
  br i1 %.not40.i, label %arj_read_file_header.exit, label %.preheader49.i

.preheader49.i:                                   ; preds = %bb.o
  %i.bd = load i16, ptr %i.a, align 2, !tbaa !8
  %.not56.i = icmp eq i16 %i.bd, 0
  br i1 %.not56.i, label %._crit_edge.thread.i, label %.lr.ph.i

bb.p:                                             ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.be = zext i16 %.pre.pre.i to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !33

.lr.ph.i:                                         ; preds = %.preheader49.i, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.preheader49.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.bh = call i32 @cli_readn(i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull %i.bg, i32 noundef 1) #11
  %.not41.i = icmp eq i32 %i.bh, 1
  br i1 %.not41.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  call void @free(ptr noundef nonnull %i.bc) #11
  br label %arj_read_file_header.exit

bb.r:                                             ; preds = %.lr.ph.i
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !20
  %i.bj = icmp eq i8 %i.bi, 0
  %.pre.pre.i = load i16, ptr %i.a, align 2, !tbaa !8 ; 3 uses
  br i1 %i.bj, label %._crit_edge.i, label %bb.p

._crit_edge.i:                                    ; preds = %bb.r, %bb.p
  %.in = phi i64 [ %indvars.iv, %bb.r ], [ %indvars.iv.next, %bb.p ]
  %i.bk = trunc nuw i64 %.in to i16
  %i.bl = icmp eq i16 %.pre.pre.i, %i.bk
  br i1 %i.bl, label %._crit_edge.thread.i, label %bb.s

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.preheader49.i
  call void @free(ptr noundef nonnull %i.bc) #11
  br label %arj_read_file_header.exit

bb.s:                                             ; preds = %._crit_edge.i
  %i.bm = zext i16 %.pre.pre.i to i64
  %i.bn = call ptr @cli_malloc(i64 noundef %i.bm) #11 ; 6 uses
  %.not42.i = icmp eq ptr %i.bn, null
  br i1 %.not42.i, label %bb.t, label %.preheader48.i

.preheader48.i:                                   ; preds = %bb.s
  store i16 0, ptr %i.b, align 2, !tbaa !8
  %i.bo = load i16, ptr %i.a, align 2, !tbaa !8
  %.not57.i = icmp eq i16 %i.bo, 0
  br i1 %.not57.i, label %._crit_edge54.thread.i, label %.lr.ph53.i

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.bc) #11
  br label %arj_read_file_header.exit

bb.u:                                             ; preds = %bb.w
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 3 uses
  %indvars19 = trunc nuw i64 %indvars.iv.next18 to i16 ; 2 uses
  store i16 %indvars19, ptr %i.b, align 2, !tbaa !8
  %i.bp = zext i16 %.pre58.pre.i to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next18, %i.bp
  br i1 %i.bq, label %.lr.ph53.i, label %._crit_edge54.i, !llvm.loop !34

.lr.ph53.i:                                       ; preds = %.preheader48.i, %bb.u
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %bb.u ], [ 0, %.preheader48.i ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv17 ; 2 uses
  %i.bs = call i32 @cli_readn(i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull %i.br, i32 noundef 1) #11
  %.not44.i = icmp eq i32 %i.bs, 1
  br i1 %.not44.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph53.i
  call void @free(ptr noundef %i.bc) #11
  call void @free(ptr noundef nonnull %i.bn) #11
  br label %arj_read_file_header.exit

bb.w:                                             ; preds = %.lr.ph53.i
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !20
  %i.bu = icmp eq i8 %i.bt, 0
  %.pre58.pre.i = load i16, ptr %i.a, align 2, !tbaa !8 ; 2 uses
  br i1 %i.bu, label %._crit_edge54.i.split.loop.exit, label %bb.u

._crit_edge54.i.split.loop.exit:                  ; preds = %bb.w
  %i.bv = trunc nuw i64 %indvars.iv17 to i16
  br label %._crit_edge54.i

._crit_edge54.i:                                  ; preds = %bb.u, %._crit_edge54.i.split.loop.exit
  %i.bw = phi i16 [ %i.bv, %._crit_edge54.i.split.loop.exit ], [ %indvars19, %bb.u ]
  %i.bx = icmp eq i16 %i.bw, %.pre58.pre.i
  br i1 %i.bx, label %._crit_edge54.thread.i, label %bb.x

._crit_edge54.thread.i:                           ; preds = %._crit_edge54.i, %.preheader48.i
  call void @free(ptr noundef %i.bc) #11
  call void @free(ptr noundef nonnull %i.bn) #11
  br label %arj_read_file_header.exit

bb.x:                                             ; preds = %._crit_edge54.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.bc) #11
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.bn) #11
  %i.by = call ptr @cli_strdup(ptr noundef nonnull %i.bc) #11
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !35
  call void @free(ptr noundef %i.bc) #11
  call void @free(ptr noundef nonnull %i.bn) #11
  %i.ca = call i64 @lseek(i32 noundef range(i32 0, -2147483648) %0, i64 noundef 4, i32 noundef 1) #11
  %i.cb = icmp eq i64 %i.ca, -1
  br i1 %i.cb, label %arj_read_file_header.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.x, %bb.z
  %i.cc = call i32 @cli_readn(i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull %i.b, i32 noundef 2) #11
  %.not45.i = icmp eq i32 %i.cc, 2
  br i1 %.not45.i, label %bb.y, label %arj_read_file_header.exit

bb.y:                                             ; preds = %.preheader.i
  %i.cd = load i16, ptr %i.b, align 2, !tbaa !8
  %i.ce = zext i16 %i.cd to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, i32 noundef %i.ce) #11
  %i.cf = load i16, ptr %i.b, align 2, !tbaa !8   ; 2 uses
  %i.cg = icmp eq i16 %i.cf, 0
  br i1 %i.cg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = zext i16 %i.cf to i64
  %i.ci = add nuw nsw i64 %i.ch, 4
  %i.cj = call i64 @lseek(i32 noundef range(i32 0, -2147483648) %0, i64 noundef %i.ci, i32 noundef 1) #11
  %i.ck = icmp eq i64 %i.cj, -1
  br i1 %i.ck, label %arj_read_file_header.exit, label %.preheader.i

bb.aa:                                            ; preds = %bb.y
  %i.cl = load <2 x i32>, ptr %i.t, align 1, !tbaa !4
  store <2 x i32> %i.cl, ptr %2, align 8, !tbaa !4
  %i.cm = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.cm, ptr %i.cn, align 8, !tbaa !39
  %i.co = load i8, ptr %i.ag, align 1, !tbaa !27
  %i.cp = and i8 %i.co, 1
  %i.cq = zext nneg i8 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !40
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 -1, ptr %i.cs, align 4, !tbaa !41
  %i.ct = load ptr, ptr %i.bz, align 8, !tbaa !35
  %.not47.i = icmp eq ptr %i.ct, null
  %..i = select i1 %.not47.i, i32 -114, i32 0
  br label %arj_read_file_header.exit

arj_read_file_header.exit:                        ; preds = %.preheader.i, %bb.z, %bb.f, %bb.g, %bb.i, %bb.j, %bb.l, %bb.n, %bb.o, %bb.q, %._crit_edge.thread.i, %bb.t, %bb.v, %._crit_edge54.thread.i, %bb.x, %bb.aa
  %.0.i13 = phi i32 [ -124, %bb.n ], [ -124, %bb.f ], [ -124, %bb.i ], [ 2, %bb.g ], [ -124, %bb.l ], [ -124, %bb.j ], [ -124, %bb.q ], [ -124, %._crit_edge.thread.i ], [ -124, %bb.v ], [ -124, %._crit_edge54.thread.i ], [ -114, %bb.o ], [ -124, %bb.x ], [ -124, %bb.t ], [ %..i, %bb.aa ], [ -124, %bb.z ], [ -124, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %arj_read_file_header.exit, %bb.e
  %.0 = phi i32 [ -124, %bb.e ], [ %.0.i13, %arj_read_file_header.exit ], [ -111, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -127, 1) i32 @cli_unarj_extract_file(i32 noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.arj_decode_tag, align 8     ; 28 uses
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #11
  %i.b = icmp eq ptr %2, null
  %i.c = icmp eq ptr %1, null
  %or.cond.not31 = or i1 %i.c, %i.b
  %i.d = icmp slt i32 %0, 0
  %or.cond3 = or i1 %i.d, %or.cond.not31
  br i1 %or.cond3, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #11
  %i.g = tail call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #11
  %i.h = load i32, ptr %2, align 8, !tbaa !42
  %i.i = zext i32 %i.h to i64
  %i.j = add nsw i64 %i.g, %i.i                   ; 3 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, i64 noundef %i.j) #11
  %i.k = tail call i64 @lseek(i32 noundef %0, i64 noundef %i.j, i32 noundef 0) #11
  %.not33 = icmp eq i64 %i.k, %i.j
  %. = select i1 %.not33, i32 0, i32 -127
  br label %bb.ak

bb.d:                                             ; preds = %bb.b
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.7, ptr noundef nonnull %1) #11 ; 0 uses
end_hunk_0
