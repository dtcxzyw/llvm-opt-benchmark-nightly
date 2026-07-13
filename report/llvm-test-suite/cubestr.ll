loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0

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
  %i.e = phi i32 [ %i.a, %bb.a ], [ %.pre84, %bb.b ]
  %i.f = phi i32 [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %i.g = sub nsw i32 %i.f, %i.e                   ; 2 uses
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 120), align 8, !tbaa !15
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = add nsw i32 %i.f, -1
  %i.j = select i1 %i.h, i32 %i.i, i32 -1
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !16
  store i32 0, ptr @cube, align 8, !tbaa !17
  %i.k = sext i32 %i.f to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #10 ; 2 uses
  store ptr %i.m, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !18
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 2
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #10 ; 2 uses
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !19
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #10 ; 2 uses
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8, !tbaa !20
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 2
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #10 ; 2 uses
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !21
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14 ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.c
  %.pre88 = sext i32 %i.z to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8 ; 2 uses
  %.pre86 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.ac = phi i32 [ %i.z, %.lr.ph ], [ %i.ah, %bb.f ]
  %i.ad = phi i32 [ %.pre86, %.lr.ph ], [ %i.ai, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 8 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv, %i.ae
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  store i32 2, ptr %i.ag, align 4, !tbaa !4
  %.pre85 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !8
  %.pre87 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ah = phi i32 [ %.pre87, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %i.ai = phi i32 [ %.pre85, %bb.e ], [ %i.ad, %bb.d ]
  %i.aj = load i32, ptr @cube, align 8, !tbaa !17 ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !4
  %i.al = ashr i32 %i.aj, 5
  %i.am = add nsw i32 %i.al, 1
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store i32 %i.am, ptr %i.an, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = tail call i32 @llvm.abs.i32(i32 %i.ap, i1 true)
  %i.ar = add nsw i32 %i.aq, %i.aj                ; 2 uses
  store i32 %i.ar, ptr @cube, align 8, !tbaa !17
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %i.au = ashr i32 %i.as, 5
  %i.av = add nsw i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = sext i32 %i.ah to i64                   ; 2 uses
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre88, %.._crit_edge_crit_edge ], [ %i.ax, %bb.f ]
  %i.az = shl nsw i64 %.pre-phi, 3
  %i.ba = tail call noalias ptr @malloc(i64 noundef %i.az) #10
  store ptr %i.ba, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !22
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14
  %i.bc = sext i32 %i.bb to i64
  %i.bd = shl nsw i64 %i.bc, 2
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bd) #10
  store ptr %i.be, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 112), align 8, !tbaa !23
  %i.bf = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 33
  %i.bh = add nsw i32 %i.bf, -1
  %i.bi = lshr i32 %i.bh, 3
  %i.bj = and i32 %i.bi, 536870908
  %i.bk = add nuw nsw i32 %i.bj, 8
  %narrow = select i1 %i.bg, i32 8, i32 %i.bk
  %i.bl = zext nneg i32 %narrow to i64
  %i.bm = tail call noalias ptr @malloc(i64 noundef %i.bl) #10
  %i.bn = load i32, ptr @cube, align 8, !tbaa !17
  %i.bo = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.bm, i32 noundef %i.bn) #9
  store ptr %i.bo, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 56), align 8, !tbaa !24
  %i.bp = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 33
  %i.br = add nsw i32 %i.bp, -1
  %i.bs = lshr i32 %i.br, 3
  %i.bt = and i32 %i.bs, 536870908
  %i.bu = add nuw nsw i32 %i.bt, 8
  %narrow54 = select i1 %i.bq, i32 8, i32 %i.bu
  %i.bv = zext nneg i32 %narrow54 to i64
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bv) #10
  %i.bx = load i32, ptr @cube, align 8, !tbaa !17
  %i.by = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.bw, i32 noundef %i.bx) #9
  store ptr %i.by, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 64), align 8, !tbaa !25
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %._crit_edge, %.loopexit
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.loopexit ], [ 0, %._crit_edge ] ; 6 uses
  %i.cb = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 33
  %i.cd = add nsw i32 %i.cb, -1
  %i.ce = lshr i32 %i.cd, 3
  %i.cf = and i32 %i.ce, 536870908
  %i.cg = add nuw nsw i32 %i.cf, 8
  %narrow58 = select i1 %i.cc, i32 8, i32 %i.cg
  %i.ch = zext nneg i32 %narrow58 to i64
  %i.ci = tail call noalias ptr @malloc(i64 noundef %i.ch) #10
  %i.cj = load i32, ptr @cube, align 8, !tbaa !17
  %i.ck = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.ci, i32 noundef %i.cj) #9 ; 10 uses
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !22
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv78
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !26
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv78
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4  ; 2 uses
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !19
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv78 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %.not60 = icmp sgt i32 %i.cp, %i.cs
  br i1 %.not60, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph67, %.lr.ph63
  %.03961 = phi i32 [ %i.db, %.lr.ph63 ], [ %i.cp, %.lr.ph67 ] ; 4 uses
  %i.ct = and i32 %.03961, 31
  %i.cu = shl nuw i32 1, %i.ct
  %i.cv = ashr i32 %.03961, 5
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [4 x i8], ptr %i.ck, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 4      ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %i.da = or i32 %i.cz, %i.cu
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !4
  %i.db = add nsw i32 %.03961, 1
  %i.dc = load i32, ptr %i.cr, align 4, !tbaa !4
  %.not.not = icmp slt i32 %.03961, %i.dc
  br i1 %.not.not, label %.lr.ph63, label %._crit_edge64

