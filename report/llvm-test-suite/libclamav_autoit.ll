Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_autoit?download=true
inline.NumInlined: 47
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MT = type { [624 x i32], i32, ptr }
%struct.LAME = type { i32, i32, [17 x i32] }

@.str = private unnamed_addr constant [17 x i8] c"in scanautoit()\0A\00", align 1, !guid !8
@.str.1 = private unnamed_addr constant [45 x i8] c"autoit: Can't create temporary directory %s\0A\00", align 1, !guid !9
@cli_leavetemps_flag = external local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"autoit: Extracting files to %s\0A\00", align 1, !guid !10
@.str.3 = private unnamed_addr constant [24 x i8] c"autoit: unknown method\0A\00", align 1, !guid !11
@.str.4 = private unnamed_addr constant [50 x i8] c"autoit: no FILE magic found, extraction complete\0A\00", align 1, !guid !12
@cli_debug_flag = external local_unnamed_addr global i8, align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"autoit: magic string '%s'\0A\00", align 1, !guid !13
@.str.6 = private unnamed_addr constant [32 x i8] c"autoit: original filename '%s'\0A\00", align 1, !guid !14
@.str.7 = private unnamed_addr constant [35 x i8] c"autoit: bad file size - giving up\0A\00", align 1, !guid !15
@.str.8 = private unnamed_addr constant [29 x i8] c"autoit: skipping empty file\0A\00", align 1, !guid !16
@.str.9 = private unnamed_addr constant [29 x i8] c"autoit: compressed size: %x\0A\00", align 1, !guid !17
@.str.10 = private unnamed_addr constant [41 x i8] c"autoit: advertised uncompressed size %x\0A\00", align 1, !guid !18
@.str.11 = private unnamed_addr constant [24 x i8] c"autoit: ref chksum: %x\0A\00", align 1, !guid !19
@.str.12 = private unnamed_addr constant [56 x i8] c"autoit: skipping file due to size limit (%u, max: %lu)\0A\00", align 1, !guid !20
@.str.13 = private unnamed_addr constant [66 x i8] c"autoit: failed to read compressed stream. broken/truncated file?\0A\00", align 1, !guid !21
@.str.14 = private unnamed_addr constant [28 x i8] c"autoit: file is compressed\0A\00", align 1, !guid !22
@.str.15 = private unnamed_addr constant [42 x i8] c"autoit: bad magic or unsupported version\0A\00", align 1, !guid !23
@.str.16 = private unnamed_addr constant [37 x i8] c"autoit: uncompressed size again: %x\0A\00", align 1, !guid !24
@.str.17 = private unnamed_addr constant [54 x i8] c"autoit: decompression error - partial file may exist\0A\00", align 1, !guid !25
@.str.18 = private unnamed_addr constant [32 x i8] c"autoit: file is not compressed\0A\00", align 1, !guid !26
@.str.19 = private unnamed_addr constant [15 x i8] c"%s/autoit.%.3u\00", align 1, !guid !27
@.str.20 = private unnamed_addr constant [30 x i8] c"autoit: Can't create file %s\0A\00", align 1, !guid !28
@.str.21 = private unnamed_addr constant [31 x i8] c"autoit: cannot write %d bytes\0A\00", align 1, !guid !29
@.str.22 = private unnamed_addr constant [30 x i8] c"autoit: file extracted to %s\0A\00", align 1, !guid !30
@.str.23 = private unnamed_addr constant [37 x i8] c"autoit: file successfully extracted\0A\00", align 1, !guid !31
@.str.24 = private unnamed_addr constant [39 x i8] c"autoit: files limit reached (max: %u)\0A\00", align 1, !guid !32
@.str.25 = private unnamed_addr constant [47 x i8] c"autoit: getbits() - not enough bits available\0A\00", align 1, !guid !33
@__const.ea06.prefixes = private unnamed_addr constant [8 x i8] c"\00\00@$\00.\22#", align 1, !guid !34
@.str.26 = private unnamed_addr constant [2 x i8] c",\00", align 1, !guid !35
@.str.27 = private unnamed_addr constant [2 x i8] c"=\00", align 1, !guid !36
@.str.28 = private unnamed_addr constant [2 x i8] c">\00", align 1, !guid !37
@.str.29 = private unnamed_addr constant [2 x i8] c"<\00", align 1, !guid !38
@.str.30 = private unnamed_addr constant [3 x i8] c"<>\00", align 1, !guid !39
@.str.31 = private unnamed_addr constant [3 x i8] c">=\00", align 1, !guid !40
@.str.32 = private unnamed_addr constant [3 x i8] c"<=\00", align 1, !guid !41
@.str.33 = private unnamed_addr constant [2 x i8] c"(\00", align 1, !guid !42
@.str.34 = private unnamed_addr constant [2 x i8] c")\00", align 1, !guid !43
@.str.35 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !guid !44
@.str.36 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !guid !45
@.str.37 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !guid !46
@.str.38 = private unnamed_addr constant [2 x i8] c"*\00", align 1, !guid !47
@.str.39 = private unnamed_addr constant [2 x i8] c"&\00", align 1, !guid !48
@.str.40 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !guid !49
@.str.41 = private unnamed_addr constant [2 x i8] c"]\00", align 1, !guid !50
@.str.42 = private unnamed_addr constant [3 x i8] c"==\00", align 1, !guid !51
@.str.43 = private unnamed_addr constant [2 x i8] c"^\00", align 1, !guid !52
@.str.44 = private unnamed_addr constant [3 x i8] c"+=\00", align 1, !guid !53
@.str.45 = private unnamed_addr constant [3 x i8] c"-=\00", align 1, !guid !54
@.str.46 = private unnamed_addr constant [3 x i8] c"/=\00", align 1, !guid !55
@.str.47 = private unnamed_addr constant [3 x i8] c"*=\00", align 1, !guid !56
@.str.48 = private unnamed_addr constant [3 x i8] c"&=\00", align 1, !guid !57
@__const.ea06.opers = private unnamed_addr constant [23 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], align 16, !guid !58
@.str.49 = private unnamed_addr constant [40 x i8] c"autoit: no FILE magic found, giving up\0A\00", align 1, !guid !59
@.str.51 = private unnamed_addr constant [40 x i8] c"autoit: magic string too long to print\0A\00", align 1, !guid !60
@.str.52 = private unnamed_addr constant [27 x i8] c"autoit: file is too short\0A\00", align 1, !guid !61
@.str.53 = private unnamed_addr constant [33 x i8] c"autoit: script has got %u lines\0A\00", align 1, !guid !62
@.str.54 = private unnamed_addr constant [37 x i8] c"autoit: not enough space for an int\0A\00", align 1, !guid !63
@.str.55 = private unnamed_addr constant [8 x i8] c"0x%08x \00", align 1, !guid !64
@.str.56 = private unnamed_addr constant [39 x i8] c"autoit: not enough space for an int64\0A\00", align 1, !guid !65
@.str.57 = private unnamed_addr constant [10 x i8] c"0x%016lx \00", align 1, !guid !66
@.str.58 = private unnamed_addr constant [39 x i8] c"autoit: not enough space for a double\0A\00", align 1, !guid !67
@.str.59 = private unnamed_addr constant [4 x i8] c"%g \00", align 1, !guid !68
@.str.60 = private unnamed_addr constant [35 x i8] c"autoit: not enough space for size\0A\00", align 1, !guid !69
@.str.61 = private unnamed_addr constant [54 x i8] c"autoit: size too big - needed %d, total %d, avail %d\0A\00", align 1, !guid !70
@.str.62 = private unnamed_addr constant [4 x i8] c"%s \00", align 1, !guid !71
@.str.63 = private unnamed_addr constant [31 x i8] c"autoit: found unknown op (%x)\0A\00", align 1, !guid !72
@.str.64 = private unnamed_addr constant [58 x i8] c"autoit: decompilation aborted - partial script may exist\0A\00", align 1, !guid !73
@.str.65 = private unnamed_addr constant [28 x i8] c"autoit: %s extracted to %s\0A\00", align 1, !guid !74
@.str.66 = private unnamed_addr constant [7 x i8] c"script\00", align 1, !guid !75
@.str.67 = private unnamed_addr constant [5 x i8] c"file\00", align 1, !guid !76
@.str.68 = private unnamed_addr constant [35 x i8] c"autoit: %s successfully extracted\0A\00", align 1, !guid !77
@.str.69 = private unnamed_addr constant [39 x i8] c"autoit: Files limit reached (max: %u)\0A\00", align 1, !guid !78

