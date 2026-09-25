Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blur?download=true
inline.NumInlined: 26
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lv_area_t = type { i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_blur(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.lv_area_t, align 16         ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 18 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !48   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %3, ptr noundef %2, ptr noundef nonnull %i.j) #5
  br i1 %i.k, label %bb.c, label %.loopexit759

bb.c:                                             ; preds = %bb.b
  %i.l = sub i32 0, %i.g                          ; 2 uses
  %i.m = sub i32 0, %i.i                          ; 2 uses
  call void @lv_area_move(ptr noundef nonnull %3, i32 noundef %i.l, i32 noundef %i.m) #5
  %i.n = load i32, ptr %i.a, align 8, !tbaa !37   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !49
  switch i32 %i.p, label %.thread [
    i32 0, label %bb.d
    i32 1, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 @lv_area_get_size(ptr noundef nonnull %3) #5
  %i.r = icmp ugt i32 %i.n, 31
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !50
  %i.u = icmp eq i32 %i.t, 0
  %i.v = icmp sgt i32 %i.q, 25600
  %or.cond = select i1 %i.u, i1 %i.v, i1 false
  %spec.select = select i1 %or.cond, i32 3, i32 2
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.w = icmp samesign ugt i32 %i.n, 7
  %spec.select1020 = select i1 %i.w, i32 2, i32 1
  br label %.thread

bb.g:                                             ; preds = %bb.c
  %i.x = icmp ugt i32 %i.n, 23
  %spec.select1021 = select i1 %i.x, i32 3, i32 2
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.1532 = phi i32 [ 1, %bb.c ], [ %spec.select, %bb.e ], [ %spec.select1021, %bb.g ], [ %spec.select1020, %bb.f ] ; 36 uses
  %i.y = add nsw i32 %.1532, -1
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.ac = load <4 x i32>, ptr %3, align 16, !tbaa !51 ; 2 uses
  %i.ad = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %i.ae = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.af = add nsw <4 x i32> %i.ac, %i.ae
  %i.ag = sub nsw <4 x i32> %i.ac, %i.ae
  %i.ah = shufflevector <4 x i32> %i.af, <4 x i32> %i.ag, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ai = freeze <4 x i32> %i.ah                  ; 2 uses
  %i.aj = insertelement <4 x i32> poison, i32 %.1532, i64 0
  %i.ak = shufflevector <4 x i32> %i.aj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.al = srem <4 x i32> %i.ai, %i.ak
  %i.am = sub nsw <4 x i32> %i.ai, %i.al
  store <4 x i32> %i.am, ptr %3, align 16, !tbaa !51
  %i.an = call i32 @lv_area_get_width(ptr noundef nonnull %3) #5
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.loopexit759, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.ap = call i32 @lv_area_get_height(ptr noundef nonnull %3) #5
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %.loopexit759, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = udiv i32 %i.n, %.1532                   ; 3 uses
  %i.as = shl i32 %i.ar, 12
  %i.at = add i32 %i.ar, 4
  %i.au = udiv i32 %i.as, %i.at                   ; 30 uses
  %i.av = lshr i32 %i.ar, 1
  %i.aw = call i32 @llvm.umax.i32(i32 %i.av, i32 1) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !50
  %i.az = call i32 @lv_area_get_width(ptr noundef %2) #5
  %i.ba = call i32 @lv_area_get_height(ptr noundef %2) #5
  %i.bb = call i32 @llvm.smin.i32(i32 %i.az, i32 %i.ba)
  %i.bc = ashr i32 %i.bb, 1
  %spec.select592 = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bc) ; 8 uses
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !52
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = lshr i32 %i.bg, 8
  %i.bi = and i32 %i.bh, 255
  %i.bj = call zeroext i8 @lv_color_format_get_size(i32 noundef %i.bi) #5 ; 7 uses
  %i.bk = zext i8 %i.bj to i32                    ; 3 uses
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !52 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8            ; 2 uses
  %i.bp = and i32 %i.bo, 65535                    ; 3 uses
  %i.bq = mul nuw nsw i32 %.1532, %i.bk           ; 2 uses
  %i.br = load i64, ptr %i.bm, align 8
  %i.bs = and i64 %i.br, 65280
  %i.bt = icmp eq i64 %i.bs, 6912                 ; 12 uses
  %i.bu = load i32, ptr %3, align 16, !tbaa !53   ; 2 uses
  %i.bv = load i32, ptr %i.z, align 8, !tbaa !54
  %.not845 = icmp sgt i32 %i.bu, %i.bv
  br i1 %.not845, label %._crit_edge, label %.lr.ph847

.lr.ph847:                                        ; preds = %bb.i
  %.lhs.trunc = trunc i32 %i.bo to i16
  %.rhs.trunc = zext i8 %i.bj to i16
  %i.bw = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext i16 %i.bw to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %reass.add.neg.i = mul i32 %spec.select592, -2
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ca = mul nuw nsw i32 %.1532, %.zext          ; 2 uses
  %i.cb = zext nneg i32 %i.ca to i64              ; 6 uses
  %i.cc = sub i32 4096, %i.au                     ; 14 uses
  %i.cd = sub nsw i32 0, %i.ca
  %i.ce = sext i32 %i.cd to i64                   ; 4 uses
  %i.cf = sub nsw i64 0, %i.cb
  %i.cg = mul nuw nsw i32 %i.bp, %.1532           ; 2 uses
  %i.ch = zext nneg i32 %i.cg to i64              ; 14 uses
  %i.ci = sub nsw i32 0, %i.cg
  %i.cj = sext i32 %i.ci to i64                   ; 11 uses
  %i.ck = sub nsw i64 0, %i.ch                    ; 2 uses
  %i.cl = icmp ugt i8 %i.bj, 2
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph847, %.loopexit760
  %.0519846 = phi i32 [ %i.bu, %.lr.ph847 ], [ %i.xk, %.loopexit760 ] ; 8 uses
  %i.cm = load i32, ptr %2, align 4, !tbaa !53    ; 2 uses
  %i.cn = load i32, ptr %i.bx, align 4, !tbaa !54 ; 2 uses
  %i.co = add nsw i32 %.0519846, %i.g             ; 4 uses
  %i.cp = add nsw i32 %i.cm, %spec.select592
  %i.cq = icmp slt i32 %i.co, %i.cp
  br i1 %i.cq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.neg21.i = sub i32 %i.cm, %i.co
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.cr = sub nsw i32 %i.cn, %spec.select592
  %i.cs = icmp sgt i32 %i.co, %i.cr
  br i1 %i.cs, label %bb.m, label %get_rounded_edge_point.exit

bb.m:                                             ; preds = %bb.l
  %.neg.i = sub i32 %i.co, %i.cn
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.neg21.pn.i = phi i32 [ %.neg21.i, %bb.k ], [ %.neg.i, %bb.m ] ; 2 uses
  %add.neg.i = sub i32 %reass.add.neg.i, %.neg21.pn.i
  %.neg22.i = mul i32 %add.neg.i, %.neg21.pn.i
  %i.ct = call i32 @lv_sqrt32(i32 noundef %.neg22.i) #5
  %i.cu = sub i32 %spec.select592, %i.ct          ; 2 uses
  %.pre943 = sub i32 %i.cu, %i.i
  br label %get_rounded_edge_point.exit

get_rounded_edge_point.exit:                      ; preds = %bb.l, %bb.n
  %.pre-phi944 = phi i32 [ %i.m, %bb.l ], [ %.pre943, %bb.n ]
  %.0.i = phi i32 [ 0, %bb.l ], [ %i.cu, %bb.n ]
  %i.cv = load i32, ptr %i.aa, align 4, !tbaa !55 ; 2 uses
  %i.cw = load i32, ptr %i.by, align 4, !tbaa !55
  %i.cx = add i32 %.pre-phi944, %i.cw
  %i.cy = load i32, ptr %i.ab, align 4, !tbaa !56 ; 2 uses
  %.593 = call i32 @llvm.smin.i32(i32 %i.cx, i32 %i.cy)
  %spec.select752 = call i32 @llvm.smax.i32(i32 %i.cv, i32 %.593)
  %i.cz = load i32, ptr %i.bz, align 4, !tbaa !56
  %i.da = add i32 %.0.i, %i.i
  %i.db = sub i32 %i.cz, %i.da
  %.595 = call i32 @llvm.smin.i32(i32 %i.db, i32 %i.cy)
  %i.dc = call i32 @llvm.smax.i32(i32 %i.cv, i32 %.595)
  %.fr580 = freeze i32 %spec.select752            ; 2 uses
  %i.dd = srem i32 %.fr580, %.1532
  %i.de = sub nsw i32 %.fr580, %i.dd              ; 11 uses
  %.fr581 = freeze i32 %i.dc                      ; 2 uses
  %i.df = srem i32 %.fr581, %.1532
  %i.dg = sub nsw i32 %.fr581, %i.df              ; 11 uses
  %i.dh = icmp sgt i32 %i.de, %i.dg
  br i1 %i.dh, label %.loopexit760, label %bb.o

bb.o:                                             ; preds = %get_rounded_edge_point.exit
  %i.di = sub i32 %i.dg, %i.de
  %i.dj = udiv i32 %i.di, %.1532
  %i.dk = add i32 %i.dj, 1
  %.597 = call i32 @llvm.umin.i32(i32 %i.dk, i32 %i.aw)
  %i.dl = freeze i32 %.597                        ; 44 uses
  switch i8 %i.bj, label %bb.ab [
    i8 1, label %.lr.ph.i
    i8 2, label %.lr.ph.i617
  ]

.lr.ph.i:                                         ; preds = %bb.o
  %i.dm = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !52
  %i.do = call ptr @lv_draw_buf_goto_xy(ptr noundef %i.dn, i32 noundef %.0519846, i32 noundef %i.de) #5 ; 4 uses
  %4 = add nsw i32 %i.dl, -1
  %xtraiter1176 = and i32 %i.dl, 7                ; 3 uses
  %i.dp = icmp ult i32 %4, 7
  br i1 %i.dp, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter1182 = and i32 %i.dl, 2147483640
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.new
  %i.dq = phi i32 [ 0, %.lr.ph.i.new ], [ %i.ev, %bb.p ]
  %.01012.i = phi ptr [ %i.do, %.lr.ph.i.new ], [ %i.ew, %bb.p ] ; 2 uses
  %niter1183 = phi i32 [ 0, %.lr.ph.i.new ], [ %niter1183.next.7, %bb.p ]
  %i.dr = load i8, ptr %.01012.i, align 1, !tbaa !57
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add i32 %i.dq, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.01012.i, i64 %i.ch ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !57
  %i.dw = zext i8 %i.dv to i32
  %i.dx = add i32 %i.dt, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ch ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !57
  %i.ea = zext i8 %i.dz to i32
  %i.eb = add i32 %i.dx, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ch ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !57
  %i.ee = zext i8 %i.ed to i32
  %i.ef = add i32 %i.eb, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ch ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !57
  %i.ei = zext i8 %i.eh to i32
  %i.ej = add i32 %i.ef, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ch ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !57
  %i.em = zext i8 %i.el to i32
  %i.en = add i32 %i.ej, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ch ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !57
  %i.eq = zext i8 %i.ep to i32
  %i.er = add i32 %i.en, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ch ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !57
  %i.eu = zext i8 %i.et to i32
  %i.ev = add i32 %i.er, %i.eu                    ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ch ; 2 uses
  %niter1183.next.7 = add i32 %niter1183, 8       ; 2 uses
  %niter1183.ncmp.7 = icmp eq i32 %niter1183.next.7, %unroll_iter1182
  br i1 %niter1183.ncmp.7, label %.lr.ph824.preheader.unr-lcssa, label %bb.p, !llvm.loop !8

.lr.ph824.preheader.unr-lcssa:                    ; preds = %bb.p
  %lcmp.mod1179.not = icmp eq i32 %xtraiter1176, 0
  br i1 %lcmp.mod1179.not, label %.lr.ph824.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph824.preheader.unr-lcssa, %.lr.ph.i
  %.epil.init1178 = phi i32 [ 0, %.lr.ph.i ], [ %i.ev, %.lr.ph824.preheader.unr-lcssa ]
  %.01012.i.epil.init = phi ptr [ %i.do, %.lr.ph.i ], [ %i.ew, %.lr.ph824.preheader.unr-lcssa ]
  %lcmp.mod1181 = icmp ne i32 %xtraiter1176, 0
  call void @llvm.assume(i1 %lcmp.mod1181)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %i.ex = phi i32 [ %.epil.init1178, %.epil.preheader ], [ %i.fa, %bb.q ]
  %.01012.i.epil = phi ptr [ %.01012.i.epil.init, %.epil.preheader ], [ %i.fb, %bb.q ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.ey = load i8, ptr %.01012.i.epil, align 1, !tbaa !57
  %i.ez = zext i8 %i.ey to i32
  %i.fa = add i32 %i.ex, %i.ez                    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.01012.i.epil, i64 %i.ch
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1176
  br i1 %epil.iter.cmp.not, label %.lr.ph824.preheader, label %bb.q, !llvm.loop !9

.lr.ph824.preheader:                              ; preds = %bb.q, %.lr.ph824.preheader.unr-lcssa
  %.lcssa1118 = phi i32 [ %i.ev, %.lr.ph824.preheader.unr-lcssa ], [ %i.fa, %bb.q ]
  %i.fc = load i8, ptr %i.do, align 1, !tbaa !57
  %i.fd = add i8 %i.fc, 1
  %i.fe = shl i32 %.lcssa1118, 12
  %i.ff = udiv i32 %i.fe, %i.dl
  br label %.lr.ph824

.lr.ph824:                                        ; preds = %.lr.ph824.preheader, %bb.s
  %.0514823 = phi i8 [ %.1515, %bb.s ], [ %i.fd, %.lr.ph824.preheader ] ; 2 uses
  %.0518822 = phi ptr [ %i.fo, %bb.s ], [ %i.do, %.lr.ph824.preheader ] ; 3 uses
  %.0523821 = phi i32 [ %i.fp, %bb.s ], [ %i.de, %.lr.ph824.preheader ]
  %.sroa.0.0820 = phi i32 [ %.sroa.0.1, %bb.s ], [ %i.ff, %.lr.ph824.preheader ] ; 2 uses
  %i.fg = load i8, ptr %.0518822, align 1, !tbaa !57 ; 2 uses
  %.not591 = icmp eq i8 %.0514823, %i.fg
  br i1 %.not591, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph824
  %i.fh = mul i32 %.sroa.0.0820, %i.au
  %i.fi = lshr i32 %i.fh, 12
  %i.fj = zext i8 %i.fg to i32
  %i.fk = mul i32 %i.cc, %i.fj
  %i.fl = add i32 %i.fk, %i.fi                    ; 2 uses
  %i.fm = lshr i32 %i.fl, 12
  %i.fn = trunc i32 %i.fm to i8                   ; 2 uses
  store i8 %i.fn, ptr %.0518822, align 1, !tbaa !57
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph824
  %.sroa.0.1 = phi i32 [ %.sroa.0.0820, %.lr.ph824 ], [ %i.fl, %bb.r ]
  %.1515 = phi i8 [ %.0514823, %.lr.ph824 ], [ %i.fn, %bb.r ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.0518822, i64 %i.ch
  %i.fp = add nsw i32 %.0523821, %.1532           ; 2 uses
  %.not588 = icmp sgt i32 %i.fp, %i.dg
  br i1 %.not588, label %.lr.ph.i610, label %.lr.ph824, !llvm.loop !10

.lr.ph.i610:                                      ; preds = %bb.s
  %i.fq = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !52
  %i.fs = call ptr @lv_draw_buf_goto_xy(ptr noundef %i.fr, i32 noundef %.0519846, i32 noundef %i.dg) #5 ; 4 uses
  %xtraiter1185 = and i32 %i.dl, 7                ; 3 uses
  %i.ft = icmp ult i32 %i.dl, 8
  br i1 %i.ft, label %.epil.preheader1184, label %.lr.ph.i610.new

.lr.ph.i610.new:                                  ; preds = %.lr.ph.i610
  %unroll_iter1192 = and i32 %i.dl, 2147483640
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i610.new
  %i.fu = phi i32 [ 0, %.lr.ph.i610.new ], [ %i.gz, %bb.t ]
  %.01012.i612 = phi ptr [ %i.fs, %.lr.ph.i610.new ], [ %i.ha, %bb.t ] ; 2 uses
  %niter1193 = phi i32 [ 0, %.lr.ph.i610.new ], [ %niter1193.next.7, %bb.t ]
  %i.fv = load i8, ptr %.01012.i612, align 1, !tbaa !57
  %i.fw = zext i8 %i.fv to i32
  %i.fx = add i32 %i.fu, %i.fw
  %i.fy = getelementptr inbounds i8, ptr %.01012.i612, i64 %i.cj ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !57
  %i.ga = zext i8 %i.fz to i32
  %i.gb = add i32 %i.fx, %i.ga
  %i.gc = getelementptr inbounds i8, ptr %i.fy, i64 %i.cj ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !57
  %i.ge = zext i8 %i.gd to i32
  %i.gf = add i32 %i.gb, %i.ge
  %i.gg = getelementptr inbounds i8, ptr %i.gc, i64 %i.cj ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !57
  %i.gi = zext i8 %i.gh to i32
  %i.gj = add i32 %i.gf, %i.gi
  %i.gk = getelementptr inbounds i8, ptr %i.gg, i64 %i.cj ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !57
  %i.gm = zext i8 %i.gl to i32
  %i.gn = add i32 %i.gj, %i.gm
  %i.go = getelementptr inbounds i8, ptr %i.gk, i64 %i.cj ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !57
  %i.gq = zext i8 %i.gp to i32
  %i.gr = add i32 %i.gn, %i.gq
  %i.gs = getelementptr inbounds i8, ptr %i.go, i64 %i.cj ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !57
  %i.gu = zext i8 %i.gt to i32
  %i.gv = add i32 %i.gr, %i.gu
  %i.gw = getelementptr inbounds i8, ptr %i.gs, i64 %i.cj ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !57
  %i.gy = zext i8 %i.gx to i32
  %i.gz = add i32 %i.gv, %i.gy                    ; 3 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gw, i64 %i.cj ; 2 uses
  %niter1193.next.7 = add i32 %niter1193, 8       ; 2 uses
  %niter1193.ncmp.7 = icmp eq i32 %niter1193.next.7, %unroll_iter1192
  br i1 %niter1193.ncmp.7, label %.lr.ph830.preheader.unr-lcssa, label %bb.t, !llvm.loop !8

.lr.ph830.preheader.unr-lcssa:                    ; preds = %bb.t
  %lcmp.mod1189.not.a = icmp eq i32 %xtraiter1185, 0
  br i1 %lcmp.mod1189.not.a, label %.lr.ph830.preheader, label %.epil.preheader1184

.epil.preheader1184:                              ; preds = %.lr.ph830.preheader.unr-lcssa, %.lr.ph.i610
  %.epil.init1188.a = phi i32 [ 0, %.lr.ph.i610 ], [ %i.gz, %.lr.ph830.preheader.unr-lcssa ]
  %.01012.i612.epil.init = phi ptr [ %i.fs, %.lr.ph.i610 ], [ %i.ha, %.lr.ph830.preheader.unr-lcssa ]
  %lcmp.mod1191 = icmp ne i32 %xtraiter1185, 0
  call void @llvm.assume(i1 %lcmp.mod1191)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader1184
  %i.hb = phi i32 [ %.epil.init1188.a, %.epil.preheader1184 ], [ %i.he, %bb.u ]
  %.01012.i612.epil = phi ptr [ %.01012.i612.epil.init, %.epil.preheader1184 ], [ %i.hf, %bb.u ] ; 2 uses
  %epil.iter1186 = phi i32 [ 0, %.epil.preheader1184 ], [ %epil.iter1186.next, %bb.u ]
  %i.hc = load i8, ptr %.01012.i612.epil, align 1, !tbaa !57
  %i.hd = zext i8 %i.hc to i32
  %i.he = add i32 %i.hb, %i.hd                    ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %.01012.i612.epil, i64 %i.cj
  %epil.iter1186.next = add i32 %epil.iter1186, 1 ; 2 uses
  %epil.iter1186.cmp.not = icmp eq i32 %epil.iter1186.next, %xtraiter1185
  br i1 %epil.iter1186.cmp.not, label %.lr.ph830.preheader, label %bb.u, !llvm.loop !11

.lr.ph830.preheader:                              ; preds = %bb.u, %.lr.ph830.preheader.unr-lcssa
  %.lcssa1119 = phi i32 [ %i.gz, %.lr.ph830.preheader.unr-lcssa ], [ %i.he, %bb.u ]
  %i.hg = load i8, ptr %i.fs, align 1, !tbaa !57
  %i.hh = add i8 %i.hg, 1
  %i.hi = shl i32 %.lcssa1119, 12
  %i.hj = udiv i32 %i.hi, %i.dl
  br label %.lr.ph830.a

.lr.ph830.a:                                      ; preds = %.lr.ph830.preheader, %bb.w
  %.0513829 = phi ptr [ %i.hs, %bb.w ], [ %i.fs, %.lr.ph830.preheader ] ; 3 uses
  %.2516828 = phi i8 [ %.3517, %bb.w ], [ %i.hh, %.lr.ph830.preheader ] ; 2 uses
  %.1524827 = phi i32 [ %i.ht, %bb.w ], [ %i.de, %.lr.ph830.preheader ]
  %.sroa.0.2826 = phi i32 [ %.sroa.0.3, %bb.w ], [ %i.hj, %.lr.ph830.preheader ] ; 2 uses
  %i.hk = load i8, ptr %.0513829, align 1, !tbaa !57 ; 2 uses
  %.not590 = icmp eq i8 %.2516828, %i.hk
  br i1 %.not590, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph830.a
  %i.hl = mul i32 %.sroa.0.2826, %i.au
  %i.hm = lshr i32 %i.hl, 12
  %i.hn = zext i8 %i.hk to i32
  %i.ho = mul i32 %i.cc, %i.hn
  %i.hp = add i32 %i.ho, %i.hm                    ; 2 uses
  %i.hq = lshr i32 %i.hp, 12
  %i.hr = trunc i32 %i.hq to i8                   ; 2 uses
  store i8 %i.hr, ptr %.0513829, align 1, !tbaa !57
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph830.a
  %.sroa.0.3 = phi i32 [ %.sroa.0.2826, %.lr.ph830.a ], [ %i.hp, %bb.v ]
  %.3517 = phi i8 [ %.2516828, %.lr.ph830.a ], [ %i.hr, %bb.v ]
  %i.hs = getelementptr inbounds i8, ptr %.0513829, i64 %i.ck
  %i.ht = add nsw i32 %.1524827, %.1532           ; 2 uses
  %.not589 = icmp sgt i32 %i.ht, %i.dg
  br i1 %.not589, label %.loopexit760, label %.lr.ph830.a, !llvm.loop !12

.lr.ph.i617:                                      ; preds = %bb.o
  %i.hu = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !52
  %i.hw = call ptr @lv_draw_buf_goto_xy(ptr noundef %i.hv, i32 noundef %.0519846, i32 noundef %i.de) #5 ; 6 uses
  br i1 %i.bt, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i617
  %xtraiter = and i32 %i.dl, 1
  %i.hx = icmp eq i32 %i.dl, 1
  br i1 %i.hx, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i32 %i.dl, 2147483646
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i617
  %xtraiter1134 = and i32 %i.dl, 1
  %i.hy = icmp eq i32 %i.dl, 1
  br i1 %i.hy, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter1146 = and i32 %i.dl, 2147483646
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %i.hz = phi i32 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.ja, %.lr.ph.split.us.i ]
  %i.ia = phi i32 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.ix, %.lr.ph.split.us.i ]
  %i.ib = phi i32 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.it, %.lr.ph.split.us.i ]
  %.032.us.i = phi ptr [ %i.hw, %.lr.ph.split.us.i.preheader.new ], [ %i.jb, %.lr.ph.split.us.i ] ; 2 uses
  %niter1147 = phi i32 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter1147.next.1, %.lr.ph.split.us.i ]
  %i.ic = load i16, ptr %.032.us.i, align 2, !tbaa !60
  %i.id = call i16 @llvm.bswap.i16(i16 %i.ic)     ; 3 uses
  %i.ie = lshr i16 %i.id, 11
  %i.if = zext nneg i16 %i.ie to i32
  %i.ig = add i32 %i.ib, %i.if
  %i.ih = lshr i16 %i.id, 5
  %i.ii = and i16 %i.ih, 63
  %i.ij = zext nneg i16 %i.ii to i32
  %i.ik = add i32 %i.ia, %i.ij
  %i.il = and i16 %i.id, 31
  %i.im = zext nneg i16 %i.il to i32
  %i.in = add i32 %i.hz, %i.im
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %.032.us.i, i64 %i.cb ; 2 uses
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !60
  %i.iq = call i16 @llvm.bswap.i16(i16 %i.ip)     ; 3 uses
  %i.ir = lshr i16 %i.iq, 11
  %i.is = zext nneg i16 %i.ir to i32
  %i.it = add i32 %i.ig, %i.is                    ; 3 uses
  %i.iu = lshr i16 %i.iq, 5
  %i.iv = and i16 %i.iu, 63
  %i.iw = zext nneg i16 %i.iv to i32
  %i.ix = add i32 %i.ik, %i.iw                    ; 3 uses
  %i.iy = and i16 %i.iq, 31
  %i.iz = zext nneg i16 %i.iy to i32
  %i.ja = add i32 %i.in, %i.iz                    ; 3 uses
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.cb ; 2 uses
  %niter1147.next.1 = add i32 %niter1147, 2       ; 2 uses
  %niter1147.ncmp.1 = icmp eq i32 %niter1147.next.1, %unroll_iter1146
  br i1 %niter1147.ncmp.1, label %.lr.ph.preheader.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !13

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %i.jc = phi i32 [ 0, %.lr.ph.split.i.preheader.new ], [ %i.kb, %.lr.ph.split.i ]
  %i.jd = phi i32 [ 0, %.lr.ph.split.i.preheader.new ], [ %i.jy, %.lr.ph.split.i ]
  %i.je = phi i32 [ 0, %.lr.ph.split.i.preheader.new ], [ %i.ju, %.lr.ph.split.i ]
  %.032.i = phi ptr [ %i.hw, %.lr.ph.split.i.preheader.new ], [ %i.kc, %.lr.ph.split.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.i ]
  %i.jf = load i16, ptr %.032.i, align 2, !tbaa !60 ; 3 uses
  %i.jg = lshr i16 %i.jf, 11
  %i.jh = zext nneg i16 %i.jg to i32
  %i.ji = add i32 %i.je, %i.jh
  %i.jj = lshr i16 %i.jf, 5
  %i.jk = and i16 %i.jj, 63
  %i.jl = zext nneg i16 %i.jk to i32
  %i.jm = add i32 %i.jd, %i.jl
  %i.jn = and i16 %i.jf, 31
  %i.jo = zext nneg i16 %i.jn to i32
  %i.jp = add i32 %i.jc, %i.jo
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %.032.i, i64 %i.cb ; 2 uses
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !60 ; 3 uses
  %i.js = lshr i16 %i.jr, 11
  %i.jt = zext nneg i16 %i.js to i32
  %i.ju = add i32 %i.ji, %i.jt                    ; 3 uses
  %i.jv = lshr i16 %i.jr, 5
  %i.jw = and i16 %i.jv, 63
  %i.jx = zext nneg i16 %i.jw to i32
  %i.jy = add i32 %i.jm, %i.jx                    ; 3 uses
  %i.jz = and i16 %i.jr, 31
  %i.ka = zext nneg i16 %i.jz to i32
  %i.kb = add i32 %i.jp, %i.ka                    ; 3 uses
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.cb ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.loopexit1105.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !13