._crit_edge64:                                    ; preds = %.lr.ph63, %.lr.ph67
  %i.dd = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !8
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv78, %i.de
  br i1 %i.df, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge64
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 56), align 8, !tbaa !24 ; 5 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.di = and i32 %i.dh, 1023                     ; 3 uses
  %i.dj = zext nneg i32 %i.di to i64              ; 6 uses
  %0 = icmp ne i32 %i.di, 0
  %.neg131 = sext i1 %0 to i64
  %1 = add nsw i64 %.neg131, %i.dj
  %i.dk = add nsw i64 %1, 1                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.dk, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.g
  %.not133 = icmp eq i32 %i.di, 0
  %i.dl = select i1 %.not133, i64 0, i64 4        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dg, i64 %i.dl
  %scevgep97 = getelementptr i8, ptr %i.dg, i64 4
  %i.dm = shl nuw nsw i64 %i.dj, 2                ; 2 uses
  %scevgep98 = getelementptr i8, ptr %scevgep97, i64 %i.dm
  %scevgep99 = getelementptr i8, ptr %i.ck, i64 %i.dl
  %scevgep100 = getelementptr i8, ptr %i.ck, i64 4
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.dm
  %bound0 = icmp ult ptr %scevgep, %scevgep101
  %bound1 = icmp ult ptr %scevgep99, %scevgep98
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dk, -8                      ; 3 uses
  %i.dn = sub nsw i64 %i.dj, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.do = sub i64 %i.dj, %index                   ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -12 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dq, align 4, !tbaa !4, !alias.scope !27, !noalias !30
  %wide.load103.a = load <4 x i32>, ptr %i.dr, align 4, !tbaa !4, !alias.scope !27, !noalias !30
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.do ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -12
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -28
  %wide.load104.a = load <4 x i32>, ptr %i.dt, align 4, !tbaa !4, !alias.scope !30
  %wide.load105 = load <4 x i32>, ptr %i.du, align 4, !tbaa !4, !alias.scope !30
  %i.dv = or <4 x i32> %wide.load104.a, %wide.load
  %i.dw = or <4 x i32> %wide.load105, %wide.load103.a
  store <4 x i32> %i.dv, ptr %i.dq, align 4, !tbaa !4, !alias.scope !27, !noalias !30
  store <4 x i32> %i.dw, ptr %i.dr, align 4, !tbaa !4, !alias.scope !27, !noalias !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dk, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.g, %middle.block
  %indvars.iv75.ph = phi i64 [ %i.dj, %vector.memcheck ], [ %i.dj, %bb.g ], [ %i.dn, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %scalar.ph ], [ %indvars.iv75.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv75 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv75
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4
  %i.ec = or i32 %i.eb, %i.dz
  store i32 %i.ec, ptr %i.dy, align 4, !tbaa !4
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, -1
  %i.ed = icmp samesign ugt i64 %indvars.iv75, 1
  br i1 %i.ed, label %scalar.ph, label %.loopexit, !llvm.loop !35

bb.h:                                             ; preds = %._crit_edge64
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 64), align 8, !tbaa !25 ; 5 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4
  %i.eg = and i32 %i.ef, 1023                     ; 3 uses
  %i.eh = zext nneg i32 %i.eg to i64              ; 6 uses
  %2 = icmp ne i32 %i.eg, 0
  %.neg = sext i1 %2 to i64
  %3 = add nsw i64 %.neg, %i.eh
  %i.ei = add nsw i64 %3, 1                       ; 3 uses
  %min.iters.check119 = icmp ult i64 %i.ei, 8
  br i1 %min.iters.check119, label %scalar.ph118.preheader, label %vector.memcheck106

