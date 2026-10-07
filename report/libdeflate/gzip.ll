Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/gzip?download=true
inline.NumInlined: 16
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.file_stream = type { i32, ptr, i8, ptr, ptr, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.options = type { i8, i8, i8, i8, i8, i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"1::2::3::4::5::6::7::8::9::cdfhknqS:tV\00", align 1
@toptarg = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@suppress_warnings = external local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"invalid suffix\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@toptind = external local_unnamed_addr global i32, align 4
@prog_invocation_name = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"gunzip\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"libdeflate-gunzip\00", align 1
@.str.5 = private unnamed_addr constant [702 x i8] c"Usage: %s [-LEVEL] [-cdfhkqtV] [-S SUF] FILE...\0ACompress or decompress the specified FILEs.\0A\0AOptions:\0A  -1        fastest (worst) compression\0A  -6        medium compression (default)\0A  -12       slowest (best) compression\0A  -c        write to standard output\0A  -d        decompress\0A  -f        overwrite existing output files; (de)compress hard-linked files;\0A            allow reading/writing compressed data from/to terminal;\0A            with gunzip -c, pass through non-gzipped data\0A  -h        print this help\0A  -k        don't delete input files\0A  -q        suppress warnings\0A  -S SUF    use suffix SUF instead of .gz\0A  -t        test file integrity\0A  -V        show version and legal information\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"\22%s\22 does not end with the %s suffix -- skipping\00", align 1
@.str.8 = private unnamed_addr constant [87 x i8] c"Refusing to read compressed data from terminal.  Use -f to override.\0AFor help, use -h.\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"%s: unable to stat file\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"%s is %s -- skipping\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"a directory\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"not a regular file\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"%s has multiple hard links -- skipping (use -f to process anyway)\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"%s: not in gzip format\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"%s: file is probably too large to be processed by this program\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"Bug in libdeflate_gzip_decompress_ex(): data expanded too much!\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"%s: file corrupt or too large to be processed by this program\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"%s: file corrupt or not in gzip format\00", align 1
@.str.19 = private unnamed_addr constant [72 x i8] c"Bug in libdeflate_gzip_decompress_ex(): impossible actual_nbytes value!\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"%s: unable to preserve mode\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"%s: unable to preserve owner and group\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"%s: unable to preserve timestamps\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"%s: already has %s suffix -- skipping\00", align 1
@.str.24 = private unnamed_addr constant [85 x i8] c"Refusing to write compressed data to terminal. Use -f to override.\0AFor help, use -h.\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"Bug in libdeflate_gzip_compress_bound()!\00", align 1
@str = private unnamed_addr constant [259 x i8] c"gzip compression program v1.26\0ACopyright 2016 Eric Biggers\0A\0AThis program is free software which may be modified and/or redistributed\0Aunder the terms of the MIT license.  There is NO WARRANTY, to the extent\0Apermitted by law.  See the COPYING file for details.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.file_stream, align 8        ; 10 uses
  %3 = alloca %struct.file_stream, align 8        ; 8 uses
  %4 = alloca %struct.stat, align 8               ; 7 uses
  %5 = alloca %struct.file_stream, align 8        ; 11 uses
  %6 = alloca %struct.file_stream, align 8        ; 7 uses
  %7 = alloca %struct.stat, align 8               ; 8 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %8 = alloca %struct.options, align 8            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  tail call void @begin_program(ptr noundef %1) #11
  %i.b = load ptr, ptr @prog_invocation_name, align 8, !tbaa !30 ; 2 uses
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(7) @.str.3) #12
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %is_gunzip.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(18) @.str.4) #12
  %i.f = icmp eq i32 %i.e, 0
  %i.g = zext i1 %i.f to i8
  br label %is_gunzip.exit

