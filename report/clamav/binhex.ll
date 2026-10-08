Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/binhex?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"in cli_binhex\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cli_binhex: file is empty\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"cli_binhex: file too short for header\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"cli_binhex(data)\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"cli_binhex(resources)\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"cli_binhex: decoding '%s' - %u bytes of data to %s - %u bytes or resources to %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"cli_binhex: call to lseek() has failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"cli_binhex: skipping resources (too small)\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"cli_binhex: scanning partially extracted data fork\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"cli_binhex: scanning partially extracted resource fork\0A\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"cli_binhex: broken file (missing stream start identifier)\0A\00", align 1
@hqxtbl = internal unnamed_addr constant [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\FF\FF\0D\0E\0F\10\11\12\13\FF\14\15\FF\FF\FF\FF\FF\FF\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$\FF%&'()*+\FF,-./\FF\FF\FF\FF0123456\FF789:;<\FF\FF=>?\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@.str.11 = private unnamed_addr constant [38 x i8] c"cli_binhex: Invalid character (%02x)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_binhex(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 16 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #7
  %i.j = load i64, ptr %i.h, align 8, !tbaa !27
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.bl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.m = call i32 @cli_gentempfd(ptr noundef %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not253 = icmp eq i32 %i.m, 0
  br i1 %.not253, label %bb.c, label %bb.bl

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.o = call i32 @cli_gentempfd(ptr noundef %i.n, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c) #7 ; 2 uses
  %.not254 = icmp eq i32 %i.o, 0
  br i1 %.not254, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.b, align 4, !tbaa !29
  %i.q = call i32 @close(i32 noundef %i.p) #7     ; 0 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.s = call i32 @cli_unlink(ptr noundef %i.r) #7
  %.not276 = icmp eq i32 %i.s, 0
  %spec.select = select i1 %.not276, i32 %i.o, i32 10
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  br label %.thread353

.thread353:                                       ; preds = %.thread353.backedge, %bb.e
  %.0227 = phi ptr [ null, %bb.e ], [ %.1228, %.thread353.backedge ]
  %.0224 = phi i8 [ 0, %bb.e ], [ %.0224.be, %.thread353.backedge ] ; 7 uses
  %.0222 = phi i8 [ 0, %bb.e ], [ %.0222.be, %.thread353.backedge ] ; 10 uses
  %.0217 = phi i8 [ 0, %bb.e ], [ %.0217.be, %.thread353.backedge ] ; 7 uses
  %.0215 = phi i64 [ 0, %bb.e ], [ %i.em, %.thread353.backedge ] ; 2 uses
  %.0213 = phi i64 [ %i.i, %bb.e ], [ %i.en, %.thread353.backedge ] ; 3 uses
  %.0203 = phi i32 [ 0, %bb.e ], [ %.0203.be, %.thread353.backedge ] ; 6 uses
  %.0200 = phi i32 [ 0, %bb.e ], [ %i.eh, %.thread353.backedge ] ; 2 uses
  %.0197 = phi i32 [ 0, %bb.e ], [ %i.ei, %.thread353.backedge ]
  %.0191 = phi i32 [ 0, %bb.e ], [ %.4195, %.thread353.backedge ] ; 2 uses
  %.0184 = phi i32 [ 0, %bb.e ], [ %.5189, %.thread353.backedge ] ; 2 uses
  %.not270 = phi i1 [ true, %bb.e ], [ %.not270.be, %.thread353.backedge ]
  %.0179 = phi i32 [ 0, %bb.e ], [ %.0179.be, %.thread353.backedge ] ; 7 uses
  %.0164 = phi i32 [ 0, %bb.e ], [ %.0164.be, %.thread353.backedge ] ; 3 uses
  %i.x = icmp eq i64 %.0213, 0                    ; 4 uses
  %i.y = icmp ugt i32 %.0203, 7935
  %or.cond = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond, label %bb.f, label %bb.aq

bb.f:                                             ; preds = %.thread353
  %i.z = icmp eq i32 %.0164, 1
  br i1 %i.z, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %.not255 = icmp eq i32 %.0203, 0
  br i1 %.not255, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #7
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.aa = load i8, ptr %i.a, align 16, !tbaa !31  ; 2 uses
  %i.ab = zext i8 %i.aa to i32
  %i.ac = zext i8 %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ac ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !31
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw i32 %i.ag, 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 13
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !31
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 16
  %i.am = or disjoint i32 %i.al, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 14
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !31
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = or disjoint i32 %i.am, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !31
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.ar, %i.au            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !31
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw i32 %i.ay, 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 17
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !31
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 16
  %i.be = or disjoint i32 %i.bd, %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 18
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !31
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = or disjoint i32 %i.be, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 19
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !31
  %i.bm = zext i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bj, %i.bm            ; 2 uses
  %i.bo = add nuw nsw i32 %i.ab, 22               ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 0, ptr %i.bp, align 1, !tbaa !31
  %.not256 = icmp ugt i32 %.0203, %i.bo
  br i1 %.not256, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #7
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.bq = zext i32 %i.av to i64
  %i.br = call i32 @cli_checklimits(ptr noundef nonnull @.str.3, ptr noundef %0, i64 noundef %i.bq, i64 noundef 0, i64 noundef 0) #7 ; 2 uses
  %.not257 = icmp eq i32 %i.br, 0
  br i1 %.not257, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bs = zext i32 %i.bn to i64
  %i.bt = call i32 @cli_checklimits(ptr noundef nonnull @.str.4, ptr noundef %0, i64 noundef %i.bs, i64 noundef 0, i64 noundef 0) #7
  %.not258 = icmp eq i32 %i.bt, 0
  %spec.select277 = select i1 %.not258, i32 %i.bn, i32 0 ; 2 uses
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !30
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.t, i32 noundef %i.av, ptr noundef %i.bu, i32 noundef %spec.select277, ptr noundef %i.bv) #7
  %i.bw = zext nneg i32 %i.bo to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  %i.by = sub nuw i32 %.0203, %i.bo               ; 2 uses
  %i.bz = zext i32 %i.by to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.bx, i64 %i.bz, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.2205 = phi i32 [ %i.by, %bb.l ], [ %.0203, %bb.f ] ; 4 uses
  %.2193 = phi i32 [ %i.av, %bb.l ], [ %.0191, %bb.f ] ; 3 uses
  %.3187 = phi i32 [ %spec.select277, %bb.l ], [ %.0184, %bb.f ] ; 6 uses
  %.2166 = phi i32 [ 2, %bb.l ], [ %.0164, %bb.f ] ; 2 uses
  %i.ca = icmp ne i32 %.2205, 0
  %i.cb = icmp eq i32 %.2166, 2
  %or.cond5 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond5, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.cc = call i32 @llvm.umin.i32(i32 %.2205, i32 %.2193) ; 3 uses
  %i.cd = sub nuw i32 %.2193, %i.cc               ; 3 uses
  %i.ce = sub nuw i32 %.2205, %i.cc               ; 3 uses
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !29
  %i.cg = zext i32 %i.cc to i64                   ; 3 uses
  %i.ch = call i64 @cli_writen(i32 noundef %i.cf, ptr noundef nonnull %i.a, i64 noundef %i.cg) #7
  %.not259 = icmp eq i64 %i.ch, %i.cg
  br i1 %.not259, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %.not260 = icmp eq i32 %i.cd, 0
  br i1 %.not260, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ci = load i32, ptr %i.b, align 4, !tbaa !29
  %i.cj = call i64 @lseek(i32 noundef %i.ci, i64 noundef 0, i32 noundef 0) #7
  %i.ck = icmp eq i64 %i.cj, -1
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #7
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.cl = load i32, ptr %i.b, align 4, !tbaa !29
  %i.cm = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.cn = call i32 @cli_magic_scan_desc(i32 noundef %i.cl, ptr noundef %i.cm, ptr noundef %0, ptr noundef null, i32 noundef 0) #7 ; 2 uses
  %.not261 = icmp eq i32 %i.cn, 0
  br i1 %.not261, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r, %bb.o
  %.3167 = phi i32 [ 2, %bb.o ], [ 3, %bb.r ]     ; 2 uses
  %.not262 = icmp eq i32 %i.ce, 0
  br i1 %.not262, label %.thread300.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cg
  %i.cp = zext i32 %i.ce to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.co, i64 %i.cp, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.3206 = phi i32 [ %.2205, %bb.m ], [ %i.ce, %bb.t ] ; 5 uses
  %.3194 = phi i32 [ %.2193, %bb.m ], [ %i.cd, %bb.t ] ; 5 uses
  %.5 = phi i32 [ %.2166, %bb.m ], [ %.3167, %bb.t ] ; 3 uses
  %i.cq = icmp ne i32 %.3206, 0                   ; 2 uses
  %i.cr = icmp eq i32 %.5, 3
  %or.cond7 = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond7, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.cs = icmp ugt i32 %.3206, 1
  br i1 %i.cs, label %bb.w, label %.thread300.thread

bb.w:                                             ; preds = %bb.v
  %i.ct = icmp ult i32 %.3187, 5
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #7
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.cu = add i32 %.3206, -2                      ; 2 uses
  %.not263 = icmp eq i32 %i.cu, 0
  br i1 %.not263, label %.thread300.thread, label %.thread300.sink.split

bb.z:                                             ; preds = %bb.u
  %i.cv = icmp eq i32 %.5, 4
  %or.cond9 = select i1 %i.cq, i1 %i.cv, i1 false
  br i1 %or.cond9, label %bb.aa, label %.thread300

bb.aa:                                            ; preds = %bb.z
  %i.cw = icmp ult i32 %.3187, 5
  br i1 %i.cw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #7
  br label %.thread

bb.ac:                                            ; preds = %bb.aa
  %i.cx = add i32 %.3206, -1                      ; 2 uses
  %.not264 = icmp eq i32 %i.cx, 0
  br i1 %.not264, label %.thread321, label %.thread300.sink.split

.thread300.thread:                                ; preds = %bb.v, %bb.y, %bb.s
  %.3194297307.ph = phi i32 [ %i.cd, %bb.s ], [ %.3194, %bb.y ], [ %.3194, %bb.v ]
  %.7.ph = phi i32 [ %.3167, %bb.s ], [ 5, %bb.y ], [ 4, %bb.v ] ; 2 uses
  %i.cy = icmp eq i32 %.7.ph, 5
  br label %bb.ai

.thread300.sink.split:                            ; preds = %bb.ac, %bb.y
  %.sink418 = phi i32 [ %i.cu, %bb.y ], [ %i.cx, %bb.ac ] ; 2 uses
  %.sink = phi ptr [ %i.u, %bb.y ], [ %i.t, %bb.ac ]
  %i.cz = zext i32 %.sink418 to i64
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %.sink, i64 %i.cz, i1 false)
  br label %.thread300

