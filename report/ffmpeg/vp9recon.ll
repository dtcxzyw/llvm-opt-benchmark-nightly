Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9recon?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ff_vp9_bwh_tab = external local_unnamed_addr constant [2 x [13 x [2 x i8]]], align 16
@ff_vp9_intra_txfm_type = external local_unnamed_addr constant [14 x i32], align 16
@check_intra_mode.mode_conv = internal unnamed_addr constant [10 x [2 x [2 x i8]]] [[2 x [2 x i8]] [[2 x i8] c"\0D\00", [2 x i8] c"\0D\00"], [2 x [2 x i8]] [[2 x i8] c"\0E\0E", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\0C\0B", [2 x i8] c"\0A\02"], [2 x [2 x i8]] [[2 x i8] c"\0D\03", [2 x i8] c"\0D\03"], [2 x [2 x i8]] [[2 x i8] c"\04\04", [2 x i8] c"\04\04"], [2 x [2 x i8]] [[2 x i8] c"\05\05", [2 x i8] c"\05\05"], [2 x [2 x i8]] [[2 x i8] c"\06\06", [2 x i8] c"\06\06"], [2 x [2 x i8]] [[2 x i8] c"\0D\07", [2 x i8] c"\0D\07"], [2 x [2 x i8]] [[2 x i8] c"\0E\0E", [2 x i8] c"\08\08"], [2 x [2 x i8]] [[2 x i8] c"\0E\00", [2 x i8] c"\01\09"]], align 16
@.str = private unnamed_addr constant [65 x i8] c"Bitstream not supported, reference frame has invalid dimensions\0A\00", align 1
@inter_pred_16bpp.bwlog_tab = internal unnamed_addr constant [2 x [13 x i8]] [[13 x i8] c"\00\00\01\01\01\02\02\02\03\03\03\04\04", [13 x i8] c"\01\01\02\02\02\03\03\03\04\04\04\04\04"], align 16

; Function Attrs: nounwind uwtable
define void @ff_vp9_intra_recon_8bpp(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 10 uses
  %i.b = alloca [64 x i8], align 16               ; 45 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 4 uses
  %i.d = load ptr, ptr %0, align 16, !tbaa !34    ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !36   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 16, !tbaa !37  ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_vp9_bwh_tab, i64 26), i64 %i.m ; 2 uses
  %i.o = load i8, ptr %i.n, align 2, !tbaa !40
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 1                  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 52 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !41   ; 4 uses
  %i.t = shl nuw i32 1, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !40
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 1
  %i.y = shl i32 %i.s, 1
  %i.z = shl nuw i32 1, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 3964
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !66
  %i.ac = sub i32 %i.ab, %i.j
  %i.ad = shl i32 %i.ac, 1
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.q) ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 3960
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !67
  %i.ag = sub i32 %i.af, %i.h
  %i.ah = shl i32 %i.ag, 1
  %i.ai = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 %i.x) ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !68
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 2                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !69 ; 5 uses
  %i.ap = add i32 %i.am, %i.ao
  %i.aq = shl nuw i32 1, %i.ao                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 448 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !76 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.._crit_edge118_crit_edge, label %.preheader93.lr.ph

.._crit_edge118_crit_edge:                        ; preds = %bb.a
  %.pre205 = and i32 %i.h, 7
  br label %._crit_edge118

.preheader93.lr.ph:                               ; preds = %bb.a
  %i.aw = add i32 %i.am, %i.s
  %.not149 = icmp eq i32 %..i, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 5 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 10 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 77112 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bc = icmp sgt i32 %i.h, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = and i32 %i.h, 7                         ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 1376
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 1856
  %i.bk = sext i32 %i.aw to i64
  %i.bl = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 77048
  %i.bn = shl i32 4, %i.s                         ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  br i1 %.not149, label %._crit_edge118, label %.preheader93.us.preheader

.preheader93.us.preheader:                        ; preds = %.preheader93.lr.ph
  %i.bp = shl nsw i32 %i.j, 3
  %i.bq = add nsw i32 %i.q, -1
  %i.br = getelementptr inbounds i8, ptr %i.av, i64 %1
  %i.bs = sext i32 %i.t to i64                    ; 2 uses
  %i.bt = sext i32 %i.bq to i64
  %i.bu = zext nneg i32 %..i to i64
  %i.bv = sext i32 %i.bp to i64
  %i.bw = zext nneg i32 %i.z to i64
  %i.bx = zext nneg i32 %i.ai to i64
  %scevgep286 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %scevgep288 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.preheader93.us

.preheader93.us:                                  ; preds = %.preheader93.us.preheader, %._crit_edge113.us
  %indvars.iv176 = phi i64 [ 0, %.preheader93.us.preheader ], [ %indvars.iv.next177, %._crit_edge113.us ] ; 5 uses
  %.0178.i117.us = phi ptr [ %i.br, %.preheader93.us.preheader ], [ %i.me, %._crit_edge113.us ] ; 2 uses
  %.0179.i116.us = phi ptr [ %i.as, %.preheader93.us.preheader ], [ %i.mh, %._crit_edge113.us ] ; 2 uses
  %.0186.i114.us = phi i64 [ 0, %.preheader93.us.preheader ], [ %indvars.iv.next172, %._crit_edge113.us ]
  %i.by = shl nsw i64 %indvars.iv176, 1
  %i.bz = icmp sgt i64 %indvars.iv176, 0
  %i.ca = or i1 %i.bc, %i.bz                      ; 5 uses
  %i.cb = zext i1 %i.ca to i64
  %i.cc = trunc nsw i64 %indvars.iv176 to i32     ; 2 uses
  %i.cd = or i32 %i.be, %i.cc
  %or.cond3.not.i.us = icmp eq i32 %i.cd, 0
  %i.ce = icmp eq i64 %indvars.iv176, 0           ; 2 uses
  %i.cf = select i1 %i.ca, i32 1, i32 255
  %i.cg = shl i32 %i.cc, 2
  %invariant.gep = getelementptr i8, ptr %i.ax, i64 %i.by
  br label %bb.b

bb.b:                                             ; preds = %.preheader93.us, %bb.af
  %indvars.iv171 = phi i64 [ %.0186.i114.us, %.preheader93.us ], [ %indvars.iv.next172, %bb.af ] ; 4 uses
  %indvars.iv169 = phi i64 [ 0, %.preheader93.us ], [ %indvars.iv.next170, %bb.af ] ; 8 uses
  %.0176.i109.us = phi ptr [ %.0178.i117.us, %.preheader93.us ], [ %i.jp, %bb.af ] ; 3 uses
  %.0177.i106.us = phi ptr [ %.0179.i116.us, %.preheader93.us ], [ %i.jo, %bb.af ] ; 5 uses
  %i.ch = load i32, ptr %i.k, align 4, !tbaa !39
  %i.ci = icmp ugt i32 %i.ch, 9
  %.pre.pre = load i32, ptr %i.r, align 4, !tbaa !41 ; 7 uses
  %i.cj = icmp eq i32 %.pre.pre, 0
  %or.cond = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ck = load i8, ptr %i.ax, align 1, !tbaa !40
  %i.cl = zext i8 %i.ck to i64                    ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !77 ; 3 uses
  %i.co = load i8, ptr %i.az, align 2, !tbaa !78
  %.not196.i.us = icmp eq i8 %i.co, 0
  br i1 %.not196.i.us, label %bb.d, label %bb.f

.thread:                                          ; preds = %bb.b
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv169
  %i.cp = load i8, ptr %gep, align 1, !tbaa !40
  %i.cq = zext i8 %i.cp to i64                    ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !77 ; 2 uses
  %i.ct = load i8, ptr %i.az, align 2, !tbaa !78
  %.not196.i.us235 = icmp eq i8 %i.ct, 0
  br i1 %.not196.i.us235, label %.thread236, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cu = icmp ugt i32 %.pre.pre, 1
  br i1 %i.cu, label %bb.e, label %.thread236

.thread236:                                       ; preds = %.thread, %bb.d
  %i.cv = phi i64 [ %i.cl, %bb.d ], [ %i.cq, %.thread ]
  %i.cw = phi i32 [ %i.cn, %bb.d ], [ %i.cs, %.thread ]
  %i.cx = load ptr, ptr %i.ba, align 8, !tbaa !79
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %indvars.iv171
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !40
  %i.da = zext i8 %i.cz to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.db = load ptr, ptr %i.ba, align 8, !tbaa !79
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %indvars.iv171
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !40
  %i.de = zext i16 %i.dd to i32
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %.thread236, %bb.c
  %i.df = phi i32 [ %i.cn, %bb.c ], [ %i.cn, %bb.e ], [ %i.cw, %.thread236 ], [ %i.cs, %.thread ]
  %i.dg = phi i64 [ %i.cl, %bb.c ], [ %i.cl, %bb.e ], [ %i.cv, %.thread236 ], [ %i.cq, %.thread ]
  %i.dh = phi i32 [ 0, %bb.c ], [ %i.de, %bb.e ], [ %i.da, %.thread236 ], [ 0, %.thread ] ; 2 uses
  %i.di = load ptr, ptr %i.at, align 8, !tbaa !76
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !77
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = load i64, ptr %i.bb, align 16, !tbaa !80 ; 3 uses
  %i.dn = load ptr, ptr %0, align 16, !tbaa !34   ; 4 uses
  %i.do = load i32, ptr %i.bd, align 16, !tbaa !81
  %i.dp = icmp ugt i32 %i.j, %i.do
  %i.dq = icmp sgt i64 %indvars.iv169, 0
  %i.dr = or i1 %i.dq, %i.dp                      ; 5 uses
  %i.ds = icmp slt i64 %indvars.iv169, %i.bt      ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !82
  %i.dv = zext i8 %i.du to i32                    ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @check_intra_mode.mode_conv, i64 %i.dg
  %i.dx = zext i1 %i.dr to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.cb
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !40  ; 3 uses
  %i.eb = zext i8 %i.ea to i64                    ; 2 uses
  %i.ec = shl nuw i64 1, %i.eb                    ; 4 uses
  %i.ed = and i64 %i.ec, 29954
  %.not.not.i.us = icmp eq i64 %i.ed, 0
  br i1 %.not.not.i.us, label %bb.g, label %bb.y

bb.g:                                             ; preds = %bb.f
  %i.ee = shl i32 4, %.pre.pre                    ; 7 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 3964
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !66
  %i.eh = sub i32 %i.eg, %i.j
  %i.ei = shl i32 %i.eh, 3
  %i.ej = trunc nsw i64 %indvars.iv169 to i32
  %i.ek = shl i32 %i.ej, 2
  %i.el = sub i32 %i.ei, %i.ek                    ; 6 uses
  %i.em = icmp eq i32 %.pre.pre, 0                ; 2 uses
  %i.en = and i8 %i.ea, -5                        ; 2 uses
  %i.eo = icmp eq i8 %i.en, 3                     ; 2 uses
  %or.cond.i.us = select i1 %i.eo, i1 %i.ds, i1 false
  %spec.select.i.us = select i1 %or.cond.i.us, i32 4, i32 0 ; 2 uses
  br i1 %i.ca, label %bb.h, label %.critedge.i.us

.critedge.i.us:                                   ; preds = %bb.g
  %i.ep = add nsw i32 %i.dv, -8
  %i.eq = shl i32 128, %i.ep
  %i.er = trunc i32 %i.eq to i8
  %i.es = add i8 %i.er, -1
  %i.et = sext i32 %i.ee to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.ay, i8 %i.es, i64 %i.et, i1 false)
  %.pre203 = and i64 %i.ec, 2189
  br label %bb.q

bb.h:                                             ; preds = %bb.g
  br i1 %or.cond3.not.i.us, label %.thread.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eu = sub nsw i64 0, %i.dm
  %i.ev = getelementptr inbounds i8, ptr %.0177.i106.us, i64 %i.eu ; 2 uses
  %i.ew = sub nsw i64 0, %i.dl
  %i.ex = getelementptr inbounds i8, ptr %.0176.i109.us, i64 %i.ew ; 2 uses
  %i.ey = select i1 %i.ce, ptr %i.ex, ptr %i.ev   ; 2 uses
  br i1 %i.dr, label %bb.j, label %.thread61.us

bb.j:                                             ; preds = %bb.i
  %i.ez = icmp eq i64 %indvars.iv169, 0
  %or.cond7.i.us = or i1 %i.ce, %i.ez
  %spec.select = select i1 %or.cond7.i.us, ptr %i.ex, ptr %i.ev
  br label %.thread61.us

.thread.us:                                       ; preds = %bb.h
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dn, i64 19136
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !70
  %i.fc = shl nsw i64 %indvars.iv169, 2
  %i.fd = getelementptr i8, ptr %i.fb, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.bv  ; 2 uses
  br label %.thread61.us

.thread61.us:                                     ; preds = %bb.j, %.thread.us, %bb.i
  %.0280.i.ph.us = phi ptr [ %i.fe, %.thread.us ], [ %i.ey, %bb.j ], [ %i.ey, %bb.i ] ; 7 uses
  %.0279.i.ph.us = phi ptr [ %i.fe, %.thread.us ], [ %spec.select, %bb.j ], [ undef, %bb.i ] ; 3 uses
  %i.ff = and i64 %i.ec, 2189                     ; 3 uses
  %.not289.not.i.us = icmp ne i64 %i.ff, 0
  %i.fg = icmp eq ptr %.0280.i.ph.us, %.0279.i.ph.us
  %or.cond301.i.us = select i1 %i.dr, i1 %i.fg, i1 false
  %or.cond308.i.us = select i1 %.not289.not.i.us, i1 true, i1 %or.cond301.i.us
  br i1 %or.cond308.i.us, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.thread61.us
  br i1 %i.em, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not291.old.i.us = icmp sgt i32 %i.ee, %i.el
  br i1 %.not291.old.i.us, label %bb.n, label %bb.y

bb.m:                                             ; preds = %bb.k
  %i.fh = icmp ne i8 %i.en, 3
  %or.cond9.i.us = select i1 %i.fh, i1 true, i1 %i.ds
  %i.fi = add nuw nsw i32 %spec.select.i.us, %i.ee
  %.not291.i.us = icmp sle i32 %i.fi, %i.el
  %or.cond302.i.not.us = select i1 %or.cond9.i.us, i1 %.not291.i.us, i1 false
  br i1 %or.cond302.i.not.us, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.thread61.us
  %.not292.i.us = icmp sgt i32 %i.ee, %i.el
  br i1 %.not292.i.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fj = sext i32 %i.ee to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ay, ptr align 1 %.0280.i.ph.us, i64 %i.fj, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.fk = sext i32 %i.el to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ay, ptr align 1 %.0280.i.ph.us, i64 %i.fk, i1 false)
  %i.fl = getelementptr i8, ptr %i.ay, i64 %i.fk  ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 -1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !40
  %i.fo = sub nsw i32 %i.ee, %i.el
  %i.fp = zext nneg i32 %i.fo to i64
  call void @llvm.memset.p0.i64(ptr align 4 %i.fl, i8 %i.fn, i64 %i.fp, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.critedge.i.us
  %.pre-phi204 = phi i64 [ %i.ff, %bb.p ], [ %i.ff, %bb.o ], [ %.pre203, %.critedge.i.us ]
  %.0279.i68.us = phi ptr [ %.0279.i.ph.us, %bb.p ], [ %.0279.i.ph.us, %bb.o ], [ undef, %.critedge.i.us ]
  %.0280.i65.us = phi ptr [ %.0280.i.ph.us, %bb.p ], [ %.0280.i.ph.us, %bb.o ], [ undef, %.critedge.i.us ]
  %.not293.not.i.us = icmp eq i64 %.pre-phi204, 0
  br i1 %.not293.not.i.us, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %or.cond11.i.us = and i1 %i.ca, %i.dr
  br i1 %or.cond11.i.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fq = add nsw i32 %i.dv, -8
  %i.fr = shl i32 128, %i.fq
  %i.fs = add nuw i32 %i.fr, %i.cf
  %i.ft = trunc i32 %i.fs to i8
  br label %.sink.split

bb.t:                                             ; preds = %bb.r
  %i.fu = getelementptr inbounds i8, ptr %.0279.i68.us, i64 -1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.t
  %.sink = phi i8 [ %i.fv, %bb.t ], [ %i.ft, %bb.s ]
  store i8 %.sink, ptr %i.bf, align 1, !tbaa !40
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.q
  %or.cond304.i.us = and i1 %i.em, %i.eo
  br i1 %or.cond304.i.us, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %or.cond13.i.us = select i1 %i.ca, i1 %i.ds, i1 false
  %i.fw = add nuw nsw i32 %spec.select.i.us, %i.ee
  %.not295.i.us = icmp sle i32 %i.fw, %i.el
  %or.cond306.i.not.us = select i1 %or.cond13.i.us, i1 %.not295.i.us, i1 false
  br i1 %or.cond306.i.not.us, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fx = load i8, ptr %i.bh, align 1, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4) %i.bg, i8 %i.fx, i64 4, i1 false)
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.fy = getelementptr inbounds nuw i8, ptr %.0280.i65.us, i64 4
  %i.fz = load i32, ptr %i.fy, align 1
  store i32 %i.fz, ptr %i.bg, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u, %bb.m, %bb.l, %bb.f
  %.060.us = phi ptr [ %i.ay, %bb.w ], [ %i.ay, %bb.x ], [ %i.ay, %bb.u ], [ %i.ay, %bb.f ], [ %.0280.i.ph.us, %bb.l ], [ %.0280.i.ph.us, %bb.m ]
  %i.ga = and i64 %i.ec, 30857
  %.not296.not.i.us = icmp eq i64 %i.ga, 0
  br i1 %.not296.not.i.us, label %bb.z, label %check_intra_mode.exit.us

bb.z:                                             ; preds = %bb.y
  br i1 %i.dr, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gb = add nsw i32 %i.dv, -8
  %i.gc = shl i32 128, %i.gb
  %i.gd = trunc i32 %i.gc to i8
  %i.ge = or disjoint i8 %i.gd, 1
  %i.gf = shl i32 4, %.pre.pre
  %i.gg = sext i32 %i.gf to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 %i.ge, i64 %i.gg, i1 false)
  br label %check_intra_mode.exit.us

bb.ab:                                            ; preds = %bb.z
  %i.gh = shl i32 4, %.pre.pre                    ; 16 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dn, i64 3960
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !67
  %i.gk = sub i32 %i.gj, %i.h
  %i.gl = shl i32 %i.gk, 3
  %i.gm = sub i32 %i.gl, %i.cg                    ; 11 uses
  %i.gn = icmp eq i64 %indvars.iv169, 0           ; 2 uses
  %i.go = select i1 %i.gn, ptr %.0176.i109.us, ptr %.0177.i106.us ; 21 uses
  %i.gp = ptrtoaddr ptr %i.go to i64              ; 2 uses
  %i.gq = select i1 %i.gn, i64 %i.dl, i64 %i.dm   ; 14 uses
  %.not298.not.i.us = icmp eq i8 %i.ea, 8
  %.not300.i.us = icmp sgt i32 %i.gh, %i.gm       ; 2 uses
  br i1 %.not298.not.i.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not300.i.us, label %.preheader90.us, label %.preheader91.us

.lr.ph.us:                                        ; preds = %.lr.ph.us, %.lr.ph.us.preheader
  %indvars.iv = phi i64 [ %indvars.iv.ph, %.lr.ph.us.preheader ], [ %indvars.iv.next.3, %.lr.ph.us ] ; 9 uses
  %i.gr = mul nsw i64 %i.gq, %indvars.iv
  %i.gs = getelementptr inbounds i8, ptr %i.go, i64 %i.gr
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !40
  %i.gv = xor i64 %indvars.iv, -1
  %i.gw = getelementptr i8, ptr %i.lj, i64 %i.gv
  store i8 %i.gu, ptr %i.gw, align 1, !tbaa !40
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.gx = mul nsw i64 %i.gq, %indvars.iv.next
  %i.gy = getelementptr inbounds i8, ptr %i.go, i64 %i.gx
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !40
  %i.hb = xor i64 %indvars.iv, -2
  %i.hc = getelementptr i8, ptr %i.lj, i64 %i.hb
  store i8 %i.ha, ptr %i.hc, align 2, !tbaa !40
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.hd = mul nsw i64 %i.gq, %indvars.iv.next.1
  %i.he = getelementptr inbounds i8, ptr %i.go, i64 %i.hd
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !40
  %i.hh = xor i64 %indvars.iv, -3
  %i.hi = getelementptr i8, ptr %i.lj, i64 %i.hh
  store i8 %i.hg, ptr %i.hi, align 1, !tbaa !40
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.hj = mul nsw i64 %i.gq, %indvars.iv.next.2
  %i.hk = getelementptr inbounds i8, ptr %i.go, i64 %i.hj
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 -1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !40
  %i.hn = xor i64 %indvars.iv, -4
  %i.ho = getelementptr i8, ptr %i.lj, i64 %i.hn
  store i8 %i.hm, ptr %i.ho, align 4, !tbaa !40
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %check_intra_mode.exit.us, label %.lr.ph.us, !llvm.loop !114

.lr.ph96.us:                                      ; preds = %.lr.ph96.us.preheader, %.lr.ph96.us
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %.lr.ph96.us ], [ %indvars.iv158.ph, %.lr.ph96.us.preheader ] ; 3 uses
  %i.hp = mul nsw i64 %i.gq, %indvars.iv158
  %i.hq = getelementptr inbounds i8, ptr %i.go, i64 %i.hp
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !40
  %3 = trunc nuw nsw i64 %indvars.iv158 to i32
  %4 = xor i32 %3, -1
  %5 = add i32 %i.gh, %4
  %6 = sext i32 %5 to i64
  %i.ht = getelementptr inbounds i8, ptr %i.b, i64 %6
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !40
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.hu = icmp samesign ult i64 %indvars.iv.next159, %7
  br i1 %i.hu, label %.lr.ph96.us, label %._crit_edge.us, !llvm.loop !115

._crit_edge.us:                                   ; preds = %.lr.ph96.us, %middle.block301, %vec.epilog.middle.block315, %.preheader90.us
  %i.hv = sub nsw i32 %i.gh, %i.gm
  %i.hw = sext i32 %i.hv to i64                   ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %i.b, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 4, !tbaa !40
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 %i.hy, i64 %i.hw, i1 false)
  br label %check_intra_mode.exit.us

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not300.i.us, label %.preheader88.us, label %.preheader89.us

.lr.ph98.us:                                      ; preds = %.lr.ph98.us, %.lr.ph98.us.preheader
  %indvars.iv161 = phi i64 [ %indvars.iv161.ph, %.lr.ph98.us.preheader ], [ %indvars.iv.next162.3, %.lr.ph98.us ] ; 6 uses
  %i.hz = mul nsw i64 %i.gq, %indvars.iv161
  %i.ia = getelementptr inbounds i8, ptr %i.go, i64 %i.hz
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -1
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !40
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv161
  store i8 %i.ic, ptr %i.id, align 4, !tbaa !40
  %indvars.iv.next162 = or disjoint i64 %indvars.iv161, 1 ; 2 uses
  %i.ie = mul nsw i64 %i.gq, %indvars.iv.next162
  %i.if = getelementptr inbounds i8, ptr %i.go, i64 %i.ie
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -1
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !40
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next162
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !40
  %indvars.iv.next162.1 = or disjoint i64 %indvars.iv161, 2 ; 2 uses
  %i.ij = mul nsw i64 %i.gq, %indvars.iv.next162.1
  %i.ik = getelementptr inbounds i8, ptr %i.go, i64 %i.ij
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !40
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next162.1
  store i8 %i.im, ptr %i.in, align 2, !tbaa !40
  %indvars.iv.next162.2 = or disjoint i64 %indvars.iv161, 3 ; 2 uses
  %i.io = mul nsw i64 %i.gq, %indvars.iv.next162.2
  %i.ip = getelementptr inbounds i8, ptr %i.go, i64 %i.io
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 -1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !40
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next162.2
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !40
  %indvars.iv.next162.3 = add nuw nsw i64 %indvars.iv161, 4 ; 2 uses
  %exitcond165.not.3 = icmp eq i64 %indvars.iv.next162.3, %wide.trip.count164
  br i1 %exitcond165.not.3, label %check_intra_mode.exit.us, label %.lr.ph98.us, !llvm.loop !116

.lr.ph100.us:                                     ; preds = %.lr.ph100.us.preheader, %.lr.ph100.us
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %.lr.ph100.us ], [ %indvars.iv166.ph, %.lr.ph100.us.preheader ] ; 3 uses
  %i.it = mul nsw i64 %i.gq, %indvars.iv166
  %i.iu = getelementptr inbounds i8, ptr %i.go, i64 %i.it
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !40
  %i.ix = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv166
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !40
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.iy = icmp samesign ult i64 %indvars.iv.next167, %i.js
  br i1 %i.iy, label %.lr.ph100.us, label %._crit_edge101.us, !llvm.loop !117

._crit_edge101.us:                                ; preds = %vec.epilog.vector.body, %.lr.ph100.us, %middle.block, %.preheader88.us.._crit_edge101.us_crit_edge
  %.pre-phi210 = phi i64 [ %.pre209, %.preheader88.us.._crit_edge101.us_crit_edge ], [ %i.js, %.lr.ph100.us ], [ %i.js, %middle.block ], [ %i.js, %vec.epilog.vector.body ]
  %i.iz = getelementptr i8, ptr %i.b, i64 %.pre-phi210 ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 -1
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !40
  %i.jc = sub nsw i32 %i.gh, %i.gm
  %i.jd = sext i32 %i.jc to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iz, i8 %i.jb, i64 %i.jd, i1 false)
  br label %check_intra_mode.exit.us

check_intra_mode.exit.us:                         ; preds = %.lr.ph.us, %vec.epilog.vector.body275, %.lr.ph98.us, %middle.block338, %vec.epilog.middle.block352, %middle.block266, %.preheader91.us, %.preheader89.us, %._crit_edge101.us, %._crit_edge.us, %bb.aa, %bb.y
  %i.je = zext i32 %.pre.pre to i64
  %i.jf = getelementptr inbounds nuw [120 x i8], ptr %i.bi, i64 %i.je
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.eb
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !85
  call void %i.jh(ptr noundef %.0177.i106.us, i64 noundef %i.dm, ptr noundef nonnull %i.b, ptr noundef %.060.us) #5, !inline_history !0
  %.not197.i.us = icmp eq i32 %i.dh, 0
  br i1 %.not197.i.us, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %check_intra_mode.exit.us
  %i.ji = zext i32 %i.df to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ji
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !85
  %i.jl = load i64, ptr %i.bb, align 16, !tbaa !80
  %i.jm = load ptr, ptr %i.bm, align 8, !tbaa !86
  %.idx = shl nsw i64 %indvars.iv171, 5
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 %.idx
  call void %i.jk(ptr noundef %.0177.i106.us, i64 noundef %i.jl, ptr noundef %i.jn, i32 noundef %i.dh) #5, !inline_history !0
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %check_intra_mode.exit.us
  %indvars.iv.next170 = add nsw i64 %indvars.iv169, %i.bs ; 2 uses
  %i.jo = getelementptr inbounds i8, ptr %.0177.i106.us, i64 %i.bo
  %i.jp = getelementptr inbounds i8, ptr %.0176.i109.us, i64 %i.bo
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, %i.bw ; 2 uses
  %i.jq = icmp slt i64 %indvars.iv.next170, %i.bu
  br i1 %i.jq, label %bb.b, label %._crit_edge113.us, !llvm.loop !1

.preheader88.us:                                  ; preds = %bb.ad
  %i.jr = icmp sgt i32 %i.gm, 0
  br i1 %i.jr, label %iter.check, label %.preheader88.us.._crit_edge101.us_crit_edge

.preheader88.us.._crit_edge101.us_crit_edge:      ; preds = %.preheader88.us
  %.pre209 = sext i32 %i.gm to i64
  br label %._crit_edge101.us

iter.check:                                       ; preds = %.preheader88.us
  %i.js = zext nneg i32 %i.gm to i64              ; 8 uses
  %ident.check.not = icmp ne i64 %i.gq, 1
  %i.jt = sub i64 %i.c, %i.gp
  %diff.check = icmp ult i64 %i.jt, 31
  %or.cond492.a = select i1 %ident.check.not, i1 true, i1 %diff.check
  br i1 %or.cond492.a, label %.lr.ph100.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp ult i32 %i.gm, 32
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ju = and i64 %i.js, 28
  %n.vec = and i64 %i.js, 2147483616              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jv = getelementptr inbounds i8, ptr %i.go, i64 %index ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 15
  %wide.load = load <16 x i8>, ptr %i.jw, align 1, !tbaa !40
  %wide.load247 = load <16 x i8>, ptr %i.jx, align 1, !tbaa !40
  %i.jy = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store <16 x i8> %wide.load, ptr %i.jy, align 16, !tbaa !40
  store <16 x i8> %wide.load247, ptr %i.jz, align 16, !tbaa !40
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ka = icmp eq i64 %index.next, %n.vec
  br i1 %i.ka, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.js
  br i1 %cmp.n, label %._crit_edge101.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ju, 0
  br i1 %min.epilog.iters.check, label %.lr.ph100.us.preheader, label %vec.epilog.vector.body.preheader, !prof !150

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index249.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