is_gunzip.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i8 [ 1, %bb.a ], [ %i.g, %bb.b ]    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 3
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %is_gunzip.exit
  %i.n = phi i32 [ -1, %is_gunzip.exit ], [ %.be, %.backedge ] ; 9 uses
  %i.o = phi i8 [ 0, %is_gunzip.exit ], [ %.be455, %.backedge ] ; 9 uses
  %i.p = phi i8 [ 0, %is_gunzip.exit ], [ %.be456, %.backedge ] ; 9 uses
  %i.q = phi ptr [ @.str, %is_gunzip.exit ], [ %.be457, %.backedge ] ; 9 uses
  %i.r = phi i8 [ 0, %is_gunzip.exit ], [ %.be458, %.backedge ] ; 8 uses
  %i.s = phi i8 [ %.0.i, %is_gunzip.exit ], [ %.be459, %.backedge ] ; 8 uses
  %i.t = phi i8 [ 0, %is_gunzip.exit ], [ %.be460, %.backedge ] ; 9 uses
  %i.u = phi ptr [ @.str, %is_gunzip.exit ], [ %.be461, %.backedge ] ; 18 uses
  %i.v = phi i32 [ -1, %is_gunzip.exit ], [ %.be462, %.backedge ] ; 9 uses
  %i.w = phi i8 [ 0, %is_gunzip.exit ], [ %.be463, %.backedge ] ; 10 uses
  %i.x = phi i8 [ 0, %is_gunzip.exit ], [ %.be464, %.backedge ] ; 10 uses
  %i.y = phi i8 [ %.0.i, %is_gunzip.exit ], [ %.be465, %.backedge ] ; 8 uses
  %i.z = phi i8 [ 0, %is_gunzip.exit ], [ %.be466, %.backedge ] ; 9 uses
  %i.aa = tail call i32 @tgetopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1) #11 ; 2 uses
  switch i32 %i.aa, label %bb.o [
    i32 -1, label %bb.p
    i32 49, label %bb.d
    i32 50, label %bb.d
    i32 51, label %bb.d
    i32 52, label %bb.d
    i32 53, label %bb.d
    i32 54, label %bb.d
    i32 55, label %bb.d
    i32 56, label %bb.d
    i32 57, label %bb.d
    i32 99, label %bb.e
    i32 100, label %bb.f
    i32 102, label %bb.g
    i32 104, label %bb.h
    i32 107, label %bb.i
    i32 110, label %.backedge
    i32 113, label %bb.j
    i32 83, label %bb.k
    i32 116, label %bb.m
    i32 86, label %bb.n
  ]

.backedge:                                        ; preds = %bb.c, %bb.k, %bb.d, %bb.m, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e
  %.be = phi i32 [ %i.n, %bb.c ], [ %i.n, %bb.k ], [ %i.ad, %bb.d ], [ %i.n, %bb.m ], [ %i.n, %bb.j ], [ %i.n, %bb.i ], [ %i.n, %bb.g ], [ %i.n, %bb.f ], [ %i.n, %bb.e ]
  %.be455 = phi i8 [ %i.o, %bb.c ], [ %i.o, %bb.k ], [ %i.o, %bb.d ], [ %i.o, %bb.m ], [ %i.o, %bb.j ], [ %i.o, %bb.i ], [ 1, %bb.g ], [ %i.o, %bb.f ], [ %i.o, %bb.e ]
  %.be456 = phi i8 [ %i.p, %bb.c ], [ %i.p, %bb.k ], [ %i.p, %bb.d ], [ %i.p, %bb.m ], [ %i.p, %bb.j ], [ 1, %bb.i ], [ %i.p, %bb.g ], [ %i.p, %bb.f ], [ %i.p, %bb.e ]
  %.be457 = phi ptr [ %i.q, %bb.c ], [ %i.ai, %bb.k ], [ %i.q, %bb.d ], [ %i.q, %bb.m ], [ %i.q, %bb.j ], [ %i.q, %bb.i ], [ %i.q, %bb.g ], [ %i.q, %bb.f ], [ %i.q, %bb.e ]
  %.be458 = phi i8 [ %i.r, %bb.c ], [ %i.r, %bb.k ], [ %i.r, %bb.d ], [ 1, %bb.m ], [ %i.r, %bb.j ], [ %i.r, %bb.i ], [ %i.r, %bb.g ], [ %i.r, %bb.f ], [ 1, %bb.e ]
  %.be459 = phi i8 [ %i.s, %bb.c ], [ %i.s, %bb.k ], [ %i.s, %bb.d ], [ 1, %bb.m ], [ %i.s, %bb.j ], [ %i.s, %bb.i ], [ %i.s, %bb.g ], [ 1, %bb.f ], [ %i.s, %bb.e ]
  %.be460 = phi i8 [ %i.t, %bb.c ], [ %i.t, %bb.k ], [ %i.t, %bb.d ], [ 1, %bb.m ], [ %i.t, %bb.j ], [ %i.t, %bb.i ], [ %i.t, %bb.g ], [ %i.t, %bb.f ], [ %i.t, %bb.e ]
  %.be461 = phi ptr [ %i.u, %bb.c ], [ %i.ai, %bb.k ], [ %i.u, %bb.d ], [ %i.u, %bb.m ], [ %i.u, %bb.j ], [ %i.u, %bb.i ], [ %i.u, %bb.g ], [ %i.u, %bb.f ], [ %i.u, %bb.e ]
  %.be462 = phi i32 [ %i.v, %bb.c ], [ %i.v, %bb.k ], [ %i.ad, %bb.d ], [ %i.v, %bb.m ], [ %i.v, %bb.j ], [ %i.v, %bb.i ], [ %i.v, %bb.g ], [ %i.v, %bb.f ], [ %i.v, %bb.e ]
  %.be463 = phi i8 [ %i.w, %bb.c ], [ %i.w, %bb.k ], [ %i.w, %bb.d ], [ %i.w, %bb.m ], [ %i.w, %bb.j ], [ 1, %bb.i ], [ %i.w, %bb.g ], [ %i.w, %bb.f ], [ %i.w, %bb.e ]
  %.be464 = phi i8 [ %i.x, %bb.c ], [ %i.x, %bb.k ], [ %i.x, %bb.d ], [ %i.x, %bb.m ], [ %i.x, %bb.j ], [ %i.x, %bb.i ], [ 1, %bb.g ], [ %i.x, %bb.f ], [ %i.x, %bb.e ]
  %.be465 = phi i8 [ %i.y, %bb.c ], [ %i.y, %bb.k ], [ %i.y, %bb.d ], [ 1, %bb.m ], [ %i.y, %bb.j ], [ %i.y, %bb.i ], [ %i.y, %bb.g ], [ 1, %bb.f ], [ %i.y, %bb.e ]
  %.be466 = phi i8 [ %i.z, %bb.c ], [ %i.z, %bb.k ], [ %i.z, %bb.d ], [ 1, %bb.m ], [ %i.z, %bb.j ], [ %i.z, %bb.i ], [ %i.z, %bb.g ], [ %i.z, %bb.f ], [ 1, %bb.e ]
  br label %bb.c, !llvm.loop !26

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.ab = trunc nuw nsw i32 %i.aa to i8
  %i.ac = load ptr, ptr @toptarg, align 8, !tbaa !30
  %i.ad = tail call i32 @parse_compression_level(i8 noundef signext %i.ab, ptr noundef %i.ac) #11 ; 3 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %.thread71, label %.backedge