.thread300:                                       ; preds = %.thread300.sink.split, %bb.z
  %.5208 = phi i32 [ %.3206, %bb.z ], [ %.sink418, %.thread300.sink.split ] ; 4 uses
  %.7 = phi i32 [ %.5, %bb.z ], [ 5, %.thread300.sink.split ] ; 2 uses
  %i.da = icmp ne i32 %.5208, 0
  %i.db = icmp eq i32 %.7, 5                      ; 2 uses
  %or.cond11 = select i1 %i.da, i1 %i.db, i1 false
  br i1 %or.cond11, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %.thread300
  %i.dc = call i32 @llvm.umin.i32(i32 %.5208, i32 %.3187) ; 3 uses
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !29
  %i.de = zext i32 %i.dc to i64                   ; 2 uses
  %i.df = call i64 @cli_writen(i32 noundef %i.dd, ptr noundef nonnull %i.a, i64 noundef %i.de) #7
  %.not265 = icmp eq i64 %i.df, %i.de
  br i1 %.not265, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.dg = sub nuw i32 %.3187, %i.dc               ; 2 uses
  %.not266 = icmp eq i32 %i.dg, 0
  br i1 %.not266, label %bb.af, label %.thread405

bb.af:                                            ; preds = %bb.ae
  %i.dh = load i32, ptr %i.c, align 4, !tbaa !29
  %i.di = call i64 @lseek(i32 noundef %i.dh, i64 noundef 0, i32 noundef 0) #7
  %i.dj = icmp eq i64 %i.di, -1
  br i1 %i.dj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #7
  br label %.thread

