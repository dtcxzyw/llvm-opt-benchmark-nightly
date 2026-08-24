Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/cubestr?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.cdata_struct = type { ptr, ptr, ptr, ptr, i32, i32, i32 }

@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@.str = private unnamed_addr constant [42 x i8] c"cube size is silly, error in .i/.o or .mv\00", align 1
@cdata = external local_unnamed_addr global %struct.cdata_struct, align 8
@temp_cube_save = external local_unnamed_addr global %struct.cube_struct, align 8
@temp_cdata_save = external local_unnamed_addr global %struct.cdata_struct, align 8

; Function Attrs: nounwind uwtable
define dso_local void @cube_setup() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !8 ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4 ; 2 uses
  %i.d = icmp slt i32 %i.c, %i.a
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str) #9
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14
  %.pre84 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.a, %bb.a ], [ %.pre84, %bb.b ] ; 2 uses
  %i.f = phi i32 [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = sub nsw i32 %i.f, %i.e                   ; 2 uses
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 120), align 8, !tbaa !15
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = add nsw i32 %i.f, -1
  %i.j = select i1 %i.h, i32 %i.i, i32 -1
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !16
  store i32 0, ptr @cube, align 8, !tbaa !17
  %i.k = sext i32 %i.f to i64                     ; 2 uses
  %i.l = shl nsw i64 %i.k, 2                      ; 5 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #10 ; 2 uses
  store ptr %i.m, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !18
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #10 ; 2 uses
  store ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !19
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.l) #10 ; 2 uses
  store ptr %i.o, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8, !tbaa !20
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.l) #10 ; 2 uses
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !21
  %i.q = icmp sgt i32 %i.f, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %0 = phi i32 [ %i.f, %.lr.ph ], [ %i.x, %bb.f ]
  %i.s = phi i32 [ 0, %.lr.ph ], [ %i.ag, %bb.f ]
  %i.t = phi i32 [ %i.e, %.lr.ph ], [ %1, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 8 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv, %i.u
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store i32 2, ptr %i.w, align 4, !tbaa !4
  %.pre85 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !8
  %.pre85.a = load i32, ptr @cube, align 8, !tbaa !17
  %.pre87 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = phi i32 [ %.pre87, %bb.e ], [ %0, %bb.d ] ; 2 uses
  %i.y = phi i32 [ %.pre85.a, %bb.e ], [ %i.s, %bb.d ] ; 3 uses
  %1 = phi i32 [ %.pre85, %bb.e ], [ %i.t, %bb.d ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %i.aa = ashr i32 %i.y, 5
  %i.ab = add nsw i32 %i.aa, 1
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %i.ag = add nsw i32 %i.af, %i.y                 ; 4 uses
  store i32 %i.ag, ptr @cube, align 8, !tbaa !17
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !4
  %i.aj = ashr i32 %i.ah, 5
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = sext i32 %i.x to i64                    ; 3 uses
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.d, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre89 = shl nsw i64 %i.am, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit
  %.pre-phi.a = phi i64 [ %.pre89, %._crit_edge.loopexit ], [ %i.l, %bb.c ]
  %.pre-phi = phi i64 [ %i.am, %._crit_edge.loopexit ], [ %i.k, %bb.c ]
  %2 = phi i32 [ %i.ag, %._crit_edge.loopexit ], [ 0, %bb.c ] ; 3 uses
  %3 = shl nsw i64 %.pre-phi, 3
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #10
  store ptr %4, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !22
  %i.ao = tail call noalias ptr @malloc(i64 noundef %.pre-phi.a) #10
  store ptr %i.ao, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 112), align 8, !tbaa !23
  %i.ap = icmp slt i32 %2, 33
  %i.aq = add nsw i32 %2, -1
  %i.ar = lshr i32 %i.aq, 3
  %i.as = and i32 %i.ar, 536870908
  %i.at = add nuw nsw i32 %i.as, 8
  %narrow = select i1 %i.ap, i32 8, i32 %i.at
  %i.au = zext nneg i32 %narrow to i64
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.au) #10
  %i.aw = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.av, i32 noundef %2) #9
  store ptr %i.aw, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 56), align 8, !tbaa !24
  %i.ax = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.ay = icmp slt i32 %i.ax, 33
  %i.az = add nsw i32 %i.ax, -1
  %i.ba = lshr i32 %i.az, 3
  %i.bb = and i32 %i.ba, 536870908
  %i.bc = add nuw nsw i32 %i.bb, 8
  %narrow54 = select i1 %i.ay, i32 8, i32 %i.bc
  %i.bd = zext nneg i32 %narrow54 to i64
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bd) #10
  %i.bf = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.be, i32 noundef %i.ax) #9
  store ptr %i.bf, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 64), align 8, !tbaa !25
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %._crit_edge, %.loopexit
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.loopexit ], [ 0, %._crit_edge ] ; 6 uses
  %i.bi = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.bj = icmp slt i32 %i.bi, 33
  %i.bk = add nsw i32 %i.bi, -1
  %i.bl = lshr i32 %i.bk, 3
  %i.bm = and i32 %i.bl, 536870908
  %i.bn = add nuw nsw i32 %i.bm, 8
  %narrow58 = select i1 %i.bj, i32 8, i32 %i.bn
  %i.bo = zext nneg i32 %narrow58 to i64
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bo) #10
  %i.bq = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.bp, i32 noundef %i.bi) #9 ; 10 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv78
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !26
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv78
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4  ; 2 uses
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv78 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %.not60 = icmp sgt i32 %i.bv, %i.by
  br i1 %.not60, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph67, %.lr.ph63
  %.04061 = phi i32 [ %i.ch, %.lr.ph63 ], [ %i.bv, %.lr.ph67 ] ; 4 uses
  %i.bz = and i32 %.04061, 31
  %i.ca = shl nuw i32 1, %i.bz
  %i.cb = ashr i32 %.04061, 5
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr [4 x i8], ptr %i.bq, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 4      ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = or i32 %i.cf, %i.ca
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !4
  %i.ch = add nsw i32 %.04061, 1
  %i.ci = load i32, ptr %i.bx, align 4, !tbaa !4
  %.not.not = icmp slt i32 %.04061, %i.ci
  br i1 %.not.not, label %.lr.ph63, label %._crit_edge64