vector.memcheck106:                               ; preds = %bb.h
  %.not = icmp eq i32 %i.eg, 0
  %i.ej = select i1 %.not, i64 0, i64 4           ; 2 uses
  %scevgep108.a = getelementptr i8, ptr %i.ee, i64 %i.ej
  %scevgep109.a = getelementptr i8, ptr %i.ee, i64 4
  %i.ek = shl nuw nsw i64 %i.eh, 2                ; 2 uses
  %scevgep110.a = getelementptr i8, ptr %scevgep109.a, i64 %i.ek
  %scevgep111.a = getelementptr i8, ptr %i.ck, i64 %i.ej
  %scevgep112.a = getelementptr i8, ptr %i.ck, i64 4
  %scevgep113 = getelementptr i8, ptr %scevgep112.a, i64 %i.ek
  %bound0114 = icmp ult ptr %scevgep108.a, %scevgep113
  %bound1115 = icmp ult ptr %scevgep111.a, %scevgep110.a
  %found.conflict116 = and i1 %bound0114, %bound1115
  br i1 %found.conflict116, label %scalar.ph118.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck106
  %n.vec122 = and i64 %i.ei, -8                   ; 3 uses
  %i.el = sub nsw i64 %i.eh, %n.vec122
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next129, %vector.body123 ] ; 2 uses
  %i.em = sub i64 %i.eh, %index124                ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -12 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 -28 ; 2 uses
  %wide.load125.a = load <4 x i32>, ptr %i.eo, align 4, !tbaa !4, !alias.scope !36, !noalias !39
  %wide.load126.a = load <4 x i32>, ptr %i.ep, align 4, !tbaa !4, !alias.scope !36, !noalias !39
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.em ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -12
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 -28
  %wide.load127 = load <4 x i32>, ptr %i.er, align 4, !tbaa !4, !alias.scope !39
  %wide.load128 = load <4 x i32>, ptr %i.es, align 4, !tbaa !4, !alias.scope !39
  %i.et = or <4 x i32> %wide.load127, %wide.load125.a
  %i.eu = or <4 x i32> %wide.load128, %wide.load126.a
  store <4 x i32> %i.et, ptr %i.eo, align 4, !tbaa !4, !alias.scope !36, !noalias !39
  store <4 x i32> %i.eu, ptr %i.ep, align 4, !tbaa !4, !alias.scope !36, !noalias !39
  %index.next129 = add nuw i64 %index124, 8       ; 2 uses
  %i.ev = icmp eq i64 %index.next129, %n.vec122
  br i1 %i.ev, label %middle.block130, label %vector.body123, !llvm.loop !41