.lr.ph100.us.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check
  %indvars.iv166.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %.lr.ph100.us

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index249 = phi i64 [ %index.next251, %vec.epilog.vector.body ], [ %index249.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.kb = getelementptr inbounds i8, ptr %i.go, i64 %index249
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 -1
  %wide.load250 = load <4 x i8>, ptr %i.kc, align 1, !tbaa !40
  %i.kd = getelementptr inbounds nuw i8, ptr %i.b, i64 %index249
  store <4 x i8> %wide.load250, ptr %i.kd, align 4, !tbaa !40
  %index.next251 = add nuw i64 %index249, 4       ; 2 uses
  %i.ke = icmp eq i64 %index.next251, %i.js
  br i1 %i.ke, label %._crit_edge101.us, label %vec.epilog.vector.body, !llvm.loop !119

.preheader89.us:                                  ; preds = %bb.ad
  %i.kf = icmp sgt i32 %i.gh, 0
  br i1 %i.kf, label %iter.check269, label %check_intra_mode.exit.us

iter.check269:                                    ; preds = %.preheader89.us
  %wide.trip.count164 = zext nneg i32 %i.gh to i64 ; 5 uses
  %ident.check254.not = icmp ne i64 %i.gq, 1
  %i.kg = sub i64 %i.c, %i.gp
  %diff.check256 = icmp ult i64 %i.kg, 31
  %or.cond493.a = select i1 %ident.check254.not, i1 true, i1 %diff.check256
  br i1 %or.cond493.a, label %.lr.ph98.us.preheader, label %vector.main.loop.iter.check257

vector.main.loop.iter.check257:                   ; preds = %iter.check269
  %min.iters.check258 = icmp ult i32 %i.gh, 32
  br i1 %min.iters.check258, label %vec.epilog.vector.body275.preheader, label %vector.ph259

vector.ph259:                                     ; preds = %vector.main.loop.iter.check257
  %i.kh = and i64 %wide.trip.count164, 28
  %n.vec260 = and i64 %wide.trip.count164, 2147483616 ; 4 uses
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph259
  %index262 = phi i64 [ 0, %vector.ph259 ], [ %index.next265, %vector.body261 ] ; 3 uses
  %i.ki = getelementptr inbounds i8, ptr %i.go, i64 %index262 ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 -1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 15
  %wide.load263 = load <16 x i8>, ptr %i.kj, align 1, !tbaa !40
  %wide.load264 = load <16 x i8>, ptr %i.kk, align 1, !tbaa !40
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 %index262 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  store <16 x i8> %wide.load263, ptr %i.kl, align 16, !tbaa !40
  store <16 x i8> %wide.load264, ptr %i.km, align 16, !tbaa !40
  %index.next265 = add nuw i64 %index262, 32      ; 2 uses
  %i.kn = icmp eq i64 %index.next265, %n.vec260
  br i1 %i.kn, label %middle.block266, label %vector.body261, !llvm.loop !120

middle.block266:                                  ; preds = %vector.body261
  %cmp.n267 = icmp eq i64 %n.vec260, %wide.trip.count164
  br i1 %cmp.n267, label %check_intra_mode.exit.us, label %vec.epilog.iter.check271

vec.epilog.iter.check271:                         ; preds = %middle.block266
  %min.epilog.iters.check272 = icmp eq i64 %i.kh, 0
  br i1 %min.epilog.iters.check272, label %.lr.ph98.us.preheader, label %vec.epilog.vector.body275.preheader, !prof !150

vec.epilog.vector.body275.preheader:              ; preds = %vector.main.loop.iter.check257, %vec.epilog.iter.check271
  %index276.ph = phi i64 [ 0, %vector.main.loop.iter.check257 ], [ %n.vec260, %vec.epilog.iter.check271 ]
  br label %vec.epilog.vector.body275

.lr.ph98.us.preheader:                            ; preds = %iter.check269, %vec.epilog.iter.check271
  %indvars.iv161.ph = phi i64 [ %n.vec260, %vec.epilog.iter.check271 ], [ 0, %iter.check269 ]
  br label %.lr.ph98.us

vec.epilog.vector.body275:                        ; preds = %vec.epilog.vector.body275.preheader, %vec.epilog.vector.body275
  %index276 = phi i64 [ %index.next278, %vec.epilog.vector.body275 ], [ %index276.ph, %vec.epilog.vector.body275.preheader ] ; 3 uses
  %i.ko = getelementptr inbounds i8, ptr %i.go, i64 %index276
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 -1
  %wide.load277 = load <4 x i8>, ptr %i.kp, align 1, !tbaa !40
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 %index276
  store <4 x i8> %wide.load277, ptr %i.kq, align 4, !tbaa !40
  %index.next278 = add nuw i64 %index276, 4       ; 2 uses
  %i.kr = icmp eq i64 %index.next278, %wide.trip.count164
  br i1 %i.kr, label %check_intra_mode.exit.us, label %vec.epilog.vector.body275, !llvm.loop !121

.preheader90.us:                                  ; preds = %bb.ac
  %i.ks = icmp sgt i32 %i.gm, 0
  br i1 %i.ks, label %iter.check304, label %._crit_edge.us

iter.check304:                                    ; preds = %.preheader90.us
  %7 = zext nneg i32 %i.gm to i64                 ; 9 uses
  %min.iters.check290 = icmp ult i32 %i.gm, 8
  br i1 %min.iters.check290, label %.lr.ph96.us.preheader, label %vector.scevcheck282

vector.scevcheck282:                              ; preds = %iter.check304
  %ident.check283 = icmp ne i64 %i.gq, 1
  %8 = add nsw i64 %7, -1                         ; 2 uses
  %9 = add i32 %i.gh, -1                          ; 2 uses
  %10 = trunc nsw i64 %8 to i32
  %11 = sub i32 %9, %10
  %12 = icmp sgt i32 %11, %9
  %i.kt = icmp ugt i64 %8, 4294967295
  %13 = or i1 %12, %i.kt
  %14 = or i1 %ident.check283, %13
  br i1 %14, label %.lr.ph96.us.preheader, label %vector.memcheck284

vector.memcheck284:                               ; preds = %vector.scevcheck282
  %scevgep = getelementptr i8, ptr %i.go, i64 -1  ; 2 uses
  %scevgep285.a = getelementptr i8, ptr %scevgep, i64 %7
  %15 = add i32 %i.gh, -4
  %16 = sext i32 %15 to i64                       ; 2 uses
  %17 = sub nsw i64 %16, %7
  %scevgep287 = getelementptr i8, ptr %scevgep286, i64 %17
  %scevgep289 = getelementptr i8, ptr %scevgep288, i64 %16
  %bound0 = icmp ult ptr %scevgep, %scevgep289
  %bound1 = icmp ult ptr %scevgep287, %scevgep285.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph96.us.preheader, label %vector.main.loop.iter.check291

vector.main.loop.iter.check291:                   ; preds = %vector.memcheck284
  %min.iters.check292 = icmp ult i32 %i.gm, 32
  br i1 %min.iters.check292, label %vec.epilog.ph308, label %vector.ph293

vector.ph293:                                     ; preds = %vector.main.loop.iter.check291
  %i.ku = and i64 %7, 24
  %n.vec294 = and i64 %7, 2147483616              ; 4 uses
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next300, %vector.body295 ] ; 3 uses
  %i.kv = getelementptr inbounds i8, ptr %i.go, i64 %index296 ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 -1
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 15
  %wide.load297 = load <16 x i8>, ptr %i.kw, align 1, !tbaa !40, !alias.scope !151, !noalias !152
  %wide.load298 = load <16 x i8>, ptr %i.kx, align 1, !tbaa !40, !alias.scope !151, !noalias !152
  %18 = trunc nuw nsw i64 %index296 to i32
  %19 = xor i32 %18, -1
  %20 = add i32 %i.gh, %19
  %21 = sext i32 %20 to i64
  %i.ky = getelementptr inbounds i8, ptr %i.b, i64 %21 ; 2 uses
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 -15
  %i.la = getelementptr inbounds i8, ptr %i.ky, i64 -31
  %reverse = shufflevector <16 x i8> %wide.load297, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse299 = shufflevector <16 x i8> %wide.load298, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.kz, align 1, !tbaa !40, !alias.scope !152
  store <16 x i8> %reverse299, ptr %i.la, align 1, !tbaa !40, !alias.scope !152
  %index.next300 = add nuw i64 %index296, 32      ; 2 uses
  %i.lb = icmp eq i64 %index.next300, %n.vec294
  br i1 %i.lb, label %middle.block301, label %vector.body295, !llvm.loop !125

middle.block301:                                  ; preds = %vector.body295
  %cmp.n302 = icmp eq i64 %n.vec294, %7
  br i1 %cmp.n302, label %._crit_edge.us, label %vec.epilog.iter.check306

vec.epilog.iter.check306:                         ; preds = %middle.block301
  %min.epilog.iters.check307 = icmp eq i64 %i.ku, 0
  br i1 %min.epilog.iters.check307, label %.lr.ph96.us.preheader, label %vec.epilog.ph308, !prof !153

vec.epilog.ph308:                                 ; preds = %vector.main.loop.iter.check291, %vec.epilog.iter.check306
  %vec.epilog.resume.val303 = phi i64 [ %n.vec294, %vec.epilog.iter.check306 ], [ 0, %vector.main.loop.iter.check291 ]
  %n.vec309 = and i64 %7, 2147483640              ; 3 uses
  br label %vec.epilog.vector.body310

vec.epilog.vector.body310:                        ; preds = %vec.epilog.vector.body310, %vec.epilog.ph308
  %index311 = phi i64 [ %vec.epilog.resume.val303, %vec.epilog.ph308 ], [ %index.next314, %vec.epilog.vector.body310 ] ; 3 uses
  %i.lc = getelementptr inbounds i8, ptr %i.go, i64 %index311
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 -1
  %wide.load312 = load <8 x i8>, ptr %i.ld, align 1, !tbaa !40, !alias.scope !151, !noalias !152
  %22 = trunc nuw nsw i64 %index311 to i32
  %23 = xor i32 %22, -1
  %24 = add i32 %i.gh, %23
  %25 = sext i32 %24 to i64
  %i.le = getelementptr inbounds i8, ptr %i.b, i64 %25
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 -7
  %reverse313 = shufflevector <8 x i8> %wide.load312, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse313, ptr %i.lf, align 1, !tbaa !40, !alias.scope !152
  %index.next314 = add nuw i64 %index311, 8       ; 2 uses
  %i.lg = icmp eq i64 %index.next314, %n.vec309
  br i1 %i.lg, label %vec.epilog.middle.block315, label %vec.epilog.vector.body310, !llvm.loop !126

vec.epilog.middle.block315:                       ; preds = %vec.epilog.vector.body310
  %cmp.n316 = icmp eq i64 %n.vec309, %7
  br i1 %cmp.n316, label %._crit_edge.us, label %.lr.ph96.us.preheader

.lr.ph96.us.preheader:                            ; preds = %vector.memcheck284, %vector.scevcheck282, %iter.check304, %vec.epilog.iter.check306, %vec.epilog.middle.block315
  %indvars.iv158.ph = phi i64 [ 0, %iter.check304 ], [ 0, %vector.scevcheck282 ], [ 0, %vector.memcheck284 ], [ %n.vec294, %vec.epilog.iter.check306 ], [ %n.vec309, %vec.epilog.middle.block315 ]
  br label %.lr.ph96.us

.preheader91.us:                                  ; preds = %bb.ac
  %i.lh = icmp sgt i32 %i.gh, 0
  br i1 %i.lh, label %iter.check341, label %check_intra_mode.exit.us

iter.check341:                                    ; preds = %.preheader91.us
  %i.li = zext nneg i32 %i.gh to i64
  %wide.trip.count = zext nneg i32 %i.gh to i64   ; 7 uses
  %i.lj = getelementptr i8, ptr %i.b, i64 %i.li   ; 7 uses
  %min.iters.check326 = icmp ugt i32 %i.gh, 7
  %ident.check319.not = icmp eq i64 %i.gq, 1
  %or.cond494 = select i1 %min.iters.check326, i1 %ident.check319.not, i1 false
  br i1 %or.cond494, label %vector.memcheck320, label %.lr.ph.us.preheader

vector.memcheck320:                               ; preds = %iter.check341
  %scevgep321 = getelementptr i8, ptr %i.go, i64 -1 ; 2 uses
  %scevgep322 = getelementptr i8, ptr %scevgep321, i64 %wide.trip.count
  %bound0323 = icmp ult ptr %i.b, %scevgep322
  %bound1324 = icmp ult ptr %scevgep321, %i.lj
  %found.conflict325 = and i1 %bound0323, %bound1324
  br i1 %found.conflict325, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check327

vector.main.loop.iter.check327:                   ; preds = %vector.memcheck320
  %min.iters.check328 = icmp ult i32 %i.gh, 32
  br i1 %min.iters.check328, label %vec.epilog.ph345, label %vector.ph329

vector.ph329:                                     ; preds = %vector.main.loop.iter.check327
  %i.lk = and i64 %wide.trip.count, 24
  %n.vec330 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  br label %vector.body331

vector.body331:                                   ; preds = %vector.body331, %vector.ph329
  %index332 = phi i64 [ 0, %vector.ph329 ], [ %index.next337, %vector.body331 ] ; 3 uses
  %i.ll = getelementptr inbounds i8, ptr %i.go, i64 %index332 ; 2 uses
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 -1
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 15
  %wide.load333 = load <16 x i8>, ptr %i.lm, align 1, !tbaa !40, !alias.scope !154
  %wide.load334 = load <16 x i8>, ptr %i.ln, align 1, !tbaa !40, !alias.scope !154
  %i.lo = xor i64 %index332, -1
  %i.lp = getelementptr i8, ptr %i.lj, i64 %i.lo  ; 2 uses
  %i.lq = getelementptr i8, ptr %i.lp, i64 -15
  %i.lr = getelementptr i8, ptr %i.lp, i64 -31
  %reverse335 = shufflevector <16 x i8> %wide.load333, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse336 = shufflevector <16 x i8> %wide.load334, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse335, ptr %i.lq, align 4, !tbaa !40, !alias.scope !155, !noalias !154
  store <16 x i8> %reverse336, ptr %i.lr, align 4, !tbaa !40, !alias.scope !155, !noalias !154
  %index.next337 = add nuw i64 %index332, 32      ; 2 uses
  %i.ls = icmp eq i64 %index.next337, %n.vec330
  br i1 %i.ls, label %middle.block338, label %vector.body331, !llvm.loop !130

middle.block338:                                  ; preds = %vector.body331
  %cmp.n339 = icmp eq i64 %n.vec330, %wide.trip.count
  br i1 %cmp.n339, label %check_intra_mode.exit.us, label %vec.epilog.iter.check343

vec.epilog.iter.check343:                         ; preds = %middle.block338
  %min.epilog.iters.check344 = icmp eq i64 %i.lk, 0
  br i1 %min.epilog.iters.check344, label %.lr.ph.us.preheader, label %vec.epilog.ph345, !prof !153

vec.epilog.ph345:                                 ; preds = %vector.main.loop.iter.check327, %vec.epilog.iter.check343
  %vec.epilog.resume.val340 = phi i64 [ %n.vec330, %vec.epilog.iter.check343 ], [ 0, %vector.main.loop.iter.check327 ]
  %n.vec346 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body347

vec.epilog.vector.body347:                        ; preds = %vec.epilog.vector.body347, %vec.epilog.ph345
  %index348 = phi i64 [ %vec.epilog.resume.val340, %vec.epilog.ph345 ], [ %index.next351, %vec.epilog.vector.body347 ] ; 3 uses
  %i.lt = getelementptr inbounds i8, ptr %i.go, i64 %index348
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 -1
  %wide.load349 = load <8 x i8>, ptr %i.lu, align 1, !tbaa !40, !alias.scope !154
  %i.lv = xor i64 %index348, -1
  %i.lw = getelementptr i8, ptr %i.lj, i64 %i.lv
  %i.lx = getelementptr i8, ptr %i.lw, i64 -7
  %reverse350 = shufflevector <8 x i8> %wide.load349, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse350, ptr %i.lx, align 4, !tbaa !40, !alias.scope !155, !noalias !154
  %index.next351 = add nuw i64 %index348, 8       ; 2 uses
  %i.ly = icmp eq i64 %index.next351, %n.vec346
  br i1 %i.ly, label %vec.epilog.middle.block352, label %vec.epilog.vector.body347, !llvm.loop !131

vec.epilog.middle.block352:                       ; preds = %vec.epilog.vector.body347
  %cmp.n353 = icmp eq i64 %n.vec346, %wide.trip.count
  br i1 %cmp.n353, label %check_intra_mode.exit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %vector.memcheck320, %iter.check341, %vec.epilog.iter.check343, %vec.epilog.middle.block352
  %indvars.iv.ph = phi i64 [ 0, %iter.check341 ], [ 0, %vector.memcheck320 ], [ %n.vec330, %vec.epilog.iter.check343 ], [ %n.vec346, %vec.epilog.middle.block352 ]
  br label %.lr.ph.us

._crit_edge113.us:                                ; preds = %bb.af
  %i.lz = load ptr, ptr %i.at, align 8, !tbaa !76 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 64
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !77
  %i.mc = mul nsw i32 %i.mb, %i.bn
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds i8, ptr %.0178.i117.us, i64 %i.md
  %i.mf = load i64, ptr %i.bb, align 16, !tbaa !80
  %i.mg = mul nsw i64 %i.mf, %i.bo
  %i.mh = getelementptr inbounds i8, ptr %.0179.i116.us, i64 %i.mg
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, %i.bs ; 2 uses
  %i.mi = icmp slt i64 %indvars.iv.next177, %i.bx
  br i1 %i.mi, label %.preheader93.us, label %._crit_edge118.loopexit155, !llvm.loop !2

._crit_edge118.loopexit155:                       ; preds = %._crit_edge113.us
  %.pre201 = load i32, ptr %i.an, align 4, !tbaa !69
  br label %._crit_edge118

._crit_edge118:                                   ; preds = %.preheader93.lr.ph, %.._crit_edge118_crit_edge, %._crit_edge118.loopexit155
  %.pre-phi206 = phi i32 [ %.pre205, %.._crit_edge118_crit_edge ], [ %i.be, %._crit_edge118.loopexit155 ], [ %i.be, %.preheader93.lr.ph ]
  %i.mj = phi ptr [ %i.au, %.._crit_edge118_crit_edge ], [ %i.lz, %._crit_edge118.loopexit155 ], [ %i.au, %.preheader93.lr.ph ]
  %i.mk = phi i32 [ %i.ao, %.._crit_edge118_crit_edge ], [ %.pre201, %._crit_edge118.loopexit155 ], [ %i.ao, %.preheader93.lr.ph ]
  %i.ml = getelementptr inbounds nuw i8, ptr %i.d, i64 3924 ; 2 uses
  %i.mm = load i8, ptr %i.ml, align 4, !tbaa !88
  %i.mn = zext i8 %i.mm to i32                    ; 2 uses
  %i.mo = lshr i32 %i.q, %i.mn
  %i.mp = lshr i32 %..i, %i.mn                    ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.d, i64 3925 ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !89
  %i.ms = zext nneg i8 %i.mr to i32
  %i.mt = lshr i32 %i.ai, %i.ms                   ; 2 uses
  %.not150 = icmp eq i32 %i.mt, 0
  %i.mu = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 8 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 77120
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.mz = icmp sgt i32 %i.h, 0
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.nb = add nsw i32 %i.mo, -1
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.nd = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 35
  %i.nf = getelementptr inbounds nuw i8, ptr %i.d, i64 1376
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 1856
  %i.nh = sext i32 %i.ap to i64
  %i.ni = getelementptr inbounds [32 x i8], ptr %i.ng, i64 %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 77072
  %i.nk = shl i32 4, %i.ao                        ; 2 uses
  %i.nl = sext i32 %i.nk to i64                   ; 3 uses
  %.not151 = icmp eq i32 %i.mp, 0
  %or.cond240 = select i1 %.not150, i1 true, i1 %.not151
  br i1 %or.cond240, label %intra_recon.exit.split, label %.preheader87.lr.ph.us.preheader

.preheader87.lr.ph.us.preheader:                  ; preds = %._crit_edge118
  %i.nm = shl i32 %i.mk, 1
  %i.nn = shl nuw i32 1, %i.nm
  %i.no = zext nneg i32 %i.nn to i64
  %scevgep419 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %scevgep421 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.preheader87.lr.ph.us

.preheader87.lr.ph.us:                            ; preds = %.preheader87.lr.ph.us.preheader, %..loopexit_crit_edge.split.us.us
  %i.np = phi ptr [ %i.mj, %.preheader87.lr.ph.us.preheader ], [ %i.xo, %..loopexit_crit_edge.split.us.us ]
  %i.nq = phi i1 [ true, %.preheader87.lr.ph.us.preheader ], [ false, %..loopexit_crit_edge.split.us.us ]
  %indvars.iv198 = phi i64 [ 0, %.preheader87.lr.ph.us.preheader ], [ 1, %..loopexit_crit_edge.split.us.us ] ; 3 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 3 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next199
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !70
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv.next199
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !70
  %i.nv = getelementptr inbounds i8, ptr %i.nu, i64 %2
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv198
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %indvars.iv198
  br label %.preheader87.us.us

.preheader87.us.us:                               ; preds = %._crit_edge138.us.us, %.preheader87.lr.ph.us
  %.1.i142.us.us = phi ptr [ %i.nv, %.preheader87.lr.ph.us ], [ %i.xt, %._crit_edge138.us.us ] ; 2 uses
  %.1180.i141.us.us = phi ptr [ %i.ns, %.preheader87.lr.ph.us ], [ %i.xw, %._crit_edge138.us.us ] ; 2 uses
  %.1183.i140.us.us = phi i32 [ 0, %.preheader87.lr.ph.us ], [ %i.xx, %._crit_edge138.us.us ] ; 5 uses
  %.2.i139.us.us = phi i64 [ 0, %.preheader87.lr.ph.us ], [ %indvars.iv.next196, %._crit_edge138.us.us ]
  %i.ny = icmp sgt i32 %.1183.i140.us.us, 0
  %i.nz = or i1 %i.mz, %i.ny                      ; 5 uses
  %i.oa = zext i1 %i.nz to i64
  %i.ob = or i32 %.1183.i140.us.us, %.pre-phi206
  %or.cond3.not.i40.us.us = icmp eq i32 %i.ob, 0
  %i.oc = icmp eq i32 %.1183.i140.us.us, 0        ; 2 uses
  %i.od = select i1 %i.nz, i32 1, i32 255
  br label %bb.ag

bb.ag:                                            ; preds = %bb.bk, %.preheader87.us.us
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %bb.bk ], [ %.2.i139.us.us, %.preheader87.us.us ] ; 3 uses
  %.0.i134.us.us = phi ptr [ %i.ve, %bb.bk ], [ %.1.i142.us.us, %.preheader87.us.us ] ; 3 uses
  %.0175.i131.us.us = phi ptr [ %i.vd, %bb.bk ], [ %.1180.i141.us.us, %.preheader87.us.us ] ; 5 uses
  %.1185.i128.us.us = phi i32 [ %i.vc, %bb.bk ], [ 0, %.preheader87.us.us ] ; 7 uses
  %i.oe = load i8, ptr %i.mu, align 1, !tbaa !90
  %i.of = load i8, ptr %i.mw, align 2, !tbaa !78
  %.not.i.us.us = icmp eq i8 %i.of, 0
  %.pre202 = load i32, ptr %i.an, align 4, !tbaa !69 ; 6 uses
  br i1 %.not.i.us.us, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.og = icmp ugt i32 %.pre202, 1
  %i.oh = load ptr, ptr %i.nw, align 8, !tbaa !70
  %i.oi = getelementptr inbounds i8, ptr %i.oh, i64 %indvars.iv195 ; 2 uses
  br i1 %i.og, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !40
  %i.ok = zext i8 %i.oj to i32
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ol = load i16, ptr %i.oi, align 2, !tbaa !40
  %i.om = zext i16 %i.ol to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.on = phi i32 [ 0, %bb.ag ], [ %i.om, %bb.aj ], [ %i.ok, %bb.ai ] ; 2 uses
  %i.oo = load ptr, ptr %i.at, align 8, !tbaa !76
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 68
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !77
  %i.or = sext i32 %i.oq to i64                   ; 2 uses
  %i.os = load i64, ptr %i.my, align 8, !tbaa !91 ; 3 uses
  %i.ot = load i8, ptr %i.ml, align 4, !tbaa !88  ; 2 uses
  %i.ou = zext nneg i8 %i.ot to i32
  %i.ov = load i8, ptr %i.mq, align 1, !tbaa !89
  %i.ow = load ptr, ptr %0, align 16, !tbaa !34   ; 4 uses
  %i.ox = load i32, ptr %i.na, align 16, !tbaa !81
  %i.oy = icmp ugt i32 %i.j, %i.ox
  %i.oz = icmp sgt i32 %.1185.i128.us.us, 0
  %i.pa = or i1 %i.oz, %i.oy                      ; 5 uses
  %i.pb = icmp slt i32 %.1185.i128.us.us, %i.nb   ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ow, i64 1
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !82
  %i.pe = zext i8 %i.pd to i32                    ; 3 uses
  %i.pf = zext i8 %i.oe to i64
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr @check_intra_mode.mode_conv, i64 %i.pf
  %i.ph = zext i1 %i.pa to i64
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %i.pg, i64 %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.oa
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !40  ; 3 uses
  %i.pl = zext i8 %i.pk to i64                    ; 2 uses
  %i.pm = shl nuw i64 1, %i.pl                    ; 4 uses
  %i.pn = and i64 %i.pm, 29954
  %.not.not.i5.us.us = icmp eq i64 %i.pn, 0
  br i1 %.not.not.i5.us.us, label %bb.al, label %bb.bd

bb.al:                                            ; preds = %bb.ak
  %i.po = shl i32 4, %.pre202                     ; 7 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ow, i64 3964
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !66
  %i.pr = sub i32 %i.pq, %i.j
  %.not.i14.us.us = icmp eq i8 %i.ot, 0
  %i.ps = zext i1 %.not.i14.us.us to i32
  %i.pt = shl i32 %i.pr, %i.ps
  %i.pu = sub i32 %i.pt, %.1185.i128.us.us
  %i.pv = shl i32 %i.pu, 2                        ; 6 uses
  %i.pw = icmp eq i32 %.pre202, 0                 ; 2 uses
  %i.px = and i8 %i.pk, -5                        ; 2 uses
  %i.py = icmp eq i8 %i.px, 3                     ; 2 uses
  %or.cond.i15.us.us = select i1 %i.py, i1 %i.pb, i1 false
  %spec.select.i16.us.us = select i1 %or.cond.i15.us.us, i32 4, i32 0 ; 2 uses
  br i1 %i.nz, label %bb.am, label %.critedge.i20.us.us

.critedge.i20.us.us:                              ; preds = %bb.al
  %i.pz = add nsw i32 %i.pe, -8
  %i.qa = shl i32 128, %i.pz
  %i.qb = trunc i32 %i.qa to i8
  %i.qc = add i8 %i.qb, -1
  %i.qd = sext i32 %i.po to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.mv, i8 %i.qc, i64 %i.qd, i1 false)
  %.pre = and i64 %i.pm, 2189
  br label %bb.av

bb.am:                                            ; preds = %bb.al
  br i1 %or.cond3.not.i40.us.us, label %.thread71.us.us, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qe = sub nsw i64 0, %i.os
  %i.qf = getelementptr inbounds i8, ptr %.0175.i131.us.us, i64 %i.qe ; 2 uses
  %i.qg = sub nsw i64 0, %i.or
  %i.qh = getelementptr inbounds i8, ptr %.0.i134.us.us, i64 %i.qg ; 2 uses
  %i.qi = select i1 %i.oc, ptr %i.qh, ptr %i.qf   ; 2 uses
  br i1 %i.pa, label %bb.ao, label %.thread72.us.us

bb.ao:                                            ; preds = %bb.an
  %i.qj = icmp eq i32 %.1185.i128.us.us, 0
  %or.cond7.i41.us.us = or i1 %i.oc, %i.qj
  %spec.select241 = select i1 %or.cond7.i41.us.us, ptr %i.qh, ptr %i.qf
  br label %.thread72.us.us

.thread71.us.us:                                  ; preds = %bb.am
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ow, i64 19136
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %indvars.iv.next199
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !70
  %i.qn = lshr i32 8, %i.ou
  %i.qo = mul nsw i32 %i.qn, %i.j
  %i.qp = shl nsw i32 %.1185.i128.us.us, 2
  %i.qq = add nsw i32 %i.qo, %i.qp
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds i8, ptr %i.qm, i64 %i.qr ; 2 uses
  br label %.thread72.us.us

.thread72.us.us:                                  ; preds = %bb.ao, %.thread71.us.us, %bb.an
  %.0280.i18.ph.us.us = phi ptr [ %i.qs, %.thread71.us.us ], [ %i.qi, %bb.ao ], [ %i.qi, %bb.an ] ; 7 uses
  %.0279.i19.ph.us.us = phi ptr [ %i.qs, %.thread71.us.us ], [ %spec.select241, %bb.ao ], [ undef, %bb.an ] ; 3 uses
  %i.qt = and i64 %i.pm, 2189                     ; 3 uses
  %.not289.not.i29.us.us = icmp ne i64 %i.qt, 0
  %i.qu = icmp eq ptr %.0280.i18.ph.us.us, %.0279.i19.ph.us.us
  %or.cond301.i30.us.us = select i1 %i.pa, i1 %i.qu, i1 false
  %or.cond308.i31.us.us = select i1 %.not289.not.i29.us.us, i1 true, i1 %or.cond301.i30.us.us
  br i1 %or.cond308.i31.us.us, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %.thread72.us.us
  br i1 %i.pw, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not291.old.i35.us.us = icmp sgt i32 %i.po, %i.pv
  br i1 %.not291.old.i35.us.us, label %bb.as, label %bb.bd