._crit_edge64:                                    ; preds = %.lr.ph63, %.lr.ph67
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !8
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv78, %i.ck
  br i1 %i.cl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge64
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 56), align 8, !tbaa !24 ; 5 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = and i32 %i.cn, 1023                     ; 3 uses
  %i.cp = zext nneg i32 %i.co to i64              ; 6 uses
  %i.cq = icmp ne i32 %i.co, 0
  %.neg130 = sext i1 %i.cq to i64
  %i.cr = add nuw nsw i64 %i.cp, 1
  %i.cs = add nsw i64 %i.cr, %.neg130             ; 3 uses
  %min.iters.check = icmp ult i64 %i.cs, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.g
  %.not131 = icmp eq i32 %i.co, 0
  %i.ct = select i1 %.not131, i64 0, i64 4        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cm, i64 %i.ct
  %scevgep97 = getelementptr i8, ptr %i.cm, i64 4
  %i.cu = shl nuw nsw i64 %i.cp, 2                ; 2 uses
  %scevgep98 = getelementptr i8, ptr %scevgep97, i64 %i.cu
  %scevgep99 = getelementptr i8, ptr %i.bq, i64 %i.ct
  %scevgep100 = getelementptr i8, ptr %i.bq, i64 4
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.cu
  %bound0 = icmp ult ptr %scevgep, %scevgep101
  %bound1 = icmp ult ptr %scevgep99, %scevgep98
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cs, -8                      ; 3 uses
  %i.cv = sub nsw i64 %i.cp, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = sub i64 %i.cp, %index                   ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -12 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cy, align 4, !tbaa !4, !alias.scope !27, !noalias !30
  %wide.load102 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !4, !alias.scope !27, !noalias !30
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cw ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -12
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 -28
  %wide.load103 = load <4 x i32>, ptr %i.db, align 4, !tbaa !4, !alias.scope !30
  %wide.load104 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !4, !alias.scope !30
  %i.dd = or <4 x i32> %wide.load103, %wide.load
  %i.de = or <4 x i32> %wide.load104, %wide.load102
  store <4 x i32> %i.dd, ptr %i.cy, align 4, !tbaa !4, !alias.scope !27, !noalias !30
  store <4 x i32> %i.de, ptr %i.cz, align 4, !tbaa !4, !alias.scope !27, !noalias !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.g, %middle.block
  %indvars.iv75.ph = phi i64 [ %i.cp, %vector.memcheck ], [ %i.cp, %bb.g ], [ %i.cv, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %scalar.ph ], [ %indvars.iv75.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv75 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv75
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dk = or i32 %i.dj, %i.dh
  store i32 %i.dk, ptr %i.dg, align 4, !tbaa !4
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, -1
  %i.dl = icmp samesign ugt i64 %indvars.iv75, 1
  br i1 %i.dl, label %scalar.ph, label %.loopexit, !llvm.loop !35

bb.h:                                             ; preds = %._crit_edge64
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 64), align 8, !tbaa !25 ; 5 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4
  %i.do = and i32 %i.dn, 1023                     ; 3 uses
  %i.dp = zext nneg i32 %i.do to i64              ; 6 uses
  %i.dq = icmp ne i32 %i.do, 0
  %.neg = sext i1 %i.dq to i64
  %i.dr = add nuw nsw i64 %i.dp, 1
  %i.ds = add nsw i64 %i.dr, %.neg                ; 3 uses
  %min.iters.check117 = icmp ult i64 %i.ds, 8
  br i1 %min.iters.check117, label %scalar.ph116.preheader, label %vector.memcheck105

