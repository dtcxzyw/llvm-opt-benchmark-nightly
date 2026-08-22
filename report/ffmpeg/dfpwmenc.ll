Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dfpwmenc?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"dfpwm\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"DFPWM1a audio\00", align 1
@.compoundliteral = internal constant [2 x i32] [i32 0, i32 -1], align 4
@ff_dfpwm_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86112, i32 1048578, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 12, ptr null, ptr null, ptr null, ptr @dfpwm_enc_init, %union.anon { ptr @dfpwm_enc_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral } } }, align 8

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @dfpwm_enc_init(ptr nofree noundef captures(none) initializes((648, 652)) %0) #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !29
  %1 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %1, align 4, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 -128, ptr %i.d, align 4, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 1, ptr %i.e, align 8, !tbaa !33
  store <8 x i8> <i8 1, i8 8, i8 4, i8 8, i8 2, i8 8, i8 4, i8 8>, ptr %i.a, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35   ; 2 uses
  %i.h = and i32 %i.g, 7
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !34
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.l, ptr %i.o, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !44   ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = mul nsw i32 %i.q, %i.g
  %i.t = and i32 %i.s, 7
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 4096, ptr %i.p, align 8, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @dfpwm_enc_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 388
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  %i.g = mul nsw i32 %i.f, %i.d
  %i.h = lshr i32 %i.g, 3                         ; 3 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = tail call i32 @ff_get_encode_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %i.i, i32 noundef 0) #4 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %au_compress.exit

bb.b:                                             ; preds = %bb.a
  %.not74.i = icmp eq i32 %i.h, 0
  br i1 %.not74.i, label %au_compress.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.k = load ptr, ptr %2, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.r, %.preheader.lr.ph.i
  %.04173.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.ha, %bb.r ]
  %.04272.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.gn, %bb.r ] ; 2 uses
  %.04371.i = phi ptr [ %i.k, %.preheader.lr.ph.i ], [ %scevgep.i, %bb.r ] ; 9 uses
  %.04570.i = phi ptr [ %i.m, %.preheader.lr.ph.i ], [ %i.gz, %bb.r ] ; 2 uses
  %.promoted.i = load i32, ptr %i.b, align 4, !tbaa !29 ; 4 uses
  %.promoted64.i = load i32, ptr %i.n, align 4, !tbaa !31 ; 3 uses
  %.promoted65.i = load i32, ptr %i.o, align 4, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %.04371.i, i64 1
  %i.q = load i8, ptr %.04371.i, align 1, !tbaa !34
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -128                   ; 2 uses
  %i.t = icmp sgt i32 %i.s, %.promoted.i
  br i1 %i.t, label %.thread57.i, label %bb.c

.thread57.i:                                      ; preds = %.preheader.i
  %i.u = lshr i32 %.04272.i, 1
  %i.v = or i32 %i.u, 128
  br label %bb.d

bb.c:                                             ; preds = %.preheader.i
  %i.w = icmp eq i32 %i.s, 127
  %i.x = icmp eq i32 %.promoted.i, 127
  %i.y = and i1 %i.x, %i.w
  %cond.fr55.i = freeze i1 %i.y
  %i.z = lshr i32 %.04272.i, 1                    ; 2 uses
  br i1 %cond.fr55.i, label %.split.i, label %bb.d

.split.i:                                         ; preds = %bb.c
  %i.aa = or i32 %i.z, 128
  br label %bb.d