bb.ar:                                            ; preds = %bb.ap
  %i.qv = icmp ne i8 %i.px, 3
  %or.cond9.i36.us.us = select i1 %i.qv, i1 true, i1 %i.pb
  %i.qw = add nuw nsw i32 %spec.select.i16.us.us, %i.po
  %.not291.i38.us.us = icmp sle i32 %i.qw, %i.pv
  %or.cond302.i39.not.us.us = select i1 %or.cond9.i36.us.us, i1 %.not291.i38.us.us, i1 false
  br i1 %or.cond302.i39.not.us.us, label %bb.bd, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.thread72.us.us
  %.not292.i32.us.us = icmp sgt i32 %i.po, %i.pv
  br i1 %.not292.i32.us.us, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.qx = sext i32 %i.po to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.mv, ptr align 1 %.0280.i18.ph.us.us, i64 %i.qx, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.qy = sext i32 %i.pv to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.mv, ptr align 1 %.0280.i18.ph.us.us, i64 %i.qy, i1 false)
  %i.qz = getelementptr i8, ptr %i.mv, i64 %i.qy  ; 2 uses
  %i.ra = getelementptr i8, ptr %i.qz, i64 -1
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !40
  %i.rc = sub nsw i32 %i.po, %i.pv
  %i.rd = zext nneg i32 %i.rc to i64
  call void @llvm.memset.p0.i64(ptr align 4 %i.qz, i8 %i.rb, i64 %i.rd, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %.critedge.i20.us.us
  %.pre-phi = phi i64 [ %i.qt, %bb.au ], [ %i.qt, %bb.at ], [ %.pre, %.critedge.i20.us.us ]
  %.0279.i1980.us.us = phi ptr [ %.0279.i19.ph.us.us, %bb.au ], [ %.0279.i19.ph.us.us, %bb.at ], [ undef, %.critedge.i20.us.us ]
  %.0280.i1877.us.us = phi ptr [ %.0280.i18.ph.us.us, %bb.au ], [ %.0280.i18.ph.us.us, %bb.at ], [ undef, %.critedge.i20.us.us ]
  %.not293.not.i21.us.us = icmp eq i64 %.pre-phi, 0
  br i1 %.not293.not.i21.us.us, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %or.cond11.i28.us.us = and i1 %i.nz, %i.pa
  br i1 %or.cond11.i28.us.us, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.re = add nsw i32 %i.pe, -8
  %i.rf = shl i32 128, %i.re
  %i.rg = add nuw i32 %i.rf, %i.od
  %i.rh = trunc i32 %i.rg to i8
  br label %.sink.split242

bb.ay:                                            ; preds = %bb.aw
  %i.ri = getelementptr inbounds i8, ptr %.0279.i1980.us.us, i64 -1
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !40
  br label %.sink.split242

.sink.split242:                                   ; preds = %bb.ax, %bb.ay
  %.sink243 = phi i8 [ %i.rj, %bb.ay ], [ %i.rh, %bb.ax ]
  store i8 %.sink243, ptr %i.nc, align 1, !tbaa !40
  br label %bb.az

bb.az:                                            ; preds = %.sink.split242, %bb.av
  %or.cond304.i23.us.us = and i1 %i.pw, %i.py
  br i1 %or.cond304.i23.us.us, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %or.cond13.i24.us.us = select i1 %i.nz, i1 %i.pb, i1 false
  %i.rk = add nuw nsw i32 %spec.select.i16.us.us, %i.po
  %.not295.i26.us.us = icmp sle i32 %i.rk, %i.pv
  %or.cond306.i27.not.us.us = select i1 %or.cond13.i24.us.us, i1 %.not295.i26.us.us, i1 false
  br i1 %or.cond306.i27.not.us.us, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.rl = load i8, ptr %i.ne, align 1, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4) %i.nd, i8 %i.rl, i64 4, i1 false)
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.rm = getelementptr inbounds nuw i8, ptr %.0280.i1877.us.us, i64 4
  %i.rn = load i32, ptr %i.rm, align 1
  store i32 %i.rn, ptr %i.nd, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.az, %bb.ar, %bb.aq, %bb.ak
  %.0.us.us = phi ptr [ %i.mv, %bb.bb ], [ %i.mv, %bb.bc ], [ %i.mv, %bb.az ], [ %i.mv, %bb.ak ], [ %.0280.i18.ph.us.us, %bb.aq ], [ %.0280.i18.ph.us.us, %bb.ar ]
  %i.ro = and i64 %i.pm, 30857
  %.not296.not.i6.us.us = icmp eq i64 %i.ro, 0
  br i1 %.not296.not.i6.us.us, label %bb.be, label %check_intra_mode.exit42.us.us

bb.be:                                            ; preds = %bb.bd
  br i1 %i.pa, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rp = add nsw i32 %i.pe, -8
  %i.rq = shl i32 128, %i.rp
  %i.rr = trunc i32 %i.rq to i8
  %i.rs = or disjoint i8 %i.rr, 1
  %i.rt = shl i32 4, %.pre202
  %i.ru = sext i32 %i.rt to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 %i.rs, i64 %i.ru, i1 false)
  br label %check_intra_mode.exit42.us.us

bb.bg:                                            ; preds = %bb.be
  %i.rv = shl i32 4, %.pre202                     ; 16 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ow, i64 3960
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !67
  %i.ry = sub i32 %i.rx, %i.h
  %.not297.i.us.us = icmp eq i8 %i.ov, 0
  %i.rz = zext i1 %.not297.i.us.us to i32
  %i.sa = shl i32 %i.ry, %i.rz
  %i.sb = sub i32 %i.sa, %.1183.i140.us.us
  %i.sc = shl i32 %i.sb, 2                        ; 11 uses
  %i.sd = icmp eq i32 %.1185.i128.us.us, 0        ; 2 uses
  %i.se = select i1 %i.sd, ptr %.0.i134.us.us, ptr %.0175.i131.us.us ; 21 uses
  %i.sf = ptrtoaddr ptr %i.se to i64              ; 2 uses
  %i.sg = select i1 %i.sd, i64 %i.or, i64 %i.os   ; 14 uses
  %.not298.not.i7.us.us = icmp eq i8 %i.pk, 8
  %.not300.i11.us.us = icmp sgt i32 %i.rv, %i.sc  ; 2 uses
  br i1 %.not298.not.i7.us.us, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not300.i11.us.us, label %.preheader84.us.us, label %.preheader85.us.us

.lr.ph.us143.us:                                  ; preds = %.lr.ph.us143.us, %.lr.ph.us143.us.preheader
  %indvars.iv179 = phi i64 [ %indvars.iv179.ph, %.lr.ph.us143.us.preheader ], [ %indvars.iv.next180.3, %.lr.ph.us143.us ] ; 9 uses
  %i.sh = mul nsw i64 %i.sg, %indvars.iv179
  %i.si = getelementptr inbounds i8, ptr %i.se, i64 %i.sh
  %i.sj = getelementptr inbounds i8, ptr %i.si, i64 -1
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !40
  %i.sl = xor i64 %indvars.iv179, -1
  %i.sm = getelementptr i8, ptr %i.wy, i64 %i.sl
  store i8 %i.sk, ptr %i.sm, align 1, !tbaa !40
  %indvars.iv.next180 = or disjoint i64 %indvars.iv179, 1
  %i.sn = mul nsw i64 %i.sg, %indvars.iv.next180
  %i.so = getelementptr inbounds i8, ptr %i.se, i64 %i.sn
  %i.sp = getelementptr inbounds i8, ptr %i.so, i64 -1
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !40
  %i.sr = xor i64 %indvars.iv179, -2
  %i.ss = getelementptr i8, ptr %i.wy, i64 %i.sr
  store i8 %i.sq, ptr %i.ss, align 2, !tbaa !40
  %indvars.iv.next180.1 = or disjoint i64 %indvars.iv179, 2
  %i.st = mul nsw i64 %i.sg, %indvars.iv.next180.1
  %i.su = getelementptr inbounds i8, ptr %i.se, i64 %i.st
  %i.sv = getelementptr inbounds i8, ptr %i.su, i64 -1
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !40
  %i.sx = xor i64 %indvars.iv179, -3
  %i.sy = getelementptr i8, ptr %i.wy, i64 %i.sx
  store i8 %i.sw, ptr %i.sy, align 1, !tbaa !40
  %indvars.iv.next180.2 = or disjoint i64 %indvars.iv179, 3
  %i.sz = mul nsw i64 %i.sg, %indvars.iv.next180.2
  %i.ta = getelementptr inbounds i8, ptr %i.se, i64 %i.sz
  %i.tb = getelementptr inbounds i8, ptr %i.ta, i64 -1
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !40
  %i.td = xor i64 %indvars.iv179, -4
  %i.te = getelementptr i8, ptr %i.wy, i64 %i.td
  store i8 %i.tc, ptr %i.te, align 4, !tbaa !40
  %indvars.iv.next180.3 = add nuw nsw i64 %indvars.iv179, 4 ; 2 uses
  %exitcond183.not.3 = icmp eq i64 %indvars.iv.next180.3, %wide.trip.count182
  br i1 %exitcond183.not.3, label %check_intra_mode.exit42.us.us, label %.lr.ph.us143.us, !llvm.loop !132

.lr.ph121.us.us:                                  ; preds = %.lr.ph121.us.us.preheader, %.lr.ph121.us.us
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %.lr.ph121.us.us ], [ %indvars.iv184.ph, %.lr.ph121.us.us.preheader ] ; 3 uses
  %i.tf = mul nsw i64 %i.sg, %indvars.iv184
  %i.tg = getelementptr inbounds i8, ptr %i.se, i64 %i.tf
  %i.th = getelementptr inbounds i8, ptr %i.tg, i64 -1
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !40
  %26 = trunc nuw nsw i64 %indvars.iv184 to i32
  %27 = xor i32 %26, -1
  %28 = add i32 %i.rv, %27
  %29 = sext i32 %28 to i64
  %i.tj = getelementptr inbounds i8, ptr %i.b, i64 %29
  store i8 %i.ti, ptr %i.tj, align 1, !tbaa !40
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.tk = icmp samesign ult i64 %indvars.iv.next185, %30
  br i1 %i.tk, label %.lr.ph121.us.us, label %._crit_edge.us144.us, !llvm.loop !133

._crit_edge.us144.us:                             ; preds = %.lr.ph121.us.us, %middle.block438, %vec.epilog.middle.block452, %.preheader84.us.us
  %i.tl = sub nsw i32 %i.rv, %i.sc
  %i.tm = sext i32 %i.tl to i64                   ; 2 uses
  %i.tn = getelementptr inbounds i8, ptr %i.b, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 4, !tbaa !40
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 %i.to, i64 %i.tm, i1 false)
  br label %check_intra_mode.exit42.us.us

bb.bi:                                            ; preds = %bb.bg
  br i1 %.not300.i11.us.us, label %.preheader.us.us, label %.preheader83.us.us

.lr.ph123.us.us:                                  ; preds = %.lr.ph123.us.us, %.lr.ph123.us.us.preheader
  %indvars.iv187 = phi i64 [ %indvars.iv187.ph, %.lr.ph123.us.us.preheader ], [ %indvars.iv.next188.3, %.lr.ph123.us.us ] ; 6 uses
  %i.tp = mul nsw i64 %i.sg, %indvars.iv187
  %i.tq = getelementptr inbounds i8, ptr %i.se, i64 %i.tp
  %i.tr = getelementptr inbounds i8, ptr %i.tq, i64 -1
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !40
  %i.tt = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv187
  store i8 %i.ts, ptr %i.tt, align 4, !tbaa !40
  %indvars.iv.next188 = or disjoint i64 %indvars.iv187, 1 ; 2 uses
  %i.tu = mul nsw i64 %i.sg, %indvars.iv.next188
  %i.tv = getelementptr inbounds i8, ptr %i.se, i64 %i.tu
  %i.tw = getelementptr inbounds i8, ptr %i.tv, i64 -1
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !40
  %i.ty = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next188
  store i8 %i.tx, ptr %i.ty, align 1, !tbaa !40
  %indvars.iv.next188.1 = or disjoint i64 %indvars.iv187, 2 ; 2 uses
  %i.tz = mul nsw i64 %i.sg, %indvars.iv.next188.1
  %i.ua = getelementptr inbounds i8, ptr %i.se, i64 %i.tz
  %i.ub = getelementptr inbounds i8, ptr %i.ua, i64 -1
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !40
  %i.ud = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next188.1
  store i8 %i.uc, ptr %i.ud, align 2, !tbaa !40
  %indvars.iv.next188.2 = or disjoint i64 %indvars.iv187, 3 ; 2 uses
  %i.ue = mul nsw i64 %i.sg, %indvars.iv.next188.2
  %i.uf = getelementptr inbounds i8, ptr %i.se, i64 %i.ue
  %i.ug = getelementptr inbounds i8, ptr %i.uf, i64 -1
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !40
  %i.ui = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next188.2
  store i8 %i.uh, ptr %i.ui, align 1, !tbaa !40
  %indvars.iv.next188.3 = add nuw nsw i64 %indvars.iv187, 4 ; 2 uses
  %exitcond191.not.3 = icmp eq i64 %indvars.iv.next188.3, %wide.trip.count190
  br i1 %exitcond191.not.3, label %check_intra_mode.exit42.us.us, label %.lr.ph123.us.us, !llvm.loop !134

.lr.ph125.us.us:                                  ; preds = %.lr.ph125.us.us.preheader, %.lr.ph125.us.us
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %.lr.ph125.us.us ], [ %indvars.iv192.ph, %.lr.ph125.us.us.preheader ] ; 3 uses
  %i.uj = mul nsw i64 %i.sg, %indvars.iv192
  %i.uk = getelementptr inbounds i8, ptr %i.se, i64 %i.uj
  %i.ul = getelementptr inbounds i8, ptr %i.uk, i64 -1
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !40
  %i.un = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv192
  store i8 %i.um, ptr %i.un, align 1, !tbaa !40
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.uo = icmp samesign ult i64 %indvars.iv.next193, %i.vh
  br i1 %i.uo, label %.lr.ph125.us.us, label %._crit_edge126.us.us, !llvm.loop !135

._crit_edge126.us.us:                             ; preds = %vec.epilog.vector.body378, %.lr.ph125.us.us, %middle.block369, %.preheader.us.us.._crit_edge126.us.us_crit_edge
  %.pre-phi208 = phi i64 [ %.pre207, %.preheader.us.us.._crit_edge126.us.us_crit_edge ], [ %i.vh, %.lr.ph125.us.us ], [ %i.vh, %middle.block369 ], [ %i.vh, %vec.epilog.vector.body378 ]
  %i.up = getelementptr i8, ptr %i.b, i64 %.pre-phi208 ; 2 uses
  %i.uq = getelementptr i8, ptr %i.up, i64 -1
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !40
  %i.us = sub nsw i32 %i.rv, %i.sc
  %i.ut = sext i32 %i.us to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.up, i8 %i.ur, i64 %i.ut, i1 false)
  br label %check_intra_mode.exit42.us.us

check_intra_mode.exit42.us.us:                    ; preds = %.lr.ph.us143.us, %vec.epilog.vector.body407, %.lr.ph123.us.us, %middle.block475, %vec.epilog.middle.block489, %middle.block398, %.preheader85.us.us, %.preheader83.us.us, %._crit_edge126.us.us, %._crit_edge.us144.us, %bb.bf, %bb.bd
  %i.uu = zext i32 %.pre202 to i64
  %i.uv = getelementptr inbounds nuw [120 x i8], ptr %i.nf, i64 %i.uu
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %i.pl
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !85
  call void %i.ux(ptr noundef %.0175.i131.us.us, i64 noundef %i.os, ptr noundef nonnull %i.b, ptr noundef %.0.us.us) #5, !inline_history !0
  %.not195.i.us.us = icmp eq i32 %i.on, 0
  br i1 %.not195.i.us.us, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %check_intra_mode.exit42.us.us
  %i.uy = load ptr, ptr %i.ni, align 8, !tbaa !85
  %i.uz = load i64, ptr %i.my, align 8, !tbaa !91
  %i.va = load ptr, ptr %i.nx, align 8, !tbaa !92
  %.idx234 = shl nsw i64 %indvars.iv195, 5
  %i.vb = getelementptr inbounds i8, ptr %i.va, i64 %.idx234
  call void %i.uy(ptr noundef %.0175.i131.us.us, i64 noundef %i.uz, ptr noundef %i.vb, i32 noundef %i.on) #5, !inline_history !0
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %check_intra_mode.exit42.us.us
  %i.vc = add nsw i32 %.1185.i128.us.us, %i.aq    ; 2 uses
  %i.vd = getelementptr inbounds i8, ptr %.0175.i131.us.us, i64 %i.nl
  %i.ve = getelementptr inbounds i8, ptr %.0.i134.us.us, i64 %i.nl
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, %i.no ; 2 uses
  %i.vf = icmp slt i32 %i.vc, %i.mp
  br i1 %i.vf, label %bb.ag, label %._crit_edge138.us.us, !llvm.loop !3

.preheader.us.us:                                 ; preds = %bb.bi
  %i.vg = icmp sgt i32 %i.sc, 0
  br i1 %i.vg, label %iter.check372, label %.preheader.us.us.._crit_edge126.us.us_crit_edge

.preheader.us.us.._crit_edge126.us.us_crit_edge:  ; preds = %.preheader.us.us
  %.pre207 = sext i32 %i.sc to i64
  br label %._crit_edge126.us.us

iter.check372:                                    ; preds = %.preheader.us.us
  %i.vh = zext nneg i32 %i.sc to i64              ; 8 uses
  %ident.check356.not = icmp ne i64 %i.sg, 1
  %i.vi = sub i64 %i.c, %i.sf
  %diff.check358 = icmp ult i64 %i.vi, 31
  %or.cond495 = select i1 %ident.check356.not, i1 true, i1 %diff.check358
  br i1 %or.cond495, label %.lr.ph125.us.us.preheader, label %vector.main.loop.iter.check360

vector.main.loop.iter.check360:                   ; preds = %iter.check372
  %min.iters.check361 = icmp ult i32 %i.sc, 32
  br i1 %min.iters.check361, label %vec.epilog.vector.body378.preheader, label %vector.ph362

vector.ph362:                                     ; preds = %vector.main.loop.iter.check360
  %i.vj = and i64 %i.vh, 28
  %n.vec363 = and i64 %i.vh, 2147483616           ; 4 uses
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph362
  %index365 = phi i64 [ 0, %vector.ph362 ], [ %index.next368, %vector.body364 ] ; 3 uses
  %i.vk = getelementptr inbounds i8, ptr %i.se, i64 %index365 ; 2 uses
  %i.vl = getelementptr inbounds i8, ptr %i.vk, i64 -1
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vk, i64 15
  %wide.load366 = load <16 x i8>, ptr %i.vl, align 1, !tbaa !40
  %wide.load367 = load <16 x i8>, ptr %i.vm, align 1, !tbaa !40
  %i.vn = getelementptr inbounds nuw i8, ptr %i.b, i64 %index365 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  store <16 x i8> %wide.load366, ptr %i.vn, align 16, !tbaa !40
  store <16 x i8> %wide.load367, ptr %i.vo, align 16, !tbaa !40
  %index.next368 = add nuw i64 %index365, 32      ; 2 uses
  %i.vp = icmp eq i64 %index.next368, %n.vec363
  br i1 %i.vp, label %middle.block369, label %vector.body364, !llvm.loop !136

middle.block369:                                  ; preds = %vector.body364
  %cmp.n370 = icmp eq i64 %n.vec363, %i.vh
  br i1 %cmp.n370, label %._crit_edge126.us.us, label %vec.epilog.iter.check374

vec.epilog.iter.check374:                         ; preds = %middle.block369
  %min.epilog.iters.check375 = icmp eq i64 %i.vj, 0
  br i1 %min.epilog.iters.check375, label %.lr.ph125.us.us.preheader, label %vec.epilog.vector.body378.preheader, !prof !150

vec.epilog.vector.body378.preheader:              ; preds = %vector.main.loop.iter.check360, %vec.epilog.iter.check374
  %index379.ph = phi i64 [ 0, %vector.main.loop.iter.check360 ], [ %n.vec363, %vec.epilog.iter.check374 ]
  br label %vec.epilog.vector.body378

.lr.ph125.us.us.preheader:                        ; preds = %iter.check372, %vec.epilog.iter.check374
  %indvars.iv192.ph = phi i64 [ %n.vec363, %vec.epilog.iter.check374 ], [ 0, %iter.check372 ]
  br label %.lr.ph125.us.us

vec.epilog.vector.body378:                        ; preds = %vec.epilog.vector.body378.preheader, %vec.epilog.vector.body378
  %index379 = phi i64 [ %index.next381, %vec.epilog.vector.body378 ], [ %index379.ph, %vec.epilog.vector.body378.preheader ] ; 3 uses
  %i.vq = getelementptr inbounds i8, ptr %i.se, i64 %index379
  %i.vr = getelementptr inbounds i8, ptr %i.vq, i64 -1
  %wide.load380 = load <4 x i8>, ptr %i.vr, align 1, !tbaa !40
  %i.vs = getelementptr inbounds nuw i8, ptr %i.b, i64 %index379
  store <4 x i8> %wide.load380, ptr %i.vs, align 4, !tbaa !40
  %index.next381 = add nuw i64 %index379, 4       ; 2 uses
  %i.vt = icmp eq i64 %index.next381, %i.vh
  br i1 %i.vt, label %._crit_edge126.us.us, label %vec.epilog.vector.body378, !llvm.loop !137

.preheader83.us.us:                               ; preds = %bb.bi
  %i.vu = icmp sgt i32 %i.rv, 0
  br i1 %i.vu, label %iter.check401, label %check_intra_mode.exit42.us.us

iter.check401:                                    ; preds = %.preheader83.us.us
  %wide.trip.count190 = zext nneg i32 %i.rv to i64 ; 5 uses
  %ident.check386.not = icmp ne i64 %i.sg, 1
  %i.vv = sub i64 %i.c, %i.sf
  %diff.check388 = icmp ult i64 %i.vv, 31
  %or.cond496 = select i1 %ident.check386.not, i1 true, i1 %diff.check388
  br i1 %or.cond496, label %.lr.ph123.us.us.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check401
  %min.iters.check390 = icmp ult i32 %i.rv, 32
  br i1 %min.iters.check390, label %vec.epilog.vector.body407.preheader, label %vector.ph391

vector.ph391:                                     ; preds = %vector.main.loop.iter.check389
  %i.vw = and i64 %wide.trip.count190, 28
  %n.vec392 = and i64 %wide.trip.count190, 2147483616 ; 4 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.body393, %vector.ph391
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next397, %vector.body393 ] ; 3 uses
  %i.vx = getelementptr inbounds i8, ptr %i.se, i64 %index394 ; 2 uses
  %i.vy = getelementptr inbounds i8, ptr %i.vx, i64 -1
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 15
  %wide.load395 = load <16 x i8>, ptr %i.vy, align 1, !tbaa !40
  %wide.load396 = load <16 x i8>, ptr %i.vz, align 1, !tbaa !40
  %i.wa = getelementptr inbounds nuw i8, ptr %i.b, i64 %index394 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  store <16 x i8> %wide.load395, ptr %i.wa, align 16, !tbaa !40
  store <16 x i8> %wide.load396, ptr %i.wb, align 16, !tbaa !40
  %index.next397 = add nuw i64 %index394, 32      ; 2 uses
  %i.wc = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.wc, label %middle.block398, label %vector.body393, !llvm.loop !138

middle.block398:                                  ; preds = %vector.body393
  %cmp.n399 = icmp eq i64 %n.vec392, %wide.trip.count190
  br i1 %cmp.n399, label %check_intra_mode.exit42.us.us, label %vec.epilog.iter.check403

vec.epilog.iter.check403:                         ; preds = %middle.block398
  %min.epilog.iters.check404 = icmp eq i64 %i.vw, 0
  br i1 %min.epilog.iters.check404, label %.lr.ph123.us.us.preheader, label %vec.epilog.vector.body407.preheader, !prof !150

vec.epilog.vector.body407.preheader:              ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check403
  %index408.ph = phi i64 [ 0, %vector.main.loop.iter.check389 ], [ %n.vec392, %vec.epilog.iter.check403 ]
  br label %vec.epilog.vector.body407

.lr.ph123.us.us.preheader:                        ; preds = %iter.check401, %vec.epilog.iter.check403
  %indvars.iv187.ph = phi i64 [ %n.vec392, %vec.epilog.iter.check403 ], [ 0, %iter.check401 ]
  br label %.lr.ph123.us.us

vec.epilog.vector.body407:                        ; preds = %vec.epilog.vector.body407.preheader, %vec.epilog.vector.body407
  %index408 = phi i64 [ %index.next410, %vec.epilog.vector.body407 ], [ %index408.ph, %vec.epilog.vector.body407.preheader ] ; 3 uses
  %i.wd = getelementptr inbounds i8, ptr %i.se, i64 %index408
  %i.we = getelementptr inbounds i8, ptr %i.wd, i64 -1
  %wide.load409 = load <4 x i8>, ptr %i.we, align 1, !tbaa !40
  %i.wf = getelementptr inbounds nuw i8, ptr %i.b, i64 %index408
  store <4 x i8> %wide.load409, ptr %i.wf, align 4, !tbaa !40
  %index.next410 = add nuw i64 %index408, 4       ; 2 uses
  %i.wg = icmp eq i64 %index.next410, %wide.trip.count190
  br i1 %i.wg, label %check_intra_mode.exit42.us.us, label %vec.epilog.vector.body407, !llvm.loop !139

.preheader84.us.us:                               ; preds = %bb.bh
  %i.wh = icmp sgt i32 %i.sc, 0
  br i1 %i.wh, label %iter.check441, label %._crit_edge.us144.us

iter.check441:                                    ; preds = %.preheader84.us.us
  %30 = zext nneg i32 %i.sc to i64                ; 9 uses
  %min.iters.check426 = icmp ult i32 %i.sc, 8
  br i1 %min.iters.check426, label %.lr.ph121.us.us.preheader, label %vector.scevcheck414

vector.scevcheck414:                              ; preds = %iter.check441
  %ident.check415 = icmp ne i64 %i.sg, 1
  %31 = add nsw i64 %30, -1                       ; 2 uses
  %32 = add i32 %i.rv, -1                         ; 2 uses
  %33 = trunc nsw i64 %31 to i32
  %34 = sub i32 %32, %33
  %35 = icmp sgt i32 %34, %32
  %i.wi = icmp ugt i64 %31, 4294967295
  %36 = or i1 %35, %i.wi
  %37 = or i1 %ident.check415, %36
  br i1 %37, label %.lr.ph121.us.us.preheader, label %vector.memcheck416

vector.memcheck416:                               ; preds = %vector.scevcheck414
  %scevgep417 = getelementptr i8, ptr %i.se, i64 -1 ; 2 uses
  %scevgep418 = getelementptr i8, ptr %scevgep417, i64 %30
  %38 = add i32 %i.rv, -4
  %39 = sext i32 %38 to i64                       ; 2 uses
  %40 = sub nsw i64 %39, %30
  %scevgep420 = getelementptr i8, ptr %scevgep419, i64 %40
  %scevgep422 = getelementptr i8, ptr %scevgep421, i64 %39
  %bound0423 = icmp ult ptr %scevgep417, %scevgep422
  %bound1424 = icmp ult ptr %scevgep420, %scevgep418
  %found.conflict425 = and i1 %bound0423, %bound1424
  br i1 %found.conflict425, label %.lr.ph121.us.us.preheader, label %vector.main.loop.iter.check427

vector.main.loop.iter.check427:                   ; preds = %vector.memcheck416
  %min.iters.check428 = icmp ult i32 %i.sc, 32
  br i1 %min.iters.check428, label %vec.epilog.ph445, label %vector.ph429

vector.ph429:                                     ; preds = %vector.main.loop.iter.check427
  %i.wj = and i64 %30, 24
  %n.vec430 = and i64 %30, 2147483616             ; 4 uses
  br label %vector.body431

vector.body431:                                   ; preds = %vector.body431, %vector.ph429
  %index432 = phi i64 [ 0, %vector.ph429 ], [ %index.next437, %vector.body431 ] ; 3 uses
  %i.wk = getelementptr inbounds i8, ptr %i.se, i64 %index432 ; 2 uses
  %i.wl = getelementptr inbounds i8, ptr %i.wk, i64 -1
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 15
  %wide.load433 = load <16 x i8>, ptr %i.wl, align 1, !tbaa !40, !alias.scope !156, !noalias !157
  %wide.load434 = load <16 x i8>, ptr %i.wm, align 1, !tbaa !40, !alias.scope !156, !noalias !157
  %41 = trunc nuw nsw i64 %index432 to i32
  %42 = xor i32 %41, -1
  %43 = add i32 %i.rv, %42
  %44 = sext i32 %43 to i64
  %i.wn = getelementptr inbounds i8, ptr %i.b, i64 %44 ; 2 uses
  %i.wo = getelementptr inbounds i8, ptr %i.wn, i64 -15
  %i.wp = getelementptr inbounds i8, ptr %i.wn, i64 -31
  %reverse435 = shufflevector <16 x i8> %wide.load433, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse436 = shufflevector <16 x i8> %wide.load434, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse435, ptr %i.wo, align 1, !tbaa !40, !alias.scope !157
  store <16 x i8> %reverse436, ptr %i.wp, align 1, !tbaa !40, !alias.scope !157
  %index.next437 = add nuw i64 %index432, 32      ; 2 uses
  %i.wq = icmp eq i64 %index.next437, %n.vec430
  br i1 %i.wq, label %middle.block438, label %vector.body431, !llvm.loop !143

middle.block438:                                  ; preds = %vector.body431
  %cmp.n439 = icmp eq i64 %n.vec430, %30
  br i1 %cmp.n439, label %._crit_edge.us144.us, label %vec.epilog.iter.check443

vec.epilog.iter.check443:                         ; preds = %middle.block438
  %min.epilog.iters.check444 = icmp eq i64 %i.wj, 0
  br i1 %min.epilog.iters.check444, label %.lr.ph121.us.us.preheader, label %vec.epilog.ph445, !prof !153

vec.epilog.ph445:                                 ; preds = %vector.main.loop.iter.check427, %vec.epilog.iter.check443
  %vec.epilog.resume.val440 = phi i64 [ %n.vec430, %vec.epilog.iter.check443 ], [ 0, %vector.main.loop.iter.check427 ]
  %n.vec446 = and i64 %30, 2147483640             ; 3 uses
  br label %vec.epilog.vector.body447

vec.epilog.vector.body447:                        ; preds = %vec.epilog.vector.body447, %vec.epilog.ph445
  %index448 = phi i64 [ %vec.epilog.resume.val440, %vec.epilog.ph445 ], [ %index.next451, %vec.epilog.vector.body447 ] ; 3 uses
  %i.wr = getelementptr inbounds i8, ptr %i.se, i64 %index448
  %i.ws = getelementptr inbounds i8, ptr %i.wr, i64 -1
  %wide.load449 = load <8 x i8>, ptr %i.ws, align 1, !tbaa !40, !alias.scope !156, !noalias !157
  %45 = trunc nuw nsw i64 %index448 to i32
  %46 = xor i32 %45, -1
  %47 = add i32 %i.rv, %46
  %48 = sext i32 %47 to i64
  %i.wt = getelementptr inbounds i8, ptr %i.b, i64 %48
  %i.wu = getelementptr inbounds i8, ptr %i.wt, i64 -7
  %reverse450 = shufflevector <8 x i8> %wide.load449, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse450, ptr %i.wu, align 1, !tbaa !40, !alias.scope !157
  %index.next451 = add nuw i64 %index448, 8       ; 2 uses
  %i.wv = icmp eq i64 %index.next451, %n.vec446
  br i1 %i.wv, label %vec.epilog.middle.block452, label %vec.epilog.vector.body447, !llvm.loop !144

vec.epilog.middle.block452:                       ; preds = %vec.epilog.vector.body447
  %cmp.n453 = icmp eq i64 %n.vec446, %30
  br i1 %cmp.n453, label %._crit_edge.us144.us, label %.lr.ph121.us.us.preheader

.lr.ph121.us.us.preheader:                        ; preds = %vector.memcheck416, %vector.scevcheck414, %iter.check441, %vec.epilog.iter.check443, %vec.epilog.middle.block452
  %indvars.iv184.ph = phi i64 [ 0, %iter.check441 ], [ 0, %vector.scevcheck414 ], [ 0, %vector.memcheck416 ], [ %n.vec430, %vec.epilog.iter.check443 ], [ %n.vec446, %vec.epilog.middle.block452 ]
  br label %.lr.ph121.us.us