bb.ah:                                            ; preds = %bb.af
  %i.dk = load i32, ptr %i.c, align 4, !tbaa !29
  %i.dl = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.dm = call i32 @cli_magic_scan_desc(i32 noundef %i.dk, ptr noundef %i.dl, ptr noundef %0, ptr noundef null, i32 noundef 0) #7
  br label %.thread

bb.ai:                                            ; preds = %.thread300.thread, %.thread300
  %i.dn = phi i1 [ %i.cy, %.thread300.thread ], [ %i.db, %.thread300 ]
  %.7381 = phi i32 [ %.7.ph, %.thread300.thread ], [ %.7, %.thread300 ] ; 2 uses
  %.3194297307379 = phi i32 [ %.3194297307.ph, %.thread300.thread ], [ %.3194, %.thread300 ]
  %.6209 = phi i32 [ 0, %.thread300.thread ], [ %.5208, %.thread300 ]
  br i1 %i.x, label %bb.aj, label %bb.aq

.thread405:                                       ; preds = %bb.ae
  %i.do = sub nuw i32 %.5208, %i.dc
  br i1 %i.x, label %.thread343, label %bb.aq

.thread321:                                       ; preds = %bb.ac
  br i1 %i.x, label %.thread343, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.dp = icmp eq i32 %.7381, 2
  br i1 %i.dp, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #7
  %i.dq = load i32, ptr %i.b, align 4, !tbaa !29
  %i.dr = call i64 @lseek(i32 noundef %i.dq, i64 noundef 0, i32 noundef 0) #7
  %i.ds = icmp eq i64 %i.dr, -1
  br i1 %i.ds, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #7
  br label %.thread