; Function Attrs: nounwind uwtable
define dso_local range(i32 -123, 2) i32 @cli_scanautoit(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !guid !104 {
bb.a:
  %i.a = alloca [600 x i8], align 16              ; 32 uses
  %i.b = alloca [1024 x i8], align 16             ; 9 uses
  %i.c = alloca [300 x i8], align 16              ; 33 uses
  %i.d = alloca [1024 x i8], align 16             ; 9 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.f = tail call i64 @lseek(i32 noundef %0, i64 noundef %2, i32 noundef 0) #12 ; 0 uses
  %i.g = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.e, i32 noundef 1) #12
  %.not = icmp eq i32 %i.g, 1
  br i1 %.not, label %bb.b, label %bb.iv

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #12
  %i.h = call ptr @cli_gentemp(ptr noundef null) #12 ; 8 uses
  %.not18 = icmp eq ptr %i.h, null
  br i1 %.not18, label %bb.iv, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @mkdir(ptr noundef nonnull %i.h, i32 noundef 448) #12
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.h) #12
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.j = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !79
  %.not20 = icmp eq i8 %i.j, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.h) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = load i8, ptr %i.e, align 1, !tbaa !79
  switch i8 %i.k, label %bb.is [
    i8 53, label %bb.h
    i8 54, label %bb.db
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.l = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.c, i32 noundef 16) #12
  %.not.i = icmp eq i32 %i.l, 16
  br i1 %.not.i, label %.preheader470.preheader.i, label %ea05.exit

.preheader470.preheader.i:                        ; preds = %bb.h
  %i.m = load i8, ptr %i.c, align 16, !tbaa !79
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !79
  %i.q = zext i8 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.s = load i8, ptr %i.r, align 2, !tbaa !79
  %i.t = zext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !79
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4, !tbaa !79
  %i.z = zext i8 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !79
  %i.ac = zext i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !79
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !79
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !79
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 9 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !79
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !79
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.at = load i8, ptr %i.as, align 1, !tbaa !79
  %i.au = zext i8 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !79
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !79
  %i.ba = zext i8 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !79
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !79
  %i.bg = zext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bi = add nuw nsw i32 %i.n, 8879
  %i.bj = add nuw nsw i32 %i.bi, %i.q
  %i.bk = add nuw nsw i32 %i.bj, %i.t
  %i.bl = add nuw nsw i32 %i.bk, %i.w
  %i.bm = add nuw nsw i32 %i.bl, %i.z
  %i.bn = add nuw nsw i32 %i.bm, %i.ac
  %i.bo = add nuw nsw i32 %i.bn, %i.af
  %i.bp = add nuw nsw i32 %i.bo, %i.ai
  %i.bq = add nuw nsw i32 %i.bp, %i.al
  %i.br = add nuw nsw i32 %i.bq, %i.ao
  %i.bs = add nuw nsw i32 %i.br, %i.ar
  %i.bt = add nuw nsw i32 %i.bs, %i.au
  %i.bu = add nuw nsw i32 %i.bt, %i.ax
  %i.bv = add nuw nsw i32 %i.bu, %i.ba
  %i.bw = add nuw nsw i32 %i.bv, %i.bd
  %i.bx = add nuw nsw i32 %i.bw, %i.bg
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 1023
  br label %.outer.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.outer.i
  %i.bz = load ptr, ptr %i.bh, align 8, !tbaa !113 ; 2 uses
  %.not155.i = icmp eq ptr %i.bz, null
  br i1 %.not155.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %.backedge.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !117 ; 2 uses
  %i.cc = add i32 %i.cb, -1
  %or.cond186.not.i = icmp ult i32 %i.cc, %.0123.ph.i
  br i1 %or.cond186.not.i, label %bb.da, label %.critedge.i

.critedge.i:                                      ; preds = %bb.i, %.backedge.i
  %i.cd = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.c, i32 noundef 8) #12
  %.not157.i = icmp eq i32 %i.cd, 8
  br i1 %.not157.i, label %bb.j, label %ea05.exit

bb.j:                                             ; preds = %.critedge.i
  %.val196.i = load i32, ptr %i.c, align 16
  %.not158.i = icmp eq i32 %.val196.i, -827298305
  br i1 %.not158.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #12
  br label %ea05.exit

bb.l:                                             ; preds = %bb.j
  %.val195.i = load i32, ptr %i.x, align 4        ; 2 uses
  %i.ce = xor i32 %.val195.i, 10684               ; 6 uses
  %i.cf = icmp slt i32 %.val195.i, 0
  br i1 %i.cf, label %ea05.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = load i8, ptr @cli_debug_flag, align 1, !tbaa !79
  %i.ch = icmp ne i8 %i.cg, 0
  %i.ci = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cj = icmp ult i32 %i.ce, 300
  %or.cond.i = and i1 %i.cj, %i.ch
  br i1 %or.cond.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ck = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.ce) #12
  %.not159.i = icmp eq i32 %i.ck, %i.ce
  br i1 %.not159.i, label %bb.o, label %ea05.exit