.preheader85.us.us:                               ; preds = %bb.bh
  %i.ww = icmp sgt i32 %i.rv, 0
  br i1 %i.ww, label %iter.check478, label %check_intra_mode.exit42.us.us

iter.check478:                                    ; preds = %.preheader85.us.us
  %i.wx = zext nneg i32 %i.rv to i64
  %wide.trip.count182 = zext nneg i32 %i.rv to i64 ; 7 uses
  %i.wy = getelementptr i8, ptr %i.b, i64 %i.wx   ; 7 uses
  %min.iters.check463 = icmp ugt i32 %i.rv, 7
  %ident.check456.not = icmp eq i64 %i.sg, 1
  %or.cond497 = select i1 %min.iters.check463, i1 %ident.check456.not, i1 false
  br i1 %or.cond497, label %vector.memcheck457, label %.lr.ph.us143.us.preheader

vector.memcheck457:                               ; preds = %iter.check478
  %scevgep458 = getelementptr i8, ptr %i.se, i64 -1 ; 2 uses
  %scevgep459 = getelementptr i8, ptr %scevgep458, i64 %wide.trip.count182
  %bound0460 = icmp ult ptr %i.b, %scevgep459
  %bound1461 = icmp ult ptr %scevgep458, %i.wy
  %found.conflict462 = and i1 %bound0460, %bound1461
  br i1 %found.conflict462, label %.lr.ph.us143.us.preheader, label %vector.main.loop.iter.check464

vector.main.loop.iter.check464:                   ; preds = %vector.memcheck457
  %min.iters.check465 = icmp ult i32 %i.rv, 32
  br i1 %min.iters.check465, label %vec.epilog.ph482, label %vector.ph466

vector.ph466:                                     ; preds = %vector.main.loop.iter.check464
  %i.wz = and i64 %wide.trip.count182, 24
  %n.vec467 = and i64 %wide.trip.count182, 2147483616 ; 4 uses
  br label %vector.body468

vector.body468:                                   ; preds = %vector.body468, %vector.ph466
  %index469 = phi i64 [ 0, %vector.ph466 ], [ %index.next474, %vector.body468 ] ; 3 uses
  %i.xa = getelementptr inbounds i8, ptr %i.se, i64 %index469 ; 2 uses
  %i.xb = getelementptr inbounds i8, ptr %i.xa, i64 -1
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 15
  %wide.load470 = load <16 x i8>, ptr %i.xb, align 1, !tbaa !40, !alias.scope !158
  %wide.load471 = load <16 x i8>, ptr %i.xc, align 1, !tbaa !40, !alias.scope !158
  %i.xd = xor i64 %index469, -1
  %i.xe = getelementptr i8, ptr %i.wy, i64 %i.xd  ; 2 uses
  %i.xf = getelementptr i8, ptr %i.xe, i64 -15
  %i.xg = getelementptr i8, ptr %i.xe, i64 -31
  %reverse472 = shufflevector <16 x i8> %wide.load470, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse473 = shufflevector <16 x i8> %wide.load471, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse472, ptr %i.xf, align 4, !tbaa !40, !alias.scope !159, !noalias !158
  store <16 x i8> %reverse473, ptr %i.xg, align 4, !tbaa !40, !alias.scope !159, !noalias !158
  %index.next474 = add nuw i64 %index469, 32      ; 2 uses
  %i.xh = icmp eq i64 %index.next474, %n.vec467
  br i1 %i.xh, label %middle.block475, label %vector.body468, !llvm.loop !148

middle.block475:                                  ; preds = %vector.body468
  %cmp.n476 = icmp eq i64 %n.vec467, %wide.trip.count182
  br i1 %cmp.n476, label %check_intra_mode.exit42.us.us, label %vec.epilog.iter.check480

vec.epilog.iter.check480:                         ; preds = %middle.block475
  %min.epilog.iters.check481 = icmp eq i64 %i.wz, 0
  br i1 %min.epilog.iters.check481, label %.lr.ph.us143.us.preheader, label %vec.epilog.ph482, !prof !153

vec.epilog.ph482:                                 ; preds = %vector.main.loop.iter.check464, %vec.epilog.iter.check480
  %vec.epilog.resume.val477 = phi i64 [ %n.vec467, %vec.epilog.iter.check480 ], [ 0, %vector.main.loop.iter.check464 ]
  %n.vec483 = and i64 %wide.trip.count182, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body484

vec.epilog.vector.body484:                        ; preds = %vec.epilog.vector.body484, %vec.epilog.ph482
  %index485 = phi i64 [ %vec.epilog.resume.val477, %vec.epilog.ph482 ], [ %index.next488, %vec.epilog.vector.body484 ] ; 3 uses
  %i.xi = getelementptr inbounds i8, ptr %i.se, i64 %index485
  %i.xj = getelementptr inbounds i8, ptr %i.xi, i64 -1
  %wide.load486 = load <8 x i8>, ptr %i.xj, align 1, !tbaa !40, !alias.scope !158
  %i.xk = xor i64 %index485, -1
  %i.xl = getelementptr i8, ptr %i.wy, i64 %i.xk
  %i.xm = getelementptr i8, ptr %i.xl, i64 -7
  %reverse487 = shufflevector <8 x i8> %wide.load486, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse487, ptr %i.xm, align 4, !tbaa !40, !alias.scope !159, !noalias !158
  %index.next488 = add nuw i64 %index485, 8       ; 2 uses
  %i.xn = icmp eq i64 %index.next488, %n.vec483
  br i1 %i.xn, label %vec.epilog.middle.block489, label %vec.epilog.vector.body484, !llvm.loop !149

vec.epilog.middle.block489:                       ; preds = %vec.epilog.vector.body484
  %cmp.n490 = icmp eq i64 %n.vec483, %wide.trip.count182
  br i1 %cmp.n490, label %check_intra_mode.exit42.us.us, label %.lr.ph.us143.us.preheader

.lr.ph.us143.us.preheader:                        ; preds = %vector.memcheck457, %iter.check478, %vec.epilog.iter.check480, %vec.epilog.middle.block489
  %indvars.iv179.ph = phi i64 [ 0, %iter.check478 ], [ 0, %vector.memcheck457 ], [ %n.vec467, %vec.epilog.iter.check480 ], [ %n.vec483, %vec.epilog.middle.block489 ]
  br label %.lr.ph.us143.us

._crit_edge138.us.us:                             ; preds = %bb.bk
  %i.xo = load ptr, ptr %i.at, align 8, !tbaa !76 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 68
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !77
  %i.xr = mul nsw i32 %i.xq, %i.nk
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr inbounds i8, ptr %.1.i142.us.us, i64 %i.xs
  %i.xu = load i64, ptr %i.my, align 8, !tbaa !91
  %i.xv = mul nsw i64 %i.xu, %i.nl
  %i.xw = getelementptr inbounds i8, ptr %.1180.i141.us.us, i64 %i.xv
  %i.xx = add nsw i32 %.1183.i140.us.us, %i.aq    ; 2 uses
  %i.xy = icmp slt i32 %i.xx, %i.mt
  br i1 %i.xy, label %.preheader87.us.us, label %..loopexit_crit_edge.split.us.us, !llvm.loop !4

..loopexit_crit_edge.split.us.us:                 ; preds = %._crit_edge138.us.us
  br i1 %i.nq, label %.preheader87.lr.ph.us, label %intra_recon.exit.split, !llvm.loop !5

intra_recon.exit.split:                           ; preds = %..loopexit_crit_edge.split.us.us, %._crit_edge118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_vp9_intra_recon_16bpp(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 12 uses
  %i.b = alloca [64 x i8], align 16               ; 66 uses
  %i.c = load ptr, ptr %0, align 16, !tbaa !34    ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !36   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 16, !tbaa !37  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_vp9_bwh_tab, i64 26), i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 2, !tbaa !40
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 1                  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !41   ; 5 uses
  %i.s = shl nuw i32 1, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !40
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 1
  %i.x = shl i32 %i.r, 1
  %i.y = shl nuw i32 1, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 3964
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !66
  %i.ab = sub i32 %i.aa, %i.i
  %i.ac = shl i32 %i.ab, 1
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.p) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !67
  %i.af = sub i32 %i.ae, %i.g
  %i.ag = shl i32 %i.af, 1
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 %i.w) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !68
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 2                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !69 ; 6 uses
  %i.ao = add i32 %i.al, %i.an
  %i.ap = shl nuw i32 1, %i.an                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 448 ; 5 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !76 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %.._crit_edge156_crit_edge, label %.preheader118.lr.ph

.._crit_edge156_crit_edge:                        ; preds = %bb.a
  %.pre = and i32 %i.g, 7
  br label %._crit_edge156

.preheader118.lr.ph:                              ; preds = %bb.a
  %i.av = add i32 %i.al, %i.r
  %.not200 = icmp eq i32 %..i, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 13 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 10 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 77112 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bb = icmp sgt i32 %i.g, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = and i32 %i.g, 7                         ; 3 uses
  %i.be = shl i32 %i.i, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 1376
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 1856
  %i.bk = sext i32 %i.av to i64
  %i.bl = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 77048
  %i.bn = shl i32 8, %i.r
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = shl i32 4, %i.r                         ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  br i1 %.not200, label %._crit_edge156, label %.preheader118.us.preheader

.preheader118.us.preheader:                       ; preds = %.preheader118.lr.ph
  %i.br = add nsw i32 %i.p, -1
  %i.bs = getelementptr inbounds i8, ptr %i.au, i64 %1
  %i.bt = sext i32 %i.s to i64                    ; 2 uses
  %i.bu = sext i32 %i.br to i64
  %i.bv = zext nneg i32 %..i to i64
  %i.bw = zext nneg i32 %i.y to i64
  %i.bx = zext nneg i32 %i.ah to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %scevgep436.a = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %scevgep438.a = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.preheader118.us

.preheader118.us:                                 ; preds = %.preheader118.us.preheader, %._crit_edge151.us
  %indvars.iv258 = phi i64 [ 0, %.preheader118.us.preheader ], [ %indvars.iv.next259, %._crit_edge151.us ] ; 5 uses
  %.0178.i155.us = phi ptr [ %i.bs, %.preheader118.us.preheader ], [ %i.sp, %._crit_edge151.us ] ; 2 uses
  %.0179.i154.us = phi ptr [ %i.ar, %.preheader118.us.preheader ], [ %i.ss, %._crit_edge151.us ] ; 2 uses
  %.0186.i152.us = phi i64 [ 0, %.preheader118.us.preheader ], [ %indvars.iv.next254, %._crit_edge151.us ]
  %i.bz = shl nsw i64 %indvars.iv258, 1
  %i.ca = icmp sgt i64 %indvars.iv258, 0
  %i.cb = or i1 %i.bb, %i.ca                      ; 5 uses
  %i.cc = zext i1 %i.cb to i64
  %i.cd = trunc i64 %indvars.iv258 to i32         ; 2 uses
  %i.ce = or i32 %i.bd, %i.cd
  %or.cond3.not.i.us = icmp eq i32 %i.ce, 0
  %i.cf = icmp eq i64 %indvars.iv258, 0           ; 2 uses
  %i.cg = select i1 %i.cb, i32 1, i32 65535
  %invariant.gep = getelementptr i8, ptr %i.aw, i64 %i.bz
  br label %bb.b

bb.b:                                             ; preds = %.preheader118.us, %bb.ab
  %indvars.iv253 = phi i64 [ %.0186.i152.us, %.preheader118.us ], [ %indvars.iv.next254, %bb.ab ] ; 4 uses
  %indvars.iv251 = phi i64 [ 0, %.preheader118.us ], [ %indvars.iv.next252, %bb.ab ] ; 7 uses
  %.0176.i147.us = phi ptr [ %.0178.i155.us, %.preheader118.us ], [ %i.lf, %bb.ab ] ; 3 uses
  %.0177.i144.us = phi ptr [ %.0179.i154.us, %.preheader118.us ], [ %i.le, %bb.ab ] ; 5 uses
  %i.ch = load i32, ptr %i.j, align 4, !tbaa !39
  %i.ci = icmp ugt i32 %i.ch, 9
  %.pre.pre = load i32, ptr %i.q, align 4, !tbaa !41 ; 9 uses
  %i.cj = icmp eq i32 %.pre.pre, 0
  %or.cond = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ck = load i8, ptr %i.aw, align 1, !tbaa !40
  %i.cl = zext i8 %i.ck to i64                    ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !77 ; 3 uses
  %i.co = load i8, ptr %i.ay, align 2, !tbaa !78
  %.not196.i.us = icmp eq i8 %i.co, 0
  br i1 %.not196.i.us, label %bb.d, label %bb.f

.thread:                                          ; preds = %bb.b
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv251
  %i.cp = load i8, ptr %gep, align 1, !tbaa !40
  %i.cq = zext i8 %i.cp to i64                    ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !77 ; 2 uses
  %i.ct = load i8, ptr %i.ay, align 2, !tbaa !78
  %.not196.i.us337 = icmp eq i8 %i.ct, 0
  br i1 %.not196.i.us337, label %.thread338, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cu = icmp ugt i32 %.pre.pre, 1
  br i1 %i.cu, label %bb.e, label %.thread338

.thread338:                                       ; preds = %.thread, %bb.d
  %i.cv = phi i64 [ %i.cl, %bb.d ], [ %i.cq, %.thread ]
  %i.cw = phi i32 [ %i.cn, %bb.d ], [ %i.cs, %.thread ]
  %i.cx = load ptr, ptr %i.az, align 8, !tbaa !79
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %indvars.iv253
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !40
  %i.da = zext i8 %i.cz to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.db = load ptr, ptr %i.az, align 8, !tbaa !79
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %indvars.iv253
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !40
  %i.de = zext i16 %i.dd to i32
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %.thread338, %bb.c
  %i.df = phi i32 [ %i.cn, %bb.c ], [ %i.cn, %bb.e ], [ %i.cw, %.thread338 ], [ %i.cs, %.thread ]
  %i.dg = phi i64 [ %i.cl, %bb.c ], [ %i.cl, %bb.e ], [ %i.cv, %.thread338 ], [ %i.cq, %.thread ]
  %i.dh = phi i32 [ 0, %bb.c ], [ %i.de, %bb.e ], [ %i.da, %.thread338 ], [ 0, %.thread ] ; 2 uses
  %i.di = load ptr, ptr %i.as, align 8, !tbaa !76
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !77
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = load i64, ptr %i.ba, align 16, !tbaa !80 ; 3 uses
  %i.dn = load ptr, ptr %0, align 16, !tbaa !34   ; 4 uses
  %i.do = load i32, ptr %i.bc, align 16, !tbaa !81
  %i.dp = icmp ugt i32 %i.i, %i.do
  %i.dq = icmp sgt i64 %indvars.iv251, 0
  %i.dr = or i1 %i.dq, %i.dp                      ; 5 uses
  %i.ds = icmp slt i64 %indvars.iv251, %i.bu      ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !82
  %i.dv = zext i8 %i.du to i32                    ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @check_intra_mode.mode_conv, i64 %i.dg
  %i.dx = zext i1 %i.dr to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.cc
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !40  ; 3 uses
  %i.eb = zext i8 %i.ea to i64                    ; 2 uses
  %i.ec = shl nuw i64 1, %i.eb                    ; 4 uses
  %i.ed = and i64 %i.ec, 29954
  %.not.not.i.us = icmp eq i64 %i.ed, 0
  br i1 %.not.not.i.us, label %bb.g, label %.loopexit115.us

bb.g:                                             ; preds = %bb.f
  %i.ee = shl i32 4, %.pre.pre                    ; 8 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 3964
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !66
  %i.eh = sub i32 %i.eg, %i.i
  %i.ei = shl i32 %i.eh, 1
  %i.ej = trunc nsw i64 %indvars.iv251 to i32     ; 2 uses
  %i.ek = sub i32 %i.ei, %i.ej                    ; 2 uses
  %i.el = shl i32 %i.ek, 2                        ; 6 uses
  %i.em = icmp eq i32 %.pre.pre, 0                ; 2 uses
  %i.en = and i8 %i.ea, -5                        ; 2 uses
  %i.eo = icmp eq i8 %i.en, 3                     ; 2 uses
  %or.cond.i.us = select i1 %i.eo, i1 %i.ds, i1 false
  %spec.select.i.us = select i1 %or.cond.i.us, i32 4, i32 0 ; 2 uses
  br i1 %i.cb, label %bb.h, label %.critedge.i.preheader.us

.critedge.i.us:                                   ; preds = %vec.epilog.iter.check543, %.critedge.i.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.i.us ], [ %n.vec532, %vec.epilog.iter.check543 ] ; 2 uses
  %i.ep = shl nuw nsw i64 %indvars.iv, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ep
  store i16 %i.rp, ptr %i.eq, align 2, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit116.us, label %.critedge.i.us, !llvm.loop !160

bb.h:                                             ; preds = %bb.g
  br i1 %or.cond3.not.i.us, label %.thread.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.er = sub nsw i64 0, %i.dm
  %i.es = getelementptr inbounds i8, ptr %.0177.i144.us, i64 %i.er ; 2 uses
  %i.et = sub nsw i64 0, %i.dl
  %i.eu = getelementptr inbounds i8, ptr %.0176.i147.us, i64 %i.et ; 2 uses
  %i.ev = select i1 %i.cf, ptr %i.eu, ptr %i.es   ; 2 uses
  br i1 %i.dr, label %bb.j, label %.thread72.us

bb.j:                                             ; preds = %bb.i
  %i.ew = icmp eq i64 %indvars.iv251, 0
  %or.cond7.i.us = or i1 %i.cf, %i.ew
  %spec.select = select i1 %or.cond7.i.us, ptr %i.eu, ptr %i.es
  br label %.thread72.us

.thread.us:                                       ; preds = %bb.h
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dn, i64 19136
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !70
  %i.ez = shl i32 %i.ej, 3
  %i.fa = add i32 %i.ez, %i.be
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ey, i64 %i.fb ; 2 uses
  br label %.thread72.us

.thread72.us:                                     ; preds = %bb.j, %.thread.us, %bb.i
  %.0280.i.ph.us = phi ptr [ %i.fc, %.thread.us ], [ %i.ev, %bb.j ], [ %i.ev, %bb.i ] ; 10 uses
  %.0279.i.ph.us = phi ptr [ %i.fc, %.thread.us ], [ %spec.select, %bb.j ], [ undef, %bb.i ] ; 6 uses
  %i.fd = and i64 %i.ec, 2189
  %.not289.not.i.us = icmp ne i64 %i.fd, 0
  %i.fe = icmp eq ptr %.0280.i.ph.us, %.0279.i.ph.us
  %or.cond301.i.us = select i1 %i.dr, i1 %i.fe, i1 false
  %or.cond308.i.us = select i1 %.not289.not.i.us, i1 true, i1 %or.cond301.i.us
  br i1 %or.cond308.i.us, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.thread72.us
  br i1 %i.em, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not291.old.i.us = icmp sgt i32 %i.ee, %i.el
  br i1 %.not291.old.i.us, label %bb.n, label %.loopexit115.us

bb.m:                                             ; preds = %bb.k
  %i.ff = icmp ne i8 %i.en, 3
  %or.cond9.i.us = select i1 %i.ff, i1 true, i1 %i.ds
  %i.fg = add nuw nsw i32 %spec.select.i.us, %i.ee
  %.not291.i.us = icmp sle i32 %i.fg, %i.el
  %or.cond302.i.not.us = select i1 %or.cond9.i.us, i1 %.not291.i.us, i1 false
  br i1 %or.cond302.i.not.us, label %.loopexit115.us, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.thread72.us
  %.not292.i.us = icmp sgt i32 %i.ee, %i.el
  br i1 %.not292.i.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fh = shl i32 8, %.pre.pre
  %i.fi = sext i32 %i.fh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ax, ptr align 1 %.0280.i.ph.us, i64 %i.fi, i1 false)
  br label %.loopexit116.us

bb.p:                                             ; preds = %bb.n
  %i.fj = shl i32 %i.ek, 3                        ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ax, ptr align 1 %.0280.i.ph.us, i64 %i.fk, i1 false)
  %i.fl = add i32 %i.fj, -2
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds i8, ptr %i.ax, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !40 ; 3 uses
  %i.fp = sub nsw i32 %i.ee, %i.el                ; 3 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %iter.check514, label %.loopexit116.us

iter.check514:                                    ; preds = %bb.p
  %i.fr = sext i32 %i.el to i64                   ; 3 uses
  %i.fs = zext nneg i32 %i.fp to i64              ; 5 uses
  %min.iters.check503 = icmp ult i32 %i.fp, 16
  br i1 %min.iters.check503, label %vec.epilog.ph518, label %vector.ph504

vector.ph504:                                     ; preds = %iter.check514
  %i.ft = and i64 %i.fs, 12
  %n.vec505 = and i64 %i.fs, 2147483632           ; 4 uses
  %broadcast.splatinsert506 = insertelement <8 x i16> poison, i16 %i.fo, i64 0
  %broadcast.splat507 = shufflevector <8 x i16> %broadcast.splatinsert506, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body508

vector.body508:                                   ; preds = %vector.body508, %vector.ph504
  %index509 = phi i64 [ 0, %vector.ph504 ], [ %index.next510, %vector.body508 ] ; 2 uses
  %i.fu = add nsw i64 %index509, %i.fr
  %i.fv = shl nsw i64 %i.fu, 1
  %i.fw = getelementptr inbounds i8, ptr %i.ax, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <8 x i16> %broadcast.splat507, ptr %i.fw, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat507, ptr %i.fx, align 8, !tbaa !40
  %index.next510 = add nuw i64 %index509, 16      ; 2 uses
  %i.fy = icmp eq i64 %index.next510, %n.vec505
  br i1 %i.fy, label %middle.block511, label %vector.body508, !llvm.loop !161

middle.block511:                                  ; preds = %vector.body508
  %cmp.n512 = icmp eq i64 %n.vec505, %i.fs
  br i1 %cmp.n512, label %.loopexit116.us, label %vec.epilog.iter.check516

vec.epilog.iter.check516:                         ; preds = %middle.block511
  %min.epilog.iters.check517 = icmp eq i64 %i.ft, 0
  br i1 %min.epilog.iters.check517, label %.lr.ph121.us, label %vec.epilog.ph518, !prof !230

vec.epilog.ph518:                                 ; preds = %iter.check514, %vec.epilog.iter.check516
  %vec.epilog.resume.val513 = phi i64 [ %n.vec505, %vec.epilog.iter.check516 ], [ 0, %iter.check514 ]
  %broadcast.splatinsert520 = insertelement <4 x i16> poison, i16 %i.fo, i64 0
  %broadcast.splat521 = shufflevector <4 x i16> %broadcast.splatinsert520, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body522

vec.epilog.vector.body522:                        ; preds = %vec.epilog.vector.body522, %vec.epilog.ph518
  %index523 = phi i64 [ %vec.epilog.resume.val513, %vec.epilog.ph518 ], [ %index.next524, %vec.epilog.vector.body522 ] ; 2 uses
  %i.fz = add nsw i64 %index523, %i.fr
  %i.ga = shl nsw i64 %i.fz, 1
  %i.gb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ga
  store <4 x i16> %broadcast.splat521, ptr %i.gb, align 8, !tbaa !40
  %index.next524 = add nuw i64 %index523, 4       ; 2 uses
  %i.gc = icmp eq i64 %index.next524, %i.fs
  br i1 %i.gc, label %.loopexit116.us, label %vec.epilog.vector.body522, !llvm.loop !162

.lr.ph121.us:                                     ; preds = %vec.epilog.iter.check516, %.lr.ph121.us
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %.lr.ph121.us ], [ %n.vec505, %vec.epilog.iter.check516 ] ; 2 uses
  %i.gd = add nsw i64 %indvars.iv217, %i.fr
  %i.ge = shl nsw i64 %i.gd, 1
  %i.gf = getelementptr inbounds i8, ptr %i.ax, i64 %i.ge
  store i16 %i.fo, ptr %i.gf, align 2, !tbaa !40
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.gg = icmp samesign ult i64 %indvars.iv.next218, %i.fs
  br i1 %i.gg, label %.lr.ph121.us, label %.loopexit116.us, !llvm.loop !163

.loopexit116.us:                                  ; preds = %.critedge.i.us, %vec.epilog.vector.body549, %.lr.ph121.us, %vec.epilog.vector.body522, %middle.block538, %middle.block511, %.critedge.i.preheader.us, %bb.p, %bb.o
  %.0279.i79.us = phi ptr [ %.0279.i.ph.us, %bb.p ], [ %.0279.i.ph.us, %bb.o ], [ %.0279.i.ph.us, %middle.block511 ], [ undef, %.critedge.i.preheader.us ], [ undef, %vec.epilog.vector.body549 ], [ %.0279.i.ph.us, %vec.epilog.vector.body522 ], [ %.0279.i.ph.us, %.lr.ph121.us ], [ undef, %middle.block538 ], [ undef, %.critedge.i.us ]
  %.0280.i76.us = phi ptr [ %.0280.i.ph.us, %bb.p ], [ %.0280.i.ph.us, %bb.o ], [ %.0280.i.ph.us, %middle.block511 ], [ undef, %.critedge.i.preheader.us ], [ undef, %vec.epilog.vector.body549 ], [ %.0280.i.ph.us, %vec.epilog.vector.body522 ], [ %.0280.i.ph.us, %.lr.ph121.us ], [ undef, %middle.block538 ], [ undef, %.critedge.i.us ]
  %i.gh = and i64 %i.ec, 2189
  %.not293.not.i.us = icmp eq i64 %i.gh, 0
  br i1 %.not293.not.i.us, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.loopexit116.us
  %or.cond11.i.us = and i1 %i.cb, %i.dr
  br i1 %or.cond11.i.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gi = add nsw i32 %i.dv, -8
  %i.gj = shl i32 128, %i.gi
  %i.gk = add nuw i32 %i.gj, %i.cg
  %i.gl = trunc i32 %i.gk to i16
  br label %.sink.split

bb.s:                                             ; preds = %bb.q
  %i.gm = getelementptr inbounds i8, ptr %.0279.i79.us, i64 -2
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.s
  %.sink = phi i16 [ %i.gn, %bb.s ], [ %i.gl, %bb.r ]
  store i16 %.sink, ptr %i.bf, align 2, !tbaa !40
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %.loopexit116.us
  %or.cond304.i.us = and i1 %i.em, %i.eo
  br i1 %or.cond304.i.us, label %bb.u, label %.loopexit115.us

bb.u:                                             ; preds = %bb.t
  %or.cond13.i.us = select i1 %i.cb, i1 %i.ds, i1 false
  %i.go = add nuw nsw i32 %spec.select.i.us, %i.ee
  %.not295.i.us = icmp sle i32 %i.go, %i.el
  %or.cond306.i.not.us = select i1 %or.cond13.i.us, i1 %.not295.i.us, i1 false
  br i1 %or.cond306.i.not.us, label %bb.v, label %.loopexit115.us.loopexit

.loopexit115.us.loopexit:                         ; preds = %bb.u
  %i.gp = load <8 x i16>, ptr %i.bg, align 2
  %i.gq = shufflevector <8 x i16> %i.gp, <8 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.gq, ptr %i.by, align 8, !tbaa !40
  br label %.loopexit115.us

bb.v:                                             ; preds = %bb.u
  %i.gr = getelementptr inbounds nuw i8, ptr %.0280.i76.us, i64 8
  %i.gs = load i64, ptr %i.gr, align 1
  store i64 %i.gs, ptr %i.bh, align 8
  br label %.loopexit115.us

.loopexit115.us:                                  ; preds = %.loopexit115.us.loopexit, %bb.v, %bb.t, %bb.m, %bb.l, %bb.f
  %.071.us = phi ptr [ %.0280.i.ph.us, %bb.m ], [ %i.ax, %bb.v ], [ %i.ax, %bb.t ], [ %i.ax, %bb.f ], [ %.0280.i.ph.us, %bb.l ], [ %i.ax, %.loopexit115.us.loopexit ]
  %i.gt = and i64 %i.ec, 30857
  %.not296.not.i.us = icmp eq i64 %i.gt, 0
  br i1 %.not296.not.i.us, label %bb.w, label %check_intra_mode.exit.us

bb.w:                                             ; preds = %.loopexit115.us
  %i.gu = shl i32 4, %.pre.pre                    ; 15 uses
  br i1 %i.dr, label %bb.x, label %.preheader113.us

vec.epilog.scalar.ph488:                          ; preds = %vec.epilog.iter.check489, %vec.epilog.scalar.ph488
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %vec.epilog.scalar.ph488 ], [ %n.vec478, %vec.epilog.iter.check489 ] ; 2 uses
  %i.gv = shl nuw nsw i64 %indvars.iv224, 1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gv
  store i16 %i.sb, ptr %i.gw, align 2, !tbaa !40
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %check_intra_mode.exit.us, label %vec.epilog.scalar.ph488, !llvm.loop !164

bb.x:                                             ; preds = %bb.w
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dn, i64 3960
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !67
  %i.gz = sub i32 %i.gy, %i.g
  %i.ha = shl i32 %i.gz, 1
  %i.hb = sub i32 %i.ha, %i.cd                    ; 2 uses
  %i.hc = shl i32 %i.hb, 2                        ; 10 uses
  %i.hd = icmp eq i64 %indvars.iv251, 0           ; 2 uses
  %i.he = select i1 %i.hd, ptr %.0176.i147.us, ptr %.0177.i144.us ; 48 uses
  %i.hf = select i1 %i.hd, i64 %i.dl, i64 %i.dm   ; 12 uses
  %.not298.not.i.us = icmp eq i8 %i.ea, 8
  %.not300.i.us = icmp sgt i32 %i.gu, %i.hc       ; 2 uses
  br i1 %.not298.not.i.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not300.i.us, label %.preheader110.us, label %.preheader111.us

