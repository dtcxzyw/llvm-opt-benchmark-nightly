Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/buildvm_fold?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [31 x i8] c"Error: missing input filename\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Error: cannot open input file '%s': %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"/* This is a generated file. DO NOT EDIT! */\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"static const FoldFunc fold_func[] = {\0A\00", align 1
@lineno = internal unnamed_addr global i32 0, align 4
@funcidx = internal unnamed_addr global i32 0, align 4
@nkeys = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"LJFOLD\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"  fold_%s\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Error: unknown fold definition tag %s%s at line %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"\0A};\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"Error: too many fold rules, increase BUILD_MAX_FOLD.\0A\00", align 1
@foldkeys = internal unnamed_addr global [4096 x i32] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [7 x i8] c"IRFPM_\00", align 1
@irfpm_names = external local_unnamed_addr constant [0 x ptr], align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"IRFL_\00", align 1
@irfield_names = external local_unnamed_addr constant [0 x ptr], align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"IRCALL_\00", align 1
@ircall_names = external local_unnamed_addr constant [0 x ptr], align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"IRCONV_\00", align 1
@irt_names = external local_unnamed_addr constant [0 x ptr], align 8
@.str.17 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@ir_names = external local_unnamed_addr constant [0 x ptr], align 8
@.str.18 = private unnamed_addr constant [50 x i8] c"Error: bad fold definition token \22%s\22 at line %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"#define fold_hashkey(k)\09(((((k)<<%u)-(k))<<%u)%%%u)\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"#define fold_hashkey(k)\09(lj_rol(lj_rol((k),%u)-(k),%u)%%%u)\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Error: search for perfect hash failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"static const uint32_t fold_hash[%d] = {\0A0x%08x\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c",\0A0x%08x\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @emit_fold(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8193 x i32], align 16            ; 13 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite45 = tail call i64 @fwrite(ptr nonnull @.str, i64 30, i64 1, ptr %i.h) #12 ; 0 uses
  tail call void @exit(i32 noundef 1) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.f, align 1, !tbaa !15
  %i.j = icmp eq i8 %i.i, 45
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @stdin, align 8, !tbaa !14
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call noalias ptr @fopen(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.1) ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.q = tail call ptr @__errno_location() #14
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = tail call ptr @strerror(i32 noundef %i.r) #11
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.f, ptr noundef %i.s) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #13
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0 = phi ptr [ %i.n, %bb.e ], [ %i.o, %bb.f ]  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.3, i64 46, i64 1, ptr %i.v) ; 0 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !33
  %fwrite39 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 38, i64 1, ptr %i.w) ; 0 uses
  store i32 0, ptr @lineno, align 4, !tbaa !16
  store i32 0, ptr @funcidx, align 4, !tbaa !16
  store i32 0, ptr @nkeys, align 4, !tbaa !16
  %i.x = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 256, ptr noundef %.0)
  %.not4071 = icmp eq ptr %i.x, null
  br i1 %.not4071, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 7 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.x
  %i.ab = load i32, ptr @lineno, align 4, !tbaa !16
  %i.ac = add nsw i32 %i.ab, 1                    ; 3 uses
  store i32 %i.ac, ptr @lineno, align 4, !tbaa !16
  %i.ad = load i32, ptr %i.c, align 16
  %i.ae = xor i32 %i.ad, 1330006604
  %i.af = getelementptr i8, ptr %i.c, i64 4
  %i.ag = load i16, ptr %i.af, align 4
  %i.ah = zext i16 %i.ag to i32
  %i.ai = xor i32 %i.ah, 17484
  %i.aj = or i32 %i.ae, %i.ai
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %.not42 = icmp eq i32 %i.al, 0
  br i1 %.not42, label %bb.j, label %bb.x