bb.d:                                             ; preds = %.split.i, %bb.c, %.thread57.i
  %i.ab = phi i32 [ 127, %.split.i ], [ 127, %.thread57.i ], [ -128, %bb.c ] ; 5 uses
  %spec.select62.i = phi i32 [ 1, %.split.i ], [ 1, %.thread57.i ], [ -1, %bb.c ]
  %i.ac = phi i32 [ %i.aa, %.split.i ], [ %i.v, %.thread57.i ], [ %i.z, %bb.c ] ; 2 uses
  %i.ad = sub nsw i32 %i.ab, %.promoted.i
  %i.ae = mul nsw i32 %i.ad, %.promoted64.i
  %i.af = add nsw i32 %i.ae, 512
  %i.ag = ashr i32 %i.af, 10                      ; 2 uses
  %i.ah = add nsw i32 %i.ag, %.promoted.i         ; 2 uses
  %i.ai = icmp ne i32 %i.ag, 0
  %.not.i = icmp eq i32 %i.ah, %i.ab
  %or.cond.i = or i1 %i.ai, %.not.i
  %i.aj = select i1 %or.cond.i, i32 0, i32 %spec.select62.i
  %.039.i = add nsw i32 %i.aj, %i.ah              ; 5 uses
  store i32 %.039.i, ptr %i.b, align 4, !tbaa !29
  %.not53.i = icmp eq i32 %i.ab, %.promoted65.i   ; 2 uses
  %i.ak = select i1 %.not53.i, i32 1023, i32 0
  %.not54.i = icmp eq i32 %.promoted64.i, %i.ak
  %i.al = select i1 %.not53.i, i32 1, i32 -1
  %i.am = select i1 %.not54.i, i32 0, i32 %i.al
  %.0.i = add nsw i32 %i.am, %.promoted64.i       ; 2 uses
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %.0.i, i32 8) ; 3 uses
  store i32 %spec.store.select.i, ptr %i.n, align 4, !tbaa !31
  store i32 %i.ab, ptr %i.o, align 4, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %.04371.i, i64 2
  %i.ao = load i8, ptr %i.p, align 1, !tbaa !34
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -128                 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, %.039.i
  br i1 %i.ar, label %.thread57.1.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = icmp eq i32 %i.aq, 127
  %i.at = icmp eq i32 %.039.i, 127
  %i.au = and i1 %i.as, %i.at
  %cond.fr55.1.i = freeze i1 %i.au
  %i.av = lshr i32 %i.ac, 1                       ; 2 uses
  br i1 %cond.fr55.1.i, label %.split.1.i, label %bb.f

.split.1.i:                                       ; preds = %bb.e
  %i.aw = or i32 %i.av, 128
  br label %bb.f

.thread57.1.i:                                    ; preds = %bb.d
  %i.ax = lshr i32 %i.ac, 1
  %i.ay = or i32 %i.ax, 128
  br label %bb.f

bb.f:                                             ; preds = %.thread57.1.i, %.split.1.i, %bb.e
  %i.az = phi i32 [ 127, %.split.1.i ], [ 127, %.thread57.1.i ], [ -128, %bb.e ] ; 5 uses
  %spec.select62.1.i = phi i32 [ 1, %.split.1.i ], [ 1, %.thread57.1.i ], [ -1, %bb.e ]
  %i.ba = phi i32 [ %i.aw, %.split.1.i ], [ %i.ay, %.thread57.1.i ], [ %i.av, %bb.e ] ; 2 uses
  %i.bb = sub nsw i32 %i.az, %.039.i
  %i.bc = mul nsw i32 %i.bb, %spec.store.select.i
  %i.bd = add nsw i32 %i.bc, 512
  %i.be = ashr i32 %i.bd, 10                      ; 2 uses
  %i.bf = add nsw i32 %i.be, %.039.i              ; 2 uses
  %i.bg = icmp ne i32 %i.be, 0
  %.not.1.i = icmp eq i32 %i.bf, %i.az
  %or.cond.1.i = or i1 %i.bg, %.not.1.i
  %i.bh = select i1 %or.cond.1.i, i32 0, i32 %spec.select62.1.i
  %.039.1.i = add nsw i32 %i.bh, %i.bf            ; 5 uses
  store i32 %.039.1.i, ptr %i.b, align 4, !tbaa !29
  %.not53.1.i = icmp eq i32 %i.az, %i.ab
  %.not54.186.i = icmp ne i32 %.0.i, 1023
  %i.bi = zext i1 %.not54.186.i to i32
  %i.bj = select i1 %.not53.1.i, i32 %i.bi, i32 -1
  %.0.1.i = add nsw i32 %i.bj, %spec.store.select.i ; 2 uses
  %i.bk = tail call i32 @llvm.umax.i32(i32 %.0.1.i, i32 8) ; 3 uses
  store i32 %i.bk, ptr %i.n, align 4, !tbaa !31
  store i32 %i.az, ptr %i.o, align 4, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %.04371.i, i64 3
  %i.bm = load i8, ptr %i.an, align 1, !tbaa !34
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nsw i32 %i.bn, -128                 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, %.039.1.i
  br i1 %i.bp, label %.thread57.2.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = icmp eq i32 %i.bo, 127
  %i.br = icmp eq i32 %.039.1.i, 127
  %i.bs = and i1 %i.bq, %i.br
  %cond.fr55.2.i = freeze i1 %i.bs
  %i.bt = lshr i32 %i.ba, 1                       ; 2 uses
  br i1 %cond.fr55.2.i, label %.split.2.i, label %bb.h