.lr.ph126.us:                                     ; preds = %.lr.ph126.us, %.lr.ph126.us.preheader805
  %indvars.iv229 = phi i64 [ %indvars.iv229.ph, %.lr.ph126.us.preheader805 ], [ %indvars.iv.next230.1, %.lr.ph126.us ] ; 5 uses
  %i.hg = mul nsw i64 %i.hf, %indvars.iv229
  %i.hh = getelementptr inbounds i8, ptr %i.he, i64 %i.hg
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -2
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !40
  %3 = xor i64 %indvars.iv229, -1
  %4 = add nsw i64 %14, %3
  %5 = shl nsw i64 %4, 1
  %i.hk = getelementptr inbounds i8, ptr %i.b, i64 %5
  store i16 %i.hj, ptr %i.hk, align 2, !tbaa !40
  %indvars.iv.next230 = or disjoint i64 %indvars.iv229, 1
  %i.hl = mul nsw i64 %i.hf, %indvars.iv.next230
  %i.hm = getelementptr inbounds i8, ptr %i.he, i64 %i.hl
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -2
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !40
  %6 = xor i64 %indvars.iv229, -2
  %7 = add nsw i64 %6, %14
  %8 = shl nsw i64 %7, 1
  %i.hp = getelementptr inbounds i8, ptr %i.b, i64 %8
  store i16 %i.ho, ptr %i.hp, align 2, !tbaa !40
  %indvars.iv.next230.1 = add nuw nsw i64 %indvars.iv229, 2 ; 2 uses
  %exitcond233.not.1 = icmp eq i64 %indvars.iv.next230.1, %wide.trip.count232
  br i1 %exitcond233.not.1, label %check_intra_mode.exit.us, label %.lr.ph126.us, !llvm.loop !165

.lr.ph128.us:                                     ; preds = %.lr.ph128.us.preheader804, %.lr.ph128.us
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.lr.ph128.us ], [ %indvars.iv234.ph, %.lr.ph128.us.preheader804 ] ; 3 uses
  %i.hq = mul nsw i64 %i.hf, %indvars.iv234
  %i.hr = getelementptr inbounds i8, ptr %i.he, i64 %i.hq
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -2
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !40
  %i.hu = trunc nuw nsw i64 %indvars.iv234 to i32
  %i.hv = xor i32 %i.hu, -1
  %i.hw = add i32 %i.gu, %i.hv
  %i.hx = shl nsw i32 %i.hw, 1
  %9 = sext i32 %i.hx to i64
  %i.hy = getelementptr inbounds i8, ptr %i.b, i64 %9
  store i16 %i.ht, ptr %i.hy, align 2, !tbaa !40
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %i.hz = icmp samesign ult i64 %indvars.iv.next235, %i.od
  br i1 %i.hz, label %.lr.ph128.us, label %._crit_edge.us, !llvm.loop !166

._crit_edge.us:                                   ; preds = %.lr.ph128.us, %middle.block450, %.preheader110.us
  %i.ia = sub nsw i32 %i.gu, %i.hc                ; 4 uses
  %i.ib = shl nuw nsw i32 %i.ia, 1
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ic
  %i.ie = load i16, ptr %i.id, align 8, !tbaa !40 ; 3 uses
  %i.if = icmp sgt i32 %i.ia, 0
  br i1 %i.if, label %iter.check416, label %check_intra_mode.exit.us

iter.check416:                                    ; preds = %._crit_edge.us
  %i.ig = zext nneg i32 %i.ia to i64              ; 5 uses
  %min.iters.check405 = icmp ult i32 %i.ia, 16
  br i1 %min.iters.check405, label %vec.epilog.ph420, label %vector.ph406

vector.ph406:                                     ; preds = %iter.check416
  %i.ih = and i64 %i.ig, 12
  %n.vec407 = and i64 %i.ig, 2147483632           ; 4 uses
  %broadcast.splatinsert408 = insertelement <8 x i16> poison, i16 %i.ie, i64 0
  %broadcast.splat409 = shufflevector <8 x i16> %broadcast.splatinsert408, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph406
  %index411 = phi i64 [ 0, %vector.ph406 ], [ %index.next412, %vector.body410 ] ; 2 uses
  %i.ii = shl nuw nsw i64 %index411, 1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ii ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store <8 x i16> %broadcast.splat409, ptr %i.ij, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat409, ptr %i.ik, align 16, !tbaa !40
  %index.next412 = add nuw i64 %index411, 16      ; 2 uses
  %i.il = icmp eq i64 %index.next412, %n.vec407
  br i1 %i.il, label %middle.block413, label %vector.body410, !llvm.loop !167

middle.block413:                                  ; preds = %vector.body410
  %cmp.n414 = icmp eq i64 %n.vec407, %i.ig
  br i1 %cmp.n414, label %check_intra_mode.exit.us, label %vec.epilog.iter.check418

vec.epilog.iter.check418:                         ; preds = %middle.block413
  %min.epilog.iters.check419 = icmp eq i64 %i.ih, 0
  br i1 %min.epilog.iters.check419, label %.lr.ph131.us, label %vec.epilog.ph420, !prof !230

vec.epilog.ph420:                                 ; preds = %iter.check416, %vec.epilog.iter.check418
  %vec.epilog.resume.val415 = phi i64 [ %n.vec407, %vec.epilog.iter.check418 ], [ 0, %iter.check416 ]
  %broadcast.splatinsert422 = insertelement <4 x i16> poison, i16 %i.ie, i64 0
  %broadcast.splat423 = shufflevector <4 x i16> %broadcast.splatinsert422, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body424

vec.epilog.vector.body424:                        ; preds = %vec.epilog.vector.body424, %vec.epilog.ph420
  %index425 = phi i64 [ %vec.epilog.resume.val415, %vec.epilog.ph420 ], [ %index.next426, %vec.epilog.vector.body424 ] ; 2 uses
  %i.im = shl nuw nsw i64 %index425, 1
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.im
  store <4 x i16> %broadcast.splat423, ptr %i.in, align 8, !tbaa !40
  %index.next426 = add nuw i64 %index425, 4       ; 2 uses
  %i.io = icmp eq i64 %index.next426, %i.ig
  br i1 %i.io, label %check_intra_mode.exit.us, label %vec.epilog.vector.body424, !llvm.loop !168

.lr.ph131.us:                                     ; preds = %vec.epilog.iter.check418, %.lr.ph131.us
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %.lr.ph131.us ], [ %n.vec407, %vec.epilog.iter.check418 ] ; 2 uses
  %i.ip = shl nuw nsw i64 %indvars.iv237, 1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ip
  store i16 %i.ie, ptr %i.iq, align 2, !tbaa !40
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.ir = icmp samesign ult i64 %indvars.iv.next238, %i.ig
  br i1 %i.ir, label %.lr.ph131.us, label %check_intra_mode.exit.us, !llvm.loop !169

bb.z:                                             ; preds = %bb.x
  br i1 %.not300.i.us, label %.preheader106.us, label %.preheader107.us

.lr.ph133.us:                                     ; preds = %.lr.ph133.us, %.lr.ph133.us.preheader800
  %indvars.iv240 = phi i64 [ %indvars.iv240.ph, %.lr.ph133.us.preheader800 ], [ %indvars.iv.next241.3, %.lr.ph133.us ] ; 6 uses
  %i.is = mul nsw i64 %i.hf, %indvars.iv240
  %i.it = getelementptr inbounds i8, ptr %i.he, i64 %i.is
  %i.iu = getelementptr inbounds i8, ptr %i.it, i64 -2
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !40
  %i.iw = shl nuw nsw i64 %indvars.iv240, 1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.iw
  store i16 %i.iv, ptr %i.ix, align 8, !tbaa !40
  %indvars.iv.next241 = or disjoint i64 %indvars.iv240, 1 ; 2 uses
  %i.iy = mul nsw i64 %i.hf, %indvars.iv.next241
  %i.iz = getelementptr inbounds i8, ptr %i.he, i64 %i.iy
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 -2
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !40
  %i.jc = shl nuw nsw i64 %indvars.iv.next241, 1
  %i.jd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jc
  store i16 %i.jb, ptr %i.jd, align 2, !tbaa !40
  %indvars.iv.next241.1 = or disjoint i64 %indvars.iv240, 2 ; 2 uses
  %i.je = mul nsw i64 %i.hf, %indvars.iv.next241.1
  %i.jf = getelementptr inbounds i8, ptr %i.he, i64 %i.je
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -2
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !40
  %i.ji = shl nuw nsw i64 %indvars.iv.next241.1, 1
  %i.jj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ji
  store i16 %i.jh, ptr %i.jj, align 4, !tbaa !40
  %indvars.iv.next241.2 = or disjoint i64 %indvars.iv240, 3 ; 2 uses
  %i.jk = mul nsw i64 %i.hf, %indvars.iv.next241.2
  %i.jl = getelementptr inbounds i8, ptr %i.he, i64 %i.jk
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -2
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !40
  %i.jo = shl nuw nsw i64 %indvars.iv.next241.2, 1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jo
  store i16 %i.jn, ptr %i.jp, align 2, !tbaa !40
  %indvars.iv.next241.3 = add nuw nsw i64 %indvars.iv240, 4 ; 2 uses
  %exitcond244.not.3 = icmp eq i64 %indvars.iv.next241.3, %wide.trip.count243
  br i1 %exitcond244.not.3, label %check_intra_mode.exit.us, label %.lr.ph133.us, !llvm.loop !170

.lr.ph135.us:                                     ; preds = %.lr.ph135.us.preheader799, %.lr.ph135.us
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %.lr.ph135.us ], [ %indvars.iv245.ph, %.lr.ph135.us.preheader799 ] ; 3 uses
  %i.jq = mul nsw i64 %i.hf, %indvars.iv245
  %i.jr = getelementptr inbounds i8, ptr %i.he, i64 %i.jq
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 -2
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !40
  %i.ju = shl nuw nsw i64 %indvars.iv245, 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ju
  store i16 %i.jt, ptr %i.jv, align 2, !tbaa !40
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %i.jw = icmp samesign ult i64 %indvars.iv.next246, %i.li
  br i1 %i.jw, label %.lr.ph135.us, label %._crit_edge136.us, !llvm.loop !171

._crit_edge136.us:                                ; preds = %.lr.ph135.us, %middle.block380, %.preheader106.us
  %i.jx = shl i32 %i.hb, 3
  %i.jy = add i32 %i.jx, -2
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds i8, ptr %i.b, i64 %i.jz
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !40 ; 3 uses
  %i.kc = sub nsw i32 %i.gu, %i.hc                ; 3 uses
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %iter.check, label %check_intra_mode.exit.us

iter.check:                                       ; preds = %._crit_edge136.us
  %i.ke = sext i32 %i.hc to i64                   ; 3 uses
  %i.kf = zext nneg i32 %i.kc to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.kc, 16
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %iter.check
  %i.kg = and i64 %i.kf, 12
  %n.vec = and i64 %i.kf, 2147483632              ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kb, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kh = add nsw i64 %index, %i.ke
  %i.ki = shl nsw i64 %i.kh, 1
  %i.kj = getelementptr inbounds i8, ptr %i.b, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.kj, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat, ptr %i.kk, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.kl = icmp eq i64 %index.next, %n.vec
  br i1 %i.kl, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.kf
  br i1 %cmp.n, label %check_intra_mode.exit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph139.us, label %vec.epilog.ph, !prof !230

vec.epilog.ph:                                    ; preds = %iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %broadcast.splatinsert366 = insertelement <4 x i16> poison, i16 %i.kb, i64 0
  %broadcast.splat367 = shufflevector <4 x i16> %broadcast.splatinsert366, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index368 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next369, %vec.epilog.vector.body ] ; 2 uses
  %i.km = add nsw i64 %index368, %i.ke
  %i.kn = shl nsw i64 %i.km, 1
  %i.ko = getelementptr inbounds i8, ptr %i.b, i64 %i.kn
  store <4 x i16> %broadcast.splat367, ptr %i.ko, align 8, !tbaa !40
  %index.next369 = add nuw i64 %index368, 4       ; 2 uses
  %i.kp = icmp eq i64 %index.next369, %i.kf
  br i1 %i.kp, label %check_intra_mode.exit.us, label %vec.epilog.vector.body, !llvm.loop !173

.lr.ph139.us:                                     ; preds = %vec.epilog.iter.check, %.lr.ph139.us
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %.lr.ph139.us ], [ %n.vec, %vec.epilog.iter.check ] ; 2 uses
  %i.kq = add nsw i64 %indvars.iv248, %i.ke
  %i.kr = shl nsw i64 %i.kq, 1
  %i.ks = getelementptr inbounds i8, ptr %i.b, i64 %i.kr
  store i16 %i.kb, ptr %i.ks, align 2, !tbaa !40
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %i.kt = icmp samesign ult i64 %indvars.iv.next249, %i.kf
  br i1 %i.kt, label %.lr.ph139.us, label %check_intra_mode.exit.us, !llvm.loop !174

check_intra_mode.exit.us:                         ; preds = %vec.epilog.scalar.ph488, %vec.epilog.vector.body495, %.lr.ph126.us, %.lr.ph131.us, %vec.epilog.vector.body424, %.lr.ph133.us, %.lr.ph139.us, %vec.epilog.vector.body, %middle.block484, %middle.block471, %middle.block413, %middle.block400, %middle.block, %.preheader113.us, %.preheader111.us, %._crit_edge.us, %.preheader107.us, %._crit_edge136.us, %.loopexit115.us
  %i.ku = zext i32 %.pre.pre to i64
  %i.kv = getelementptr inbounds nuw [120 x i8], ptr %i.bi, i64 %i.ku
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.eb
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !85
  call void %i.kx(ptr noundef %.0177.i144.us, i64 noundef %i.dm, ptr noundef nonnull %i.b, ptr noundef %.071.us) #5, !inline_history !0
  %.not197.i.us = icmp eq i32 %i.dh, 0
  br i1 %.not197.i.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %check_intra_mode.exit.us
  %i.ky = zext i32 %i.df to i64
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ky
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !85
  %i.lb = load i64, ptr %i.ba, align 16, !tbaa !80
  %i.lc = load ptr, ptr %i.bm, align 8, !tbaa !86
  %.idx = shl nsw i64 %indvars.iv253, 6
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 %.idx
  call void %i.la(ptr noundef %.0177.i144.us, i64 noundef %i.lb, ptr noundef %i.ld, i32 noundef %i.dh) #5, !inline_history !0
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %check_intra_mode.exit.us
  %indvars.iv.next252 = add nsw i64 %indvars.iv251, %i.bt ; 2 uses
  %i.le = getelementptr inbounds i8, ptr %.0177.i144.us, i64 %i.bo
  %i.lf = getelementptr inbounds i8, ptr %.0176.i147.us, i64 %i.bo
  %indvars.iv.next254 = add nsw i64 %indvars.iv253, %i.bw ; 2 uses
  %i.lg = icmp slt i64 %indvars.iv.next252, %i.bv
  br i1 %i.lg, label %bb.b, label %._crit_edge151.us, !llvm.loop !1

.preheader106.us:                                 ; preds = %bb.z
  %i.lh = icmp sgt i32 %i.hc, 0
  br i1 %i.lh, label %.lr.ph135.us.preheader, label %._crit_edge136.us

.lr.ph135.us.preheader:                           ; preds = %.preheader106.us
  %i.li = zext nneg i32 %i.hc to i64              ; 5 uses
  %min.iters.check374 = icmp ugt i32 %i.hc, 7
  %ident.check.not = icmp eq i64 %i.hf, 1
  %or.cond778 = select i1 %min.iters.check374, i1 %ident.check.not, i1 false
  br i1 %or.cond778, label %vector.memcheck, label %.lr.ph135.us.preheader799

vector.memcheck:                                  ; preds = %.lr.ph135.us.preheader
  %i.lj = shl nuw nsw i64 %i.li, 1
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.lj
  %scevgep371 = getelementptr i8, ptr %i.he, i64 -2
  %scevgep372 = getelementptr i8, ptr %i.he, i64 -1
  %scevgep373 = getelementptr i8, ptr %scevgep372, i64 %i.li
  %bound0 = icmp ult ptr %i.b, %scevgep373
  %bound1 = icmp ult ptr %scevgep371, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph135.us.preheader799, label %vector.ph375

vector.ph375:                                     ; preds = %vector.memcheck
  %n.vec376 = and i64 %i.li, 2147483640           ; 3 uses
  br label %vector.body377

vector.body377:                                   ; preds = %vector.body377, %vector.ph375
  %index378 = phi i64 [ 0, %vector.ph375 ], [ %index.next379, %vector.body377 ] ; 10 uses
  %i.lk = getelementptr inbounds i8, ptr %i.he, i64 %index378
  %i.ll = getelementptr i8, ptr %i.he, i64 %index378
  %i.lm = getelementptr i8, ptr %i.he, i64 %index378
  %i.ln = getelementptr i8, ptr %i.he, i64 %index378
  %i.lo = getelementptr i8, ptr %i.he, i64 %index378
  %i.lp = getelementptr i8, ptr %i.he, i64 %index378
  %i.lq = getelementptr i8, ptr %i.he, i64 %index378
  %i.lr = getelementptr i8, ptr %i.he, i64 %index378
  %i.ls = getelementptr inbounds i8, ptr %i.lk, i64 -2
  %i.lt = getelementptr i8, ptr %i.ll, i64 -1
  %i.lu = getelementptr i8, ptr %i.ln, i64 1
  %i.lv = getelementptr i8, ptr %i.lo, i64 2
  %i.lw = getelementptr i8, ptr %i.lp, i64 3
  %i.lx = getelementptr i8, ptr %i.lq, i64 4
  %i.ly = getelementptr i8, ptr %i.lr, i64 5
  %i.lz = load i16, ptr %i.ls, align 2, !tbaa !40, !alias.scope !231
  %i.ma = load i16, ptr %i.lt, align 2, !tbaa !40, !alias.scope !231
  %i.mb = load i16, ptr %i.lm, align 2, !tbaa !40, !alias.scope !231
  %i.mc = load i16, ptr %i.lu, align 2, !tbaa !40, !alias.scope !231
  %i.md = load i16, ptr %i.lv, align 2, !tbaa !40, !alias.scope !231
  %i.me = load i16, ptr %i.lw, align 2, !tbaa !40, !alias.scope !231
  %i.mf = load i16, ptr %i.lx, align 2, !tbaa !40, !alias.scope !231
  %i.mg = load i16, ptr %i.ly, align 2, !tbaa !40, !alias.scope !231
  %i.mh = insertelement <8 x i16> poison, i16 %i.lz, i64 0
  %i.mi = insertelement <8 x i16> %i.mh, i16 %i.ma, i64 1
  %i.mj = insertelement <8 x i16> %i.mi, i16 %i.mb, i64 2
  %i.mk = insertelement <8 x i16> %i.mj, i16 %i.mc, i64 3
  %i.ml = insertelement <8 x i16> %i.mk, i16 %i.md, i64 4
  %i.mm = insertelement <8 x i16> %i.ml, i16 %i.me, i64 5
  %i.mn = insertelement <8 x i16> %i.mm, i16 %i.mf, i64 6
  %i.mo = insertelement <8 x i16> %i.mn, i16 %i.mg, i64 7
  %i.mp = shl nuw nsw i64 %index378, 1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mp
  store <8 x i16> %i.mo, ptr %i.mq, align 16, !tbaa !40, !alias.scope !232, !noalias !231
  %index.next379 = add nuw i64 %index378, 8       ; 2 uses
  %i.mr = icmp eq i64 %index.next379, %n.vec376
  br i1 %i.mr, label %middle.block380, label %vector.body377, !llvm.loop !178

middle.block380:                                  ; preds = %vector.body377
  %cmp.n381 = icmp eq i64 %n.vec376, %i.li
  br i1 %cmp.n381, label %._crit_edge136.us, label %.lr.ph135.us.preheader799

.lr.ph135.us.preheader799:                        ; preds = %vector.memcheck, %.lr.ph135.us.preheader, %middle.block380
  %indvars.iv245.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph135.us.preheader ], [ %n.vec376, %middle.block380 ]
  br label %.lr.ph135.us

.preheader107.us:                                 ; preds = %bb.z
  %i.ms = icmp sgt i32 %i.gu, 0
  br i1 %i.ms, label %.lr.ph133.us.preheader, label %check_intra_mode.exit.us

.lr.ph133.us.preheader:                           ; preds = %.preheader107.us
  %wide.trip.count243 = zext nneg i32 %i.gu to i64 ; 5 uses
  %min.iters.check394 = icmp ugt i32 %i.gu, 7
  %ident.check384.not = icmp eq i64 %i.hf, 1
  %or.cond779 = select i1 %min.iters.check394, i1 %ident.check384.not, i1 false
  br i1 %or.cond779, label %vector.memcheck385, label %.lr.ph133.us.preheader800

vector.memcheck385:                               ; preds = %.lr.ph133.us.preheader
  %i.mt = shl nuw nsw i64 %wide.trip.count243, 1
  %scevgep386 = getelementptr i8, ptr %i.b, i64 %i.mt
  %scevgep387 = getelementptr i8, ptr %i.he, i64 -2
  %scevgep388 = getelementptr i8, ptr %i.he, i64 -1
  %scevgep389 = getelementptr i8, ptr %scevgep388, i64 %wide.trip.count243
  %bound0390 = icmp ult ptr %i.b, %scevgep389
  %bound1391 = icmp ult ptr %scevgep387, %scevgep386
  %found.conflict392 = and i1 %bound0390, %bound1391
  br i1 %found.conflict392, label %.lr.ph133.us.preheader800, label %vector.ph395

vector.ph395:                                     ; preds = %vector.memcheck385
  %n.vec396 = and i64 %wide.trip.count243, 2147483640 ; 3 uses
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph395
  %index398 = phi i64 [ 0, %vector.ph395 ], [ %index.next399, %vector.body397 ] ; 10 uses
  %i.mu = getelementptr inbounds i8, ptr %i.he, i64 %index398
  %i.mv = getelementptr i8, ptr %i.he, i64 %index398
  %i.mw = getelementptr i8, ptr %i.he, i64 %index398
  %i.mx = getelementptr i8, ptr %i.he, i64 %index398
  %i.my = getelementptr i8, ptr %i.he, i64 %index398
  %i.mz = getelementptr i8, ptr %i.he, i64 %index398
  %i.na = getelementptr i8, ptr %i.he, i64 %index398
  %i.nb = getelementptr i8, ptr %i.he, i64 %index398
  %i.nc = getelementptr inbounds i8, ptr %i.mu, i64 -2
  %i.nd = getelementptr i8, ptr %i.mv, i64 -1
  %i.ne = getelementptr i8, ptr %i.mx, i64 1
  %i.nf = getelementptr i8, ptr %i.my, i64 2
  %i.ng = getelementptr i8, ptr %i.mz, i64 3
  %i.nh = getelementptr i8, ptr %i.na, i64 4
  %i.ni = getelementptr i8, ptr %i.nb, i64 5
  %i.nj = load i16, ptr %i.nc, align 2, !tbaa !40, !alias.scope !233
  %i.nk = load i16, ptr %i.nd, align 2, !tbaa !40, !alias.scope !233
  %i.nl = load i16, ptr %i.mw, align 2, !tbaa !40, !alias.scope !233
  %i.nm = load i16, ptr %i.ne, align 2, !tbaa !40, !alias.scope !233
  %i.nn = load i16, ptr %i.nf, align 2, !tbaa !40, !alias.scope !233
  %i.no = load i16, ptr %i.ng, align 2, !tbaa !40, !alias.scope !233
  %i.np = load i16, ptr %i.nh, align 2, !tbaa !40, !alias.scope !233
  %i.nq = load i16, ptr %i.ni, align 2, !tbaa !40, !alias.scope !233
  %i.nr = insertelement <8 x i16> poison, i16 %i.nj, i64 0
  %i.ns = insertelement <8 x i16> %i.nr, i16 %i.nk, i64 1
  %i.nt = insertelement <8 x i16> %i.ns, i16 %i.nl, i64 2
  %i.nu = insertelement <8 x i16> %i.nt, i16 %i.nm, i64 3
  %i.nv = insertelement <8 x i16> %i.nu, i16 %i.nn, i64 4
  %i.nw = insertelement <8 x i16> %i.nv, i16 %i.no, i64 5
  %i.nx = insertelement <8 x i16> %i.nw, i16 %i.np, i64 6
  %i.ny = insertelement <8 x i16> %i.nx, i16 %i.nq, i64 7
  %i.nz = shl nuw nsw i64 %index398, 1
  %i.oa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nz
  store <8 x i16> %i.ny, ptr %i.oa, align 16, !tbaa !40, !alias.scope !234, !noalias !233
  %index.next399 = add nuw i64 %index398, 8       ; 2 uses
  %i.ob = icmp eq i64 %index.next399, %n.vec396
  br i1 %i.ob, label %middle.block400, label %vector.body397, !llvm.loop !182

middle.block400:                                  ; preds = %vector.body397
  %cmp.n401 = icmp eq i64 %n.vec396, %wide.trip.count243
  br i1 %cmp.n401, label %check_intra_mode.exit.us, label %.lr.ph133.us.preheader800

.lr.ph133.us.preheader800:                        ; preds = %vector.memcheck385, %.lr.ph133.us.preheader, %middle.block400
  %indvars.iv240.ph = phi i64 [ 0, %vector.memcheck385 ], [ 0, %.lr.ph133.us.preheader ], [ %n.vec396, %middle.block400 ]
  br label %.lr.ph133.us

.preheader110.us:                                 ; preds = %bb.y
  %i.oc = icmp sgt i32 %i.hc, 0
  br i1 %i.oc, label %.lr.ph128.us.preheader, label %._crit_edge.us

.lr.ph128.us.preheader:                           ; preds = %.preheader110.us
  %i.od = zext nneg i32 %i.hc to i64              ; 6 uses
  %min.iters.check444 = icmp ult i32 %i.hc, 32
  br i1 %min.iters.check444, label %.lr.ph128.us.preheader804, label %vector.scevcheck430

vector.scevcheck430:                              ; preds = %.lr.ph128.us.preheader
  %ident.check431 = icmp ne i64 %i.hf, 1
  %i.oe = add nsw i64 %i.od, -1                   ; 2 uses
  %i.of = shl i32 8, %.pre.pre
  %i.og = add i32 %i.of, -2                       ; 2 uses
  %i.oh = trunc nsw i64 %i.oe to i32
  %mul.result = shl i32 %i.oh, 1
  %10 = sub i32 %i.og, %mul.result
  %11 = icmp sgt i32 %10, %i.og
  %i.oi = icmp ugt i64 %i.oe, 4294967295
  %i.oj = or i1 %11, %i.oi
  %i.ok = or i1 %ident.check431, %i.oj
  br i1 %i.ok, label %.lr.ph128.us.preheader804, label %vector.memcheck432

vector.memcheck432:                               ; preds = %vector.scevcheck430
  %scevgep433 = getelementptr i8, ptr %i.he, i64 -2
  %scevgep434 = getelementptr i8, ptr %i.he, i64 -1
  %scevgep435 = getelementptr i8, ptr %scevgep434, i64 %i.od
  %i.ol = shl i32 8, %.pre.pre
  %i.om = add i32 %i.ol, -8
  %12 = sext i32 %i.om to i64                     ; 2 uses
  %i.on = shl nuw nsw i64 %i.od, 1
  %i.oo = sub nsw i64 %12, %i.on
  %scevgep437 = getelementptr i8, ptr %scevgep436.a, i64 %i.oo
  %scevgep439 = getelementptr i8, ptr %scevgep438.a, i64 %12
  %bound0440 = icmp ult ptr %scevgep433, %scevgep439
  %bound1441 = icmp ult ptr %scevgep437, %scevgep435
  %found.conflict442 = and i1 %bound0440, %bound1441
  br i1 %found.conflict442, label %.lr.ph128.us.preheader804, label %vector.ph445

vector.ph445:                                     ; preds = %vector.memcheck432
  %n.vec446 = and i64 %i.od, 2147483640           ; 3 uses
  br label %vector.body447

vector.body447:                                   ; preds = %vector.body447, %vector.ph445
  %index448 = phi i64 [ 0, %vector.ph445 ], [ %index.next449, %vector.body447 ] ; 10 uses
  %i.op = getelementptr inbounds i8, ptr %i.he, i64 %index448
  %i.oq = getelementptr i8, ptr %i.he, i64 %index448
  %i.or = getelementptr i8, ptr %i.he, i64 %index448
  %i.os = getelementptr i8, ptr %i.he, i64 %index448
  %i.ot = getelementptr i8, ptr %i.he, i64 %index448
  %i.ou = getelementptr i8, ptr %i.he, i64 %index448
  %i.ov = getelementptr i8, ptr %i.he, i64 %index448
  %i.ow = getelementptr i8, ptr %i.he, i64 %index448
  %i.ox = getelementptr inbounds i8, ptr %i.op, i64 -2
  %i.oy = getelementptr i8, ptr %i.oq, i64 -1
  %i.oz = getelementptr i8, ptr %i.os, i64 1
  %i.pa = getelementptr i8, ptr %i.ot, i64 2
  %i.pb = getelementptr i8, ptr %i.ou, i64 3
  %i.pc = getelementptr i8, ptr %i.ov, i64 4
  %i.pd = getelementptr i8, ptr %i.ow, i64 5
  %i.pe = load i16, ptr %i.ox, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.pf = load i16, ptr %i.oy, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.pg = load i16, ptr %i.or, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.ph = load i16, ptr %i.oz, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.pi = load i16, ptr %i.pa, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.pj = load i16, ptr %i.pb, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.pk = load i16, ptr %i.pc, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.pl = load i16, ptr %i.pd, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.pm = insertelement <8 x i16> poison, i16 %i.pe, i64 0
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 1
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pg, i64 2
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.ph, i64 3
  %i.pq = insertelement <8 x i16> %i.pp, i16 %i.pi, i64 4
  %i.pr = insertelement <8 x i16> %i.pq, i16 %i.pj, i64 5
  %i.ps = insertelement <8 x i16> %i.pr, i16 %i.pk, i64 6
  %i.pt = insertelement <8 x i16> %i.ps, i16 %i.pl, i64 7
  %i.pu = trunc nuw nsw i64 %index448 to i32
  %i.pv = xor i32 %i.pu, -1
  %i.pw = add i32 %i.gu, %i.pv
  %i.px = shl nsw i32 %i.pw, 1
  %13 = sext i32 %i.px to i64
  %i.py = getelementptr inbounds i8, ptr %i.b, i64 %13
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 -14
  %reverse = shufflevector <8 x i16> %i.pt, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse, ptr %i.pz, align 2, !tbaa !40, !alias.scope !236
  %index.next449 = add nuw i64 %index448, 8       ; 2 uses
  %i.qa = icmp eq i64 %index.next449, %n.vec446
  br i1 %i.qa, label %middle.block450, label %vector.body447, !llvm.loop !186

middle.block450:                                  ; preds = %vector.body447
  %cmp.n451 = icmp eq i64 %n.vec446, %i.od
  br i1 %cmp.n451, label %._crit_edge.us, label %.lr.ph128.us.preheader804

