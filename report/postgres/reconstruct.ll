inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.StringInfoData = type { ptr, i32, i32, i32 }
%struct.pg_checksum_context = type { i32, %union.pg_checksum_raw_context }
%union.pg_checksum_raw_context = type { ptr }

@.str = private unnamed_addr constant [8 x i8] c"%s/%s%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s/%sINCREMENTAL.%s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s/backup_manifest\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"manifest file \22%s\22 contains no entry for file \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"full backup contains unexpected incremental file \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@__pg_log_level = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"would have read %u blocks from \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"read %u blocks from \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"file \22%s\22 is too short: expected %llu, found %llu\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"file \22%s\22 has bad incremental magic number (0x%x, expected 0x%x)\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"file \22%s\22 has block count %u in excess of segment size %u\00", align 1
@.str.12 = private unnamed_addr constant [70 x i8] c"file \22%s\22 has truncation block length %u in excess of segment size %u\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %m\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"could not read file \22%s\22: read %d of %u\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"would reconstruct \22%s\22 (%u blocks, checksum %s)\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"reconstructing \22%s\22 (%u blocks, checksum %s)\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c" %u:zero\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c" %u-%u:zero\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c" %u:%s@%lu\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c" %u-%u:%s@%lu\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"reconstruction plan:%s\00", align 1
@pg_file_create_mode = external local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [53 x i8] c"error while copying file range from \22%s\22 to \22%s\22: %m\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"unexpected end of file while copying file range from \22%s\22 to \22%s\22\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"could not update checksum of file \22%s\22\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"would have zero-filled %u blocks\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"zero-filled %u blocks\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"could not write file \22%s\22: %m\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"could not write file \22%s\22: wrote %d of %d\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"could not read from file \22%s\22: %m\00", align 1
@.str.31 = private unnamed_addr constant [58 x i8] c"could not read from file \22%s\22, offset %llu: read %d of %d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @reconstruct_from_incremental_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, i32 noundef %8, ptr nofree noundef captures(none) %9, ptr nofree noundef writeonly captures(none) %10, i32 noundef %11, i1 noundef zeroext %12, i1 noundef zeroext %13) local_unnamed_addr #0 {
bb.a:
  %14 = alloca %struct.stat, align 8              ; 5 uses
  %15 = alloca %struct.StringInfoData, align 8    ; 17 uses
  %i.a = alloca [8192 x i8], align 16             ; 13 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %16 = alloca %struct.pg_checksum_context, align 8 ; 12 uses
  %i.c = alloca [1024 x i8], align 16             ; 12 uses
  %17 = alloca %struct.stat, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  %i.d = add i32 %4, 1                            ; 5 uses
  %i.e = sext i32 %i.d to i64
  %i.f = tail call ptr @pg_malloc0_mul(i64 noundef 8, i64 noundef %i.e) #10 ; 7 uses
  %i.g = tail call fastcc ptr @make_incremental_rfile(ptr noundef %0) ; 7 uses
  %i.h = sext i32 %4 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.h
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  %.not13.i = icmp eq i32 %i.m, 0
  br i1 %.not13.i, label %find_reconstructed_block_length.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = load ptr, ptr %i.n, align 8              ; 5 uses
  %wide.trip.count.i = zext i32 %i.m to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.p = icmp ult i32 %i.m, 4
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.b ] ; 5 uses
  %.0911.i = phi i32 [ %i.k, %.lr.ph.i.new ], [ %spec.select.i.3, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %.not.i = icmp ult i32 %i.r, %.0911.i
  %i.s = add i32 %i.r, 1
  %spec.select.i = select i1 %.not.i, i32 %.0911.i, i32 %i.s ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %.not.i.1 = icmp ult i32 %i.v, %spec.select.i
  %i.w = add i32 %i.v, 1
  %spec.select.i.1 = select i1 %.not.i.1, i32 %spec.select.i, i32 %i.w ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %.not.i.2 = icmp ult i32 %i.z, %spec.select.i.1
  %i.aa = add i32 %i.z, 1
  %spec.select.i.2 = select i1 %.not.i.2, i32 %spec.select.i.1, i32 %i.aa ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %.not.i.3 = icmp ult i32 %i.ad, %spec.select.i.2
  %i.ae = add i32 %i.ad, 1
  %spec.select.i.3 = select i1 %.not.i.3, i32 %spec.select.i.2, i32 %i.ae ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %find_reconstructed_block_length.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !4

find_reconstructed_block_length.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %find_reconstructed_block_length.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %find_reconstructed_block_length.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %find_reconstructed_block_length.exit.loopexit.unr-lcssa ]
  %.0911.i.epil.init = phi i32 [ %i.k, %.lr.ph.i ], [ %spec.select.i.3, %find_reconstructed_block_length.exit.loopexit.unr-lcssa ]
  %lcmp.mod425 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod425)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 2 uses
  %.0911.i.epil = phi i32 [ %.0911.i.epil.init, %.epil.preheader ], [ %spec.select.i.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.epil
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %.not.i.epil = icmp ult i32 %i.ag, %.0911.i.epil
  %i.ah = add i32 %i.ag, 1
  %spec.select.i.epil = select i1 %.not.i.epil, i32 %.0911.i.epil, i32 %i.ah ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %find_reconstructed_block_length.exit, label %bb.c, !llvm.loop !6

find_reconstructed_block_length.exit:             ; preds = %find_reconstructed_block_length.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  %.09.lcssa.i = phi i32 [ %i.k, %bb.a ], [ %spec.select.i.3, %find_reconstructed_block_length.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %bb.c ] ; 6 uses
  %i.ai = zext i32 %.09.lcssa.i to i64            ; 8 uses
  %i.aj = tail call ptr @pg_malloc0_mul(i64 noundef 8, i64 noundef %i.ai) #10 ; 11 uses
  %i.ak = tail call ptr @pg_malloc0_mul(i64 noundef 8, i64 noundef %i.ai) #10 ; 9 uses
  %i.al = load i32, ptr %i.l, align 8
  %.not256 = icmp eq i32 %i.al, 0                 ; 2 uses
  br i1 %.not256, label %.preheader218, label %.lr.ph

.lr.ph:                                           ; preds = %find_reconstructed_block_length.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.d

.preheader218:                                    ; preds = %bb.d, %find_reconstructed_block_length.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.ao = icmp eq i32 %4, 0
  br i1 %i.ao, label %.thread198, label %.lr.ph249.preheader

.lr.ph249.preheader:                              ; preds = %.preheader218
  %i.ap = zext i32 %4 to i64
  br label %.lr.ph249

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.aq = load ptr, ptr %i.am, align 8
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.at
  store ptr %i.g, ptr %i.au, align 8
  %i.av = load i64, ptr %i.an, align 8
  %i.aw = shl nuw nsw i64 %indvars.iv, 13
  %i.ax = and i64 %i.aw, 4294959104
  %i.ay = add i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.at
  store i64 %i.ay, ptr %i.az, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load i32, ptr %i.l, align 8
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %bb.d, label %.preheader218, !llvm.loop !8

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %._crit_edge
  %indvars.iv291 = phi i64 [ %i.ap, %.lr.ph249.preheader ], [ %i.bd, %._crit_edge ]
  %.1139247 = phi i1 [ %.not256, %.lr.ph249.preheader ], [ %.2140.lcssa, %._crit_edge ] ; 3 uses
  %i.bd = add nsw i64 %indvars.iv291, -1          ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.c, i64 noundef 1024, ptr noundef nonnull @.str, ptr noundef %i.bf, ptr noundef %2, ptr noundef %3) #10 ; 0 uses
  %i.bh = call ptr @pg_malloc0(i64 noundef 56) #10 ; 5 uses
  %i.bi = call ptr @pstrdup(ptr noundef nonnull %i.c) #10
  store ptr %i.bi, ptr %i.bh, align 8
  %i.bj = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 0) #10 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %i.bj, ptr %i.bk, align 8
  %i.bl = icmp slt i32 %i.bj, 0
  br i1 %i.bl, label %bb.e, label %make_rfile.exit