.split.2.i:                                       ; preds = %bb.g
  %i.bu = or i32 %i.bt, 128
  br label %bb.h

.thread57.2.i:                                    ; preds = %bb.f
  %i.bv = lshr i32 %i.ba, 1
  %i.bw = or i32 %i.bv, 128
  br label %bb.h

bb.h:                                             ; preds = %.thread57.2.i, %.split.2.i, %bb.g
  %i.bx = phi i32 [ 127, %.split.2.i ], [ 127, %.thread57.2.i ], [ -128, %bb.g ] ; 5 uses
  %spec.select62.2.i = phi i32 [ 1, %.split.2.i ], [ 1, %.thread57.2.i ], [ -1, %bb.g ]
  %i.by = phi i32 [ %i.bu, %.split.2.i ], [ %i.bw, %.thread57.2.i ], [ %i.bt, %bb.g ] ; 2 uses
  %i.bz = sub nsw i32 %i.bx, %.039.1.i
  %i.ca = mul nsw i32 %i.bz, %i.bk
  %i.cb = add nsw i32 %i.ca, 512
  %i.cc = ashr i32 %i.cb, 10                      ; 2 uses
  %i.cd = add nsw i32 %i.cc, %.039.1.i            ; 2 uses
  %i.ce = icmp ne i32 %i.cc, 0
  %.not.2.i = icmp eq i32 %i.cd, %i.bx
  %or.cond.2.i = or i1 %i.ce, %.not.2.i
  %i.cf = select i1 %or.cond.2.i, i32 0, i32 %spec.select62.2.i
  %.039.2.i = add nsw i32 %i.cf, %i.cd            ; 5 uses
  store i32 %.039.2.i, ptr %i.b, align 4, !tbaa !29
  %.not53.2.i = icmp eq i32 %i.bx, %i.az
  %.not54.287.i = icmp ne i32 %.0.1.i, 1023
  %i.cg = zext i1 %.not54.287.i to i32
  %i.ch = select i1 %.not53.2.i, i32 %i.cg, i32 -1
  %.0.2.i = add nsw i32 %i.ch, %i.bk              ; 2 uses
  %i.ci = tail call i32 @llvm.umax.i32(i32 %.0.2.i, i32 8) ; 3 uses
  store i32 %i.ci, ptr %i.n, align 4, !tbaa !31
  store i32 %i.bx, ptr %i.o, align 4, !tbaa !32
  %i.cj = getelementptr inbounds nuw i8, ptr %.04371.i, i64 4
  %i.ck = load i8, ptr %i.bl, align 1, !tbaa !34
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nsw i32 %i.cl, -128                 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, %.039.2.i
  br i1 %i.cn, label %.thread57.3.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = icmp eq i32 %i.cm, 127
  %i.cp = icmp eq i32 %.039.2.i, 127
  %i.cq = and i1 %i.co, %i.cp
  %cond.fr55.3.i = freeze i1 %i.cq
  %i.cr = lshr i32 %i.by, 1                       ; 2 uses
  br i1 %cond.fr55.3.i, label %.split.3.i, label %bb.j

.split.3.i:                                       ; preds = %bb.i
  %i.cs = or i32 %i.cr, 128
  br label %bb.j

.thread57.3.i:                                    ; preds = %bb.h
  %i.ct = lshr i32 %i.by, 1
  %i.cu = or i32 %i.ct, 128
  br label %bb.j