.lr.ph128.us.preheader804:                        ; preds = %vector.memcheck432, %vector.scevcheck430, %.lr.ph128.us.preheader, %middle.block450
  %indvars.iv234.ph = phi i64 [ 0, %vector.memcheck432 ], [ 0, %vector.scevcheck430 ], [ 0, %.lr.ph128.us.preheader ], [ %n.vec446, %middle.block450 ]
  br label %.lr.ph128.us

.preheader111.us:                                 ; preds = %bb.y
  %i.qb = icmp sgt i32 %i.gu, 0
  br i1 %i.qb, label %.lr.ph126.us.preheader.a, label %check_intra_mode.exit.us

.lr.ph126.us.preheader.a:                         ; preds = %.preheader111.us
  %14 = zext nneg i32 %i.gu to i64                ; 3 uses
  %wide.trip.count232 = zext nneg i32 %i.gu to i64 ; 5 uses
  %min.iters.check464 = icmp ugt i32 %i.gu, 7
  %ident.check454.not = icmp eq i64 %i.hf, 1
  %or.cond780 = select i1 %min.iters.check464, i1 %ident.check454.not, i1 false
  br i1 %or.cond780, label %vector.memcheck455, label %.lr.ph126.us.preheader805

vector.memcheck455:                               ; preds = %.lr.ph126.us.preheader.a
  %15 = shl nuw nsw i64 %wide.trip.count232, 1
  %scevgep456 = getelementptr i8, ptr %i.b, i64 %15
  %scevgep457 = getelementptr i8, ptr %i.he, i64 -2
  %scevgep458 = getelementptr i8, ptr %i.he, i64 -1
  %scevgep459.a = getelementptr i8, ptr %scevgep458, i64 %wide.trip.count232
  %bound0460 = icmp ult ptr %i.b, %scevgep459.a
  %bound1461 = icmp ult ptr %scevgep457, %scevgep456
  %found.conflict462 = and i1 %bound0460, %bound1461
  br i1 %found.conflict462, label %.lr.ph126.us.preheader805, label %vector.ph465

vector.ph465:                                     ; preds = %vector.memcheck455
  %n.vec466 = and i64 %wide.trip.count232, 2147483640 ; 3 uses
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph465
  %index468 = phi i64 [ 0, %vector.ph465 ], [ %index.next470, %vector.body467 ] ; 10 uses
  %i.qc = getelementptr inbounds i8, ptr %i.he, i64 %index468
  %i.qd = getelementptr i8, ptr %i.he, i64 %index468
  %i.qe = getelementptr i8, ptr %i.he, i64 %index468
  %i.qf = getelementptr i8, ptr %i.he, i64 %index468
  %i.qg = getelementptr i8, ptr %i.he, i64 %index468
  %i.qh = getelementptr i8, ptr %i.he, i64 %index468
  %i.qi = getelementptr i8, ptr %i.he, i64 %index468
  %i.qj = getelementptr i8, ptr %i.he, i64 %index468
  %i.qk = getelementptr inbounds i8, ptr %i.qc, i64 -2
  %i.ql = getelementptr i8, ptr %i.qd, i64 -1
  %i.qm = getelementptr i8, ptr %i.qf, i64 1
  %i.qn = getelementptr i8, ptr %i.qg, i64 2
  %i.qo = getelementptr i8, ptr %i.qh, i64 3
  %i.qp = getelementptr i8, ptr %i.qi, i64 4
  %i.qq = getelementptr i8, ptr %i.qj, i64 5
  %i.qr = load i16, ptr %i.qk, align 2, !tbaa !40, !alias.scope !237
  %i.qs = load i16, ptr %i.ql, align 2, !tbaa !40, !alias.scope !237
  %i.qt = load i16, ptr %i.qe, align 2, !tbaa !40, !alias.scope !237
  %i.qu = load i16, ptr %i.qm, align 2, !tbaa !40, !alias.scope !237
  %i.qv = load i16, ptr %i.qn, align 2, !tbaa !40, !alias.scope !237
  %i.qw = load i16, ptr %i.qo, align 2, !tbaa !40, !alias.scope !237
  %i.qx = load i16, ptr %i.qp, align 2, !tbaa !40, !alias.scope !237
  %i.qy = load i16, ptr %i.qq, align 2, !tbaa !40, !alias.scope !237
  %i.qz = insertelement <8 x i16> poison, i16 %i.qr, i64 0
  %i.ra = insertelement <8 x i16> %i.qz, i16 %i.qs, i64 1
  %i.rb = insertelement <8 x i16> %i.ra, i16 %i.qt, i64 2
  %i.rc = insertelement <8 x i16> %i.rb, i16 %i.qu, i64 3
  %i.rd = insertelement <8 x i16> %i.rc, i16 %i.qv, i64 4
  %i.re = insertelement <8 x i16> %i.rd, i16 %i.qw, i64 5
  %i.rf = insertelement <8 x i16> %i.re, i16 %i.qx, i64 6
  %i.rg = insertelement <8 x i16> %i.rf, i16 %i.qy, i64 7
  %16 = xor i64 %index468, -1
  %17 = add nsw i64 %14, %16
  %18 = shl nsw i64 %17, 1
  %i.rh = getelementptr inbounds i8, ptr %i.b, i64 %18
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 -14
  %reverse469 = shufflevector <8 x i16> %i.rg, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse469, ptr %i.ri, align 8, !tbaa !40, !alias.scope !238, !noalias !237
  %index.next470 = add nuw i64 %index468, 8       ; 2 uses
  %i.rj = icmp eq i64 %index.next470, %n.vec466
  br i1 %i.rj, label %middle.block471, label %vector.body467, !llvm.loop !190

middle.block471:                                  ; preds = %vector.body467
  %cmp.n472 = icmp eq i64 %n.vec466, %wide.trip.count232
  br i1 %cmp.n472, label %check_intra_mode.exit.us, label %.lr.ph126.us.preheader805

.lr.ph126.us.preheader805:                        ; preds = %vector.memcheck455, %.lr.ph126.us.preheader.a, %middle.block471
  %indvars.iv229.ph = phi i64 [ 0, %vector.memcheck455 ], [ 0, %.lr.ph126.us.preheader.a ], [ %n.vec466, %middle.block471 ]
  br label %.lr.ph126.us

.preheader113.us:                                 ; preds = %bb.w
  %i.rk = icmp sgt i32 %i.gu, 0
  br i1 %i.rk, label %iter.check487, label %check_intra_mode.exit.us

.critedge.i.preheader.us:                         ; preds = %bb.g
  %i.rl = icmp sgt i32 %i.ee, 0
  br i1 %i.rl, label %iter.check541, label %.loopexit116.us

iter.check541:                                    ; preds = %.critedge.i.preheader.us
  %i.rm = add nsw i32 %i.dv, -8
  %i.rn = shl i32 128, %i.rm
  %i.ro = trunc i32 %i.rn to i16
  %i.rp = add i16 %i.ro, -1                       ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ee to i64   ; 5 uses
  %min.iters.check530 = icmp ult i32 %i.ee, 16
  br i1 %min.iters.check530, label %vec.epilog.ph545, label %vector.ph531

vector.ph531:                                     ; preds = %iter.check541
  %i.rq = and i64 %wide.trip.count, 12
  %n.vec532 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %broadcast.splatinsert533 = insertelement <8 x i16> poison, i16 %i.rp, i64 0
  %broadcast.splat534 = shufflevector <8 x i16> %broadcast.splatinsert533, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body535

vector.body535:                                   ; preds = %vector.body535, %vector.ph531
  %index536 = phi i64 [ 0, %vector.ph531 ], [ %index.next537, %vector.body535 ] ; 2 uses
  %i.rr = shl nuw nsw i64 %index536, 1
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.rr ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  store <8 x i16> %broadcast.splat534, ptr %i.rs, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat534, ptr %i.rt, align 16, !tbaa !40
  %index.next537 = add nuw i64 %index536, 16      ; 2 uses
  %i.ru = icmp eq i64 %index.next537, %n.vec532
  br i1 %i.ru, label %middle.block538, label %vector.body535, !llvm.loop !191

middle.block538:                                  ; preds = %vector.body535
  %cmp.n539 = icmp eq i64 %n.vec532, %wide.trip.count
  br i1 %cmp.n539, label %.loopexit116.us, label %vec.epilog.iter.check543

vec.epilog.iter.check543:                         ; preds = %middle.block538
  %min.epilog.iters.check544 = icmp eq i64 %i.rq, 0
  br i1 %min.epilog.iters.check544, label %.critedge.i.us, label %vec.epilog.ph545, !prof !230

vec.epilog.ph545:                                 ; preds = %iter.check541, %vec.epilog.iter.check543
  %vec.epilog.resume.val540 = phi i64 [ %n.vec532, %vec.epilog.iter.check543 ], [ 0, %iter.check541 ]
  %broadcast.splatinsert547 = insertelement <4 x i16> poison, i16 %i.rp, i64 0
  %broadcast.splat548 = shufflevector <4 x i16> %broadcast.splatinsert547, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body549

vec.epilog.vector.body549:                        ; preds = %vec.epilog.vector.body549, %vec.epilog.ph545
  %index550 = phi i64 [ %vec.epilog.resume.val540, %vec.epilog.ph545 ], [ %index.next551, %vec.epilog.vector.body549 ] ; 2 uses
  %i.rv = shl nuw nsw i64 %index550, 1
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.rv
  store <4 x i16> %broadcast.splat548, ptr %i.rw, align 8, !tbaa !40
  %index.next551 = add nuw i64 %index550, 4       ; 2 uses
  %i.rx = icmp eq i64 %index.next551, %wide.trip.count
  br i1 %i.rx, label %.loopexit116.us, label %vec.epilog.vector.body549, !llvm.loop !192

iter.check487:                                    ; preds = %.preheader113.us
  %i.ry = add nsw i32 %i.dv, -8
  %i.rz = shl i32 128, %i.ry
  %i.sa = trunc i32 %i.rz to i16
  %i.sb = or disjoint i16 %i.sa, 1                ; 3 uses
  %wide.trip.count227 = zext nneg i32 %i.gu to i64 ; 5 uses
  %min.iters.check476 = icmp ult i32 %i.gu, 16
  br i1 %min.iters.check476, label %vec.epilog.ph491, label %vector.ph477

vector.ph477:                                     ; preds = %iter.check487
  %i.sc = and i64 %wide.trip.count227, 12
  %n.vec478 = and i64 %wide.trip.count227, 2147483632 ; 4 uses
  %broadcast.splatinsert479 = insertelement <8 x i16> poison, i16 %i.sb, i64 0
  %broadcast.splat480 = shufflevector <8 x i16> %broadcast.splatinsert479, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.body481, %vector.ph477
  %index482 = phi i64 [ 0, %vector.ph477 ], [ %index.next483, %vector.body481 ] ; 2 uses
  %i.sd = shl nuw nsw i64 %index482, 1
  %i.se = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.sd ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  store <8 x i16> %broadcast.splat480, ptr %i.se, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat480, ptr %i.sf, align 16, !tbaa !40
  %index.next483 = add nuw i64 %index482, 16      ; 2 uses
  %i.sg = icmp eq i64 %index.next483, %n.vec478
  br i1 %i.sg, label %middle.block484, label %vector.body481, !llvm.loop !193

middle.block484:                                  ; preds = %vector.body481
  %cmp.n485 = icmp eq i64 %n.vec478, %wide.trip.count227
  br i1 %cmp.n485, label %check_intra_mode.exit.us, label %vec.epilog.iter.check489

vec.epilog.iter.check489:                         ; preds = %middle.block484
  %min.epilog.iters.check490 = icmp eq i64 %i.sc, 0
  br i1 %min.epilog.iters.check490, label %vec.epilog.scalar.ph488, label %vec.epilog.ph491, !prof !230

vec.epilog.ph491:                                 ; preds = %iter.check487, %vec.epilog.iter.check489
  %vec.epilog.resume.val486 = phi i64 [ %n.vec478, %vec.epilog.iter.check489 ], [ 0, %iter.check487 ]
  %broadcast.splatinsert493 = insertelement <4 x i16> poison, i16 %i.sb, i64 0
  %broadcast.splat494 = shufflevector <4 x i16> %broadcast.splatinsert493, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body495

vec.epilog.vector.body495:                        ; preds = %vec.epilog.vector.body495, %vec.epilog.ph491
  %index496 = phi i64 [ %vec.epilog.resume.val486, %vec.epilog.ph491 ], [ %index.next497, %vec.epilog.vector.body495 ] ; 2 uses
  %i.sh = shl nuw nsw i64 %index496, 1
  %i.si = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.sh
  store <4 x i16> %broadcast.splat494, ptr %i.si, align 8, !tbaa !40
  %index.next497 = add nuw i64 %index496, 4       ; 2 uses
  %i.sj = icmp eq i64 %index.next497, %wide.trip.count227
  br i1 %i.sj, label %check_intra_mode.exit.us, label %vec.epilog.vector.body495, !llvm.loop !194

._crit_edge151.us:                                ; preds = %bb.ab
  %i.sk = load ptr, ptr %i.as, align 8, !tbaa !76 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 64
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !77
  %i.sn = mul nsw i32 %i.sm, %i.bp
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds i8, ptr %.0178.i155.us, i64 %i.so
  %i.sq = load i64, ptr %i.ba, align 16, !tbaa !80
  %i.sr = mul nsw i64 %i.sq, %i.bq
  %i.ss = getelementptr inbounds i8, ptr %.0179.i154.us, i64 %i.sr
  %indvars.iv.next259 = add nsw i64 %indvars.iv258, %i.bt ; 2 uses
  %i.st = icmp slt i64 %indvars.iv.next259, %i.bx
  br i1 %i.st, label %.preheader118.us, label %._crit_edge156.loopexit214, !llvm.loop !2

._crit_edge156.loopexit214:                       ; preds = %._crit_edge151.us
  %.pre306 = load i32, ptr %i.am, align 4, !tbaa !69
  br label %._crit_edge156

._crit_edge156:                                   ; preds = %.preheader118.lr.ph, %.._crit_edge156_crit_edge, %._crit_edge156.loopexit214
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge156_crit_edge ], [ %i.bd, %._crit_edge156.loopexit214 ], [ %i.bd, %.preheader118.lr.ph ]
  %i.su = phi ptr [ %i.at, %.._crit_edge156_crit_edge ], [ %i.sk, %._crit_edge156.loopexit214 ], [ %i.at, %.preheader118.lr.ph ]
  %i.sv = phi i32 [ %i.an, %.._crit_edge156_crit_edge ], [ %.pre306, %._crit_edge156.loopexit214 ], [ %i.an, %.preheader118.lr.ph ]
  %i.sw = getelementptr inbounds nuw i8, ptr %i.c, i64 3924 ; 2 uses
  %i.sx = load i8, ptr %i.sw, align 4, !tbaa !88
  %i.sy = zext i8 %i.sx to i32                    ; 2 uses
  %i.sz = lshr i32 %i.p, %i.sy
  %i.ta = lshr i32 %..i, %i.sy                    ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.c, i64 3925 ; 2 uses
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !89
  %i.td = zext nneg i8 %i.tc to i32
  %i.te = lshr i32 %i.ah, %i.td                   ; 2 uses
  %.not201 = icmp eq i32 %i.te, 0
  %i.tf = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.tg = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 13 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 77120
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.tk = icmp sgt i32 %i.g, 0
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.tm = add nsw i32 %i.sz, -1
  %i.tn = shl i32 %i.i, 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.tp = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.tq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.tr = getelementptr inbounds nuw i8, ptr %i.c, i64 1376
  %i.ts = getelementptr inbounds nuw i8, ptr %i.c, i64 1856
  %i.tt = sext i32 %i.ao to i64
  %i.tu = getelementptr inbounds [32 x i8], ptr %i.ts, i64 %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 77072
  %i.tw = shl i32 8, %i.an
  %i.tx = sext i32 %i.tw to i64                   ; 2 uses
  %i.ty = shl i32 4, %i.an                        ; 2 uses
  %i.tz = sext i32 %i.ty to i64
  %.not202 = icmp eq i32 %i.ta, 0
  %or.cond350 = select i1 %.not201, i1 true, i1 %.not202
  br i1 %or.cond350, label %intra_recon.exit.split, label %.preheader104.lr.ph.us.preheader

.preheader104.lr.ph.us.preheader:                 ; preds = %._crit_edge156
  %i.ua = shl i32 %i.sv, 1
  %i.ub = shl nuw i32 1, %i.ua
  %i.uc = zext nneg i32 %i.ub to i64
  %i.ud = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %scevgep658 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %scevgep660 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.preheader104.lr.ph.us

.preheader104.lr.ph.us:                           ; preds = %.preheader104.lr.ph.us.preheader, %..loopexit105_crit_edge.split.us.us
  %i.ue = phi ptr [ %i.su, %.preheader104.lr.ph.us.preheader ], [ %i.akm, %..loopexit105_crit_edge.split.us.us ]
  %i.uf = phi i1 [ true, %.preheader104.lr.ph.us.preheader ], [ false, %..loopexit105_crit_edge.split.us.us ]
  %indvars.iv303 = phi i64 [ 0, %.preheader104.lr.ph.us.preheader ], [ 1, %..loopexit105_crit_edge.split.us.us ] ; 3 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 3 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next304
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !70
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %indvars.iv.next304
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !70
  %i.uk = getelementptr inbounds i8, ptr %i.uj, i64 %2
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ti, i64 %indvars.iv303
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv303
  br label %.preheader104.us.us

.preheader104.us.us:                              ; preds = %._crit_edge189.us.us, %.preheader104.lr.ph.us
  %.1.i193.us.us = phi ptr [ %i.uk, %.preheader104.lr.ph.us ], [ %i.akr, %._crit_edge189.us.us ] ; 2 uses
  %.1180.i192.us.us = phi ptr [ %i.uh, %.preheader104.lr.ph.us ], [ %i.aku, %._crit_edge189.us.us ] ; 2 uses
  %.1183.i191.us.us = phi i32 [ 0, %.preheader104.lr.ph.us ], [ %i.akv, %._crit_edge189.us.us ] ; 5 uses
  %.2.i190.us.us = phi i64 [ 0, %.preheader104.lr.ph.us ], [ %indvars.iv.next301, %._crit_edge189.us.us ]
  %i.un = icmp sgt i32 %.1183.i191.us.us, 0
  %i.uo = or i1 %i.tk, %i.un                      ; 5 uses
  %i.up = zext i1 %i.uo to i64
  %i.uq = or i32 %.1183.i191.us.us, %.pre-phi
  %or.cond3.not.i47.us.us = icmp eq i32 %i.uq, 0
  %i.ur = icmp eq i32 %.1183.i191.us.us, 0        ; 2 uses
  %i.us = select i1 %i.uo, i32 1, i32 65535
  br label %bb.ac

bb.ac:                                            ; preds = %bb.bc, %.preheader104.us.us
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %bb.bc ], [ %.2.i190.us.us, %.preheader104.us.us ] ; 3 uses
  %.0.i185.us.us = phi ptr [ %i.adh, %bb.bc ], [ %.1.i193.us.us, %.preheader104.us.us ] ; 3 uses
  %.0175.i182.us.us = phi ptr [ %i.adg, %bb.bc ], [ %.1180.i192.us.us, %.preheader104.us.us ] ; 5 uses
  %.1185.i179.us.us = phi i32 [ %i.adf, %bb.bc ], [ 0, %.preheader104.us.us ] ; 7 uses
  %i.ut = load i8, ptr %i.tf, align 1, !tbaa !90
  %i.uu = load i8, ptr %i.th, align 2, !tbaa !78
  %.not.i.us.us = icmp eq i8 %i.uu, 0
  %.pre307 = load i32, ptr %i.am, align 4, !tbaa !69 ; 8 uses
  br i1 %.not.i.us.us, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.uv = icmp ugt i32 %.pre307, 1
  %i.uw = load ptr, ptr %i.ul, align 8, !tbaa !70
  %i.ux = getelementptr inbounds i8, ptr %i.uw, i64 %indvars.iv300 ; 2 uses
  br i1 %i.uv, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !40
  %i.uz = zext i8 %i.uy to i32
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.va = load i16, ptr %i.ux, align 2, !tbaa !40
  %i.vb = zext i16 %i.va to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %i.vc = phi i32 [ 0, %bb.ac ], [ %i.vb, %bb.af ], [ %i.uz, %bb.ae ] ; 2 uses
  %i.vd = load ptr, ptr %i.as, align 8, !tbaa !76
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 68
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !77
  %i.vg = sext i32 %i.vf to i64                   ; 2 uses
  %i.vh = load i64, ptr %i.tj, align 8, !tbaa !91 ; 3 uses
  %i.vi = load i8, ptr %i.sw, align 4, !tbaa !88  ; 2 uses
  %i.vj = zext nneg i8 %i.vi to i32
  %i.vk = load i8, ptr %i.tb, align 1, !tbaa !89
  %i.vl = load ptr, ptr %0, align 16, !tbaa !34   ; 4 uses
  %i.vm = load i32, ptr %i.tl, align 16, !tbaa !81
  %i.vn = icmp ugt i32 %i.i, %i.vm
  %i.vo = icmp sgt i32 %.1185.i179.us.us, 0
  %i.vp = or i1 %i.vo, %i.vn                      ; 5 uses
  %i.vq = icmp slt i32 %.1185.i179.us.us, %i.tm   ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vl, i64 1
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !82
  %i.vt = zext i8 %i.vs to i32                    ; 3 uses
  %i.vu = zext i8 %i.ut to i64
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr @check_intra_mode.mode_conv, i64 %i.vu
  %i.vw = zext i1 %i.vp to i64
  %i.vx = getelementptr inbounds nuw [2 x i8], ptr %i.vv, i64 %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.up
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !40  ; 3 uses
  %i.wa = zext i8 %i.vz to i64                    ; 2 uses
  %i.wb = shl nuw i64 1, %i.wa                    ; 4 uses
  %i.wc = and i64 %i.wb, 29954
  %.not.not.i6.us.us = icmp eq i64 %i.wc, 0
  br i1 %.not.not.i6.us.us, label %bb.ah, label %.loopexit.us.us

bb.ah:                                            ; preds = %bb.ag
  %i.wd = shl i32 4, %.pre307                     ; 8 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.vl, i64 3964
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !66
  %i.wg = sub i32 %i.wf, %i.i
  %.not.i18.us.us = icmp eq i8 %i.vi, 0
  %i.wh = zext i1 %.not.i18.us.us to i32
  %i.wi = shl i32 %i.wg, %i.wh
  %i.wj = sub i32 %i.wi, %.1185.i179.us.us        ; 2 uses
  %i.wk = shl i32 %i.wj, 2                        ; 6 uses
  %i.wl = icmp eq i32 %.pre307, 0                 ; 2 uses
  %i.wm = and i8 %i.vz, -5                        ; 2 uses
  %i.wn = icmp eq i8 %i.wm, 3                     ; 2 uses
  %or.cond.i19.us.us = select i1 %i.wn, i1 %i.vq, i1 false
  %spec.select.i20.us.us = select i1 %or.cond.i19.us.us, i32 4, i32 0 ; 2 uses
  br i1 %i.uo, label %bb.ai, label %.critedge.i24.preheader.us.us

.critedge.i24.us.us:                              ; preds = %vec.epilog.iter.check766, %.critedge.i24.us.us
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.critedge.i24.us.us ], [ %n.vec755, %vec.epilog.iter.check766 ] ; 2 uses
  %i.wo = shl nuw nsw i64 %indvars.iv261, 1
  %i.wp = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.wo
  store i16 %i.ajr, ptr %i.wp, align 2, !tbaa !40
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit102.us.us, label %.critedge.i24.us.us, !llvm.loop !195

bb.ai:                                            ; preds = %bb.ah
  br i1 %or.cond3.not.i47.us.us, label %.thread82.us.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.wq = sub nsw i64 0, %i.vh
  %i.wr = getelementptr inbounds i8, ptr %.0175.i182.us.us, i64 %i.wq ; 2 uses
  %i.ws = sub nsw i64 0, %i.vg
  %i.wt = getelementptr inbounds i8, ptr %.0.i185.us.us, i64 %i.ws ; 2 uses
  %i.wu = select i1 %i.ur, ptr %i.wt, ptr %i.wr   ; 2 uses
  br i1 %i.vp, label %bb.ak, label %.thread83.us.us

bb.ak:                                            ; preds = %bb.aj
  %i.wv = icmp eq i32 %.1185.i179.us.us, 0
  %or.cond7.i48.us.us = or i1 %i.ur, %i.wv
  %spec.select351 = select i1 %or.cond7.i48.us.us, ptr %i.wt, ptr %i.wr
  br label %.thread83.us.us

.thread82.us.us:                                  ; preds = %bb.ai
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vl, i64 19136
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv.next304
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !70
  %i.wz = lshr i32 8, %i.vj
  %i.xa = shl i32 %.1185.i179.us.us, 3
  %i.xb = mul i32 %i.tn, %i.wz
  %i.xc = add i32 %i.xb, %i.xa
  %i.xd = sext i32 %i.xc to i64
  %i.xe = getelementptr inbounds i8, ptr %i.wy, i64 %i.xd ; 2 uses
  br label %.thread83.us.us

.thread83.us.us:                                  ; preds = %bb.ak, %.thread82.us.us, %bb.aj
  %.0280.i22.ph.us.us = phi ptr [ %i.xe, %.thread82.us.us ], [ %i.wu, %bb.ak ], [ %i.wu, %bb.aj ] ; 10 uses
  %.0279.i23.ph.us.us = phi ptr [ %i.xe, %.thread82.us.us ], [ %spec.select351, %bb.ak ], [ undef, %bb.aj ] ; 6 uses
  %i.xf = and i64 %i.wb, 2189
  %.not289.not.i35.us.us = icmp ne i64 %i.xf, 0
  %i.xg = icmp eq ptr %.0280.i22.ph.us.us, %.0279.i23.ph.us.us
  %or.cond301.i36.us.us = select i1 %i.vp, i1 %i.xg, i1 false
  %or.cond308.i37.us.us = select i1 %.not289.not.i35.us.us, i1 true, i1 %or.cond301.i36.us.us
  br i1 %or.cond308.i37.us.us, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.thread83.us.us
  br i1 %i.wl, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not291.old.i42.us.us = icmp sgt i32 %i.wd, %i.wk
  br i1 %.not291.old.i42.us.us, label %bb.ao, label %.loopexit.us.us

bb.an:                                            ; preds = %bb.al
  %i.xh = icmp ne i8 %i.wm, 3
  %or.cond9.i43.us.us = select i1 %i.xh, i1 true, i1 %i.vq
  %i.xi = add nuw nsw i32 %spec.select.i20.us.us, %i.wd
  %.not291.i45.us.us = icmp sle i32 %i.xi, %i.wk
  %or.cond302.i46.not.us.us = select i1 %or.cond9.i43.us.us, i1 %.not291.i45.us.us, i1 false
  br i1 %or.cond302.i46.not.us.us, label %.loopexit.us.us, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.thread83.us.us
  %.not292.i38.us.us = icmp sgt i32 %i.wd, %i.wk
  br i1 %.not292.i38.us.us, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.xj = shl i32 8, %.pre307
  %i.xk = sext i32 %i.xj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.tg, ptr align 1 %.0280.i22.ph.us.us, i64 %i.xk, i1 false)
  br label %.loopexit102.us.us

bb.aq:                                            ; preds = %bb.ao
  %i.xl = shl i32 %i.wj, 3                        ; 2 uses
  %i.xm = sext i32 %i.xl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.tg, ptr align 1 %.0280.i22.ph.us.us, i64 %i.xm, i1 false)
  %i.xn = add i32 %i.xl, -2
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr inbounds i8, ptr %i.tg, i64 %i.xo
  %i.xq = load i16, ptr %i.xp, align 2, !tbaa !40 ; 3 uses
  %i.xr = sub nsw i32 %i.wd, %i.wk                ; 3 uses
  %i.xs = icmp sgt i32 %i.xr, 0
  br i1 %i.xs, label %iter.check737, label %.loopexit102.us.us

iter.check737:                                    ; preds = %bb.aq
  %i.xt = sext i32 %i.wk to i64                   ; 3 uses
  %i.xu = zext nneg i32 %i.xr to i64              ; 5 uses
  %min.iters.check726 = icmp ult i32 %i.xr, 16
  br i1 %min.iters.check726, label %vec.epilog.ph741, label %vector.ph727

vector.ph727:                                     ; preds = %iter.check737
  %i.xv = and i64 %i.xu, 12
  %n.vec728 = and i64 %i.xu, 2147483632           ; 4 uses
  %broadcast.splatinsert729 = insertelement <8 x i16> poison, i16 %i.xq, i64 0
  %broadcast.splat730 = shufflevector <8 x i16> %broadcast.splatinsert729, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body731

vector.body731:                                   ; preds = %vector.body731, %vector.ph727
  %index732 = phi i64 [ 0, %vector.ph727 ], [ %index.next733, %vector.body731 ] ; 2 uses
  %i.xw = add nsw i64 %index732, %i.xt
  %i.xx = shl nsw i64 %i.xw, 1
  %i.xy = getelementptr inbounds i8, ptr %i.tg, i64 %i.xx ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  store <8 x i16> %broadcast.splat730, ptr %i.xy, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat730, ptr %i.xz, align 8, !tbaa !40
  %index.next733 = add nuw i64 %index732, 16      ; 2 uses
  %i.ya = icmp eq i64 %index.next733, %n.vec728
  br i1 %i.ya, label %middle.block734, label %vector.body731, !llvm.loop !196

middle.block734:                                  ; preds = %vector.body731
  %cmp.n735 = icmp eq i64 %n.vec728, %i.xu
  br i1 %cmp.n735, label %.loopexit102.us.us, label %vec.epilog.iter.check739

vec.epilog.iter.check739:                         ; preds = %middle.block734
  %min.epilog.iters.check740 = icmp eq i64 %i.xv, 0
  br i1 %min.epilog.iters.check740, label %.lr.ph159.us.us, label %vec.epilog.ph741, !prof !230

vec.epilog.ph741:                                 ; preds = %iter.check737, %vec.epilog.iter.check739
  %vec.epilog.resume.val736 = phi i64 [ %n.vec728, %vec.epilog.iter.check739 ], [ 0, %iter.check737 ]
  %broadcast.splatinsert743 = insertelement <4 x i16> poison, i16 %i.xq, i64 0
  %broadcast.splat744 = shufflevector <4 x i16> %broadcast.splatinsert743, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body745