bb.e:                                             ; preds = %.lr.ph249
  %i.bm = tail call ptr @__errno_location() #11
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.bn, 2
  br i1 %i.bo, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.c) #10
  call void @exit(i32 noundef 1) #12
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bp = load ptr, ptr %i.bh, align 8
  call void @pg_free(ptr noundef %i.bp) #10
  call void @pg_free(ptr noundef nonnull %i.bh) #10
  %i.bq = load ptr, ptr %i.be, align 8
  %i.br = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.c, i64 noundef 1024, ptr noundef nonnull @.str.1, ptr noundef %i.bq, ptr noundef %2, ptr noundef %3) #10 ; 0 uses
  %i.bs = call fastcc ptr @make_incremental_rfile(ptr noundef nonnull %i.c)
  br label %make_rfile.exit

make_rfile.exit:                                  ; preds = %.lr.ph249, %bb.g
  %.0147 = phi ptr [ %i.bs, %bb.g ], [ %i.bh, %.lr.ph249 ] ; 10 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bd
  store ptr %.0147, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0147, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.h, label %.preheader

.preheader:                                       ; preds = %make_rfile.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %.0147, i64 24 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8            ; 2 uses
  %.not257 = icmp eq i32 %i.by, 0
  br i1 %.not257, label %._crit_edge, label %.lr.ph245