bb.am:                                            ; preds = %bb.ak
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !29
  %i.du = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.dv = call i32 @cli_magic_scan_desc(i32 noundef %i.dt, ptr noundef %i.du, ptr noundef %0, ptr noundef null, i32 noundef 0) #7
  br label %.thread

bb.an:                                            ; preds = %bb.aj
  br i1 %i.dn, label %.thread343, label %.thread

.thread343:                                       ; preds = %.thread405, %.thread321, %bb.an
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #7
  %i.dw = load i32, ptr %i.c, align 4, !tbaa !29
  %i.dx = call i64 @lseek(i32 noundef %i.dw, i64 noundef 0, i32 noundef 0) #7
  %i.dy = icmp eq i64 %i.dx, -1
  br i1 %i.dy, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread343
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #7
  br label %.thread

bb.ap:                                            ; preds = %.thread343
  %i.dz = load i32, ptr %i.c, align 4, !tbaa !29
  %i.ea = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.eb = call i32 @cli_magic_scan_desc(i32 noundef %i.dz, ptr noundef %i.ea, ptr noundef %0, ptr noundef null, i32 noundef 0) #7
  br label %.thread

bb.aq:                                            ; preds = %.thread405, %.thread321, %bb.ai, %.thread353
  %.7210 = phi i32 [ %.6209, %bb.ai ], [ %.0203, %.thread353 ], [ 0, %.thread321 ], [ %i.do, %.thread405 ] ; 12 uses
  %.4195 = phi i32 [ %.3194297307379, %bb.ai ], [ %.0191, %.thread353 ], [ %.3194, %.thread321 ], [ %.3194, %.thread405 ]
  %.5189 = phi i32 [ %.3187, %bb.ai ], [ %.0184, %.thread353 ], [ %.3187, %.thread321 ], [ %i.dg, %.thread405 ]
  %.8 = phi i32 [ %.7381, %bb.ai ], [ %.0164, %.thread353 ], [ 5, %.thread321 ], [ 5, %.thread405 ] ; 10 uses
  %.not268 = icmp eq i32 %.0200, 0
  br i1 %.not268, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ec = load i64, ptr %i.v, align 8, !tbaa !32
  %.0213. = call i64 @llvm.umin.i64(i64 %.0213, i64 %i.ec) ; 2 uses
  %i.ed = trunc i64 %.0213. to i32
  %i.ee = and i64 %.0213., 4294967295
  %i.ef = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.eg = call ptr %i.ef(ptr noundef %i.g, i64 noundef %.0215, i64 noundef range(i64 0, 4294967296) %i.ee, i32 noundef 0) #7, !inline_history !8 ; 2 uses
  %.not269 = icmp eq ptr %i.eg, null
  br i1 %.not269, label %.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1228 = phi ptr [ %.0227, %bb.aq ], [ %i.eg, %bb.ar ] ; 2 uses
  %.1201 = phi i32 [ %.0200, %bb.aq ], [ %i.ed, %bb.ar ]
  %.1198 = phi i32 [ %.0197, %bb.aq ], [ 0, %bb.ar ] ; 2 uses
  %i.eh = add i32 %.1201, -1
  %i.ei = add i32 %.1198, 1
  %i.ej = zext i32 %.1198 to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.1228, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !31  ; 5 uses
  %i.em = add i64 %.0215, 1
  %i.en = add i64 %.0213, -1
  switch i8 %i.el, label %bb.at [
    i8 13, label %.thread353.backedge
    i8 10, label %.thread353.backedge
  ]

