Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vc1_loopfilter?download=true
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @ff_vc1_i_overlap_filter(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40
  %i.g = mul nsw i32 %i.f, %i.d
  %i.h = add nsw i32 %i.g, %i.b                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10140
  %i.l = load i32, ptr %i.k, align 4, !tbaa !49
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [768 x i8], ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10144
  %i.p = load i32, ptr %i.o, align 16, !tbaa !50
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [768 x i8], ptr %i.j, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10136
  %i.t = load i32, ptr %i.s, align 8, !tbaa !51
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [768 x i8], ptr %i.j, i64 %i.u ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 10132
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [768 x i8], ptr %i.j, i64 %i.y ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6120 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 6044 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 9748 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 9736 ; 3 uses
  %i.ae = sext i32 %i.h to i64                    ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 9700 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 9808 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 5280
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 128 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 384 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 256 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %vc1_h_overlap_filter.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %vc1_h_overlap_filter.exit ] ; 4 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !38  ; 2 uses
  %i.am = icmp ne i32 %i.al, 0
  %i.an = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ao = and i32 %i.an, 5
  %.not87 = icmp eq i32 %i.ao, 1                  ; 2 uses
  %or.cond = or i1 %.not87, %i.am
  br i1 %or.cond, label %bb.c, label %vc1_h_overlap_filter.exit

bb.c:                                             ; preds = %bb.b
  %i.ap = load i8, ptr %i.aa, align 8, !tbaa !53
  %i.aq = icmp ugt i8 %i.ap, 8
  br i1 %i.aq, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = load i32, ptr %i.ab, align 4, !tbaa !77
  %i.as = icmp eq i32 %i.ar, 3
  br i1 %i.as, label %bb.e, label %vc1_h_overlap_filter.exit

