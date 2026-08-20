inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"mvdv\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"MidiVid VQ\00", align 1
@ff_mvdv_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 240, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 56, ptr null, ptr null, ptr null, ptr @decode_init, %union.anon { ptr @decode_frame }, ptr @decode_close, ptr @decode_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid image size %dx%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !30
  %i.g = tail call i32 @av_image_check_size(i32 noundef %i.d, i32 noundef %i.f, i32 noundef 0, ptr noundef %0) #5 ; 2 uses
  %i.h = load i32, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.i = and i32 %i.h, 3
  %.not = icmp eq i32 %i.i, 0
  %.pre = load i32, ptr %i.e, align 4, !tbaa !30  ; 2 uses
  %i.j = and i32 %.pre, 3
  %.not19 = icmp eq i32 %i.j, 0
  %or.cond = select i1 %.not, i1 %.not19, i1 false
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i32 %i.g, 0
  br i1 %i.k, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %.023 = phi i32 [ %i.g, %bb.b ], [ -1094995529, %bb.a ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.h, i32 noundef %.pre) #5
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 5, ptr %i.l, align 8, !tbaa !31
  %i.m = tail call ptr @av_frame_alloc() #5       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !32
  %.not20 = icmp eq ptr %i.m, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.c, align 8, !tbaa !29
  %i.p = ashr i32 %i.o, 1
  %i.q = sext i32 %i.p to i64
  %i.r = load i32, ptr %i.e, align 4, !tbaa !30
  %i.s = ashr i32 %i.r, 1
  %i.t = sext i32 %i.s to i64
  %i.u = tail call noalias ptr @av_calloc(i64 noundef %i.q, i64 noundef %i.t) #5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.u, ptr %i.v, align 8, !tbaa !36
  %.not21 = icmp eq ptr %i.u, null
  %. = select i1 %.not21, i32 -12, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread
  %.018 = phi i32 [ %.023, %.thread ], [ -12, %bb.c ], [ %., %bb.d ]
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 34 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37   ; 3 uses
  %i.g = icmp slt i32 %i.f, 14
  br i1 %i.g, label %lzss_uncompress.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 5 uses
  %.not.i51 = icmp eq ptr %i.i, null
  br i1 %.not.i51, label %bb.c, label %bytestream2_init.exit52

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 141) #5
  tail call void @abort() #6
  unreachable

bytestream2_init.exit52:                          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !40
  %i.k = zext nneg i32 %i.f to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store ptr %i.o, ptr %i.b, align 8, !tbaa !42
  %i.p = load i32, ptr %i.n, align 1, !tbaa !43
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bytestream2_init.exit52
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.s = add nsw i32 %i.f, -12
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 4
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i64 noundef %i.u) #5
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !44   ; 6 uses
  %.not49 = icmp eq ptr %i.v, null
  br i1 %.not49, label %lzss_uncompress.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.r, align 8, !tbaa !45
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !41   ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !46  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = icmp sgt i32 %i.ae, 2
  br i1 %i.af, label %.lr.ph.i, label %lzss_uncompress.exit

.loopexit.i:                                      ; preds = %.thread.i
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !46  ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = icmp sgt i32 %i.al, 2
  br i1 %i.am, label %.lr.ph.i, label %lzss_uncompress.exit, !llvm.loop !47