bb.o:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ci
  store i8 0, ptr %i.cl, align 1, !tbaa !79
  %i.cm = add nuw nsw i32 %i.ce, 41566
  call fastcc void @MT_decrypt(ptr noundef %i.c, i32 noundef %i.ce, i32 noundef %i.cm)
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.c) #12
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.cn = call i64 @lseek(i32 noundef %0, i64 noundef %i.ci, i32 noundef 1) #12 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.co = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.c, i32 noundef 4) #12
  %.not160.i = icmp eq i32 %i.co, 4
  br i1 %.not160.i, label %bb.r, label %ea05.exit

bb.r:                                             ; preds = %bb.q
  %.val194.i = load i32, ptr %i.c, align 16       ; 2 uses
  %i.cp = xor i32 %.val194.i, 10668               ; 6 uses
  %i.cq = icmp slt i32 %.val194.i, 0
  br i1 %i.cq, label %ea05.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = load i8, ptr @cli_debug_flag, align 1, !tbaa !79
  %i.cs = icmp ne i8 %i.cr, 0
  %i.ct = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cu = icmp ult i32 %i.cp, 300
  %or.cond5.i = and i1 %i.cu, %i.cs
  br i1 %or.cond5.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cv = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.c, i32 noundef %i.cp) #12
  %.not161.i = icmp eq i32 %i.cv, %i.cp
  br i1 %.not161.i, label %bb.u, label %ea05.exit

bb.u:                                             ; preds = %bb.t
  %i.cw = add nuw nsw i32 %i.cp, 62046
  call fastcc void @MT_decrypt(ptr noundef %i.c, i32 noundef %i.cp, i32 noundef %i.cw)
end_hunk_0
begin_hunk_1_@cli_scanautoit:bb.a
bb.co:                                            ; preds = %bb.cn, %.lr.ph.i.i
  %i.akq = phi i32 [ 0, %.lr.ph.i.i ], [ %i.akp, %bb.cn ]
  %i.akr = add i32 %i.akq, %.045.i.i              ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.aks = icmp samesign ult i64 %indvars.iv.next.i.i, %i.akj
  br i1 %i.aks, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !91

._crit_edge.i.i:                                  ; preds = %bb.co
  %i.akt = shl i32 %i.akr, 2
  %.not42.i.i = icmp ult i32 %i.akt, %i.aki
  br i1 %.not42.i.i, label %u2a.exit.i, label %.lr.ph49.preheader.i.i

.lr.ph49.preheader.i.i:                           ; preds = %._crit_edge.i.i, %bb.cm
  %.035.i.i = phi i32 [ %i.akg, %bb.cm ], [ %.sroa.62.1.i, %._crit_edge.i.i ] ; 2 uses
  %.034.i.i = phi ptr [ %i.ake, %bb.cm ], [ %.sroa.0.0.i, %._crit_edge.i.i ]
  %i.aku = zext i32 %.035.i.i to i64
  br label %.lr.ph49.i.i

.lr.ph49.i.i:                                     ; preds = %.lr.ph49.i.i, %.lr.ph49.preheader.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph49.preheader.i.i ], [ %indvars.iv.next54.i.i, %.lr.ph49.i.i ] ; 2 uses
  %.03646.i.i = phi ptr [ %.sroa.0.0.i, %.lr.ph49.preheader.i.i ], [ %i.akx, %.lr.ph49.i.i ] ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 %indvars.iv53.i.i
  %i.akw = load i8, ptr %i.akv, align 1, !tbaa !79
  %i.akx = getelementptr inbounds nuw i8, ptr %.03646.i.i, i64 1
  store i8 %i.akw, ptr %.03646.i.i, align 1, !tbaa !79
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 2 ; 2 uses
  %i.aky = icmp samesign ult i64 %indvars.iv.next54.i.i, %i.aku
  br i1 %i.aky, label %.lr.ph49.i.i, label %u2a.exit.loopexit.i, !llvm.loop !92

u2a.exit.loopexit.i:                              ; preds = %.lr.ph49.i.i
  %i.akz = lshr i32 %.035.i.i, 1
  br label %u2a.exit.i

u2a.exit.i:                                       ; preds = %u2a.exit.loopexit.i, %._crit_edge.i.i, %bb.ch, %.thread845.i
  %.sroa.0.0848.i = phi ptr [ %.sroa.0.0.i, %._crit_edge.i.i ], [ %.sroa.0.0.i, %bb.ch ], [ %.sroa.0.0.i, %u2a.exit.loopexit.i ], [ %i.dz, %.thread845.i ] ; 4 uses
  %.138.i.i = phi i32 [ %.sroa.62.1.i, %._crit_edge.i.i ], [ %.sroa.62.1.i, %bb.ch ], [ %i.akz, %u2a.exit.loopexit.i ], [ 0, %.thread845.i ] ; 3 uses
  %i.ala = add i32 %.0123.ph.i, 1                 ; 2 uses
  %i.alb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1023, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.h, i32 noundef %i.ala) #12 ; 0 uses
  store i8 0, ptr %i.by, align 1, !tbaa !79
  %i.alc = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.d, i32 noundef 578, i32 noundef 448) #12 ; 7 uses
  %i.ald = icmp slt i32 %i.alc, 0
  br i1 %i.ald, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %u2a.exit.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.d) #12
  call void @free(ptr noundef %.sroa.0.0848.i) #12
  br label %ea05.exit

bb.cq:                                            ; preds = %u2a.exit.i
  %i.ale = call i32 @cli_writen(i32 noundef %i.alc, ptr noundef nonnull %.sroa.0.0848.i, i32 noundef %.138.i.i) #12
  %.not182.i = icmp eq i32 %i.ale, %.138.i.i
  br i1 %.not182.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.21, i32 noundef %.138.i.i) #12
  %i.alf = call i32 @close(i32 noundef %i.alc) #12 ; 0 uses
  call void @free(ptr noundef nonnull %.sroa.0.0848.i) #12
  br label %ea05.exit

bb.cs:                                            ; preds = %bb.cq
  call void @free(ptr noundef nonnull %.sroa.0.0848.i) #12
  %i.alg = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !79
  %.not183.i = icmp eq i8 %i.alg, 0
  br i1 %.not183.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.d) #12
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.23) #12
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.alh = call i32 @fsync(i32 noundef %i.alc) #12 ; 0 uses
  %i.ali = call i64 @lseek(i32 noundef %i.alc, i64 noundef 0, i32 noundef 0) #12 ; 0 uses
  %i.alj = call i32 @cli_magic_scandesc(i32 noundef %i.alc, ptr noundef %1) #12
  %i.alk = icmp eq i32 %i.alj, 1
  %i.all = call i32 @close(i32 noundef %i.alc) #12 ; 0 uses
  %i.alm = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !79
  %.not185.i = icmp eq i8 %i.alm, 0               ; 2 uses
  br i1 %i.alk, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  br i1 %.not185.i, label %bb.cx, label %ea05.exit

bb.cx:                                            ; preds = %bb.cw
  %i.aln = call i32 @unlink(ptr noundef nonnull %i.d) #12 ; 0 uses
  br label %ea05.exit