bb.j:                                             ; preds = %bb.i
  %i.am = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.y, i32 noundef 41) #16 ; 3 uses
  %i.an = load i8, ptr %i.y, align 2, !tbaa !15   ; 2 uses
  %i.ao = icmp eq i8 %i.an, 40
  %i.ap = icmp ne ptr %i.am, null                 ; 2 uses
  %or.cond = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.am, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aq = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.z, i32 noundef 32) #16 ; 3 uses
  %.not91.i.i = icmp eq ptr %i.aq, null
  br i1 %.not91.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store i8 0, ptr %i.aq, align 1, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.067.i.i = phi ptr [ %i.ar, %bb.l ], [ null, %bb.k ]
  store ptr %.067.i.i, ptr %i.b, align 8, !tbaa !13
  %i.as = load ptr, ptr @ir_names, align 8, !tbaa !13 ; 2 uses
  %.not110162.i.i = icmp eq ptr %i.as, null
  br i1 %.not110162.i.i, label %.loopexit.i.i, label %.lr.ph164.i.i

.lr.ph164.i.i:                                    ; preds = %bb.m, %bb.n
  %i.at = phi ptr [ %i.ay, %bb.n ], [ %i.as, %bb.m ]
  %.5163.i.i = phi i32 [ %i.av, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.au = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(1) %i.z) #16
  %.not111.i.i = icmp eq i32 %i.au, 0
  br i1 %.not111.i.i, label %nexttoken.exit.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph164.i.i
  %i.av = add i32 %.5163.i.i, 1                   ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @ir_names, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  %.not110.i.i = icmp eq ptr %i.ay, null
  br i1 %.not110.i.i, label %.loopexit.i.i, label %.lr.ph164.i.i, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %bb.m, %bb.n
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.ba = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.z, i32 noundef %i.ac) #15 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

nexttoken.exit.i:                                 ; preds = %.lr.ph164.i.i
  %i.bb = call fastcc i32 @nexttoken(ptr noundef %i.b, i32 noundef 0, i32 noundef 127)
  %i.bc = call fastcc i32 @nexttoken(ptr noundef %i.b, i32 noundef 1, i32 noundef 1023)
  %i.bd = load i32, ptr @funcidx, align 4, !tbaa !16
  %i.be = shl i32 %.5163.i.i, 17
  %i.bf = shl i32 %i.bb, 10
  %i.bg = or i32 %i.bf, %i.be
  %i.bh = or i32 %i.bg, %i.bc                     ; 2 uses
  %i.bi = load i32, ptr @nkeys, align 4, !tbaa !16 ; 4 uses
  %i.bj = icmp ugt i32 %i.bi, 4095
  br i1 %i.bj, label %bb.o, label %.preheader.i

.preheader.i:                                     ; preds = %nexttoken.exit.i
  %.not18.i = icmp eq i32 %i.bi, 0
  br i1 %.not18.i, label %foldrule.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bk = and i32 %i.bh, 16777215
  %i.bl = zext nneg i32 %i.bi to i64
  br label %bb.p

bb.o:                                             ; preds = %nexttoken.exit.i
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.11, i64 53, i64 1, ptr %i.bm) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

bb.p:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bl, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bn = and i64 %indvars.iv.next.i, 4294967295  ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @foldkeys, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16 ; 2 uses
  %i.bq = and i32 %i.bp, 16777215
  %i.br = icmp samesign ult i32 %i.bq, %i.bk
  br i1 %i.br, label %foldrule.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @foldkeys, i64 %indvars.iv.i
  store i32 %i.bp, ptr %i.bs, align 4, !tbaa !16
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %foldrule.exit, label %bb.p, !llvm.loop !18