middle.block130:                                  ; preds = %vector.body123
  %cmp.n131 = icmp eq i64 %i.ei, %n.vec122
  br i1 %cmp.n131, label %.loopexit, label %scalar.ph118.preheader

scalar.ph118.preheader:                           ; preds = %vector.memcheck106, %bb.h, %middle.block130
  %indvars.iv72.ph = phi i64 [ %i.eh, %vector.memcheck106 ], [ %i.eh, %bb.h ], [ %i.el, %middle.block130 ]
  br label %scalar.ph118

scalar.ph118:                                     ; preds = %scalar.ph118.preheader, %scalar.ph118
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %scalar.ph118 ], [ %indvars.iv72.ph, %scalar.ph118.preheader ] ; 4 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv72 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv72
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !4
  %i.fa = or i32 %i.ez, %i.ex
  store i32 %i.fa, ptr %i.ew, align 4, !tbaa !4
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, -1
  %i.fb = icmp samesign ugt i64 %indvars.iv72, 1
  br i1 %i.fb, label %scalar.ph118, label %.loopexit, !llvm.loop !42

.loopexit:                                        ; preds = %scalar.ph118, %scalar.ph, %middle.block130, %middle.block
  %.sink = phi i32 [ 0, %middle.block ], [ 1, %middle.block130 ], [ 0, %scalar.ph ], [ 1, %scalar.ph118 ]
  %i.fc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 112), align 8, !tbaa !23
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv78
  store i32 %.sink, ptr %i.fd, align 4, !tbaa !4
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !14
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next79, %i.ff
  br i1 %i.fg, label %.lr.ph67, label %._crit_edge68