bb.e:                                             ; preds = %bb.c
  br label %.backedge

bb.f:                                             ; preds = %bb.c
  br label %.backedge

bb.g:                                             ; preds = %bb.c
  br label %.backedge

bb.h:                                             ; preds = %bb.c
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !32
  %i.ag = load ptr, ptr @prog_invocation_name, align 8, !tbaa !30
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.5, ptr noundef %i.ag) #11 ; 0 uses
  br label %.thread71

bb.i:                                             ; preds = %bb.c
  br label %.backedge

bb.j:                                             ; preds = %bb.c
  store i8 1, ptr @suppress_warnings, align 1, !tbaa !33
  br label %.backedge

bb.k:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr @toptarg, align 8, !tbaa !30 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %.backedge

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @msg(ptr noundef nonnull @.str.2) #11
  br label %.thread71

bb.m:                                             ; preds = %bb.c
  br label %.backedge

bb.n:                                             ; preds = %bb.c
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %.thread71

bb.o:                                             ; preds = %bb.c
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.am = load ptr, ptr @prog_invocation_name, align 8, !tbaa !30
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.5, ptr noundef %i.am) #13 ; 0 uses
  br label %.thread71

bb.p:                                             ; preds = %bb.c
  store i8 %i.t, ptr %i.k, align 4
  store i8 %i.s, ptr %i.h, align 1
  store i8 %i.r, ptr %8, align 8
  store ptr %i.q, ptr %i.m, align 8
  store i8 %i.p, ptr %i.j, align 1
  store i8 %i.o, ptr %i.i, align 2
  store i32 %i.n, ptr %i.l, align 8
  %i.ao = load i32, ptr @toptind, align 4, !tbaa !34 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ap ; 8 uses
  %i.ar = sub nsw i32 %0, %i.ao                   ; 10 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.loopexit, label %.preheader81

.preheader81:                                     ; preds = %bb.p
  %i.at = icmp sgt i32 %i.ar, 0
  br i1 %i.at, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader81
  %wide.trip.count = zext nneg i32 %i.ar to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.au = icmp eq i32 %i.ar, 1
  br i1 %i.au, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.u ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.u ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !30 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = icmp eq i8 %i.ax, 45
  br i1 %i.ay, label %bb.q, label %.lr.ph.1