bb.j:                                             ; preds = %.thread57.3.i, %.split.3.i, %bb.i
  %i.cv = phi i32 [ 127, %.split.3.i ], [ 127, %.thread57.3.i ], [ -128, %bb.i ] ; 5 uses
  %spec.select62.3.i = phi i32 [ 1, %.split.3.i ], [ 1, %.thread57.3.i ], [ -1, %bb.i ]
  %i.cw = phi i32 [ %i.cs, %.split.3.i ], [ %i.cu, %.thread57.3.i ], [ %i.cr, %bb.i ] ; 2 uses
  %i.cx = sub nsw i32 %i.cv, %.039.2.i
  %i.cy = mul nsw i32 %i.cx, %i.ci
  %i.cz = add nsw i32 %i.cy, 512
  %i.da = ashr i32 %i.cz, 10                      ; 2 uses
  %i.db = add nsw i32 %i.da, %.039.2.i            ; 2 uses
  %i.dc = icmp ne i32 %i.da, 0
  %.not.3.i = icmp eq i32 %i.db, %i.cv
  %or.cond.3.i = or i1 %i.dc, %.not.3.i
  %i.dd = select i1 %or.cond.3.i, i32 0, i32 %spec.select62.3.i
  %.039.3.i = add nsw i32 %i.dd, %i.db            ; 5 uses
  store i32 %.039.3.i, ptr %i.b, align 4, !tbaa !29
  %.not53.3.i = icmp eq i32 %i.cv, %i.bx
  %.not54.388.i = icmp ne i32 %.0.2.i, 1023
  %i.de = zext i1 %.not54.388.i to i32
  %i.df = select i1 %.not53.3.i, i32 %i.de, i32 -1
  %.0.3.i = add nsw i32 %i.df, %i.ci              ; 2 uses
  %i.dg = tail call i32 @llvm.umax.i32(i32 %.0.3.i, i32 8) ; 3 uses
  store i32 %i.dg, ptr %i.n, align 4, !tbaa !31
  store i32 %i.cv, ptr %i.o, align 4, !tbaa !32
  %i.dh = getelementptr inbounds nuw i8, ptr %.04371.i, i64 5
  %i.di = load i8, ptr %i.cj, align 1, !tbaa !34
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -128                 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, %.039.3.i
  br i1 %i.dl, label %.thread57.4.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = icmp eq i32 %i.dk, 127
  %i.dn = icmp eq i32 %.039.3.i, 127
  %i.do = and i1 %i.dm, %i.dn
  %cond.fr55.4.i = freeze i1 %i.do
  %i.dp = lshr i32 %i.cw, 1                       ; 2 uses
  br i1 %cond.fr55.4.i, label %.split.4.i, label %bb.l

.split.4.i:                                       ; preds = %bb.k
  %i.dq = or i32 %i.dp, 128
  br label %bb.l

.thread57.4.i:                                    ; preds = %bb.j
  %i.dr = lshr i32 %i.cw, 1
  %i.ds = or i32 %i.dr, 128
  br label %bb.l