bb.e:                                             ; preds = %bb.d
  %i.at = load i8, ptr %i.ac, align 4, !tbaa !78
  %i.au = icmp eq i8 %i.at, 1
  br i1 %i.au, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.ae ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !54
  %.not88 = icmp eq i8 %i.ax, 0
  br i1 %.not88, label %vc1_h_overlap_filter.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not87, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr i8, ptr %i.aw, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !54
  %.not89 = icmp eq i8 %i.az, 0
  br i1 %.not89, label %vc1_h_overlap_filter.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.not90 = icmp eq i32 %i.al, 0                  ; 2 uses
  %i.ba = select i1 %.not90, ptr %i.z, ptr %i.v   ; 3 uses
  %i.bb = load i32, ptr %i.af, align 4, !tbaa !55
  %i.bc = icmp ne i32 %i.bb, 1                    ; 2 uses
  %brmerge = or i1 %.not90, %i.bc
  br i1 %brmerge, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.i
  %i.bd = load ptr, ptr %i.ag, align 16, !tbaa !56 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.ae
  %i.bf = getelementptr i8, ptr %i.be, i64 -1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !54
  %i.bh = icmp ne i8 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.bc, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre = load ptr, ptr %i.ag, align 16, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %.thread
  %i.bj = phi ptr [ %i.bd, %.thread ], [ %.pre, %._crit_edge ]
  %i.bk = phi i32 [ %i.bi, %.thread ], [ 0, %._crit_edge ]
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.ae
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !54
  %i.bn = icmp ne i8 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bp = phi i32 [ 0, %bb.j ], [ %i.bk, %bb.k ]  ; 7 uses
  %i.bq = phi i32 [ 0, %bb.j ], [ %i.bo, %bb.k ]  ; 9 uses
  %i.br = load ptr, ptr %i.ah, align 16, !tbaa !57 ; 5 uses
  switch i32 %i.an, label %default.unreachable [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 256
  %.not48.i = icmp eq i32 %i.bp, %i.bq            ; 2 uses
  %i.bt = shl nuw nsw i32 %i.bp, 3
  %i.bu = sub nuw nsw i32 16, %i.bt
  %i.bv = select i1 %.not48.i, i32 8, i32 %i.bu
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl nuw nsw i32 %i.bq, 3
  %i.by = sub nuw nsw i32 16, %i.bx
  %i.bz = select i1 %.not48.i, i32 8, i32 %i.by
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = or i32 %i.bq, %i.bp
  %i.cc = xor i32 %i.cb, 1
  tail call void %i.br(ptr noundef nonnull %i.bs, ptr noundef %i.z, i64 noundef %i.bw, i64 noundef %i.ca, i32 noundef %i.cc) #1, !inline_history !0
  br label %vc1_h_overlap_filter.exit

bb.n:                                             ; preds = %bb.l
  %i.cd = xor i32 %i.bq, 1
  tail call void %i.br(ptr noundef %i.z, ptr noundef nonnull %i.ak, i64 noundef 8, i64 noundef 8, i32 noundef %i.cd) #1, !inline_history !0
  br label %vc1_h_overlap_filter.exit

bb.o:                                             ; preds = %bb.l
  %i.ce = icmp eq i32 %i.bp, 0                    ; 2 uses
  %i.cf = icmp ne i32 %i.bq, 0                    ; 2 uses
  %or.cond.i = and i1 %i.ce, %i.cf
  %.v.i = select i1 %or.cond.i, i64 272, i64 384
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.v.i
  %or.cond3.i = or i1 %i.ce, %i.cf
  %.v44.i = select i1 %or.cond3.i, i64 128, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.z, i64 %.v44.i
  %.not45.i = icmp eq i32 %i.bp, %i.bq            ; 2 uses
  %i.ci = shl nuw nsw i32 %i.bp, 3
  %i.cj = sub nuw nsw i32 16, %i.ci
  %i.ck = select i1 %.not45.i, i32 8, i32 %i.cj
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw nsw i32 %i.bq, 3
  %i.cn = sub nuw nsw i32 16, %i.cm
  %i.co = select i1 %.not45.i, i32 8, i32 %i.cn
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = or i32 %i.bq, %i.bp
  %.not46.i = icmp eq i32 %i.cq, 0
  %1 = select i1 %.not46.i, i32 1, i32 2
  tail call void %i.br(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ch, i64 noundef %i.cl, i64 noundef %i.cp, i32 noundef %1) #1, !inline_history !0
  br label %vc1_h_overlap_filter.exit

bb.p:                                             ; preds = %bb.l
  %.not.i = icmp eq i32 %i.bq, 0
  %2 = select i1 %.not.i, i32 1, i32 2
  tail call void %i.br(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, i64 noundef 8, i64 noundef 8, i32 noundef %2) #1, !inline_history !0
  br label %vc1_h_overlap_filter.exit

bb.q:                                             ; preds = %bb.l, %bb.l
  %i.cr = getelementptr inbounds nuw [128 x i8], ptr %i.ba, i64 %indvars.iv
  %i.cs = getelementptr inbounds nuw [128 x i8], ptr %i.z, i64 %indvars.iv
  tail call void %i.br(ptr noundef %i.cr, ptr noundef %i.cs, i64 noundef 8, i64 noundef 8, i32 noundef 1) #1, !inline_history !0
  br label %vc1_h_overlap_filter.exit

default.unreachable:                              ; preds = %bb.l
  unreachable

vc1_h_overlap_filter.exit:                        ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.b, %bb.d, %bb.f, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.r, label %bb.b, !llvm.loop !75

bb.r:                                             ; preds = %vc1_h_overlap_filter.exit
  %i.ct = load i32, ptr %i.af, align 4, !tbaa !55
  %.not = icmp eq i32 %i.ct, 1
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 3780 ; 2 uses
  %i.cv = add nsw i32 %i.h, -1                    ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 5272 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.v, i64 256 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 384
  %i.da = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 388
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %vc1_v_overlap_filter.exit
  %indvars.iv99 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next100, %vc1_v_overlap_filter.exit ] ; 6 uses
  %i.dc = load i32, ptr %i.cu, align 4, !tbaa !59 ; 2 uses
  %.not76 = icmp ne i32 %i.dc, 0
  %i.dd = trunc nuw nsw i64 %indvars.iv99 to i32  ; 3 uses
  %i.de = and i32 %i.dd, 2
  %.not77 = icmp eq i32 %i.de, 0                  ; 3 uses
  %or.cond92 = and i1 %.not77, %.not76
  br i1 %or.cond92, label %vc1_v_overlap_filter.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load i32, ptr %i.a, align 4, !tbaa !38
  %.not78 = icmp eq i32 %i.df, 0
  br i1 %.not78, label %vc1_v_overlap_filter.exit93, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = load i8, ptr %i.aa, align 8, !tbaa !53
  %i.dh = icmp ugt i8 %i.dg, 8
  br i1 %i.dh, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = load i32, ptr %i.ab, align 4, !tbaa !77
  %i.dj = icmp eq i32 %i.di, 3
  br i1 %i.dj, label %bb.w, label %vc1_v_overlap_filter.exit93

