Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/backup_label?download=true
inline.NumInlined: 12
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pg_checksum_context = type { i32, %union.pg_checksum_raw_context }
%union.pg_checksum_raw_context = type { ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str.1 = private unnamed_addr constant [23 x i8] c"%s: could not parse %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"START WAL LOCATION\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: improper terminator for %s\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"START TIMELINE: \00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: could not parse TLI for %s\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"START TIMELINE\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%s: invalid TLI\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"INCREMENTAL FROM LSN\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"INCREMENTAL FROM TLI: \00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"INCREMENTAL FROM TLI\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"%s: could not find %s\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"%s: %s requires %s\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"%s/backup_label\00", align 1
@pg_file_create_mode = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"could not write file \22%s\22: %m\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"could not write file \22%s\22: wrote %d of %d\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"could not update checksum of file \22%s\22\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"backup_label\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"%X/%08X%n\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%u%n\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @parse_backup_label(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr noundef initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  store i32 0, ptr %2, align 4
  store i64 0, ptr %3, align 8
  store i32 0, ptr %4, align 4
  store i64 0, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.i, align 8              ; 2 uses
  %i.l = load i32, ptr %i.j, align 8              ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.thread

.lr.ph.i:                                         ; preds = %bb.a, %line_starts_with.exit101
  %i.n = phi i32 [ %i.od, %line_starts_with.exit101 ], [ %i.l, %bb.a ] ; 2 uses
  %i.o = phi i32 [ %.08.i, %line_starts_with.exit101 ], [ %i.k, %bb.a ] ; 2 uses
  %.0193 = phi i32 [ %.1, %line_starts_with.exit101 ], [ 0, %bb.a ] ; 27 uses
  %i.p = load ptr, ptr %1, align 8                ; 7 uses
  %i.q = sext i32 %i.o to i64                     ; 90 uses
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q ; 83 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.q, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %indvars.iv.i
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 10
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = trunc nsw i64 %indvars.iv.i to i32
  %i.w = add nsw i32 %i.v, 1
  br label %get_eol_offset.exit

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.n, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %get_eol_offset.exit, label %bb.b, !llvm.loop !0

get_eol_offset.exit:                              ; preds = %bb.d, %bb.c
  %.08.i = phi i32 [ %i.w, %bb.c ], [ %i.n, %bb.d ] ; 5 uses
  %i.x = sext i32 %.08.i to i64                   ; 85 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x     ; 54 uses
  %i.z = icmp slt i32 %i.o, %.08.i                ; 3 uses
  br i1 %i.z, label %.lr.ph.preheader.i, label %.critedge.i61

.lr.ph.preheader.i:                               ; preds = %get_eol_offset.exit
  %gepdiff = sub nsw i64 %i.x, %i.q
  %scevgep = getelementptr i8, ptr %i.p, i64 20
  %scevgep203 = getelementptr i8, ptr %scevgep, i64 %i.q
  %i.aa = load i8, ptr %i.r, align 1              ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 83
  br i1 %i.ab, label %bb.e, label %.lr.ph.preheader.i79

bb.e:                                             ; preds = %.lr.ph.preheader.i
  %i.ac = add nsw i64 %i.q, 1
  %exitcond.not.i60 = icmp eq i64 %i.ac, %i.x
  br i1 %exitcond.not.i60, label %.critedge.i, label %.lr.ph.i59.1

.lr.ph.i59.1:                                     ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, 84
  br i1 %i.af, label %bb.f, label %.lr.ph.preheader.i65

bb.f:                                             ; preds = %.lr.ph.i59.1
  %i.ag = add nsw i64 %i.q, 2
  %exitcond.not.i60.1 = icmp eq i64 %i.ag, %i.x
  br i1 %exitcond.not.i60.1, label %.critedge.i, label %.lr.ph.i59.2

.lr.ph.i59.2:                                     ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp eq i8 %i.ai, 65
  br i1 %i.aj, label %bb.g, label %.lr.ph.preheader.i65

bb.g:                                             ; preds = %.lr.ph.i59.2
  %i.ak = add nsw i64 %i.q, 3
  %exitcond.not.i60.2 = icmp eq i64 %i.ak, %i.x
  br i1 %exitcond.not.i60.2, label %.critedge.i, label %.lr.ph.i59.3

.lr.ph.i59.3:                                     ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp eq i8 %i.am, 82
  br i1 %i.an, label %bb.h, label %.lr.ph.preheader.i65

bb.h:                                             ; preds = %.lr.ph.i59.3
  %i.ao = add nsw i64 %i.q, 4
  %exitcond.not.i60.3 = icmp eq i64 %i.ao, %i.x
  br i1 %exitcond.not.i60.3, label %.critedge.i, label %.lr.ph.i59.4

.lr.ph.i59.4:                                     ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = icmp eq i8 %i.aq, 84
  br i1 %i.ar, label %bb.i, label %.lr.ph.preheader.i65

bb.i:                                             ; preds = %.lr.ph.i59.4
  %i.as = add nsw i64 %i.q, 5
  %exitcond.not.i60.4 = icmp eq i64 %i.as, %i.x
  br i1 %exitcond.not.i60.4, label %.critedge.i, label %.lr.ph.i59.5

.lr.ph.i59.5:                                     ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.au = load i8, ptr %i.at, align 1
  %i.av = icmp eq i8 %i.au, 32
  br i1 %i.av, label %bb.j, label %.lr.ph.preheader.i65

bb.j:                                             ; preds = %.lr.ph.i59.5
  %i.aw = add nsw i64 %i.q, 6
  %exitcond.not.i60.5 = icmp eq i64 %i.aw, %i.x
  br i1 %exitcond.not.i60.5, label %.critedge.i, label %.lr.ph.i59.6

.lr.ph.i59.6:                                     ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = icmp eq i8 %i.ay, 87
  br i1 %i.az, label %bb.k, label %.lr.ph.preheader.i65

bb.k:                                             ; preds = %.lr.ph.i59.6
  %i.ba = add nsw i64 %i.q, 7
  %exitcond.not.i60.6 = icmp eq i64 %i.ba, %i.x
  br i1 %exitcond.not.i60.6, label %.critedge.i, label %.lr.ph.i59.7

.lr.ph.i59.7:                                     ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 7
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = icmp eq i8 %i.bc, 65
  br i1 %i.bd, label %bb.l, label %.lr.ph.preheader.i65

bb.l:                                             ; preds = %.lr.ph.i59.7
  %i.be = add nsw i64 %i.q, 8
  %exitcond.not.i60.7 = icmp eq i64 %i.be, %i.x
  br i1 %exitcond.not.i60.7, label %.critedge.i, label %.lr.ph.i59.8

.lr.ph.i59.8:                                     ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 76
  br i1 %i.bh, label %bb.m, label %.lr.ph.preheader.i65

bb.m:                                             ; preds = %.lr.ph.i59.8
  %i.bi = add nsw i64 %i.q, 9
  %exitcond.not.i60.8 = icmp eq i64 %i.bi, %i.x
  br i1 %exitcond.not.i60.8, label %.critedge.i, label %.lr.ph.i59.9

.lr.ph.i59.9:                                     ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = icmp eq i8 %i.bk, 32
  br i1 %i.bl, label %bb.n, label %.lr.ph.preheader.i65

bb.n:                                             ; preds = %.lr.ph.i59.9
  %i.bm = add nsw i64 %i.q, 10
  %exitcond.not.i60.9 = icmp eq i64 %i.bm, %i.x
  br i1 %exitcond.not.i60.9, label %.critedge.i, label %.lr.ph.i59.10

.lr.ph.i59.10:                                    ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = icmp eq i8 %i.bo, 76
  br i1 %i.bp, label %bb.o, label %.lr.ph.preheader.i65

bb.o:                                             ; preds = %.lr.ph.i59.10
  %i.bq = add nsw i64 %i.q, 11
  %exitcond.not.i60.10 = icmp eq i64 %i.bq, %i.x
  br i1 %exitcond.not.i60.10, label %.critedge.i, label %.lr.ph.i59.11

.lr.ph.i59.11:                                    ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 11
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = icmp eq i8 %i.bs, 79
  br i1 %i.bt, label %bb.p, label %.lr.ph.preheader.i65

bb.p:                                             ; preds = %.lr.ph.i59.11
  %i.bu = add nsw i64 %i.q, 12
  %exitcond.not.i60.11 = icmp eq i64 %i.bu, %i.x
  br i1 %exitcond.not.i60.11, label %.critedge.i, label %.lr.ph.i59.12

.lr.ph.i59.12:                                    ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp eq i8 %i.bw, 67
  br i1 %i.bx, label %bb.q, label %.lr.ph.preheader.i65

bb.q:                                             ; preds = %.lr.ph.i59.12
  %i.by = add nsw i64 %i.q, 13
  %exitcond.not.i60.12 = icmp eq i64 %i.by, %i.x
  br i1 %exitcond.not.i60.12, label %.critedge.i, label %.lr.ph.i59.13

.lr.ph.i59.13:                                    ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 13
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = icmp eq i8 %i.ca, 65
  br i1 %i.cb, label %bb.r, label %.lr.ph.preheader.i65

bb.r:                                             ; preds = %.lr.ph.i59.13
  %i.cc = add nsw i64 %i.q, 14
  %exitcond.not.i60.13 = icmp eq i64 %i.cc, %i.x
  br i1 %exitcond.not.i60.13, label %.critedge.i, label %.lr.ph.i59.14

.lr.ph.i59.14:                                    ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = icmp eq i8 %i.ce, 84
  br i1 %i.cf, label %bb.s, label %.lr.ph.preheader.i65

bb.s:                                             ; preds = %.lr.ph.i59.14
  %i.cg = add nsw i64 %i.q, 15
  %exitcond.not.i60.14 = icmp eq i64 %i.cg, %i.x
  br i1 %exitcond.not.i60.14, label %.critedge.i, label %.lr.ph.i59.15

.lr.ph.i59.15:                                    ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 15
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = icmp eq i8 %i.ci, 73
  br i1 %i.cj, label %bb.t, label %.lr.ph.preheader.i65

bb.t:                                             ; preds = %.lr.ph.i59.15
  %i.ck = add nsw i64 %i.q, 16
  %exitcond.not.i60.15 = icmp eq i64 %i.ck, %i.x
  br i1 %exitcond.not.i60.15, label %.critedge.i, label %.lr.ph.i59.16

.lr.ph.i59.16:                                    ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = icmp eq i8 %i.cm, 79
  br i1 %i.cn, label %bb.u, label %.lr.ph.preheader.i65

bb.u:                                             ; preds = %.lr.ph.i59.16
  %i.co = add nsw i64 %i.q, 17
  %exitcond.not.i60.16 = icmp eq i64 %i.co, %i.x
  br i1 %exitcond.not.i60.16, label %.critedge.i, label %.lr.ph.i59.17

.lr.ph.i59.17:                                    ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 17
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = icmp eq i8 %i.cq, 78
  br i1 %i.cr, label %bb.v, label %.lr.ph.preheader.i65

bb.v:                                             ; preds = %.lr.ph.i59.17
  %i.cs = add nsw i64 %i.q, 18
  %exitcond.not.i60.17 = icmp eq i64 %i.cs, %i.x
  br i1 %exitcond.not.i60.17, label %.critedge.i, label %.lr.ph.i59.18

.lr.ph.i59.18:                                    ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 18
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = icmp eq i8 %i.cu, 58
  br i1 %i.cv, label %bb.w, label %.lr.ph.preheader.i65

bb.w:                                             ; preds = %.lr.ph.i59.18
  %i.cw = add nsw i64 %i.q, 19
  %exitcond.not.i60.18 = icmp eq i64 %i.cw, %i.x
  br i1 %exitcond.not.i60.18, label %.critedge.i, label %.lr.ph.i59.19

.lr.ph.i59.19:                                    ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %i.r, i64 19
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = icmp eq i8 %i.cy, 32
  br i1 %i.cz, label %bb.x, label %.lr.ph.preheader.i65

bb.x:                                             ; preds = %.lr.ph.i59.19
  %i.da = add nsw i64 %i.q, 20
  %exitcond.not.i60.19 = icmp eq i64 %i.da, %i.x
  br i1 %exitcond.not.i60.19, label %.critedge.i, label %.critedge.i.thread

.critedge.i:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %i.db = icmp eq i64 %gepdiff, 20
  br i1 %i.db, label %.critedge.i.thread, label %.lr.ph.preheader.i65

.critedge.i.thread:                               ; preds = %bb.x, %.critedge.i
  %.0116.ph = phi ptr [ %i.y, %.critedge.i ], [ %scevgep203, %bb.x ] ; 2 uses
  %i.dc = load i8, ptr %i.y, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  store i8 0, ptr %i.y, align 1
  %i.dd = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %.0116.ph, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f) #7
  %i.de = icmp eq i32 %i.dd, 2
  store i8 %i.dc, ptr %i.y, align 1
  br i1 %i.de, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef nonnull @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.z:                                             ; preds = %.critedge.i.thread
  %i.df = load i32, ptr %i.g, align 4
  %i.dg = zext i32 %i.df to i64
  %i.dh = shl nuw i64 %i.dg, 32
  %i.di = load i32, ptr %i.h, align 4
  %i.dj = zext i32 %i.di to i64
  %i.dk = or disjoint i64 %i.dh, %i.dj
  store i64 %i.dk, ptr %3, align 8
  %i.dl = load i32, ptr %i.f, align 4
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %.0116.ph, i64 %i.dm ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  %.not55 = icmp ult ptr %i.dn, %i.y
  br i1 %.not55, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.do = load i8, ptr %i.dn, align 1
  %.not56 = icmp eq i8 %i.do, 32
  br i1 %.not56, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %0, ptr noundef nonnull @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.dp = or i32 %.0193, 1
  br label %line_starts_with.exit101