bb.cy:                                            ; preds = %bb.cv
  br i1 %.not185.i, label %bb.cz, label %.outer.i.backedge

bb.cz:                                            ; preds = %bb.cy
  %i.alo = call i32 @unlink(ptr noundef nonnull %i.d) #12 ; 0 uses
  br label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.cz, %bb.cy
  br label %.outer.i, !llvm.loop !84

.outer.i:                                         ; preds = %.outer.i.backedge, %.preheader470.preheader.i
  %.0123.ph.i = phi i32 [ 0, %.preheader470.preheader.i ], [ %i.ala, %.outer.i.backedge ] ; 2 uses
  br label %.backedge.i

bb.da:                                            ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24, i32 noundef %i.cb) #12
  br label %ea05.exit

ea05.exit:                                        ; preds = %.critedge.i, %bb.l, %bb.n, %bb.q, %bb.r, %bb.t, %bb.w, %bb.af, %bb.h, %bb.k, %bb.y, %bb.ah, %bb.ao, %bb.cp, %bb.cr, %bb.cw, %bb.cx, %bb.da
  %.0126.i = phi i32 [ -102, %bb.da ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.ah ], [ -123, %bb.cp ], [ -123, %bb.cr ], [ 1, %bb.cx ], [ -114, %bb.ao ], [ 1, %bb.cw ], [ 0, %bb.y ], [ 0, %.critedge.i ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.t ], [ -114, %bb.af ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.it

bb.db:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.alp = call i64 @lseek(i32 noundef %0, i64 noundef 16, i32 noundef 1) #12 ; 0 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.als = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 4 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.alv = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.alw = getelementptr inbounds nuw i8, ptr %i.b, i64 1023
  br label %.outer.i22

.outer.i22:                                       ; preds = %.outer.i22.backedge, %bb.db
  %.0189.ph.i = phi i32 [ 0, %bb.db ], [ %i.ash, %.outer.i22.backedge ] ; 2 uses
  br label %.backedge.i42

.backedge.i42:                                    ; preds = %.backedge.i42.backedge, %.outer.i22
  %i.alx = load ptr, ptr %i.alq, align 8, !tbaa !113 ; 2 uses
  %.not.i23 = icmp eq ptr %i.alx, null
  br i1 %.not.i23, label %.critedge.i24, label %bb.dc

bb.dc:                                            ; preds = %.backedge.i42
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 4
  %i.alz = load i32, ptr %i.aly, align 4, !tbaa !117 ; 2 uses
  %i.ama = add i32 %i.alz, -1
  %or.cond304.not.i = icmp ult i32 %i.ama, %.0189.ph.i
  br i1 %or.cond304.not.i, label %bb.ir, label %.critedge.i24

.critedge.i24:                                    ; preds = %bb.dc, %.backedge.i42
  %i.amb = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 8) #12
  %.not249.i = icmp eq i32 %i.amb, 8
  br i1 %.not249.i, label %bb.dd, label %ea06.exit

bb.dd:                                            ; preds = %.critedge.i24
  %.val322.i = load i32, ptr %i.a, align 16
  %.not250.i = icmp eq i32 %.val322.i, 1388987243
  br i1 %.not250.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #12
  br label %ea06.exit

bb.df:                                            ; preds = %bb.dd
  %.val321.i = load i32, ptr %i.alr, align 4      ; 2 uses
  %i.amc = xor i32 %.val321.i, 44476              ; 3 uses
  %i.amd = shl i32 %i.amc, 1                      ; 10 uses
  %i.ame = icmp slt i32 %i.amd, 0
  br i1 %i.ame, label %ea06.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.amf = icmp ult i32 %i.amc, 300
  br i1 %i.amf, label %bb.dh, label %bb.do

bb.dh:                                            ; preds = %bb.dg
  %i.amg = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.amd) #12
  %.not251.i = icmp eq i32 %i.amg, %i.amd
  br i1 %.not251.i, label %bb.di, label %ea06.exit

bb.di:                                            ; preds = %bb.dh
  %i.amh = trunc nuw nsw i32 %i.amc to i16
  %i.ami = add nuw nsw i16 %i.amh, -19649
  call fastcc void @LAME_decrypt(ptr noundef %i.a, i32 noundef %i.amd, i16 noundef zeroext %i.ami)
  %i.amj = icmp eq i32 %i.amd, 0
  br i1 %i.amj, label %u2a.exit.i50, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.amk = icmp samesign ult i32 %i.amd, 5
  %i.aml = load i8, ptr %i.a, align 16
  %i.amm = icmp ne i8 %i.aml, -1
  %or.cond691.not833.i = select i1 %i.amk, i1 true, i1 %i.amm
  %i.amn = load i8, ptr %i.als, align 1
  %i.amo = icmp ne i8 %i.amn, -2
  %or.cond694.not830.i = select i1 %or.cond691.not833.i, i1 true, i1 %i.amo
  %i.amp = load i8, ptr %i.alt, align 2
  %.not.i.i = icmp eq i8 %i.amp, 0
  %or.cond827.i = select i1 %or.cond694.not830.i, i1 true, i1 %.not.i.i
  br i1 %or.cond827.i, label %.lr.ph.preheader.i.i51, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.amq = add nsw i32 %i.amd, -2
  br label %.lr.ph49.preheader.i.i43

.lr.ph.preheader.i.i51:                           ; preds = %bb.dj
  %i.amr = call i32 @llvm.umin.i32(i32 %i.amd, i32 20) ; 2 uses
  %i.ams = zext nneg i32 %i.amr to i64
  br label %.lr.ph.i.i52

.lr.ph.i.i52:                                     ; preds = %bb.dm, %.lr.ph.preheader.i.i51
  %indvars.iv.i.i53 = phi i64 [ 0, %.lr.ph.preheader.i.i51 ], [ %indvars.iv.next.i.i56, %bb.dm ] ; 2 uses
  %.045.i.i54 = phi i32 [ 0, %.lr.ph.preheader.i.i51 ], [ %i.ana, %bb.dm ]
  %i.amt = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i53 ; 2 uses
  %i.amu = load i8, ptr %i.amt, align 2, !tbaa !79
  %.not43.i.i55 = icmp eq i8 %i.amu, 0
  br i1 %.not43.i.i55, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i.i52
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amt, i64 1
  %i.amw = load i8, ptr %i.amv, align 1, !tbaa !79
  %i.amx = icmp eq i8 %i.amw, 0
  %i.amy = zext i1 %i.amx to i32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.lr.ph.i.i52
  %i.amz = phi i32 [ 0, %.lr.ph.i.i52 ], [ %i.amy, %bb.dl ]
  %i.ana = add i32 %i.amz, %.045.i.i54            ; 2 uses
  %indvars.iv.next.i.i56 = add nuw nsw i64 %indvars.iv.i.i53, 2 ; 2 uses
  %3 = icmp samesign ult i64 %indvars.iv.next.i.i56, %i.ams
  br i1 %3, label %.lr.ph.i.i52, label %._crit_edge.i.i57, !llvm.loop !91

