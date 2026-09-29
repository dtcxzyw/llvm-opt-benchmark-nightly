Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avs?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"avs\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"AVS (Audio Video Standard) video\00", align 1
@ff_avs_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 82, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 8, ptr null, ptr null, ptr null, ptr @avs_decode_init, %union.anon { ptr @avs_decode_frame }, ptr @avs_decode_end, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @avs_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = tail call ptr @av_frame_alloc() #4       ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !31
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 11, ptr %i.d, align 8, !tbaa !32
  %i.e = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef 318, i32 noundef 198) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 4, 0) i32 @avs_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 7 uses
  %i.h = tail call i32 @ff_reget_buffer(ptr noundef %0, ptr noundef %i.g, i32 noundef 0) #4 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sext i32 %i.d to i64                     ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.b, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 2 uses
  store i32 2, ptr %i.l, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 276 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !48
  %i.o = and i32 %i.n, -3
  store i32 %i.o, ptr %i.m, align 4, !tbaa !48
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !49   ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !50   ; 3 uses
  %i.s = ptrtoint ptr %i.k to i64                 ; 6 uses
  %i.t = icmp slt i32 %i.d, 4
  br i1 %i.t, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !51    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.x = icmp eq i8 %i.v, 3
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49   ; 4 uses
  %i.aa = load i16, ptr %i.w, align 1, !tbaa !51  ; 3 uses
  %i.ab = zext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !51 ; 2 uses
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = add nuw nsw i32 %i.ae, %i.ab            ; 2 uses
  %i.ag = icmp ugt i16 %i.aa, 255
  %i.ah = icmp samesign ugt i32 %i.af, 256
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %gepdiff = add nsw i64 %i.j, -4
  %i.ai = mul nuw nsw i32 %i.ae, 3
  %i.aj = add nuw nsw i32 %i.ai, 8
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %gepdiff, %i.ak
  br i1 %i.al, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr i8, ptr %i.b, i64 8       ; 9 uses
  %.not191 = icmp eq i16 %i.ad, 0
  br i1 %.not191, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.an = zext nneg i16 %i.aa to i64              ; 9 uses
  %i.ao = zext nneg i32 %i.af to i64              ; 3 uses
  %i.ap = add nuw nsw i64 %i.an, 1
  %i.aq = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.ao)
  %i.ar = sub nsw i64 %i.aq, %i.an                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 12
  br i1 %min.iters.check, label %.lr.ph.preheader324, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.as = shl nuw nsw i64 %i.an, 2
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.as
  %4 = add nuw nsw i64 %i.an, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 %i.ao) ; 2 uses
  %i.at = shl nuw nsw i64 %umax, 2
  %scevgep312 = getelementptr i8, ptr %i.z, i64 %i.at
  %i.au = mul nuw nsw i64 %umax, 3
  %.neg = mul nsw i64 %i.an, -3
  %i.av = getelementptr i8, ptr %i.b, i64 %.neg
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.au
  %scevgep313 = getelementptr i8, ptr %i.aw, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep313
  %bound1 = icmp ult ptr %i.am, %scevgep312
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader324, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, -4                      ; 4 uses
  %i.ax = add nsw i64 %n.vec, %i.an
  %i.ay = mul nsw i64 %n.vec, 3
  %i.az = getelementptr i8, ptr %i.am, i64 %i.ay  ; 2 uses
  %invariant.gep329 = getelementptr [4 x i8], ptr %i.z, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = mul i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.ba ; 3 uses
  %i.bb = getelementptr i8, ptr %i.am, i64 %i.ba  ; 3 uses
  %next.gep314 = getelementptr i8, ptr %i.bb, i64 3
  %i.bc = getelementptr i8, ptr %i.am, i64 %i.ba  ; 3 uses
  %next.gep315 = getelementptr i8, ptr %i.bc, i64 6
  %i.bd = getelementptr i8, ptr %i.am, i64 %i.ba  ; 3 uses
  %next.gep316 = getelementptr i8, ptr %i.bd, i64 9
  %i.be = load i8, ptr %next.gep, align 1, !tbaa !51, !alias.scope !52
  %i.bf = load i8, ptr %next.gep314, align 1, !tbaa !51, !alias.scope !52
  %i.bg = load i8, ptr %next.gep315, align 1, !tbaa !51, !alias.scope !52
  %i.bh = load i8, ptr %next.gep316, align 1, !tbaa !51, !alias.scope !52
  %i.bi = insertelement <4 x i8> poison, i8 %i.be, i64 0
  %i.bj = insertelement <4 x i8> %i.bi, i8 %i.bf, i64 1
  %i.bk = insertelement <4 x i8> %i.bj, i8 %i.bg, i64 2
  %i.bl = insertelement <4 x i8> %i.bk, i8 %i.bh, i64 3
  %i.bm = zext <4 x i8> %i.bl to <4 x i32>
  %i.bn = shl nuw nsw <4 x i32> %i.bm, splat (i32 18)
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.bp = getelementptr i8, ptr %i.bb, i64 4
  %i.bq = getelementptr i8, ptr %i.bc, i64 7
  %i.br = getelementptr i8, ptr %i.bd, i64 10
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !51, !alias.scope !52
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !51, !alias.scope !52
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !51, !alias.scope !52
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !51, !alias.scope !52
  %i.bw = insertelement <4 x i8> poison, i8 %i.bs, i64 0
  %i.bx = insertelement <4 x i8> %i.bw, i8 %i.bt, i64 1
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.bu, i64 2
  %i.bz = insertelement <4 x i8> %i.by, i8 %i.bv, i64 3
  %i.ca = zext <4 x i8> %i.bz to <4 x i32>
  %i.cb = shl nuw nsw <4 x i32> %i.ca, splat (i32 10)
  %i.cc = or disjoint <4 x i32> %i.cb, %i.bn
  %i.cd = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.ce = getelementptr i8, ptr %i.bb, i64 5
  %i.cf = getelementptr i8, ptr %i.bc, i64 8
  %i.cg = getelementptr i8, ptr %i.bd, i64 11
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !51, !alias.scope !52
  %i.ci = load i8, ptr %i.ce, align 1, !tbaa !51, !alias.scope !52
  %i.cj = load i8, ptr %i.cf, align 1, !tbaa !51, !alias.scope !52
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !51, !alias.scope !52
  %i.cl = insertelement <4 x i8> poison, i8 %i.ch, i64 0
  %i.cm = insertelement <4 x i8> %i.cl, i8 %i.ci, i64 1
  %i.cn = insertelement <4 x i8> %i.cm, i8 %i.cj, i64 2
  %i.co = insertelement <4 x i8> %i.cn, i8 %i.ck, i64 3
  %i.cp = zext <4 x i8> %i.co to <4 x i32>
  %i.cq = shl nuw nsw <4 x i32> %i.cp, splat (i32 2)
  %i.cr = or disjoint <4 x i32> %i.cc, %i.cq      ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep329, i64 %index
  %i.cs = lshr <4 x i32> %i.cr, splat (i32 6)
  %i.ct = and <4 x i32> %i.cs, splat (i32 197379)
  %i.cu = or <4 x i32> %i.cr, %i.ct
  %i.cv = or <4 x i32> %i.cu, splat (i32 -16777216)
  store <4 x i32> %i.cv, ptr %gep, align 4, !tbaa !50, !alias.scope !53, !noalias !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader324