bb.q:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %.lr.ph.1

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %i.av, align 8, !tbaa !30
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.q, %bb.r
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !30 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = icmp eq i8 %i.bf, 45
  br i1 %i.bg, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.lr.ph.1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %i.bd, align 8, !tbaa !30
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !27

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod545 = trunc i32 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod545)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.epil.init ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !13
  %i.bn = icmp eq i8 %i.bm, 45
  br i1 %i.bn, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %.lr.ph.epil.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %i.bk, align 8, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.w, %bb.v, %.lr.ph.epil.preheader, %.preheader81, %bb.p
  %.045 = phi i32 [ 1, %bb.p ], [ %i.ar, %.preheader81 ], [ %i.ar, %.lr.ph.epil.preheader ], [ %i.ar, %bb.v ], [ %i.ar, %bb.w ], [ %i.ar, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %.044 = phi ptr [ %i.a, %bb.p ], [ %i.aq, %.preheader81 ], [ %i.aq, %.lr.ph.epil.preheader ], [ %i.aq, %bb.v ], [ %i.aq, %bb.w ], [ %i.aq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %i.br = trunc nuw i8 %i.y to i1
  br i1 %i.br, label %bb.x, label %bb.bf

bb.x:                                             ; preds = %.loopexit
  %i.bs = tail call ptr @alloc_decompressor() #11 ; 3 uses
  %.not54 = icmp eq ptr %i.bs, null
  br i1 %.not54, label %.thread71, label %.preheader

.preheader:                                       ; preds = %bb.x
  %i.bt = icmp sgt i32 %.045, 0
  br i1 %i.bt, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %.preheader
  %i.bu = trunc nuw i8 %i.z to i1                 ; 4 uses
  %i.bv = trunc nuw i8 %i.x to i1                 ; 2 uses
  %i.bw = trunc nuw i8 %i.w to i1                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 48
  %wide.trip.count269 = zext nneg i32 %.045 to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph170, %decompress_file.exit
  %indvars.iv266 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next267, %decompress_file.exit ] ; 2 uses
  %.039169 = phi i32 [ 0, %.lr.ph170 ], [ %i.em, %decompress_file.exit ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.044, i64 %indvars.iv266
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !30 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %.not.i = icmp eq ptr %i.cd, null
  br i1 %.not.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.cd) #12 ; 2 uses
  %i.cf = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.u) #12 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ce, %i.cf
  br i1 %.not.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cg = sub nuw i64 %i.ce, %i.cf                ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cg
  %i.ci = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ch, ptr noundef nonnull readonly dereferenceable(1) %i.u) #12
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %get_suffix.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ck = call i32 @stat64(ptr noundef nonnull %i.cd, ptr noundef nonnull %7) #11
  %.not93.i = icmp eq i32 %i.ck, 0
  br i1 %.not93.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = tail call ptr @__errno_location() #14
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !34
  %i.cn = icmp eq i32 %i.cm, 2
  br i1 %i.cn, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.co = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.cd) #12 ; 3 uses
  %i.cp = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.u) #12
  %i.cq = add i64 %i.cp, 1                        ; 2 uses
  %i.cr = add i64 %i.cq, %i.co
  %i.cs = call ptr @xmalloc(i64 noundef %i.cr) #11 ; 4 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %decompress_file.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr nonnull readonly align 1 %i.cd, i64 %i.co, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull readonly align 1 %i.u, i64 %i.cq, i1 false)
  %spec.select.i = select i1 %i.bu, ptr null, ptr %i.cd
  br label %.thread.i

bb.af:                                            ; preds = %bb.ac, %bb.ab
  br i1 %i.bu, label %.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.u) #11
  br label %decompress_file.exit

get_suffix.exit.i:                                ; preds = %bb.aa
  br i1 %i.bu, label %.thread.i, label %bb.ah