.lr.ph.preheader.i65:                             ; preds = %.critedge.i, %.lr.ph.i59.19, %.lr.ph.i59.18, %.lr.ph.i59.17, %.lr.ph.i59.16, %.lr.ph.i59.15, %.lr.ph.i59.14, %.lr.ph.i59.13, %.lr.ph.i59.12, %.lr.ph.i59.11, %.lr.ph.i59.10, %.lr.ph.i59.9, %.lr.ph.i59.8, %.lr.ph.i59.7, %.lr.ph.i59.6, %.lr.ph.i59.5, %.lr.ph.i59.4, %.lr.ph.i59.3, %.lr.ph.i59.2, %.lr.ph.i59.1
  %.pr308 = load i8, ptr %i.r, align 1
  %gepdiff170 = sub nsw i64 %i.x, %i.q
  %scevgep.i66 = getelementptr i8, ptr @.str.4, i64 %gepdiff170 ; 16 uses
  %scevgep204 = getelementptr i8, ptr %i.p, i64 16
  %scevgep205 = getelementptr i8, ptr %scevgep204, i64 %i.q
  %i.dq = icmp eq i8 %.pr308, 83
  br i1 %i.dq, label %bb.ad, label %.lr.ph.preheader.i79thread-pre-split

bb.ad:                                            ; preds = %.lr.ph.preheader.i65
  %i.dr = add nsw i64 %i.q, 1
  %exitcond.not.i72 = icmp eq i64 %i.dr, %i.x
  br i1 %exitcond.not.i72, label %.critedge.i61, label %.lr.ph.i68.1

.lr.ph.i68.1:                                     ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = icmp eq i8 %i.dt, 84
  br i1 %i.du, label %bb.ae, label %.lr.ph.preheader.i79thread-pre-split

bb.ae:                                            ; preds = %.lr.ph.i68.1
  %i.dv = add nsw i64 %i.q, 2
  %exitcond.not.i72.1 = icmp eq i64 %i.dv, %i.x
  br i1 %exitcond.not.i72.1, label %.critedge.i61, label %.lr.ph.i68.2

.lr.ph.i68.2:                                     ; preds = %bb.ae
  %i.dw = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = icmp eq i8 %i.dx, 65
  br i1 %i.dy, label %bb.af, label %.lr.ph.preheader.i79thread-pre-split

bb.af:                                            ; preds = %.lr.ph.i68.2
  %i.dz = add nsw i64 %i.q, 3
  %exitcond.not.i72.2 = icmp eq i64 %i.dz, %i.x
  br i1 %exitcond.not.i72.2, label %.critedge.i61, label %.lr.ph.i68.3

.lr.ph.i68.3:                                     ; preds = %bb.af
  %i.ea = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = icmp eq i8 %i.eb, 82
  br i1 %i.ec, label %bb.ag, label %.lr.ph.preheader.i79thread-pre-split

bb.ag:                                            ; preds = %.lr.ph.i68.3
  %i.ed = add nsw i64 %i.q, 4
  %exitcond.not.i72.3 = icmp eq i64 %i.ed, %i.x
  br i1 %exitcond.not.i72.3, label %.critedge.i61, label %.lr.ph.i68.4

.lr.ph.i68.4:                                     ; preds = %bb.ag
  %i.ee = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = icmp eq i8 %i.ef, 84
  br i1 %i.eg, label %bb.ah, label %.lr.ph.preheader.i79thread-pre-split

bb.ah:                                            ; preds = %.lr.ph.i68.4
  %i.eh = add nsw i64 %i.q, 5
  %exitcond.not.i72.4 = icmp eq i64 %i.eh, %i.x
  br i1 %exitcond.not.i72.4, label %.critedge.i61, label %.lr.ph.i68.5

.lr.ph.i68.5:                                     ; preds = %bb.ah
  %i.ei = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = icmp eq i8 %i.ej, 32
  br i1 %i.ek, label %bb.ai, label %.lr.ph.preheader.i79thread-pre-split

bb.ai:                                            ; preds = %.lr.ph.i68.5
  %i.el = add nsw i64 %i.q, 6
  %exitcond.not.i72.5 = icmp eq i64 %i.el, %i.x
  br i1 %exitcond.not.i72.5, label %.critedge.i61, label %.lr.ph.i68.6

.lr.ph.i68.6:                                     ; preds = %bb.ai
  %i.em = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = icmp eq i8 %i.en, 84
  br i1 %i.eo, label %bb.aj, label %.lr.ph.preheader.i79thread-pre-split

bb.aj:                                            ; preds = %.lr.ph.i68.6
  %i.ep = add nsw i64 %i.q, 7
  %exitcond.not.i72.6 = icmp eq i64 %i.ep, %i.x
  br i1 %exitcond.not.i72.6, label %.critedge.i61, label %.lr.ph.i68.7

.lr.ph.i68.7:                                     ; preds = %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %i.r, i64 7
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = icmp eq i8 %i.er, 73
  br i1 %i.es, label %bb.ak, label %.lr.ph.preheader.i79thread-pre-split

bb.ak:                                            ; preds = %.lr.ph.i68.7
  %i.et = add nsw i64 %i.q, 8
  %exitcond.not.i72.7 = icmp eq i64 %i.et, %i.x
  br i1 %exitcond.not.i72.7, label %.critedge.i61, label %.lr.ph.i68.8

.lr.ph.i68.8:                                     ; preds = %bb.ak
  %i.eu = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = icmp eq i8 %i.ev, 77
  br i1 %i.ew, label %bb.al, label %.lr.ph.preheader.i79thread-pre-split

bb.al:                                            ; preds = %.lr.ph.i68.8
  %i.ex = add nsw i64 %i.q, 9
  %exitcond.not.i72.8 = icmp eq i64 %i.ex, %i.x
  br i1 %exitcond.not.i72.8, label %.critedge.i61, label %.lr.ph.i68.9

.lr.ph.i68.9:                                     ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = icmp eq i8 %i.ez, 69
  br i1 %i.fa, label %bb.am, label %.lr.ph.preheader.i79thread-pre-split

bb.am:                                            ; preds = %.lr.ph.i68.9
  %i.fb = add nsw i64 %i.q, 10
  %exitcond.not.i72.9 = icmp eq i64 %i.fb, %i.x
  br i1 %exitcond.not.i72.9, label %.critedge.i61, label %.lr.ph.i68.10

.lr.ph.i68.10:                                    ; preds = %bb.am
  %i.fc = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = icmp eq i8 %i.fd, 76
  br i1 %i.fe, label %bb.an, label %.lr.ph.preheader.i79thread-pre-split

bb.an:                                            ; preds = %.lr.ph.i68.10
  %i.ff = add nsw i64 %i.q, 11
  %exitcond.not.i72.10 = icmp eq i64 %i.ff, %i.x
  br i1 %exitcond.not.i72.10, label %.critedge.i61, label %.lr.ph.i68.11

.lr.ph.i68.11:                                    ; preds = %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %i.r, i64 11
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = icmp eq i8 %i.fh, 73
  br i1 %i.fi, label %bb.ao, label %.lr.ph.preheader.i79thread-pre-split

bb.ao:                                            ; preds = %.lr.ph.i68.11
  %i.fj = add nsw i64 %i.q, 12
  %exitcond.not.i72.11 = icmp eq i64 %i.fj, %i.x
  br i1 %exitcond.not.i72.11, label %.critedge.i61, label %.lr.ph.i68.12

.lr.ph.i68.12:                                    ; preds = %bb.ao
  %i.fk = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = icmp eq i8 %i.fl, 78
  br i1 %i.fm, label %bb.ap, label %.lr.ph.preheader.i79thread-pre-split

bb.ap:                                            ; preds = %.lr.ph.i68.12
  %i.fn = add nsw i64 %i.q, 13
  %exitcond.not.i72.12 = icmp eq i64 %i.fn, %i.x
  br i1 %exitcond.not.i72.12, label %.critedge.i61, label %.lr.ph.i68.13

.lr.ph.i68.13:                                    ; preds = %bb.ap
  %i.fo = getelementptr inbounds nuw i8, ptr %i.r, i64 13
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = icmp eq i8 %i.fp, 69
  br i1 %i.fq, label %bb.aq, label %.lr.ph.preheader.i79thread-pre-split

bb.aq:                                            ; preds = %.lr.ph.i68.13
  %i.fr = add nsw i64 %i.q, 14
  %exitcond.not.i72.13 = icmp eq i64 %i.fr, %i.x
  br i1 %exitcond.not.i72.13, label %.critedge.i61, label %.lr.ph.i68.14

.lr.ph.i68.14:                                    ; preds = %bb.aq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = icmp eq i8 %i.ft, 58
  br i1 %i.fu, label %bb.ar, label %.lr.ph.preheader.i79thread-pre-split

bb.ar:                                            ; preds = %.lr.ph.i68.14
  %i.fv = add nsw i64 %i.q, 15
  %exitcond.not.i72.14 = icmp eq i64 %i.fv, %i.x
  br i1 %exitcond.not.i72.14, label %.critedge.i61, label %.lr.ph.i68.15

.lr.ph.i68.15:                                    ; preds = %bb.ar
  %i.fw = getelementptr inbounds nuw i8, ptr %i.r, i64 15
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = icmp eq i8 %i.fx, 32
  br i1 %i.fy, label %bb.as, label %.lr.ph.preheader.i79thread-pre-split

bb.as:                                            ; preds = %.lr.ph.i68.15
  %i.fz = add nsw i64 %i.q, 16
  %exitcond.not.i72.15 = icmp eq i64 %i.fz, %i.x
  br i1 %exitcond.not.i72.15, label %.critedge.i61, label %.critedge.i61.thread