.lr.ph.i:                                         ; preds = %bb.e, %.loopexit.i
  %i.an = phi i64 [ %i.ak, %.loopexit.i ], [ %i.ad, %bb.e ]
  %i.ao = phi ptr [ %i.ah, %.loopexit.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ap = phi ptr [ %i.ag, %.loopexit.i ], [ %i.z, %bb.e ]
  %.04712.i = phi ptr [ %.350.i, %.loopexit.i ], [ %i.v, %bb.e ]
  %i.aq = icmp slt i64 %i.an, 2
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !46
  br label %bytestream2_get_le16.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !42
  %i.as = load i16, ptr %i.ao, align 1, !tbaa !43
  %i.at = zext i16 %i.as to i32
  br label %bytestream2_get_le16.exit.i.preheader

bytestream2_get_le16.exit.i.preheader:            ; preds = %bb.g, %bb.f
  %.04410.i.ph = phi i32 [ 0, %bb.f ], [ %i.at, %bb.g ]
  br label %bytestream2_get_le16.exit.i

bytestream2_get_le16.exit.i:                      ; preds = %bytestream2_get_le16.exit.i.preheader, %.thread.i
  %.04311.i = phi i32 [ %i.dp, %.thread.i ], [ 0, %bytestream2_get_le16.exit.i.preheader ]
  %.04410.i = phi i32 [ %i.do, %.thread.i ], [ %.04410.i.ph, %bytestream2_get_le16.exit.i.preheader ] ; 2 uses
  %.1489.i = phi ptr [ %.350.i, %.thread.i ], [ %.04712.i, %bytestream2_get_le16.exit.i.preheader ] ; 19 uses
  %i.au = and i32 %.04410.i, 1
  %.not.i53 = icmp eq i32 %i.au, 0
  br i1 %.not.i53, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bytestream2_get_le16.exit.i
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !41  ; 3 uses
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !46  ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp slt i64 %i.az, 1
  br i1 %i.ba, label %bytestream2_get_byte.exit63.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 3 uses
  store ptr %i.bb, ptr %i.b, align 8, !tbaa !42
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !43
  %i.bd = zext i8 %i.bc to i32
  %.pre.i = ptrtoint ptr %i.bb to i64
  br label %bytestream2_get_byte.exit63.i

bytestream2_get_byte.exit63.i:                    ; preds = %bb.i, %bb.h
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.i ], [ %i.ax, %bb.h ]
  %i.be = phi ptr [ %i.bb, %bb.i ], [ %i.av, %bb.h ] ; 2 uses
  %.0.i62.i = phi i32 [ %i.bd, %bb.i ], [ 0, %bb.h ] ; 4 uses
  %i.bf = sub i64 %i.ax, %.pre-phi.i
  %i.bg = icmp slt i64 %i.bf, 1
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bytestream2_get_byte.exit63.i
  store ptr %i.av, ptr %i.b, align 8, !tbaa !46
  br label %bytestream2_get_byte.exit61.i

bb.k:                                             ; preds = %bytestream2_get_byte.exit63.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !42
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !43
  %i.bj = zext i8 %i.bi to i32
  br label %bytestream2_get_byte.exit61.i

bytestream2_get_byte.exit61.i:                    ; preds = %bb.k, %bb.j
  %.0.i60.i = phi i32 [ 0, %bb.j ], [ %i.bj, %bb.k ] ; 2 uses
  %i.bk = shl nuw nsw i32 %.0.i62.i, 4
  %i.bl = and i32 %i.bk, 3840
  %i.bm = or disjoint i32 %.0.i60.i, %i.bl        ; 2 uses
  %i.bn = and i32 %.0.i62.i, 15                   ; 3 uses
  %i.bo = add nuw nsw i32 %i.bn, 3
  %i.bp = zext nneg i32 %i.bo to i64              ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.1489.i, i64 %i.bp ; 6 uses
  %i.br = icmp ugt ptr %i.bq, %i.y
  %i.bs = zext nneg i32 %i.bm to i64              ; 8 uses
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %.1489.i, i64 %i.bt
  %i.bv = icmp ult ptr %i.bu, %i.v
  %or.cond.i = select i1 %i.br, i1 true, i1 %i.bv
  br i1 %or.cond.i, label %lzss_uncompress.exit.thread, label %bb.l

bb.l:                                             ; preds = %bytestream2_get_byte.exit61.i
  %.not55.i = icmp eq i32 %i.bm, 0
  br i1 %.not55.i, label %.thread.i, label %iter.check