._crit_edge.i.i57:                                ; preds = %bb.dm
  %i.anb = shl i32 %i.ana, 2
  %.not42.i.i58 = icmp ult i32 %i.anb, %i.amr
  br i1 %.not42.i.i58, label %u2a.exit.i50, label %.lr.ph49.preheader.i.i43

.lr.ph49.preheader.i.i43:                         ; preds = %._crit_edge.i.i57, %bb.dk
  %.035.i.i44 = phi i32 [ %i.amq, %bb.dk ], [ %i.amd, %._crit_edge.i.i57 ] ; 2 uses
  %.034.i.i45 = phi ptr [ %i.alt, %bb.dk ], [ %i.a, %._crit_edge.i.i57 ] ; 9 uses
  %i.anc = call i32 @llvm.umax.i32(i32 %.035.i.i44, i32 2)
  %umax.i = zext nneg i32 %i.anc to i64
  %i.and = add nsw i64 %umax.i, -1
  %i.ane = lshr i64 %i.and, 1
  %i.anf = add nuw nsw i64 %i.ane, 1              ; 2 uses
  %xtraiter = and i64 %i.anf, 7                   ; 3 uses
  %i.ang = icmp ult i32 %.035.i.i44, 15
  br i1 %i.ang, label %.lr.ph49.i.i46.epil.preheader, label %.lr.ph49.preheader.i.i43.new

.lr.ph49.preheader.i.i43.new:                     ; preds = %.lr.ph49.preheader.i.i43
  %unroll_iter.a = and i64 %i.anf, 9223372036854775800
  br label %.lr.ph49.i.i46

.lr.ph49.i.i46:                                   ; preds = %.lr.ph49.i.i46, %.lr.ph49.preheader.i.i43.new
  %indvars.iv53.i.i47 = phi i64 [ 0, %.lr.ph49.preheader.i.i43.new ], [ %indvars.iv.next54.i.i49.7, %.lr.ph49.i.i46 ] ; 9 uses
  %.03646.i.i48 = phi ptr [ %i.a, %.lr.ph49.preheader.i.i43.new ], [ %i.aol, %.lr.ph49.i.i46 ] ; 9 uses
  %niter.a = phi i64 [ 0, %.lr.ph49.preheader.i.i43.new ], [ %niter.next.7, %.lr.ph49.i.i46 ]
  %i.anh = getelementptr inbounds nuw i8, ptr %.034.i.i45, i64 %indvars.iv53.i.i47
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !79
  %i.anj = getelementptr inbounds nuw i8, ptr %.03646.i.i48, i64 1
  store i8 %i.ani, ptr %.03646.i.i48, align 1, !tbaa !79
  %i.ank = getelementptr inbounds nuw i8, ptr %.034.i.i45, i64 %indvars.iv53.i.i47
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 2
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !79
  %i.ann = getelementptr inbounds nuw i8, ptr %.03646.i.i48, i64 2
  store i8 %i.anm, ptr %i.anj, align 1, !tbaa !79
  %i.ano = getelementptr inbounds nuw i8, ptr %.034.i.i45, i64 %indvars.iv53.i.i47
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 4
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !79
  %i.anr = getelementptr inbounds nuw i8, ptr %.03646.i.i48, i64 3
  store i8 %i.anq, ptr %i.ann, align 1, !tbaa !79
  %i.ans = getelementptr inbounds nuw i8, ptr %.034.i.i45, i64 %indvars.iv53.i.i47
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 6
  %i.anu = load i8, ptr %i.ant, align 1, !tbaa !79
  %i.anv = getelementptr inbounds nuw i8, ptr %.03646.i.i48, i64 4
  store i8 %i.anu, ptr %i.anr, align 1, !tbaa !79
  %i.anw = getelementptr inbounds nuw i8, ptr %.034.i.i45, i64 %indvars.iv53.i.i47
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 8
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !79
  %i.anz = getelementptr inbounds nuw i8, ptr %.03646.i.i48, i64 5
  store i8 %i.any, ptr %i.anv, align 1, !tbaa !79
  %i.aoa = getelementptr inbounds nuw i8, ptr %.034.i.i45, i64 %indvars.iv53.i.i47
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 10
  %i.aoc = load i8, ptr %i.aob, align 1, !tbaa !79
  %i.aod = getelementptr inbounds nuw i8, ptr %.03646.i.i48, i64 6
  store i8 %i.aoc, ptr %i.anz, align 1, !tbaa !79
  %i.aoe = getelementptr inbounds nuw i8, ptr %.034.i.i45, i64 %indvars.iv53.i.i47
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 12
  %i.aog = load i8, ptr %i.aof, align 1, !tbaa !79
  %i.aoh = getelementptr inbounds nuw i8, ptr %.03646.i.i48, i64 7
  store i8 %i.aog, ptr %i.aod, align 1, !tbaa !79
  %i.aoi = getelementptr inbounds nuw i8, ptr %.034.i.i45, i64 %indvars.iv53.i.i47
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 14
  %i.aok = load i8, ptr %i.aoj, align 1, !tbaa !79
  %i.aol = getelementptr inbounds nuw i8, ptr %.03646.i.i48, i64 8 ; 2 uses
  store i8 %i.aok, ptr %i.aoh, align 1, !tbaa !79
  %indvars.iv.next54.i.i49.7 = add nuw nsw i64 %indvars.iv53.i.i47, 16 ; 2 uses
  %niter.next.7 = add i64 %niter.a, 8             ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter.a
  br i1 %niter.ncmp.7, label %u2a.exit.i50.loopexit.unr-lcssa, label %.lr.ph49.i.i46, !llvm.loop !92

u2a.exit.i50.loopexit.unr-lcssa:                  ; preds = %.lr.ph49.i.i46
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %u2a.exit.i50, label %.lr.ph49.i.i46.epil.preheader

.lr.ph49.i.i46.epil.preheader:                    ; preds = %u2a.exit.i50.loopexit.unr-lcssa, %.lr.ph49.preheader.i.i43
  %indvars.iv53.i.i47.epil.init = phi i64 [ 0, %.lr.ph49.preheader.i.i43 ], [ %indvars.iv.next54.i.i49.7, %u2a.exit.i50.loopexit.unr-lcssa ]
  %.03646.i.i48.epil.init = phi ptr [ %i.a, %.lr.ph49.preheader.i.i43 ], [ %i.aol, %u2a.exit.i50.loopexit.unr-lcssa ]
  %lcmp.mod783 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod783)
  br label %.lr.ph49.i.i46.epil