.critedge.i61:                                    ; preds = %get_eol_offset.exit, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.013.lcssa.i62.ph = phi ptr [ @.str.4, %get_eol_offset.exit ], [ %scevgep.i66, %bb.ad ], [ %scevgep.i66, %bb.as ], [ %scevgep.i66, %bb.ar ], [ %scevgep.i66, %bb.aq ], [ %scevgep.i66, %bb.ap ], [ %scevgep.i66, %bb.ao ], [ %scevgep.i66, %bb.an ], [ %scevgep.i66, %bb.am ], [ %scevgep.i66, %bb.al ], [ %scevgep.i66, %bb.ak ], [ %scevgep.i66, %bb.aj ], [ %scevgep.i66, %bb.ai ], [ %scevgep.i66, %bb.ah ], [ %scevgep.i66, %bb.ag ], [ %scevgep.i66, %bb.af ], [ %scevgep.i66, %bb.ae ]
  %.0.lcssa.i63.ph = phi ptr [ %i.r, %get_eol_offset.exit ], [ %i.y, %bb.ad ], [ %i.y, %bb.as ], [ %i.y, %bb.ar ], [ %i.y, %bb.aq ], [ %i.y, %bb.ap ], [ %i.y, %bb.ao ], [ %i.y, %bb.an ], [ %i.y, %bb.am ], [ %i.y, %bb.al ], [ %i.y, %bb.ak ], [ %i.y, %bb.aj ], [ %i.y, %bb.ai ], [ %i.y, %bb.ah ], [ %i.y, %bb.ag ], [ %i.y, %bb.af ], [ %i.y, %bb.ae ]
  %.pr131 = load i8, ptr %.013.lcssa.i62.ph, align 1
  %i.ga = icmp eq i8 %.pr131, 0
  br i1 %i.ga, label %.critedge.i61.thread, label %line_starts_with.exit73

.critedge.i61.thread:                             ; preds = %bb.as, %.critedge.i61
  %.1117.ph = phi ptr [ %.0.lcssa.i63.ph, %.critedge.i61 ], [ %scevgep205, %bb.as ] ; 2 uses
  %i.gb = load i8, ptr %i.y, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store i8 0, ptr %i.y, align 1
  %i.gc = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %.1117.ph, ptr noundef nonnull @.str.23, ptr noundef nonnull %2, ptr noundef nonnull %i.e) #7
  %i.gd = icmp eq i32 %i.gc, 1
  store i8 %i.gb, ptr %i.y, align 1
  br i1 %i.gd, label %parse_tli.exit, label %parse_tli.exit.thread

parse_tli.exit.thread:                            ; preds = %.critedge.i61.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %.loopexit173

parse_tli.exit:                                   ; preds = %.critedge.i61.thread
  %i.ge = load i32, ptr %i.e, align 4
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds i8, ptr %.1117.ph, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1
  %.not.i74 = icmp eq i8 %i.gh, 10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br i1 %.not.i74, label %bb.at, label %.loopexit173

.loopexit173:                                     ; preds = %parse_tli.exit, %parse_tli.exit.thread
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef %0, ptr noundef nonnull @.str.6) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.at:                                            ; preds = %parse_tli.exit
  %i.gi = load i32, ptr %2, align 4
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %0) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.gk = or i32 %.0193, 2
  br label %line_starts_with.exit101

line_starts_with.exit73:                          ; preds = %.critedge.i61
  br i1 %i.z, label %.lr.ph.preheader.i79thread-pre-split, label %.critedge.i89

.lr.ph.preheader.i79thread-pre-split:             ; preds = %line_starts_with.exit73, %.lr.ph.preheader.i65, %.lr.ph.i68.1, %.lr.ph.i68.2, %.lr.ph.i68.3, %.lr.ph.i68.4, %.lr.ph.i68.5, %.lr.ph.i68.6, %.lr.ph.i68.7, %.lr.ph.i68.8, %.lr.ph.i68.9, %.lr.ph.i68.10, %.lr.ph.i68.11, %.lr.ph.i68.12, %.lr.ph.i68.13, %.lr.ph.i68.14, %.lr.ph.i68.15
  %.pr313 = load i8, ptr %i.r, align 1
  br label %.lr.ph.preheader.i79

.lr.ph.preheader.i79:                             ; preds = %.lr.ph.preheader.i, %.lr.ph.preheader.i79thread-pre-split
  %i.gl = phi i8 [ %.pr313, %.lr.ph.preheader.i79thread-pre-split ], [ %i.aa, %.lr.ph.preheader.i ]
  %gepdiff171 = sub nsw i64 %i.x, %i.q
  %scevgep206 = getelementptr i8, ptr %i.p, i64 22
  %scevgep207 = getelementptr i8, ptr %scevgep206, i64 %i.q
  %i.gm = icmp eq i8 %i.gl, 73
  br i1 %i.gm, label %bb.aw, label %.lr.ph.preheader.i93

bb.aw:                                            ; preds = %.lr.ph.preheader.i79
  %i.gn = add nsw i64 %i.q, 1
  %exitcond.not.i86 = icmp eq i64 %i.gn, %i.x
  br i1 %exitcond.not.i86, label %.critedge.i75, label %.lr.ph.i82.1

.lr.ph.i82.1:                                     ; preds = %bb.aw
  %i.go = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = icmp eq i8 %i.gp, 78
  br i1 %i.gq, label %bb.ax, label %.lr.ph.preheader.i93

bb.ax:                                            ; preds = %.lr.ph.i82.1
  %i.gr = add nsw i64 %i.q, 2
  %exitcond.not.i86.1 = icmp eq i64 %i.gr, %i.x
  br i1 %exitcond.not.i86.1, label %.critedge.i75, label %.lr.ph.i82.2

.lr.ph.i82.2:                                     ; preds = %bb.ax
  %i.gs = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = icmp eq i8 %i.gt, 67
  br i1 %i.gu, label %bb.ay, label %.lr.ph.preheader.i93

bb.ay:                                            ; preds = %.lr.ph.i82.2
  %i.gv = add nsw i64 %i.q, 3
  %exitcond.not.i86.2 = icmp eq i64 %i.gv, %i.x
  br i1 %exitcond.not.i86.2, label %.critedge.i75, label %.lr.ph.i82.3

.lr.ph.i82.3:                                     ; preds = %bb.ay
  %i.gw = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.gx = load i8, ptr %i.gw, align 1
  %i.gy = icmp eq i8 %i.gx, 82
  br i1 %i.gy, label %bb.az, label %.lr.ph.preheader.i93

bb.az:                                            ; preds = %.lr.ph.i82.3
  %i.gz = add nsw i64 %i.q, 4
  %exitcond.not.i86.3 = icmp eq i64 %i.gz, %i.x
  br i1 %exitcond.not.i86.3, label %.critedge.i75, label %.lr.ph.i82.4

.lr.ph.i82.4:                                     ; preds = %bb.az
  %i.ha = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = icmp eq i8 %i.hb, 69
  br i1 %i.hc, label %bb.ba, label %.lr.ph.preheader.i93

bb.ba:                                            ; preds = %.lr.ph.i82.4
  %i.hd = add nsw i64 %i.q, 5
  %exitcond.not.i86.4 = icmp eq i64 %i.hd, %i.x
  br i1 %exitcond.not.i86.4, label %.critedge.i75, label %.lr.ph.i82.5

.lr.ph.i82.5:                                     ; preds = %bb.ba
  %i.he = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = icmp eq i8 %i.hf, 77
  br i1 %i.hg, label %bb.bb, label %.lr.ph.preheader.i93

bb.bb:                                            ; preds = %.lr.ph.i82.5
  %i.hh = add nsw i64 %i.q, 6
  %exitcond.not.i86.5 = icmp eq i64 %i.hh, %i.x
  br i1 %exitcond.not.i86.5, label %.critedge.i75, label %.lr.ph.i82.6

.lr.ph.i82.6:                                     ; preds = %bb.bb
  %i.hi = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = icmp eq i8 %i.hj, 69
  br i1 %i.hk, label %bb.bc, label %.lr.ph.preheader.i93

bb.bc:                                            ; preds = %.lr.ph.i82.6
  %i.hl = add nsw i64 %i.q, 7
  %exitcond.not.i86.6 = icmp eq i64 %i.hl, %i.x
  br i1 %exitcond.not.i86.6, label %.critedge.i75, label %.lr.ph.i82.7

.lr.ph.i82.7:                                     ; preds = %bb.bc
  %i.hm = getelementptr inbounds nuw i8, ptr %i.r, i64 7
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = icmp eq i8 %i.hn, 78
  br i1 %i.ho, label %bb.bd, label %.lr.ph.preheader.i93

bb.bd:                                            ; preds = %.lr.ph.i82.7
  %i.hp = add nsw i64 %i.q, 8
  %exitcond.not.i86.7 = icmp eq i64 %i.hp, %i.x
  br i1 %exitcond.not.i86.7, label %.critedge.i75, label %.lr.ph.i82.8

.lr.ph.i82.8:                                     ; preds = %bb.bd
  %i.hq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = icmp eq i8 %i.hr, 84
  br i1 %i.hs, label %bb.be, label %.lr.ph.preheader.i93

bb.be:                                            ; preds = %.lr.ph.i82.8
  %i.ht = add nsw i64 %i.q, 9
  %exitcond.not.i86.8 = icmp eq i64 %i.ht, %i.x
  br i1 %exitcond.not.i86.8, label %.critedge.i75, label %.lr.ph.i82.9

.lr.ph.i82.9:                                     ; preds = %bb.be
  %i.hu = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.hv = load i8, ptr %i.hu, align 1
  %i.hw = icmp eq i8 %i.hv, 65
  br i1 %i.hw, label %bb.bf, label %.lr.ph.preheader.i93

bb.bf:                                            ; preds = %.lr.ph.i82.9
  %i.hx = add nsw i64 %i.q, 10
  %exitcond.not.i86.9 = icmp eq i64 %i.hx, %i.x
  br i1 %exitcond.not.i86.9, label %.critedge.i75, label %.lr.ph.i82.10

.lr.ph.i82.10:                                    ; preds = %bb.bf
  %i.hy = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = icmp eq i8 %i.hz, 76
  br i1 %i.ia, label %bb.bg, label %.lr.ph.preheader.i93

bb.bg:                                            ; preds = %.lr.ph.i82.10
  %i.ib = add nsw i64 %i.q, 11
  %exitcond.not.i86.10 = icmp eq i64 %i.ib, %i.x
  br i1 %exitcond.not.i86.10, label %.critedge.i75, label %.lr.ph.i82.11

.lr.ph.i82.11:                                    ; preds = %bb.bg
  %i.ic = getelementptr inbounds nuw i8, ptr %i.r, i64 11
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = icmp eq i8 %i.id, 32
  br i1 %i.ie, label %bb.bh, label %.lr.ph.preheader.i93

bb.bh:                                            ; preds = %.lr.ph.i82.11
  %i.if = add nsw i64 %i.q, 12
  %exitcond.not.i86.11 = icmp eq i64 %i.if, %i.x
  br i1 %exitcond.not.i86.11, label %.critedge.i75, label %.lr.ph.i82.12

.lr.ph.i82.12:                                    ; preds = %bb.bh
  %i.ig = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = icmp eq i8 %i.ih, 70
  br i1 %i.ii, label %bb.bi, label %.lr.ph.preheader.i93

bb.bi:                                            ; preds = %.lr.ph.i82.12
  %i.ij = add nsw i64 %i.q, 13
  %exitcond.not.i86.12 = icmp eq i64 %i.ij, %i.x
  br i1 %exitcond.not.i86.12, label %.critedge.i75, label %.lr.ph.i82.13

.lr.ph.i82.13:                                    ; preds = %bb.bi
  %i.ik = getelementptr inbounds nuw i8, ptr %i.r, i64 13
  %i.il = load i8, ptr %i.ik, align 1
  %i.im = icmp eq i8 %i.il, 82
  br i1 %i.im, label %bb.bj, label %.lr.ph.preheader.i93

