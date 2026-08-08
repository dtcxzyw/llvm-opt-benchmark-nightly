begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFCodecParser = type { %struct.AVCodecParser, i32, ptr, ptr, ptr }
%struct.AVCodecParser = type { [7 x i32] }
%struct.GetBitContext = type { ptr, i32, i32, i32 }
%struct.MLPHeaderInfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@ff_mlp_parser = local_unnamed_addr constant %struct.FFCodecParser { %struct.AVCodecParser { [7 x i32] [i32 86045, i32 86060, i32 0, i32 0, i32 0, i32 0, i32 0] }, i32 64, ptr @mlp_init, ptr @mlp_parse, ptr @ff_parse_close }, align 8
@.str = private unnamed_addr constant [25 x i8] c"ff_combine_frame failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"mlpparse: Parity check failed.\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @mlp_init(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  tail call void @ff_mlp_init_crc() #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @mlp_parse(ptr nofree noundef captures(none) initializes((232, 236)) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %6 = alloca %struct.GetBitContext, align 8      ; 8 uses
  %7 = alloca %struct.MLPHeaderInfo, align 8      ; 13 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !9
  store i32 %5, ptr %i.b, align 4, !tbaa !12
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !17
  store i32 0, ptr %3, align 4, !tbaa !12
  store ptr null, ptr %2, align 8, !tbaa !9
  %i.e = icmp eq i32 %5, 0
  br i1 %i.e, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load i32, ptr %i.f, align 8, !tbaa !18
  %i.h = and i32 %i.g, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19
  %.not101 = icmp eq i32 %i.j, 0
  br i1 %.not101, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.c
  %i.k = icmp sgt i32 %5, 0
  br i1 %i.k, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.promoted = load i32, ptr %i.l, align 4, !tbaa !22
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph123, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.n = phi i32 [ %.promoted, %.lr.ph123 ], [ %i.s, %bb.f ]
  %i.o = shl i32 %i.n, 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !23
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r               ; 3 uses
  store i32 %i.s, ptr %i.l, align 4, !tbaa !22
  %i.t = and i32 %i.s, -2
  %i.u = icmp eq i32 %i.t, -126718022
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.m, align 8, !tbaa !24
  %i.w = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.x = add nsw i32 %i.v, %i.w
  %i.y = icmp sgt i32 %i.x, 6
  br i1 %i.y, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond129.not, label %._crit_edge124, label %bb.d, !llvm.loop !25

._crit_edge124:                                   ; preds = %bb.f, %.preheader
  %i.z = call i32 @ff_combine_frame(ptr noundef nonnull %i.c, i32 noundef -100, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not103 = icmp eq i32 %i.z, -1
  br i1 %.not103, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge124
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 24, ptr noundef nonnull @.str) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge124
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !12
  br label %bb.aj

bb.i:                                             ; preds = %bb.e
  store i32 1, ptr %i.i, align 4, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 0, ptr %i.ab, align 8, !tbaa !27
  %i.ac = add nsw i32 %i.w, -7                    ; 2 uses
  %i.ad = call i32 @ff_combine_frame(ptr noundef nonnull %i.c, i32 noundef %i.ac, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.aj

bb.j:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 24, ptr noundef nonnull @.str) #5
  br label %bb.aj

bb.k:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 6 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !27 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.preheader114, label %bb.u

.preheader114:                                    ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !28
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader114
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.ao = load i32, ptr %i.al, align 8, !tbaa !30 ; 2 uses
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.al, align 8, !tbaa !30
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !23
  %i.at = load i32, ptr %i.am, align 8, !tbaa !24 ; 2 uses
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.am, align 8, !tbaa !24
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %i.an, i64 %i.av
  store i8 %i.as, ptr %i.aw, align 1, !tbaa !23
  %i.ax = load i32, ptr %i.ai, align 4, !tbaa !28 ; 2 uses
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.ai, align 4, !tbaa !28
  %i.az = icmp sgt i32 %i.ax, 1
  br i1 %i.az, label %bb.l, label %._crit_edge.loopexit, !llvm.loop !31

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i32, ptr %i.b, align 4, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader114
  %i.ba = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %5, %.preheader114 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !24 ; 5 uses
  %i.bd = add nsw i32 %i.ba, %i.bc
  %i.be = icmp slt i32 %i.bd, 2
  br i1 %i.be, label %bb.m, label %bb.p

bb.m:                                             ; preds = %._crit_edge
  %i.bf = call i32 @ff_combine_frame(ptr noundef nonnull %i.c, i32 noundef -100, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not105 = icmp eq i32 %i.bf, -1
  br i1 %.not105, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 24, ptr noundef nonnull @.str) #5
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bg = load i32, ptr %i.b, align 4, !tbaa !12
  br label %bb.aj

bb.p:                                             ; preds = %._crit_edge
  %i.bh = icmp sgt i32 %i.bc, 0
  %. = select i1 %i.bh, ptr %i.c, ptr %i.a
  %.in.in = load ptr, ptr %., align 8, !tbaa !9
  %.in = load i8, ptr %.in.in, align 1, !tbaa !23
  %i.bi = zext i8 %.in to i32
  %i.bj = shl nuw nsw i32 %i.bi, 8
  %i.bk = icmp sgt i32 %i.bc, 1
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.bo = sub nsw i32 1, %i.bc
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.in104.in = phi ptr [ %i.bm, %bb.q ], [ %i.bq, %bb.r ]
  %.in104 = load i8, ptr %.in104.in, align 1, !tbaa !23
  %i.br = zext i8 %.in104 to i32
  %.masked = and i32 %i.bj, 3840
  %i.bs = or disjoint i32 %.masked, %i.br         ; 2 uses
  %i.bt = shl nuw nsw i32 %i.bs, 1                ; 2 uses
  store i32 %i.bt, ptr %i.af, align 8, !tbaa !27
  %i.bu = icmp eq i32 %i.bs, 0
  br i1 %i.bu, label %bb.ai, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = sub nsw i32 %i.bt, %i.bc                ; 2 uses
  store i32 %i.bv, ptr %i.af, align 8, !tbaa !27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.k
  %i.bw = phi i32 [ %i.ba, %bb.t ], [ %5, %bb.k ]
  %i.bx = phi i32 [ %i.bv, %bb.t ], [ %i.ag, %bb.k ] ; 2 uses
  %i.by = icmp sgt i32 %i.bx, %i.bw
  %spec.select = select i1 %i.by, i32 -100, i32 %i.bx ; 2 uses
  %i.bz = call i32 @ff_combine_frame(ptr noundef nonnull %i.c, i32 noundef %spec.select, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cb = load i32, ptr %i.b, align 4, !tbaa !12  ; 2 uses
  %i.cc = load i32, ptr %i.af, align 8, !tbaa !27
  %i.cd = sub nsw i32 %i.cc, %i.cb
  store i32 %i.cd, ptr %i.af, align 8, !tbaa !27
  br label %bb.aj

bb.w:                                             ; preds = %bb.u
  store i32 0, ptr %i.af, align 8, !tbaa !27
  %.pre130 = load i32, ptr %i.b, align 4, !tbaa !12
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.w
  %i.ce = phi i32 [ %.pre130, %bb.w ], [ %5, %bb.b ] ; 3 uses
  %.093 = phi i32 [ %spec.select, %bb.w ], [ %5, %bb.b ]
  %i.cf = icmp sgt i32 %i.ce, 7
  br i1 %i.cf, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 1, !tbaa !23
  %i.cj = and i32 %i.ci, -16777217
  %i.ck = icmp eq i32 %i.cj, -1167101192
  br i1 %i.ck, label %bb.ad, label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.y
  store i32 0, ptr %i.d, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !32 ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, -1
  br i1 %i.cn, label %bb.z, label %._crit_edge121

bb.z:                                             ; preds = %.critedge
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !9   ; 3 uses
  %8 = load <4 x i8>, ptr %i.co, align 1, !tbaa !23
  %9 = call i8 @llvm.vector.reduce.xor.v4i8(<4 x i8> %8) ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.cm, 0
  br i1 %exitcond.peel.not, label %._crit_edge121.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.z, %bb.ab
  %.089119 = phi i32 [ %.1, %bb.ab ], [ 4, %bb.z ] ; 3 uses
  %.191118 = phi i32 [ %i.df, %bb.ab ], [ 0, %bb.z ]
  %.094117 = phi i8 [ %.195, %bb.ab ], [ %9, %bb.z ]
  %i.cp = sext i32 %.089119 to i64
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 %i.cp ; 3 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !23  ; 2 uses
  %i.cs = add nsw i32 %.089119, 2                 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cq, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !23
  %i.cv = xor i8 %.094117, %i.cu
  %i.cw = xor i8 %i.cv, %i.cr                     ; 2 uses
  %.not108 = icmp sgt i8 %i.cr, -1
  br i1 %.not108, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.peel.next
  %i.cx = sext i32 %i.cs to i64
  %i.cy = getelementptr inbounds i8, ptr %i.co, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !23
  %i.da = add nsw i32 %.089119, 4
  %i.db = getelementptr i8, ptr %i.cq, i64 3
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !23
  %i.dd = xor i8 %i.cz, %i.dc
  %i.de = xor i8 %i.dd, %i.cw
  br label %bb.ab

bb.ab:                                            ; preds = %.peel.next, %bb.aa
  %.195 = phi i8 [ %i.de, %bb.aa ], [ %i.cw, %.peel.next ] ; 2 uses
  %.1 = phi i32 [ %i.da, %bb.aa ], [ %i.cs, %.peel.next ]
  %i.df = add nuw nsw i32 %.191118, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, %i.cm
  br i1 %exitcond.not, label %._crit_edge121.loopexit, label %.peel.next, !llvm.loop !33

._crit_edge121.loopexit:                          ; preds = %bb.ab, %bb.z
  %.195.lcssa = phi i8 [ %9, %bb.z ], [ %.195, %bb.ab ]
  %i.dg = zext i8 %.195.lcssa to i32
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %._crit_edge121.loopexit, %.critedge
  %.094.lcssa = phi i32 [ 0, %.critedge ], [ %i.dg, %._crit_edge121.loopexit ] ; 2 uses
  %i.dh = lshr i32 %.094.lcssa, 4
  %.masked106 = and i32 %.094.lcssa, 15
  %i.di = xor i32 %i.dh, %.masked106
  %.not107 = icmp eq i32 %i.di, 15
  br i1 %.not107, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge121
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.1) #5
  br label %bb.ai

bb.ad:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.dj = shl i32 %i.ce, 3
  %i.dk = add i32 %i.dj, -32                      ; 2 uses
  %or.cond.i = icmp ult i32 %i.dk, 2147483135     ; 2 uses
  %.014.i = select i1 %or.cond.i, ptr %i.ch, ptr null
  %.013.i = select i1 %or.cond.i, i32 %i.dk, i32 0 ; 2 uses
  store ptr %.014.i, ptr %6, align 8, !tbaa !35
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %.013.i, ptr %i.dl, align 4, !tbaa !37
  %i.dm = add nuw nsw i32 %.013.i, 8
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !38
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.do, align 8, !tbaa !39
  %i.dp = call i32 @ff_mlp_read_major_sync(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %6) #5
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 1, ptr %i.d, align 8, !tbaa !17
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !40 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 652
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !42
  %i.du = icmp sgt i32 %i.ds, 16
  %spec.select139 = select i1 %i.du, i32 2, i32 1
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 348
  store i32 %spec.select139, ptr %i.dv, align 4, !tbaa !59
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !60
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i32 %i.dx, ptr %i.dy, align 8, !tbaa !61
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !62 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %i.ea, ptr %i.eb, align 8, !tbaa !63
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i32 %i.ea, ptr %i.ec, align 8, !tbaa !64
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  call void @av_channel_layout_uninit(ptr noundef nonnull %i.ed) #5
  %i.ee = load i32, ptr %7, align 8, !tbaa !65
  %i.ef = icmp eq i32 %i.ee, 187
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.eh = load i32, ptr %i.eg, align 8
  %.not109 = icmp eq i32 %i.eh, 0
  %.141 = select i1 %.not109, i64 64, i64 72
  %.sink = select i1 %i.ef, i64 56, i64 %.141
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 %.sink
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !66
  %i.ek = call i32 @av_channel_layout_from_mask(ptr noundef nonnull %i.ed, i64 noundef %i.ej) #5 ; 0 uses
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.em = load i32, ptr %i.el, align 8, !tbaa !67
  %.not110 = icmp eq i32 %i.em, 0
  br i1 %.not110, label %bb.af, label %.thread112

bb.af:                                            ; preds = %bb.ae
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 92
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !68
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !69
  br label %.thread112

.thread112:                                       ; preds = %bb.ae, %bb.af
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.es = load i32, ptr %i.er, align 8, !tbaa !70
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %i.es, ptr %i.et, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  %.pre131 = load i32, ptr %i.b, align 4, !tbaa !12
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %bb.ai

bb.ah:                                            ; preds = %.thread112, %._crit_edge121
  %i.eu = phi i32 [ %.pre131, %.thread112 ], [ %i.ce, %._crit_edge121 ]
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !9
  store ptr %i.ev, ptr %2, align 8, !tbaa !9
  store i32 %i.eu, ptr %3, align 4, !tbaa !12
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.s, %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 0, ptr %i.ew, align 4, !tbaa !19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.i, %bb.a, %bb.ai, %bb.ah, %bb.v, %bb.o, %bb.j, %bb.h
  %.092 = phi i32 [ %i.aa, %bb.h ], [ %i.ac, %bb.i ], [ %.093, %bb.ah ], [ 1, %bb.ai ], [ %i.bg, %bb.o ], [ %i.cb, %bb.v ], [ %i.ad, %bb.j ], [ 0, %bb.a ]
  ret i32 %.092
}