foldrule.exit:                                    ; preds = %bb.p, %bb.q, %.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %bb.q ], [ %indvars.iv.i, %bb.p ]
  %i.bt = shl i32 %i.bd, 24
  %i.bu = or i32 %i.bh, %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @foldkeys, i64 %.0.lcssa.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !16
  %i.bw = add nuw nsw i32 %i.bi, 1
  store i32 %i.bw, ptr @nkeys, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.r:                                             ; preds = %bb.j
  switch i8 %i.an, label %bb.w [
    i8 70, label %bb.s
    i8 88, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.bx = load i8, ptr %i.z, align 1, !tbaa !15
  %i.by = icmp eq i8 %i.bx, 40
  %or.cond3 = select i1 %i.by, i1 %i.ap, i1 false
  br i1 %or.cond3, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.am, align 1, !tbaa !15
  %i.bz = load i32, ptr @funcidx, align 4, !tbaa !16
  %.not43 = icmp eq i32 %i.bz, 0
  br i1 %.not43, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = load ptr, ptr %i.u, align 8, !tbaa !33
  %fwrite44 = call i64 @fwrite(ptr nonnull @.str.6, i64 2, i64 1, ptr %i.ca) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cb = load i8, ptr %i.y, align 2, !tbaa !15
  %i.cc = icmp eq i8 %i.cb, 88
  %i.cd = load ptr, ptr %i.u, align 8, !tbaa !33
  %.str.7..str.8 = select i1 %i.cc, ptr @.str.7, ptr @.str.8
  %i.ce = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cd, ptr noundef nonnull %.str.7..str.8, ptr noundef nonnull %i.aa) #11 ; 0 uses
  %i.cf = load i32, ptr @funcidx, align 4, !tbaa !16
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr @funcidx, align 4, !tbaa !16
  br label %bb.x

bb.w:                                             ; preds = %bb.r, %bb.s
  %i.ch = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #16
  %i.ci = getelementptr i8, ptr %i.c, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1
  store i8 0, ptr %i.cj, align 1, !tbaa !15
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.cl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.y, i32 noundef %i.ac) #15 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

bb.x:                                             ; preds = %foldrule.exit, %bb.v, %bb.i
  %i.cm = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 256, ptr noundef %.0)
  %.not40 = icmp eq ptr %i.cm, null
  br i1 %.not40, label %._crit_edge, label %bb.i, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.x, %bb.h
  %i.cn = call i32 @fclose(ptr noundef %.0)       ; 0 uses
  %i.co = load ptr, ptr %i.u, align 8, !tbaa !33
  %fwrite41 = call i64 @fwrite(ptr nonnull @.str.10, i64 5, i64 1, ptr %i.co) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.cp = load i32, ptr @nkeys, align 4, !tbaa !16 ; 4 uses
  %i.cq = icmp ult i32 %i.cp, 8192
  br i1 %i.cq, label %.preheader50.lr.ph.i, label %._crit_edge.i

.preheader50.lr.ph.i:                             ; preds = %._crit_edge
  %.not86.i.i = icmp eq i32 %i.cp, 0
  %wide.trip.count.i.i = zext nneg i32 %i.cp to i64 ; 2 uses
  br i1 %.not86.i.i, label %.preheader50.us.i, label %.preheader50.preheader.i

.preheader50.preheader.i:                         ; preds = %.preheader50.lr.ph.i
  %i.cr = or i32 %i.cp, 1
  %i.cs = zext nneg i32 %i.cr to i64
  br label %.preheader50.i

.preheader50.us.i:                                ; preds = %.preheader50.lr.ph.i
  store i64 -1, ptr %i.a, align 16
  br label %tryhash.exit.i