.lr.ph49.i.i46.epil:                              ; preds = %.lr.ph49.i.i46.epil, %.lr.ph49.i.i46.epil.preheader
  %indvars.iv53.i.i47.epil = phi i64 [ %indvars.iv53.i.i47.epil.init, %.lr.ph49.i.i46.epil.preheader ], [ %indvars.iv.next54.i.i49.epil, %.lr.ph49.i.i46.epil ] ; 2 uses
  %.03646.i.i48.epil = phi ptr [ %.03646.i.i48.epil.init, %.lr.ph49.i.i46.epil.preheader ], [ %i.aoo, %.lr.ph49.i.i46.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph49.i.i46.epil.preheader ], [ %epil.iter.next, %.lr.ph49.i.i46.epil ]
  %i.aom = getelementptr inbounds nuw i8, ptr %.034.i.i45, i64 %indvars.iv53.i.i47.epil
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !79
  %i.aoo = getelementptr inbounds nuw i8, ptr %.03646.i.i48.epil, i64 1
  store i8 %i.aon, ptr %.03646.i.i48.epil, align 1, !tbaa !79
  %indvars.iv.next54.i.i49.epil = add nuw nsw i64 %indvars.iv53.i.i47.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %u2a.exit.i50, label %.lr.ph49.i.i46.epil, !llvm.loop !93

u2a.exit.i50:                                     ; preds = %u2a.exit.i50.loopexit.unr-lcssa, %.lr.ph49.i.i46.epil, %._crit_edge.i.i57, %bb.di
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a) #12
  %i.aop = icmp eq i32 %.val321.i, 44463
  br i1 %i.aop, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %u2a.exit.i50
  %i.aoq = load i128, ptr %i.a, align 16
  %i.aor = xor i128 112072022528062101447413485049216908862, %i.aoq
  %i.aos = getelementptr i8, ptr %i.a, i64 3
  %i.aot = load i128, ptr %i.aos, align 1
  %i.aou = xor i128 80066441183196353176882849944769418561, %i.aot
  %i.aov = or i128 %i.aor, %i.aou
  %i.aow = icmp ne i128 %i.aov, 0                 ; 2 uses
  %i.aox = zext i1 %i.aow to i32                  ; 0 uses
  br label %bb.dp

bb.do:                                            ; preds = %bb.dg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.51) #12
  %i.aoy = zext nneg i32 %i.amd to i64
  %i.aoz = call i64 @lseek(i32 noundef %0, i64 noundef %i.aoy, i32 noundef 1) #12 ; 0 uses
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %u2a.exit.i50
  %.not275.i = phi i1 [ %i.aow, %bb.dn ], [ true, %bb.do ], [ true, %u2a.exit.i50 ] ; 2 uses
  %i.apa = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 4) #12
  %.not253.i = icmp eq i32 %i.apa, 4
  br i1 %.not253.i, label %bb.dq, label %ea06.exit

bb.dq:                                            ; preds = %bb.dp
  %.val320.i = load i32, ptr %i.a, align 16
  %i.apb = xor i32 %.val320.i, 63520              ; 3 uses
  %i.apc = shl i32 %i.apb, 1                      ; 10 uses
  %i.apd = icmp slt i32 %i.apc, 0
  br i1 %i.apd, label %ea06.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ape = load i8, ptr @cli_debug_flag, align 1, !tbaa !79
  %i.apf = icmp ne i8 %i.ape, 0
  %i.apg = icmp ult i32 %i.apb, 300
  %or.cond.i25 = and i1 %i.apg, %i.apf
  br i1 %or.cond.i25, label %bb.ds, label %bb.dy

bb.ds:                                            ; preds = %bb.dr
  %i.aph = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.apc) #12
  %.not254.i = icmp eq i32 %i.aph, %i.apc
  br i1 %.not254.i, label %bb.dt, label %ea06.exit

bb.dt:                                            ; preds = %bb.ds
  %i.api = trunc nuw nsw i32 %i.apb to i16
  %i.apj = add nuw nsw i16 %i.api, -2951
  call fastcc void @LAME_decrypt(ptr noundef %i.a, i32 noundef %i.apc, i16 noundef zeroext %i.apj)
  %i.apk = zext nneg i32 %i.apc to i64            ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.apk ; 2 uses
  store i8 0, ptr %i.apl, align 2, !tbaa !79
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 1
  store i8 0, ptr %i.apm, align 1, !tbaa !79
  %i.apn = icmp eq i32 %i.apc, 0
  br i1 %i.apn, label %u2a.exit340.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.apo = icmp samesign ult i32 %i.apc, 5
  %i.app = load i8, ptr %i.a, align 16
  %i.apq = icmp ne i8 %i.app, -1
  %or.cond696.not838.i = select i1 %i.apo, i1 true, i1 %i.apq
  %i.apr = load i8, ptr %i.als, align 1
  %i.aps = icmp ne i8 %i.apr, -2
  %or.cond699.not835.i = select i1 %or.cond696.not838.i, i1 true, i1 %i.aps
  %i.apt = load i8, ptr %i.alt, align 2
  %.not.i339.i = icmp eq i8 %i.apt, 0
  %or.cond828.i = select i1 %or.cond699.not835.i, i1 true, i1 %.not.i339.i
  br i1 %or.cond828.i, label %.lr.ph.preheader.i323.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.apu = add nsw i32 %i.apc, -2
  %.pre904.i = zext nneg i32 %i.apu to i64
  br label %.lr.ph49.preheader.i331.i

.lr.ph.preheader.i323.i:                          ; preds = %bb.du
  %i.apv = call i32 @llvm.umin.i32(i32 %i.apc, i32 20) ; 2 uses
  %i.apw = zext nneg i32 %i.apv to i64
  br label %.lr.ph.i324.i

.lr.ph.i324.i:                                    ; preds = %bb.dx, %.lr.ph.preheader.i323.i
  %indvars.iv.i325.i = phi i64 [ 0, %.lr.ph.preheader.i323.i ], [ %indvars.iv.next.i328.i, %bb.dx ] ; 2 uses
  %.045.i326.i = phi i32 [ 0, %.lr.ph.preheader.i323.i ], [ %i.aqe, %bb.dx ]
  %i.apx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i325.i ; 2 uses
  %i.apy = load i8, ptr %i.apx, align 2, !tbaa !79
  %.not43.i327.i = icmp eq i8 %i.apy, 0
  br i1 %.not43.i327.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i324.i
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apx, i64 1
  %i.aqa = load i8, ptr %i.apz, align 1, !tbaa !79
  %i.aqb = icmp eq i8 %i.aqa, 0
  %i.aqc = zext i1 %i.aqb to i32
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.lr.ph.i324.i
  %i.aqd = phi i32 [ 0, %.lr.ph.i324.i ], [ %i.aqc, %bb.dw ]
  %i.aqe = add i32 %i.aqd, %.045.i326.i           ; 2 uses
  %indvars.iv.next.i328.i = add nuw nsw i64 %indvars.iv.i325.i, 2 ; 2 uses
  %4 = icmp samesign ult i64 %indvars.iv.next.i328.i, %i.apw
  br i1 %4, label %.lr.ph.i324.i, label %._crit_edge.i329.i, !llvm.loop !91

