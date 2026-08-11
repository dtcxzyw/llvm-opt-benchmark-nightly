inline.NumInlined: 13
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"eatgv\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Electronic Arts TGV video\00", align 1
@ff_eatgv_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 120, i32 2, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 1080, ptr null, ptr null, ptr null, ptr @tgv_decode_init, %union.anon { ptr @tgv_decode_frame }, ptr @tgv_decode_end, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"truncated header\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"truncated intra frame\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"inter frame without corresponding intra frame\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"truncated inter frame\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Invalid value for motion vector bits: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"MV %d %d out of picture\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @tgv_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 15, ptr %i.c, align 4, !tbaa !33
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 11, ptr %i.d, align 8, !tbaa !34
  %i.e = tail call ptr @av_frame_alloc() #5       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !35
  %.not = icmp eq ptr %i.e, null
  %. = select i1 %.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal range(i32 8, 0) i32 @tgv_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !38   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 28 uses
  %i.h = sext i32 %i.e to i64                     ; 7 uses
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 %i.h ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 6 uses
  %i.k = icmp slt i32 %i.e, 8
  br i1 %i.k, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.c, align 1, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.n = icmp eq i32 %i.l, 1413961323             ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ult i32 %i.e, 20
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.2) #5
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.p = load i16, ptr %i.m, align 1, !tbaa !39
  %i.q = zext i16 %i.p to i32                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.t = load i16, ptr %i.s, align 1, !tbaa !39
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 2 uses
  store i32 %i.u, ptr %i.v, align 4, !tbaa !41
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.y = load i32, ptr %i.x, align 8, !tbaa !42
  %.not = icmp eq i32 %i.y, %i.q
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 116
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !43
  %.not100 = icmp eq i32 %i.aa, %i.u
  br i1 %.not100, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.ab) #5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35
  tail call void @av_frame_unref(ptr noundef %i.ad) #5
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.af = load i32, ptr %i.r, align 8, !tbaa !40
  %i.ag = load i32, ptr %i.v, align 4, !tbaa !41
  %i.ah = tail call i32 @ff_set_dimensions(ptr noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ag) #5 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.ak = load i16, ptr %i.aj, align 1, !tbaa !39 ; 2 uses
  %i.al = getelementptr i8, ptr %i.c, i64 20      ; 9 uses
  %or.cond121 = icmp ne i16 %i.ak, 0
  %gepdiff = add nsw i64 %i.h, -20
  %i.am = icmp samesign ugt i32 %i.e, 22
  %i.an = and i1 %or.cond121, %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ao = tail call i16 @llvm.umin.i16(i16 %i.ak, i16 256)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.aq = zext nneg i16 %i.ao to i64              ; 3 uses
  %i.ar = tail call i64 @llvm.smin.i64(i64 %i.h, i64 25)
  %4 = add nsw i64 %i.ar, -23
  %i.as = sub nsw i64 %i.h, %4
  %i.at = add nsw i64 %i.as, -21
  %i.au = udiv i64 %i.at, 3
  %i.av = add nsw i64 %i.aq, -1
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %i.av) ; 2 uses
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aw, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ay = tail call i64 @llvm.smin.i64(i64 %i.h, i64 25)
  %i.az = sub nsw i64 %i.h, %i.ay
  %i.ba = add nuw nsw i64 %i.az, 2
  %i.bb = udiv i64 %i.ba, 3
  %i.bc = add nsw i64 %i.aq, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.bc) ; 2 uses
  %i.bd = shl nuw i64 %umin, 2
  %i.be = getelementptr i8, ptr %i.g, i64 %i.bd
  %scevgep = getelementptr i8, ptr %i.be, i64 36
  %i.bf = mul nuw i64 %umin, 3
  %i.bg = getelementptr i8, ptr %i.c, i64 %i.bf
  %scevgep166 = getelementptr i8, ptr %i.bg, i64 23
  %bound0 = icmp ult ptr %i.ap, %scevgep166
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 9223372036854775804     ; 4 uses
  %i.bh = mul i64 %n.vec, 3
  %i.bi = getelementptr i8, ptr %i.al, i64 %i.bh  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bj = mul i64 %index, 3                       ; 5 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.bj ; 3 uses
  %i.bk = getelementptr i8, ptr %i.al, i64 %i.bj  ; 3 uses
  %next.gep167 = getelementptr i8, ptr %i.bk, i64 3
  %i.bl = getelementptr i8, ptr %i.al, i64 %i.bj  ; 3 uses
  %next.gep168 = getelementptr i8, ptr %i.bl, i64 6
  %i.bm = getelementptr i8, ptr %i.al, i64 %i.bj  ; 3 uses
  %next.gep169 = getelementptr i8, ptr %i.bm, i64 9
  %i.bn = load i8, ptr %next.gep, align 1, !tbaa !39, !alias.scope !44
  %i.bo = load i8, ptr %next.gep167, align 1, !tbaa !39, !alias.scope !44
  %i.bp = load i8, ptr %next.gep168, align 1, !tbaa !39, !alias.scope !44
  %i.bq = load i8, ptr %next.gep169, align 1, !tbaa !39, !alias.scope !44
  %i.br = insertelement <4 x i8> poison, i8 %i.bn, i64 0
  %i.bs = insertelement <4 x i8> %i.br, i8 %i.bo, i64 1
  %i.bt = insertelement <4 x i8> %i.bs, i8 %i.bp, i64 2
  %i.bu = insertelement <4 x i8> %i.bt, i8 %i.bq, i64 3
  %i.bv = zext <4 x i8> %i.bu to <4 x i32>
  %i.bw = shl nuw nsw <4 x i32> %i.bv, splat (i32 16)
  %i.bx = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.by = getelementptr i8, ptr %i.bk, i64 4
  %i.bz = getelementptr i8, ptr %i.bl, i64 7
  %i.ca = getelementptr i8, ptr %i.bm, i64 10
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !39, !alias.scope !44
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !39, !alias.scope !44
  %i.cd = load i8, ptr %i.bz, align 1, !tbaa !39, !alias.scope !44
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !39, !alias.scope !44
  %i.cf = insertelement <4 x i8> poison, i8 %i.cb, i64 0
  %i.cg = insertelement <4 x i8> %i.cf, i8 %i.cc, i64 1
  %i.ch = insertelement <4 x i8> %i.cg, i8 %i.cd, i64 2
  %i.ci = insertelement <4 x i8> %i.ch, i8 %i.ce, i64 3
  %i.cj = zext <4 x i8> %i.ci to <4 x i32>
  %i.ck = shl nuw nsw <4 x i32> %i.cj, splat (i32 8)
  %i.cl = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.cm = getelementptr i8, ptr %i.bk, i64 5
  %i.cn = getelementptr i8, ptr %i.bl, i64 8
  %i.co = getelementptr i8, ptr %i.bm, i64 11
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !39, !alias.scope !44
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !39, !alias.scope !44
  %i.cr = load i8, ptr %i.cn, align 1, !tbaa !39, !alias.scope !44
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !39, !alias.scope !44
  %i.ct = insertelement <4 x i8> poison, i8 %i.cp, i64 0
  %i.cu = insertelement <4 x i8> %i.ct, i8 %i.cq, i64 1
  %i.cv = insertelement <4 x i8> %i.cu, i8 %i.cr, i64 2
  %i.cw = insertelement <4 x i8> %i.cv, i8 %i.cs, i64 3
  %i.cx = zext <4 x i8> %i.cw to <4 x i32>
  %i.cy = or disjoint <4 x i32> %i.bw, %i.ck
  %i.cz = or disjoint <4 x i32> %i.cy, %i.cx
  %i.da = or disjoint <4 x i32> %i.cz, splat (i32 -16777216)
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index
  store <4 x i32> %i.da, ptr %i.db, align 4, !tbaa !33, !alias.scope !47, !noalias !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %i.dd = add i64 %i.bj, 32
  %gepdiff171 = sub i64 %i.h, %i.dd
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.094122.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph ], [ %i.bi, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.094122 = phi ptr [ %i.ds, %scalar.ph ], [ %.094122.ph, %scalar.ph.preheader ] ; 4 uses
  %i.de = load i8, ptr %.094122, align 1, !tbaa !39
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.094122, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !39
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.094122, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !39
  %i.dn = zext i8 %i.dm to i32
  %i.do = or disjoint i32 %i.dg, %i.dk
  %i.dp = or disjoint i32 %i.do, %i.dn
  %i.dq = or disjoint i32 %i.dp, -16777216
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !33
  %i.ds = getelementptr inbounds nuw i8, ptr %.094122, i64 3 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %or.cond = icmp samesign ult i64 %indvars.iv.next, %i.aq
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.j, %i.dt                     ; 2 uses
  %i.dv = icmp sgt i64 %i.du, 2
  %i.dw = select i1 %or.cond, i1 %i.dv, i1 false
  br i1 %i.dw, label %scalar.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.h
  %.094.lcssa = phi ptr [ %i.al, %bb.h ], [ %i.bi, %middle.block ], [ %i.ds, %scalar.ph ]
  %.lcssa120 = phi i64 [ %gepdiff, %bb.h ], [ %gepdiff171, %middle.block ], [ %i.du, %scalar.ph ]
  %i.dx = icmp sgt i64 %.lcssa120, 4
  br i1 %i.dx, label %bb.i, label %.thread

bb.i:                                             ; preds = %._crit_edge, %bb.b
  %.296 = phi ptr [ %.094.lcssa, %._crit_edge ], [ %i.m, %bb.b ] ; 8 uses
  %i.dy = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1) #5 ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 0
  br i1 %i.dz, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.eb, ptr noundef nonnull align 8 dereferenceable(1024) %i.ec, i64 1024, i1 false)
  br i1 %i.n, label %bb.k, label %bb.ae