vec.epilog.vector.body745:                        ; preds = %vec.epilog.vector.body745, %vec.epilog.ph741
  %index746 = phi i64 [ %vec.epilog.resume.val736, %vec.epilog.ph741 ], [ %index.next747, %vec.epilog.vector.body745 ] ; 2 uses
  %i.yb = add nsw i64 %index746, %i.xt
  %i.yc = shl nsw i64 %i.yb, 1
  %i.yd = getelementptr inbounds i8, ptr %i.tg, i64 %i.yc
  store <4 x i16> %broadcast.splat744, ptr %i.yd, align 8, !tbaa !40
  %index.next747 = add nuw i64 %index746, 4       ; 2 uses
  %i.ye = icmp eq i64 %index.next747, %i.xu
  br i1 %i.ye, label %.loopexit102.us.us, label %vec.epilog.vector.body745, !llvm.loop !197

.lr.ph159.us.us:                                  ; preds = %vec.epilog.iter.check739, %.lr.ph159.us.us
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %.lr.ph159.us.us ], [ %n.vec728, %vec.epilog.iter.check739 ] ; 2 uses
  %i.yf = add nsw i64 %indvars.iv266, %i.xt
  %i.yg = shl nsw i64 %i.yf, 1
  %i.yh = getelementptr inbounds i8, ptr %i.tg, i64 %i.yg
  store i16 %i.xq, ptr %i.yh, align 2, !tbaa !40
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.yi = icmp samesign ult i64 %indvars.iv.next267, %i.xu
  br i1 %i.yi, label %.lr.ph159.us.us, label %.loopexit102.us.us, !llvm.loop !198

.loopexit102.us.us:                               ; preds = %.critedge.i24.us.us, %vec.epilog.vector.body772, %.lr.ph159.us.us, %vec.epilog.vector.body745, %middle.block761, %middle.block734, %.critedge.i24.preheader.us.us, %bb.aq, %bb.ap
  %.0279.i2391.us.us = phi ptr [ %.0279.i23.ph.us.us, %bb.aq ], [ %.0279.i23.ph.us.us, %bb.ap ], [ %.0279.i23.ph.us.us, %middle.block734 ], [ undef, %.critedge.i24.preheader.us.us ], [ undef, %vec.epilog.vector.body772 ], [ %.0279.i23.ph.us.us, %vec.epilog.vector.body745 ], [ %.0279.i23.ph.us.us, %.lr.ph159.us.us ], [ undef, %middle.block761 ], [ undef, %.critedge.i24.us.us ]
  %.0280.i2288.us.us = phi ptr [ %.0280.i22.ph.us.us, %bb.aq ], [ %.0280.i22.ph.us.us, %bb.ap ], [ %.0280.i22.ph.us.us, %middle.block734 ], [ undef, %.critedge.i24.preheader.us.us ], [ undef, %vec.epilog.vector.body772 ], [ %.0280.i22.ph.us.us, %vec.epilog.vector.body745 ], [ %.0280.i22.ph.us.us, %.lr.ph159.us.us ], [ undef, %middle.block761 ], [ undef, %.critedge.i24.us.us ]
  %i.yj = and i64 %i.wb, 2189
  %.not293.not.i26.us.us = icmp eq i64 %i.yj, 0
  br i1 %.not293.not.i26.us.us, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %.loopexit102.us.us
  %or.cond11.i34.us.us = and i1 %i.uo, %i.vp
  br i1 %or.cond11.i34.us.us, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.yk = add nsw i32 %i.vt, -8
  %i.yl = shl i32 128, %i.yk
  %i.ym = add nuw i32 %i.yl, %i.us
  %i.yn = trunc i32 %i.ym to i16
  br label %.sink.split352

bb.at:                                            ; preds = %bb.ar
  %i.yo = getelementptr inbounds i8, ptr %.0279.i2391.us.us, i64 -2
  %i.yp = load i16, ptr %i.yo, align 2, !tbaa !40
  br label %.sink.split352

.sink.split352:                                   ; preds = %bb.as, %bb.at
  %.sink353 = phi i16 [ %i.yp, %bb.at ], [ %i.yn, %bb.as ]
  store i16 %.sink353, ptr %i.to, align 2, !tbaa !40
  br label %bb.au

bb.au:                                            ; preds = %.sink.split352, %.loopexit102.us.us
  %or.cond304.i28.us.us = and i1 %i.wl, %i.wn
  br i1 %or.cond304.i28.us.us, label %bb.av, label %.loopexit.us.us

bb.av:                                            ; preds = %bb.au
  %or.cond13.i29.us.us = select i1 %i.uo, i1 %i.vq, i1 false
  %i.yq = add nuw nsw i32 %spec.select.i20.us.us, %i.wd
  %.not295.i31.us.us = icmp sle i32 %i.yq, %i.wk
  %or.cond306.i32.not.us.us = select i1 %or.cond13.i29.us.us, i1 %.not295.i31.us.us, i1 false
  br i1 %or.cond306.i32.not.us.us, label %bb.aw, label %.loopexit.us.us.loopexit

.loopexit.us.us.loopexit:                         ; preds = %bb.av
  %i.yr = load <8 x i16>, ptr %i.tp, align 2
  %i.ys = shufflevector <8 x i16> %i.yr, <8 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.ys, ptr %i.ud, align 8, !tbaa !40
  br label %.loopexit.us.us

bb.aw:                                            ; preds = %bb.av
  %i.yt = getelementptr inbounds nuw i8, ptr %.0280.i2288.us.us, i64 8
  %i.yu = load i64, ptr %i.yt, align 1
  store i64 %i.yu, ptr %i.tq, align 8
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.loopexit, %bb.aw, %bb.au, %bb.an, %bb.am, %bb.ag
  %.0.us.us = phi ptr [ %.0280.i22.ph.us.us, %bb.an ], [ %i.tg, %bb.aw ], [ %i.tg, %bb.au ], [ %i.tg, %bb.ag ], [ %.0280.i22.ph.us.us, %bb.am ], [ %i.tg, %.loopexit.us.us.loopexit ]
  %i.yv = and i64 %i.wb, 30857
  %.not296.not.i7.us.us = icmp eq i64 %i.yv, 0
  br i1 %.not296.not.i7.us.us, label %bb.ax, label %check_intra_mode.exit49.us.us

bb.ax:                                            ; preds = %.loopexit.us.us
  %i.yw = shl i32 4, %.pre307                     ; 15 uses
  br i1 %i.vp, label %bb.ay, label %.preheader100.us.us

vec.epilog.scalar.ph711:                          ; preds = %vec.epilog.iter.check712, %vec.epilog.scalar.ph711
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %vec.epilog.scalar.ph711 ], [ %n.vec701, %vec.epilog.iter.check712 ] ; 2 uses
  %i.yx = shl nuw nsw i64 %indvars.iv273, 1
  %i.yy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.yx
  store i16 %i.akd, ptr %i.yy, align 2, !tbaa !40
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %check_intra_mode.exit49.us.us, label %vec.epilog.scalar.ph711, !llvm.loop !199

bb.ay:                                            ; preds = %bb.ax
  %i.yz = getelementptr inbounds nuw i8, ptr %i.vl, i64 3960
  %i.za = load i32, ptr %i.yz, align 8, !tbaa !67
  %i.zb = sub i32 %i.za, %i.g
  %.not297.i.us.us = icmp eq i8 %i.vk, 0
  %i.zc = zext i1 %.not297.i.us.us to i32
  %i.zd = shl i32 %i.zb, %i.zc
  %i.ze = sub i32 %i.zd, %.1183.i191.us.us        ; 2 uses
  %i.zf = shl i32 %i.ze, 2                        ; 10 uses
  %i.zg = icmp eq i32 %.1185.i179.us.us, 0        ; 2 uses
  %i.zh = select i1 %i.zg, ptr %.0.i185.us.us, ptr %.0175.i182.us.us ; 48 uses
  %i.zi = select i1 %i.zg, i64 %i.vg, i64 %i.vh   ; 12 uses
  %.not298.not.i9.us.us = icmp eq i8 %i.vz, 8
  %.not300.i14.us.us = icmp sgt i32 %i.yw, %i.zf  ; 2 uses
  br i1 %.not298.not.i9.us.us, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %.not300.i14.us.us, label %.preheader97.us.us, label %.preheader98.us.us

.lr.ph164.us.us:                                  ; preds = %.lr.ph164.us.us, %.lr.ph164.us.us.preheader791
  %indvars.iv278 = phi i64 [ %indvars.iv278.ph, %.lr.ph164.us.us.preheader791 ], [ %indvars.iv.next279.1, %.lr.ph164.us.us ] ; 5 uses
  %i.zj = mul nsw i64 %i.zi, %indvars.iv278
  %i.zk = getelementptr inbounds i8, ptr %i.zh, i64 %i.zj
  %i.zl = getelementptr inbounds i8, ptr %i.zk, i64 -2
  %i.zm = load i16, ptr %i.zl, align 2, !tbaa !40
  %19 = xor i64 %indvars.iv278, -1
  %20 = add nsw i64 %30, %19
  %21 = shl nsw i64 %20, 1
  %i.zn = getelementptr inbounds i8, ptr %i.b, i64 %21
  store i16 %i.zm, ptr %i.zn, align 2, !tbaa !40
  %indvars.iv.next279 = or disjoint i64 %indvars.iv278, 1
  %i.zo = mul nsw i64 %i.zi, %indvars.iv.next279
  %i.zp = getelementptr inbounds i8, ptr %i.zh, i64 %i.zo
  %i.zq = getelementptr inbounds i8, ptr %i.zp, i64 -2
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !40
  %22 = xor i64 %indvars.iv278, -2
  %23 = add nsw i64 %22, %30
  %24 = shl nsw i64 %23, 1
  %i.zs = getelementptr inbounds i8, ptr %i.b, i64 %24
  store i16 %i.zr, ptr %i.zs, align 2, !tbaa !40
  %indvars.iv.next279.1 = add nuw nsw i64 %indvars.iv278, 2 ; 2 uses
  %exitcond282.not.1 = icmp eq i64 %indvars.iv.next279.1, %wide.trip.count281
  br i1 %exitcond282.not.1, label %check_intra_mode.exit49.us.us, label %.lr.ph164.us.us, !llvm.loop !200

.lr.ph166.us.us:                                  ; preds = %.lr.ph166.us.us.preheader790, %.lr.ph166.us.us
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %.lr.ph166.us.us ], [ %indvars.iv283.ph, %.lr.ph166.us.us.preheader790 ] ; 3 uses
  %i.zt = mul nsw i64 %i.zi, %indvars.iv283
  %i.zu = getelementptr inbounds i8, ptr %i.zh, i64 %i.zt
  %i.zv = getelementptr inbounds i8, ptr %i.zu, i64 -2
  %i.zw = load i16, ptr %i.zv, align 2, !tbaa !40
  %i.zx = trunc nuw nsw i64 %indvars.iv283 to i32
  %i.zy = xor i32 %i.zx, -1
  %i.zz = add i32 %i.yw, %i.zy
  %i.aaa = shl nsw i32 %i.zz, 1
  %25 = sext i32 %i.aaa to i64
  %i.aab = getelementptr inbounds i8, ptr %i.b, i64 %25
  store i16 %i.zw, ptr %i.aab, align 2, !tbaa !40
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %i.aac = icmp samesign ult i64 %indvars.iv.next284, %i.agf
  br i1 %i.aac, label %.lr.ph166.us.us, label %._crit_edge.us195.us, !llvm.loop !201

._crit_edge.us195.us:                             ; preds = %.lr.ph166.us.us, %middle.block673, %.preheader97.us.us
  %i.aad = sub nsw i32 %i.yw, %i.zf               ; 4 uses
  %i.aae = shl nuw nsw i32 %i.aad, 1
  %i.aaf = zext nneg i32 %i.aae to i64
  %i.aag = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aaf
  %i.aah = load i16, ptr %i.aag, align 8, !tbaa !40 ; 3 uses
  %i.aai = icmp sgt i32 %i.aad, 0
  br i1 %i.aai, label %iter.check635, label %check_intra_mode.exit49.us.us

iter.check635:                                    ; preds = %._crit_edge.us195.us
  %i.aaj = zext nneg i32 %i.aad to i64            ; 5 uses
  %min.iters.check624 = icmp ult i32 %i.aad, 16
  br i1 %min.iters.check624, label %vec.epilog.ph639, label %vector.ph625

vector.ph625:                                     ; preds = %iter.check635
  %i.aak = and i64 %i.aaj, 12
  %n.vec626 = and i64 %i.aaj, 2147483632          ; 4 uses
  %broadcast.splatinsert627 = insertelement <8 x i16> poison, i16 %i.aah, i64 0
  %broadcast.splat628 = shufflevector <8 x i16> %broadcast.splatinsert627, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body629

vector.body629:                                   ; preds = %vector.body629, %vector.ph625
  %index630 = phi i64 [ 0, %vector.ph625 ], [ %index.next631, %vector.body629 ] ; 2 uses
  %i.aal = shl nuw nsw i64 %index630, 1
  %i.aam = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aal ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  store <8 x i16> %broadcast.splat628, ptr %i.aam, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat628, ptr %i.aan, align 16, !tbaa !40
  %index.next631 = add nuw i64 %index630, 16      ; 2 uses
  %i.aao = icmp eq i64 %index.next631, %n.vec626
  br i1 %i.aao, label %middle.block632, label %vector.body629, !llvm.loop !202

middle.block632:                                  ; preds = %vector.body629
  %cmp.n633 = icmp eq i64 %n.vec626, %i.aaj
  br i1 %cmp.n633, label %check_intra_mode.exit49.us.us, label %vec.epilog.iter.check637

vec.epilog.iter.check637:                         ; preds = %middle.block632
  %min.epilog.iters.check638 = icmp eq i64 %i.aak, 0
  br i1 %min.epilog.iters.check638, label %.lr.ph169.us.us, label %vec.epilog.ph639, !prof !230

vec.epilog.ph639:                                 ; preds = %iter.check635, %vec.epilog.iter.check637
  %vec.epilog.resume.val634 = phi i64 [ %n.vec626, %vec.epilog.iter.check637 ], [ 0, %iter.check635 ]
  %broadcast.splatinsert641 = insertelement <4 x i16> poison, i16 %i.aah, i64 0
  %broadcast.splat642 = shufflevector <4 x i16> %broadcast.splatinsert641, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body643

vec.epilog.vector.body643:                        ; preds = %vec.epilog.vector.body643, %vec.epilog.ph639
  %index644 = phi i64 [ %vec.epilog.resume.val634, %vec.epilog.ph639 ], [ %index.next645, %vec.epilog.vector.body643 ] ; 2 uses
  %i.aap = shl nuw nsw i64 %index644, 1
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aap
  store <4 x i16> %broadcast.splat642, ptr %i.aaq, align 8, !tbaa !40
  %index.next645 = add nuw i64 %index644, 4       ; 2 uses
  %i.aar = icmp eq i64 %index.next645, %i.aaj
  br i1 %i.aar, label %check_intra_mode.exit49.us.us, label %vec.epilog.vector.body643, !llvm.loop !203

.lr.ph169.us.us:                                  ; preds = %vec.epilog.iter.check637, %.lr.ph169.us.us
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %.lr.ph169.us.us ], [ %n.vec626, %vec.epilog.iter.check637 ] ; 2 uses
  %i.aas = shl nuw nsw i64 %indvars.iv286, 1
  %i.aat = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aas
  store i16 %i.aah, ptr %i.aat, align 2, !tbaa !40
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.aau = icmp samesign ult i64 %indvars.iv.next287, %i.aaj
  br i1 %i.aau, label %.lr.ph169.us.us, label %check_intra_mode.exit49.us.us, !llvm.loop !204

bb.ba:                                            ; preds = %bb.ay
  br i1 %.not300.i14.us.us, label %.preheader.us.us, label %.preheader94.us.us

.lr.ph171.us.us:                                  ; preds = %.lr.ph171.us.us, %.lr.ph171.us.us.preheader786
  %indvars.iv289 = phi i64 [ %indvars.iv289.ph, %.lr.ph171.us.us.preheader786 ], [ %indvars.iv.next290.3, %.lr.ph171.us.us ] ; 6 uses
  %i.aav = mul nsw i64 %i.zi, %indvars.iv289
  %i.aaw = getelementptr inbounds i8, ptr %i.zh, i64 %i.aav
  %i.aax = getelementptr inbounds i8, ptr %i.aaw, i64 -2
  %i.aay = load i16, ptr %i.aax, align 2, !tbaa !40
  %i.aaz = shl nuw nsw i64 %indvars.iv289, 1
  %i.aba = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aaz
  store i16 %i.aay, ptr %i.aba, align 8, !tbaa !40
  %indvars.iv.next290 = or disjoint i64 %indvars.iv289, 1 ; 2 uses
  %i.abb = mul nsw i64 %i.zi, %indvars.iv.next290
  %i.abc = getelementptr inbounds i8, ptr %i.zh, i64 %i.abb
  %i.abd = getelementptr inbounds i8, ptr %i.abc, i64 -2
  %i.abe = load i16, ptr %i.abd, align 2, !tbaa !40
  %i.abf = shl nuw nsw i64 %indvars.iv.next290, 1
  %i.abg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.abf
  store i16 %i.abe, ptr %i.abg, align 2, !tbaa !40
  %indvars.iv.next290.1 = or disjoint i64 %indvars.iv289, 2 ; 2 uses
  %i.abh = mul nsw i64 %i.zi, %indvars.iv.next290.1
  %i.abi = getelementptr inbounds i8, ptr %i.zh, i64 %i.abh
  %i.abj = getelementptr inbounds i8, ptr %i.abi, i64 -2
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !40
  %i.abl = shl nuw nsw i64 %indvars.iv.next290.1, 1
  %i.abm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.abl
  store i16 %i.abk, ptr %i.abm, align 4, !tbaa !40
  %indvars.iv.next290.2 = or disjoint i64 %indvars.iv289, 3 ; 2 uses
  %i.abn = mul nsw i64 %i.zi, %indvars.iv.next290.2
  %i.abo = getelementptr inbounds i8, ptr %i.zh, i64 %i.abn
  %i.abp = getelementptr inbounds i8, ptr %i.abo, i64 -2
  %i.abq = load i16, ptr %i.abp, align 2, !tbaa !40
  %i.abr = shl nuw nsw i64 %indvars.iv.next290.2, 1
  %i.abs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.abr
  store i16 %i.abq, ptr %i.abs, align 2, !tbaa !40
  %indvars.iv.next290.3 = add nuw nsw i64 %indvars.iv289, 4 ; 2 uses
  %exitcond293.not.3 = icmp eq i64 %indvars.iv.next290.3, %wide.trip.count292
  br i1 %exitcond293.not.3, label %check_intra_mode.exit49.us.us, label %.lr.ph171.us.us, !llvm.loop !205

.lr.ph173.us.us:                                  ; preds = %.lr.ph173.us.us.preheader785, %.lr.ph173.us.us
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %.lr.ph173.us.us ], [ %indvars.iv294.ph, %.lr.ph173.us.us.preheader785 ] ; 3 uses
  %i.abt = mul nsw i64 %i.zi, %indvars.iv294
  %i.abu = getelementptr inbounds i8, ptr %i.zh, i64 %i.abt
  %i.abv = getelementptr inbounds i8, ptr %i.abu, i64 -2
  %i.abw = load i16, ptr %i.abv, align 2, !tbaa !40
  %i.abx = shl nuw nsw i64 %indvars.iv294, 1
  %i.aby = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.abx
  store i16 %i.abw, ptr %i.aby, align 2, !tbaa !40
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.abz = icmp samesign ult i64 %indvars.iv.next295, %i.adk
  br i1 %i.abz, label %.lr.ph173.us.us, label %._crit_edge174.us.us, !llvm.loop !206

._crit_edge174.us.us:                             ; preds = %.lr.ph173.us.us, %middle.block599, %.preheader.us.us
  %i.aca = shl i32 %i.ze, 3
  %i.acb = add i32 %i.aca, -2
  %i.acc = sext i32 %i.acb to i64
  %i.acd = getelementptr inbounds i8, ptr %i.b, i64 %i.acc
  %i.ace = load i16, ptr %i.acd, align 2, !tbaa !40 ; 3 uses
  %i.acf = sub nsw i32 %i.yw, %i.zf               ; 3 uses
  %i.acg = icmp sgt i32 %i.acf, 0
  br i1 %i.acg, label %iter.check568, label %check_intra_mode.exit49.us.us

iter.check568:                                    ; preds = %._crit_edge174.us.us
  %i.ach = sext i32 %i.zf to i64                  ; 3 uses
  %i.aci = zext nneg i32 %i.acf to i64            ; 5 uses
  %min.iters.check557 = icmp ult i32 %i.acf, 16
  br i1 %min.iters.check557, label %vec.epilog.ph572, label %vector.ph558

vector.ph558:                                     ; preds = %iter.check568
  %i.acj = and i64 %i.aci, 12
  %n.vec559 = and i64 %i.aci, 2147483632          ; 4 uses
  %broadcast.splatinsert560 = insertelement <8 x i16> poison, i16 %i.ace, i64 0
  %broadcast.splat561 = shufflevector <8 x i16> %broadcast.splatinsert560, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body562

vector.body562:                                   ; preds = %vector.body562, %vector.ph558
  %index563 = phi i64 [ 0, %vector.ph558 ], [ %index.next564, %vector.body562 ] ; 2 uses
  %i.ack = add nsw i64 %index563, %i.ach
  %i.acl = shl nsw i64 %i.ack, 1
  %i.acm = getelementptr inbounds i8, ptr %i.b, i64 %i.acl ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 16
  store <8 x i16> %broadcast.splat561, ptr %i.acm, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat561, ptr %i.acn, align 8, !tbaa !40
  %index.next564 = add nuw i64 %index563, 16      ; 2 uses
  %i.aco = icmp eq i64 %index.next564, %n.vec559
  br i1 %i.aco, label %middle.block565, label %vector.body562, !llvm.loop !207

middle.block565:                                  ; preds = %vector.body562
  %cmp.n566 = icmp eq i64 %n.vec559, %i.aci
  br i1 %cmp.n566, label %check_intra_mode.exit49.us.us, label %vec.epilog.iter.check570

vec.epilog.iter.check570:                         ; preds = %middle.block565
  %min.epilog.iters.check571 = icmp eq i64 %i.acj, 0
  br i1 %min.epilog.iters.check571, label %.lr.ph177.us.us, label %vec.epilog.ph572, !prof !230

vec.epilog.ph572:                                 ; preds = %iter.check568, %vec.epilog.iter.check570
  %vec.epilog.resume.val567 = phi i64 [ %n.vec559, %vec.epilog.iter.check570 ], [ 0, %iter.check568 ]
  %broadcast.splatinsert574 = insertelement <4 x i16> poison, i16 %i.ace, i64 0
  %broadcast.splat575 = shufflevector <4 x i16> %broadcast.splatinsert574, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body576

vec.epilog.vector.body576:                        ; preds = %vec.epilog.vector.body576, %vec.epilog.ph572
  %index577 = phi i64 [ %vec.epilog.resume.val567, %vec.epilog.ph572 ], [ %index.next578, %vec.epilog.vector.body576 ] ; 2 uses
  %i.acp = add nsw i64 %index577, %i.ach
  %i.acq = shl nsw i64 %i.acp, 1
  %i.acr = getelementptr inbounds i8, ptr %i.b, i64 %i.acq
  store <4 x i16> %broadcast.splat575, ptr %i.acr, align 8, !tbaa !40
  %index.next578 = add nuw i64 %index577, 4       ; 2 uses
  %i.acs = icmp eq i64 %index.next578, %i.aci
  br i1 %i.acs, label %check_intra_mode.exit49.us.us, label %vec.epilog.vector.body576, !llvm.loop !208

.lr.ph177.us.us:                                  ; preds = %vec.epilog.iter.check570, %.lr.ph177.us.us
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %.lr.ph177.us.us ], [ %n.vec559, %vec.epilog.iter.check570 ] ; 2 uses
  %i.act = add nsw i64 %indvars.iv297, %i.ach
  %i.acu = shl nsw i64 %i.act, 1
  %i.acv = getelementptr inbounds i8, ptr %i.b, i64 %i.acu
  store i16 %i.ace, ptr %i.acv, align 2, !tbaa !40
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %i.acw = icmp samesign ult i64 %indvars.iv.next298, %i.aci
  br i1 %i.acw, label %.lr.ph177.us.us, label %check_intra_mode.exit49.us.us, !llvm.loop !209

check_intra_mode.exit49.us.us:                    ; preds = %vec.epilog.scalar.ph711, %vec.epilog.vector.body718, %.lr.ph164.us.us, %.lr.ph169.us.us, %vec.epilog.vector.body643, %.lr.ph171.us.us, %.lr.ph177.us.us, %vec.epilog.vector.body576, %middle.block707, %middle.block694, %middle.block632, %middle.block619, %middle.block565, %.preheader100.us.us, %.preheader98.us.us, %._crit_edge.us195.us, %.preheader94.us.us, %._crit_edge174.us.us, %.loopexit.us.us
  %i.acx = zext i32 %.pre307 to i64
  %i.acy = getelementptr inbounds nuw [120 x i8], ptr %i.tr, i64 %i.acx
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.acy, i64 %i.wa
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !85
  call void %i.ada(ptr noundef %.0175.i182.us.us, i64 noundef %i.vh, ptr noundef nonnull %i.b, ptr noundef %.0.us.us) #5, !inline_history !0
  %.not195.i.us.us = icmp eq i32 %i.vc, 0
  br i1 %.not195.i.us.us, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %check_intra_mode.exit49.us.us
  %i.adb = load ptr, ptr %i.tu, align 8, !tbaa !85
  %i.adc = load i64, ptr %i.tj, align 8, !tbaa !91
  %i.add = load ptr, ptr %i.um, align 8, !tbaa !92
  %.idx336 = shl nsw i64 %indvars.iv300, 6
  %i.ade = getelementptr inbounds i8, ptr %i.add, i64 %.idx336
  call void %i.adb(ptr noundef %.0175.i182.us.us, i64 noundef %i.adc, ptr noundef %i.ade, i32 noundef %i.vc) #5, !inline_history !0
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %check_intra_mode.exit49.us.us
  %i.adf = add nsw i32 %.1185.i179.us.us, %i.ap   ; 2 uses
  %i.adg = getelementptr inbounds i8, ptr %.0175.i182.us.us, i64 %i.tx
  %i.adh = getelementptr inbounds i8, ptr %.0.i185.us.us, i64 %i.tx
  %indvars.iv.next301 = add nsw i64 %indvars.iv300, %i.uc ; 2 uses
  %i.adi = icmp slt i32 %i.adf, %i.ta
  br i1 %i.adi, label %bb.ac, label %._crit_edge189.us.us, !llvm.loop !3

.preheader.us.us:                                 ; preds = %bb.ba
  %i.adj = icmp sgt i32 %i.zf, 0
  br i1 %i.adj, label %.lr.ph173.us.us.preheader, label %._crit_edge174.us.us

.lr.ph173.us.us.preheader:                        ; preds = %.preheader.us.us
  %i.adk = zext nneg i32 %i.zf to i64             ; 5 uses
  %min.iters.check593 = icmp ugt i32 %i.zf, 7
  %ident.check583.not = icmp eq i64 %i.zi, 1
  %or.cond781 = select i1 %min.iters.check593, i1 %ident.check583.not, i1 false
  br i1 %or.cond781, label %vector.memcheck584, label %.lr.ph173.us.us.preheader785

vector.memcheck584:                               ; preds = %.lr.ph173.us.us.preheader
  %i.adl = shl nuw nsw i64 %i.adk, 1
  %scevgep585 = getelementptr i8, ptr %i.b, i64 %i.adl
  %scevgep586 = getelementptr i8, ptr %i.zh, i64 -2
  %scevgep587 = getelementptr i8, ptr %i.zh, i64 -1
  %scevgep588 = getelementptr i8, ptr %scevgep587, i64 %i.adk
  %bound0589 = icmp ult ptr %i.b, %scevgep588
  %bound1590 = icmp ult ptr %scevgep586, %scevgep585
  %found.conflict591 = and i1 %bound0589, %bound1590
  br i1 %found.conflict591, label %.lr.ph173.us.us.preheader785, label %vector.ph594

vector.ph594:                                     ; preds = %vector.memcheck584
  %n.vec595 = and i64 %i.adk, 2147483640          ; 3 uses
  br label %vector.body596

vector.body596:                                   ; preds = %vector.body596, %vector.ph594
  %index597 = phi i64 [ 0, %vector.ph594 ], [ %index.next598, %vector.body596 ] ; 10 uses
  %i.adm = getelementptr inbounds i8, ptr %i.zh, i64 %index597
  %i.adn = getelementptr i8, ptr %i.zh, i64 %index597
  %i.ado = getelementptr i8, ptr %i.zh, i64 %index597
  %i.adp = getelementptr i8, ptr %i.zh, i64 %index597
  %i.adq = getelementptr i8, ptr %i.zh, i64 %index597
  %i.adr = getelementptr i8, ptr %i.zh, i64 %index597
  %i.ads = getelementptr i8, ptr %i.zh, i64 %index597
  %i.adt = getelementptr i8, ptr %i.zh, i64 %index597
  %i.adu = getelementptr inbounds i8, ptr %i.adm, i64 -2
  %i.adv = getelementptr i8, ptr %i.adn, i64 -1
  %i.adw = getelementptr i8, ptr %i.adp, i64 1
  %i.adx = getelementptr i8, ptr %i.adq, i64 2
  %i.ady = getelementptr i8, ptr %i.adr, i64 3
  %i.adz = getelementptr i8, ptr %i.ads, i64 4
  %i.aea = getelementptr i8, ptr %i.adt, i64 5
  %i.aeb = load i16, ptr %i.adu, align 2, !tbaa !40, !alias.scope !239
  %i.aec = load i16, ptr %i.adv, align 2, !tbaa !40, !alias.scope !239
  %i.aed = load i16, ptr %i.ado, align 2, !tbaa !40, !alias.scope !239
  %i.aee = load i16, ptr %i.adw, align 2, !tbaa !40, !alias.scope !239
  %i.aef = load i16, ptr %i.adx, align 2, !tbaa !40, !alias.scope !239
  %i.aeg = load i16, ptr %i.ady, align 2, !tbaa !40, !alias.scope !239
  %i.aeh = load i16, ptr %i.adz, align 2, !tbaa !40, !alias.scope !239
  %i.aei = load i16, ptr %i.aea, align 2, !tbaa !40, !alias.scope !239
  %i.aej = insertelement <8 x i16> poison, i16 %i.aeb, i64 0
  %i.aek = insertelement <8 x i16> %i.aej, i16 %i.aec, i64 1
  %i.ael = insertelement <8 x i16> %i.aek, i16 %i.aed, i64 2
  %i.aem = insertelement <8 x i16> %i.ael, i16 %i.aee, i64 3
  %i.aen = insertelement <8 x i16> %i.aem, i16 %i.aef, i64 4
  %i.aeo = insertelement <8 x i16> %i.aen, i16 %i.aeg, i64 5
  %i.aep = insertelement <8 x i16> %i.aeo, i16 %i.aeh, i64 6
  %i.aeq = insertelement <8 x i16> %i.aep, i16 %i.aei, i64 7
  %i.aer = shl nuw nsw i64 %index597, 1
  %i.aes = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aer
  store <8 x i16> %i.aeq, ptr %i.aes, align 16, !tbaa !40, !alias.scope !240, !noalias !239
  %index.next598 = add nuw i64 %index597, 8       ; 2 uses
  %i.aet = icmp eq i64 %index.next598, %n.vec595
  br i1 %i.aet, label %middle.block599, label %vector.body596, !llvm.loop !213