bb.w:                                             ; preds = %bb.v
  %i.dk = load i8, ptr %i.ac, align 4, !tbaa !78
  %i.dl = icmp eq i8 %i.dk, 1
  br i1 %i.dl, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr %i.ad, align 8, !tbaa !79 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.cw
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !54
  %.not79 = icmp eq i8 %i.do, 0
  br i1 %.not79, label %vc1_v_overlap_filter.exit93, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not77, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dp = load i32, ptr %i.e, align 4, !tbaa !40
  %i.dq = sub nsw i32 %i.cv, %i.dp
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %i.dm, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !54
  %.not81 = icmp eq i8 %i.dt, 0
  br i1 %.not81, label %vc1_v_overlap_filter.exit93, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.u
  %.not82 = icmp eq i32 %i.dc, 0
  %i.du = select i1 %.not82, ptr %i.n, ptr %i.v   ; 3 uses
  %i.dv = load ptr, ptr %i.cx, align 8, !tbaa !60 ; 5 uses
  switch i32 %i.dd, label %default.unreachable95 [
    i32 0, label %bb.ab
    i32 1, label %bb.ac
    i32 2, label %bb.ad
    i32 3, label %bb.ae
    i32 4, label %bb.af
    i32 5, label %bb.af
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 128
  tail call void %i.dv(ptr noundef nonnull %i.dw, ptr noundef %i.v) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit93

bb.ac:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 384
  tail call void %i.dv(ptr noundef nonnull %i.dx, ptr noundef nonnull %i.cy) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit93

bb.ad:                                            ; preds = %bb.aa
  tail call void %i.dv(ptr noundef %i.v, ptr noundef nonnull %i.da) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit93

bb.ae:                                            ; preds = %bb.aa
  tail call void %i.dv(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cz) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit93

bb.af:                                            ; preds = %bb.aa, %bb.aa
  %i.dy = getelementptr inbounds nuw [128 x i8], ptr %i.du, i64 %indvars.iv99
  %i.dz = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %indvars.iv99
  tail call void %i.dv(ptr noundef %i.dy, ptr noundef %i.dz) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit93

default.unreachable95:                            ; preds = %bb.aa
  unreachable

vc1_v_overlap_filter.exit93:                      ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t
  %i.ea = load i32, ptr %i.a, align 4, !tbaa !38
  %i.eb = load i32, ptr %i.db, align 4, !tbaa !61
  %i.ec = add nsw i32 %i.eb, -1
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.ag, label %vc1_v_overlap_filter.exit

bb.ag:                                            ; preds = %vc1_v_overlap_filter.exit93
  %i.ee = load i8, ptr %i.aa, align 8, !tbaa !53
  %i.ef = icmp ugt i8 %i.ee, 8
  br i1 %i.ef, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eg = load i32, ptr %i.ab, align 4, !tbaa !77
  %i.eh = icmp eq i32 %i.eg, 3
  br i1 %i.eh, label %bb.ai, label %vc1_v_overlap_filter.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ei = load i8, ptr %i.ac, align 4, !tbaa !78
  %i.ej = icmp eq i8 %i.ei, 1
  br i1 %i.ej, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ek = load ptr, ptr %i.ad, align 8, !tbaa !79 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.ae
  %i.em = load i8, ptr %i.el, align 1, !tbaa !54
  %.not83 = icmp eq i8 %i.em, 0
  br i1 %.not83, label %vc1_v_overlap_filter.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not77, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.en = load i32, ptr %i.e, align 4, !tbaa !40
  %i.eo = sub nsw i32 %i.h, %i.en
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.ek, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !54
  %.not85 = icmp eq i8 %i.er, 0
  br i1 %.not85, label %vc1_v_overlap_filter.exit, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ai, %bb.ag
  %i.es = load i32, ptr %i.cu, align 4, !tbaa !59
  %.not86 = icmp eq i32 %i.es, 0
  %i.et = select i1 %.not86, ptr %i.r, ptr %i.z   ; 3 uses
  %i.eu = load ptr, ptr %i.cx, align 8, !tbaa !60 ; 5 uses
  switch i32 %i.dd, label %default.unreachable94 [
    i32 0, label %bb.an
    i32 1, label %bb.ao
    i32 2, label %bb.ap
    i32 3, label %bb.aq
    i32 4, label %bb.ar
    i32 5, label %bb.ar
  ]

bb.an:                                            ; preds = %bb.am
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 128
  tail call void %i.eu(ptr noundef nonnull %i.ev, ptr noundef %i.z) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit

bb.ao:                                            ; preds = %bb.am
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 384
  tail call void %i.eu(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.ak) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit

bb.ap:                                            ; preds = %bb.am
  tail call void %i.eu(ptr noundef %i.z, ptr noundef nonnull %i.ai) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit

bb.aq:                                            ; preds = %bb.am
  tail call void %i.eu(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.aj) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit

bb.ar:                                            ; preds = %bb.am, %bb.am
  %i.ex = getelementptr inbounds nuw [128 x i8], ptr %i.et, i64 %indvars.iv99
  %i.ey = getelementptr inbounds nuw [128 x i8], ptr %i.z, i64 %indvars.iv99
  tail call void %i.eu(ptr noundef %i.ex, ptr noundef %i.ey) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit

default.unreachable94:                            ; preds = %bb.am
  unreachable

vc1_v_overlap_filter.exit:                        ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.s, %vc1_v_overlap_filter.exit93, %bb.ah, %bb.aj, %bb.al
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next100, 6
  br i1 %exitcond102.not, label %.loopexit, label %bb.s, !llvm.loop !76

.loopexit:                                        ; preds = %vc1_v_overlap_filter.exit, %bb.r
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_vc1_p_overlap_filter(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40
  %i.g = mul nsw i32 %i.f, %i.d
  %i.h = add nsw i32 %i.g, %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10140
  %i.l = load i32, ptr %i.k, align 4, !tbaa !49
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [768 x i8], ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10144
  %i.p = load i32, ptr %i.o, align 16, !tbaa !50
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [768 x i8], ptr %i.j, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10136
  %i.t = load i32, ptr %i.s, align 8, !tbaa !51
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [768 x i8], ptr %i.j, i64 %i.u ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 10132
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [768 x i8], ptr %i.j, i64 %i.y ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6488 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 9700 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 9808 ; 2 uses
  %i.ae = sext i32 %i.h to i64                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5280
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 128 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 384 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 256 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %vc1_h_overlap_filter.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %vc1_h_overlap_filter.exit ] ; 5 uses
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !38  ; 2 uses
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.am = and i32 %i.al, 5
  %.not83 = icmp eq i32 %i.am, 1
  %or.cond = or i1 %.not83, %i.ak
  br i1 %or.cond, label %bb.c, label %vc1_h_overlap_filter.exit

bb.c:                                             ; preds = %bb.b
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !82
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !62
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !54
  %.not84 = icmp eq i8 %i.as, 0
  br i1 %.not84, label %vc1_h_overlap_filter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr i8, ptr %i.ar, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !54
  %.not85 = icmp eq i8 %i.au, 0
  br i1 %.not85, label %vc1_h_overlap_filter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not86 = icmp eq i32 %i.aj, 0                  ; 2 uses
  %i.av = select i1 %.not86, ptr %i.z, ptr %i.v   ; 3 uses
  %i.aw = load i32, ptr %i.ac, align 4, !tbaa !55
  %i.ax = icmp ne i32 %i.aw, 1                    ; 2 uses
  %brmerge = or i1 %.not86, %i.ax
  br i1 %brmerge, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.ay = load ptr, ptr %i.ad, align 16, !tbaa !56 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ae
  %i.ba = getelementptr i8, ptr %i.az, i64 -1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !54
  %i.bc = icmp ne i8 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.ax, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %i.ad, align 16, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %.thread
  %i.be = phi ptr [ %i.ay, %.thread ], [ %.pre, %._crit_edge ]
  %i.bf = phi i32 [ %i.bd, %.thread ], [ 0, %._crit_edge ]
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.ae
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !54
  %i.bi = icmp ne i8 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bk = phi i32 [ 0, %bb.f ], [ %i.bf, %bb.g ]  ; 7 uses
  %i.bl = phi i32 [ 0, %bb.f ], [ %i.bj, %bb.g ]  ; 9 uses
  %i.bm = load ptr, ptr %i.af, align 16, !tbaa !57 ; 5 uses
  switch i32 %i.al, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 256
  %.not48.i = icmp eq i32 %i.bk, %i.bl            ; 2 uses
  %i.bo = shl nuw nsw i32 %i.bk, 3
  %i.bp = sub nuw nsw i32 16, %i.bo
  %i.bq = select i1 %.not48.i, i32 8, i32 %i.bp
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i32 %i.bl, 3
  %i.bt = sub nuw nsw i32 16, %i.bs
  %i.bu = select i1 %.not48.i, i32 8, i32 %i.bt
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = or i32 %i.bl, %i.bk
  %i.bx = xor i32 %i.bw, 1
  tail call void %i.bm(ptr noundef nonnull %i.bn, ptr noundef %i.z, i64 noundef %i.br, i64 noundef %i.bv, i32 noundef %i.bx) #1, !inline_history !0
  br label %vc1_h_overlap_filter.exit

bb.j:                                             ; preds = %bb.h
  %i.by = xor i32 %i.bl, 1
  tail call void %i.bm(ptr noundef %i.z, ptr noundef nonnull %i.ai, i64 noundef 8, i64 noundef 8, i32 noundef %i.by) #1, !inline_history !0
  br label %vc1_h_overlap_filter.exit

bb.k:                                             ; preds = %bb.h
  %i.bz = icmp eq i32 %i.bk, 0                    ; 2 uses
  %i.ca = icmp ne i32 %i.bl, 0                    ; 2 uses
  %or.cond.i = and i1 %i.bz, %i.ca
  %.v.i = select i1 %or.cond.i, i64 272, i64 384
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 %.v.i
  %or.cond3.i = or i1 %i.bz, %i.ca
  %.v44.i = select i1 %or.cond3.i, i64 128, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 %.v44.i
  %.not45.i = icmp eq i32 %i.bk, %i.bl            ; 2 uses
  %i.cd = shl nuw nsw i32 %i.bk, 3
  %i.ce = sub nuw nsw i32 16, %i.cd
  %i.cf = select i1 %.not45.i, i32 8, i32 %i.ce
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = shl nuw nsw i32 %i.bl, 3
  %i.ci = sub nuw nsw i32 16, %i.ch
  %i.cj = select i1 %.not45.i, i32 8, i32 %i.ci
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = or i32 %i.bl, %i.bk
  %.not46.i = icmp eq i32 %i.cl, 0
  %1 = select i1 %.not46.i, i32 1, i32 2
  tail call void %i.bm(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cc, i64 noundef %i.cg, i64 noundef %i.ck, i32 noundef %1) #1, !inline_history !0
  br label %vc1_h_overlap_filter.exit

bb.l:                                             ; preds = %bb.h
  %.not.i = icmp eq i32 %i.bl, 0
  %2 = select i1 %.not.i, i32 1, i32 2
  tail call void %i.bm(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah, i64 noundef 8, i64 noundef 8, i32 noundef %2) #1, !inline_history !0
  br label %vc1_h_overlap_filter.exit

bb.m:                                             ; preds = %bb.h, %bb.h
  %i.cm = getelementptr inbounds nuw [128 x i8], ptr %i.av, i64 %indvars.iv
  %i.cn = getelementptr inbounds nuw [128 x i8], ptr %i.z, i64 %indvars.iv
  tail call void %i.bm(ptr noundef %i.cm, ptr noundef %i.cn, i64 noundef 8, i64 noundef 8, i32 noundef 1) #1, !inline_history !0
  br label %vc1_h_overlap_filter.exit

default.unreachable:                              ; preds = %bb.h
  unreachable

vc1_h_overlap_filter.exit:                        ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.b, %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.n, label %bb.b, !llvm.loop !80

bb.n:                                             ; preds = %vc1_h_overlap_filter.exit
  %i.co = load i32, ptr %i.ac, align 4, !tbaa !55
  %.not = icmp eq i32 %i.co, 1
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 3780 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 3144 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 5272 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 256 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 384
  %i.cu = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 388
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %vc1_v_overlap_filter.exit
  %indvars.iv95 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next96, %vc1_v_overlap_filter.exit ] ; 11 uses
  %i.cw = load i32, ptr %i.cp, align 4, !tbaa !59 ; 2 uses
  %.not74 = icmp ne i32 %i.cw, 0
  %i.cx = trunc nuw nsw i64 %indvars.iv95 to i32  ; 3 uses
  %i.cy = and i32 %i.cx, 2
  %.not75 = icmp eq i32 %i.cy, 0
  %or.cond88 = and i1 %.not75, %.not74
  br i1 %or.cond88, label %vc1_v_overlap_filter.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = load i32, ptr %i.a, align 4, !tbaa !38
  %.not76 = icmp eq i32 %i.cz, 0
  br i1 %.not76, label %vc1_v_overlap_filter.exit89, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %i.aa, align 8, !tbaa !82 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv95
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !62
  %i.dd = icmp samesign ugt i64 %indvars.iv95, 3
  %i.de = select i1 %i.dd, i32 -1, i32 -2
  %i.df = add i32 %i.de, %i.dc                    ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %i.da, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !54
  %.not77 = icmp eq i8 %i.di, 0
  br i1 %.not77, label %vc1_v_overlap_filter.exit89, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv95
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !62
  %i.dl = sub i32 %i.df, %i.dk
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %i.da, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !54
  %.not78 = icmp eq i8 %i.do, 0
  br i1 %.not78, label %vc1_v_overlap_filter.exit89, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not79 = icmp eq i32 %i.cw, 0
  %i.dp = select i1 %.not79, ptr %i.n, ptr %i.v   ; 3 uses
  %i.dq = load ptr, ptr %i.cr, align 8, !tbaa !60 ; 5 uses
  switch i32 %i.cx, label %default.unreachable91 [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
    i32 5, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  tail call void %i.dq(ptr noundef nonnull %i.dr, ptr noundef %i.v) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit89

bb.u:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 384
  tail call void %i.dq(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.cs) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit89

bb.v:                                             ; preds = %bb.s
  tail call void %i.dq(ptr noundef %i.v, ptr noundef nonnull %i.cu) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit89

bb.w:                                             ; preds = %bb.s
  tail call void %i.dq(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.ct) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit89

bb.x:                                             ; preds = %bb.s, %bb.s
  %i.dt = getelementptr inbounds nuw [128 x i8], ptr %i.dp, i64 %indvars.iv95
  %i.du = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %indvars.iv95
  tail call void %i.dq(ptr noundef %i.dt, ptr noundef %i.du) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit89

default.unreachable91:                            ; preds = %bb.s
  unreachable

vc1_v_overlap_filter.exit89:                      ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p
  %i.dv = load i32, ptr %i.a, align 4, !tbaa !38
  %i.dw = load i32, ptr %i.cv, align 4, !tbaa !61
  %i.dx = add nsw i32 %i.dw, -1
  %i.dy = icmp eq i32 %i.dv, %i.dx
  br i1 %i.dy, label %bb.y, label %vc1_v_overlap_filter.exit

bb.y:                                             ; preds = %vc1_v_overlap_filter.exit89
  %i.dz = load ptr, ptr %i.aa, align 8, !tbaa !82 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv95
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !62 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !54
  %.not80 = icmp eq i8 %i.ee, 0
  br i1 %.not80, label %vc1_v_overlap_filter.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv95
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !62
  %i.eh = sub nsw i32 %i.eb, %i.eg
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %i.dz, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !54
  %.not81 = icmp eq i8 %i.ek, 0
  br i1 %.not81, label %vc1_v_overlap_filter.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.el = load i32, ptr %i.cp, align 4, !tbaa !59
  %.not82 = icmp eq i32 %i.el, 0
  %i.em = select i1 %.not82, ptr %i.r, ptr %i.z   ; 3 uses
  %i.en = load ptr, ptr %i.cr, align 8, !tbaa !60 ; 5 uses
  switch i32 %i.cx, label %default.unreachable90 [
    i32 0, label %bb.ab
    i32 1, label %bb.ac
    i32 2, label %bb.ad
    i32 3, label %bb.ae
    i32 4, label %bb.af
    i32 5, label %bb.af
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 128
  tail call void %i.en(ptr noundef nonnull %i.eo, ptr noundef %i.z) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 384
  tail call void %i.en(ptr noundef nonnull %i.ep, ptr noundef nonnull %i.ai) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit

bb.ad:                                            ; preds = %bb.aa
  tail call void %i.en(ptr noundef %i.z, ptr noundef nonnull %i.ag) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit

bb.ae:                                            ; preds = %bb.aa
  tail call void %i.en(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ah) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit

bb.af:                                            ; preds = %bb.aa, %bb.aa
  %i.eq = getelementptr inbounds nuw [128 x i8], ptr %i.em, i64 %indvars.iv95
  %i.er = getelementptr inbounds nuw [128 x i8], ptr %i.z, i64 %indvars.iv95
  tail call void %i.en(ptr noundef %i.eq, ptr noundef %i.er) #1, !inline_history !1
  br label %vc1_v_overlap_filter.exit

default.unreachable90:                            ; preds = %bb.aa
  unreachable

vc1_v_overlap_filter.exit:                        ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.o, %vc1_v_overlap_filter.exit89, %bb.z, %bb.y
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next96, 6
  br i1 %exitcond98.not, label %.loopexit, label %bb.o, !llvm.loop !81

.loopexit:                                        ; preds = %vc1_v_overlap_filter.exit, %bb.n
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_vc1_i_loop_filter(ptr nofree noundef readonly %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 10 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40   ; 2 uses
  %i.g = mul nsw i32 %i.f, %i.d
  %i.h = add nsw i32 %i.g, %i.b                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3780 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59
end_hunk_0