iter.check:                                       ; preds = %bb.l
  %min.iters.check = icmp eq i32 %i.bn, 0
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %4 = shl nuw nsw i32 %.0.i62.i, 4
  %5 = and i32 %4, 3840
  %i.bw = or disjoint i32 %5, %.0.i60.i
  %i.bx = add nsw i32 %i.bw, -1
  %diff.check = icmp ult i32 %i.bx, 15
  br i1 %diff.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check109 = icmp samesign ult i32 %i.bn, 13
  br i1 %min.iters.check109, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, 16                      ; 3 uses
  %i.bz = sub nsw i64 0, %i.bs
  %i.ca = getelementptr inbounds i8, ptr %.1489.i, i64 %i.bz
  %wide.load = load <16 x i8>, ptr %i.ca, align 1, !tbaa !43
  store <16 x i8> %wide.load, ptr %.1489.i, align 1, !tbaa !43
  %cmp.n = icmp eq i64 %n.vec, %i.bp
  br i1 %cmp.n, label %.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %i.bp, 28                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 3 uses
  %i.cb = sub nsw i64 %index111, %i.bs
  %i.cc = getelementptr inbounds i8, ptr %.1489.i, i64 %i.cb
  %wide.load112 = load <4 x i8>, ptr %i.cc, align 1, !tbaa !43
  %i.cd = getelementptr inbounds nuw i8, ptr %.1489.i, i64 %index111
  store <4 x i8> %wide.load112, ptr %i.cd, align 1, !tbaa !43
  %index.next113 = add nuw i64 %index111, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next113, %n.vec110
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %n.vec110, %i.bp
  br i1 %cmp.n114, label %.thread.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec110, %vec.epilog.middle.block ] ; 3 uses
  %i.cf = and i32 %.0.i62.i, 15
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = add nuw nsw i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.cg, 2
  %i.cj = sub nsw i64 %i.ci, %indvars.iv.i.ph
  %xtraiter = and i64 %i.ch, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader, %.preheader.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.preheader.i.prol ], [ %indvars.iv.i.ph, %.preheader.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader ]
  %i.ck = sub nsw i64 %indvars.iv.i.prol, %i.bs
  %i.cl = getelementptr inbounds i8, ptr %.1489.i, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !43
  %i.cn = getelementptr inbounds nuw i8, ptr %.1489.i, i64 %indvars.iv.i.prol
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !43
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !53

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.i.preheader ], [ %indvars.iv.next.i.prol, %.preheader.i.prol ]
  %i.co = icmp ult i64 %i.cj, 3
  br i1 %i.co, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.i ], [ %indvars.iv.i.unr, %.preheader.i.prol.loopexit ] ; 6 uses
  %i.cp = sub nsw i64 %indvars.iv.i, %i.bs
  %i.cq = getelementptr inbounds i8, ptr %.1489.i, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %.1489.i, i64 %indvars.iv.i
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !43
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ct = sub nsw i64 %indvars.iv.next.i, %i.bs
  %i.cu = getelementptr inbounds i8, ptr %.1489.i, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !43
  %i.cw = getelementptr inbounds nuw i8, ptr %.1489.i, i64 %indvars.iv.next.i
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !43
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cx = sub nsw i64 %indvars.iv.next.i.1, %i.bs
  %i.cy = getelementptr inbounds i8, ptr %.1489.i, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !43
  %i.da = getelementptr inbounds nuw i8, ptr %.1489.i, i64 %indvars.iv.next.i.1
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !43
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.db = sub nsw i64 %indvars.iv.next.i.2, %i.bs
  %i.dc = getelementptr inbounds i8, ptr %.1489.i, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !43
  %i.de = getelementptr inbounds nuw i8, ptr %.1489.i, i64 %indvars.iv.next.i.2
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !43
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.bp
  br i1 %exitcond.not.i.3, label %.thread.i, label %.preheader.i, !llvm.loop !55

bb.m:                                             ; preds = %bytestream2_get_le16.exit.i
  %.not54.i = icmp ult ptr %.1489.i, %i.y
  br i1 %.not54.i, label %bb.n, label %lzss_uncompress.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.df = load ptr, ptr %i.m, align 8, !tbaa !41  ; 2 uses
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !46  ; 3 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = icmp slt i64 %i.dj, 1
  br i1 %i.dk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.df, ptr %i.b, align 8, !tbaa !46
  br label %bytestream2_get_byte.exit.i