bb.bj:                                            ; preds = %.lr.ph.i82.13
  %i.in = add nsw i64 %i.q, 14
  %exitcond.not.i86.13 = icmp eq i64 %i.in, %i.x
  br i1 %exitcond.not.i86.13, label %.critedge.i75, label %.lr.ph.i82.14

.lr.ph.i82.14:                                    ; preds = %bb.bj
  %i.io = getelementptr inbounds nuw i8, ptr %i.r, i64 14
  %i.ip = load i8, ptr %i.io, align 1
  %i.iq = icmp eq i8 %i.ip, 79
  br i1 %i.iq, label %bb.bk, label %.lr.ph.preheader.i93

bb.bk:                                            ; preds = %.lr.ph.i82.14
  %i.ir = add nsw i64 %i.q, 15
  %exitcond.not.i86.14 = icmp eq i64 %i.ir, %i.x
  br i1 %exitcond.not.i86.14, label %.critedge.i75, label %.lr.ph.i82.15

.lr.ph.i82.15:                                    ; preds = %bb.bk
  %i.is = getelementptr inbounds nuw i8, ptr %i.r, i64 15
  %i.it = load i8, ptr %i.is, align 1
  %i.iu = icmp eq i8 %i.it, 77
  br i1 %i.iu, label %bb.bl, label %.lr.ph.preheader.i93

bb.bl:                                            ; preds = %.lr.ph.i82.15
  %i.iv = add nsw i64 %i.q, 16
  %exitcond.not.i86.15 = icmp eq i64 %i.iv, %i.x
  br i1 %exitcond.not.i86.15, label %.critedge.i75, label %.lr.ph.i82.16

.lr.ph.i82.16:                                    ; preds = %bb.bl
  %i.iw = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = icmp eq i8 %i.ix, 32
  br i1 %i.iy, label %bb.bm, label %.lr.ph.preheader.i93

bb.bm:                                            ; preds = %.lr.ph.i82.16
  %i.iz = add nsw i64 %i.q, 17
  %exitcond.not.i86.16 = icmp eq i64 %i.iz, %i.x
  br i1 %exitcond.not.i86.16, label %.critedge.i75, label %.lr.ph.i82.17

.lr.ph.i82.17:                                    ; preds = %bb.bm
  %i.ja = getelementptr inbounds nuw i8, ptr %i.r, i64 17
  %i.jb = load i8, ptr %i.ja, align 1
  %i.jc = icmp eq i8 %i.jb, 76
  br i1 %i.jc, label %bb.bn, label %.lr.ph.preheader.i93

bb.bn:                                            ; preds = %.lr.ph.i82.17
  %i.jd = add nsw i64 %i.q, 18
  %exitcond.not.i86.17 = icmp eq i64 %i.jd, %i.x
  br i1 %exitcond.not.i86.17, label %.critedge.i75, label %.lr.ph.i82.18

.lr.ph.i82.18:                                    ; preds = %bb.bn
  %i.je = getelementptr inbounds nuw i8, ptr %i.r, i64 18
  %i.jf = load i8, ptr %i.je, align 1
  %i.jg = icmp eq i8 %i.jf, 83
  br i1 %i.jg, label %bb.bo, label %.lr.ph.preheader.i93

bb.bo:                                            ; preds = %.lr.ph.i82.18
  %i.jh = add nsw i64 %i.q, 19
  %exitcond.not.i86.18 = icmp eq i64 %i.jh, %i.x
  br i1 %exitcond.not.i86.18, label %.critedge.i75, label %.lr.ph.i82.19

.lr.ph.i82.19:                                    ; preds = %bb.bo
  %i.ji = getelementptr inbounds nuw i8, ptr %i.r, i64 19
  %i.jj = load i8, ptr %i.ji, align 1
  %i.jk = icmp eq i8 %i.jj, 78
  br i1 %i.jk, label %bb.bp, label %.lr.ph.preheader.i93

bb.bp:                                            ; preds = %.lr.ph.i82.19
  %i.jl = add nsw i64 %i.q, 20
  %exitcond.not.i86.19 = icmp eq i64 %i.jl, %i.x
  br i1 %exitcond.not.i86.19, label %.critedge.i75, label %.lr.ph.i82.20

.lr.ph.i82.20:                                    ; preds = %bb.bp
  %i.jm = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = icmp eq i8 %i.jn, 58
  br i1 %i.jo, label %bb.bq, label %.lr.ph.preheader.i93

bb.bq:                                            ; preds = %.lr.ph.i82.20
  %i.jp = add nsw i64 %i.q, 21
  %exitcond.not.i86.20 = icmp eq i64 %i.jp, %i.x
  br i1 %exitcond.not.i86.20, label %.critedge.i75, label %.lr.ph.i82.21

.lr.ph.i82.21:                                    ; preds = %bb.bq
  %i.jq = getelementptr inbounds nuw i8, ptr %i.r, i64 21
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = icmp eq i8 %i.jr, 32
  br i1 %i.js, label %bb.br, label %.lr.ph.preheader.i93

bb.br:                                            ; preds = %.lr.ph.i82.21
  %i.jt = add nsw i64 %i.q, 22
  %exitcond.not.i86.21 = icmp eq i64 %i.jt, %i.x
  br i1 %exitcond.not.i86.21, label %.critedge.i75, label %.critedge.i75.thread

.critedge.i75:                                    ; preds = %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br
  %i.ju = icmp eq i64 %gepdiff171, 22
  br i1 %i.ju, label %.critedge.i75.thread, label %line_starts_with.exit87

.critedge.i75.thread:                             ; preds = %bb.br, %.critedge.i75
  %.2.ph = phi ptr [ %i.y, %.critedge.i75 ], [ %scevgep207, %bb.br ] ; 2 uses
  %i.jv = load i8, ptr %i.y, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i8 0, ptr %i.y, align 1
  %i.jw = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %.2.ph, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #7
  %i.jx = icmp eq i32 %i.jw, 2
  store i8 %i.jv, ptr %i.y, align 1
  br i1 %i.jx, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.critedge.i75.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef nonnull @.str.9) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.bt:                                            ; preds = %.critedge.i75.thread
  %i.jy = load i32, ptr %i.c, align 4
  %i.jz = zext i32 %i.jy to i64
  %i.ka = shl nuw i64 %i.jz, 32
  %i.kb = load i32, ptr %i.d, align 4
  %i.kc = zext i32 %i.kb to i64
  %i.kd = or disjoint i64 %i.ka, %i.kc
  store i64 %i.kd, ptr %5, align 8
  %i.ke = load i32, ptr %i.b, align 4
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds i8, ptr %.2.ph, i64 %i.kf ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.not53 = icmp ult ptr %i.kg, %i.y
  br i1 %.not53, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.kh = load i8, ptr %i.kg, align 1
  %.not54 = icmp eq i8 %i.kh, 10
  br i1 %.not54, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %0, ptr noundef nonnull @.str.9) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.ki = or i32 %.0193, 4
  br label %line_starts_with.exit101

line_starts_with.exit87:                          ; preds = %.critedge.i75
  br i1 %i.z, label %.lr.ph.preheader.i93, label %.critedge.i89

.lr.ph.preheader.i93:                             ; preds = %.lr.ph.i82.21, %.lr.ph.i82.20, %.lr.ph.i82.19, %.lr.ph.i82.18, %.lr.ph.i82.17, %.lr.ph.i82.16, %.lr.ph.i82.15, %.lr.ph.i82.14, %.lr.ph.i82.13, %.lr.ph.i82.12, %.lr.ph.i82.11, %.lr.ph.i82.10, %.lr.ph.i82.9, %.lr.ph.i82.8, %.lr.ph.i82.7, %.lr.ph.i82.6, %.lr.ph.i82.5, %.lr.ph.i82.4, %.lr.ph.i82.3, %.lr.ph.i82.2, %.lr.ph.i82.1, %.lr.ph.preheader.i79, %line_starts_with.exit87
  %gepdiff172 = sub nsw i64 %i.x, %i.q
  %scevgep.i94 = getelementptr i8, ptr @.str.10, i64 %gepdiff172 ; 22 uses
  %scevgep208 = getelementptr i8, ptr %i.p, i64 22
  %scevgep209 = getelementptr i8, ptr %scevgep208, i64 %i.q
  %i.kj = load i8, ptr %i.r, align 1
  %i.kk = icmp eq i8 %i.kj, 73
  br i1 %i.kk, label %bb.bx, label %line_starts_with.exit101

bb.bx:                                            ; preds = %.lr.ph.preheader.i93
  %i.kl = add nsw i64 %i.q, 1
  %exitcond.not.i100 = icmp eq i64 %i.kl, %i.x
  br i1 %exitcond.not.i100, label %.critedge.i89, label %.lr.ph.i96.1

.lr.ph.i96.1:                                     ; preds = %bb.bx
  %i.km = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.kn = load i8, ptr %i.km, align 1
  %i.ko = icmp eq i8 %i.kn, 78
  br i1 %i.ko, label %bb.by, label %line_starts_with.exit101

bb.by:                                            ; preds = %.lr.ph.i96.1
  %i.kp = add nsw i64 %i.q, 2
  %exitcond.not.i100.1 = icmp eq i64 %i.kp, %i.x
  br i1 %exitcond.not.i100.1, label %.critedge.i89, label %.lr.ph.i96.2

.lr.ph.i96.2:                                     ; preds = %bb.by
  %i.kq = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = icmp eq i8 %i.kr, 67
  br i1 %i.ks, label %bb.bz, label %line_starts_with.exit101

bb.bz:                                            ; preds = %.lr.ph.i96.2
  %i.kt = add nsw i64 %i.q, 3
  %exitcond.not.i100.2 = icmp eq i64 %i.kt, %i.x
  br i1 %exitcond.not.i100.2, label %.critedge.i89, label %.lr.ph.i96.3

.lr.ph.i96.3:                                     ; preds = %bb.bz
  %i.ku = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.kv = load i8, ptr %i.ku, align 1
  %i.kw = icmp eq i8 %i.kv, 82
  br i1 %i.kw, label %bb.ca, label %line_starts_with.exit101

bb.ca:                                            ; preds = %.lr.ph.i96.3
  %i.kx = add nsw i64 %i.q, 4
  %exitcond.not.i100.3 = icmp eq i64 %i.kx, %i.x
  br i1 %exitcond.not.i100.3, label %.critedge.i89, label %.lr.ph.i96.4

.lr.ph.i96.4:                                     ; preds = %bb.ca
  %i.ky = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.kz = load i8, ptr %i.ky, align 1
  %i.la = icmp eq i8 %i.kz, 69
  br i1 %i.la, label %bb.cb, label %line_starts_with.exit101

bb.cb:                                            ; preds = %.lr.ph.i96.4
  %i.lb = add nsw i64 %i.q, 5
  %exitcond.not.i100.4 = icmp eq i64 %i.lb, %i.x
  br i1 %exitcond.not.i100.4, label %.critedge.i89, label %.lr.ph.i96.5

.lr.ph.i96.5:                                     ; preds = %bb.cb
  %i.lc = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.ld = load i8, ptr %i.lc, align 1
  %i.le = icmp eq i8 %i.ld, 77
  br i1 %i.le, label %bb.cc, label %line_starts_with.exit101

bb.cc:                                            ; preds = %.lr.ph.i96.5
  %i.lf = add nsw i64 %i.q, 6
  %exitcond.not.i100.5 = icmp eq i64 %i.lf, %i.x
  br i1 %exitcond.not.i100.5, label %.critedge.i89, label %.lr.ph.i96.6

.lr.ph.i96.6:                                     ; preds = %bb.cc
  %i.lg = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.lh = load i8, ptr %i.lg, align 1
  %i.li = icmp eq i8 %i.lh, 69
  br i1 %i.li, label %bb.cd, label %line_starts_with.exit101