bb.ah:                                            ; preds = %get_suffix.exit.i
  %i.cv = add nsw i64 %i.cg, 1
  %i.cw = call ptr @xmalloc(i64 noundef %i.cv) #11 ; 4 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %decompress_file.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr nonnull align 1 %i.cd, i64 %i.cg, i1 false)
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cg
  store i8 0, ptr %i.cy, align 1, !tbaa !13
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ai, %get_suffix.exit.i, %bb.af, %bb.ae, %bb.y
  %.278.i = phi ptr [ null, %bb.y ], [ %i.cd, %get_suffix.exit.i ], [ %i.cd, %bb.af ], [ %i.cd, %bb.ai ], [ %i.cs, %bb.ae ] ; 8 uses
  %.275.i = phi ptr [ null, %bb.y ], [ null, %get_suffix.exit.i ], [ null, %bb.af ], [ %i.cw, %bb.ai ], [ %spec.select.i, %bb.ae ] ; 8 uses
  br i1 %i.bv, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %.thread.i
  %i.cz = call i32 @xopen_for_read(ptr noundef %.278.i, i1 noundef zeroext true, ptr noundef nonnull %5) #11 ; 2 uses
  %.not94.i = icmp eq i32 %i.cz, 0
  br i1 %.not94.i, label %.thread130.i, label %bb.bb

.thread:                                          ; preds = %.thread.i
  %i.da = call i32 @xopen_for_read(ptr noundef %.278.i, i1 noundef zeroext %i.bu, ptr noundef nonnull %5) #11 ; 2 uses
  %.not94.i69 = icmp eq i32 %i.da, 0
  br i1 %.not94.i69, label %bb.ak, label %bb.bb

bb.ak:                                            ; preds = %.thread
  %i.db = load i32, ptr %5, align 8, !tbaa !16
  %i.dc = call i32 @isatty(i32 noundef %i.db) #11
  %.not95.i = icmp eq i32 %i.dc, 0
  br i1 %.not95.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @msg(ptr noundef nonnull @.str.8) #11
  br label %stat_file.exit.thread.i

bb.am:                                            ; preds = %bb.ak
  %i.dd = icmp eq ptr %.278.i, null
  %or.cond.i = or i1 %i.dd, %i.bw
  %i.de = icmp eq ptr %.275.i, null
  %spec.select102.i = select i1 %or.cond.i, i1 true, i1 %i.de
  br label %.thread130.i

.thread130.i:                                     ; preds = %bb.aj, %bb.am
  %i.df = phi i1 [ true, %bb.aj ], [ %spec.select102.i, %bb.am ]
  %i.dg = load i32, ptr %5, align 8, !tbaa !16
  %i.dh = call i32 @fstat64(i32 noundef %i.dg, ptr noundef nonnull %7) #11
  %.not.i104.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i104.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.thread130.i
  %i.di = load ptr, ptr %i.bx, align 8, !tbaa !17
  call void (ptr, ...) @msg(ptr noundef nonnull @.str.9, ptr noundef %i.di) #11
  br label %stat_file.exit.thread.i

bb.ao:                                            ; preds = %.thread130.i
  %i.dj = load i32, ptr %i.by, align 8, !tbaa !20
  %i.dk = and i32 %i.dj, 61440                    ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 32768
  %i.dm = load i8, ptr %i.bz, align 8, !range !21
  %i.dn = trunc nuw i8 %i.dm to i1
  %or.cond119.i = select i1 %i.dl, i1 true, i1 %i.dn
  br i1 %or.cond119.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.do = load ptr, ptr %i.bx, align 8, !tbaa !17
  %i.dp = icmp eq i32 %i.dk, 16384
  %i.dq = select i1 %i.dp, ptr @.str.11, ptr @.str.12
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.10, ptr noundef %i.do, ptr noundef nonnull %i.dq) #11
  br label %stat_file.exit.thread.i

bb.aq:                                            ; preds = %bb.ao
  %i.dr = load i64, ptr %i.ca, align 8, !tbaa !35
  %i.ds = icmp ult i64 %i.dr, 2
  %or.cond.i.i = or i1 %i.df, %i.ds
  br i1 %or.cond.i.i, label %stat_file.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dt = load ptr, ptr %i.bx, align 8, !tbaa !17
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.13, ptr noundef %i.dt) #11
  br label %stat_file.exit.thread.i

stat_file.exit.i:                                 ; preds = %bb.aq
  %i.du = call i32 @xopen_for_write(ptr noundef %.275.i, i1 noundef zeroext %i.bv, ptr noundef nonnull %6) #11 ; 2 uses
  %.not97.i = icmp eq i32 %i.du, 0
  br i1 %.not97.i, label %bb.as, label %stat_file.exit.thread.i

bb.as:                                            ; preds = %stat_file.exit.i
  %i.dv = load i64, ptr %i.cb, align 8, !tbaa !36
  %i.dw = call i32 @map_file_contents(ptr noundef nonnull %5, i64 noundef %i.dv) #11 ; 2 uses
end_hunk_0