bb.p:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store ptr %i.dl, ptr %i.b, align 8, !tbaa !42
  %i.dm = load i8, ptr %i.dg, align 1, !tbaa !43
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.p, %bb.o
  %.0.i59.i = phi i8 [ 0, %bb.o ], [ %i.dm, %bb.p ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.1489.i, i64 1
  store i8 %.0.i59.i, ptr %.1489.i, align 1, !tbaa !43
  br label %.thread.i

.thread.i:                                        ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %vector.ph, %vec.epilog.middle.block, %bytestream2_get_byte.exit.i, %bb.l
  %.350.i = phi ptr [ %i.dn, %bytestream2_get_byte.exit.i ], [ %i.bq, %bb.l ], [ %i.bq, %vector.ph ], [ %i.bq, %vec.epilog.middle.block ], [ %i.bq, %.preheader.i ], [ %i.bq, %.preheader.i.prol.loopexit ] ; 3 uses
  %i.do = lshr i32 %.04410.i, 1
  %i.dp = add nuw nsw i32 %.04311.i, 1            ; 2 uses
  %exitcond14.i = icmp eq i32 %i.dp, 16
  br i1 %exitcond14.i, label %.loopexit.i, label %bytestream2_get_le16.exit.i, !llvm.loop !56

lzss_uncompress.exit:                             ; preds = %.loopexit.i, %bb.e
  %.047.lcssa.i = phi ptr [ %i.v, %bb.e ], [ %.350.i, %.loopexit.i ]
  %i.dq = ptrtoint ptr %.047.lcssa.i to i64
  %i.dr = ptrtoint ptr %i.v to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = trunc i64 %i.ds to i32                  ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %lzss_uncompress.exit.thread, label %bb.q

bb.q:                                             ; preds = %lzss_uncompress.exit
  %i.dv = load ptr, ptr %i.q, align 8, !tbaa !44  ; 4 uses
  %.not.i = icmp eq ptr %i.dv, null
  br i1 %.not.i, label %bb.r, label %bytestream2_init.exit

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 141) #5
  tail call void @abort() #6
  unreachable

bytestream2_init.exit:                            ; preds = %bb.q
  store ptr %i.dv, ptr %i.b, align 8, !tbaa !46
  store ptr %i.dv, ptr %i.j, align 8, !tbaa !40
  %i.dw = and i64 %i.ds, 2147483647
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw
  store ptr %i.dx, ptr %i.m, align 8, !tbaa !41
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %bb.s

bb.s:                                             ; preds = %bytestream2_init.exit, %bytestream2_init.exit52
  %i.dy = phi ptr [ %.pre, %bytestream2_init.exit ], [ %i.d, %bytestream2_init.exit52 ]
  %i.dz = tail call i32 @ff_reget_buffer(ptr noundef %0, ptr noundef %i.dy, i32 noundef 0) #5 ; 2 uses
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %lzss_uncompress.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eb = load ptr, ptr %i.m, align 8, !tbaa !41  ; 5 uses
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !46  ; 3 uses
  %i.ed = ptrtoint ptr %i.eb to i64               ; 9 uses
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = icmp slt i64 %i.ef, 2
  br i1 %i.eg, label %bytestream2_get_le16.exit195.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 2 ; 3 uses
  store ptr %i.eh, ptr %i.b, align 8, !tbaa !42
  %i.ei = load i16, ptr %i.ec, align 1, !tbaa !43
  %i.ej = zext i16 %i.ei to i32
  %.pre272.i = ptrtoint ptr %i.eh to i64
  br label %bytestream2_get_le16.exit195.i

bytestream2_get_le16.exit195.i:                   ; preds = %bb.u, %bb.t
  %.pre-phi.i54 = phi i64 [ %.pre272.i, %bb.u ], [ %i.ed, %bb.t ]
  %i.ek = phi ptr [ %i.eh, %bb.u ], [ %i.eb, %bb.t ] ; 2 uses
  %.0.i194.i = phi i32 [ %i.ej, %bb.u ], [ 0, %bb.t ] ; 4 uses
  %i.el = sub i64 %i.ed, %.pre-phi.i54
  %i.em = icmp slt i64 %i.el, 2
  br i1 %i.em, label %bytestream2_get_le16.exit.thread.i, label %bytestream2_get_le16.exit.i55

bytestream2_get_le16.exit.i55:                    ; preds = %bytestream2_get_le16.exit195.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 2 ; 4 uses
  store ptr %i.en, ptr %i.b, align 8, !tbaa !42
  %i.eo = load i16, ptr %i.ek, align 1, !tbaa !43
  %.not225.i = icmp eq i16 %i.eo, 0
end_hunk_0