.lr.ph.preheader.loopexit.unr-lcssa:              ; preds = %.lr.ph.split.us.i
  %lcmp.mod1141.not = icmp eq i32 %xtraiter1134, 0
  br i1 %lcmp.mod1141.not, label %.lr.ph.preheader, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %.lr.ph.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %.epil.init1136 = phi i32 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.ja, %.lr.ph.preheader.loopexit.unr-lcssa ]
  %.epil.init1138 = phi i32 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.ix, %.lr.ph.preheader.loopexit.unr-lcssa ]
  %.epil.init1140 = phi i32 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.it, %.lr.ph.preheader.loopexit.unr-lcssa ]
  %.032.us.i.epil.init = phi ptr [ %i.hw, %.lr.ph.split.us.i.preheader ], [ %i.jb, %.lr.ph.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1145 = trunc i32 %i.dl to i1
  call void @llvm.assume(i1 %lcmp.mod1145)
  %i.kd = load i16, ptr %.032.us.i.epil.init, align 2, !tbaa !60
  %i.ke = call i16 @llvm.bswap.i16(i16 %i.kd)     ; 3 uses
  %i.kf = lshr i16 %i.ke, 11
  %i.kg = zext nneg i16 %i.kf to i32
  %i.kh = add i32 %.epil.init1140, %i.kg
  %i.ki = lshr i16 %i.ke, 5
  %i.kj = and i16 %i.ki, 63
  %i.kk = zext nneg i16 %i.kj to i32
  %i.kl = add i32 %.epil.init1138, %i.kk
  %i.km = and i16 %i.ke, 31
  %i.kn = zext nneg i16 %i.km to i32
  %i.ko = add i32 %.epil.init1136, %i.kn
  br label %.lr.ph.preheader

.lr.ph.preheader.loopexit1105.unr-lcssa:          ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %.lr.ph.preheader.loopexit1105.unr-lcssa, %.lr.ph.split.i.preheader
  %.epil.init = phi i32 [ 0, %.lr.ph.split.i.preheader ], [ %i.kb, %.lr.ph.preheader.loopexit1105.unr-lcssa ]
  %.epil.init1127 = phi i32 [ 0, %.lr.ph.split.i.preheader ], [ %i.jy, %.lr.ph.preheader.loopexit1105.unr-lcssa ]
  %.epil.init1129 = phi i32 [ 0, %.lr.ph.split.i.preheader ], [ %i.ju, %.lr.ph.preheader.loopexit1105.unr-lcssa ]
  %.032.i.epil.init = phi ptr [ %i.hw, %.lr.ph.split.i.preheader ], [ %i.kc, %.lr.ph.preheader.loopexit1105.unr-lcssa ]
  %lcmp.mod1133 = trunc i32 %i.dl to i1
  call void @llvm.assume(i1 %lcmp.mod1133)
  %i.kp = load i16, ptr %.032.i.epil.init, align 2, !tbaa !60 ; 3 uses
  %i.kq = lshr i16 %i.kp, 11
  %i.kr = zext nneg i16 %i.kq to i32
  %i.ks = add i32 %.epil.init1129, %i.kr
  %i.kt = lshr i16 %i.kp, 5
  %i.ku = and i16 %i.kt, 63
  %i.kv = zext nneg i16 %i.ku to i32
  %i.kw = add i32 %.epil.init1127, %i.kv
  %i.kx = and i16 %i.kp, 31
  %i.ky = zext nneg i16 %i.kx to i32
  %i.kz = add i32 %.epil.init, %i.ky
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.split.i.epil.preheader, %.lr.ph.preheader.loopexit1105.unr-lcssa, %.lr.ph.split.us.i.epil.preheader, %.lr.ph.preheader.loopexit.unr-lcssa
  %.us-phi.i = phi i32 [ %i.ko, %.lr.ph.split.us.i.epil.preheader ], [ %i.ja, %.lr.ph.preheader.loopexit.unr-lcssa ], [ %i.kb, %.lr.ph.preheader.loopexit1105.unr-lcssa ], [ %i.kz, %.lr.ph.split.i.epil.preheader ]
  %.us-phi37.i = phi i32 [ %i.kl, %.lr.ph.split.us.i.epil.preheader ], [ %i.ix, %.lr.ph.preheader.loopexit.unr-lcssa ], [ %i.jy, %.lr.ph.preheader.loopexit1105.unr-lcssa ], [ %i.kw, %.lr.ph.split.i.epil.preheader ]
  %.us-phi38.i = phi i32 [ %i.kh, %.lr.ph.split.us.i.epil.preheader ], [ %i.it, %.lr.ph.preheader.loopexit.unr-lcssa ], [ %i.ju, %.lr.ph.preheader.loopexit1105.unr-lcssa ], [ %i.ks, %.lr.ph.split.i.epil.preheader ]
  %i.la = load i16, ptr %i.hw, align 2, !tbaa !60
  %i.lb = add i16 %i.la, 1
  %i.lc = shl i32 %.us-phi.i, 12
  %i.ld = udiv i32 %i.lc, %i.dl
  %i.le = shl i32 %.us-phi37.i, 12
  %i.lf = udiv i32 %i.le, %i.dl
  %i.lg = shl i32 %.us-phi38.i, 12
  %i.lh = udiv i32 %i.lg, %i.dl
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %.0508810 = phi i16 [ %.1509, %bb.y ], [ %i.lb, %.lr.ph.preheader ] ; 2 uses
  %.0512809 = phi ptr [ %i.mp, %bb.y ], [ %i.hw, %.lr.ph.preheader ] ; 3 uses
  %.2525808 = phi i32 [ %i.mq, %bb.y ], [ %i.de, %.lr.ph.preheader ]
  %.sroa.0.4807 = phi i32 [ %.sroa.0.5, %bb.y ], [ %i.lh, %.lr.ph.preheader ] ; 2 uses
  %.sroa.54.0806 = phi i32 [ %.sroa.54.1, %bb.y ], [ %i.lf, %.lr.ph.preheader ] ; 2 uses
  %.sroa.86.0805 = phi i32 [ %.sroa.86.1, %bb.y ], [ %i.ld, %.lr.ph.preheader ] ; 2 uses
  %i.li = load i16, ptr %.0512809, align 2, !tbaa !60 ; 3 uses
  %.not587 = icmp eq i16 %.0508810, %i.li
  br i1 %.not587, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.lj = call i16 @llvm.bswap.i16(i16 %i.li)
  %spec.select.i = select i1 %i.bt, i16 %i.lj, i16 %i.li
  %i.lk = zext i16 %spec.select.i to i32          ; 3 uses
  %i.ll = lshr i32 %i.lk, 11
  %i.lm = lshr i32 %i.lk, 5
  %i.ln = and i32 %i.lm, 63
  %i.lo = and i32 %i.lk, 31
  %i.lp = mul i32 %.sroa.0.4807, %i.au
  %i.lq = lshr i32 %i.lp, 12
  %i.lr = mul i32 %i.ll, %i.cc
  %i.ls = add i32 %i.lr, %i.lq                    ; 2 uses
  %i.lt = mul i32 %.sroa.54.0806, %i.au
  %i.lu = lshr i32 %i.lt, 12
  %i.lv = mul i32 %i.ln, %i.cc
  %i.lw = add i32 %i.lv, %i.lu                    ; 2 uses
  %i.lx = mul i32 %.sroa.86.0805, %i.au
  %i.ly = lshr i32 %i.lx, 12
  %i.lz = mul i32 %i.lo, %i.cc
  %i.ma = add i32 %i.lz, %i.ly                    ; 2 uses
  %i.mb = add i32 %i.ls, 2048
  %i.mc = add i32 %i.lw, 2048
  %i.md = add i32 %i.ma, 2048
  %i.me = lshr i32 %i.md, 12
  %i.mf = lshr i32 %i.mb, 1
  %i.mg = and i32 %i.mf, 63488
  %i.mh = lshr i32 %i.mc, 7
  %i.mi = and i32 %i.mh, 65504
  %i.mj = or i32 %i.mg, %i.me
  %i.mk = or i32 %i.mj, %i.mi                     ; 2 uses
  %i.ml = and i32 %i.mk, 65535                    ; 2 uses
  %i.mm = lshr i32 %i.ml, 8
  %i.mn = shl nuw nsw i32 %i.ml, 8
  %i.mo = or disjoint i32 %i.mm, %i.mn
  %.0.in.i = select i1 %i.bt, i32 %i.mo, i32 %i.mk
  %.0.i619 = trunc i32 %.0.in.i to i16            ; 2 uses
  store i16 %.0.i619, ptr %.0512809, align 2, !tbaa !60
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph
  %.sroa.86.1 = phi i32 [ %.sroa.86.0805, %.lr.ph ], [ %i.ma, %bb.x ]
  %.sroa.54.1 = phi i32 [ %.sroa.54.0806, %.lr.ph ], [ %i.lw, %bb.x ]
  %.sroa.0.5 = phi i32 [ %.sroa.0.4807, %.lr.ph ], [ %i.ls, %bb.x ]
  %.1509 = phi i16 [ %.0508810, %.lr.ph ], [ %.0.i619, %bb.x ]
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.0512809, i64 %i.cb
  %i.mq = add nsw i32 %.2525808, %.1532           ; 2 uses
  %.not584 = icmp sgt i32 %i.mq, %i.dg
  br i1 %.not584, label %.lr.ph.i621, label %.lr.ph, !llvm.loop !14

.lr.ph.i621:                                      ; preds = %bb.y
  %i.mr = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !52
  %i.mt = call ptr @lv_draw_buf_goto_xy(ptr noundef %i.ms, i32 noundef %.0519846, i32 noundef %i.dg) #5 ; 6 uses
  br i1 %i.bt, label %.lr.ph.split.us.i630.preheader, label %.lr.ph.split.i622.preheader

.lr.ph.split.i622.preheader:                      ; preds = %.lr.ph.i621
  %xtraiter1148 = and i32 %i.dl, 1
  %i.mu = icmp eq i32 %i.dl, 1
  br i1 %i.mu, label %.lr.ph.split.i622.epil.preheader, label %.lr.ph.split.i622.preheader.new

.lr.ph.split.i622.preheader.new:                  ; preds = %.lr.ph.split.i622.preheader
  %unroll_iter1160 = and i32 %i.dl, 2147483646
  br label %.lr.ph.split.i622

.lr.ph.split.us.i630.preheader:                   ; preds = %.lr.ph.i621
  %xtraiter1162 = and i32 %i.dl, 1
  %i.mv = icmp eq i32 %i.dl, 1
  br i1 %i.mv, label %.lr.ph.split.us.i630.epil.preheader, label %.lr.ph.split.us.i630.preheader.new

.lr.ph.split.us.i630.preheader.new:               ; preds = %.lr.ph.split.us.i630.preheader
  %unroll_iter1174 = and i32 %i.dl, 2147483646
  br label %.lr.ph.split.us.i630

.lr.ph.split.us.i630:                             ; preds = %.lr.ph.split.us.i630, %.lr.ph.split.us.i630.preheader.new
  %i.mw = phi i32 [ 0, %.lr.ph.split.us.i630.preheader.new ], [ %i.nx, %.lr.ph.split.us.i630 ]
  %i.mx = phi i32 [ 0, %.lr.ph.split.us.i630.preheader.new ], [ %i.nu, %.lr.ph.split.us.i630 ]
  %i.my = phi i32 [ 0, %.lr.ph.split.us.i630.preheader.new ], [ %i.nq, %.lr.ph.split.us.i630 ]
  %.032.us.i631 = phi ptr [ %i.mt, %.lr.ph.split.us.i630.preheader.new ], [ %i.ny, %.lr.ph.split.us.i630 ] ; 2 uses
  %niter1175 = phi i32 [ 0, %.lr.ph.split.us.i630.preheader.new ], [ %niter1175.next.1, %.lr.ph.split.us.i630 ]
  %i.mz = load i16, ptr %.032.us.i631, align 2, !tbaa !60
  %i.na = call i16 @llvm.bswap.i16(i16 %i.mz)     ; 3 uses
  %i.nb = lshr i16 %i.na, 11
  %i.nc = zext nneg i16 %i.nb to i32
  %i.nd = add i32 %i.my, %i.nc
  %i.ne = lshr i16 %i.na, 5
  %i.nf = and i16 %i.ne, 63
  %i.ng = zext nneg i16 %i.nf to i32
  %i.nh = add i32 %i.mx, %i.ng
  %i.ni = and i16 %i.na, 31
  %i.nj = zext nneg i16 %i.ni to i32
  %i.nk = add i32 %i.mw, %i.nj
  %i.nl = getelementptr inbounds [2 x i8], ptr %.032.us.i631, i64 %i.ce ; 2 uses
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !60
  %i.nn = call i16 @llvm.bswap.i16(i16 %i.nm)     ; 3 uses
  %i.no = lshr i16 %i.nn, 11
  %i.np = zext nneg i16 %i.no to i32
  %i.nq = add i32 %i.nd, %i.np                    ; 3 uses
  %i.nr = lshr i16 %i.nn, 5
  %i.ns = and i16 %i.nr, 63
  %i.nt = zext nneg i16 %i.ns to i32
  %i.nu = add i32 %i.nh, %i.nt                    ; 3 uses
  %i.nv = and i16 %i.nn, 31
  %i.nw = zext nneg i16 %i.nv to i32
  %i.nx = add i32 %i.nk, %i.nw                    ; 3 uses
  %i.ny = getelementptr inbounds [2 x i8], ptr %i.nl, i64 %i.ce ; 2 uses
  %niter1175.next.1 = add i32 %niter1175, 2       ; 2 uses
  %niter1175.ncmp.1 = icmp eq i32 %niter1175.next.1, %unroll_iter1174
  br i1 %niter1175.ncmp.1, label %.lr.ph818.preheader.loopexit.unr-lcssa, label %.lr.ph.split.us.i630, !llvm.loop !13

.lr.ph.split.i622:                                ; preds = %.lr.ph.split.i622, %.lr.ph.split.i622.preheader.new
  %i.nz = phi i32 [ 0, %.lr.ph.split.i622.preheader.new ], [ %i.oy, %.lr.ph.split.i622 ]
  %i.oa = phi i32 [ 0, %.lr.ph.split.i622.preheader.new ], [ %i.ov, %.lr.ph.split.i622 ]
  %i.ob = phi i32 [ 0, %.lr.ph.split.i622.preheader.new ], [ %i.or, %.lr.ph.split.i622 ]
  %.032.i623 = phi ptr [ %i.mt, %.lr.ph.split.i622.preheader.new ], [ %i.oz, %.lr.ph.split.i622 ] ; 2 uses
  %niter1161 = phi i32 [ 0, %.lr.ph.split.i622.preheader.new ], [ %niter1161.next.1, %.lr.ph.split.i622 ]
  %i.oc = load i16, ptr %.032.i623, align 2, !tbaa !60 ; 3 uses
  %i.od = lshr i16 %i.oc, 11
  %i.oe = zext nneg i16 %i.od to i32
  %i.of = add i32 %i.ob, %i.oe
  %i.og = lshr i16 %i.oc, 5
  %i.oh = and i16 %i.og, 63
  %i.oi = zext nneg i16 %i.oh to i32
  %i.oj = add i32 %i.oa, %i.oi
  %i.ok = and i16 %i.oc, 31
  %i.ol = zext nneg i16 %i.ok to i32
  %i.om = add i32 %i.nz, %i.ol
  %i.on = getelementptr inbounds [2 x i8], ptr %.032.i623, i64 %i.ce ; 2 uses
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !60 ; 3 uses
  %i.op = lshr i16 %i.oo, 11
  %i.oq = zext nneg i16 %i.op to i32
  %i.or = add i32 %i.of, %i.oq                    ; 3 uses
  %i.os = lshr i16 %i.oo, 5
  %i.ot = and i16 %i.os, 63
  %i.ou = zext nneg i16 %i.ot to i32
  %i.ov = add i32 %i.oj, %i.ou                    ; 3 uses
  %i.ow = and i16 %i.oo, 31
  %i.ox = zext nneg i16 %i.ow to i32
  %i.oy = add i32 %i.om, %i.ox                    ; 3 uses
  %i.oz = getelementptr inbounds [2 x i8], ptr %i.on, i64 %i.ce ; 2 uses
  %niter1161.next.1 = add i32 %niter1161, 2       ; 2 uses
  %niter1161.ncmp.1 = icmp eq i32 %niter1161.next.1, %unroll_iter1160
  br i1 %niter1161.ncmp.1, label %.lr.ph818.preheader.loopexit1104.unr-lcssa, label %.lr.ph.split.i622, !llvm.loop !13

.lr.ph818.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph.split.us.i630
  %lcmp.mod1169.not = icmp eq i32 %xtraiter1162, 0
  br i1 %lcmp.mod1169.not, label %.lr.ph818.preheader, label %.lr.ph.split.us.i630.epil.preheader

.lr.ph.split.us.i630.epil.preheader:              ; preds = %.lr.ph818.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.i630.preheader
  %.epil.init1164 = phi i32 [ 0, %.lr.ph.split.us.i630.preheader ], [ %i.nx, %.lr.ph818.preheader.loopexit.unr-lcssa ]
  %.epil.init1166 = phi i32 [ 0, %.lr.ph.split.us.i630.preheader ], [ %i.nu, %.lr.ph818.preheader.loopexit.unr-lcssa ]
  %.epil.init1168.a = phi i32 [ 0, %.lr.ph.split.us.i630.preheader ], [ %i.nq, %.lr.ph818.preheader.loopexit.unr-lcssa ]
  %.032.us.i631.epil.init = phi ptr [ %i.mt, %.lr.ph.split.us.i630.preheader ], [ %i.ny, %.lr.ph818.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1173 = trunc i32 %i.dl to i1
  call void @llvm.assume(i1 %lcmp.mod1173)
  %i.pa = load i16, ptr %.032.us.i631.epil.init, align 2, !tbaa !60
  %i.pb = call i16 @llvm.bswap.i16(i16 %i.pa)     ; 3 uses
  %i.pc = lshr i16 %i.pb, 11
  %i.pd = zext nneg i16 %i.pc to i32
  %i.pe = add i32 %.epil.init1168.a, %i.pd
  %i.pf = lshr i16 %i.pb, 5
  %i.pg = and i16 %i.pf, 63
  %i.ph = zext nneg i16 %i.pg to i32
  %i.pi = add i32 %.epil.init1166, %i.ph
  %i.pj = and i16 %i.pb, 31
  %i.pk = zext nneg i16 %i.pj to i32
  %i.pl = add i32 %.epil.init1164, %i.pk
  br label %.lr.ph818.preheader

.lr.ph818.preheader.loopexit1104.unr-lcssa:       ; preds = %.lr.ph.split.i622
  %lcmp.mod1155.not = icmp eq i32 %xtraiter1148, 0
  br i1 %lcmp.mod1155.not, label %.lr.ph818.preheader, label %.lr.ph.split.i622.epil.preheader

.lr.ph.split.i622.epil.preheader:                 ; preds = %.lr.ph818.preheader.loopexit1104.unr-lcssa, %.lr.ph.split.i622.preheader
  %.epil.init1150 = phi i32 [ 0, %.lr.ph.split.i622.preheader ], [ %i.oy, %.lr.ph818.preheader.loopexit1104.unr-lcssa ]
  %.epil.init1152 = phi i32 [ 0, %.lr.ph.split.i622.preheader ], [ %i.ov, %.lr.ph818.preheader.loopexit1104.unr-lcssa ]
  %.epil.init1154 = phi i32 [ 0, %.lr.ph.split.i622.preheader ], [ %i.or, %.lr.ph818.preheader.loopexit1104.unr-lcssa ]
  %.032.i623.epil.init = phi ptr [ %i.mt, %.lr.ph.split.i622.preheader ], [ %i.oz, %.lr.ph818.preheader.loopexit1104.unr-lcssa ]
  %lcmp.mod1159 = trunc i32 %i.dl to i1
  call void @llvm.assume(i1 %lcmp.mod1159)
  %i.pm = load i16, ptr %.032.i623.epil.init, align 2, !tbaa !60 ; 3 uses
  %i.pn = lshr i16 %i.pm, 11
  %i.po = zext nneg i16 %i.pn to i32
  %i.pp = add i32 %.epil.init1154, %i.po
  %i.pq = lshr i16 %i.pm, 5
  %i.pr = and i16 %i.pq, 63
  %i.ps = zext nneg i16 %i.pr to i32
  %i.pt = add i32 %.epil.init1152, %i.ps
  %i.pu = and i16 %i.pm, 31
  %i.pv = zext nneg i16 %i.pu to i32
  %i.pw = add i32 %.epil.init1150, %i.pv
  br label %.lr.ph818.preheader

.lr.ph818.preheader:                              ; preds = %.lr.ph.split.i622.epil.preheader, %.lr.ph818.preheader.loopexit1104.unr-lcssa, %.lr.ph.split.us.i630.epil.preheader, %.lr.ph818.preheader.loopexit.unr-lcssa
  %.us-phi.i627 = phi i32 [ %i.pl, %.lr.ph.split.us.i630.epil.preheader ], [ %i.nx, %.lr.ph818.preheader.loopexit.unr-lcssa ], [ %i.oy, %.lr.ph818.preheader.loopexit1104.unr-lcssa ], [ %i.pw, %.lr.ph.split.i622.epil.preheader ]
  %.us-phi37.i628 = phi i32 [ %i.pi, %.lr.ph.split.us.i630.epil.preheader ], [ %i.nu, %.lr.ph818.preheader.loopexit.unr-lcssa ], [ %i.ov, %.lr.ph818.preheader.loopexit1104.unr-lcssa ], [ %i.pt, %.lr.ph.split.i622.epil.preheader ]
  %.us-phi38.i629 = phi i32 [ %i.pe, %.lr.ph.split.us.i630.epil.preheader ], [ %i.nq, %.lr.ph818.preheader.loopexit.unr-lcssa ], [ %i.or, %.lr.ph818.preheader.loopexit1104.unr-lcssa ], [ %i.pp, %.lr.ph.split.i622.epil.preheader ]
  %i.px = load i16, ptr %i.mt, align 2, !tbaa !60
  %i.py = add i16 %i.px, 1
  %i.pz = shl i32 %.us-phi.i627, 12
  %i.qa = udiv i32 %i.pz, %i.dl
  %i.qb = shl i32 %.us-phi37.i628, 12
  %i.qc = udiv i32 %i.qb, %i.dl
  %i.qd = shl i32 %.us-phi38.i629, 12
  %i.qe = udiv i32 %i.qd, %i.dl
  br label %.lr.ph818

.lr.ph818:                                        ; preds = %.lr.ph818.preheader, %bb.aa
  %.0507817 = phi ptr [ %i.rm, %bb.aa ], [ %i.mt, %.lr.ph818.preheader ] ; 3 uses
  %.2510816 = phi i16 [ %.3511, %bb.aa ], [ %i.py, %.lr.ph818.preheader ] ; 2 uses
  %.3526815 = phi i32 [ %i.rn, %bb.aa ], [ %i.de, %.lr.ph818.preheader ]
  %.sroa.0.6814 = phi i32 [ %.sroa.0.7, %bb.aa ], [ %i.qe, %.lr.ph818.preheader ] ; 2 uses
  %.sroa.54.2813 = phi i32 [ %.sroa.54.3, %bb.aa ], [ %i.qc, %.lr.ph818.preheader ] ; 2 uses
  %.sroa.86.2812 = phi i32 [ %.sroa.86.3, %bb.aa ], [ %i.qa, %.lr.ph818.preheader ] ; 2 uses
  %i.qf = load i16, ptr %.0507817, align 2, !tbaa !60 ; 3 uses
  %.not586 = icmp eq i16 %.2510816, %i.qf
  br i1 %.not586, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph818
  %i.qg = call i16 @llvm.bswap.i16(i16 %i.qf)
  %spec.select.i635 = select i1 %i.bt, i16 %i.qg, i16 %i.qf
  %i.qh = zext i16 %spec.select.i635 to i32       ; 3 uses
  %i.qi = lshr i32 %i.qh, 11
  %i.qj = lshr i32 %i.qh, 5
  %i.qk = and i32 %i.qj, 63
  %i.ql = and i32 %i.qh, 31
  %i.qm = mul i32 %.sroa.0.6814, %i.au
  %i.qn = lshr i32 %i.qm, 12
  %i.qo = mul i32 %i.qi, %i.cc
  %i.qp = add i32 %i.qo, %i.qn                    ; 2 uses
  %i.qq = mul i32 %.sroa.54.2813, %i.au
  %i.qr = lshr i32 %i.qq, 12
  %i.qs = mul i32 %i.qk, %i.cc
  %i.qt = add i32 %i.qs, %i.qr                    ; 2 uses
  %i.qu = mul i32 %.sroa.86.2812, %i.au
  %i.qv = lshr i32 %i.qu, 12
  %i.qw = mul i32 %i.ql, %i.cc
  %i.qx = add i32 %i.qw, %i.qv                    ; 2 uses
  %i.qy = add i32 %i.qp, 2048
  %i.qz = add i32 %i.qt, 2048
  %i.ra = add i32 %i.qx, 2048
  %i.rb = lshr i32 %i.ra, 12
  %i.rc = lshr i32 %i.qy, 1
  %i.rd = and i32 %i.rc, 63488
  %i.re = lshr i32 %i.qz, 7
  %i.rf = and i32 %i.re, 65504
  %i.rg = or i32 %i.rd, %i.rb
  %i.rh = or i32 %i.rg, %i.rf                     ; 2 uses
  %i.ri = and i32 %i.rh, 65535                    ; 2 uses
  %i.rj = lshr i32 %i.ri, 8
  %i.rk = shl nuw nsw i32 %i.ri, 8
  %i.rl = or disjoint i32 %i.rj, %i.rk
  %.0.in.i636 = select i1 %i.bt, i32 %i.rl, i32 %i.rh
  %.0.i637 = trunc i32 %.0.in.i636 to i16         ; 2 uses
  store i16 %.0.i637, ptr %.0507817, align 2, !tbaa !60
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph818
  %.sroa.86.3 = phi i32 [ %.sroa.86.2812, %.lr.ph818 ], [ %i.qx, %bb.z ]
  %.sroa.54.3 = phi i32 [ %.sroa.54.2813, %.lr.ph818 ], [ %i.qt, %bb.z ]
  %.sroa.0.7 = phi i32 [ %.sroa.0.6814, %.lr.ph818 ], [ %i.qp, %bb.z ]
  %.3511 = phi i16 [ %.2510816, %.lr.ph818 ], [ %.0.i637, %bb.z ]
  %i.rm = getelementptr inbounds [2 x i8], ptr %.0507817, i64 %i.cf
  %i.rn = add nsw i32 %.3526815, %.1532           ; 2 uses
  %.not585 = icmp sgt i32 %i.rn, %i.dg
  br i1 %.not585, label %.loopexit760, label %.lr.ph818, !llvm.loop !15

bb.ab:                                            ; preds = %bb.o
  br i1 %i.cl, label %.lr.ph.i639, label %.loopexit760

.lr.ph.i639:                                      ; preds = %bb.ab
  %i.ro = load ptr, ptr %i.d, align 8, !tbaa !42
end_hunk_0
begin_hunk_1_@lv_draw_sw_blur:bb.a
  %i.ur = phi i32 [ 0, %.lr.ph.i644.new ], [ %i.vl, %bb.ad ]
  %i.us = phi i32 [ 0, %.lr.ph.i644.new ], [ %i.vh, %bb.ad ]
  %.02224.i646 = phi ptr [ %i.uo, %.lr.ph.i644.new ], [ %i.vq, %bb.ad ] ; 4 uses
  %niter1225.a = phi i32 [ 0, %.lr.ph.i644.new ], [ %niter1225.next.1.a, %bb.ad ]
  %i.ut = load volatile i8, ptr %.02224.i646, align 1, !tbaa !57
  %i.uu = zext i8 %i.ut to i32
  %i.uv = add i32 %i.us, %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %.02224.i646, i64 1
  %i.ux = load volatile i8, ptr %i.uw, align 1, !tbaa !57
  %i.uy = zext i8 %i.ux to i32
  %i.uz = add i32 %i.ur, %i.uy
  %i.va = getelementptr inbounds nuw i8, ptr %.02224.i646, i64 2
  %i.vb = load volatile i8, ptr %i.va, align 1, !tbaa !57
  %i.vc = zext i8 %i.vb to i32
  %i.vd = add i32 %i.uq, %i.vc
  %i.ve = getelementptr inbounds i8, ptr %.02224.i646, i64 %i.cj ; 4 uses
  %i.vf = load volatile i8, ptr %i.ve, align 1, !tbaa !57
  %i.vg = zext i8 %i.vf to i32
  %i.vh = add i32 %i.uv, %i.vg                    ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ve, i64 1
  %i.vj = load volatile i8, ptr %i.vi, align 1, !tbaa !57
  %i.vk = zext i8 %i.vj to i32
  %i.vl = add i32 %i.uz, %i.vk                    ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ve, i64 2
  %i.vn = load volatile i8, ptr %i.vm, align 1, !tbaa !57
  %i.vo = zext i8 %i.vn to i32
  %i.vp = add i32 %i.vd, %i.vo                    ; 3 uses
  %i.vq = getelementptr inbounds i8, ptr %i.ve, i64 %i.cj ; 2 uses
  %niter1225.next.1.a = add i32 %niter1225.a, 2   ; 2 uses
  %niter1225.ncmp.1.a = icmp eq i32 %niter1225.next.1.a, %unroll_iter1224.a
  br i1 %niter1225.ncmp.1.a, label %.lr.ph844.preheader.unr-lcssa, label %bb.ad, !llvm.loop !16

.lr.ph844.preheader.unr-lcssa:                    ; preds = %bb.ad
  %lcmp.mod1219.not.a = icmp eq i32 %xtraiter1211.a, 0
  br i1 %lcmp.mod1219.not.a, label %.lr.ph844.preheader, label %.epil.preheader1210

.epil.preheader1210:                              ; preds = %.lr.ph844.preheader.unr-lcssa, %.lr.ph.i644
  %.epil.init1214.a = phi i32 [ 0, %.lr.ph.i644 ], [ %i.vp, %.lr.ph844.preheader.unr-lcssa ]
  %.epil.init1216.a = phi i32 [ 0, %.lr.ph.i644 ], [ %i.vl, %.lr.ph844.preheader.unr-lcssa ]
  %.epil.init1218.a = phi i32 [ 0, %.lr.ph.i644 ], [ %i.vh, %.lr.ph844.preheader.unr-lcssa ]
  %.02224.i646.epil.init = phi ptr [ %i.uo, %.lr.ph.i644 ], [ %i.vq, %.lr.ph844.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod1223.a = trunc i32 %i.dl to i1
  call void @llvm.assume(i1 %lcmp.mod1223.a)
  %i.vr = load volatile i8, ptr %.02224.i646.epil.init, align 1, !tbaa !57
  %i.vs = zext i8 %i.vr to i32
  %i.vt = add i32 %.epil.init1218.a, %i.vs
  %i.vu = getelementptr inbounds nuw i8, ptr %.02224.i646.epil.init, i64 1
  %i.vv = load volatile i8, ptr %i.vu, align 1, !tbaa !57
  %i.vw = zext i8 %i.vv to i32
  %i.vx = add i32 %.epil.init1216.a, %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %.02224.i646.epil.init, i64 2
  %i.vz = load volatile i8, ptr %i.vy, align 1, !tbaa !57
  %i.wa = zext i8 %i.vz to i32
  %i.wb = add i32 %.epil.init1214.a, %i.wa
  br label %.lr.ph844.preheader

.lr.ph844.preheader:                              ; preds = %.lr.ph844.preheader.unr-lcssa, %.epil.preheader1210
  %.lcssa1125 = phi i32 [ %i.vh, %.lr.ph844.preheader.unr-lcssa ], [ %i.vt, %.epil.preheader1210 ]
  %.lcssa1124 = phi i32 [ %i.vl, %.lr.ph844.preheader.unr-lcssa ], [ %i.vx, %.epil.preheader1210 ]
  %.lcssa1123 = phi i32 [ %i.vp, %.lr.ph844.preheader.unr-lcssa ], [ %i.wb, %.epil.preheader1210 ]
  %i.wc = shl i32 %.lcssa1123, 12
  %i.wd = udiv i32 %i.wc, %i.dl
  %i.we = shl i32 %.lcssa1124, 12
  %i.wf = udiv i32 %i.we, %i.dl
  %i.wg = shl i32 %.lcssa1125, 12
  %i.wh = udiv i32 %i.wg, %i.dl
  br label %.lr.ph844.a

.lr.ph844.a:                                      ; preds = %.lr.ph844.preheader, %.lr.ph844.a
  %.0505843 = phi ptr [ %i.xi, %.lr.ph844.a ], [ %i.uo, %.lr.ph844.preheader ] ; 5 uses
  %.5528842 = phi i32 [ %i.xj, %.lr.ph844.a ], [ %i.de, %.lr.ph844.preheader ]
  %.sroa.0.9841 = phi i32 [ %i.wn, %.lr.ph844.a ], [ %i.wh, %.lr.ph844.preheader ]
  %.sroa.54.5840 = phi i32 [ %i.ww, %.lr.ph844.a ], [ %i.wf, %.lr.ph844.preheader ]
  %.sroa.86.5839 = phi i32 [ %i.xf, %.lr.ph844.a ], [ %i.wd, %.lr.ph844.preheader ]
  %i.wi = mul i32 %.sroa.0.9841, %i.au
  %i.wj = lshr i32 %i.wi, 12
  %i.wk = load volatile i8, ptr %.0505843, align 1, !tbaa !57
  %i.wl = zext i8 %i.wk to i32
  %i.wm = mul i32 %i.cc, %i.wl
  %i.wn = add i32 %i.wm, %i.wj                    ; 2 uses
  %i.wo = lshr i32 %i.wn, 12
  %i.wp = trunc i32 %i.wo to i8
  store volatile i8 %i.wp, ptr %.0505843, align 1, !tbaa !57
  %i.wq = mul i32 %.sroa.54.5840, %i.au
  %i.wr = lshr i32 %i.wq, 12
  %i.ws = getelementptr inbounds nuw i8, ptr %.0505843, i64 1 ; 2 uses
  %i.wt = load volatile i8, ptr %i.ws, align 1, !tbaa !57
  %i.wu = zext i8 %i.wt to i32
  %i.wv = mul i32 %i.cc, %i.wu
  %i.ww = add i32 %i.wv, %i.wr                    ; 2 uses
  %i.wx = lshr i32 %i.ww, 12
  %i.wy = trunc i32 %i.wx to i8
  store volatile i8 %i.wy, ptr %i.ws, align 1, !tbaa !57
  %i.wz = mul i32 %.sroa.86.5839, %i.au
  %i.xa = lshr i32 %i.wz, 12
  %i.xb = getelementptr inbounds nuw i8, ptr %.0505843, i64 2 ; 2 uses
  %i.xc = load volatile i8, ptr %i.xb, align 1, !tbaa !57
  %i.xd = zext i8 %i.xc to i32
  %i.xe = mul i32 %i.cc, %i.xd
  %i.xf = add i32 %i.xe, %i.xa                    ; 2 uses
  %i.xg = lshr i32 %i.xf, 12
  %i.xh = trunc i32 %i.xg to i8
  store volatile i8 %i.xh, ptr %i.xb, align 1, !tbaa !57
  %i.xi = getelementptr inbounds i8, ptr %.0505843, i64 %i.ck
  %i.xj = add nsw i32 %.5528842, %.1532           ; 2 uses
  %.not583 = icmp sgt i32 %i.xj, %i.dg
  br i1 %.not583, label %.loopexit760, label %.lr.ph844.a, !llvm.loop !18

.loopexit760:                                     ; preds = %bb.aa, %bb.w, %.lr.ph844.a, %bb.ab, %get_rounded_edge_point.exit
  %i.xk = add nsw i32 %.0519846, %.1532           ; 2 uses
  %i.xl = load i32, ptr %i.z, align 8, !tbaa !54
  %.not = icmp sgt i32 %i.xk, %i.xl
  br i1 %.not, label %._crit_edge, label %bb.j, !llvm.loop !19

._crit_edge:                                      ; preds = %.loopexit760, %bb.i
  %i.xm = load i32, ptr %i.aa, align 4, !tbaa !55 ; 2 uses
  %i.xn = load i32, ptr %i.ab, align 4, !tbaa !56
  %.not566892 = icmp sgt i32 %i.xm, %i.xn
  br i1 %.not566892, label %.loopexit759, label %.lr.ph895

.lr.ph895:                                        ; preds = %._crit_edge
  %i.xo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.xp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %reass.add.neg.i654 = mul i32 %spec.select592, -2
  %i.xq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xr = zext nneg i32 %.1532 to i64             ; 6 uses
  %i.xs = sub i32 4096, %i.au                     ; 14 uses
  %i.xt = sub nsw i32 0, %.1532
  %i.xu = sext i32 %i.xt to i64                   ; 13 uses
  %i.xv = icmp samesign ugt i32 %.1532, 1         ; 3 uses
  %i.xw = zext nneg i32 %i.bp to i64              ; 3 uses
  %i.xx = icmp eq i32 %.1532, 3                   ; 3 uses
  %i.xy = shl nuw nsw i32 %i.bp, 1
  %i.xz = zext nneg i32 %i.xy to i64              ; 3 uses
  %i.ya = sub nsw i64 0, %i.xr
  %i.yb = zext nneg i32 %i.bq to i64              ; 14 uses
  %i.yc = sub nsw i64 0, %i.yb                    ; 2 uses
  %i.yd = icmp ugt i8 %i.bj, 2
  %i.ye = sub nsw i32 0, %i.bq
  %i.yf = sext i32 %i.ye to i64                   ; 2 uses
  %i.yg = zext i8 %i.bj to i64                    ; 2 uses
  %i.yh = shl nuw nsw i32 %i.bk, 1
  %i.yi = zext nneg i32 %i.yh to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph895, %.loopexit
  %.6529893 = phi i32 [ %i.xm, %.lr.ph895 ], [ %i.ava, %.loopexit ] ; 11 uses
  %i.yj = load i32, ptr %i.xo, align 4, !tbaa !55 ; 2 uses
  %i.yk = load i32, ptr %i.xp, align 4, !tbaa !56 ; 2 uses
  %i.yl = add nsw i32 %.6529893, %i.i             ; 4 uses
  %i.ym = add nsw i32 %i.yj, %spec.select592
  %i.yn = icmp slt i32 %i.yl, %i.ym
  br i1 %i.yn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.neg21.i657 = sub i32 %i.yj, %i.yl
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.yo = sub nsw i32 %i.yk, %spec.select592
  %i.yp = icmp sgt i32 %i.yl, %i.yo
  br i1 %i.yp, label %bb.ah, label %get_rounded_edge_point.exit658

bb.ah:                                            ; preds = %bb.ag
  %.neg.i652 = sub i32 %i.yl, %i.yk
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.neg21.pn.i653 = phi i32 [ %.neg21.i657, %bb.af ], [ %.neg.i652, %bb.ah ] ; 2 uses
  %add.neg.i655 = sub i32 %reass.add.neg.i654, %.neg21.pn.i653
  %.neg22.i656 = mul i32 %add.neg.i655, %.neg21.pn.i653
  %i.yq = call i32 @lv_sqrt32(i32 noundef %.neg22.i656) #5
  %i.yr = sub i32 %spec.select592, %i.yq          ; 2 uses
  %.pre = sub i32 %i.yr, %i.g
  br label %get_rounded_edge_point.exit658

get_rounded_edge_point.exit658:                   ; preds = %bb.ag, %bb.ai
  %.pre-phi = phi i32 [ %i.l, %bb.ag ], [ %.pre, %bb.ai ]
  %.0.i651 = phi i32 [ 0, %bb.ag ], [ %i.yr, %bb.ai ]
  %i.ys = load i32, ptr %3, align 16, !tbaa !53   ; 2 uses
  %i.yt = load i32, ptr %2, align 4, !tbaa !53
  %i.yu = add i32 %.pre-phi, %i.yt
  %i.yv = load i32, ptr %i.z, align 8, !tbaa !54  ; 2 uses
  %.598 = call i32 @llvm.smin.i32(i32 %i.yu, i32 %i.yv)
  %spec.select753 = call i32 @llvm.smax.i32(i32 %i.ys, i32 %.598)
  %i.yw = load i32, ptr %i.xq, align 4, !tbaa !54
  %i.yx = add i32 %.0.i651, %i.g
  %i.yy = sub i32 %i.yw, %i.yx
  %.600 = call i32 @llvm.smin.i32(i32 %i.yy, i32 %i.yv)
  %i.yz = call i32 @llvm.smax.i32(i32 %i.ys, i32 %.600)
  %.fr567 = freeze i32 %spec.select753            ; 2 uses
  %i.za = srem i32 %.fr567, %.1532
  %i.zb = sub nsw i32 %.fr567, %i.za              ; 14 uses
  %.fr568 = freeze i32 %i.yz                      ; 2 uses
  %i.zc = srem i32 %.fr568, %.1532
  %i.zd = sub nsw i32 %.fr568, %i.zc              ; 13 uses
  %i.ze = icmp sgt i32 %i.zb, %i.zd
  br i1 %i.ze, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %get_rounded_edge_point.exit658
  %i.zf = sub i32 %i.zd, %i.zb                    ; 2 uses
  %i.zg = add nuw nsw i32 %i.zf, %.1532
  %i.zh = mul i32 %i.zg, %i.bk                    ; 3 uses
  %i.zi = udiv i32 %i.zf, %.1532
  %i.zj = add i32 %i.zi, 1
  %.602 = call i32 @llvm.umin.i32(i32 %i.zj, i32 %i.aw)
  %i.zk = freeze i32 %.602                        ; 43 uses
  switch i8 %i.bj, label %bb.bi [
    i8 1, label %.lr.ph.i660
    i8 2, label %.lr.ph.i676
  ]

.lr.ph.i660:                                      ; preds = %bb.aj
  %i.zl = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !52
  %i.zn = call ptr @lv_draw_buf_goto_xy(ptr noundef %i.zm, i32 noundef %i.zb, i32 noundef %.6529893) #5 ; 4 uses
  %5 = add nsw i32 %i.zk, -1                      ; 2 uses
  %xtraiter1287 = and i32 %i.zk, 7                ; 3 uses
  %i.zo = icmp ult i32 %5, 7
  br i1 %i.zo, label %.epil.preheader1286, label %.lr.ph.i660.new

.lr.ph.i660.new:                                  ; preds = %.lr.ph.i660
  %unroll_iter1294 = and i32 %i.zk, 2147483640
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i660.new
  %i.zp = phi i32 [ 0, %.lr.ph.i660.new ], [ %i.aau, %bb.ak ]
  %.01012.i662 = phi ptr [ %i.zn, %.lr.ph.i660.new ], [ %i.aav, %bb.ak ] ; 2 uses
  %niter1295 = phi i32 [ 0, %.lr.ph.i660.new ], [ %niter1295.next.7, %bb.ak ]
  %i.zq = load i8, ptr %.01012.i662, align 1, !tbaa !57
  %i.zr = zext i8 %i.zq to i32
  %i.zs = add i32 %i.zp, %i.zr
  %i.zt = getelementptr inbounds nuw i8, ptr %.01012.i662, i64 %i.yb ; 2 uses
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !57
  %i.zv = zext i8 %i.zu to i32
  %i.zw = add i32 %i.zs, %i.zv
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.yb ; 2 uses
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !57
  %i.zz = zext i8 %i.zy to i32
  %i.aaa = add i32 %i.zw, %i.zz
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zx, i64 %i.yb ; 2 uses
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !57
  %i.aad = zext i8 %i.aac to i32
  %i.aae = add i32 %i.aaa, %i.aad
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.yb ; 2 uses
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !57
  %i.aah = zext i8 %i.aag to i32
  %i.aai = add i32 %i.aae, %i.aah
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %i.yb ; 2 uses
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !57
  %i.aal = zext i8 %i.aak to i32
  %i.aam = add i32 %i.aai, %i.aal
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %i.yb ; 2 uses
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !57
  %i.aap = zext i8 %i.aao to i32
  %i.aaq = add i32 %i.aam, %i.aap
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.yb ; 2 uses
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !57
  %i.aat = zext i8 %i.aas to i32
  %i.aau = add i32 %i.aaq, %i.aat                 ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.yb ; 2 uses
  %niter1295.next.7 = add i32 %niter1295, 8       ; 2 uses
  %niter1295.ncmp.7 = icmp eq i32 %niter1295.next.7, %unroll_iter1294
  br i1 %niter1295.ncmp.7, label %._crit_edge.loopexit.i664.unr-lcssa, label %bb.ak, !llvm.loop !8

._crit_edge.loopexit.i664.unr-lcssa:              ; preds = %bb.ak
  %lcmp.mod1291.not = icmp eq i32 %xtraiter1287, 0
  br i1 %lcmp.mod1291.not, label %._crit_edge.loopexit.i664, label %.epil.preheader1286

.epil.preheader1286:                              ; preds = %._crit_edge.loopexit.i664.unr-lcssa, %.lr.ph.i660
  %.epil.init1290 = phi i32 [ 0, %.lr.ph.i660 ], [ %i.aau, %._crit_edge.loopexit.i664.unr-lcssa ]
  %.01012.i662.epil.init = phi ptr [ %i.zn, %.lr.ph.i660 ], [ %i.aav, %._crit_edge.loopexit.i664.unr-lcssa ]
  %lcmp.mod1293 = icmp ne i32 %xtraiter1287, 0
  call void @llvm.assume(i1 %lcmp.mod1293)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader1286
  %i.aaw = phi i32 [ %.epil.init1290, %.epil.preheader1286 ], [ %i.aaz, %bb.al ]
  %.01012.i662.epil = phi ptr [ %.01012.i662.epil.init, %.epil.preheader1286 ], [ %i.aba, %bb.al ] ; 2 uses
  %epil.iter1288 = phi i32 [ 0, %.epil.preheader1286 ], [ %epil.iter1288.next, %bb.al ]
  %i.aax = load i8, ptr %.01012.i662.epil, align 1, !tbaa !57
  %i.aay = zext i8 %i.aax to i32
  %i.aaz = add i32 %i.aaw, %i.aay                 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.01012.i662.epil, i64 %i.yb
  %epil.iter1288.next = add i32 %epil.iter1288, 1 ; 2 uses
  %epil.iter1288.cmp.not = icmp eq i32 %epil.iter1288.next, %xtraiter1287
  br i1 %epil.iter1288.cmp.not, label %._crit_edge.loopexit.i664, label %bb.al, !llvm.loop !20

._crit_edge.loopexit.i664:                        ; preds = %bb.al, %._crit_edge.loopexit.i664.unr-lcssa
  %.lcssa1094 = phi i32 [ %i.aau, %._crit_edge.loopexit.i664.unr-lcssa ], [ %i.aaz, %bb.al ]
  %.1520864 = add nsw i32 %i.zb, %.1532           ; 2 uses
  %.not576865 = icmp sgt i32 %.1520864, %i.zd
  br i1 %.not576865, label %.lr.ph.i668, label %.lr.ph870.preheader

.lr.ph870.preheader:                              ; preds = %._crit_edge.loopexit.i664
  %i.abb = load i8, ptr %i.zn, align 1, !tbaa !57
  %i.abc = add i8 %i.abb, 1
  %i.abd = shl i32 %.lcssa1094, 12
  %i.abe = udiv i32 %i.abd, %i.zk
  br label %.lr.ph870

.lr.ph870:                                        ; preds = %.lr.ph870.preheader, %bb.an
  %.1520869 = phi i32 [ %.1520, %bb.an ], [ %.1520864, %.lr.ph870.preheader ]
  %.0500868 = phi i8 [ %.1501, %bb.an ], [ %i.abc, %.lr.ph870.preheader ] ; 2 uses
  %.0504867 = phi ptr [ %i.abn, %bb.an ], [ %i.zn, %.lr.ph870.preheader ] ; 3 uses
  %.sroa.0.10866 = phi i32 [ %.sroa.0.11, %bb.an ], [ %i.abe, %.lr.ph870.preheader ] ; 2 uses
  %i.abf = load i8, ptr %.0504867, align 1, !tbaa !57 ; 2 uses
  %.not579 = icmp eq i8 %.0500868, %i.abf
  br i1 %.not579, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph870
  %i.abg = mul i32 %.sroa.0.10866, %i.au
  %i.abh = lshr i32 %i.abg, 12
  %i.abi = zext i8 %i.abf to i32
  %i.abj = mul i32 %i.xs, %i.abi
  %i.abk = add i32 %i.abj, %i.abh                 ; 2 uses
  %i.abl = lshr i32 %i.abk, 12
  %i.abm = trunc i32 %i.abl to i8                 ; 2 uses
  store i8 %i.abm, ptr %.0504867, align 1, !tbaa !57
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph870
  %.sroa.0.11 = phi i32 [ %.sroa.0.10866, %.lr.ph870 ], [ %i.abk, %bb.am ]
  %.1501 = phi i8 [ %.0500868, %.lr.ph870 ], [ %i.abm, %bb.am ]
  %i.abn = getelementptr inbounds nuw i8, ptr %.0504867, i64 %i.yb
  %.1520 = add nsw i32 %.1520869, %.1532          ; 2 uses
  %.not576 = icmp sgt i32 %.1520, %i.zd
  br i1 %.not576, label %.lr.ph.i668, label %.lr.ph870, !llvm.loop !21

.lr.ph.i668:                                      ; preds = %bb.an, %._crit_edge.loopexit.i664
  %i.abo = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !52
  %i.abq = call ptr @lv_draw_buf_goto_xy(ptr noundef %i.abp, i32 noundef %i.zd, i32 noundef %.6529893) #5 ; 4 uses
  %xtraiter1297 = and i32 %i.zk, 7                ; 3 uses
  %i.abr = icmp ult i32 %5, 7
  br i1 %i.abr, label %.epil.preheader1296, label %.lr.ph.i668.new

.lr.ph.i668.new:                                  ; preds = %.lr.ph.i668
  %unroll_iter1304 = and i32 %i.zk, 2147483640
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i668.new
  %i.abs = phi i32 [ 0, %.lr.ph.i668.new ], [ %i.acx, %bb.ao ]
  %.01012.i670 = phi ptr [ %i.abq, %.lr.ph.i668.new ], [ %i.acy, %bb.ao ] ; 2 uses
  %niter1305 = phi i32 [ 0, %.lr.ph.i668.new ], [ %niter1305.next.7, %bb.ao ]
  %i.abt = load i8, ptr %.01012.i670, align 1, !tbaa !57
  %i.abu = zext i8 %i.abt to i32
  %i.abv = add i32 %i.abs, %i.abu
  %i.abw = getelementptr inbounds i8, ptr %.01012.i670, i64 %i.xu ; 2 uses
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !57
  %i.aby = zext i8 %i.abx to i32
  %i.abz = add i32 %i.abv, %i.aby
  %i.aca = getelementptr inbounds i8, ptr %i.abw, i64 %i.xu ; 2 uses
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !57
  %i.acc = zext i8 %i.acb to i32
  %i.acd = add i32 %i.abz, %i.acc
  %i.ace = getelementptr inbounds i8, ptr %i.aca, i64 %i.xu ; 2 uses
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !57
  %i.acg = zext i8 %i.acf to i32
  %i.ach = add i32 %i.acd, %i.acg
  %i.aci = getelementptr inbounds i8, ptr %i.ace, i64 %i.xu ; 2 uses
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !57
  %i.ack = zext i8 %i.acj to i32
  %i.acl = add i32 %i.ach, %i.ack
  %i.acm = getelementptr inbounds i8, ptr %i.aci, i64 %i.xu ; 2 uses
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !57
  %i.aco = zext i8 %i.acn to i32
  %i.acp = add i32 %i.acl, %i.aco
  %i.acq = getelementptr inbounds i8, ptr %i.acm, i64 %i.xu ; 2 uses
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !57
  %i.acs = zext i8 %i.acr to i32
  %i.act = add i32 %i.acp, %i.acs
  %i.acu = getelementptr inbounds i8, ptr %i.acq, i64 %i.xu ; 2 uses
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !57
  %i.acw = zext i8 %i.acv to i32
  %i.acx = add i32 %i.act, %i.acw                 ; 3 uses
  %i.acy = getelementptr inbounds i8, ptr %i.acu, i64 %i.xu ; 2 uses
  %niter1305.next.7 = add i32 %niter1305, 8       ; 2 uses
  %niter1305.ncmp.7 = icmp eq i32 %niter1305.next.7, %unroll_iter1304
  br i1 %niter1305.ncmp.7, label %.lr.ph876.unr-lcssa, label %bb.ao, !llvm.loop !8

.lr.ph876.unr-lcssa:                              ; preds = %bb.ao
  %lcmp.mod1301.not = icmp eq i32 %xtraiter1297, 0
  br i1 %lcmp.mod1301.not, label %.lr.ph876, label %.epil.preheader1296

.epil.preheader1296:                              ; preds = %.lr.ph876.unr-lcssa, %.lr.ph.i668
  %.epil.init1300.a = phi i32 [ 0, %.lr.ph.i668 ], [ %i.acx, %.lr.ph876.unr-lcssa ]
  %.01012.i670.epil.init = phi ptr [ %i.abq, %.lr.ph.i668 ], [ %i.acy, %.lr.ph876.unr-lcssa ]
  %lcmp.mod1303 = icmp ne i32 %xtraiter1297, 0
  call void @llvm.assume(i1 %lcmp.mod1303)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader1296
  %i.acz = phi i32 [ %.epil.init1300.a, %.epil.preheader1296 ], [ %i.adc, %bb.ap ]
  %.01012.i670.epil = phi ptr [ %.01012.i670.epil.init, %.epil.preheader1296 ], [ %i.add, %bb.ap ] ; 2 uses
  %epil.iter1298 = phi i32 [ 0, %.epil.preheader1296 ], [ %epil.iter1298.next, %bb.ap ]
  %i.ada = load i8, ptr %.01012.i670.epil, align 1, !tbaa !57
  %i.adb = zext i8 %i.ada to i32
  %i.adc = add i32 %i.acz, %i.adb                 ; 2 uses
  %i.add = getelementptr inbounds i8, ptr %.01012.i670.epil, i64 %i.xu
  %epil.iter1298.next = add i32 %epil.iter1298, 1 ; 2 uses
  %epil.iter1298.cmp.not = icmp eq i32 %epil.iter1298.next, %xtraiter1297
  br i1 %epil.iter1298.cmp.not, label %.lr.ph876, label %bb.ap, !llvm.loop !22

.lr.ph876:                                        ; preds = %bb.ap, %.lr.ph876.unr-lcssa
  %.lcssa1095 = phi i32 [ %i.acx, %.lr.ph876.unr-lcssa ], [ %i.adc, %bb.ap ]
  %i.ade = load i8, ptr %i.abq, align 1, !tbaa !57
  %i.adf = add i8 %i.ade, 1
  %i.adg = shl i32 %.lcssa1095, 12
  %i.adh = udiv i32 %i.adg, %i.zk
  %i.adi = zext i32 %i.zh to i64                  ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph876, %bb.ax
  %.0499875 = phi ptr [ %i.abq, %.lr.ph876 ], [ %i.aed, %bb.ax ] ; 5 uses
  %.2502874 = phi i8 [ %i.adf, %.lr.ph876 ], [ %i.adr, %bb.ax ] ; 2 uses
  %.2521873 = phi i32 [ %i.zb, %.lr.ph876 ], [ %i.adu, %bb.ax ]
  %.sroa.0.12872 = phi i32 [ %i.adh, %.lr.ph876 ], [ %.sroa.0.13, %bb.ax ] ; 2 uses
  %i.adj = load i8, ptr %.0499875, align 1, !tbaa !57 ; 2 uses
  %.not578 = icmp eq i8 %.2502874, %i.adj
  br i1 %.not578, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.adk = mul i32 %.sroa.0.12872, %i.au
  %i.adl = lshr i32 %i.adk, 12
  %i.adm = zext i8 %i.adj to i32
  %i.adn = mul i32 %i.xs, %i.adm
  %i.ado = add i32 %i.adn, %i.adl                 ; 2 uses
  %i.adp = lshr i32 %i.ado, 12
  %i.adq = trunc i32 %i.adp to i8                 ; 2 uses
  store i8 %i.adq, ptr %.0499875, align 1, !tbaa !57
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.adr = phi i8 [ %.2502874, %bb.aq ], [ %i.adq, %bb.ar ] ; 3 uses
  %.sroa.0.13 = phi i32 [ %.sroa.0.12872, %bb.aq ], [ %i.ado, %bb.ar ]
  switch i32 %.1532, label %bb.au [
    i32 2, label %.sink.split
    i32 3, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as
  %i.ads = getelementptr inbounds nuw i8, ptr %.0499875, i64 1
  store i8 %i.adr, ptr %i.ads, align 1, !tbaa !57
  br label %.sink.split

.sink.split:                                      ; preds = %bb.as, %bb.at
  %.sink1022 = phi i64 [ 2, %bb.at ], [ 1, %bb.as ]
  %i.adt = getelementptr inbounds nuw i8, ptr %.0499875, i64 %.sink1022
  store i8 %i.adr, ptr %i.adt, align 1, !tbaa !57
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %bb.as
  %i.adu = add nsw i32 %.2521873, %.1532          ; 2 uses
  %i.adv = icmp sgt i32 %i.adu, %i.zd             ; 2 uses
  %or.cond604 = select i1 %i.xv, i1 %i.adv, i1 false
  br i1 %or.cond604, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.adw = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !52
  %i.ady = call ptr @lv_draw_buf_goto_xy(ptr noundef %i.adx, i32 noundef %i.zb, i32 noundef %.6529893) #5 ; 4 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.xw
  %i.aea = call ptr @lv_memcpy(ptr noundef %i.adz, ptr noundef %i.ady, i64 noundef %i.adi) #5 ; 0 uses
  br i1 %i.xx, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.xz
  %i.aec = call ptr @lv_memcpy(ptr noundef %i.aeb, ptr noundef %i.ady, i64 noundef %i.adi) #5 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.au
  %i.aed = getelementptr inbounds i8, ptr %.0499875, i64 %i.yc
  br i1 %i.adv, label %.loopexit, label %bb.aq, !llvm.loop !23

.lr.ph.i676:                                      ; preds = %bb.aj
  %i.aee = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !52
  %i.aeg = call ptr @lv_draw_buf_goto_xy(ptr noundef %i.aef, i32 noundef %i.zb, i32 noundef %.6529893) #5 ; 6 uses
  br i1 %i.bt, label %.lr.ph.split.us.i685.preheader, label %.lr.ph.split.i677.preheader

.lr.ph.split.i677.preheader:                      ; preds = %.lr.ph.i676
  %xtraiter1226.a = and i32 %i.zk, 1
  %i.aeh = icmp eq i32 %i.zk, 1
  br i1 %i.aeh, label %.lr.ph.split.i677.epil.preheader, label %.lr.ph.split.i677.preheader.new

.lr.ph.split.i677.preheader.new:                  ; preds = %.lr.ph.split.i677.preheader
  %unroll_iter1239.a = and i32 %i.zk, 2147483646
  br label %.lr.ph.split.i677

.lr.ph.split.us.i685.preheader:                   ; preds = %.lr.ph.i676
  %xtraiter1241.a = and i32 %i.zk, 1
  %i.aei = icmp eq i32 %i.zk, 1
  br i1 %i.aei, label %.lr.ph.split.us.i685.epil.preheader, label %.lr.ph.split.us.i685.preheader.new

.lr.ph.split.us.i685.preheader.new:               ; preds = %.lr.ph.split.us.i685.preheader
  %unroll_iter1254.a = and i32 %i.zk, 2147483646
  br label %.lr.ph.split.us.i685

.lr.ph.split.us.i685:                             ; preds = %.lr.ph.split.us.i685, %.lr.ph.split.us.i685.preheader.new
  %i.aej = phi i32 [ 0, %.lr.ph.split.us.i685.preheader.new ], [ %i.afk, %.lr.ph.split.us.i685 ]
  %i.aek = phi i32 [ 0, %.lr.ph.split.us.i685.preheader.new ], [ %i.afh, %.lr.ph.split.us.i685 ]
  %i.ael = phi i32 [ 0, %.lr.ph.split.us.i685.preheader.new ], [ %i.afd, %.lr.ph.split.us.i685 ]
  %.032.us.i686 = phi ptr [ %i.aeg, %.lr.ph.split.us.i685.preheader.new ], [ %i.afl, %.lr.ph.split.us.i685 ] ; 2 uses
  %niter1255.a = phi i32 [ 0, %.lr.ph.split.us.i685.preheader.new ], [ %niter1255.next.1.a, %.lr.ph.split.us.i685 ]
  %i.aem = load i16, ptr %.032.us.i686, align 2, !tbaa !60
  %i.aen = call i16 @llvm.bswap.i16(i16 %i.aem)   ; 3 uses
  %i.aeo = lshr i16 %i.aen, 11
  %i.aep = zext nneg i16 %i.aeo to i32
  %i.aeq = add i32 %i.ael, %i.aep
  %i.aer = lshr i16 %i.aen, 5
  %i.aes = and i16 %i.aer, 63
  %i.aet = zext nneg i16 %i.aes to i32
  %i.aeu = add i32 %i.aek, %i.aet
  %i.aev = and i16 %i.aen, 31
  %i.aew = zext nneg i16 %i.aev to i32
  %i.aex = add i32 %i.aej, %i.aew
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %.032.us.i686, i64 %i.xr ; 2 uses
  %i.aez = load i16, ptr %i.aey, align 2, !tbaa !60
  %i.afa = call i16 @llvm.bswap.i16(i16 %i.aez)   ; 3 uses
  %i.afb = lshr i16 %i.afa, 11
  %i.afc = zext nneg i16 %i.afb to i32
  %i.afd = add i32 %i.aeq, %i.afc                 ; 3 uses
  %i.afe = lshr i16 %i.afa, 5
  %i.aff = and i16 %i.afe, 63
  %i.afg = zext nneg i16 %i.aff to i32
  %i.afh = add i32 %i.aeu, %i.afg                 ; 3 uses
  %i.afi = and i16 %i.afa, 31
  %i.afj = zext nneg i16 %i.afi to i32
  %i.afk = add i32 %i.aex, %i.afj                 ; 3 uses
  %i.afl = getelementptr inbounds nuw [2 x i8], ptr %i.aey, i64 %i.xr ; 2 uses
  %niter1255.next.1.a = add i32 %niter1255.a, 2   ; 2 uses
  %niter1255.ncmp.1.a = icmp eq i32 %niter1255.next.1.a, %unroll_iter1254.a
  br i1 %niter1255.ncmp.1.a, label %.lr.ph855.preheader.loopexit.unr-lcssa, label %.lr.ph.split.us.i685, !llvm.loop !13

.lr.ph.split.i677:                                ; preds = %.lr.ph.split.i677, %.lr.ph.split.i677.preheader.new
  %i.afm = phi i32 [ 0, %.lr.ph.split.i677.preheader.new ], [ %i.agl, %.lr.ph.split.i677 ]
  %i.afn = phi i32 [ 0, %.lr.ph.split.i677.preheader.new ], [ %i.agi, %.lr.ph.split.i677 ]
  %i.afo = phi i32 [ 0, %.lr.ph.split.i677.preheader.new ], [ %i.age, %.lr.ph.split.i677 ]
  %.032.i678 = phi ptr [ %i.aeg, %.lr.ph.split.i677.preheader.new ], [ %i.agm, %.lr.ph.split.i677 ] ; 2 uses
  %niter1240.a = phi i32 [ 0, %.lr.ph.split.i677.preheader.new ], [ %niter1240.next.1.a, %.lr.ph.split.i677 ]
  %i.afp = load i16, ptr %.032.i678, align 2, !tbaa !60 ; 3 uses
  %i.afq = lshr i16 %i.afp, 11
  %i.afr = zext nneg i16 %i.afq to i32
  %i.afs = add i32 %i.afo, %i.afr
  %i.aft = lshr i16 %i.afp, 5
  %i.afu = and i16 %i.aft, 63
  %i.afv = zext nneg i16 %i.afu to i32
  %i.afw = add i32 %i.afn, %i.afv
  %i.afx = and i16 %i.afp, 31
  %i.afy = zext nneg i16 %i.afx to i32
  %i.afz = add i32 %i.afm, %i.afy
  %i.aga = getelementptr inbounds nuw [2 x i8], ptr %.032.i678, i64 %i.xr ; 2 uses
  %i.agb = load i16, ptr %i.aga, align 2, !tbaa !60 ; 3 uses
  %i.agc = lshr i16 %i.agb, 11
  %i.agd = zext nneg i16 %i.agc to i32
  %i.age = add i32 %i.afs, %i.agd                 ; 3 uses
  %i.agf = lshr i16 %i.agb, 5
  %i.agg = and i16 %i.agf, 63
  %i.agh = zext nneg i16 %i.agg to i32
  %i.agi = add i32 %i.afw, %i.agh                 ; 3 uses
  %i.agj = and i16 %i.agb, 31
  %i.agk = zext nneg i16 %i.agj to i32
  %i.agl = add i32 %i.afz, %i.agk                 ; 3 uses
  %i.agm = getelementptr inbounds nuw [2 x i8], ptr %i.aga, i64 %i.xr ; 2 uses
  %niter1240.next.1.a = add i32 %niter1240.a, 2   ; 2 uses
  %niter1240.ncmp.1.a = icmp eq i32 %niter1240.next.1.a, %unroll_iter1239.a
  br i1 %niter1240.ncmp.1.a, label %.lr.ph855.preheader.loopexit1082.unr-lcssa, label %.lr.ph.split.i677, !llvm.loop !13

.lr.ph855.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph.split.us.i685
  %lcmp.mod1249.not.a = icmp eq i32 %xtraiter1241.a, 0
  br i1 %lcmp.mod1249.not.a, label %.lr.ph855.preheader, label %.lr.ph.split.us.i685.epil.preheader

.lr.ph.split.us.i685.epil.preheader:              ; preds = %.lr.ph855.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.i685.preheader
  %.epil.init1244.a = phi i32 [ 0, %.lr.ph.split.us.i685.preheader ], [ %i.afk, %.lr.ph855.preheader.loopexit.unr-lcssa ]
  %.epil.init1246.a = phi i32 [ 0, %.lr.ph.split.us.i685.preheader ], [ %i.afh, %.lr.ph855.preheader.loopexit.unr-lcssa ]
  %.epil.init1248.a = phi i32 [ 0, %.lr.ph.split.us.i685.preheader ], [ %i.afd, %.lr.ph855.preheader.loopexit.unr-lcssa ]
  %.032.us.i686.epil.init = phi ptr [ %i.aeg, %.lr.ph.split.us.i685.preheader ], [ %i.afl, %.lr.ph855.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1253.a = trunc i32 %i.zk to i1
  call void @llvm.assume(i1 %lcmp.mod1253.a)
  %i.agn = load i16, ptr %.032.us.i686.epil.init, align 2, !tbaa !60
  %i.ago = call i16 @llvm.bswap.i16(i16 %i.agn)   ; 3 uses
  %i.agp = lshr i16 %i.ago, 11
  %i.agq = zext nneg i16 %i.agp to i32
  %i.agr = add i32 %.epil.init1248.a, %i.agq
  %i.ags = lshr i16 %i.ago, 5
  %i.agt = and i16 %i.ags, 63
  %i.agu = zext nneg i16 %i.agt to i32
  %i.agv = add i32 %.epil.init1246.a, %i.agu
  %i.agw = and i16 %i.ago, 31
  %i.agx = zext nneg i16 %i.agw to i32
  %i.agy = add i32 %.epil.init1244.a, %i.agx
  br label %.lr.ph855.preheader

.lr.ph855.preheader.loopexit1082.unr-lcssa:       ; preds = %.lr.ph.split.i677
  %lcmp.mod1234.not.a = icmp eq i32 %xtraiter1226.a, 0
  br i1 %lcmp.mod1234.not.a, label %.lr.ph855.preheader, label %.lr.ph.split.i677.epil.preheader

.lr.ph.split.i677.epil.preheader:                 ; preds = %.lr.ph855.preheader.loopexit1082.unr-lcssa, %.lr.ph.split.i677.preheader
  %.epil.init1229.a = phi i32 [ 0, %.lr.ph.split.i677.preheader ], [ %i.agl, %.lr.ph855.preheader.loopexit1082.unr-lcssa ]
  %.epil.init1231.a = phi i32 [ 0, %.lr.ph.split.i677.preheader ], [ %i.agi, %.lr.ph855.preheader.loopexit1082.unr-lcssa ]
  %.epil.init1233.a = phi i32 [ 0, %.lr.ph.split.i677.preheader ], [ %i.age, %.lr.ph855.preheader.loopexit1082.unr-lcssa ]
  %.032.i678.epil.init = phi ptr [ %i.aeg, %.lr.ph.split.i677.preheader ], [ %i.agm, %.lr.ph855.preheader.loopexit1082.unr-lcssa ]
  %lcmp.mod1238.a = trunc i32 %i.zk to i1
  call void @llvm.assume(i1 %lcmp.mod1238.a)
  %i.agz = load i16, ptr %.032.i678.epil.init, align 2, !tbaa !60 ; 3 uses
  %i.aha = lshr i16 %i.agz, 11
  %i.ahb = zext nneg i16 %i.aha to i32
  %i.ahc = add i32 %.epil.init1233.a, %i.ahb
  %i.ahd = lshr i16 %i.agz, 5
  %i.ahe = and i16 %i.ahd, 63
  %i.ahf = zext nneg i16 %i.ahe to i32
  %i.ahg = add i32 %.epil.init1231.a, %i.ahf
  %i.ahh = and i16 %i.agz, 31
  %i.ahi = zext nneg i16 %i.ahh to i32
  %i.ahj = add i32 %.epil.init1229.a, %i.ahi
  br label %.lr.ph855.preheader

.lr.ph855.preheader:                              ; preds = %.lr.ph.split.i677.epil.preheader, %.lr.ph855.preheader.loopexit1082.unr-lcssa, %.lr.ph.split.us.i685.epil.preheader, %.lr.ph855.preheader.loopexit.unr-lcssa
  %.us-phi.i682 = phi i32 [ %i.agy, %.lr.ph.split.us.i685.epil.preheader ], [ %i.afk, %.lr.ph855.preheader.loopexit.unr-lcssa ], [ %i.agl, %.lr.ph855.preheader.loopexit1082.unr-lcssa ], [ %i.ahj, %.lr.ph.split.i677.epil.preheader ]
  %.us-phi37.i683 = phi i32 [ %i.agv, %.lr.ph.split.us.i685.epil.preheader ], [ %i.afh, %.lr.ph855.preheader.loopexit.unr-lcssa ], [ %i.agi, %.lr.ph855.preheader.loopexit1082.unr-lcssa ], [ %i.ahg, %.lr.ph.split.i677.epil.preheader ]
  %.us-phi38.i684 = phi i32 [ %i.agr, %.lr.ph.split.us.i685.epil.preheader ], [ %i.afd, %.lr.ph855.preheader.loopexit.unr-lcssa ], [ %i.age, %.lr.ph855.preheader.loopexit1082.unr-lcssa ], [ %i.ahc, %.lr.ph.split.i677.epil.preheader ]
  %i.ahk = load i16, ptr %i.aeg, align 2, !tbaa !60
  %i.ahl = add i16 %i.ahk, 1
  %i.ahm = shl i32 %.us-phi.i682, 12
  %i.ahn = udiv i32 %i.ahm, %i.zk
  %i.aho = shl i32 %.us-phi37.i683, 12
  %i.ahp = udiv i32 %i.aho, %i.zk
  %i.ahq = shl i32 %.us-phi38.i684, 12
  %i.ahr = udiv i32 %i.ahq, %i.zk
  br label %.lr.ph855

.lr.ph855:                                        ; preds = %.lr.ph855.preheader, %bb.az
  %.0497854 = phi i16 [ %.1, %bb.az ], [ %i.ahl, %.lr.ph855.preheader ] ; 2 uses
  %.0498853 = phi ptr [ %i.aiz, %bb.az ], [ %i.aeg, %.lr.ph855.preheader ] ; 3 uses
  %.3522852 = phi i32 [ %i.aja, %bb.az ], [ %i.zb, %.lr.ph855.preheader ]
  %.sroa.0.14851 = phi i32 [ %.sroa.0.15, %bb.az ], [ %i.ahr, %.lr.ph855.preheader ] ; 2 uses
  %.sroa.54.6850 = phi i32 [ %.sroa.54.7, %bb.az ], [ %i.ahp, %.lr.ph855.preheader ] ; 2 uses
  %.sroa.86.6849 = phi i32 [ %.sroa.86.7, %bb.az ], [ %i.ahn, %.lr.ph855.preheader ] ; 2 uses
  %i.ahs = load i16, ptr %.0498853, align 2, !tbaa !60 ; 3 uses
  %.not574 = icmp eq i16 %.0497854, %i.ahs
  br i1 %.not574, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph855
  %i.aht = call i16 @llvm.bswap.i16(i16 %i.ahs)
  %spec.select.i690 = select i1 %i.bt, i16 %i.aht, i16 %i.ahs
  %i.ahu = zext i16 %spec.select.i690 to i32      ; 3 uses
  %i.ahv = lshr i32 %i.ahu, 11
  %i.ahw = lshr i32 %i.ahu, 5
  %i.ahx = and i32 %i.ahw, 63
  %i.ahy = and i32 %i.ahu, 31
  %i.ahz = mul i32 %.sroa.0.14851, %i.au
  %i.aia = lshr i32 %i.ahz, 12
  %i.aib = mul i32 %i.ahv, %i.xs
  %i.aic = add i32 %i.aib, %i.aia                 ; 2 uses
  %i.aid = mul i32 %.sroa.54.6850, %i.au
  %i.aie = lshr i32 %i.aid, 12
  %i.aif = mul i32 %i.ahx, %i.xs
  %i.aig = add i32 %i.aif, %i.aie                 ; 2 uses
  %i.aih = mul i32 %.sroa.86.6849, %i.au
  %i.aii = lshr i32 %i.aih, 12
  %i.aij = mul i32 %i.ahy, %i.xs
  %i.aik = add i32 %i.aij, %i.aii                 ; 2 uses
  %i.ail = add i32 %i.aic, 2048
  %i.aim = add i32 %i.aig, 2048
  %i.ain = add i32 %i.aik, 2048
  %i.aio = lshr i32 %i.ain, 12
  %i.aip = lshr i32 %i.ail, 1
  %i.aiq = and i32 %i.aip, 63488
  %i.air = lshr i32 %i.aim, 7
  %i.ais = and i32 %i.air, 65504
  %i.ait = or i32 %i.aiq, %i.aio
  %i.aiu = or i32 %i.ait, %i.ais                  ; 2 uses
  %i.aiv = and i32 %i.aiu, 65535                  ; 2 uses
  %i.aiw = lshr i32 %i.aiv, 8
  %i.aix = shl nuw nsw i32 %i.aiv, 8
  %i.aiy = or disjoint i32 %i.aiw, %i.aix
  %.0.in.i691 = select i1 %i.bt, i32 %i.aiy, i32 %i.aiu
  %.0.i692 = trunc i32 %.0.in.i691 to i16         ; 2 uses
  store i16 %.0.i692, ptr %.0498853, align 2, !tbaa !60
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph855
  %.sroa.86.7 = phi i32 [ %.sroa.86.6849, %.lr.ph855 ], [ %i.aik, %bb.ay ]
  %.sroa.54.7 = phi i32 [ %.sroa.54.6850, %.lr.ph855 ], [ %i.aig, %bb.ay ]
  %.sroa.0.15 = phi i32 [ %.sroa.0.14851, %.lr.ph855 ], [ %i.aic, %bb.ay ]
  %.1 = phi i16 [ %.0497854, %.lr.ph855 ], [ %.0.i692, %bb.ay ]
  %i.aiz = getelementptr inbounds nuw [2 x i8], ptr %.0498853, i64 %i.xr
  %i.aja = add nsw i32 %.3522852, %.1532          ; 2 uses
  %.not571 = icmp sgt i32 %i.aja, %i.zd
  br i1 %.not571, label %.lr.ph.i694, label %.lr.ph855, !llvm.loop !24

.lr.ph.i694:                                      ; preds = %bb.az
  %i.ajb = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !52
  %i.ajd = call ptr @lv_draw_buf_goto_xy(ptr noundef %i.ajc, i32 noundef %i.zd, i32 noundef %.6529893) #5 ; 6 uses
  br i1 %i.bt, label %.lr.ph.split.us.i703.preheader, label %.lr.ph.split.i695.preheader

.lr.ph.split.i695.preheader:                      ; preds = %.lr.ph.i694
  %xtraiter1256 = and i32 %i.zk, 1
  %i.aje = icmp eq i32 %i.zk, 1
  br i1 %i.aje, label %.lr.ph.split.i695.epil.preheader, label %.lr.ph.split.i695.preheader.new

.lr.ph.split.i695.preheader.new:                  ; preds = %.lr.ph.split.i695.preheader
  %unroll_iter1269 = and i32 %i.zk, 2147483646
  br label %.lr.ph.split.i695

.lr.ph.split.us.i703.preheader:                   ; preds = %.lr.ph.i694
  %xtraiter1271 = and i32 %i.zk, 1
  %i.ajf = icmp eq i32 %i.zk, 1
  br i1 %i.ajf, label %.lr.ph.split.us.i703.epil.preheader, label %.lr.ph.split.us.i703.preheader.new

.lr.ph.split.us.i703.preheader.new:               ; preds = %.lr.ph.split.us.i703.preheader
  %unroll_iter1284 = and i32 %i.zk, 2147483646
  br label %.lr.ph.split.us.i703

.lr.ph.split.us.i703:                             ; preds = %.lr.ph.split.us.i703, %.lr.ph.split.us.i703.preheader.new
  %i.ajg = phi i32 [ 0, %.lr.ph.split.us.i703.preheader.new ], [ %i.akh, %.lr.ph.split.us.i703 ]
  %i.ajh = phi i32 [ 0, %.lr.ph.split.us.i703.preheader.new ], [ %i.ake, %.lr.ph.split.us.i703 ]
  %i.aji = phi i32 [ 0, %.lr.ph.split.us.i703.preheader.new ], [ %i.aka, %.lr.ph.split.us.i703 ]
  %.032.us.i704 = phi ptr [ %i.ajd, %.lr.ph.split.us.i703.preheader.new ], [ %i.aki, %.lr.ph.split.us.i703 ] ; 2 uses
  %niter1285 = phi i32 [ 0, %.lr.ph.split.us.i703.preheader.new ], [ %niter1285.next.1, %.lr.ph.split.us.i703 ]
  %i.ajj = load i16, ptr %.032.us.i704, align 2, !tbaa !60
  %i.ajk = call i16 @llvm.bswap.i16(i16 %i.ajj)   ; 3 uses
  %i.ajl = lshr i16 %i.ajk, 11
  %i.ajm = zext nneg i16 %i.ajl to i32
  %i.ajn = add i32 %i.aji, %i.ajm
  %i.ajo = lshr i16 %i.ajk, 5
  %i.ajp = and i16 %i.ajo, 63
  %i.ajq = zext nneg i16 %i.ajp to i32
  %i.ajr = add i32 %i.ajh, %i.ajq
  %i.ajs = and i16 %i.ajk, 31
  %i.ajt = zext nneg i16 %i.ajs to i32
  %i.aju = add i32 %i.ajg, %i.ajt
  %i.ajv = getelementptr inbounds [2 x i8], ptr %.032.us.i704, i64 %i.xu ; 2 uses
  %i.ajw = load i16, ptr %i.ajv, align 2, !tbaa !60
  %i.ajx = call i16 @llvm.bswap.i16(i16 %i.ajw)   ; 3 uses
  %i.ajy = lshr i16 %i.ajx, 11
  %i.ajz = zext nneg i16 %i.ajy to i32
  %i.aka = add i32 %i.ajn, %i.ajz                 ; 3 uses
  %i.akb = lshr i16 %i.ajx, 5
  %i.akc = and i16 %i.akb, 63
  %i.akd = zext nneg i16 %i.akc to i32
  %i.ake = add i32 %i.ajr, %i.akd                 ; 3 uses
  %i.akf = and i16 %i.ajx, 31
  %i.akg = zext nneg i16 %i.akf to i32
  %i.akh = add i32 %i.aju, %i.akg                 ; 3 uses
  %i.aki = getelementptr inbounds [2 x i8], ptr %i.ajv, i64 %i.xu ; 2 uses
  %niter1285.next.1 = add i32 %niter1285, 2       ; 2 uses
  %niter1285.ncmp.1 = icmp eq i32 %niter1285.next.1, %unroll_iter1284
  br i1 %niter1285.ncmp.1, label %.lr.ph863.loopexit.unr-lcssa, label %.lr.ph.split.us.i703, !llvm.loop !13

.lr.ph.split.i695:                                ; preds = %.lr.ph.split.i695, %.lr.ph.split.i695.preheader.new
  %i.akj = phi i32 [ 0, %.lr.ph.split.i695.preheader.new ], [ %i.ali, %.lr.ph.split.i695 ]
  %i.akk = phi i32 [ 0, %.lr.ph.split.i695.preheader.new ], [ %i.alf, %.lr.ph.split.i695 ]
  %i.akl = phi i32 [ 0, %.lr.ph.split.i695.preheader.new ], [ %i.alb, %.lr.ph.split.i695 ]
  %.032.i696 = phi ptr [ %i.ajd, %.lr.ph.split.i695.preheader.new ], [ %i.alj, %.lr.ph.split.i695 ] ; 2 uses
  %niter1270 = phi i32 [ 0, %.lr.ph.split.i695.preheader.new ], [ %niter1270.next.1, %.lr.ph.split.i695 ]
  %i.akm = load i16, ptr %.032.i696, align 2, !tbaa !60 ; 3 uses
  %i.akn = lshr i16 %i.akm, 11
  %i.ako = zext nneg i16 %i.akn to i32
  %i.akp = add i32 %i.akl, %i.ako
  %i.akq = lshr i16 %i.akm, 5
  %i.akr = and i16 %i.akq, 63
  %i.aks = zext nneg i16 %i.akr to i32
  %i.akt = add i32 %i.akk, %i.aks
  %i.aku = and i16 %i.akm, 31
  %i.akv = zext nneg i16 %i.aku to i32
  %i.akw = add i32 %i.akj, %i.akv
  %i.akx = getelementptr inbounds [2 x i8], ptr %.032.i696, i64 %i.xu ; 2 uses
  %i.aky = load i16, ptr %i.akx, align 2, !tbaa !60 ; 3 uses
  %i.akz = lshr i16 %i.aky, 11
  %i.ala = zext nneg i16 %i.akz to i32
  %i.alb = add i32 %i.akp, %i.ala                 ; 3 uses
  %i.alc = lshr i16 %i.aky, 5
  %i.ald = and i16 %i.alc, 63
  %i.ale = zext nneg i16 %i.ald to i32
  %i.alf = add i32 %i.akt, %i.ale                 ; 3 uses
  %i.alg = and i16 %i.aky, 31
  %i.alh = zext nneg i16 %i.alg to i32
  %i.ali = add i32 %i.akw, %i.alh                 ; 3 uses
  %i.alj = getelementptr inbounds [2 x i8], ptr %i.akx, i64 %i.xu ; 2 uses
  %niter1270.next.1 = add i32 %niter1270, 2       ; 2 uses
  %niter1270.ncmp.1 = icmp eq i32 %niter1270.next.1, %unroll_iter1269
  br i1 %niter1270.ncmp.1, label %.lr.ph863.loopexit1081.unr-lcssa, label %.lr.ph.split.i695, !llvm.loop !13

.lr.ph863.loopexit.unr-lcssa:                     ; preds = %.lr.ph.split.us.i703
  %lcmp.mod1279.not = icmp eq i32 %xtraiter1271, 0
  br i1 %lcmp.mod1279.not, label %.lr.ph863, label %.lr.ph.split.us.i703.epil.preheader

.lr.ph.split.us.i703.epil.preheader:              ; preds = %.lr.ph863.loopexit.unr-lcssa, %.lr.ph.split.us.i703.preheader
  %.epil.init1274 = phi i32 [ 0, %.lr.ph.split.us.i703.preheader ], [ %i.akh, %.lr.ph863.loopexit.unr-lcssa ]
  %.epil.init1276 = phi i32 [ 0, %.lr.ph.split.us.i703.preheader ], [ %i.ake, %.lr.ph863.loopexit.unr-lcssa ]
  %.epil.init1278 = phi i32 [ 0, %.lr.ph.split.us.i703.preheader ], [ %i.aka, %.lr.ph863.loopexit.unr-lcssa ]
  %.032.us.i704.epil.init = phi ptr [ %i.ajd, %.lr.ph.split.us.i703.preheader ], [ %i.aki, %.lr.ph863.loopexit.unr-lcssa ]
  %lcmp.mod1283 = trunc i32 %i.zk to i1
  call void @llvm.assume(i1 %lcmp.mod1283)
  %i.alk = load i16, ptr %.032.us.i704.epil.init, align 2, !tbaa !60
  %i.all = call i16 @llvm.bswap.i16(i16 %i.alk)   ; 3 uses
  %i.alm = lshr i16 %i.all, 11
  %i.aln = zext nneg i16 %i.alm to i32
  %i.alo = add i32 %.epil.init1278, %i.aln
  %i.alp = lshr i16 %i.all, 5
  %i.alq = and i16 %i.alp, 63
  %i.alr = zext nneg i16 %i.alq to i32
  %i.als = add i32 %.epil.init1276, %i.alr
  %i.alt = and i16 %i.all, 31
  %i.alu = zext nneg i16 %i.alt to i32
  %i.alv = add i32 %.epil.init1274, %i.alu
  br label %.lr.ph863

.lr.ph863.loopexit1081.unr-lcssa:                 ; preds = %.lr.ph.split.i695
  %lcmp.mod1264.not = icmp eq i32 %xtraiter1256, 0
  br i1 %lcmp.mod1264.not, label %.lr.ph863, label %.lr.ph.split.i695.epil.preheader

.lr.ph.split.i695.epil.preheader:                 ; preds = %.lr.ph863.loopexit1081.unr-lcssa, %.lr.ph.split.i695.preheader
  %.epil.init1259 = phi i32 [ 0, %.lr.ph.split.i695.preheader ], [ %i.ali, %.lr.ph863.loopexit1081.unr-lcssa ]
  %.epil.init1261 = phi i32 [ 0, %.lr.ph.split.i695.preheader ], [ %i.alf, %.lr.ph863.loopexit1081.unr-lcssa ]
  %.epil.init1263 = phi i32 [ 0, %.lr.ph.split.i695.preheader ], [ %i.alb, %.lr.ph863.loopexit1081.unr-lcssa ]
  %.032.i696.epil.init = phi ptr [ %i.ajd, %.lr.ph.split.i695.preheader ], [ %i.alj, %.lr.ph863.loopexit1081.unr-lcssa ]
  %lcmp.mod1268 = trunc i32 %i.zk to i1
  call void @llvm.assume(i1 %lcmp.mod1268)
  %i.alw = load i16, ptr %.032.i696.epil.init, align 2, !tbaa !60 ; 3 uses
  %i.alx = lshr i16 %i.alw, 11
  %i.aly = zext nneg i16 %i.alx to i32
  %i.alz = add i32 %.epil.init1263, %i.aly
  %i.ama = lshr i16 %i.alw, 5
  %i.amb = and i16 %i.ama, 63
  %i.amc = zext nneg i16 %i.amb to i32
  %i.amd = add i32 %.epil.init1261, %i.amc
  %i.ame = and i16 %i.alw, 31
  %i.amf = zext nneg i16 %i.ame to i32
  %i.amg = add i32 %.epil.init1259, %i.amf
  br label %.lr.ph863

.lr.ph863:                                        ; preds = %.lr.ph.split.i695.epil.preheader, %.lr.ph863.loopexit1081.unr-lcssa, %.lr.ph.split.us.i703.epil.preheader, %.lr.ph863.loopexit.unr-lcssa
  %.us-phi.i700 = phi i32 [ %i.alv, %.lr.ph.split.us.i703.epil.preheader ], [ %i.akh, %.lr.ph863.loopexit.unr-lcssa ], [ %i.ali, %.lr.ph863.loopexit1081.unr-lcssa ], [ %i.amg, %.lr.ph.split.i695.epil.preheader ]
  %.us-phi37.i701 = phi i32 [ %i.als, %.lr.ph.split.us.i703.epil.preheader ], [ %i.ake, %.lr.ph863.loopexit.unr-lcssa ], [ %i.alf, %.lr.ph863.loopexit1081.unr-lcssa ], [ %i.amd, %.lr.ph.split.i695.epil.preheader ]
  %.us-phi38.i702 = phi i32 [ %i.alo, %.lr.ph.split.us.i703.epil.preheader ], [ %i.aka, %.lr.ph863.loopexit.unr-lcssa ], [ %i.alb, %.lr.ph863.loopexit1081.unr-lcssa ], [ %i.alz, %.lr.ph.split.i695.epil.preheader ]
  %i.amh = load i16, ptr %i.ajd, align 2, !tbaa !60
  %i.ami = add i16 %i.amh, 1
  %i.amj = shl i32 %.us-phi.i700, 12
  %i.amk = udiv i32 %i.amj, %i.zk
  %i.aml = shl i32 %.us-phi37.i701, 12
  %i.amm = udiv i32 %i.aml, %i.zk
  %i.amn = shl i32 %.us-phi38.i702, 12
  %i.amo = udiv i32 %i.amn, %i.zk
  %i.amp = zext i32 %i.zh to i64                  ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph863, %bb.bh
  %.0496862 = phi ptr [ %i.ajd, %.lr.ph863 ], [ %i.aoj, %bb.bh ] ; 5 uses
  %.2861 = phi i16 [ %i.ami, %.lr.ph863 ], [ %i.anx, %bb.bh ] ; 2 uses
  %.4860 = phi i32 [ %i.zb, %.lr.ph863 ], [ %i.aoa, %bb.bh ]
  %.sroa.0.16859 = phi i32 [ %i.amo, %.lr.ph863 ], [ %.sroa.0.17, %bb.bh ] ; 2 uses
  %.sroa.54.8858 = phi i32 [ %i.amm, %.lr.ph863 ], [ %.sroa.54.9, %bb.bh ] ; 2 uses
  %.sroa.86.8857 = phi i32 [ %i.amk, %.lr.ph863 ], [ %.sroa.86.9, %bb.bh ] ; 2 uses
  %i.amq = load i16, ptr %.0496862, align 2, !tbaa !60 ; 3 uses
  %.not573 = icmp eq i16 %.2861, %i.amq
  br i1 %.not573, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.amr = call i16 @llvm.bswap.i16(i16 %i.amq)
  %spec.select.i708 = select i1 %i.bt, i16 %i.amr, i16 %i.amq
  %i.ams = zext i16 %spec.select.i708 to i32      ; 3 uses
  %i.amt = lshr i32 %i.ams, 11
  %i.amu = lshr i32 %i.ams, 5
  %i.amv = and i32 %i.amu, 63
  %i.amw = and i32 %i.ams, 31
  %i.amx = mul i32 %.sroa.0.16859, %i.au
  %i.amy = lshr i32 %i.amx, 12
  %i.amz = mul i32 %i.amt, %i.xs
  %i.ana = add i32 %i.amz, %i.amy                 ; 2 uses
  %i.anb = mul i32 %.sroa.54.8858, %i.au
  %i.anc = lshr i32 %i.anb, 12
  %i.and = mul i32 %i.amv, %i.xs
  %i.ane = add i32 %i.and, %i.anc                 ; 2 uses
  %i.anf = mul i32 %.sroa.86.8857, %i.au
  %i.ang = lshr i32 %i.anf, 12
  %i.anh = mul i32 %i.amw, %i.xs
  %i.ani = add i32 %i.anh, %i.ang                 ; 2 uses
  %i.anj = add i32 %i.ana, 2048
  %i.ank = add i32 %i.ane, 2048
  %i.anl = add i32 %i.ani, 2048
  %i.anm = lshr i32 %i.anl, 12
  %i.ann = lshr i32 %i.anj, 1
  %i.ano = and i32 %i.ann, 63488
  %i.anp = lshr i32 %i.ank, 7
  %i.anq = and i32 %i.anp, 65504
  %i.anr = or i32 %i.ano, %i.anm
  %i.ans = or i32 %i.anr, %i.anq                  ; 2 uses
  %i.ant = and i32 %i.ans, 65535                  ; 2 uses
  %i.anu = lshr i32 %i.ant, 8
  %i.anv = shl nuw nsw i32 %i.ant, 8
  %i.anw = or disjoint i32 %i.anu, %i.anv
  %.0.in.i709 = select i1 %i.bt, i32 %i.anw, i32 %i.ans
  %.0.i710 = trunc i32 %.0.in.i709 to i16         ; 2 uses
  store i16 %.0.i710, ptr %.0496862, align 2, !tbaa !60
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.anx = phi i16 [ %.2861, %bb.ba ], [ %.0.i710, %bb.bb ] ; 3 uses
  %.sroa.86.9 = phi i32 [ %.sroa.86.8857, %bb.ba ], [ %i.ani, %bb.bb ]
  %.sroa.54.9 = phi i32 [ %.sroa.54.8858, %bb.ba ], [ %i.ane, %bb.bb ]
  %.sroa.0.17 = phi i32 [ %.sroa.0.16859, %bb.ba ], [ %i.ana, %bb.bb ]
  switch i32 %.1532, label %bb.be [
    i32 2, label %.sink.split1023
    i32 3, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.any = getelementptr inbounds nuw i8, ptr %.0496862, i64 2
  store i16 %i.anx, ptr %i.any, align 2, !tbaa !60
  br label %.sink.split1023
end_hunk_1
begin_hunk_2_@lv_draw_sw_blur:bb.a
  %i.arr = getelementptr inbounds nuw i8, ptr %.02224.i722, i64 1
  %i.ars = load volatile i8, ptr %i.arr, align 1, !tbaa !57
  %i.art = zext i8 %i.ars to i32
  %i.aru = add i32 %i.arm, %i.art
  %i.arv = getelementptr inbounds nuw i8, ptr %.02224.i722, i64 2
  %i.arw = load volatile i8, ptr %i.arv, align 1, !tbaa !57
  %i.arx = zext i8 %i.arw to i32
  %i.ary = add i32 %i.arl, %i.arx
  %i.arz = getelementptr inbounds i8, ptr %.02224.i722, i64 %i.yf ; 4 uses
  %i.asa = load volatile i8, ptr %i.arz, align 1, !tbaa !57
  %i.asb = zext i8 %i.asa to i32
  %i.asc = add i32 %i.arq, %i.asb                 ; 3 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.arz, i64 1
  %i.ase = load volatile i8, ptr %i.asd, align 1, !tbaa !57
  %i.asf = zext i8 %i.ase to i32
  %i.asg = add i32 %i.aru, %i.asf                 ; 3 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.arz, i64 2
  %i.asi = load volatile i8, ptr %i.ash, align 1, !tbaa !57
  %i.asj = zext i8 %i.asi to i32
  %i.ask = add i32 %i.ary, %i.asj                 ; 3 uses
  %i.asl = getelementptr inbounds i8, ptr %i.arz, i64 %i.yf ; 2 uses
  %niter1337.next.1 = add i32 %niter1337, 2       ; 2 uses
  %niter1337.ncmp.1 = icmp eq i32 %niter1337.next.1, %unroll_iter1336
  br i1 %niter1337.ncmp.1, label %.lr.ph891.unr-lcssa, label %bb.bk, !llvm.loop !16

.lr.ph891.unr-lcssa:                              ; preds = %bb.bk
  %lcmp.mod1331.not = icmp eq i32 %xtraiter1323, 0
  br i1 %lcmp.mod1331.not, label %.lr.ph891, label %.epil.preheader1322

.epil.preheader1322:                              ; preds = %.lr.ph891.unr-lcssa, %.lr.ph.i720
  %.epil.init1326 = phi i32 [ 0, %.lr.ph.i720 ], [ %i.ask, %.lr.ph891.unr-lcssa ]
  %.epil.init1328 = phi i32 [ 0, %.lr.ph.i720 ], [ %i.asg, %.lr.ph891.unr-lcssa ]
  %.epil.init1330 = phi i32 [ 0, %.lr.ph.i720 ], [ %i.asc, %.lr.ph891.unr-lcssa ]
  %.02224.i722.epil.init = phi ptr [ %i.arj, %.lr.ph.i720 ], [ %i.asl, %.lr.ph891.unr-lcssa ] ; 3 uses
  %lcmp.mod1335 = trunc i32 %i.zk to i1
  call void @llvm.assume(i1 %lcmp.mod1335)
  %i.asm = load volatile i8, ptr %.02224.i722.epil.init, align 1, !tbaa !57
  %i.asn = zext i8 %i.asm to i32
  %i.aso = add i32 %.epil.init1330, %i.asn
  %i.asp = getelementptr inbounds nuw i8, ptr %.02224.i722.epil.init, i64 1
  %i.asq = load volatile i8, ptr %i.asp, align 1, !tbaa !57
  %i.asr = zext i8 %i.asq to i32
  %i.ass = add i32 %.epil.init1328, %i.asr
  %i.ast = getelementptr inbounds nuw i8, ptr %.02224.i722.epil.init, i64 2
  %i.asu = load volatile i8, ptr %i.ast, align 1, !tbaa !57
  %i.asv = zext i8 %i.asu to i32
  %i.asw = add i32 %.epil.init1326, %i.asv
  br label %.lr.ph891

.lr.ph891:                                        ; preds = %.lr.ph891.unr-lcssa, %.epil.preheader1322
  %.lcssa1101 = phi i32 [ %i.asc, %.lr.ph891.unr-lcssa ], [ %i.aso, %.epil.preheader1322 ]
  %.lcssa1100 = phi i32 [ %i.asg, %.lr.ph891.unr-lcssa ], [ %i.ass, %.epil.preheader1322 ]
  %.lcssa1099 = phi i32 [ %i.ask, %.lr.ph891.unr-lcssa ], [ %i.asw, %.epil.preheader1322 ]
  %i.asx = shl i32 %.lcssa1099, 12
  %i.asy = udiv i32 %i.asx, %i.zk
  %i.asz = shl i32 %.lcssa1100, 12
  %i.ata = udiv i32 %i.asz, %i.zk
  %i.atb = shl i32 %.lcssa1101, 12
  %i.atc = udiv i32 %i.atb, %i.zk
  %i.atd = zext i32 %i.zh to i64                  ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph891, %bb.bq
  %.0890 = phi ptr [ %i.arj, %.lr.ph891 ], [ %i.auz, %bb.bq ] ; 9 uses
  %.6889 = phi i32 [ %i.zb, %.lr.ph891 ], [ %i.auq, %bb.bq ]
  %.sroa.0.19888 = phi i32 [ %i.atc, %.lr.ph891 ], [ %i.atj, %bb.bq ]
  %.sroa.54.11887 = phi i32 [ %i.ata, %.lr.ph891 ], [ %i.ats, %bb.bq ]
  %.sroa.86.11886 = phi i32 [ %i.asy, %.lr.ph891 ], [ %i.aub, %bb.bq ]
  %i.ate = mul i32 %.sroa.0.19888, %i.au
  %i.atf = lshr i32 %i.ate, 12
  %i.atg = load volatile i8, ptr %.0890, align 1, !tbaa !57
  %i.ath = zext i8 %i.atg to i32
  %i.ati = mul i32 %i.xs, %i.ath
  %i.atj = add i32 %i.ati, %i.atf                 ; 2 uses
  %i.atk = lshr i32 %i.atj, 12
  %i.atl = trunc i32 %i.atk to i8
  store volatile i8 %i.atl, ptr %.0890, align 1, !tbaa !57
  %i.atm = mul i32 %.sroa.54.11887, %i.au
  %i.atn = lshr i32 %i.atm, 12
  %i.ato = getelementptr inbounds nuw i8, ptr %.0890, i64 1 ; 4 uses
  %i.atp = load volatile i8, ptr %i.ato, align 1, !tbaa !57
  %i.atq = zext i8 %i.atp to i32
  %i.atr = mul i32 %i.xs, %i.atq
  %i.ats = add i32 %i.atr, %i.atn                 ; 2 uses
  %i.att = lshr i32 %i.ats, 12
  %i.atu = trunc i32 %i.att to i8
  store volatile i8 %i.atu, ptr %i.ato, align 1, !tbaa !57
  %i.atv = mul i32 %.sroa.86.11886, %i.au
  %i.atw = lshr i32 %i.atv, 12
  %i.atx = getelementptr inbounds nuw i8, ptr %.0890, i64 2 ; 4 uses
  %i.aty = load volatile i8, ptr %i.atx, align 1, !tbaa !57
  %i.atz = zext i8 %i.aty to i32
  %i.aua = mul i32 %i.xs, %i.atz
  %i.aub = add i32 %i.aua, %i.atw                 ; 2 uses
  %i.auc = lshr i32 %i.aub, 12
  %i.aud = trunc i32 %i.auc to i8
  store volatile i8 %i.aud, ptr %i.atx, align 1, !tbaa !57
  switch i32 %.1532, label %bb.bn [
    i32 2, label %.sink.split1025
    i32 3, label %bb.bm
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.aue = load volatile i8, ptr %.0890, align 1, !tbaa !57
  %i.auf = getelementptr inbounds nuw i8, ptr %.0890, i64 %i.yg ; 3 uses
  store volatile i8 %i.aue, ptr %i.auf, align 1, !tbaa !57
  %i.aug = load volatile i8, ptr %i.ato, align 1, !tbaa !57
  %i.auh = getelementptr inbounds nuw i8, ptr %i.auf, i64 1
  store volatile i8 %i.aug, ptr %i.auh, align 1, !tbaa !57
  %i.aui = load volatile i8, ptr %i.atx, align 1, !tbaa !57
  %i.auj = getelementptr inbounds nuw i8, ptr %i.auf, i64 2
  store volatile i8 %i.aui, ptr %i.auj, align 1, !tbaa !57
  br label %.sink.split1025

.sink.split1025:                                  ; preds = %bb.bl, %bb.bm
  %.sink1031 = phi i64 [ %i.yi, %bb.bm ], [ %i.yg, %bb.bl ]
  %i.auk = load volatile i8, ptr %.0890, align 1, !tbaa !57
  %i.aul = getelementptr inbounds nuw i8, ptr %.0890, i64 %.sink1031 ; 3 uses
  store volatile i8 %i.auk, ptr %i.aul, align 1, !tbaa !57
  %i.aum = load volatile i8, ptr %i.ato, align 1, !tbaa !57
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aul, i64 1
  store volatile i8 %i.aum, ptr %i.aun, align 1, !tbaa !57
  %i.auo = load volatile i8, ptr %i.atx, align 1, !tbaa !57
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aul, i64 2
  store volatile i8 %i.auo, ptr %i.aup, align 1, !tbaa !57
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split1025, %bb.bl
  %i.auq = add nsw i32 %.6889, %.1532             ; 2 uses
  %i.aur = icmp sgt i32 %i.auq, %i.zd             ; 2 uses
  %or.cond608 = select i1 %i.xv, i1 %i.aur, i1 false
  br i1 %or.cond608, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.aus = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !52
  %i.auu = call ptr @lv_draw_buf_goto_xy(ptr noundef %i.aut, i32 noundef %i.zb, i32 noundef %.6529893) #5 ; 4 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 %i.xw
  %i.auw = call ptr @lv_memcpy(ptr noundef %i.auv, ptr noundef %i.auu, i64 noundef %i.atd) #5 ; 0 uses
  br i1 %i.xx, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auu, i64 %i.xz
  %i.auy = call ptr @lv_memcpy(ptr noundef %i.aux, ptr noundef %i.auu, i64 noundef %i.atd) #5 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp, %bb.bn
  %i.auz = getelementptr inbounds i8, ptr %.0890, i64 %i.yc
  br i1 %i.aur, label %.loopexit, label %bb.bl, !llvm.loop !27

.loopexit:                                        ; preds = %bb.bh, %bb.ax, %bb.bq, %bb.bi, %get_rounded_edge_point.exit658
  %i.ava = add nsw i32 %.6529893, %.1532          ; 2 uses
  %i.avb = load i32, ptr %i.ab, align 4, !tbaa !56
  %.not566 = icmp sgt i32 %i.ava, %i.avb
  br i1 %.not566, label %.loopexit759, label %bb.ae, !llvm.loop !28

.loopexit759:                                     ; preds = %.loopexit, %._crit_edge, %.thread, %bb.h, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.br

bb.br:                                            ; preds = %bb.a, %.loopexit759
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @lv_area_intersect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_area_move(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_area_get_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @lv_color_format_get_size(i32 noundef) local_unnamed_addr #2

declare ptr @lv_draw_buf_goto_xy(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lv_sqrt32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !58}
!9 = distinct !{!9, !59}
!10 = distinct !{!10, !58}
!11 = distinct !{!11, !59}
!12 = distinct !{!12, !58}
!13 = distinct !{!13, !58}
!14 = distinct !{!14, !58}
!15 = distinct !{!15, !58}
!16 = distinct !{!16, !58}
!17 = distinct !{!17, !58}
!18 = distinct !{!18, !58}
!19 = distinct !{!19, !58}
!20 = distinct !{!20, !59}
!21 = distinct !{!21, !58}
!22 = distinct !{!22, !59}
!23 = distinct !{!23, !58}
!24 = distinct !{!24, !58}
!25 = distinct !{!25, !58}
!26 = distinct !{!26, !58}
!27 = distinct !{!27, !58}
!28 = distinct !{!28, !58}
!29 = !{!"any pointer", !4, i64 0}
!30 = !{!"p1 _ZTS9_lv_obj_t", !29, i64 0}
!31 = !{!"p1 _ZTS11_lv_layer_t", !29, i64 0}
!32 = !{!"short", !4, i64 0}
!33 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!34 = !{!"long", !4, i64 0}
!35 = !{!"", !30, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !31, i64 24, !32, i64 32, !32, i64 34, !33, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !34, i64 48, !29, i64 56}
!36 = !{!"", !35, i64 0, !5, i64 64, !5, i64 68, !5, i64 72}
!37 = !{!36, !5, i64 64}
!38 = !{!"p1 _ZTS15_lv_draw_task_t", !29, i64 0}
!39 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!40 = !{!"p1 _ZTS15_lv_draw_unit_t", !29, i64 0}
!41 = !{!"_lv_draw_task_t", !38, i64 0, !5, i64 8, !39, i64 12, !39, i64 28, !39, i64 44, !39, i64 60, !31, i64 80, !40, i64 88, !5, i64 96, !29, i64 104, !4, i64 112, !4, i64 113, !4, i64 114}
!42 = !{!41, !31, i64 80}
!43 = !{!"p1 _ZTS14_lv_draw_buf_t", !29, i64 0}
!44 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!45 = !{!"_Bool", !4, i64 0}
!46 = !{!"_lv_layer_t", !43, i64 0, !38, i64 8, !31, i64 16, !31, i64 24, !29, i64 32, !39, i64 40, !39, i64 56, !39, i64 72, !5, i64 88, !44, i64 92, !5, i64 96, !45, i64 100, !4, i64 101}
!47 = !{!46, !5, i64 40}
!48 = !{!46, !5, i64 44}
!49 = !{!36, !5, i64 72}
!50 = !{!36, !5, i64 68}
!51 = !{!5, !5, i64 0}
!52 = !{!46, !43, i64 0}
!53 = !{!39, !5, i64 0}
!54 = !{!39, !5, i64 8}
!55 = !{!39, !5, i64 4}
!56 = !{!39, !5, i64 12}
!57 = !{!4, !4, i64 0}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!32, !32, i64 0}
end_hunk_2