vector.memcheck105:                               ; preds = %bb.h
  %.not = icmp eq i32 %i.do, 0
  %i.dt = select i1 %.not, i64 0, i64 4           ; 2 uses
  %scevgep107 = getelementptr i8, ptr %i.dm, i64 %i.dt
  %scevgep108 = getelementptr i8, ptr %i.dm, i64 4
  %i.du = shl nuw nsw i64 %i.dp, 2                ; 2 uses
  %scevgep109 = getelementptr i8, ptr %scevgep108, i64 %i.du
  %scevgep110 = getelementptr i8, ptr %i.bq, i64 %i.dt
  %scevgep111 = getelementptr i8, ptr %i.bq, i64 4
  %scevgep112 = getelementptr i8, ptr %scevgep111, i64 %i.du
  %bound0113 = icmp ult ptr %scevgep107, %scevgep112
  %bound1114 = icmp ult ptr %scevgep110, %scevgep109
  %found.conflict115 = and i1 %bound0113, %bound1114
  br i1 %found.conflict115, label %scalar.ph116.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck105
  %n.vec119 = and i64 %i.ds, -8                   ; 3 uses
  %i.dv = sub nsw i64 %i.dp, %n.vec119
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next126, %vector.body120 ] ; 2 uses
  %i.dw = sub i64 %i.dp, %index121                ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -12 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -28 ; 2 uses
  %wide.load122 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !4, !alias.scope !36, !noalias !39
  %wide.load123 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !4, !alias.scope !36, !noalias !39
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.dw ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -12
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 -28
  %wide.load124 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !4, !alias.scope !39
  %wide.load125 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !4, !alias.scope !39
  %i.ed = or <4 x i32> %wide.load124, %wide.load122
  %i.ee = or <4 x i32> %wide.load125, %wide.load123
  store <4 x i32> %i.ed, ptr %i.dy, align 4, !tbaa !4, !alias.scope !36, !noalias !39
  store <4 x i32> %i.ee, ptr %i.dz, align 4, !tbaa !4, !alias.scope !36, !noalias !39
  %index.next126 = add nuw i64 %index121, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next126, %n.vec119
  br i1 %i.ef, label %middle.block127, label %vector.body120, !llvm.loop !41