bb.cd:                                            ; preds = %.lr.ph.i96.6
  %i.lj = add nsw i64 %i.q, 7
  %exitcond.not.i100.6 = icmp eq i64 %i.lj, %i.x
  br i1 %exitcond.not.i100.6, label %.critedge.i89, label %.lr.ph.i96.7

.lr.ph.i96.7:                                     ; preds = %bb.cd
  %i.lk = getelementptr inbounds nuw i8, ptr %i.r, i64 7
  %i.ll = load i8, ptr %i.lk, align 1
  %i.lm = icmp eq i8 %i.ll, 78
  br i1 %i.lm, label %bb.ce, label %line_starts_with.exit101

bb.ce:                                            ; preds = %.lr.ph.i96.7
  %i.ln = add nsw i64 %i.q, 8
  %exitcond.not.i100.7 = icmp eq i64 %i.ln, %i.x
  br i1 %exitcond.not.i100.7, label %.critedge.i89, label %.lr.ph.i96.8

.lr.ph.i96.8:                                     ; preds = %bb.ce
  %i.lo = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.lp = load i8, ptr %i.lo, align 1
  %i.lq = icmp eq i8 %i.lp, 84
  br i1 %i.lq, label %bb.cf, label %line_starts_with.exit101

bb.cf:                                            ; preds = %.lr.ph.i96.8
  %i.lr = add nsw i64 %i.q, 9
  %exitcond.not.i100.8 = icmp eq i64 %i.lr, %i.x
  br i1 %exitcond.not.i100.8, label %.critedge.i89, label %.lr.ph.i96.9

.lr.ph.i96.9:                                     ; preds = %bb.cf
  %i.ls = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.lt = load i8, ptr %i.ls, align 1
  %i.lu = icmp eq i8 %i.lt, 65
  br i1 %i.lu, label %bb.cg, label %line_starts_with.exit101

bb.cg:                                            ; preds = %.lr.ph.i96.9
  %i.lv = add nsw i64 %i.q, 10
  %exitcond.not.i100.9 = icmp eq i64 %i.lv, %i.x
  br i1 %exitcond.not.i100.9, label %.critedge.i89, label %.lr.ph.i96.10

.lr.ph.i96.10:                                    ; preds = %bb.cg
  %i.lw = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.lx = load i8, ptr %i.lw, align 1
  %i.ly = icmp eq i8 %i.lx, 76
  br i1 %i.ly, label %bb.ch, label %line_starts_with.exit101

bb.ch:                                            ; preds = %.lr.ph.i96.10
  %i.lz = add nsw i64 %i.q, 11
  %exitcond.not.i100.10 = icmp eq i64 %i.lz, %i.x
  br i1 %exitcond.not.i100.10, label %.critedge.i89, label %.lr.ph.i96.11

.lr.ph.i96.11:                                    ; preds = %bb.ch
  %i.ma = getelementptr inbounds nuw i8, ptr %i.r, i64 11
  %i.mb = load i8, ptr %i.ma, align 1
  %i.mc = icmp eq i8 %i.mb, 32
  br i1 %i.mc, label %bb.ci, label %line_starts_with.exit101

bb.ci:                                            ; preds = %.lr.ph.i96.11
  %i.md = add nsw i64 %i.q, 12
  %exitcond.not.i100.11 = icmp eq i64 %i.md, %i.x
  br i1 %exitcond.not.i100.11, label %.critedge.i89, label %.lr.ph.i96.12

.lr.ph.i96.12:                                    ; preds = %bb.ci
  %i.me = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.mf = load i8, ptr %i.me, align 1
  %i.mg = icmp eq i8 %i.mf, 70
  br i1 %i.mg, label %bb.cj, label %line_starts_with.exit101

bb.cj:                                            ; preds = %.lr.ph.i96.12
  %i.mh = add nsw i64 %i.q, 13
  %exitcond.not.i100.12 = icmp eq i64 %i.mh, %i.x
end_hunk_0
begin_hunk_1_@parse_backup_label:bb.a
  %exitcond.not.i100.16 = icmp eq i64 %i.mx, %i.x
  br i1 %exitcond.not.i100.16, label %.critedge.i89, label %.lr.ph.i96.17

.lr.ph.i96.17:                                    ; preds = %bb.cn
  %i.my = getelementptr inbounds nuw i8, ptr %i.r, i64 17
  %i.mz = load i8, ptr %i.my, align 1
  %i.na = icmp eq i8 %i.mz, 84
  br i1 %i.na, label %bb.co, label %line_starts_with.exit101

bb.co:                                            ; preds = %.lr.ph.i96.17
  %i.nb = add nsw i64 %i.q, 18
  %exitcond.not.i100.17 = icmp eq i64 %i.nb, %i.x
  br i1 %exitcond.not.i100.17, label %.critedge.i89, label %.lr.ph.i96.18

.lr.ph.i96.18:                                    ; preds = %bb.co
  %i.nc = getelementptr inbounds nuw i8, ptr %i.r, i64 18
  %i.nd = load i8, ptr %i.nc, align 1
  %i.ne = icmp eq i8 %i.nd, 76
  br i1 %i.ne, label %bb.cp, label %line_starts_with.exit101

bb.cp:                                            ; preds = %.lr.ph.i96.18
  %i.nf = add nsw i64 %i.q, 19
  %exitcond.not.i100.18 = icmp eq i64 %i.nf, %i.x
  br i1 %exitcond.not.i100.18, label %.critedge.i89, label %.lr.ph.i96.19

.lr.ph.i96.19:                                    ; preds = %bb.cp
  %i.ng = getelementptr inbounds nuw i8, ptr %i.r, i64 19
  %i.nh = load i8, ptr %i.ng, align 1
  %i.ni = icmp eq i8 %i.nh, 73
  br i1 %i.ni, label %bb.cq, label %line_starts_with.exit101

bb.cq:                                            ; preds = %.lr.ph.i96.19
  %i.nj = add nsw i64 %i.q, 20
  %exitcond.not.i100.19 = icmp eq i64 %i.nj, %i.x
  br i1 %exitcond.not.i100.19, label %.critedge.i89, label %.lr.ph.i96.20

.lr.ph.i96.20:                                    ; preds = %bb.cq
  %i.nk = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.nl = load i8, ptr %i.nk, align 1
  %i.nm = icmp eq i8 %i.nl, 58
  br i1 %i.nm, label %bb.cr, label %line_starts_with.exit101

bb.cr:                                            ; preds = %.lr.ph.i96.20
  %i.nn = add nsw i64 %i.q, 21
  %exitcond.not.i100.20 = icmp eq i64 %i.nn, %i.x
  br i1 %exitcond.not.i100.20, label %.critedge.i89, label %.lr.ph.i96.21

.lr.ph.i96.21:                                    ; preds = %bb.cr
  %i.no = getelementptr inbounds nuw i8, ptr %i.r, i64 21
  %i.np = load i8, ptr %i.no, align 1
  %i.nq = icmp eq i8 %i.np, 32
  br i1 %i.nq, label %bb.cs, label %line_starts_with.exit101

bb.cs:                                            ; preds = %.lr.ph.i96.21
  %i.nr = add nsw i64 %i.q, 22
  %exitcond.not.i100.21 = icmp eq i64 %i.nr, %i.x
  br i1 %exitcond.not.i100.21, label %.critedge.i89, label %.critedge.i89.thread

.critedge.i89:                                    ; preds = %line_starts_with.exit73, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %line_starts_with.exit87
  %.013.lcssa.i90.ph = phi ptr [ @.str.10, %line_starts_with.exit87 ], [ %scevgep.i94, %bb.bx ], [ %scevgep.i94, %bb.cs ], [ %scevgep.i94, %bb.cr ], [ %scevgep.i94, %bb.cq ], [ %scevgep.i94, %bb.cp ], [ %scevgep.i94, %bb.co ], [ %scevgep.i94, %bb.cn ], [ %scevgep.i94, %bb.cm ], [ %scevgep.i94, %bb.cl ], [ %scevgep.i94, %bb.ck ], [ %scevgep.i94, %bb.cj ], [ %scevgep.i94, %bb.ci ], [ %scevgep.i94, %bb.ch ], [ %scevgep.i94, %bb.cg ], [ %scevgep.i94, %bb.cf ], [ %scevgep.i94, %bb.ce ], [ %scevgep.i94, %bb.cd ], [ %scevgep.i94, %bb.cc ], [ %scevgep.i94, %bb.cb ], [ %scevgep.i94, %bb.ca ], [ %scevgep.i94, %bb.bz ], [ %scevgep.i94, %bb.by ], [ @.str.10, %line_starts_with.exit73 ]
  %.0.lcssa.i91.ph = phi ptr [ %i.r, %line_starts_with.exit87 ], [ %i.y, %bb.bx ], [ %i.y, %bb.cs ], [ %i.y, %bb.cr ], [ %i.y, %bb.cq ], [ %i.y, %bb.cp ], [ %i.y, %bb.co ], [ %i.y, %bb.cn ], [ %i.y, %bb.cm ], [ %i.y, %bb.cl ], [ %i.y, %bb.ck ], [ %i.y, %bb.cj ], [ %i.y, %bb.ci ], [ %i.y, %bb.ch ], [ %i.y, %bb.cg ], [ %i.y, %bb.cf ], [ %i.y, %bb.ce ], [ %i.y, %bb.cd ], [ %i.y, %bb.cc ], [ %i.y, %bb.cb ], [ %i.y, %bb.ca ], [ %i.y, %bb.bz ], [ %i.y, %bb.by ], [ %i.r, %line_starts_with.exit73 ]
  %.pr158 = load i8, ptr %.013.lcssa.i90.ph, align 1
  %i.ns = icmp eq i8 %.pr158, 0
  br i1 %i.ns, label %.critedge.i89.thread, label %line_starts_with.exit101

.critedge.i89.thread:                             ; preds = %bb.cs, %.critedge.i89
  %.3.ph = phi ptr [ %.0.lcssa.i91.ph, %.critedge.i89 ], [ %scevgep209, %bb.cs ] ; 2 uses
  %i.nt = load i8, ptr %i.y, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i8 0, ptr %i.y, align 1
  %i.nu = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %.3.ph, ptr noundef nonnull @.str.23, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #7
  %i.nv = icmp eq i32 %i.nu, 1
  store i8 %i.nt, ptr %i.y, align 1
  br i1 %i.nv, label %parse_tli.exit104, label %parse_tli.exit104.thread

parse_tli.exit104.thread:                         ; preds = %.critedge.i89.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.loopexit

parse_tli.exit104:                                ; preds = %.critedge.i89.thread
  %i.nw = load i32, ptr %i.a, align 4
  %i.nx = sext i32 %i.nw to i64
  %i.ny = getelementptr inbounds i8, ptr %.3.ph, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1
  %.not.i103 = icmp eq i8 %i.nz, 10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br i1 %.not.i103, label %bb.ct, label %.loopexit

.loopexit:                                        ; preds = %parse_tli.exit104, %parse_tli.exit104.thread
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef nonnull @.str.11) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.ct:                                            ; preds = %parse_tli.exit104
  %i.oa = load i32, ptr %4, align 4
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %0) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.oc = or i32 %.0193, 8
  br label %line_starts_with.exit101