bb.at:                                            ; preds = %bb.as
  br i1 %.not270, label %.thread353.backedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eo = icmp eq i32 %.8, 0
  %.not271 = icmp eq i8 %i.el, 58                 ; 2 uses
  br i1 %i.eo, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  br i1 %.not271, label %.thread353.backedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #7
  br label %.thread

bb.ax:                                            ; preds = %bb.au
  br i1 %.not271, label %.thread353.backedge, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ep = icmp slt i8 %i.el, 0
  br i1 %i.ep, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eq = zext nneg i8 %i.el to i64
  %i.er = getelementptr inbounds nuw i8, ptr @hqxtbl, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !31  ; 7 uses
  %i.et = icmp eq i8 %i.es, -1
  br i1 %i.et, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.eu = zext i8 %i.el to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i32 noundef %i.eu) #7
  br label %.thread

bb.bb:                                            ; preds = %bb.az
  %i.ev = add i8 %.0217, 1                        ; 5 uses
  %i.ew = and i8 %.0217, 3
  switch i8 %i.ew, label %default.unreachable404 [
    i8 0, label %bb.bc
    i8 1, label %bb.bd
    i8 2, label %bb.be
    i8 3, label %bb.bf
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.ex = shl i8 %i.es, 2
  br label %.thread353.backedge

bb.bd:                                            ; preds = %bb.bb
  %i.ey = lshr i8 %i.es, 4
  %i.ez = shl i8 %i.es, 4
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  %i.fa = lshr i8 %i.es, 2
  %i.fb = shl i8 %i.es, 6
  br label %bb.bf

default.unreachable404:                           ; preds = %bb.bb
  unreachable

bb.bf:                                            ; preds = %bb.bb, %bb.be, %bb.bd
  %.1225 = phi i8 [ %i.ez, %bb.bd ], [ %i.fb, %bb.be ], [ %.0224, %bb.bb ] ; 4 uses
  %.pn = phi i8 [ %i.ey, %bb.bd ], [ %i.fa, %bb.be ], [ %i.es, %bb.bb ]
  %.0219 = or i8 %.pn, %.0224                     ; 5 uses
  %.not272 = icmp eq i32 %.0179, 0
  br i1 %.not272, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not273 = icmp eq i8 %.0219, 0
  br i1 %.not273, label %bb.bi, label %.preheader

.preheader:                                       ; preds = %bb.bg
  %i.fc = add i8 %.0219, -1                       ; 2 uses
  %.not274385 = icmp eq i8 %i.fc, 0
  br i1 %.not274385, label %.thread353.backedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.fd = zext i32 %.7210 to i64
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.fd
end_hunk_0