middle.block127:                                  ; preds = %vector.body120
  %cmp.n128 = icmp eq i64 %i.ds, %n.vec119
  br i1 %cmp.n128, label %.loopexit, label %scalar.ph116.preheader

scalar.ph116.preheader:                           ; preds = %vector.memcheck105, %bb.h, %middle.block127
  %indvars.iv72.ph = phi i64 [ %i.dp, %vector.memcheck105 ], [ %i.dp, %bb.h ], [ %i.dv, %middle.block127 ]
  br label %scalar.ph116

scalar.ph116:                                     ; preds = %scalar.ph116.preheader, %scalar.ph116
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %scalar.ph116 ], [ %indvars.iv72.ph, %scalar.ph116.preheader ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv72 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv72
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !4
  %i.ek = or i32 %i.ej, %i.eh
  store i32 %i.ek, ptr %i.eg, align 4, !tbaa !4
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, -1
  %i.el = icmp samesign ugt i64 %indvars.iv72, 1
  br i1 %i.el, label %scalar.ph116, label %.loopexit, !llvm.loop !42

.loopexit:                                        ; preds = %scalar.ph116, %scalar.ph, %middle.block127, %middle.block
  %.sink = phi i32 [ 0, %middle.block ], [ 1, %middle.block127 ], [ 0, %scalar.ph ], [ 1, %scalar.ph116 ]
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 112), align 8, !tbaa !23
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv78
  store i32 %.sink, ptr %i.en, align 4, !tbaa !4
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.eo = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next79, %i.ep
  br i1 %i.eq, label %.lr.ph67, label %._crit_edge68