._crit_edge68:                                    ; preds = %.loopexit, %._crit_edge
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !8 ; 2 uses
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge68
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4, !tbaa !43
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge68
  %i.fj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !21
  %i.fk = sext i32 %i.fh to i64
  %i.fl = getelementptr [4 x i8], ptr %i.fj, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 -4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !4  ; 2 uses
  store i32 %i.fn, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4, !tbaa !43
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 56), align 8, !tbaa !24
  %i.fp = sext i32 %i.fn to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4
  %i.fs = and i32 %i.fr, 1431655765
  store i32 %i.fs, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 104), align 8, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ft = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #10
  store ptr %i.ft, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.fu = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
  %i.fv = icmp slt i32 %i.fu, 33
  %i.fw = add nsw i32 %i.fu, -1
  %i.fx = lshr i32 %i.fw, 3
  %i.fy = and i32 %i.fx, 536870908
  %i.fz = add nuw nsw i32 %i.fy, 8
  %narrow57 = select i1 %i.fv, i32 8, i32 %i.fz
  %i.ga = zext nneg i32 %narrow57 to i64
  %i.gb = tail call noalias ptr @malloc(i64 noundef %i.ga) #10
  %i.gc = load i32, ptr @cube, align 8, !tbaa !17
  %i.gd = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.gb, i32 noundef %i.gc) #9
  %i.ge = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !26
  %i.gf = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
  %i.gg = icmp slt i32 %i.gf, 33
  %i.gh = add nsw i32 %i.gf, -1
  %i.gi = lshr i32 %i.gh, 3
  %i.gj = and i32 %i.gi, 536870908
  %i.gk = add nuw nsw i32 %i.gj, 8
  %narrow57.1 = select i1 %i.gg, i32 8, i32 %i.gk
  %i.gl = zext nneg i32 %narrow57.1 to i64
  %i.gm = tail call noalias ptr @malloc(i64 noundef %i.gl) #10
  %i.gn = load i32, ptr @cube, align 8, !tbaa !17
  %i.go = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.gm, i32 noundef %i.gn) #9
  %i.gp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %i.go, ptr %i.gq, align 8, !tbaa !26
  %i.gr = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
  %i.gs = icmp slt i32 %i.gr, 33
  %i.gt = add nsw i32 %i.gr, -1
  %i.gu = lshr i32 %i.gt, 3
  %i.gv = and i32 %i.gu, 536870908
  %i.gw = add nuw nsw i32 %i.gv, 8
  %narrow57.2 = select i1 %i.gs, i32 8, i32 %i.gw
  %i.gx = zext nneg i32 %narrow57.2 to i64
  %i.gy = tail call noalias ptr @malloc(i64 noundef %i.gx) #10
  %i.gz = load i32, ptr @cube, align 8, !tbaa !17
  %i.ha = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.gy, i32 noundef %i.gz) #9
  %i.hb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store ptr %i.ha, ptr %i.hc, align 8, !tbaa !26
  %i.hd = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
  %i.he = icmp slt i32 %i.hd, 33
  %i.hf = add nsw i32 %i.hd, -1
  %i.hg = lshr i32 %i.hf, 3
  %i.hh = and i32 %i.hg, 536870908
  %i.hi = add nuw nsw i32 %i.hh, 8
  %narrow57.3 = select i1 %i.he, i32 8, i32 %i.hi
  %i.hj = zext nneg i32 %narrow57.3 to i64
  %i.hk = tail call noalias ptr @malloc(i64 noundef %i.hj) #10
  %i.hl = load i32, ptr @cube, align 8, !tbaa !17
  %i.hm = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.hk, i32 noundef %i.hl) #9
  %i.hn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store ptr %i.hm, ptr %i.ho, align 8, !tbaa !26
  %i.hp = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
  %i.hq = icmp slt i32 %i.hp, 33
  %i.hr = add nsw i32 %i.hp, -1
  %i.hs = lshr i32 %i.hr, 3
  %i.ht = and i32 %i.hs, 536870908
  %i.hu = add nuw nsw i32 %i.ht, 8
  %narrow57.4 = select i1 %i.hq, i32 8, i32 %i.hu
  %i.hv = zext nneg i32 %narrow57.4 to i64
  %i.hw = tail call noalias ptr @malloc(i64 noundef %i.hv) #10
  %i.hx = load i32, ptr @cube, align 8, !tbaa !17
  %i.hy = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.hw, i32 noundef %i.hx) #9
  %i.hz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  store ptr %i.hy, ptr %i.ia, align 8, !tbaa !26
  %i.ib = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
  %i.ic = icmp slt i32 %i.ib, 33
  %i.id = add nsw i32 %i.ib, -1
  %i.ie = lshr i32 %i.id, 3
  %i.if = and i32 %i.ie, 536870908
  %i.ig = add nuw nsw i32 %i.if, 8
  %narrow57.5 = select i1 %i.ic, i32 8, i32 %i.ig
  %i.ih = zext nneg i32 %narrow57.5 to i64
  %i.ii = tail call noalias ptr @malloc(i64 noundef %i.ih) #10
  %i.ij = load i32, ptr @cube, align 8, !tbaa !17
  %i.ik = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.ii, i32 noundef %i.ij) #9
  %i.il = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 40
  store ptr %i.ik, ptr %i.im, align 8, !tbaa !26
  %i.in = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
  %i.io = icmp slt i32 %i.in, 33
  %i.ip = add nsw i32 %i.in, -1
  %i.iq = lshr i32 %i.ip, 3
  %i.ir = and i32 %i.iq, 536870908
  %i.is = add nuw nsw i32 %i.ir, 8
  %narrow57.6 = select i1 %i.io, i32 8, i32 %i.is
  %i.it = zext nneg i32 %narrow57.6 to i64
  %i.iu = tail call noalias ptr @malloc(i64 noundef %i.it) #10
  %i.iv = load i32, ptr @cube, align 8, !tbaa !17
  %i.iw = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.iu, i32 noundef %i.iv) #9
  %i.ix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !45
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  store ptr %i.iw, ptr %i.iy, align 8, !tbaa !26
  %i.iz = load i32, ptr @cube, align 8, !tbaa !17 ; 2 uses
end_hunk_0