middle.block599:                                  ; preds = %vector.body596
  %cmp.n600 = icmp eq i64 %n.vec595, %i.adk
  br i1 %cmp.n600, label %._crit_edge174.us.us, label %.lr.ph173.us.us.preheader785

.lr.ph173.us.us.preheader785:                     ; preds = %vector.memcheck584, %.lr.ph173.us.us.preheader, %middle.block599
  %indvars.iv294.ph = phi i64 [ 0, %vector.memcheck584 ], [ 0, %.lr.ph173.us.us.preheader ], [ %n.vec595, %middle.block599 ]
  br label %.lr.ph173.us.us

.preheader94.us.us:                               ; preds = %bb.ba
  %i.aeu = icmp sgt i32 %i.yw, 0
  br i1 %i.aeu, label %.lr.ph171.us.us.preheader, label %check_intra_mode.exit49.us.us

.lr.ph171.us.us.preheader:                        ; preds = %.preheader94.us.us
  %wide.trip.count292 = zext nneg i32 %i.yw to i64 ; 5 uses
  %min.iters.check613 = icmp ugt i32 %i.yw, 7
  %ident.check603.not = icmp eq i64 %i.zi, 1
  %or.cond782 = select i1 %min.iters.check613, i1 %ident.check603.not, i1 false
  br i1 %or.cond782, label %vector.memcheck604, label %.lr.ph171.us.us.preheader786

vector.memcheck604:                               ; preds = %.lr.ph171.us.us.preheader
  %i.aev = shl nuw nsw i64 %wide.trip.count292, 1
  %scevgep605 = getelementptr i8, ptr %i.b, i64 %i.aev
  %scevgep606 = getelementptr i8, ptr %i.zh, i64 -2
  %scevgep607 = getelementptr i8, ptr %i.zh, i64 -1
  %scevgep608 = getelementptr i8, ptr %scevgep607, i64 %wide.trip.count292
  %bound0609 = icmp ult ptr %i.b, %scevgep608
  %bound1610 = icmp ult ptr %scevgep606, %scevgep605
  %found.conflict611 = and i1 %bound0609, %bound1610
  br i1 %found.conflict611, label %.lr.ph171.us.us.preheader786, label %vector.ph614

vector.ph614:                                     ; preds = %vector.memcheck604
  %n.vec615 = and i64 %wide.trip.count292, 2147483640 ; 3 uses
  br label %vector.body616

vector.body616:                                   ; preds = %vector.body616, %vector.ph614
  %index617 = phi i64 [ 0, %vector.ph614 ], [ %index.next618, %vector.body616 ] ; 10 uses
  %i.aew = getelementptr inbounds i8, ptr %i.zh, i64 %index617
  %i.aex = getelementptr i8, ptr %i.zh, i64 %index617
  %i.aey = getelementptr i8, ptr %i.zh, i64 %index617
  %i.aez = getelementptr i8, ptr %i.zh, i64 %index617
  %i.afa = getelementptr i8, ptr %i.zh, i64 %index617
  %i.afb = getelementptr i8, ptr %i.zh, i64 %index617
  %i.afc = getelementptr i8, ptr %i.zh, i64 %index617
  %i.afd = getelementptr i8, ptr %i.zh, i64 %index617
  %i.afe = getelementptr inbounds i8, ptr %i.aew, i64 -2
  %i.aff = getelementptr i8, ptr %i.aex, i64 -1
  %i.afg = getelementptr i8, ptr %i.aez, i64 1
  %i.afh = getelementptr i8, ptr %i.afa, i64 2
  %i.afi = getelementptr i8, ptr %i.afb, i64 3
  %i.afj = getelementptr i8, ptr %i.afc, i64 4
  %i.afk = getelementptr i8, ptr %i.afd, i64 5
  %i.afl = load i16, ptr %i.afe, align 2, !tbaa !40, !alias.scope !241
  %i.afm = load i16, ptr %i.aff, align 2, !tbaa !40, !alias.scope !241
  %i.afn = load i16, ptr %i.aey, align 2, !tbaa !40, !alias.scope !241
  %i.afo = load i16, ptr %i.afg, align 2, !tbaa !40, !alias.scope !241
  %i.afp = load i16, ptr %i.afh, align 2, !tbaa !40, !alias.scope !241
  %i.afq = load i16, ptr %i.afi, align 2, !tbaa !40, !alias.scope !241
  %i.afr = load i16, ptr %i.afj, align 2, !tbaa !40, !alias.scope !241
  %i.afs = load i16, ptr %i.afk, align 2, !tbaa !40, !alias.scope !241
  %i.aft = insertelement <8 x i16> poison, i16 %i.afl, i64 0
  %i.afu = insertelement <8 x i16> %i.aft, i16 %i.afm, i64 1
  %i.afv = insertelement <8 x i16> %i.afu, i16 %i.afn, i64 2
  %i.afw = insertelement <8 x i16> %i.afv, i16 %i.afo, i64 3
  %i.afx = insertelement <8 x i16> %i.afw, i16 %i.afp, i64 4
  %i.afy = insertelement <8 x i16> %i.afx, i16 %i.afq, i64 5
  %i.afz = insertelement <8 x i16> %i.afy, i16 %i.afr, i64 6
  %i.aga = insertelement <8 x i16> %i.afz, i16 %i.afs, i64 7
  %i.agb = shl nuw nsw i64 %index617, 1
  %i.agc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agb
  store <8 x i16> %i.aga, ptr %i.agc, align 16, !tbaa !40, !alias.scope !242, !noalias !241
  %index.next618 = add nuw i64 %index617, 8       ; 2 uses
  %i.agd = icmp eq i64 %index.next618, %n.vec615
  br i1 %i.agd, label %middle.block619, label %vector.body616, !llvm.loop !217

middle.block619:                                  ; preds = %vector.body616
  %cmp.n620 = icmp eq i64 %n.vec615, %wide.trip.count292
  br i1 %cmp.n620, label %check_intra_mode.exit49.us.us, label %.lr.ph171.us.us.preheader786

.lr.ph171.us.us.preheader786:                     ; preds = %vector.memcheck604, %.lr.ph171.us.us.preheader, %middle.block619
  %indvars.iv289.ph = phi i64 [ 0, %vector.memcheck604 ], [ 0, %.lr.ph171.us.us.preheader ], [ %n.vec615, %middle.block619 ]
  br label %.lr.ph171.us.us

.preheader97.us.us:                               ; preds = %bb.az
  %i.age = icmp sgt i32 %i.zf, 0
  br i1 %i.age, label %.lr.ph166.us.us.preheader, label %._crit_edge.us195.us

.lr.ph166.us.us.preheader:                        ; preds = %.preheader97.us.us
  %i.agf = zext nneg i32 %i.zf to i64             ; 6 uses
  %min.iters.check666 = icmp ult i32 %i.zf, 32
  br i1 %min.iters.check666, label %.lr.ph166.us.us.preheader790, label %vector.scevcheck649

vector.scevcheck649:                              ; preds = %.lr.ph166.us.us.preheader
  %ident.check650 = icmp ne i64 %i.zi, 1
  %i.agg = add nsw i64 %i.agf, -1                 ; 2 uses
  %i.agh = shl i32 8, %.pre307
  %i.agi = add i32 %i.agh, -2                     ; 2 uses
  %i.agj = trunc nsw i64 %i.agg to i32
  %mul.result652 = shl i32 %i.agj, 1
  %26 = sub i32 %i.agi, %mul.result652
  %27 = icmp sgt i32 %26, %i.agi
  %i.agk = icmp ugt i64 %i.agg, 4294967295
  %i.agl = or i1 %27, %i.agk
  %i.agm = or i1 %ident.check650, %i.agl
  br i1 %i.agm, label %.lr.ph166.us.us.preheader790, label %vector.memcheck654

vector.memcheck654:                               ; preds = %vector.scevcheck649
  %scevgep655 = getelementptr i8, ptr %i.zh, i64 -2
  %scevgep656 = getelementptr i8, ptr %i.zh, i64 -1
  %scevgep657 = getelementptr i8, ptr %scevgep656, i64 %i.agf
  %i.agn = shl i32 8, %.pre307
  %i.ago = add i32 %i.agn, -8
  %28 = sext i32 %i.ago to i64                    ; 2 uses
  %i.agp = shl nuw nsw i64 %i.agf, 1
  %i.agq = sub nsw i64 %28, %i.agp
  %scevgep659 = getelementptr i8, ptr %scevgep658, i64 %i.agq
  %scevgep661 = getelementptr i8, ptr %scevgep660, i64 %28
  %bound0662 = icmp ult ptr %scevgep655, %scevgep661
  %bound1663 = icmp ult ptr %scevgep659, %scevgep657
  %found.conflict664 = and i1 %bound0662, %bound1663
  br i1 %found.conflict664, label %.lr.ph166.us.us.preheader790, label %vector.ph667

vector.ph667:                                     ; preds = %vector.memcheck654
  %n.vec668 = and i64 %i.agf, 2147483640          ; 3 uses
  br label %vector.body669

vector.body669:                                   ; preds = %vector.body669, %vector.ph667
  %index670 = phi i64 [ 0, %vector.ph667 ], [ %index.next672, %vector.body669 ] ; 10 uses
  %i.agr = getelementptr inbounds i8, ptr %i.zh, i64 %index670
  %i.ags = getelementptr i8, ptr %i.zh, i64 %index670
  %i.agt = getelementptr i8, ptr %i.zh, i64 %index670
  %i.agu = getelementptr i8, ptr %i.zh, i64 %index670
  %i.agv = getelementptr i8, ptr %i.zh, i64 %index670
  %i.agw = getelementptr i8, ptr %i.zh, i64 %index670
  %i.agx = getelementptr i8, ptr %i.zh, i64 %index670
  %i.agy = getelementptr i8, ptr %i.zh, i64 %index670
  %i.agz = getelementptr inbounds i8, ptr %i.agr, i64 -2
  %i.aha = getelementptr i8, ptr %i.ags, i64 -1
  %i.ahb = getelementptr i8, ptr %i.agu, i64 1
  %i.ahc = getelementptr i8, ptr %i.agv, i64 2
  %i.ahd = getelementptr i8, ptr %i.agw, i64 3
  %i.ahe = getelementptr i8, ptr %i.agx, i64 4
  %i.ahf = getelementptr i8, ptr %i.agy, i64 5
  %i.ahg = load i16, ptr %i.agz, align 2, !tbaa !40, !alias.scope !243, !noalias !244
  %i.ahh = load i16, ptr %i.aha, align 2, !tbaa !40, !alias.scope !243, !noalias !244
  %i.ahi = load i16, ptr %i.agt, align 2, !tbaa !40, !alias.scope !243, !noalias !244
  %i.ahj = load i16, ptr %i.ahb, align 2, !tbaa !40, !alias.scope !243, !noalias !244
  %i.ahk = load i16, ptr %i.ahc, align 2, !tbaa !40, !alias.scope !243, !noalias !244
  %i.ahl = load i16, ptr %i.ahd, align 2, !tbaa !40, !alias.scope !243, !noalias !244
  %i.ahm = load i16, ptr %i.ahe, align 2, !tbaa !40, !alias.scope !243, !noalias !244
  %i.ahn = load i16, ptr %i.ahf, align 2, !tbaa !40, !alias.scope !243, !noalias !244
  %i.aho = insertelement <8 x i16> poison, i16 %i.ahg, i64 0
  %i.ahp = insertelement <8 x i16> %i.aho, i16 %i.ahh, i64 1
  %i.ahq = insertelement <8 x i16> %i.ahp, i16 %i.ahi, i64 2
  %i.ahr = insertelement <8 x i16> %i.ahq, i16 %i.ahj, i64 3
  %i.ahs = insertelement <8 x i16> %i.ahr, i16 %i.ahk, i64 4
  %i.aht = insertelement <8 x i16> %i.ahs, i16 %i.ahl, i64 5
  %i.ahu = insertelement <8 x i16> %i.aht, i16 %i.ahm, i64 6
  %i.ahv = insertelement <8 x i16> %i.ahu, i16 %i.ahn, i64 7
  %i.ahw = trunc nuw nsw i64 %index670 to i32
  %i.ahx = xor i32 %i.ahw, -1
  %i.ahy = add i32 %i.yw, %i.ahx
  %i.ahz = shl nsw i32 %i.ahy, 1
  %29 = sext i32 %i.ahz to i64
  %i.aia = getelementptr inbounds i8, ptr %i.b, i64 %29
  %i.aib = getelementptr inbounds i8, ptr %i.aia, i64 -14
  %reverse671 = shufflevector <8 x i16> %i.ahv, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse671, ptr %i.aib, align 2, !tbaa !40, !alias.scope !244
  %index.next672 = add nuw i64 %index670, 8       ; 2 uses
  %i.aic = icmp eq i64 %index.next672, %n.vec668
  br i1 %i.aic, label %middle.block673, label %vector.body669, !llvm.loop !221

middle.block673:                                  ; preds = %vector.body669
  %cmp.n674 = icmp eq i64 %n.vec668, %i.agf
  br i1 %cmp.n674, label %._crit_edge.us195.us, label %.lr.ph166.us.us.preheader790

.lr.ph166.us.us.preheader790:                     ; preds = %vector.memcheck654, %vector.scevcheck649, %.lr.ph166.us.us.preheader, %middle.block673
  %indvars.iv283.ph = phi i64 [ 0, %vector.memcheck654 ], [ 0, %vector.scevcheck649 ], [ 0, %.lr.ph166.us.us.preheader ], [ %n.vec668, %middle.block673 ]
  br label %.lr.ph166.us.us

.preheader98.us.us:                               ; preds = %bb.az
  %i.aid = icmp sgt i32 %i.yw, 0
  br i1 %i.aid, label %.lr.ph164.us.us.preheader.a, label %check_intra_mode.exit49.us.us

.lr.ph164.us.us.preheader.a:                      ; preds = %.preheader98.us.us
  %30 = zext nneg i32 %i.yw to i64                ; 3 uses
  %wide.trip.count281 = zext nneg i32 %i.yw to i64 ; 5 uses
  %min.iters.check687 = icmp ugt i32 %i.yw, 7
  %ident.check677.not = icmp eq i64 %i.zi, 1
  %or.cond783 = select i1 %min.iters.check687, i1 %ident.check677.not, i1 false
  br i1 %or.cond783, label %vector.memcheck678, label %.lr.ph164.us.us.preheader791

vector.memcheck678:                               ; preds = %.lr.ph164.us.us.preheader.a
  %31 = shl nuw nsw i64 %wide.trip.count281, 1
  %scevgep679 = getelementptr i8, ptr %i.b, i64 %31
  %scevgep680 = getelementptr i8, ptr %i.zh, i64 -2
  %scevgep681 = getelementptr i8, ptr %i.zh, i64 -1
  %scevgep682 = getelementptr i8, ptr %scevgep681, i64 %wide.trip.count281
  %bound0683 = icmp ult ptr %i.b, %scevgep682
  %bound1684 = icmp ult ptr %scevgep680, %scevgep679
  %found.conflict685 = and i1 %bound0683, %bound1684
  br i1 %found.conflict685, label %.lr.ph164.us.us.preheader791, label %vector.ph688

vector.ph688:                                     ; preds = %vector.memcheck678
  %n.vec689 = and i64 %wide.trip.count281, 2147483640 ; 3 uses
  br label %vector.body690

vector.body690:                                   ; preds = %vector.body690, %vector.ph688
  %index691 = phi i64 [ 0, %vector.ph688 ], [ %index.next693, %vector.body690 ] ; 10 uses
  %i.aie = getelementptr inbounds i8, ptr %i.zh, i64 %index691
  %i.aif = getelementptr i8, ptr %i.zh, i64 %index691
  %i.aig = getelementptr i8, ptr %i.zh, i64 %index691
  %i.aih = getelementptr i8, ptr %i.zh, i64 %index691
  %i.aii = getelementptr i8, ptr %i.zh, i64 %index691
  %i.aij = getelementptr i8, ptr %i.zh, i64 %index691
  %i.aik = getelementptr i8, ptr %i.zh, i64 %index691
  %i.ail = getelementptr i8, ptr %i.zh, i64 %index691
  %i.aim = getelementptr inbounds i8, ptr %i.aie, i64 -2
  %i.ain = getelementptr i8, ptr %i.aif, i64 -1
  %i.aio = getelementptr i8, ptr %i.aih, i64 1
  %i.aip = getelementptr i8, ptr %i.aii, i64 2
  %i.aiq = getelementptr i8, ptr %i.aij, i64 3
  %i.air = getelementptr i8, ptr %i.aik, i64 4
  %i.ais = getelementptr i8, ptr %i.ail, i64 5
  %i.ait = load i16, ptr %i.aim, align 2, !tbaa !40, !alias.scope !245
  %i.aiu = load i16, ptr %i.ain, align 2, !tbaa !40, !alias.scope !245
  %i.aiv = load i16, ptr %i.aig, align 2, !tbaa !40, !alias.scope !245
  %i.aiw = load i16, ptr %i.aio, align 2, !tbaa !40, !alias.scope !245
  %i.aix = load i16, ptr %i.aip, align 2, !tbaa !40, !alias.scope !245
  %i.aiy = load i16, ptr %i.aiq, align 2, !tbaa !40, !alias.scope !245
  %i.aiz = load i16, ptr %i.air, align 2, !tbaa !40, !alias.scope !245
  %i.aja = load i16, ptr %i.ais, align 2, !tbaa !40, !alias.scope !245
  %i.ajb = insertelement <8 x i16> poison, i16 %i.ait, i64 0
  %i.ajc = insertelement <8 x i16> %i.ajb, i16 %i.aiu, i64 1
  %i.ajd = insertelement <8 x i16> %i.ajc, i16 %i.aiv, i64 2
  %i.aje = insertelement <8 x i16> %i.ajd, i16 %i.aiw, i64 3
  %i.ajf = insertelement <8 x i16> %i.aje, i16 %i.aix, i64 4
  %i.ajg = insertelement <8 x i16> %i.ajf, i16 %i.aiy, i64 5
  %i.ajh = insertelement <8 x i16> %i.ajg, i16 %i.aiz, i64 6
  %i.aji = insertelement <8 x i16> %i.ajh, i16 %i.aja, i64 7
  %32 = xor i64 %index691, -1
  %33 = add nsw i64 %30, %32
  %34 = shl nsw i64 %33, 1
  %i.ajj = getelementptr inbounds i8, ptr %i.b, i64 %34
  %i.ajk = getelementptr inbounds i8, ptr %i.ajj, i64 -14
  %reverse692 = shufflevector <8 x i16> %i.aji, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse692, ptr %i.ajk, align 8, !tbaa !40, !alias.scope !246, !noalias !245
  %index.next693 = add nuw i64 %index691, 8       ; 2 uses
  %i.ajl = icmp eq i64 %index.next693, %n.vec689
  br i1 %i.ajl, label %middle.block694, label %vector.body690, !llvm.loop !225

middle.block694:                                  ; preds = %vector.body690
  %cmp.n695 = icmp eq i64 %n.vec689, %wide.trip.count281
  br i1 %cmp.n695, label %check_intra_mode.exit49.us.us, label %.lr.ph164.us.us.preheader791

.lr.ph164.us.us.preheader791:                     ; preds = %vector.memcheck678, %.lr.ph164.us.us.preheader.a, %middle.block694
  %indvars.iv278.ph = phi i64 [ 0, %vector.memcheck678 ], [ 0, %.lr.ph164.us.us.preheader.a ], [ %n.vec689, %middle.block694 ]
  br label %.lr.ph164.us.us

.preheader100.us.us:                              ; preds = %bb.ax
  %i.ajm = icmp sgt i32 %i.yw, 0
  br i1 %i.ajm, label %iter.check710, label %check_intra_mode.exit49.us.us

.critedge.i24.preheader.us.us:                    ; preds = %bb.ah
  %i.ajn = icmp sgt i32 %i.wd, 0
  br i1 %i.ajn, label %iter.check764, label %.loopexit102.us.us

iter.check764:                                    ; preds = %.critedge.i24.preheader.us.us
  %i.ajo = add nsw i32 %i.vt, -8
  %i.ajp = shl i32 128, %i.ajo
  %i.ajq = trunc i32 %i.ajp to i16
  %i.ajr = add i16 %i.ajq, -1                     ; 3 uses
  %wide.trip.count264 = zext nneg i32 %i.wd to i64 ; 5 uses
  %min.iters.check753 = icmp ult i32 %i.wd, 16
  br i1 %min.iters.check753, label %vec.epilog.ph768, label %vector.ph754

vector.ph754:                                     ; preds = %iter.check764
  %i.ajs = and i64 %wide.trip.count264, 12
  %n.vec755 = and i64 %wide.trip.count264, 2147483632 ; 4 uses
  %broadcast.splatinsert756 = insertelement <8 x i16> poison, i16 %i.ajr, i64 0
  %broadcast.splat757 = shufflevector <8 x i16> %broadcast.splatinsert756, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body758

vector.body758:                                   ; preds = %vector.body758, %vector.ph754
  %index759 = phi i64 [ 0, %vector.ph754 ], [ %index.next760, %vector.body758 ] ; 2 uses
  %i.ajt = shl nuw nsw i64 %index759, 1
  %i.aju = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.ajt ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 16
  store <8 x i16> %broadcast.splat757, ptr %i.aju, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat757, ptr %i.ajv, align 16, !tbaa !40
  %index.next760 = add nuw i64 %index759, 16      ; 2 uses
  %i.ajw = icmp eq i64 %index.next760, %n.vec755
  br i1 %i.ajw, label %middle.block761, label %vector.body758, !llvm.loop !226

middle.block761:                                  ; preds = %vector.body758
  %cmp.n762 = icmp eq i64 %n.vec755, %wide.trip.count264
  br i1 %cmp.n762, label %.loopexit102.us.us, label %vec.epilog.iter.check766

vec.epilog.iter.check766:                         ; preds = %middle.block761
  %min.epilog.iters.check767 = icmp eq i64 %i.ajs, 0
  br i1 %min.epilog.iters.check767, label %.critedge.i24.us.us, label %vec.epilog.ph768, !prof !230

vec.epilog.ph768:                                 ; preds = %iter.check764, %vec.epilog.iter.check766
  %vec.epilog.resume.val763 = phi i64 [ %n.vec755, %vec.epilog.iter.check766 ], [ 0, %iter.check764 ]
  %broadcast.splatinsert770 = insertelement <4 x i16> poison, i16 %i.ajr, i64 0
  %broadcast.splat771 = shufflevector <4 x i16> %broadcast.splatinsert770, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body772

vec.epilog.vector.body772:                        ; preds = %vec.epilog.vector.body772, %vec.epilog.ph768
  %index773 = phi i64 [ %vec.epilog.resume.val763, %vec.epilog.ph768 ], [ %index.next774, %vec.epilog.vector.body772 ] ; 2 uses
  %i.ajx = shl nuw nsw i64 %index773, 1
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.ajx
  store <4 x i16> %broadcast.splat771, ptr %i.ajy, align 8, !tbaa !40
  %index.next774 = add nuw i64 %index773, 4       ; 2 uses
  %i.ajz = icmp eq i64 %index.next774, %wide.trip.count264
  br i1 %i.ajz, label %.loopexit102.us.us, label %vec.epilog.vector.body772, !llvm.loop !227

iter.check710:                                    ; preds = %.preheader100.us.us
  %i.aka = add nsw i32 %i.vt, -8
  %i.akb = shl i32 128, %i.aka
  %i.akc = trunc i32 %i.akb to i16
  %i.akd = or disjoint i16 %i.akc, 1              ; 3 uses
  %wide.trip.count276 = zext nneg i32 %i.yw to i64 ; 5 uses
  %min.iters.check699.a = icmp ult i32 %i.yw, 16
  br i1 %min.iters.check699.a, label %vec.epilog.ph714, label %vector.ph700

vector.ph700:                                     ; preds = %iter.check710
  %i.ake = and i64 %wide.trip.count276, 12
  %n.vec701 = and i64 %wide.trip.count276, 2147483632 ; 4 uses
  %broadcast.splatinsert702 = insertelement <8 x i16> poison, i16 %i.akd, i64 0
  %broadcast.splat703 = shufflevector <8 x i16> %broadcast.splatinsert702, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body704

vector.body704:                                   ; preds = %vector.body704, %vector.ph700
  %index705 = phi i64 [ 0, %vector.ph700 ], [ %index.next706, %vector.body704 ] ; 2 uses
  %i.akf = shl nuw nsw i64 %index705, 1
  %i.akg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akf ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 16
  store <8 x i16> %broadcast.splat703, ptr %i.akg, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat703, ptr %i.akh, align 16, !tbaa !40
  %index.next706 = add nuw i64 %index705, 16      ; 2 uses
  %i.aki = icmp eq i64 %index.next706, %n.vec701
  br i1 %i.aki, label %middle.block707, label %vector.body704, !llvm.loop !228

middle.block707:                                  ; preds = %vector.body704
  %cmp.n708 = icmp eq i64 %n.vec701, %wide.trip.count276
  br i1 %cmp.n708, label %check_intra_mode.exit49.us.us, label %vec.epilog.iter.check712

vec.epilog.iter.check712:                         ; preds = %middle.block707
  %min.epilog.iters.check713 = icmp eq i64 %i.ake, 0
  br i1 %min.epilog.iters.check713, label %vec.epilog.scalar.ph711, label %vec.epilog.ph714, !prof !230

vec.epilog.ph714:                                 ; preds = %iter.check710, %vec.epilog.iter.check712
  %vec.epilog.resume.val709 = phi i64 [ %n.vec701, %vec.epilog.iter.check712 ], [ 0, %iter.check710 ]
  %broadcast.splatinsert716 = insertelement <4 x i16> poison, i16 %i.akd, i64 0
  %broadcast.splat717 = shufflevector <4 x i16> %broadcast.splatinsert716, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body718

vec.epilog.vector.body718:                        ; preds = %vec.epilog.vector.body718, %vec.epilog.ph714
  %index719 = phi i64 [ %vec.epilog.resume.val709, %vec.epilog.ph714 ], [ %index.next720, %vec.epilog.vector.body718 ] ; 2 uses
  %i.akj = shl nuw nsw i64 %index719, 1
  %i.akk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.akj
  store <4 x i16> %broadcast.splat717, ptr %i.akk, align 8, !tbaa !40
  %index.next720 = add nuw i64 %index719, 4       ; 2 uses
  %i.akl = icmp eq i64 %index.next720, %wide.trip.count276
  br i1 %i.akl, label %check_intra_mode.exit49.us.us, label %vec.epilog.vector.body718, !llvm.loop !229

._crit_edge189.us.us:                             ; preds = %bb.bc
  %i.akm = load ptr, ptr %i.as, align 8, !tbaa !76 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 68
  %i.ako = load i32, ptr %i.akn, align 4, !tbaa !77
  %i.akp = mul nsw i32 %i.ako, %i.ty
  %i.akq = sext i32 %i.akp to i64
  %i.akr = getelementptr inbounds i8, ptr %.1.i193.us.us, i64 %i.akq
  %i.aks = load i64, ptr %i.tj, align 8, !tbaa !91
  %i.akt = mul nsw i64 %i.aks, %i.tz
  %i.aku = getelementptr inbounds i8, ptr %.1180.i192.us.us, i64 %i.akt
  %i.akv = add nsw i32 %.1183.i191.us.us, %i.ap   ; 2 uses
  %i.akw = icmp slt i32 %i.akv, %i.te
  br i1 %i.akw, label %.preheader104.us.us, label %..loopexit105_crit_edge.split.us.us, !llvm.loop !4

..loopexit105_crit_edge.split.us.us:              ; preds = %._crit_edge189.us.us
  br i1 %i.uf, label %.preheader104.lr.ph.us, label %intra_recon.exit.split, !llvm.loop !5

intra_recon.exit.split:                           ; preds = %..loopexit105_crit_edge.split.us.us, %._crit_edge156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_vp9_inter_recon_8bpp(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !34    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 16, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 19172 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !40
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.k
  %i.m = load i16, ptr %i.l, align 4, !tbaa !94   ; 3 uses
  %i.n = icmp eq i16 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.p = load i8, ptr %i.o, align 2, !tbaa !95
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.r = load i8, ptr %i.q, align 2, !tbaa !40
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.s
  %i.u = load i16, ptr %i.t, align 4, !tbaa !94   ; 2 uses
  %i.v = icmp eq i16 %i.u, -1
  br i1 %i.v, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1296
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 77136 ; 2 uses
  %i.z = load i32, ptr %i.y, align 16, !tbaa !97
  %.not140.i = icmp eq i32 %i.z, 0
  br i1 %.not140.i, label %bb.e, label %inter_recon.exit

bb.e:                                             ; preds = %bb.d
  store i32 -1094995529, ptr %i.y, align 16, !tbaa !97
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #5
  br label %inter_recon.exit

bb.f:                                             ; preds = %bb.b
  %.not134.i = icmp eq i16 %i.m, 0
  br i1 %.not134.i, label %bb.h, label %bb.g

.thread:                                          ; preds = %bb.c
  %i.aa = or i16 %i.m, %i.u
  %or.cond = icmp eq i16 %i.aa, 0
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  tail call fastcc void @inter_pred_scaled_8bpp(ptr noundef nonnull %0)
  br label %bb.i

bb.h:                                             ; preds = %.thread, %bb.f
  tail call fastcc void @inter_pred_8bpp(ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !78
end_hunk_0