._crit_edge68:                                    ; preds = %.loopexit, %._crit_edge
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !8 ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge68
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4, !tbaa !43
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge68
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !21
  %i.eu = sext i32 %i.er to i64
  %i.ev = getelementptr [4 x i8], ptr %i.et, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.ev, i64 -4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4  ; 2 uses
  store i32 %i.ex, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4, !tbaa !43
  %i.ey = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 56), align 8, !tbaa !24
  %i.ez = sext i32 %i.ex to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.fc = and i32 %i.fb, 1431655765
  store i32 %i.fc, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 104), align 8, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.fd = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #10
  store ptr %i.fd, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.fe = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.ff = icmp slt i32 %i.fe, 33
  %i.fg = add nsw i32 %i.fe, -1
  %i.fh = lshr i32 %i.fg, 3
  %i.fi = and i32 %i.fh, 536870908
  %i.fj = add nuw nsw i32 %i.fi, 8
  %narrow57 = select i1 %i.ff, i32 8, i32 %i.fj
  %i.fk = zext nneg i32 %narrow57 to i64
  %i.fl = tail call noalias ptr @malloc(i64 noundef %i.fk) #10
  %i.fm = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.fl, i32 noundef %i.fe) #9
  %i.fn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !26
  %i.fo = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.fp = icmp slt i32 %i.fo, 33
  %i.fq = add nsw i32 %i.fo, -1
  %i.fr = lshr i32 %i.fq, 3
  %i.fs = and i32 %i.fr, 536870908
  %i.ft = add nuw nsw i32 %i.fs, 8
  %narrow57.1 = select i1 %i.fp, i32 8, i32 %i.ft
  %i.fu = zext nneg i32 %narrow57.1 to i64
  %i.fv = tail call noalias ptr @malloc(i64 noundef %i.fu) #10
  %i.fw = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.fv, i32 noundef %i.fo) #9
  %i.fx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !26
  %i.fz = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.ga = icmp slt i32 %i.fz, 33
  %i.gb = add nsw i32 %i.fz, -1
  %i.gc = lshr i32 %i.gb, 3
  %i.gd = and i32 %i.gc, 536870908
  %i.ge = add nuw nsw i32 %i.gd, 8
  %narrow57.2 = select i1 %i.ga, i32 8, i32 %i.ge
  %i.gf = zext nneg i32 %narrow57.2 to i64
  %i.gg = tail call noalias ptr @malloc(i64 noundef %i.gf) #10
  %i.gh = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.gg, i32 noundef %i.fz) #9
  %i.gi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store ptr %i.gh, ptr %i.gj, align 8, !tbaa !26
  %i.gk = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.gl = icmp slt i32 %i.gk, 33
  %i.gm = add nsw i32 %i.gk, -1
  %i.gn = lshr i32 %i.gm, 3
  %i.go = and i32 %i.gn, 536870908
  %i.gp = add nuw nsw i32 %i.go, 8
  %narrow57.3 = select i1 %i.gl, i32 8, i32 %i.gp
  %i.gq = zext nneg i32 %narrow57.3 to i64
  %i.gr = tail call noalias ptr @malloc(i64 noundef %i.gq) #10
  %i.gs = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.gr, i32 noundef %i.gk) #9
  %i.gt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  store ptr %i.gs, ptr %i.gu, align 8, !tbaa !26
  %i.gv = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.gw = icmp slt i32 %i.gv, 33
  %i.gx = add nsw i32 %i.gv, -1
  %i.gy = lshr i32 %i.gx, 3
  %i.gz = and i32 %i.gy, 536870908
  %i.ha = add nuw nsw i32 %i.gz, 8
  %narrow57.4 = select i1 %i.gw, i32 8, i32 %i.ha
  %i.hb = zext nneg i32 %narrow57.4 to i64
  %i.hc = tail call noalias ptr @malloc(i64 noundef %i.hb) #10
  %i.hd = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.hc, i32 noundef %i.gv) #9
  %i.he = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store ptr %i.hd, ptr %i.hf, align 8, !tbaa !26
  %i.hg = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.hh = icmp slt i32 %i.hg, 33
  %i.hi = add nsw i32 %i.hg, -1
  %i.hj = lshr i32 %i.hi, 3
  %i.hk = and i32 %i.hj, 536870908
  %i.hl = add nuw nsw i32 %i.hk, 8
  %narrow57.5 = select i1 %i.hh, i32 8, i32 %i.hl
  %i.hm = zext nneg i32 %narrow57.5 to i64
  %i.hn = tail call noalias ptr @malloc(i64 noundef %i.hm) #10
  %i.ho = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.hn, i32 noundef %i.hg) #9
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  store ptr %i.ho, ptr %i.hq, align 8, !tbaa !26
  %i.hr = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.hs = icmp slt i32 %i.hr, 33
  %i.ht = add nsw i32 %i.hr, -1
  %i.hu = lshr i32 %i.ht, 3
  %i.hv = and i32 %i.hu, 536870908
  %i.hw = add nuw nsw i32 %i.hv, 8
  %narrow57.6 = select i1 %i.hs, i32 8, i32 %i.hw
  %i.hx = zext nneg i32 %narrow57.6 to i64
  %i.hy = tail call noalias ptr @malloc(i64 noundef %i.hx) #10
  %i.hz = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.hy, i32 noundef %i.hr) #9
  %i.ia = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  store ptr %i.hz, ptr %i.ib, align 8, !tbaa !26
  %i.ic = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.id = icmp slt i32 %i.ic, 33
  %i.ie = add nsw i32 %i.ic, -1
  %i.if = lshr i32 %i.ie, 3
  %i.ig = and i32 %i.if, 536870908
  %i.ih = add nuw nsw i32 %i.ig, 8
  %narrow57.7 = select i1 %i.id, i32 8, i32 %i.ih
  %i.ii = zext nneg i32 %narrow57.7 to i64
  %i.ij = tail call noalias ptr @malloc(i64 noundef %i.ii) #10
  %i.ik = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.ij, i32 noundef %i.ic) #9
  %i.il = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 56
  store ptr %i.ik, ptr %i.im, align 8, !tbaa !26
  %i.in = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.io = icmp slt i32 %i.in, 33
  %i.ip = add nsw i32 %i.in, -1
  %i.iq = lshr i32 %i.ip, 3
  %i.ir = and i32 %i.iq, 536870908
  %i.is = add nuw nsw i32 %i.ir, 8
  %narrow57.8 = select i1 %i.io, i32 8, i32 %i.is
  %i.it = zext nneg i32 %narrow57.8 to i64
  %i.iu = tail call noalias ptr @malloc(i64 noundef %i.it) #10
  %i.iv = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.iu, i32 noundef %i.in) #9
  %i.iw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 64
  store ptr %i.iv, ptr %i.ix, align 8, !tbaa !26
  %i.iy = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.iz = icmp slt i32 %i.iy, 33
  %i.ja = add nsw i32 %i.iy, -1
  %i.jb = lshr i32 %i.ja, 3
  %i.jc = and i32 %i.jb, 536870908
  %i.jd = add nuw nsw i32 %i.jc, 8
  %narrow57.9 = select i1 %i.iz, i32 8, i32 %i.jd
  %i.je = zext nneg i32 %narrow57.9 to i64
  %i.jf = tail call noalias ptr @malloc(i64 noundef %i.je) #10
  %i.jg = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.jf, i32 noundef %i.iy) #9
  %i.jh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 72
  store ptr %i.jg, ptr %i.ji, align 8, !tbaa !26
  %i.jj = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.jk = icmp slt i32 %i.jj, 33
  %i.jl = add nsw i32 %i.jj, -1
  %i.jm = lshr i32 %i.jl, 3
  %i.jn = and i32 %i.jm, 536870908
  %i.jo = add nuw nsw i32 %i.jn, 8
  %narrow55 = select i1 %i.jk, i32 8, i32 %i.jo
  %i.jp = zext nneg i32 %narrow55 to i64
  %i.jq = tail call noalias ptr @malloc(i64 noundef %i.jp) #10
  %i.jr = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.jq, i32 noundef %i.jj) #9
  %i.js = load i32, ptr @cube, align 8, !tbaa !17
  %i.jt = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.jr, i32 noundef %i.js) #9
  store ptr %i.jt, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !46
  %i.ju = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.jv = icmp slt i32 %i.ju, 33
  %i.jw = add nsw i32 %i.ju, -1
  %i.jx = lshr i32 %i.jw, 3
  %i.jy = and i32 %i.jx, 536870908
  %i.jz = add nuw nsw i32 %i.jy, 8
  %narrow56 = select i1 %i.jv, i32 8, i32 %i.jz
  %i.ka = zext nneg i32 %narrow56 to i64
  %i.kb = tail call noalias ptr @malloc(i64 noundef %i.ka) #10
  %i.kc = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.kb, i32 noundef %i.ju) #9
  store ptr %i.kc, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 96), align 8, !tbaa !47
  %i.kd = load i32, ptr @cube, align 8, !tbaa !17
  %i.ke = sext i32 %i.kd to i64
  %i.kf = shl nsw i64 %i.ke, 2
  %i.kg = tail call noalias ptr @malloc(i64 noundef %i.kf) #10
  store ptr %i.kg, ptr @cdata, align 8, !tbaa !48
  %i.kh = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14
  %i.ki = sext i32 %i.kh to i64
  %i.kj = shl nsw i64 %i.ki, 2                    ; 3 uses
  %i.kk = tail call noalias ptr @malloc(i64 noundef %i.kj) #10
  store ptr %i.kk, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 8), align 8, !tbaa !50
  %i.kl = tail call noalias ptr @malloc(i64 noundef %i.kj) #10
  store ptr %i.kl, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 16), align 8, !tbaa !51
  %i.km = tail call noalias ptr @malloc(i64 noundef %i.kj) #10
  store ptr %i.km, ptr getelementptr inbounds nuw (i8, ptr @cdata, i64 24), align 8, !tbaa !52
  ret void
}