declare void @ff_parse_close(ptr noundef) #2

declare void @ff_mlp_init_crc() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @ff_combine_frame(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_mlp_read_major_sync(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #2

declare i32 @av_channel_layout_from_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.xor.v4i8(<4 x i8>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !11, i64 0}
!14 = !{!"AVCodecParserContext", !11, i64 0, !15, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !6, i64 80, !6, i64 84, !7, i64 88, !7, i64 120, !7, i64 152, !6, i64 184, !16, i64 192, !7, i64 200, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !7, i64 248, !16, i64 280, !16, i64 288, !6, i64 296, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328}
!15 = !{!"p1 _ZTS13AVCodecParser", !11, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!14, !6, i64 232}
!18 = !{!14, !6, i64 184}
!19 = !{!20, !6, i64 52}
!20 = !{!"MLPParseContext", !21, i64 0, !6, i64 48, !6, i64 52, !6, i64 56}
!21 = !{!"ParseContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !16, i64 40}
!22 = !{!20, !6, i64 20}
!23 = !{!7, !7, i64 0}
!24 = !{!20, !6, i64 8}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!20, !6, i64 48}
!28 = !{!20, !6, i64 28}
!29 = !{!20, !10, i64 0}
!30 = !{!20, !6, i64 32}
!31 = distinct !{!31, !26}
!32 = !{!20, !6, i64 56}
!33 = distinct !{!33, !26, !34}
!34 = !{!"llvm.loop.peeled.count", i32 1}
!35 = !{!36, !10, i64 0}
!36 = !{!"GetBitContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!37 = !{!36, !6, i64 12}
!38 = !{!36, !6, i64 16}
!39 = !{!36, !6, i64 8}
!40 = !{!41, !6, i64 8}
!41 = !{!"MLPHeaderInfo", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104}
!42 = !{!43, !6, i64 652}
!43 = !{!"AVCodecContext", !44, i64 0, !6, i64 8, !6, i64 12, !45, i64 16, !6, i64 24, !6, i64 28, !11, i64 32, !46, i64 40, !11, i64 48, !16, i64 56, !6, i64 64, !6, i64 68, !10, i64 72, !6, i64 80, !47, i64 84, !47, i64 92, !47, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !47, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !11, i64 184, !11, i64 192, !6, i64 200, !48, i64 204, !48, i64 208, !48, i64 212, !48, i64 216, !48, i64 220, !48, i64 224, !48, i64 228, !48, i64 232, !48, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !49, i64 288, !49, i64 296, !49, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !50, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !11, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !48, i64 428, !48, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !51, i64 456, !16, i64 464, !16, i64 472, !48, i64 480, !48, i64 484, !6, i64 488, !6, i64 492, !10, i64 496, !10, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !52, i64 536, !11, i64 544, !53, i64 552, !53, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !11, i64 672, !11, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !54, i64 728, !10, i64 736, !6, i64 744, !6, i64 748, !10, i64 752, !10, i64 760, !10, i64 768, !55, i64 776, !6, i64 784, !6, i64 788, !16, i64 792, !6, i64 800, !6, i64 804, !16, i64 808, !11, i64 816, !16, i64 824, !56, i64 832, !6, i64 840, !57, i64 848, !6, i64 856, !6, i64 860}
!44 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!45 = !{!"p1 _ZTS7AVCodec", !11, i64 0}
!46 = !{!"p1 _ZTS15AVCodecInternal", !11, i64 0}
!47 = !{!"AVRational", !6, i64 0, !6, i64 4}
!48 = !{!"float", !7, i64 0}
!49 = !{!"p1 short", !11, i64 0}
!50 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !11, i64 16}
!51 = !{!"p1 _ZTS10RcOverride", !11, i64 0}
!52 = !{!"p1 _ZTS9AVHWAccel", !11, i64 0}
!53 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!54 = !{!"p1 _ZTS17AVCodecDescriptor", !11, i64 0}
!55 = !{!"p1 _ZTS16AVPacketSideData", !11, i64 0}
!56 = !{!"p1 int", !11, i64 0}
!57 = !{!"p2 _ZTS15AVFrameSideData", !58, i64 0}
!58 = !{!"any p2 pointer", !11, i64 0}
!59 = !{!43, !6, i64 348}
!60 = !{!41, !6, i64 16}
!61 = !{!43, !6, i64 344}
!62 = !{!41, !6, i64 80}
!63 = !{!14, !6, i64 296}
!64 = !{!43, !6, i64 376}
!65 = !{!41, !6, i64 0}
!66 = !{!16, !16, i64 0}
!67 = !{!41, !6, i64 88}
!68 = !{!41, !6, i64 92}
!69 = !{!43, !16, i64 56}
!70 = !{!41, !6, i64 96}
end_hunk_0