.lr.ph245:                                        ; preds = %.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %.0147, i64 32
  br label %bb.m

bb.h:                                             ; preds = %make_rfile.exit
  %i.ca = trunc nuw i64 %i.bd to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %.0147, i64 8
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = call i32 @fstat(i32 noundef %i.cc, ptr noundef nonnull %17) #10
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cf = load ptr, ptr %.0147, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %i.cf) #10
  call void @exit(i32 noundef 1) #12
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.ch = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.ci = load i32, ptr %i.j, align 8             ; 2 uses
  %.not258 = icmp eq i32 %i.ci, 0
  br i1 %.not258, label %._crit_edge253, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %bb.j
  %i.cj = sdiv i64 %i.ch, 8192
  %i.ck = and i64 %i.cj, 4294967295
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %bb.l
  %i.cl = phi i32 [ %i.ci, %.lr.ph252.preheader ], [ %i.ct, %bb.l ]
  %indvars.iv293 = phi i64 [ 0, %.lr.ph252.preheader ], [ %indvars.iv.next294, %bb.l ] ; 5 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv293 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = icmp eq ptr %i.cn, null
  %i.cp = icmp samesign ult i64 %indvars.iv293, %i.ck
  %or.cond165 = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond165, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph252
  store ptr %.0147, ptr %i.cm, align 8
  %i.cq = shl nuw nsw i64 %indvars.iv293, 13
  %i.cr = and i64 %i.cq, 4294959104
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv293
  store i64 %i.cr, ptr %i.cs, align 8
  %.pre297 = load i32, ptr %i.j, align 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph252, %bb.k
  %i.ct = phi i32 [ %i.cl, %.lr.ph252 ], [ %.pre297, %bb.k ] ; 3 uses
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp samesign ult i64 %indvars.iv.next294, %i.cu
  br i1 %i.cv, label %.lr.ph252, label %._crit_edge253.loopexit, !llvm.loop !9

._crit_edge253.loopexit:                          ; preds = %bb.l
  %i.cw = zext i32 %i.ct to i64
  %i.cx = shl nuw nsw i64 %i.cw, 13
  br label %._crit_edge253

._crit_edge253:                                   ; preds = %._crit_edge253.loopexit, %bb.j
  %.lcssa237 = phi i64 [ 0, %bb.j ], [ %i.cx, %._crit_edge253.loopexit ]
  br i1 %.1139247, label %bb.q, label %.thread

.thread:                                          ; preds = %._crit_edge253
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.cy = call i32 @pg_checksum_init(ptr noundef nonnull %16, i32 noundef %8) #10 ; 0 uses
  br label %bb.y

bb.m:                                             ; preds = %.lr.ph245, %bb.p
  %i.cz = phi i32 [ %i.by, %.lr.ph245 ], [ %i.do, %bb.p ] ; 2 uses
  %indvars.iv289 = phi i64 [ 0, %.lr.ph245 ], [ %indvars.iv.next290, %bb.p ] ; 3 uses
  %.2140243 = phi i1 [ %.1139247, %.lr.ph245 ], [ %.3, %bb.p ] ; 2 uses
  %i.da = load ptr, ptr %i.bz, align 8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv289
end_hunk_0