line_starts_with.exit101:                         ; preds = %.lr.ph.preheader.i93, %.lr.ph.i96.1, %.lr.ph.i96.2, %.lr.ph.i96.3, %.lr.ph.i96.4, %.lr.ph.i96.5, %.lr.ph.i96.6, %.lr.ph.i96.7, %.lr.ph.i96.8, %.lr.ph.i96.9, %.lr.ph.i96.10, %.lr.ph.i96.11, %.lr.ph.i96.12, %.lr.ph.i96.13, %.lr.ph.i96.14, %.lr.ph.i96.15, %.lr.ph.i96.16, %.lr.ph.i96.17, %.lr.ph.i96.18, %.lr.ph.i96.19, %.lr.ph.i96.20, %.lr.ph.i96.21, %.critedge.i89, %bb.av, %bb.cv, %bb.bw, %bb.ac
  %.1 = phi i32 [ %i.dp, %bb.ac ], [ %i.gk, %bb.av ], [ %i.ki, %bb.bw ], [ %i.oc, %bb.cv ], [ %.0193, %.critedge.i89 ], [ %.0193, %.lr.ph.i96.21 ], [ %.0193, %.lr.ph.i96.20 ], [ %.0193, %.lr.ph.i96.19 ], [ %.0193, %.lr.ph.i96.18 ], [ %.0193, %.lr.ph.i96.17 ], [ %.0193, %.lr.ph.i96.16 ], [ %.0193, %.lr.ph.i96.15 ], [ %.0193, %.lr.ph.i96.14 ], [ %.0193, %.lr.ph.i96.13 ], [ %.0193, %.lr.ph.i96.12 ], [ %.0193, %.lr.ph.i96.11 ], [ %.0193, %.lr.ph.i96.10 ], [ %.0193, %.lr.ph.i96.9 ], [ %.0193, %.lr.ph.i96.8 ], [ %.0193, %.lr.ph.i96.7 ], [ %.0193, %.lr.ph.i96.6 ], [ %.0193, %.lr.ph.i96.5 ], [ %.0193, %.lr.ph.i96.4 ], [ %.0193, %.lr.ph.i96.3 ], [ %.0193, %.lr.ph.i96.2 ], [ %.0193, %.lr.ph.i96.1 ], [ %.0193, %.lr.ph.preheader.i93 ] ; 4 uses
  store i32 %.08.i, ptr %i.i, align 8
  %i.od = load i32, ptr %i.j, align 8             ; 2 uses
  %i.oe = icmp slt i32 %.08.i, %i.od
  br i1 %i.oe, label %.lr.ph.i, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %line_starts_with.exit101
  %i.of = and i32 %.1, 1
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %._crit_edge.thread, label %bb.cw

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef %0, ptr noundef nonnull @.str.2) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.cw:                                            ; preds = %._crit_edge
  %i.oh = and i32 %.1, 2
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef %0, ptr noundef nonnull @.str.6) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.oj = and i32 %.1, 12
  switch i32 %i.oj, label %bb.db [
    i32 4, label %bb.cz
    i32 8, label %bb.da
  ]

bb.cz:                                            ; preds = %bb.cy
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.da:                                            ; preds = %bb.cy
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.db:                                            ; preds = %bb.cy
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @pg_log_generic(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @write_backup_label(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 11 uses
  %4 = alloca %struct.pg_checksum_context, align 8 ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %5 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @pg_checksum_init(ptr noundef nonnull %4, i32 noundef %2) #7 ; 0 uses
  %i.d = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.14, ptr noundef %0) #7 ; 0 uses
  %i.e = load i32, ptr @pg_file_create_mode, align 4
  %i.f = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.a, i32 noundef 193, i32 noundef %i.e) #7 ; 3 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.h, align 8              ; 2 uses
  %i.k = load i32, ptr %i.i, align 8              ; 2 uses
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.a) #7
  call void @exit(i32 noundef 1) #8
  unreachable

.lr.ph.i:                                         ; preds = %.preheader, %line_starts_with.exit.thread
  %i.m = phi i32 [ %i.gw, %line_starts_with.exit.thread ], [ %i.k, %.preheader ] ; 6 uses
  %i.n = phi i32 [ %.08.i, %line_starts_with.exit.thread ], [ %i.j, %.preheader ] ; 2 uses
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %i.p = sext i32 %i.n to i64                     ; 49 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p ; 46 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.p, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %indvars.iv.i
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 10
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = trunc nsw i64 %indvars.iv.i to i32
  %i.v = add nsw i32 %i.u, 1
  br label %get_eol_offset.exit

bb.e:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.m, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %get_eol_offset.exit, label %bb.c, !llvm.loop !0

get_eol_offset.exit:                              ; preds = %bb.e, %bb.d
  %.08.i = phi i32 [ %i.v, %bb.d ], [ %i.m, %bb.e ] ; 5 uses
  %i.w = sext i32 %.08.i to i64                   ; 47 uses
  %i.x = icmp slt i32 %i.n, %.08.i
  br i1 %i.x, label %.lr.ph.preheader.i, label %line_starts_with.exit50

.lr.ph.preheader.i:                               ; preds = %get_eol_offset.exit
  %gepdiff = sub nsw i64 %i.w, %i.p
  %i.y = load i8, ptr %i.q, align 1
  %i.z = icmp eq i8 %i.y, 73
  br i1 %i.z, label %bb.f, label %.lr.ph.preheader.i42.thread

.lr.ph.preheader.i42.thread:                      ; preds = %.lr.ph.preheader.i
  %gepdiff58125 = sub nsw i64 %i.w, %i.p
  br label %line_starts_with.exit50.thread56

bb.f:                                             ; preds = %.lr.ph.preheader.i
  %i.aa = add nsw i64 %i.p, 1
  %exitcond.not.i39 = icmp eq i64 %i.aa, %i.w
  br i1 %exitcond.not.i39, label %line_starts_with.exit, label %.lr.ph.i38.1

.lr.ph.i38.1:                                     ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 78
  br i1 %i.ad, label %bb.g, label %.lr.ph.preheader.i42

bb.g:                                             ; preds = %.lr.ph.i38.1
  %i.ae = add nsw i64 %i.p, 2
  %exitcond.not.i39.1 = icmp eq i64 %i.ae, %i.w
  br i1 %exitcond.not.i39.1, label %line_starts_with.exit, label %.lr.ph.i38.2

.lr.ph.i38.2:                                     ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp eq i8 %i.ag, 67
  br i1 %i.ah, label %bb.h, label %.lr.ph.preheader.i42

bb.h:                                             ; preds = %.lr.ph.i38.2
  %i.ai = add nsw i64 %i.p, 3
  %exitcond.not.i39.2 = icmp eq i64 %i.ai, %i.w
  br i1 %exitcond.not.i39.2, label %line_starts_with.exit, label %.lr.ph.i38.3

.lr.ph.i38.3:                                     ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = icmp eq i8 %i.ak, 82
  br i1 %i.al, label %bb.i, label %.lr.ph.preheader.i42

bb.i:                                             ; preds = %.lr.ph.i38.3
  %i.am = add nsw i64 %i.p, 4
  %exitcond.not.i39.3 = icmp eq i64 %i.am, %i.w
  br i1 %exitcond.not.i39.3, label %line_starts_with.exit, label %.lr.ph.i38.4

.lr.ph.i38.4:                                     ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp eq i8 %i.ao, 69
  br i1 %i.ap, label %bb.j, label %.lr.ph.preheader.i42

bb.j:                                             ; preds = %.lr.ph.i38.4
  %i.aq = add nsw i64 %i.p, 5
  %exitcond.not.i39.4 = icmp eq i64 %i.aq, %i.w
  br i1 %exitcond.not.i39.4, label %line_starts_with.exit, label %.lr.ph.i38.5

.lr.ph.i38.5:                                     ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp eq i8 %i.as, 77
  br i1 %i.at, label %bb.k, label %.lr.ph.preheader.i42

bb.k:                                             ; preds = %.lr.ph.i38.5
  %i.au = add nsw i64 %i.p, 6
  %exitcond.not.i39.5 = icmp eq i64 %i.au, %i.w
  br i1 %exitcond.not.i39.5, label %line_starts_with.exit, label %.lr.ph.i38.6

.lr.ph.i38.6:                                     ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp eq i8 %i.aw, 69
  br i1 %i.ax, label %bb.l, label %.lr.ph.preheader.i42

bb.l:                                             ; preds = %.lr.ph.i38.6
  %i.ay = add nsw i64 %i.p, 7
  %exitcond.not.i39.6 = icmp eq i64 %i.ay, %i.w
  br i1 %exitcond.not.i39.6, label %line_starts_with.exit, label %.lr.ph.i38.7

.lr.ph.i38.7:                                     ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 7
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 78
  br i1 %i.bb, label %bb.m, label %.lr.ph.preheader.i42

bb.m:                                             ; preds = %.lr.ph.i38.7
  %i.bc = add nsw i64 %i.p, 8
  %exitcond.not.i39.7 = icmp eq i64 %i.bc, %i.w
  br i1 %exitcond.not.i39.7, label %line_starts_with.exit, label %.lr.ph.i38.8

.lr.ph.i38.8:                                     ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = icmp eq i8 %i.be, 84
  br i1 %i.bf, label %bb.n, label %.lr.ph.preheader.i42

bb.n:                                             ; preds = %.lr.ph.i38.8
  %i.bg = add nsw i64 %i.p, 9
  %exitcond.not.i39.8 = icmp eq i64 %i.bg, %i.w
  br i1 %exitcond.not.i39.8, label %line_starts_with.exit, label %.lr.ph.i38.9

.lr.ph.i38.9:                                     ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 9
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bi, 65
  br i1 %i.bj, label %bb.o, label %.lr.ph.preheader.i42

bb.o:                                             ; preds = %.lr.ph.i38.9
  %i.bk = add nsw i64 %i.p, 10
  %exitcond.not.i39.9 = icmp eq i64 %i.bk, %i.w
  br i1 %exitcond.not.i39.9, label %line_starts_with.exit, label %.lr.ph.i38.10

.lr.ph.i38.10:                                    ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp eq i8 %i.bm, 76
  br i1 %i.bn, label %bb.p, label %.lr.ph.preheader.i42

bb.p:                                             ; preds = %.lr.ph.i38.10
  %i.bo = add nsw i64 %i.p, 11
  %exitcond.not.i39.10 = icmp eq i64 %i.bo, %i.w
  br i1 %exitcond.not.i39.10, label %line_starts_with.exit, label %.lr.ph.i38.11

.lr.ph.i38.11:                                    ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 11
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = icmp eq i8 %i.bq, 32
  br i1 %i.br, label %bb.q, label %.lr.ph.preheader.i42

bb.q:                                             ; preds = %.lr.ph.i38.11
  %i.bs = add nsw i64 %i.p, 12
  %exitcond.not.i39.11 = icmp eq i64 %i.bs, %i.w
  br i1 %exitcond.not.i39.11, label %line_starts_with.exit, label %.lr.ph.i38.12

.lr.ph.i38.12:                                    ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = icmp eq i8 %i.bu, 70
  br i1 %i.bv, label %bb.r, label %.lr.ph.preheader.i42

bb.r:                                             ; preds = %.lr.ph.i38.12
  %i.bw = add nsw i64 %i.p, 13
  %exitcond.not.i39.12 = icmp eq i64 %i.bw, %i.w
  br i1 %exitcond.not.i39.12, label %line_starts_with.exit, label %.lr.ph.i38.13

.lr.ph.i38.13:                                    ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 13
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = icmp eq i8 %i.by, 82
  br i1 %i.bz, label %bb.s, label %.lr.ph.preheader.i42

bb.s:                                             ; preds = %.lr.ph.i38.13
  %i.ca = add nsw i64 %i.p, 14
  %exitcond.not.i39.13 = icmp eq i64 %i.ca, %i.w
  br i1 %exitcond.not.i39.13, label %line_starts_with.exit, label %.lr.ph.i38.14

.lr.ph.i38.14:                                    ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.q, i64 14
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = icmp eq i8 %i.cc, 79
  br i1 %i.cd, label %bb.t, label %.lr.ph.preheader.i42

bb.t:                                             ; preds = %.lr.ph.i38.14
  %i.ce = add nsw i64 %i.p, 15
  %exitcond.not.i39.14 = icmp eq i64 %i.ce, %i.w
  br i1 %exitcond.not.i39.14, label %line_starts_with.exit, label %.lr.ph.i38.15