._crit_edge.i329.i:                               ; preds = %bb.dx
  %i.aqf = shl i32 %i.aqe, 2
  %.not42.i330.i = icmp ult i32 %i.aqf, %i.apv
  br i1 %.not42.i330.i, label %u2a.exit340.i, label %.lr.ph49.preheader.i331.i

.lr.ph49.preheader.i331.i:                        ; preds = %._crit_edge.i329.i, %bb.dv
  %.pre-phi905.i = phi i64 [ %i.apk, %._crit_edge.i329.i ], [ %.pre904.i, %bb.dv ] ; 2 uses
  %.034.i333.i = phi ptr [ %i.a, %._crit_edge.i329.i ], [ %i.alt, %bb.dv ] ; 9 uses
  %umax900.i = call i64 @llvm.umax.i64(i64 %.pre-phi905.i, i64 2)
  %i.aqg = add nsw i64 %umax900.i, -1
  %i.aqh = lshr i64 %i.aqg, 1
  %i.aqi = add nuw nsw i64 %i.aqh, 1              ; 2 uses
  %xtraiter784 = and i64 %i.aqi, 7                ; 3 uses
  %i.aqj = icmp samesign ult i64 %.pre-phi905.i, 15
  br i1 %i.aqj, label %.lr.ph49.i334.i.epil.preheader, label %.lr.ph49.preheader.i331.i.new

.lr.ph49.preheader.i331.i.new:                    ; preds = %.lr.ph49.preheader.i331.i
  %unroll_iter788 = and i64 %i.aqi, 9223372036854775800
  br label %.lr.ph49.i334.i

.lr.ph49.i334.i:                                  ; preds = %.lr.ph49.i334.i, %.lr.ph49.preheader.i331.i.new
  %indvars.iv53.i335.i = phi i64 [ 0, %.lr.ph49.preheader.i331.i.new ], [ %indvars.iv.next54.i337.i.7, %.lr.ph49.i334.i ] ; 9 uses
  %.03646.i336.i = phi ptr [ %i.a, %.lr.ph49.preheader.i331.i.new ], [ %i.aro, %.lr.ph49.i334.i ] ; 9 uses
  %niter789 = phi i64 [ 0, %.lr.ph49.preheader.i331.i.new ], [ %niter789.next.7, %.lr.ph49.i334.i ]
  %i.aqk = getelementptr inbounds nuw i8, ptr %.034.i333.i, i64 %indvars.iv53.i335.i
  %i.aql = load i8, ptr %i.aqk, align 1, !tbaa !79
  %i.aqm = getelementptr inbounds nuw i8, ptr %.03646.i336.i, i64 1
  store i8 %i.aql, ptr %.03646.i336.i, align 1, !tbaa !79
  %i.aqn = getelementptr inbounds nuw i8, ptr %.034.i333.i, i64 %indvars.iv53.i335.i
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 2
  %i.aqp = load i8, ptr %i.aqo, align 1, !tbaa !79
  %i.aqq = getelementptr inbounds nuw i8, ptr %.03646.i336.i, i64 2
  store i8 %i.aqp, ptr %i.aqm, align 1, !tbaa !79
  %i.aqr = getelementptr inbounds nuw i8, ptr %.034.i333.i, i64 %indvars.iv53.i335.i
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 4
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !79
  %i.aqu = getelementptr inbounds nuw i8, ptr %.03646.i336.i, i64 3
  store i8 %i.aqt, ptr %i.aqq, align 1, !tbaa !79
  %i.aqv = getelementptr inbounds nuw i8, ptr %.034.i333.i, i64 %indvars.iv53.i335.i
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 6
  %i.aqx = load i8, ptr %i.aqw, align 1, !tbaa !79
  %i.aqy = getelementptr inbounds nuw i8, ptr %.03646.i336.i, i64 4
  store i8 %i.aqx, ptr %i.aqu, align 1, !tbaa !79
  %i.aqz = getelementptr inbounds nuw i8, ptr %.034.i333.i, i64 %indvars.iv53.i335.i
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 8
  %i.arb = load i8, ptr %i.ara, align 1, !tbaa !79
  %i.arc = getelementptr inbounds nuw i8, ptr %.03646.i336.i, i64 5
  store i8 %i.arb, ptr %i.aqy, align 1, !tbaa !79
  %i.ard = getelementptr inbounds nuw i8, ptr %.034.i333.i, i64 %indvars.iv53.i335.i
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 10
  %i.arf = load i8, ptr %i.are, align 1, !tbaa !79
  %i.arg = getelementptr inbounds nuw i8, ptr %.03646.i336.i, i64 6
  store i8 %i.arf, ptr %i.arc, align 1, !tbaa !79
  %i.arh = getelementptr inbounds nuw i8, ptr %.034.i333.i, i64 %indvars.iv53.i335.i
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 12
  %i.arj = load i8, ptr %i.ari, align 1, !tbaa !79
  %i.ark = getelementptr inbounds nuw i8, ptr %.03646.i336.i, i64 7
  store i8 %i.arj, ptr %i.arg, align 1, !tbaa !79
  %i.arl = getelementptr inbounds nuw i8, ptr %.034.i333.i, i64 %indvars.iv53.i335.i
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 14
  %i.arn = load i8, ptr %i.arm, align 1, !tbaa !79
  %i.aro = getelementptr inbounds nuw i8, ptr %.03646.i336.i, i64 8 ; 2 uses
  store i8 %i.arn, ptr %i.ark, align 1, !tbaa !79
  %indvars.iv.next54.i337.i.7 = add nuw nsw i64 %indvars.iv53.i335.i, 16 ; 2 uses
  %niter789.next.7 = add i64 %niter789, 8         ; 2 uses
  %niter789.ncmp.7 = icmp eq i64 %niter789.next.7, %unroll_iter788
  br i1 %niter789.ncmp.7, label %u2a.exit340.i.loopexit.unr-lcssa, label %.lr.ph49.i334.i, !llvm.loop !92

u2a.exit340.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph49.i334.i
  %lcmp.mod786.not = icmp eq i64 %xtraiter784, 0
  br i1 %lcmp.mod786.not, label %u2a.exit340.i, label %.lr.ph49.i334.i.epil.preheader

.lr.ph49.i334.i.epil.preheader:                   ; preds = %u2a.exit340.i.loopexit.unr-lcssa, %.lr.ph49.preheader.i331.i
  %indvars.iv53.i335.i.epil.init = phi i64 [ 0, %.lr.ph49.preheader.i331.i ], [ %indvars.iv.next54.i337.i.7, %u2a.exit340.i.loopexit.unr-lcssa ]
  %.03646.i336.i.epil.init = phi ptr [ %i.a, %.lr.ph49.preheader.i331.i ], [ %i.aro, %u2a.exit340.i.loopexit.unr-lcssa ]
  %lcmp.mod787 = icmp ne i64 %xtraiter784, 0
  call void @llvm.assume(i1 %lcmp.mod787)
  br label %.lr.ph49.i334.i.epil