bb.l:                                             ; preds = %.thread57.4.i, %.split.4.i, %bb.k
  %i.dt = phi i32 [ 127, %.split.4.i ], [ 127, %.thread57.4.i ], [ -128, %bb.k ] ; 5 uses
  %spec.select62.4.i = phi i32 [ 1, %.split.4.i ], [ 1, %.thread57.4.i ], [ -1, %bb.k ]
  %i.du = phi i32 [ %i.dq, %.split.4.i ], [ %i.ds, %.thread57.4.i ], [ %i.dp, %bb.k ] ; 2 uses
  %i.dv = sub nsw i32 %i.dt, %.039.3.i
  %i.dw = mul nsw i32 %i.dv, %i.dg
  %i.dx = add nsw i32 %i.dw, 512
  %i.dy = ashr i32 %i.dx, 10                      ; 2 uses
  %i.dz = add nsw i32 %i.dy, %.039.3.i            ; 2 uses
  %i.ea = icmp ne i32 %i.dy, 0
  %.not.4.i = icmp eq i32 %i.dz, %i.dt
  %or.cond.4.i = or i1 %i.ea, %.not.4.i
  %i.eb = select i1 %or.cond.4.i, i32 0, i32 %spec.select62.4.i
  %.039.4.i = add nsw i32 %i.eb, %i.dz            ; 5 uses
  store i32 %.039.4.i, ptr %i.b, align 4, !tbaa !29
  %.not53.4.i = icmp eq i32 %i.dt, %i.cv
  %.not54.489.i = icmp ne i32 %.0.3.i, 1023
  %i.ec = zext i1 %.not54.489.i to i32
  %i.ed = select i1 %.not53.4.i, i32 %i.ec, i32 -1
  %.0.4.i = add nsw i32 %i.ed, %i.dg              ; 2 uses
  %i.ee = tail call i32 @llvm.umax.i32(i32 %.0.4.i, i32 8) ; 3 uses
  store i32 %i.ee, ptr %i.n, align 4, !tbaa !31
  store i32 %i.dt, ptr %i.o, align 4, !tbaa !32
  %i.ef = getelementptr inbounds nuw i8, ptr %.04371.i, i64 6
  %i.eg = load i8, ptr %i.dh, align 1, !tbaa !34
  %i.eh = zext i8 %i.eg to i32
  %i.ei = add nsw i32 %i.eh, -128                 ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, %.039.4.i
  br i1 %i.ej, label %.thread57.5.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ek = icmp eq i32 %i.ei, 127
  %i.el = icmp eq i32 %.039.4.i, 127
  %i.em = and i1 %i.ek, %i.el
  %cond.fr55.5.i = freeze i1 %i.em
  %i.en = lshr i32 %i.du, 1                       ; 2 uses
  br i1 %cond.fr55.5.i, label %.split.5.i, label %bb.n

.split.5.i:                                       ; preds = %bb.m
  %i.eo = or i32 %i.en, 128
  br label %bb.n

.thread57.5.i:                                    ; preds = %bb.l
  %i.ep = lshr i32 %i.du, 1
  %i.eq = or i32 %i.ep, 128
  br label %bb.n

bb.n:                                             ; preds = %.thread57.5.i, %.split.5.i, %bb.m
  %i.er = phi i32 [ 127, %.split.5.i ], [ 127, %.thread57.5.i ], [ -128, %bb.m ] ; 5 uses
  %spec.select62.5.i = phi i32 [ 1, %.split.5.i ], [ 1, %.thread57.5.i ], [ -1, %bb.m ]
  %i.es = phi i32 [ %i.eo, %.split.5.i ], [ %i.eq, %.thread57.5.i ], [ %i.en, %bb.m ] ; 2 uses
  %i.et = sub nsw i32 %i.er, %.039.4.i
  %i.eu = mul nsw i32 %i.et, %i.ee
  %i.ev = add nsw i32 %i.eu, 512
  %i.ew = ashr i32 %i.ev, 10                      ; 2 uses
  %i.ex = add nsw i32 %i.ew, %.039.4.i            ; 2 uses
  %i.ey = icmp ne i32 %i.ew, 0
  %.not.5.i = icmp eq i32 %i.ex, %i.er
  %or.cond.5.i = or i1 %i.ey, %.not.5.i
  %i.ez = select i1 %or.cond.5.i, i32 0, i32 %spec.select62.5.i
  %.039.5.i = add nsw i32 %i.ez, %i.ex            ; 5 uses
  store i32 %.039.5.i, ptr %i.b, align 4, !tbaa !29
  %.not53.5.i = icmp eq i32 %i.er, %i.dt
  %.not54.590.i = icmp ne i32 %.0.4.i, 1023
  %i.fa = zext i1 %.not54.590.i to i32
  %i.fb = select i1 %.not53.5.i, i32 %i.fa, i32 -1
  %.0.5.i = add nsw i32 %i.fb, %i.ee              ; 2 uses
  %i.fc = tail call i32 @llvm.umax.i32(i32 %.0.5.i, i32 8) ; 3 uses
  store i32 %i.fc, ptr %i.n, align 4, !tbaa !31
  store i32 %i.er, ptr %i.o, align 4, !tbaa !32
  %i.fd = getelementptr inbounds nuw i8, ptr %.04371.i, i64 7
  %i.fe = load i8, ptr %i.ef, align 1, !tbaa !34
  %i.ff = zext i8 %i.fe to i32
  %i.fg = add nsw i32 %i.ff, -128                 ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, %.039.5.i
  br i1 %i.fh, label %.thread57.6.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fi = icmp eq i32 %i.fg, 127
  %i.fj = icmp eq i32 %.039.5.i, 127
  %i.fk = and i1 %i.fi, %i.fj
  %cond.fr55.6.i = freeze i1 %i.fk
  %i.fl = lshr i32 %i.es, 1                       ; 2 uses
  br i1 %cond.fr55.6.i, label %.split.6.i, label %bb.p