.lr.ph.i38.15:                                    ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 15
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = icmp eq i8 %i.cg, 77
  br i1 %i.ch, label %bb.u, label %.lr.ph.preheader.i42

bb.u:                                             ; preds = %.lr.ph.i38.15
  %i.ci = add nsw i64 %i.p, 16
  %exitcond.not.i39.15 = icmp eq i64 %i.ci, %i.w
  br i1 %exitcond.not.i39.15, label %line_starts_with.exit, label %.lr.ph.i38.16

.lr.ph.i38.16:                                    ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = icmp eq i8 %i.ck, 32
  br i1 %i.cl, label %bb.v, label %.lr.ph.preheader.i42

bb.v:                                             ; preds = %.lr.ph.i38.16
  %i.cm = add nsw i64 %i.p, 17
  %exitcond.not.i39.16 = icmp eq i64 %i.cm, %i.w
  br i1 %exitcond.not.i39.16, label %line_starts_with.exit, label %.lr.ph.i38.17

.lr.ph.i38.17:                                    ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.co, 76
  br i1 %i.cp, label %bb.w, label %.lr.ph.preheader.i42

bb.w:                                             ; preds = %.lr.ph.i38.17
  %i.cq = add nsw i64 %i.p, 18
  %exitcond.not.i39.17 = icmp eq i64 %i.cq, %i.w
  br i1 %exitcond.not.i39.17, label %line_starts_with.exit, label %.lr.ph.i38.18

.lr.ph.i38.18:                                    ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %i.q, i64 18
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = icmp eq i8 %i.cs, 83
  br i1 %i.ct, label %bb.x, label %.lr.ph.preheader.i42

bb.x:                                             ; preds = %.lr.ph.i38.18
  %i.cu = add nsw i64 %i.p, 19
  %exitcond.not.i39.18 = icmp eq i64 %i.cu, %i.w
  br i1 %exitcond.not.i39.18, label %line_starts_with.exit, label %.lr.ph.i38.19

.lr.ph.i38.19:                                    ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %i.q, i64 19
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = icmp eq i8 %i.cw, 78
  br i1 %i.cx, label %bb.y, label %.lr.ph.preheader.i42

bb.y:                                             ; preds = %.lr.ph.i38.19
  %i.cy = add nsw i64 %i.p, 20
  %exitcond.not.i39.19 = icmp eq i64 %i.cy, %i.w
  br i1 %exitcond.not.i39.19, label %line_starts_with.exit, label %.lr.ph.i38.20

.lr.ph.i38.20:                                    ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = icmp eq i8 %i.da, 58
  br i1 %i.db, label %bb.z, label %.lr.ph.preheader.i42

bb.z:                                             ; preds = %.lr.ph.i38.20
  %i.dc = add nsw i64 %i.p, 21
  %exitcond.not.i39.20 = icmp eq i64 %i.dc, %i.w
  br i1 %exitcond.not.i39.20, label %line_starts_with.exit, label %.lr.ph.i38.21

.lr.ph.i38.21:                                    ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %i.q, i64 21
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = icmp eq i8 %i.de, 32
  br i1 %i.df, label %line_starts_with.exit.thread, label %.lr.ph.preheader.i42

line_starts_with.exit:                            ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %i.dg = icmp eq i64 %gepdiff, 22
  br i1 %i.dg, label %line_starts_with.exit.thread, label %.lr.ph.preheader.i42

.lr.ph.preheader.i42:                             ; preds = %line_starts_with.exit, %.lr.ph.i38.21, %.lr.ph.i38.20, %.lr.ph.i38.19, %.lr.ph.i38.18, %.lr.ph.i38.17, %.lr.ph.i38.16, %.lr.ph.i38.15, %.lr.ph.i38.14, %.lr.ph.i38.13, %.lr.ph.i38.12, %.lr.ph.i38.11, %.lr.ph.i38.10, %.lr.ph.i38.9, %.lr.ph.i38.8, %.lr.ph.i38.7, %.lr.ph.i38.6, %.lr.ph.i38.5, %.lr.ph.i38.4, %.lr.ph.i38.3, %.lr.ph.i38.2, %.lr.ph.i38.1
  %.pr124 = load i8, ptr %i.q, align 1
  %gepdiff58 = sub nsw i64 %i.w, %i.p             ; 23 uses
  %scevgep.i43 = getelementptr i8, ptr @.str.10, i64 %gepdiff58 ; 22 uses
  %i.dh = icmp eq i8 %.pr124, 73
  br i1 %i.dh, label %bb.aa, label %line_starts_with.exit50.thread56

bb.aa:                                            ; preds = %.lr.ph.preheader.i42
  %i.di = add nsw i64 %i.p, 1
  %exitcond.not.i49 = icmp eq i64 %i.di, %i.w
  br i1 %exitcond.not.i49, label %line_starts_with.exit50, label %.lr.ph.i45.1

.lr.ph.i45.1:                                     ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = icmp eq i8 %i.dk, 78
  br i1 %i.dl, label %bb.ab, label %line_starts_with.exit50.thread56

bb.ab:                                            ; preds = %.lr.ph.i45.1
  %i.dm = add nsw i64 %i.p, 2
  %exitcond.not.i49.1 = icmp eq i64 %i.dm, %i.w
  br i1 %exitcond.not.i49.1, label %line_starts_with.exit50, label %.lr.ph.i45.2

.lr.ph.i45.2:                                     ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = icmp eq i8 %i.do, 67
  br i1 %i.dp, label %bb.ac, label %line_starts_with.exit50.thread56

bb.ac:                                            ; preds = %.lr.ph.i45.2
  %i.dq = add nsw i64 %i.p, 3
  %exitcond.not.i49.2 = icmp eq i64 %i.dq, %i.w
  br i1 %exitcond.not.i49.2, label %line_starts_with.exit50, label %.lr.ph.i45.3

.lr.ph.i45.3:                                     ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = icmp eq i8 %i.ds, 82
  br i1 %i.dt, label %bb.ad, label %line_starts_with.exit50.thread56

bb.ad:                                            ; preds = %.lr.ph.i45.3
  %i.du = add nsw i64 %i.p, 4
  %exitcond.not.i49.3 = icmp eq i64 %i.du, %i.w
  br i1 %exitcond.not.i49.3, label %line_starts_with.exit50, label %.lr.ph.i45.4

.lr.ph.i45.4:                                     ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = icmp eq i8 %i.dw, 69
  br i1 %i.dx, label %bb.ae, label %line_starts_with.exit50.thread56

bb.ae:                                            ; preds = %.lr.ph.i45.4
  %i.dy = add nsw i64 %i.p, 5
  %exitcond.not.i49.4 = icmp eq i64 %i.dy, %i.w
  br i1 %exitcond.not.i49.4, label %line_starts_with.exit50, label %.lr.ph.i45.5

.lr.ph.i45.5:                                     ; preds = %bb.ae
  %i.dz = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = icmp eq i8 %i.ea, 77
  br i1 %i.eb, label %bb.af, label %line_starts_with.exit50.thread56

bb.af:                                            ; preds = %.lr.ph.i45.5
  %i.ec = add nsw i64 %i.p, 6
  %exitcond.not.i49.5 = icmp eq i64 %i.ec, %i.w
  br i1 %exitcond.not.i49.5, label %line_starts_with.exit50, label %.lr.ph.i45.6

.lr.ph.i45.6:                                     ; preds = %bb.af
  %i.ed = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = icmp eq i8 %i.ee, 69
  br i1 %i.ef, label %bb.ag, label %line_starts_with.exit50.thread56

bb.ag:                                            ; preds = %.lr.ph.i45.6
  %i.eg = add nsw i64 %i.p, 7
  %exitcond.not.i49.6 = icmp eq i64 %i.eg, %i.w
  br i1 %exitcond.not.i49.6, label %line_starts_with.exit50, label %.lr.ph.i45.7

.lr.ph.i45.7:                                     ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %i.q, i64 7
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = icmp eq i8 %i.ei, 78
  br i1 %i.ej, label %bb.ah, label %line_starts_with.exit50.thread56

bb.ah:                                            ; preds = %.lr.ph.i45.7
  %i.ek = add nsw i64 %i.p, 8
  %exitcond.not.i49.7 = icmp eq i64 %i.ek, %i.w
  br i1 %exitcond.not.i49.7, label %line_starts_with.exit50, label %.lr.ph.i45.8

.lr.ph.i45.8:                                     ; preds = %bb.ah
  %i.el = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.em = load i8, ptr %i.el, align 1
  %i.en = icmp eq i8 %i.em, 84
  br i1 %i.en, label %bb.ai, label %line_starts_with.exit50.thread56

bb.ai:                                            ; preds = %.lr.ph.i45.8
  %i.eo = add nsw i64 %i.p, 9
  %exitcond.not.i49.8 = icmp eq i64 %i.eo, %i.w
  br i1 %exitcond.not.i49.8, label %line_starts_with.exit50, label %.lr.ph.i45.9

.lr.ph.i45.9:                                     ; preds = %bb.ai
  %i.ep = getelementptr inbounds nuw i8, ptr %i.q, i64 9
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = icmp eq i8 %i.eq, 65
  br i1 %i.er, label %bb.aj, label %line_starts_with.exit50.thread56

bb.aj:                                            ; preds = %.lr.ph.i45.9
  %i.es = add nsw i64 %i.p, 10
  %exitcond.not.i49.9 = icmp eq i64 %i.es, %i.w
  br i1 %exitcond.not.i49.9, label %line_starts_with.exit50, label %.lr.ph.i45.10

.lr.ph.i45.10:                                    ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = icmp eq i8 %i.eu, 76
  br i1 %i.ev, label %bb.ak, label %line_starts_with.exit50.thread56

bb.ak:                                            ; preds = %.lr.ph.i45.10
  %i.ew = add nsw i64 %i.p, 11
  %exitcond.not.i49.10 = icmp eq i64 %i.ew, %i.w
  br i1 %exitcond.not.i49.10, label %line_starts_with.exit50, label %.lr.ph.i45.11

.lr.ph.i45.11:                                    ; preds = %bb.ak
  %i.ex = getelementptr inbounds nuw i8, ptr %i.q, i64 11
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = icmp eq i8 %i.ey, 32
  br i1 %i.ez, label %bb.al, label %line_starts_with.exit50.thread56

bb.al:                                            ; preds = %.lr.ph.i45.11
  %i.fa = add nsw i64 %i.p, 12
  %exitcond.not.i49.11 = icmp eq i64 %i.fa, %i.w
  br i1 %exitcond.not.i49.11, label %line_starts_with.exit50, label %.lr.ph.i45.12

.lr.ph.i45.12:                                    ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = icmp eq i8 %i.fc, 70
  br i1 %i.fd, label %bb.am, label %line_starts_with.exit50.thread56

bb.am:                                            ; preds = %.lr.ph.i45.12
  %i.fe = add nsw i64 %i.p, 13
  %exitcond.not.i49.12 = icmp eq i64 %i.fe, %i.w
  br i1 %exitcond.not.i49.12, label %line_starts_with.exit50, label %.lr.ph.i45.13

.lr.ph.i45.13:                                    ; preds = %bb.am
  %i.ff = getelementptr inbounds nuw i8, ptr %i.q, i64 13
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = icmp eq i8 %i.fg, 82
  br i1 %i.fh, label %bb.an, label %line_starts_with.exit50.thread56

bb.an:                                            ; preds = %.lr.ph.i45.13
  %i.fi = add nsw i64 %i.p, 14
  %exitcond.not.i49.13 = icmp eq i64 %i.fi, %i.w
  br i1 %exitcond.not.i49.13, label %line_starts_with.exit50, label %.lr.ph.i45.14