.preheader50.i:                                   ; preds = %bb.ar, %.preheader50.preheader.i
  %indvars.iv.i47 = phi i64 [ %i.cs, %.preheader50.preheader.i ], [ %indvars.iv.next.i49, %bb.ar ] ; 4 uses
  %indvars85.i = trunc nuw nsw i64 %indvars.iv.i47 to i32 ; 8 uses
  %i.ct = shl nuw nsw i64 %indvars.iv.i47, 2
  %i.cu = add nuw nsw i64 %i.ct, 4                ; 2 uses
  %i.cv = add nsw i32 %indvars85.i, -1            ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ah, %.preheader50.i
  %.065.i = phi i32 [ 0, %.preheader50.i ], [ %i.ei, %bb.ah ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 -1, i64 %i.cu, i1 false)
  %i.cw = lshr i32 %.065.i, 5                     ; 2 uses
  %i.cx = and i32 %.065.i, 31                     ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.critedge.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.critedge.i.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @foldkeys, i64 %indvars.iv.i.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !16 ; 3 uses
  %i.da = and i32 %i.cz, 16777215                 ; 2 uses
  %i.db = shl i32 %i.da, %i.cw
  %i.dc = sub i32 %i.db, %i.da
  %i.dd = shl i32 %i.dc, %i.cx
  %i.de = urem i32 %i.dd, %indvars85.i            ; 3 uses
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.df ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !16
  %.not75.i.i = icmp eq i32 %i.dh, -1
  br i1 %.not75.i.i, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = add nuw nsw i32 %i.de, 1                ; 2 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !16 ; 3 uses
  %.not76.i.i = icmp eq i32 %i.dl, -1
  br i1 %.not76.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dm = icmp ult i32 %i.de, %i.cv
  br i1 %i.dm, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !16
  %i.dp = icmp eq i32 %i.do, -1
  br i1 %i.dp, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.dq = and i32 %i.dl, 16777215                 ; 2 uses
  %i.dr = shl i32 %i.dq, %i.cw
  %i.ds = sub i32 %i.dr, %i.dq
  %i.dt = shl i32 %i.ds, %i.cx
  %i.du = urem i32 %i.dt, %indvars85.i
  %.not77.i.i = icmp eq i32 %i.du, %i.di
  br i1 %.not77.i.i, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.z
  store i32 %i.cz, ptr %i.dk, align 4, !tbaa !16
  br label %.critedge.i.i

bb.af:                                            ; preds = %bb.y
  store i32 %i.cz, ptr %i.dg, align 4, !tbaa !16
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.af, %bb.ae
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %tryhash.exit.loopexit.i, label %bb.y, !llvm.loop !20

tryhash.exit.loopexit.i:                          ; preds = %.critedge.i.i
  %.pre.i = load i32, ptr %i.a, align 16, !tbaa !16
  br label %tryhash.exit.i

tryhash.exit.i:                                   ; preds = %tryhash.exit.loopexit.i, %.preheader50.us.i
  %i.dv = phi i32 [ -1, %.preheader50.us.i ], [ %.pre.i, %tryhash.exit.loopexit.i ]
  %.02164.i = phi i32 [ 1, %.preheader50.us.i ], [ %indvars85.i, %tryhash.exit.loopexit.i ] ; 2 uses
  %.054.i = phi i32 [ 0, %.preheader50.us.i ], [ %.065.i, %tryhash.exit.loopexit.i ] ; 2 uses
  %i.dw = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.dx = add nuw nsw i32 %.02164.i, 1            ; 2 uses
  %i.dy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dw, ptr noundef nonnull @.str.22, i32 noundef %i.dx, i32 noundef %i.dv) #11 ; 0 uses
  %wide.trip.count.i23.i = zext nneg i32 %i.dx to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %tryhash.exit.i
  %indvars.iv.i24.i = phi i64 [ 1, %tryhash.exit.i ], [ %indvars.iv.next.i25.i, %bb.ag ] ; 2 uses
  %i.dz = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i24.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !16
  %i.ec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.23, i32 noundef %i.eb) #11 ; 0 uses
  %indvars.iv.next.i25.i = add nuw nsw i64 %indvars.iv.i24.i, 1 ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %indvars.iv.next.i25.i, %wide.trip.count.i23.i
  br i1 %exitcond.not.i26.i, label %printhash.exit.i, label %bb.ag, !llvm.loop !21

printhash.exit.i:                                 ; preds = %bb.ag
  %i.ed = load ptr, ptr %i.u, align 8, !tbaa !33
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.10, i64 5, i64 1, ptr %i.ed) ; 0 uses
  %i.ee = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.ef = lshr i32 %.054.i, 5
  %i.eg = and i32 %.054.i, 31
  %i.eh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ee, ptr noundef nonnull @.str.19, i32 noundef %i.ef, i32 noundef %i.eg, i32 noundef %.02164.i) #11 ; 0 uses
  br label %makehash.exit

bb.ah:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ei = add nuw nsw i32 %.065.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ei, 1024
  br i1 %exitcond.not.i, label %.preheader.i48, label %.lr.ph.i.i, !llvm.loop !22

end_hunk_0