.split.6.i:                                       ; preds = %bb.o
  %i.fm = or i32 %i.fl, 128
  br label %bb.p

.thread57.6.i:                                    ; preds = %bb.n
  %i.fn = lshr i32 %i.es, 1
  %i.fo = or i32 %i.fn, 128
  br label %bb.p

bb.p:                                             ; preds = %.thread57.6.i, %.split.6.i, %bb.o
  %i.fp = phi i32 [ 127, %.split.6.i ], [ 127, %.thread57.6.i ], [ -128, %bb.o ] ; 5 uses
  %spec.select62.6.i = phi i32 [ 1, %.split.6.i ], [ 1, %.thread57.6.i ], [ -1, %bb.o ]
  %i.fq = phi i32 [ %i.fm, %.split.6.i ], [ %i.fo, %.thread57.6.i ], [ %i.fl, %bb.o ] ; 2 uses
  %i.fr = sub nsw i32 %i.fp, %.039.5.i
  %i.fs = mul nsw i32 %i.fr, %i.fc
  %i.ft = add nsw i32 %i.fs, 512
  %i.fu = ashr i32 %i.ft, 10                      ; 2 uses
  %i.fv = add nsw i32 %i.fu, %.039.5.i            ; 2 uses
  %i.fw = icmp ne i32 %i.fu, 0
  %.not.6.i = icmp eq i32 %i.fv, %i.fp
  %or.cond.6.i = or i1 %i.fw, %.not.6.i
  %i.fx = select i1 %or.cond.6.i, i32 0, i32 %spec.select62.6.i
  %.039.6.i = add nsw i32 %i.fx, %i.fv            ; 5 uses
  store i32 %.039.6.i, ptr %i.b, align 4, !tbaa !29
  %.not53.6.i = icmp eq i32 %i.fp, %i.er
  %.not54.691.i = icmp ne i32 %.0.5.i, 1023
  %i.fy = zext i1 %.not54.691.i to i32
  %i.fz = select i1 %.not53.6.i, i32 %i.fy, i32 -1
  %.0.6.i = add nsw i32 %i.fz, %i.fc              ; 2 uses
  %i.ga = tail call i32 @llvm.umax.i32(i32 %.0.6.i, i32 8) ; 3 uses
  store i32 %i.ga, ptr %i.n, align 4, !tbaa !31
  store i32 %i.fp, ptr %i.o, align 4, !tbaa !32
  %i.gb = load i8, ptr %i.fd, align 1, !tbaa !34
  %i.gc = zext i8 %i.gb to i32
  %i.gd = add nsw i32 %i.gc, -128                 ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, %.039.6.i
  br i1 %i.ge, label %.thread57.7.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gf = icmp eq i32 %i.gd, 127
  %i.gg = icmp eq i32 %.039.6.i, 127
  %i.gh = and i1 %i.gf, %i.gg
  %cond.fr55.7.i = freeze i1 %i.gh
  %i.gi = lshr i32 %i.fq, 1                       ; 2 uses
  br i1 %cond.fr55.7.i, label %.split.7.i, label %bb.r

.split.7.i:                                       ; preds = %bb.q
  %i.gj = or i32 %i.gi, 128
  br label %bb.r

.thread57.7.i:                                    ; preds = %bb.p
  %i.gk = lshr i32 %i.fq, 1
  %i.gl = or i32 %i.gk, 128
  br label %bb.r