.lr.ph49.i334.i.epil:                             ; preds = %.lr.ph49.i334.i.epil, %.lr.ph49.i334.i.epil.preheader
  %indvars.iv53.i335.i.epil = phi i64 [ %indvars.iv53.i335.i.epil.init, %.lr.ph49.i334.i.epil.preheader ], [ %indvars.iv.next54.i337.i.epil, %.lr.ph49.i334.i.epil ] ; 2 uses
  %.03646.i336.i.epil = phi ptr [ %.03646.i336.i.epil.init, %.lr.ph49.i334.i.epil.preheader ], [ %i.arr, %.lr.ph49.i334.i.epil ] ; 2 uses
  %epil.iter785 = phi i64 [ 0, %.lr.ph49.i334.i.epil.preheader ], [ %epil.iter785.next, %.lr.ph49.i334.i.epil ]
  %i.arp = getelementptr inbounds nuw i8, ptr %.034.i333.i, i64 %indvars.iv53.i335.i.epil
  %i.arq = load i8, ptr %i.arp, align 1, !tbaa !79
  %i.arr = getelementptr inbounds nuw i8, ptr %.03646.i336.i.epil, i64 1
  store i8 %i.arq, ptr %.03646.i336.i.epil, align 1, !tbaa !79
  %indvars.iv.next54.i337.i.epil = add nuw nsw i64 %indvars.iv53.i335.i.epil, 2
  %epil.iter785.next = add i64 %epil.iter785, 1   ; 2 uses
  %epil.iter785.cmp.not = icmp eq i64 %epil.iter785.next, %xtraiter784
  br i1 %epil.iter785.cmp.not, label %u2a.exit340.i, label %.lr.ph49.i334.i.epil, !llvm.loop !94

u2a.exit340.i:                                    ; preds = %u2a.exit340.i.loopexit.unr-lcssa, %.lr.ph49.i334.i.epil, %._crit_edge.i329.i, %bb.dt
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a) #12
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dr
  %i.ars = zext nneg i32 %i.apc to i64
  %i.art = call i64 @lseek(i32 noundef %0, i64 noundef %i.ars, i32 noundef 1) #12 ; 0 uses
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %u2a.exit340.i
  %i.aru = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 13) #12
  %.not255.i = icmp eq i32 %i.aru, 13
  br i1 %.not255.i, label %bb.ea, label %ea06.exit

bb.ea:                                            ; preds = %bb.dz
  %i.arv = load i8, ptr %i.a, align 16, !tbaa !79
  %.val319.i = load i32, ptr %i.als, align 1      ; 3 uses
  %i.arw = xor i32 %.val319.i, 34748              ; 18 uses
  %i.arx = icmp slt i32 %.val319.i, 0
  br i1 %i.arx, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #12
  br label %ea06.exit

bb.ec:                                            ; preds = %bb.ea
  %i.ary = call i64 @lseek(i32 noundef %0, i64 noundef 16, i32 noundef 1) #12 ; 0 uses
  %.not256.i = icmp eq i32 %.val319.i, 34748
  br i1 %.not256.i, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #12
  br label %.backedge.i42.backedge

bb.ee:                                            ; preds = %bb.ec
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, i32 noundef %i.arw) #12
  %.val318.i = load i32, ptr %i.alu, align 1
  %i.arz = xor i32 %.val318.i, 34748
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10, i32 noundef %i.arz) #12
  %.val317.i = load i32, ptr %i.alv, align 1
  %i.asa = xor i32 %.val317.i, 42629
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i32 noundef %i.asa) #12
  %i.asb = load ptr, ptr %i.alq, align 8, !tbaa !113 ; 2 uses
  %.not257.i = icmp eq ptr %i.asb, null
  br i1 %.not257.i, label %bb.ei, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 24
  %i.asd = load i64, ptr %i.asc, align 8, !tbaa !118 ; 3 uses
  %.not258.i = icmp eq i64 %i.asd, 0
  br i1 %.not258.i, label %bb.ei, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ase = zext nneg i32 %i.arw to i64            ; 2 uses
  %i.asf = icmp ult i64 %i.asd, %i.ase
  br i1 %i.asf, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12, i32 noundef %i.arw, i64 noundef %i.asd) #12
  %i.asg = call i64 @lseek(i32 noundef %0, i64 noundef %i.ase, i32 noundef 1) #12 ; 0 uses
  br label %.backedge.i42.backedge

.backedge.i42.backedge:                           ; preds = %bb.eh, %bb.ed
  br label %.backedge.i42, !llvm.loop !95

bb.ei:                                            ; preds = %bb.eg, %bb.ef, %bb.ee
  %i.ash = add i32 %.0189.ph.i, 1                 ; 2 uses
  %i.asi = zext nneg i32 %i.arw to i64
  %i.asj = call ptr @cli_malloc(i64 noundef %i.asi) #12 ; 113 uses
  %.not259.i = icmp eq ptr %i.asj, null
  br i1 %.not259.i, label %ea06.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ask = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.asj, i32 noundef %i.arw) #12
  %.not260.i = icmp eq i32 %i.ask, %i.arw
  br i1 %.not260.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13) #12
  call void @free(ptr noundef nonnull %i.asj) #12
  br label %ea06.exit

bb.el:                                            ; preds = %bb.ej
  call fastcc void @LAME_decrypt(ptr noundef %i.asj, i32 noundef %i.arw, i16 noundef zeroext 9335)
  %i.asl = icmp eq i8 %i.arv, 1
  br i1 %i.asl, label %bb.em, label %.sink.split.i26

bb.em:                                            ; preds = %bb.el
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14) #12
  %.val316.i = load i32, ptr %i.asj, align 1
  %.not261.i = icmp eq i32 %.val316.i, 909132101
  br i1 %.not261.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15) #12
  call void @free(ptr noundef nonnull %i.asj) #12
  br label %.outer.i22.backedge

bb.eo:                                            ; preds = %bb.em
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asj, i64 4
  %i.asn = load i32, ptr %i.asm, align 4, !tbaa !7 ; 2 uses
  %i.aso = call i32 @llvm.bswap.i32(i32 %i.asn)
  %.not262.i = icmp eq i32 %i.asn, 0
  %spec.select700.i = select i1 %.not262.i, i32 %i.arw, i32 %i.aso
  %i.asp = freeze i32 %spec.select700.i           ; 9 uses
  %i.asq = load ptr, ptr %i.alq, align 8, !tbaa !113 ; 2 uses
  %.not263.i = icmp eq ptr %i.asq, null
  br i1 %.not263.i, label %._crit_edge906.i, label %bb.ep

._crit_edge906.i:                                 ; preds = %bb.eo
end_hunk_1