bb.k:                                             ; preds = %bb.j
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !55
  %i.ef = or i32 %i.ee, 2
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !55
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.eg, align 8, !tbaa !60
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !61 ; 2 uses
  %.not102 = icmp eq ptr %i.ei, null
  br i1 %.not102, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !40
  %i.el = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !41
  %i.en = mul nsw i32 %i.em, %i.ek
  %i.eo = sext i32 %i.en to i64
  %i.ep = tail call noalias ptr @av_mallocz(i64 noundef %i.eo) #5 ; 3 uses
  store ptr %i.ep, ptr %i.eh, align 8, !tbaa !61
  %.not103 = icmp eq ptr %i.ep, null
  br i1 %.not103, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.eq = phi ptr [ %i.ep, %bb.l ], [ %i.ei, %bb.k ] ; 3 uses
  %i.er = load ptr, ptr %i.g, align 8, !tbaa !29  ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 112
  %i.et = load i32, ptr %i.es, align 8, !tbaa !42
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 116
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !43
  %i.ew = mul nsw i32 %i.ev, %i.et
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.eq, i64 %i.ex
  %i.ez = load i8, ptr %.296, align 1, !tbaa !39
  %i.fa = and i8 %i.ez, 1
  %.not.i = icmp eq i8 %i.fa, 0
  %.078.v.i = select i1 %.not.i, i64 2, i64 5
  %.078.i = getelementptr inbounds nuw i8, ptr %.296, i64 %.078.v.i ; 5 uses
  %i.fb = ptrtoint ptr %.078.i to i64
  %i.fc = sub i64 %i.j, %i.fb
  %i.fd = icmp slt i64 %i.fc, 3
  br i1 %i.fd, label %bb.ac, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fe = load i8, ptr %.078.i, align 1, !tbaa !39
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.ff, 16
  %i.fh = getelementptr inbounds nuw i8, ptr %.078.i, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !39
  %i.fj = zext i8 %i.fi to i32
  %i.fk = shl nuw nsw i32 %i.fj, 8
  %i.fl = or disjoint i32 %i.fk, %i.fg
  %i.fm = getelementptr inbounds nuw i8, ptr %.078.i, i64 2
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !39
  %i.fo = zext i8 %i.fn to i32
end_hunk_0