bb.r:                                             ; preds = %.thread57.7.i, %.split.7.i, %bb.q
  %i.gm = phi i32 [ 127, %.split.7.i ], [ 127, %.thread57.7.i ], [ -128, %bb.q ] ; 4 uses
  %spec.select62.7.i = phi i32 [ 1, %.split.7.i ], [ 1, %.thread57.7.i ], [ -1, %bb.q ]
  %i.gn = phi i32 [ %i.gj, %.split.7.i ], [ %i.gl, %.thread57.7.i ], [ %i.gi, %bb.q ] ; 2 uses
  %i.go = sub nsw i32 %i.gm, %.039.6.i
  %i.gp = mul nsw i32 %i.go, %i.ga
  %i.gq = add nsw i32 %i.gp, 512
  %i.gr = ashr i32 %i.gq, 10                      ; 2 uses
  %i.gs = add nsw i32 %i.gr, %.039.6.i            ; 2 uses
  %i.gt = icmp ne i32 %i.gr, 0
  %.not.7.i = icmp eq i32 %i.gs, %i.gm
  %or.cond.7.i = select i1 %i.gt, i1 true, i1 %.not.7.i
  %i.gu = select i1 %or.cond.7.i, i32 0, i32 %spec.select62.7.i
  %.039.7.i = add nsw i32 %i.gu, %i.gs
  store i32 %.039.7.i, ptr %i.b, align 4, !tbaa !29
  %.not53.7.i = icmp eq i32 %i.gm, %i.fp
  %.not54.792.i = icmp ne i32 %.0.6.i, 1023
  %i.gv = zext i1 %.not54.792.i to i32
  %i.gw = select i1 %.not53.7.i, i32 %i.gv, i32 -1
  %.0.7.i = add nsw i32 %i.gw, %i.ga
  %i.gx = tail call i32 @llvm.umax.i32(i32 %.0.7.i, i32 8)
  store i32 %i.gx, ptr %i.n, align 4, !tbaa !31
  store i32 %i.gm, ptr %i.o, align 4, !tbaa !32
  %scevgep.i = getelementptr i8, ptr %.04371.i, i64 8
  %i.gy = trunc nuw i32 %i.gn to i8
  %i.gz = getelementptr inbounds nuw i8, ptr %.04570.i, i64 1
  store i8 %i.gy, ptr %.04570.i, align 1, !tbaa !34
  %i.ha = add nuw nsw i32 %.04173.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ha, %i.h
  br i1 %exitcond.not.i, label %au_compress.exit, label %.preheader.i, !llvm.loop !54

au_compress.exit:                                 ; preds = %bb.r, %bb.b, %bb.a
  %storemerge = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.r ]
  %.0 = phi i32 [ %i.j, %bb.a ], [ 0, %bb.b ], [ 0, %bb.r ]
  store i32 %storemerge, ptr %3, align 4, !tbaa !56
  ret i32 %.0
}

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!30, !6, i64 0}
!30 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!31 = !{!30, !6, i64 4}
!32 = !{!30, !6, i64 8}
!33 = !{!10, !6, i64 648}
!34 = !{!7, !7, i64 0}
!35 = !{!10, !6, i64 356}
!36 = !{!10, !14, i64 40}
!37 = !{!38, !6, i64 8}
!38 = !{!"AVCodecInternal", !6, i64 0, !6, i64 4, !6, i64 8, !39, i64 16, !40, i64 24, !12, i64 32, !41, i64 40, !42, i64 48, !41, i64 56, !16, i64 64, !6, i64 72, !12, i64 80, !43, i64 88, !43, i64 96, !6, i64 104, !6, i64 108, !12, i64 112, !6, i64 120, !41, i64 128, !43, i64 136, !6, i64 144, !6, i64 148}
!39 = !{!"p1 _ZTS9FramePool", !12, i64 0}
!40 = !{!"p1 _ZTS15AVRefStructPool", !12, i64 0}
!41 = !{!"p1 _ZTS8AVPacket", !12, i64 0}
!42 = !{!"p1 _ZTS12AVBSFContext", !12, i64 0}
!43 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!44 = !{!10, !6, i64 376}
!45 = !{!46, !6, i64 112}
!46 = !{!"AVFrame", !7, i64 0, !7, i64 64, !47, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !48, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !49, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!47 = !{!"p2 omnipotent char", !28, i64 0}
!48 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!49 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!50 = !{!46, !6, i64 388}
!51 = !{!16, !16, i64 0}
!52 = !{!53, !16, i64 24}
!53 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!6, !6, i64 0}
end_hunk_0