.lr.ph.i45.14:                                    ; preds = %bb.an
  %i.fj = getelementptr inbounds nuw i8, ptr %i.q, i64 14
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = icmp eq i8 %i.fk, 79
  br i1 %i.fl, label %bb.ao, label %line_starts_with.exit50.thread56

bb.ao:                                            ; preds = %.lr.ph.i45.14
  %i.fm = add nsw i64 %i.p, 15
  %exitcond.not.i49.14 = icmp eq i64 %i.fm, %i.w
  br i1 %exitcond.not.i49.14, label %line_starts_with.exit50, label %.lr.ph.i45.15

.lr.ph.i45.15:                                    ; preds = %bb.ao
  %i.fn = getelementptr inbounds nuw i8, ptr %i.q, i64 15
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = icmp eq i8 %i.fo, 77
  br i1 %i.fp, label %bb.ap, label %line_starts_with.exit50.thread56

bb.ap:                                            ; preds = %.lr.ph.i45.15
  %i.fq = add nsw i64 %i.p, 16
  %exitcond.not.i49.15 = icmp eq i64 %i.fq, %i.w
  br i1 %exitcond.not.i49.15, label %line_starts_with.exit50, label %.lr.ph.i45.16

.lr.ph.i45.16:                                    ; preds = %bb.ap
  %i.fr = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = icmp eq i8 %i.fs, 32
  br i1 %i.ft, label %bb.aq, label %line_starts_with.exit50.thread56

bb.aq:                                            ; preds = %.lr.ph.i45.16
  %i.fu = add nsw i64 %i.p, 17
  %exitcond.not.i49.16 = icmp eq i64 %i.fu, %i.w
  br i1 %exitcond.not.i49.16, label %line_starts_with.exit50, label %.lr.ph.i45.17

.lr.ph.i45.17:                                    ; preds = %bb.aq
  %i.fv = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = icmp eq i8 %i.fw, 84
  br i1 %i.fx, label %bb.ar, label %line_starts_with.exit50.thread56

bb.ar:                                            ; preds = %.lr.ph.i45.17
  %i.fy = add nsw i64 %i.p, 18
  %exitcond.not.i49.17 = icmp eq i64 %i.fy, %i.w
  br i1 %exitcond.not.i49.17, label %line_starts_with.exit50, label %.lr.ph.i45.18

.lr.ph.i45.18:                                    ; preds = %bb.ar
  %i.fz = getelementptr inbounds nuw i8, ptr %i.q, i64 18
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = icmp eq i8 %i.ga, 76
  br i1 %i.gb, label %bb.as, label %line_starts_with.exit50.thread56

bb.as:                                            ; preds = %.lr.ph.i45.18
  %i.gc = add nsw i64 %i.p, 19
  %exitcond.not.i49.18 = icmp eq i64 %i.gc, %i.w
  br i1 %exitcond.not.i49.18, label %line_starts_with.exit50, label %.lr.ph.i45.19

.lr.ph.i45.19:                                    ; preds = %bb.as
  %i.gd = getelementptr inbounds nuw i8, ptr %i.q, i64 19
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = icmp eq i8 %i.ge, 73
  br i1 %i.gf, label %bb.at, label %line_starts_with.exit50.thread56

bb.at:                                            ; preds = %.lr.ph.i45.19
  %i.gg = add nsw i64 %i.p, 20
  %exitcond.not.i49.19 = icmp eq i64 %i.gg, %i.w
  br i1 %exitcond.not.i49.19, label %line_starts_with.exit50, label %.lr.ph.i45.20

.lr.ph.i45.20:                                    ; preds = %bb.at
  %i.gh = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = icmp eq i8 %i.gi, 58
  br i1 %i.gj, label %bb.au, label %line_starts_with.exit50.thread56

bb.au:                                            ; preds = %.lr.ph.i45.20
  %i.gk = add nsw i64 %i.p, 21
  %exitcond.not.i49.20 = icmp eq i64 %i.gk, %i.w
  br i1 %exitcond.not.i49.20, label %line_starts_with.exit50, label %.lr.ph.i45.21

.lr.ph.i45.21:                                    ; preds = %bb.au
  %i.gl = getelementptr inbounds nuw i8, ptr %i.q, i64 21
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = icmp eq i8 %i.gm, 32
  br i1 %i.gn, label %bb.av, label %line_starts_with.exit50.thread56

bb.av:                                            ; preds = %.lr.ph.i45.21
  %i.go = add nsw i64 %i.p, 22
  %exitcond.not.i49.21 = icmp eq i64 %i.go, %i.w
  br i1 %exitcond.not.i49.21, label %line_starts_with.exit50, label %line_starts_with.exit.thread

line_starts_with.exit50:                          ; preds = %get_eol_offset.exit, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av
  %.013.lcssa.i40.ph = phi ptr [ @.str.10, %get_eol_offset.exit ], [ %scevgep.i43, %bb.aa ], [ %scevgep.i43, %bb.av ], [ %scevgep.i43, %bb.au ], [ %scevgep.i43, %bb.at ], [ %scevgep.i43, %bb.as ], [ %scevgep.i43, %bb.ar ], [ %scevgep.i43, %bb.aq ], [ %scevgep.i43, %bb.ap ], [ %scevgep.i43, %bb.ao ], [ %scevgep.i43, %bb.an ], [ %scevgep.i43, %bb.am ], [ %scevgep.i43, %bb.al ], [ %scevgep.i43, %bb.ak ], [ %scevgep.i43, %bb.aj ], [ %scevgep.i43, %bb.ai ], [ %scevgep.i43, %bb.ah ], [ %scevgep.i43, %bb.ag ], [ %scevgep.i43, %bb.af ], [ %scevgep.i43, %bb.ae ], [ %scevgep.i43, %bb.ad ], [ %scevgep.i43, %bb.ac ], [ %scevgep.i43, %bb.ab ]
  %.pr54 = load i8, ptr %.013.lcssa.i40.ph, align 1
  %i.gp = icmp eq i8 %.pr54, 0
  br i1 %i.gp, label %line_starts_with.exit.thread, label %line_starts_with.exit50.line_starts_with.exit50.thread56_crit_edge

line_starts_with.exit50.line_starts_with.exit50.thread56_crit_edge: ; preds = %line_starts_with.exit50
  %.pre68 = sub nsw i64 %i.w, %i.p
  br label %line_starts_with.exit50.thread56

line_starts_with.exit50.thread56:                 ; preds = %.lr.ph.preheader.i42.thread, %.lr.ph.preheader.i42, %.lr.ph.i45.1, %.lr.ph.i45.2, %.lr.ph.i45.3, %.lr.ph.i45.4, %.lr.ph.i45.5, %.lr.ph.i45.6, %.lr.ph.i45.7, %.lr.ph.i45.8, %.lr.ph.i45.9, %.lr.ph.i45.10, %.lr.ph.i45.11, %.lr.ph.i45.12, %.lr.ph.i45.13, %.lr.ph.i45.14, %.lr.ph.i45.15, %.lr.ph.i45.16, %.lr.ph.i45.17, %.lr.ph.i45.18, %.lr.ph.i45.19, %.lr.ph.i45.20, %.lr.ph.i45.21, %line_starts_with.exit50.line_starts_with.exit50.thread56_crit_edge
  %gepdiff59.pre-phi = phi i64 [ %.pre68, %line_starts_with.exit50.line_starts_with.exit50.thread56_crit_edge ], [ %gepdiff58, %.lr.ph.i45.21 ], [ %gepdiff58, %.lr.ph.i45.20 ], [ %gepdiff58, %.lr.ph.i45.19 ], [ %gepdiff58, %.lr.ph.i45.18 ], [ %gepdiff58, %.lr.ph.i45.17 ], [ %gepdiff58, %.lr.ph.i45.16 ], [ %gepdiff58, %.lr.ph.i45.15 ], [ %gepdiff58, %.lr.ph.i45.14 ], [ %gepdiff58, %.lr.ph.i45.13 ], [ %gepdiff58, %.lr.ph.i45.12 ], [ %gepdiff58, %.lr.ph.i45.11 ], [ %gepdiff58, %.lr.ph.i45.10 ], [ %gepdiff58, %.lr.ph.i45.9 ], [ %gepdiff58, %.lr.ph.i45.8 ], [ %gepdiff58, %.lr.ph.i45.7 ], [ %gepdiff58, %.lr.ph.i45.6 ], [ %gepdiff58, %.lr.ph.i45.5 ], [ %gepdiff58, %.lr.ph.i45.4 ], [ %gepdiff58, %.lr.ph.i45.3 ], [ %gepdiff58, %.lr.ph.i45.2 ], [ %gepdiff58, %.lr.ph.i45.1 ], [ %gepdiff58, %.lr.ph.preheader.i42 ], [ %gepdiff58125, %.lr.ph.preheader.i42.thread ] ; 4 uses
  %i.gq = call i64 @write(i32 noundef %i.f, ptr noundef nonnull %i.q, i64 noundef %gepdiff59.pre-phi) #7 ; 3 uses
  %.not37 = icmp eq i64 %i.gq, %gepdiff59.pre-phi
  br i1 %.not37, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %line_starts_with.exit50.thread56
  %i.gr = icmp slt i64 %i.gq, 0
  br i1 %i.gr, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.a) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gs = trunc i64 %i.gq to i32
  %i.gt = trunc i64 %gepdiff59.pre-phi to i32
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.a, i32 noundef %i.gs, i32 noundef %i.gt) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.az:                                            ; preds = %line_starts_with.exit50.thread56
  %i.gu = call i32 @pg_checksum_update(ptr noundef nonnull %4, ptr noundef nonnull %i.q, i64 noundef %gepdiff59.pre-phi) #7
  %i.gv = icmp slt i32 %i.gu, 0
  br i1 %i.gv, label %bb.ba, label %.line_starts_with.exit.thread_crit_edge

.line_starts_with.exit.thread_crit_edge:          ; preds = %bb.az
  %.pre = load i32, ptr %i.i, align 8
  br label %line_starts_with.exit.thread

bb.ba:                                            ; preds = %bb.az
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.a) #7
  call void @exit(i32 noundef 1) #8
  unreachable

line_starts_with.exit.thread:                     ; preds = %.lr.ph.i38.21, %bb.av, %.line_starts_with.exit.thread_crit_edge, %line_starts_with.exit50, %line_starts_with.exit
  %i.gw = phi i32 [ %.pre, %.line_starts_with.exit.thread_crit_edge ], [ %i.m, %bb.av ], [ %i.m, %line_starts_with.exit ], [ %i.m, %line_starts_with.exit50 ], [ %i.m, %.lr.ph.i38.21 ] ; 2 uses
  store i32 %.08.i, ptr %i.h, align 8
  %i.gx = icmp slt i32 %.08.i, %i.gw
  br i1 %i.gx, label %.lr.ph.i, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %line_starts_with.exit.thread, %.preheader
  %i.gy = call i32 @close(i32 noundef %i.f) #7
  %.not = icmp eq i32 %i.gy, 0
  br i1 %.not, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.a) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.bc:                                            ; preds = %._crit_edge
  %i.gz = call i32 @pg_checksum_final(ptr noundef nonnull %4, ptr noundef nonnull %i.b) #7
  %.not36 = icmp eq ptr %3, null
  br i1 %.not36, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.ha = call i32 @stat(ptr noundef nonnull %i.a, ptr noundef nonnull %5) #7
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.a) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.hd = load i64, ptr %i.hc, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.hf = load i64, ptr %i.he, align 8
  call void @add_file_to_manifest(ptr noundef nonnull %3, ptr noundef nonnull @.str.21, i64 noundef %i.hd, i64 noundef %i.hf, i32 noundef %2, i32 noundef %i.gz, ptr noundef nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare i32 @pg_checksum_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

declare i32 @pg_checksum_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 @pg_checksum_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare void @add_file_to_manifest(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { cold noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
end_hunk_1