declare void @fatal(...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare ptr @set_clear(...) local_unnamed_addr #1

declare ptr @set_fill(...) local_unnamed_addr #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @setdown_cube() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #9
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !19 ; 2 uses
  %.not28 = icmp eq ptr %i.b, null
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #9
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8, !tbaa !20 ; 2 uses
  %.not29 = icmp eq ptr %i.c, null
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.c) #9
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !21 ; 2 uses
  %.not30 = icmp eq ptr %i.d, null
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.d) #9
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 112), align 8, !tbaa !23 ; 2 uses
  %.not31 = icmp eq ptr %i.e, null
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.e) #9
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 112), align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 56), align 8, !tbaa !24 ; 2 uses
  %.not32 = icmp eq ptr %i.f, null
  br i1 %.not32, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.f) #9
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 56), align 8, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 64), align 8, !tbaa !25 ; 2 uses
  %.not33 = icmp eq ptr %i.g, null
  br i1 %.not33, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.g) #9
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 64), align 8, !tbaa !25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !46 ; 2 uses
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.h) #9
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !46
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 96), align 8, !tbaa !47 ; 2 uses
  %.not35 = icmp eq ptr %i.i, null
  br i1 %.not35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.i) #9
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 96), align 8, !tbaa !47
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14 ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  %.pre51 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !22 ; 3 uses
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s, %bb.u
  %i.l = phi i32 [ %i.r, %bb.u ], [ %i.j, %bb.s ]
  %i.m = phi ptr [ %i.s, %bb.u ], [ %.pre51, %bb.s ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %.not43 = icmp eq ptr %i.o, null
  br i1 %.not43, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.o) #9
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !22 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store ptr null, ptr %i.q, align 8, !tbaa !26
  %.pre50 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.t
  %i.r = phi i32 [ %i.l, %.lr.ph ], [ %.pre50, %bb.t ] ; 2 uses
  %i.s = phi ptr [ %i.m, %.lr.ph ], [ %i.p, %bb.t ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = sext i32 %i.r to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge.thread

._crit_edge:                                      ; preds = %bb.s
  %.not36 = icmp eq ptr %.pre51, null
  br i1 %.not36, label %bb.v, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.u, %._crit_edge
  %i.v = phi ptr [ %.pre51, %._crit_edge ], [ %i.s, %bb.u ]
  tail call void @free(ptr noundef nonnull %i.v) #9
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 2 uses
  %.not42 = icmp eq ptr %i.x, null
  br i1 %.not42, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.x) #9
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !26
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.z = phi ptr [ %i.w, %bb.v ], [ %i.y, %bb.w ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %.not42.1 = icmp eq ptr %i.ab, null
  br i1 %.not42.1, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.ab) #9
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !26
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ae = phi ptr [ %i.ac, %bb.y ], [ %i.z, %bb.x ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26 ; 2 uses
  %.not42.2 = icmp eq ptr %i.ag, null
  br i1 %.not42.2, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @free(ptr noundef nonnull %i.ag) #9
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr null, ptr %i.ai, align 8, !tbaa !26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.aj = phi ptr [ %i.ah, %bb.aa ], [ %i.ae, %bb.z ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %.not42.3 = icmp eq ptr %i.al, null
  br i1 %.not42.3, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @free(ptr noundef nonnull %i.al) #9
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr null, ptr %i.an, align 8, !tbaa !26
  br label %bb.ad

end_hunk_0