.lr.ph.preheader324:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.preheader ], [ %i.ax, %middle.block ]
  %.0131170.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader324, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader324 ] ; 2 uses
  %.0131170 = phi ptr [ %i.dp, %.lr.ph ], [ %.0131170.ph, %.lr.ph.preheader324 ] ; 4 uses
  %i.cx = load i8, ptr %.0131170, align 1, !tbaa !51
  %i.cy = zext i8 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 18
  %i.da = getelementptr inbounds nuw i8, ptr %.0131170, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !51
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 10
  %i.de = or disjoint i32 %i.dd, %i.cz
  %i.df = getelementptr inbounds nuw i8, ptr %.0131170, i64 2
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !51
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 2
  %i.dj = or disjoint i32 %i.de, %i.di            ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.dl = lshr i32 %i.dj, 6
  %i.dm = and i32 %i.dl, 197379
  %i.dn = or i32 %i.dj, %i.dm
  %i.do = or i32 %i.dn, -16777216
  store i32 %i.do, ptr %i.dk, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0131170, i64 3 ; 2 uses
  %i.dq = icmp samesign ult i64 %indvars.iv.next, %i.ao
  br i1 %i.dq, label %.lr.ph, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.f
  %.0131.lcssa = phi ptr [ %i.am, %bb.f ], [ %i.az, %middle.block ], [ %i.dp, %.lr.ph ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0131.lcssa, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %.0131.lcssa, i64 4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.c
  %.2133 = phi ptr [ %i.dt, %._crit_edge ], [ %i.w, %bb.c ] ; 7 uses
  %.1122.in.in = phi ptr [ %.0131.lcssa, %._crit_edge ], [ %i.b, %bb.c ]
  %.1120.in = phi i8 [ %i.ds, %._crit_edge ], [ %i.v, %bb.c ]
  %.not = icmp eq i8 %.1120.in, 1
  br i1 %.not, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %.1122.in = load i8, ptr %.1122.in.in, align 1, !tbaa !51
  switch i8 %.1122.in, label %.critedge [
    i8 0, label %.thread
    i8 1, label %bb.k
    i8 2, label %bb.i
    i8 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i
  %exitcond.not.1 = phi i1 [ true, %bb.j ], [ true, %bb.i ], [ false, %bb.h ] ; 2 uses
  %.0124 = phi i32 [ 2, %bb.j ], [ 2, %bb.i ], [ 3, %bb.h ] ; 5 uses
  %i.du = phi i1 [ true, %bb.j ], [ false, %bb.i ], [ true, %bb.h ]
  %.0123 = phi i32 [ 3, %bb.j ], [ 2, %bb.i ], [ 3, %bb.h ] ; 5 uses
  %i.dv = ptrtoint ptr %.2133 to i64
  %i.dw = sub i64 %i.s, %i.dv
  %i.dx = shl nuw nsw i32 %.0124, 8
  %i.dy = mul nuw nsw i32 %i.dx, %.0123
  %i.dz = zext nneg i32 %i.dy to i64              ; 2 uses
  %i.ea = icmp slt i64 %i.dw, %i.dz
  br i1 %i.ea, label %.critedge, label %bb.l

.thread:                                          ; preds = %bb.h
  store i32 1, ptr %i.l, align 8, !tbaa !47
  %i.eb = load i32, ptr %i.m, align 4, !tbaa !48
  %i.ec = or i32 %i.eb, 2
  store i32 %i.ec, ptr %i.m, align 4, !tbaa !48
  %i.ed = ptrtoint ptr %.2133 to i64
  %i.ee = sub i64 %i.s, %i.ed
  %i.ef = icmp slt i64 %i.ee, 2304
  br i1 %i.ef, label %.critedge, label %.preheader.us.us.preheader

bb.l:                                             ; preds = %bb.k
  %i.eg = getelementptr inbounds nuw i8, ptr %.2133, i64 %i.dz ; 4 uses
  %.rhs.trunc = trunc nuw nsw i32 %.0124 to i16
  %i.eh = udiv i16 318, %.rhs.trunc
  %narrow = add nuw nsw i16 %i.eh, 7
  %i.ei = lshr i16 %narrow, 3
  %i.ej = zext nneg i16 %i.ei to i32
  %.rhs.trunc166 = trunc nuw nsw i32 %.0123 to i8
  %i.ek = udiv i8 -58, %.rhs.trunc166
  %.zext167 = zext nneg i8 %i.ek to i32
  %i.el = mul nuw nsw i32 %i.ej, %.zext167        ; 2 uses
  %i.em = ptrtoint ptr %i.eg to i64
  %i.en = sub i64 %i.s, %i.em
  %i.eo = zext nneg i32 %i.el to i64              ; 2 uses
  %.not147 = icmp slt i64 %i.en, %i.eo
  br i1 %.not147, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ep = shl nuw nsw i32 %i.el, 3
  %i.eq = add nuw nsw i32 %i.ep, 8                ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eo ; 2 uses
  %i.es = mul nuw nsw i32 %.0123, %.0124          ; 2 uses
  %i.et = zext nneg i32 %.0124 to i64             ; 4 uses
  br i1 %i.du, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.us.preheader:                          ; preds = %bb.m
  %i.eu = shl nuw nsw i32 %.0124, 1
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = zext nneg i32 %.0123 to i64
  %i.ex = sext i32 %i.r to i64                    ; 3 uses
  br label %.preheader.us

.preheader.us.us.preheader:                       ; preds = %.thread
  %i.ey = getelementptr inbounds nuw i8, ptr %.2133, i64 2304
  %i.ez = sext i32 %i.r to i64                    ; 3 uses
end_hunk_0
