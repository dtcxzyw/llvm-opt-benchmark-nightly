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
  %i.b = alloca [64 x i8], align 16               ; 42 uses
  %i.c = ptrtoaddr ptr %i.b to i64
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
  %.pre207 = and i32 %i.h, 7
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
  br label %.preheader93.us

.preheader93.us:                                  ; preds = %.preheader93.us.preheader, %._crit_edge113.us
  %indvars.iv176 = phi i64 [ 0, %.preheader93.us.preheader ], [ %indvars.iv.next177, %._crit_edge113.us ] ; 5 uses
  %.0178.i117.us = phi ptr [ %i.br, %.preheader93.us.preheader ], [ %i.mu, %._crit_edge113.us ] ; 2 uses
  %.0179.i116.us = phi ptr [ %i.as, %.preheader93.us.preheader ], [ %i.mx, %._crit_edge113.us ] ; 2 uses
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
  %.0176.i109.us = phi ptr [ %.0178.i117.us, %.preheader93.us ], [ %i.jr, %bb.af ] ; 3 uses
  %.0177.i106.us = phi ptr [ %.0179.i116.us, %.preheader93.us ], [ %i.jq, %bb.af ] ; 5 uses
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
  %.not196.i.us237 = icmp eq i8 %i.ct, 0
  br i1 %.not196.i.us237, label %.thread238, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cu = icmp ugt i32 %.pre.pre, 1
  br i1 %i.cu, label %bb.e, label %.thread238

.thread238:                                       ; preds = %.thread, %bb.d
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

bb.f:                                             ; preds = %.thread, %bb.e, %.thread238, %bb.c
  %i.df = phi i32 [ %i.cn, %bb.c ], [ %i.cn, %bb.e ], [ %i.cw, %.thread238 ], [ %i.cs, %.thread ]
  %i.dg = phi i64 [ %i.cl, %bb.c ], [ %i.cl, %bb.e ], [ %i.cv, %.thread238 ], [ %i.cq, %.thread ]
  %i.dh = phi i32 [ 0, %bb.c ], [ %i.de, %bb.e ], [ %i.da, %.thread238 ], [ 0, %.thread ] ; 2 uses
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
  %i.en = and i8 %i.ea, -5
  %i.eo = icmp eq i8 %i.en, 3                     ; 3 uses
end_hunk_0
begin_hunk_1_@ff_vp9_intra_recon_8bpp:bb.a

vector.ph287:                                     ; preds = %vector.main.loop.iter.check285
  %i.lc = and i64 %i.kt, 24
  %n.vec288 = and i64 %i.kt, 2147483616           ; 4 uses
  br label %vector.body289

vector.body289:                                   ; preds = %vector.ph287, %vector.body289
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next294, %vector.body289 ] ; 3 uses
  %i.ld = getelementptr inbounds i8, ptr %i.gn, i64 %index290 ; 2 uses
  %i.le = getelementptr inbounds i8, ptr %i.ld, i64 -1
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 15
  %wide.load291 = load <16 x i8>, ptr %i.le, align 1, !tbaa !40
  %wide.load292 = load <16 x i8>, ptr %i.lf, align 1, !tbaa !40
  %i.lg = trunc nuw nsw i64 %index290 to i32
  %i.lh = xor i32 %i.lg, -1
  %i.li = add i32 %i.gg, %i.lh
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds i8, ptr %i.b, i64 %i.lj ; 2 uses
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 -15
  %i.lm = getelementptr inbounds i8, ptr %i.lk, i64 -31
  %reverse = shufflevector <16 x i8> %wide.load291, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse293 = shufflevector <16 x i8> %wide.load292, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.ll, align 1, !tbaa !40
  store <16 x i8> %reverse293, ptr %i.lm, align 1, !tbaa !40
  %index.next294 = add nuw i64 %index290, 32      ; 2 uses
  %i.ln = icmp eq i64 %index.next294, %n.vec288
  br i1 %i.ln, label %middle.block295, label %vector.body289, !llvm.loop !122

middle.block295:                                  ; preds = %vector.body289
  %cmp.n296 = icmp eq i64 %n.vec288, %i.kt
  br i1 %cmp.n296, label %._crit_edge.us, label %vec.epilog.iter.check298

vec.epilog.iter.check298:                         ; preds = %middle.block295
  %min.epilog.iters.check300 = icmp eq i64 %i.lc, 0
  br i1 %min.epilog.iters.check300, label %.lr.ph96.us.preheader, label %vec.epilog.ph301, !prof !145

vec.epilog.ph301:                                 ; preds = %vector.main.loop.iter.check285, %vec.epilog.iter.check298
  %vec.epilog.resume.val302 = phi i64 [ %n.vec288, %vec.epilog.iter.check298 ], [ 0, %vector.main.loop.iter.check285 ]
  %n.vec303 = and i64 %i.kt, 2147483640           ; 3 uses
  br label %vec.epilog.vector.body304

vec.epilog.vector.body304:                        ; preds = %vec.epilog.vector.body304, %vec.epilog.ph301
  %index305 = phi i64 [ %vec.epilog.resume.val302, %vec.epilog.ph301 ], [ %index.next308, %vec.epilog.vector.body304 ] ; 3 uses
  %i.lo = getelementptr inbounds i8, ptr %i.gn, i64 %index305
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 -1
  %wide.load306 = load <8 x i8>, ptr %i.lp, align 1, !tbaa !40
  %i.lq = trunc nuw nsw i64 %index305 to i32
  %i.lr = xor i32 %i.lq, -1
  %i.ls = add i32 %i.gg, %i.lr
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds i8, ptr %i.b, i64 %i.lt
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 -7
  %reverse307 = shufflevector <8 x i8> %wide.load306, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse307, ptr %i.lv, align 1, !tbaa !40
  %index.next308 = add nuw i64 %index305, 8       ; 2 uses
  %i.lw = icmp eq i64 %index.next308, %n.vec303
  br i1 %i.lw, label %vec.epilog.middle.block309, label %vec.epilog.vector.body304, !llvm.loop !123

vec.epilog.middle.block309:                       ; preds = %vec.epilog.vector.body304
  %cmp.n310 = icmp eq i64 %n.vec303, %i.kt
  br i1 %cmp.n310, label %._crit_edge.us, label %.lr.ph96.us.preheader

.lr.ph96.us.preheader:                            ; preds = %iter.check297, %vector.scevcheck282, %vec.epilog.iter.check298, %vec.epilog.middle.block309
  %indvars.iv158.ph = phi i64 [ 0, %iter.check297 ], [ 0, %vector.scevcheck282 ], [ %n.vec288, %vec.epilog.iter.check298 ], [ %n.vec303, %vec.epilog.middle.block309 ]
  br label %.lr.ph96.us

.preheader91.us:                                  ; preds = %bb.ac
  %i.lx = icmp sgt i32 %i.gg, 0
  br i1 %i.lx, label %iter.check328, label %check_intra_mode.exit.us

iter.check328:                                    ; preds = %.preheader91.us
  %i.ly = zext nneg i32 %i.gg to i64
  %wide.trip.count = zext nneg i32 %i.gg to i64   ; 6 uses
  %i.lz = getelementptr i8, ptr %i.b, i64 %i.ly   ; 6 uses
  %min.iters.check314 = icmp ugt i32 %i.gg, 7
  %ident.check313.not = icmp eq i64 %i.go, 1
  %or.cond480 = select i1 %min.iters.check314, i1 %ident.check313.not, i1 false
  br i1 %or.cond480, label %vector.main.loop.iter.check315, label %.lr.ph.us.preheader

vector.main.loop.iter.check315:                   ; preds = %iter.check328
  %min.iters.check316 = icmp ult i32 %i.gg, 32
  br i1 %min.iters.check316, label %vec.epilog.ph332, label %vector.ph317

vector.ph317:                                     ; preds = %vector.main.loop.iter.check315
  %i.ma = and i64 %wide.trip.count, 24
  %n.vec318 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  br label %vector.body319

vector.body319:                                   ; preds = %vector.ph317, %vector.body319
  %index320 = phi i64 [ 0, %vector.ph317 ], [ %index.next325, %vector.body319 ] ; 3 uses
  %i.mb = getelementptr inbounds i8, ptr %i.gn, i64 %index320 ; 2 uses
  %i.mc = getelementptr inbounds i8, ptr %i.mb, i64 -1
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 15
  %wide.load321 = load <16 x i8>, ptr %i.mc, align 1, !tbaa !40
  %wide.load322 = load <16 x i8>, ptr %i.md, align 1, !tbaa !40
  %i.me = xor i64 %index320, -1
  %i.mf = getelementptr i8, ptr %i.lz, i64 %i.me  ; 2 uses
  %i.mg = getelementptr i8, ptr %i.mf, i64 -15
  %i.mh = getelementptr i8, ptr %i.mf, i64 -31
  %reverse323 = shufflevector <16 x i8> %wide.load321, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse324 = shufflevector <16 x i8> %wide.load322, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse323, ptr %i.mg, align 4, !tbaa !40
  store <16 x i8> %reverse324, ptr %i.mh, align 4, !tbaa !40
  %index.next325 = add nuw i64 %index320, 32      ; 2 uses
  %i.mi = icmp eq i64 %index.next325, %n.vec318
  br i1 %i.mi, label %middle.block326, label %vector.body319, !llvm.loop !124

middle.block326:                                  ; preds = %vector.body319
  %cmp.n327 = icmp eq i64 %n.vec318, %wide.trip.count
  br i1 %cmp.n327, label %check_intra_mode.exit.us, label %vec.epilog.iter.check329

vec.epilog.iter.check329:                         ; preds = %middle.block326
  %min.epilog.iters.check331 = icmp eq i64 %i.ma, 0
  br i1 %min.epilog.iters.check331, label %.lr.ph.us.preheader, label %vec.epilog.ph332, !prof !145

vec.epilog.ph332:                                 ; preds = %vector.main.loop.iter.check315, %vec.epilog.iter.check329
  %vec.epilog.resume.val333 = phi i64 [ %n.vec318, %vec.epilog.iter.check329 ], [ 0, %vector.main.loop.iter.check315 ]
  %n.vec334 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body335

vec.epilog.vector.body335:                        ; preds = %vec.epilog.vector.body335, %vec.epilog.ph332
  %index336 = phi i64 [ %vec.epilog.resume.val333, %vec.epilog.ph332 ], [ %index.next339, %vec.epilog.vector.body335 ] ; 3 uses
  %i.mj = getelementptr inbounds i8, ptr %i.gn, i64 %index336
  %i.mk = getelementptr inbounds i8, ptr %i.mj, i64 -1
  %wide.load337 = load <8 x i8>, ptr %i.mk, align 1, !tbaa !40
  %i.ml = xor i64 %index336, -1
  %i.mm = getelementptr i8, ptr %i.lz, i64 %i.ml
  %i.mn = getelementptr i8, ptr %i.mm, i64 -7
  %reverse338 = shufflevector <8 x i8> %wide.load337, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse338, ptr %i.mn, align 4, !tbaa !40
  %index.next339 = add nuw i64 %index336, 8       ; 2 uses
  %i.mo = icmp eq i64 %index.next339, %n.vec334
  br i1 %i.mo, label %vec.epilog.middle.block340, label %vec.epilog.vector.body335, !llvm.loop !125

vec.epilog.middle.block340:                       ; preds = %vec.epilog.vector.body335
  %cmp.n341 = icmp eq i64 %n.vec334, %wide.trip.count
  br i1 %cmp.n341, label %check_intra_mode.exit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %iter.check328, %vec.epilog.iter.check329, %vec.epilog.middle.block340
  %indvars.iv.ph = phi i64 [ 0, %iter.check328 ], [ %n.vec318, %vec.epilog.iter.check329 ], [ %n.vec334, %vec.epilog.middle.block340 ]
  br label %.lr.ph.us

._crit_edge113.us:                                ; preds = %bb.af
  %i.mp = load ptr, ptr %i.at, align 8, !tbaa !76 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 64
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !77
  %i.ms = mul nsw i32 %i.mr, %i.bn
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds i8, ptr %.0178.i117.us, i64 %i.mt
  %i.mv = load i64, ptr %i.bb, align 16, !tbaa !80
  %i.mw = mul nsw i64 %i.mv, %i.bo
  %i.mx = getelementptr inbounds i8, ptr %.0179.i116.us, i64 %i.mw
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, %i.bs ; 2 uses
  %i.my = icmp slt i64 %indvars.iv.next177, %i.bx
  br i1 %i.my, label %.preheader93.us, label %._crit_edge118.loopexit155, !llvm.loop !2

._crit_edge118.loopexit155:                       ; preds = %._crit_edge113.us
  %.pre202 = load i32, ptr %i.an, align 4, !tbaa !69
  br label %._crit_edge118

._crit_edge118:                                   ; preds = %.preheader93.lr.ph, %.._crit_edge118_crit_edge, %._crit_edge118.loopexit155
  %.pre-phi208 = phi i32 [ %.pre207, %.._crit_edge118_crit_edge ], [ %i.be, %._crit_edge118.loopexit155 ], [ %i.be, %.preheader93.lr.ph ]
  %i.mz = phi ptr [ %i.au, %.._crit_edge118_crit_edge ], [ %i.mp, %._crit_edge118.loopexit155 ], [ %i.au, %.preheader93.lr.ph ]
  %i.na = phi i32 [ %i.ao, %.._crit_edge118_crit_edge ], [ %.pre202, %._crit_edge118.loopexit155 ], [ %i.ao, %.preheader93.lr.ph ]
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 3924 ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 4, !tbaa !88
  %i.nd = zext i8 %i.nc to i32                    ; 2 uses
  %i.ne = lshr i32 %i.q, %i.nd
  %i.nf = lshr i32 %..i, %i.nd                    ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 3925 ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !89
  %i.ni = zext nneg i8 %i.nh to i32
  %i.nj = lshr i32 %i.ai, %i.ni                   ; 2 uses
  %.not150 = icmp eq i32 %i.nj, 0
  %i.nk = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 8 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 77120
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.np = icmp sgt i32 %i.h, 0
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.nr = add nsw i32 %i.ne, -1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.a, i64 35
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 1376
  %i.nw = getelementptr inbounds nuw i8, ptr %i.d, i64 1856
  %i.nx = sext i32 %i.ap to i64
  %i.ny = getelementptr inbounds [32 x i8], ptr %i.nw, i64 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 77072
  %i.oa = shl i32 4, %i.ao                        ; 2 uses
  %i.ob = sext i32 %i.oa to i64                   ; 3 uses
  %.not151 = icmp eq i32 %i.nf, 0
  %or.cond242 = select i1 %.not150, i1 true, i1 %.not151
  br i1 %or.cond242, label %intra_recon.exit.split, label %.preheader87.lr.ph.us.preheader

.preheader87.lr.ph.us.preheader:                  ; preds = %._crit_edge118
  %i.oc = shl i32 %i.na, 1
  %i.od = shl nuw i32 1, %i.oc
  %i.oe = zext nneg i32 %i.od to i64
  %3 = or disjoint i64 %i.c, 1                    ; 2 uses
  br label %.preheader87.lr.ph.us

.preheader87.lr.ph.us:                            ; preds = %.preheader87.lr.ph.us.preheader, %..loopexit_crit_edge.split.us.us
  %i.of = phi ptr [ %i.mz, %.preheader87.lr.ph.us.preheader ], [ %i.zj, %..loopexit_crit_edge.split.us.us ]
  %i.og = phi i1 [ true, %.preheader87.lr.ph.us.preheader ], [ false, %..loopexit_crit_edge.split.us.us ]
  %indvars.iv198 = phi i64 [ 0, %.preheader87.lr.ph.us.preheader ], [ 1, %..loopexit_crit_edge.split.us.us ] ; 3 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 3 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next199
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !70
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %indvars.iv.next199
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !70
  %i.ol = getelementptr inbounds i8, ptr %i.ok, i64 %2
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv198
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv198
  br label %.preheader87.us.us

.preheader87.us.us:                               ; preds = %._crit_edge138.us.us, %.preheader87.lr.ph.us
  %.1.i142.us.us = phi ptr [ %i.ol, %.preheader87.lr.ph.us ], [ %i.zo, %._crit_edge138.us.us ] ; 2 uses
  %.1180.i141.us.us = phi ptr [ %i.oi, %.preheader87.lr.ph.us ], [ %i.zr, %._crit_edge138.us.us ] ; 2 uses
  %.1183.i140.us.us = phi i32 [ 0, %.preheader87.lr.ph.us ], [ %i.zs, %._crit_edge138.us.us ] ; 5 uses
  %.2.i139.us.us = phi i64 [ 0, %.preheader87.lr.ph.us ], [ %indvars.iv.next196, %._crit_edge138.us.us ]
  %i.oo = icmp sgt i32 %.1183.i140.us.us, 0
  %i.op = or i1 %i.np, %i.oo                      ; 5 uses
  %i.oq = zext i1 %i.op to i64
  %i.or = or i32 %.1183.i140.us.us, %.pre-phi208
  %or.cond3.not.i40.us.us = icmp eq i32 %i.or, 0
  %i.os = icmp eq i32 %.1183.i140.us.us, 0        ; 2 uses
  %i.ot = select i1 %i.op, i32 1, i32 255
  br label %bb.ag

bb.ag:                                            ; preds = %bb.bk, %.preheader87.us.us
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %bb.bk ], [ %.2.i139.us.us, %.preheader87.us.us ] ; 3 uses
  %.0.i134.us.us = phi ptr [ %i.zh, %bb.bk ], [ %.1.i142.us.us, %.preheader87.us.us ] ; 3 uses
  %.0175.i131.us.us = phi ptr [ %i.zg, %bb.bk ], [ %.1180.i141.us.us, %.preheader87.us.us ] ; 5 uses
  %.1185.i128.us.us = phi i32 [ %i.zf, %bb.bk ], [ 0, %.preheader87.us.us ] ; 7 uses
  %i.ou = load i8, ptr %i.nk, align 1, !tbaa !90
  %i.ov = load i8, ptr %i.nm, align 2, !tbaa !78
  %.not.i.us.us = icmp eq i8 %i.ov, 0
  %.pre203 = load i32, ptr %i.an, align 4, !tbaa !69 ; 6 uses
  br i1 %.not.i.us.us, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ow = icmp ugt i32 %.pre203, 1
  %i.ox = load ptr, ptr %i.om, align 8, !tbaa !70
  %i.oy = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv195 ; 2 uses
  br i1 %i.ow, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !40
  %i.pa = zext i8 %i.oz to i32
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.pb = load i16, ptr %i.oy, align 2, !tbaa !40
  %i.pc = zext i16 %i.pb to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.pd = phi i32 [ 0, %bb.ag ], [ %i.pc, %bb.aj ], [ %i.pa, %bb.ai ] ; 2 uses
  %i.pe = load ptr, ptr %i.at, align 8, !tbaa !76
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 68
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !77
  %i.ph = sext i32 %i.pg to i64                   ; 2 uses
  %i.pi = load i64, ptr %i.no, align 8, !tbaa !91 ; 3 uses
  %i.pj = load i8, ptr %i.nb, align 4, !tbaa !88  ; 2 uses
  %i.pk = zext nneg i8 %i.pj to i32
  %i.pl = load i8, ptr %i.ng, align 1, !tbaa !89
  %i.pm = load ptr, ptr %0, align 16, !tbaa !34   ; 4 uses
  %i.pn = load i32, ptr %i.nq, align 16, !tbaa !81
  %i.po = icmp ugt i32 %i.j, %i.pn
  %i.pp = icmp sgt i32 %.1185.i128.us.us, 0
  %i.pq = or i1 %i.pp, %i.po                      ; 5 uses
  %i.pr = icmp slt i32 %.1185.i128.us.us, %i.nr   ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pm, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !82
  %i.pu = zext i8 %i.pt to i32                    ; 3 uses
  %i.pv = zext i8 %i.ou to i64
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr @check_intra_mode.mode_conv, i64 %i.pv
  %i.px = zext i1 %i.pq to i64
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %i.pw, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.oq
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !40  ; 3 uses
  %i.qb = zext i8 %i.qa to i64                    ; 2 uses
  %i.qc = shl nuw i64 1, %i.qb                    ; 4 uses
  %i.qd = and i64 %i.qc, 29954
  %.not.not.i5.us.us = icmp eq i64 %i.qd, 0
  br i1 %.not.not.i5.us.us, label %bb.al, label %bb.bd

bb.al:                                            ; preds = %bb.ak
  %i.qe = shl i32 4, %.pre203                     ; 7 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pm, i64 3964
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !66
  %i.qh = sub i32 %i.qg, %i.j
  %.not.i14.us.us = icmp eq i8 %i.pj, 0
  %i.qi = zext i1 %.not.i14.us.us to i32
  %i.qj = shl i32 %i.qh, %i.qi
  %i.qk = sub i32 %i.qj, %.1185.i128.us.us
  %i.ql = shl i32 %i.qk, 2                        ; 6 uses
  %i.qm = icmp eq i32 %.pre203, 0                 ; 2 uses
  %i.qn = and i8 %i.qa, -5
  %i.qo = icmp eq i8 %i.qn, 3                     ; 3 uses
  %or.cond.i15.us.us = select i1 %i.qo, i1 %i.pr, i1 false
  %spec.select.i16.us.us = select i1 %or.cond.i15.us.us, i32 4, i32 0 ; 2 uses
  br i1 %i.op, label %bb.am, label %.critedge.i20.us.us

.critedge.i20.us.us:                              ; preds = %bb.al
  %i.qp = add nsw i32 %i.pu, -8
  %i.qq = shl i32 128, %i.qp
  %i.qr = trunc i32 %i.qq to i8
  %i.qs = add i8 %i.qr, -1
  %i.qt = sext i32 %i.qe to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.nl, i8 %i.qs, i64 %i.qt, i1 false)
  %.pre = and i64 %i.qc, 2189
  br label %bb.av

bb.am:                                            ; preds = %bb.al
  br i1 %or.cond3.not.i40.us.us, label %.thread71.us.us, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qu = sub nsw i64 0, %i.pi
  %i.qv = getelementptr inbounds i8, ptr %.0175.i131.us.us, i64 %i.qu ; 2 uses
  %i.qw = sub nsw i64 0, %i.ph
  %i.qx = getelementptr inbounds i8, ptr %.0.i134.us.us, i64 %i.qw ; 2 uses
  %i.qy = select i1 %i.os, ptr %i.qx, ptr %i.qv   ; 2 uses
  br i1 %i.pq, label %bb.ao, label %.thread72.us.us

bb.ao:                                            ; preds = %bb.an
  %i.qz = icmp eq i32 %.1185.i128.us.us, 0
  %or.cond7.i41.us.us = or i1 %i.os, %i.qz
  %spec.select243 = select i1 %or.cond7.i41.us.us, ptr %i.qx, ptr %i.qv
  br label %.thread72.us.us

.thread71.us.us:                                  ; preds = %bb.am
  %i.ra = getelementptr inbounds nuw i8, ptr %i.pm, i64 19136
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %indvars.iv.next199
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !70
  %i.rd = lshr i32 8, %i.pk
  %i.re = mul nsw i32 %i.rd, %i.j
  %i.rf = shl nsw i32 %.1185.i128.us.us, 2
  %i.rg = add nsw i32 %i.re, %i.rf
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds i8, ptr %i.rc, i64 %i.rh ; 2 uses
  br label %.thread72.us.us

.thread72.us.us:                                  ; preds = %bb.ao, %.thread71.us.us, %bb.an
  %.0280.i18.ph.us.us = phi ptr [ %i.ri, %.thread71.us.us ], [ %i.qy, %bb.ao ], [ %i.qy, %bb.an ] ; 7 uses
  %.0279.i19.ph.us.us = phi ptr [ %i.ri, %.thread71.us.us ], [ %spec.select243, %bb.ao ], [ undef, %bb.an ] ; 3 uses
  %i.rj = and i64 %i.qc, 2189                     ; 3 uses
  %.not289.not.i29.us.us = icmp ne i64 %i.rj, 0
  %i.rk = icmp eq ptr %.0280.i18.ph.us.us, %.0279.i19.ph.us.us
  %or.cond301.i30.us.us = select i1 %i.pq, i1 %i.rk, i1 false
  %or.cond308.i31.us.us = select i1 %.not289.not.i29.us.us, i1 true, i1 %or.cond301.i30.us.us
  br i1 %or.cond308.i31.us.us, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %.thread72.us.us
  br i1 %i.qm, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not291.old.i35.us.us = icmp sgt i32 %i.qe, %i.ql
  br i1 %.not291.old.i35.us.us, label %bb.as, label %bb.bd

bb.ar:                                            ; preds = %bb.ap
  %.not204 = xor i1 %i.qo, true
  %or.cond9.i36.us.us = select i1 %.not204, i1 true, i1 %i.pr
  %i.rl = add nuw nsw i32 %spec.select.i16.us.us, %i.qe
  %.not291.i38.us.us = icmp sle i32 %i.rl, %i.ql
  %or.cond302.i39.not.us.us = select i1 %or.cond9.i36.us.us, i1 %.not291.i38.us.us, i1 false
  br i1 %or.cond302.i39.not.us.us, label %bb.bd, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.thread72.us.us
  %.not292.i32.us.us = icmp sgt i32 %i.qe, %i.ql
  br i1 %.not292.i32.us.us, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.rm = sext i32 %i.qe to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.nl, ptr align 1 %.0280.i18.ph.us.us, i64 %i.rm, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.rn = sext i32 %i.ql to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.nl, ptr align 1 %.0280.i18.ph.us.us, i64 %i.rn, i1 false)
  %i.ro = getelementptr i8, ptr %i.nl, i64 %i.rn  ; 2 uses
  %i.rp = getelementptr i8, ptr %i.ro, i64 -1
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !40
  %i.rr = sub nsw i32 %i.qe, %i.ql
  %i.rs = zext nneg i32 %i.rr to i64
  call void @llvm.memset.p0.i64(ptr align 4 %i.ro, i8 %i.rq, i64 %i.rs, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %.critedge.i20.us.us
  %.pre-phi = phi i64 [ %i.rj, %bb.au ], [ %i.rj, %bb.at ], [ %.pre, %.critedge.i20.us.us ]
  %.0279.i1980.us.us = phi ptr [ %.0279.i19.ph.us.us, %bb.au ], [ %.0279.i19.ph.us.us, %bb.at ], [ undef, %.critedge.i20.us.us ]
  %.0280.i1877.us.us = phi ptr [ %.0280.i18.ph.us.us, %bb.au ], [ %.0280.i18.ph.us.us, %bb.at ], [ undef, %.critedge.i20.us.us ]
  %.not293.not.i21.us.us = icmp eq i64 %.pre-phi, 0
  br i1 %.not293.not.i21.us.us, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %or.cond11.i28.us.us = and i1 %i.op, %i.pq
  br i1 %or.cond11.i28.us.us, label %bb.ay, label %bb.ax

end_hunk_1
begin_hunk_2_@ff_vp9_intra_recon_8bpp:bb.a
  br label %vec.epilog.vector.body472

vec.epilog.vector.body472:                        ; preds = %vec.epilog.vector.body472, %vec.epilog.ph469
  %index473 = phi i64 [ %vec.epilog.resume.val470, %vec.epilog.ph469 ], [ %index.next476, %vec.epilog.vector.body472 ] ; 3 uses
  %i.tl = getelementptr inbounds i8, ptr %i.st, i64 %index473
  %i.tm = getelementptr inbounds i8, ptr %i.tl, i64 -1
  %wide.load474 = load <8 x i8>, ptr %i.tm, align 1, !tbaa !40, !alias.scope !146
  %i.tn = xor i64 %index473, -1
  %i.to = getelementptr i8, ptr %i.sy, i64 %i.tn
  %i.tp = getelementptr i8, ptr %i.to, i64 -7
  %reverse475 = shufflevector <8 x i8> %wide.load474, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse475, ptr %i.tp, align 4, !tbaa !40, !alias.scope !147, !noalias !146
  %index.next476 = add nuw i64 %index473, 8       ; 2 uses
  %i.tq = icmp eq i64 %index.next476, %n.vec471
  br i1 %i.tq, label %vec.epilog.middle.block477, label %vec.epilog.vector.body472, !llvm.loop !130

vec.epilog.middle.block477:                       ; preds = %vec.epilog.vector.body472
  %cmp.n478 = icmp eq i64 %n.vec471, %wide.trip.count182
  br i1 %cmp.n478, label %check_intra_mode.exit42.us.us, label %.lr.ph.us143.us.preheader

.lr.ph.us143.us.preheader:                        ; preds = %iter.check465, %vector.memcheck448, %vec.epilog.iter.check466, %vec.epilog.middle.block477
  %indvars.iv179.ph = phi i64 [ 0, %iter.check465 ], [ 0, %vector.memcheck448 ], [ %n.vec455, %vec.epilog.iter.check466 ], [ %n.vec471, %vec.epilog.middle.block477 ]
  br label %.lr.ph.us143.us

.lr.ph.us143.us:                                  ; preds = %.lr.ph.us143.us, %.lr.ph.us143.us.preheader
  %indvars.iv179 = phi i64 [ %indvars.iv179.ph, %.lr.ph.us143.us.preheader ], [ %indvars.iv.next180.3, %.lr.ph.us143.us ] ; 9 uses
  %i.tr = mul nsw i64 %i.sv, %indvars.iv179
  %i.ts = getelementptr inbounds i8, ptr %i.st, i64 %i.tr
  %i.tt = getelementptr inbounds i8, ptr %i.ts, i64 -1
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !40
  %i.tv = xor i64 %indvars.iv179, -1
  %i.tw = getelementptr i8, ptr %i.sy, i64 %i.tv
  store i8 %i.tu, ptr %i.tw, align 1, !tbaa !40
  %indvars.iv.next180 = or disjoint i64 %indvars.iv179, 1
  %i.tx = mul nsw i64 %i.sv, %indvars.iv.next180
  %i.ty = getelementptr inbounds i8, ptr %i.st, i64 %i.tx
  %i.tz = getelementptr inbounds i8, ptr %i.ty, i64 -1
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !40
  %i.ub = xor i64 %indvars.iv179, -2
  %i.uc = getelementptr i8, ptr %i.sy, i64 %i.ub
  store i8 %i.ua, ptr %i.uc, align 2, !tbaa !40
  %indvars.iv.next180.1 = or disjoint i64 %indvars.iv179, 2
  %i.ud = mul nsw i64 %i.sv, %indvars.iv.next180.1
  %i.ue = getelementptr inbounds i8, ptr %i.st, i64 %i.ud
  %i.uf = getelementptr inbounds i8, ptr %i.ue, i64 -1
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !40
  %i.uh = xor i64 %indvars.iv179, -3
  %i.ui = getelementptr i8, ptr %i.sy, i64 %i.uh
  store i8 %i.ug, ptr %i.ui, align 1, !tbaa !40
  %indvars.iv.next180.2 = or disjoint i64 %indvars.iv179, 3
  %i.uj = mul nsw i64 %i.sv, %indvars.iv.next180.2
  %i.uk = getelementptr inbounds i8, ptr %i.st, i64 %i.uj
  %i.ul = getelementptr inbounds i8, ptr %i.uk, i64 -1
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !40
  %i.un = xor i64 %indvars.iv179, -4
  %i.uo = getelementptr i8, ptr %i.sy, i64 %i.un
  store i8 %i.um, ptr %i.uo, align 4, !tbaa !40
  %indvars.iv.next180.3 = add nuw nsw i64 %indvars.iv179, 4 ; 2 uses
  %exitcond183.not.3 = icmp eq i64 %indvars.iv.next180.3, %wide.trip.count182
  br i1 %exitcond183.not.3, label %check_intra_mode.exit42.us.us, label %.lr.ph.us143.us, !llvm.loop !131

.preheader84.us.us:                               ; preds = %bb.bh
  %i.up = icmp sgt i32 %i.sr, 0
  br i1 %i.up, label %iter.check425, label %._crit_edge.us144.us

iter.check425:                                    ; preds = %.preheader84.us.us
  %i.uq = zext nneg i32 %i.sr to i64              ; 9 uses
  %min.iters.check410 = icmp ult i32 %i.sr, 8
  br i1 %min.iters.check410, label %.lr.ph121.us.us.preheader, label %vector.scevcheck402

vector.scevcheck402:                              ; preds = %iter.check425
  %ident.check403 = icmp ne i64 %i.sv, 1
  %i.ur = add nsw i64 %i.uq, -1                   ; 2 uses
  %i.us = add i32 %i.sk, -1                       ; 2 uses
  %i.ut = trunc nsw i64 %i.ur to i32
  %i.uu = sub i32 %i.us, %i.ut
  %i.uv = icmp sgt i32 %i.uu, %i.us
  %i.uw = icmp ugt i64 %i.ur, 4294967295
  %i.ux = or i1 %i.uv, %i.uw
  %i.uy = or i1 %ident.check403, %i.ux
  br i1 %i.uy, label %.lr.ph121.us.us.preheader, label %vector.memcheck411

vector.memcheck411:                               ; preds = %vector.scevcheck402
  %i.uz = getelementptr i8, ptr %i.st, i64 -1
  %i.va = getelementptr i8, ptr %i.st, i64 %i.uq
  %i.vb = getelementptr i8, ptr %i.va, i64 -1
  %i.vc = add i32 %i.sk, -4
  %i.vd = sext i32 %i.vc to i64
  %i.ve = add nsw i64 %i.vd, 4                    ; 2 uses
  %i.vf = sub nsw i64 %i.ve, %i.uq
  %i.vg = getelementptr i8, ptr %i.b, i64 %i.vf
  %i.vh = getelementptr i8, ptr %i.b, i64 %i.ve
  %bound0 = icmp ult ptr %i.uz, %i.vh
  %bound1 = icmp ult ptr %i.vg, %i.vb
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph121.us.us.preheader, label %vector.main.loop.iter.check412

vector.main.loop.iter.check412:                   ; preds = %vector.memcheck411
  %min.iters.check413 = icmp ult i32 %i.sr, 32
  br i1 %min.iters.check413, label %vec.epilog.ph429, label %vector.ph414

vector.ph414:                                     ; preds = %vector.main.loop.iter.check412
  %i.vi = and i64 %i.uq, 24
  %n.vec415 = and i64 %i.uq, 2147483616           ; 4 uses
  br label %vector.body416

vector.body416:                                   ; preds = %vector.ph414, %vector.body416
  %index417 = phi i64 [ 0, %vector.ph414 ], [ %index.next422, %vector.body416 ] ; 3 uses
  %i.vj = getelementptr inbounds i8, ptr %i.st, i64 %index417 ; 2 uses
  %i.vk = getelementptr inbounds i8, ptr %i.vj, i64 -1
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 15
  %wide.load418 = load <16 x i8>, ptr %i.vk, align 1, !tbaa !40, !alias.scope !148, !noalias !149
  %wide.load419 = load <16 x i8>, ptr %i.vl, align 1, !tbaa !40, !alias.scope !148, !noalias !149
  %i.vm = trunc nuw nsw i64 %index417 to i32
  %i.vn = xor i32 %i.vm, -1
  %i.vo = add i32 %i.sk, %i.vn
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds i8, ptr %i.b, i64 %i.vp ; 2 uses
  %i.vr = getelementptr inbounds i8, ptr %i.vq, i64 -15
  %i.vs = getelementptr inbounds i8, ptr %i.vq, i64 -31
  %reverse420 = shufflevector <16 x i8> %wide.load418, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse421 = shufflevector <16 x i8> %wide.load419, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse420, ptr %i.vr, align 1, !tbaa !40, !alias.scope !149
  store <16 x i8> %reverse421, ptr %i.vs, align 1, !tbaa !40, !alias.scope !149
  %index.next422 = add nuw i64 %index417, 32      ; 2 uses
  %i.vt = icmp eq i64 %index.next422, %n.vec415
  br i1 %i.vt, label %middle.block423, label %vector.body416, !llvm.loop !135

middle.block423:                                  ; preds = %vector.body416
  %cmp.n424 = icmp eq i64 %n.vec415, %i.uq
  br i1 %cmp.n424, label %._crit_edge.us144.us, label %vec.epilog.iter.check426

vec.epilog.iter.check426:                         ; preds = %middle.block423
  %min.epilog.iters.check428 = icmp eq i64 %i.vi, 0
  br i1 %min.epilog.iters.check428, label %.lr.ph121.us.us.preheader, label %vec.epilog.ph429, !prof !145

vec.epilog.ph429:                                 ; preds = %vector.main.loop.iter.check412, %vec.epilog.iter.check426
  %vec.epilog.resume.val430 = phi i64 [ %n.vec415, %vec.epilog.iter.check426 ], [ 0, %vector.main.loop.iter.check412 ]
  %n.vec431 = and i64 %i.uq, 2147483640           ; 3 uses
  br label %vec.epilog.vector.body432

vec.epilog.vector.body432:                        ; preds = %vec.epilog.vector.body432, %vec.epilog.ph429
  %index433 = phi i64 [ %vec.epilog.resume.val430, %vec.epilog.ph429 ], [ %index.next436, %vec.epilog.vector.body432 ] ; 3 uses
  %i.vu = getelementptr inbounds i8, ptr %i.st, i64 %index433
  %i.vv = getelementptr inbounds i8, ptr %i.vu, i64 -1
  %wide.load434 = load <8 x i8>, ptr %i.vv, align 1, !tbaa !40, !alias.scope !148, !noalias !149
  %i.vw = trunc nuw nsw i64 %index433 to i32
  %i.vx = xor i32 %i.vw, -1
  %i.vy = add i32 %i.sk, %i.vx
  %i.vz = sext i32 %i.vy to i64
  %i.wa = getelementptr inbounds i8, ptr %i.b, i64 %i.vz
  %i.wb = getelementptr inbounds i8, ptr %i.wa, i64 -7
  %reverse435 = shufflevector <8 x i8> %wide.load434, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse435, ptr %i.wb, align 1, !tbaa !40, !alias.scope !149
  %index.next436 = add nuw i64 %index433, 8       ; 2 uses
  %i.wc = icmp eq i64 %index.next436, %n.vec431
  br i1 %i.wc, label %vec.epilog.middle.block437, label %vec.epilog.vector.body432, !llvm.loop !136

vec.epilog.middle.block437:                       ; preds = %vec.epilog.vector.body432
  %cmp.n438 = icmp eq i64 %n.vec431, %i.uq
  br i1 %cmp.n438, label %._crit_edge.us144.us, label %.lr.ph121.us.us.preheader

.lr.ph121.us.us.preheader:                        ; preds = %iter.check425, %vector.scevcheck402, %vector.memcheck411, %vec.epilog.iter.check426, %vec.epilog.middle.block437
  %indvars.iv184.ph = phi i64 [ 0, %iter.check425 ], [ 0, %vector.scevcheck402 ], [ 0, %vector.memcheck411 ], [ %n.vec415, %vec.epilog.iter.check426 ], [ %n.vec431, %vec.epilog.middle.block437 ]
  br label %.lr.ph121.us.us

.lr.ph121.us.us:                                  ; preds = %.lr.ph121.us.us.preheader, %.lr.ph121.us.us
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %.lr.ph121.us.us ], [ %indvars.iv184.ph, %.lr.ph121.us.us.preheader ] ; 3 uses
  %i.wd = mul nsw i64 %i.sv, %indvars.iv184
  %i.we = getelementptr inbounds i8, ptr %i.st, i64 %i.wd
  %i.wf = getelementptr inbounds i8, ptr %i.we, i64 -1
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !40
  %i.wh = trunc nuw nsw i64 %indvars.iv184 to i32
  %i.wi = xor i32 %i.wh, -1
  %i.wj = add i32 %i.sk, %i.wi
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr inbounds i8, ptr %i.b, i64 %i.wk
  store i8 %i.wg, ptr %i.wl, align 1, !tbaa !40
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.wm = icmp samesign ult i64 %indvars.iv.next185, %i.uq
  br i1 %i.wm, label %.lr.ph121.us.us, label %._crit_edge.us144.us, !llvm.loop !137

._crit_edge.us144.us:                             ; preds = %.lr.ph121.us.us, %middle.block423, %vec.epilog.middle.block437, %.preheader84.us.us
  %i.wn = sub nsw i32 %i.sk, %i.sr
  %i.wo = sext i32 %i.wn to i64                   ; 2 uses
  %i.wp = getelementptr inbounds i8, ptr %i.b, i64 %i.wo
  %i.wq = load i8, ptr %i.wp, align 4, !tbaa !40
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 %i.wq, i64 %i.wo, i1 false)
  br label %check_intra_mode.exit42.us.us

bb.bi:                                            ; preds = %bb.bg
  br i1 %.not300.i11.us.us, label %.preheader.us.us, label %.preheader83.us.us

.preheader83.us.us:                               ; preds = %bb.bi
  %i.wr = icmp sgt i32 %i.sk, 0
  br i1 %i.wr, label %iter.check388, label %check_intra_mode.exit42.us.us

iter.check388:                                    ; preds = %.preheader83.us.us
  %wide.trip.count190 = zext nneg i32 %i.sk to i64 ; 5 uses
  %ident.check372.not = icmp ne i64 %i.sv, 1
  %i.ws = sub i64 %i.su, %3
  %diff.check376 = icmp ugt i64 %i.ws, -32
  %or.cond482 = select i1 %ident.check372.not, i1 true, i1 %diff.check376
  br i1 %or.cond482, label %.lr.ph123.us.us.preheader, label %vector.main.loop.iter.check377

vector.main.loop.iter.check377:                   ; preds = %iter.check388
  %min.iters.check378 = icmp ult i32 %i.sk, 32
  br i1 %min.iters.check378, label %vec.epilog.vector.body395.preheader, label %vector.ph379

vector.ph379:                                     ; preds = %vector.main.loop.iter.check377
  %i.wt = and i64 %wide.trip.count190, 28
  %n.vec380 = and i64 %wide.trip.count190, 2147483616 ; 4 uses
  br label %vector.body381

vector.body381:                                   ; preds = %vector.ph379, %vector.body381
  %index382 = phi i64 [ 0, %vector.ph379 ], [ %index.next385, %vector.body381 ] ; 3 uses
  %i.wu = getelementptr inbounds i8, ptr %i.st, i64 %index382 ; 2 uses
  %i.wv = getelementptr inbounds i8, ptr %i.wu, i64 -1
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 15
  %wide.load383 = load <16 x i8>, ptr %i.wv, align 1, !tbaa !40
  %wide.load384 = load <16 x i8>, ptr %i.ww, align 1, !tbaa !40
  %i.wx = getelementptr inbounds nuw i8, ptr %i.b, i64 %index382 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  store <16 x i8> %wide.load383, ptr %i.wx, align 16, !tbaa !40
  store <16 x i8> %wide.load384, ptr %i.wy, align 16, !tbaa !40
  %index.next385 = add nuw i64 %index382, 32      ; 2 uses
  %i.wz = icmp eq i64 %index.next385, %n.vec380
  br i1 %i.wz, label %middle.block386, label %vector.body381, !llvm.loop !138

middle.block386:                                  ; preds = %vector.body381
  %cmp.n387 = icmp eq i64 %n.vec380, %wide.trip.count190
  br i1 %cmp.n387, label %check_intra_mode.exit42.us.us, label %vec.epilog.iter.check389

vec.epilog.iter.check389:                         ; preds = %middle.block386
  %min.epilog.iters.check391 = icmp eq i64 %i.wt, 0
  br i1 %min.epilog.iters.check391, label %.lr.ph123.us.us.preheader, label %vec.epilog.vector.body395.preheader, !prof !144

vec.epilog.vector.body395.preheader:              ; preds = %vector.main.loop.iter.check377, %vec.epilog.iter.check389
  %index396.ph = phi i64 [ 0, %vector.main.loop.iter.check377 ], [ %n.vec380, %vec.epilog.iter.check389 ]
  br label %vec.epilog.vector.body395

.lr.ph123.us.us.preheader:                        ; preds = %iter.check388, %vec.epilog.iter.check389
  %indvars.iv187.ph = phi i64 [ %n.vec380, %vec.epilog.iter.check389 ], [ 0, %iter.check388 ]
  br label %.lr.ph123.us.us

vec.epilog.vector.body395:                        ; preds = %vec.epilog.vector.body395.preheader, %vec.epilog.vector.body395
  %index396 = phi i64 [ %index.next398, %vec.epilog.vector.body395 ], [ %index396.ph, %vec.epilog.vector.body395.preheader ] ; 3 uses
  %i.xa = getelementptr inbounds i8, ptr %i.st, i64 %index396
  %i.xb = getelementptr inbounds i8, ptr %i.xa, i64 -1
  %wide.load397 = load <4 x i8>, ptr %i.xb, align 1, !tbaa !40
  %i.xc = getelementptr inbounds nuw i8, ptr %i.b, i64 %index396
  store <4 x i8> %wide.load397, ptr %i.xc, align 4, !tbaa !40
  %index.next398 = add nuw i64 %index396, 4       ; 2 uses
  %i.xd = icmp eq i64 %index.next398, %wide.trip.count190
  br i1 %i.xd, label %check_intra_mode.exit42.us.us, label %vec.epilog.vector.body395, !llvm.loop !139

.lr.ph123.us.us:                                  ; preds = %.lr.ph123.us.us, %.lr.ph123.us.us.preheader
  %indvars.iv187 = phi i64 [ %indvars.iv187.ph, %.lr.ph123.us.us.preheader ], [ %indvars.iv.next188.3, %.lr.ph123.us.us ] ; 6 uses
  %i.xe = mul nsw i64 %i.sv, %indvars.iv187
  %i.xf = getelementptr inbounds i8, ptr %i.st, i64 %i.xe
  %i.xg = getelementptr inbounds i8, ptr %i.xf, i64 -1
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !40
  %i.xi = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv187
  store i8 %i.xh, ptr %i.xi, align 4, !tbaa !40
  %indvars.iv.next188 = or disjoint i64 %indvars.iv187, 1 ; 2 uses
  %i.xj = mul nsw i64 %i.sv, %indvars.iv.next188
  %i.xk = getelementptr inbounds i8, ptr %i.st, i64 %i.xj
  %i.xl = getelementptr inbounds i8, ptr %i.xk, i64 -1
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !40
  %i.xn = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next188
  store i8 %i.xm, ptr %i.xn, align 1, !tbaa !40
  %indvars.iv.next188.1 = or disjoint i64 %indvars.iv187, 2 ; 2 uses
  %i.xo = mul nsw i64 %i.sv, %indvars.iv.next188.1
  %i.xp = getelementptr inbounds i8, ptr %i.st, i64 %i.xo
  %i.xq = getelementptr inbounds i8, ptr %i.xp, i64 -1
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !40
  %i.xs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next188.1
  store i8 %i.xr, ptr %i.xs, align 2, !tbaa !40
  %indvars.iv.next188.2 = or disjoint i64 %indvars.iv187, 3 ; 2 uses
  %i.xt = mul nsw i64 %i.sv, %indvars.iv.next188.2
  %i.xu = getelementptr inbounds i8, ptr %i.st, i64 %i.xt
  %i.xv = getelementptr inbounds i8, ptr %i.xu, i64 -1
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !40
  %i.xx = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next188.2
  store i8 %i.xw, ptr %i.xx, align 1, !tbaa !40
  %indvars.iv.next188.3 = add nuw nsw i64 %indvars.iv187, 4 ; 2 uses
  %exitcond191.not.3 = icmp eq i64 %indvars.iv.next188.3, %wide.trip.count190
  br i1 %exitcond191.not.3, label %check_intra_mode.exit42.us.us, label %.lr.ph123.us.us, !llvm.loop !140

.preheader.us.us:                                 ; preds = %bb.bi
  %i.xy = icmp sgt i32 %i.sr, 0
  br i1 %i.xy, label %iter.check357, label %.preheader.us.us.._crit_edge126.us.us_crit_edge

.preheader.us.us.._crit_edge126.us.us_crit_edge:  ; preds = %.preheader.us.us
  %.pre209 = sext i32 %i.sr to i64
  br label %._crit_edge126.us.us

iter.check357:                                    ; preds = %.preheader.us.us
  %i.xz = zext nneg i32 %i.sr to i64              ; 8 uses
  %ident.check344.not = icmp ne i64 %i.sv, 1
  %i.ya = sub i64 %i.su, %3
  %diff.check = icmp ugt i64 %i.ya, -32
  %or.cond483 = select i1 %ident.check344.not, i1 true, i1 %diff.check
  br i1 %or.cond483, label %.lr.ph125.us.us.preheader, label %vector.main.loop.iter.check346

vector.main.loop.iter.check346:                   ; preds = %iter.check357
  %min.iters.check347 = icmp ult i32 %i.sr, 32
  br i1 %min.iters.check347, label %vec.epilog.vector.body364.preheader, label %vector.ph348

vector.ph348:                                     ; preds = %vector.main.loop.iter.check346
  %i.yb = and i64 %i.xz, 28
  %n.vec349 = and i64 %i.xz, 2147483616           ; 4 uses
  br label %vector.body350

vector.body350:                                   ; preds = %vector.ph348, %vector.body350
  %index351 = phi i64 [ 0, %vector.ph348 ], [ %index.next354, %vector.body350 ] ; 3 uses
  %i.yc = getelementptr inbounds i8, ptr %i.st, i64 %index351 ; 2 uses
  %i.yd = getelementptr inbounds i8, ptr %i.yc, i64 -1
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 15
  %wide.load352 = load <16 x i8>, ptr %i.yd, align 1, !tbaa !40
  %wide.load353 = load <16 x i8>, ptr %i.ye, align 1, !tbaa !40
  %i.yf = getelementptr inbounds nuw i8, ptr %i.b, i64 %index351 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  store <16 x i8> %wide.load352, ptr %i.yf, align 16, !tbaa !40
  store <16 x i8> %wide.load353, ptr %i.yg, align 16, !tbaa !40
  %index.next354 = add nuw i64 %index351, 32      ; 2 uses
  %i.yh = icmp eq i64 %index.next354, %n.vec349
  br i1 %i.yh, label %middle.block355, label %vector.body350, !llvm.loop !141

middle.block355:                                  ; preds = %vector.body350
  %cmp.n356 = icmp eq i64 %n.vec349, %i.xz
  br i1 %cmp.n356, label %._crit_edge126.us.us, label %vec.epilog.iter.check358

vec.epilog.iter.check358:                         ; preds = %middle.block355
  %min.epilog.iters.check360 = icmp eq i64 %i.yb, 0
  br i1 %min.epilog.iters.check360, label %.lr.ph125.us.us.preheader, label %vec.epilog.vector.body364.preheader, !prof !144

vec.epilog.vector.body364.preheader:              ; preds = %vector.main.loop.iter.check346, %vec.epilog.iter.check358
  %index365.ph = phi i64 [ 0, %vector.main.loop.iter.check346 ], [ %n.vec349, %vec.epilog.iter.check358 ]
  br label %vec.epilog.vector.body364

.lr.ph125.us.us.preheader:                        ; preds = %iter.check357, %vec.epilog.iter.check358
  %indvars.iv192.ph = phi i64 [ %n.vec349, %vec.epilog.iter.check358 ], [ 0, %iter.check357 ]
  br label %.lr.ph125.us.us

vec.epilog.vector.body364:                        ; preds = %vec.epilog.vector.body364.preheader, %vec.epilog.vector.body364
  %index365 = phi i64 [ %index.next367, %vec.epilog.vector.body364 ], [ %index365.ph, %vec.epilog.vector.body364.preheader ] ; 3 uses
  %i.yi = getelementptr inbounds i8, ptr %i.st, i64 %index365
  %i.yj = getelementptr inbounds i8, ptr %i.yi, i64 -1
  %wide.load366 = load <4 x i8>, ptr %i.yj, align 1, !tbaa !40
  %i.yk = getelementptr inbounds nuw i8, ptr %i.b, i64 %index365
  store <4 x i8> %wide.load366, ptr %i.yk, align 4, !tbaa !40
  %index.next367 = add nuw i64 %index365, 4       ; 2 uses
  %i.yl = icmp eq i64 %index.next367, %i.xz
  br i1 %i.yl, label %._crit_edge126.us.us, label %vec.epilog.vector.body364, !llvm.loop !142

.lr.ph125.us.us:                                  ; preds = %.lr.ph125.us.us.preheader, %.lr.ph125.us.us
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %.lr.ph125.us.us ], [ %indvars.iv192.ph, %.lr.ph125.us.us.preheader ] ; 3 uses
  %i.ym = mul nsw i64 %i.sv, %indvars.iv192
  %i.yn = getelementptr inbounds i8, ptr %i.st, i64 %i.ym
  %i.yo = getelementptr inbounds i8, ptr %i.yn, i64 -1
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !40
  %i.yq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv192
  store i8 %i.yp, ptr %i.yq, align 1, !tbaa !40
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.yr = icmp samesign ult i64 %indvars.iv.next193, %i.xz
  br i1 %i.yr, label %.lr.ph125.us.us, label %._crit_edge126.us.us, !llvm.loop !143

._crit_edge126.us.us:                             ; preds = %vec.epilog.vector.body364, %.lr.ph125.us.us, %middle.block355, %.preheader.us.us.._crit_edge126.us.us_crit_edge
  %.pre-phi210 = phi i64 [ %.pre209, %.preheader.us.us.._crit_edge126.us.us_crit_edge ], [ %i.xz, %middle.block355 ], [ %i.xz, %.lr.ph125.us.us ], [ %i.xz, %vec.epilog.vector.body364 ]
  %i.ys = getelementptr i8, ptr %i.b, i64 %.pre-phi210 ; 2 uses
  %i.yt = getelementptr i8, ptr %i.ys, i64 -1
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !40
  %i.yv = sub nsw i32 %i.sk, %i.sr
  %i.yw = sext i32 %i.yv to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ys, i8 %i.yu, i64 %i.yw, i1 false)
  br label %check_intra_mode.exit42.us.us

check_intra_mode.exit42.us.us:                    ; preds = %.lr.ph.us143.us, %vec.epilog.vector.body395, %.lr.ph123.us.us, %middle.block463, %vec.epilog.middle.block477, %middle.block386, %.preheader83.us.us, %.preheader85.us.us, %._crit_edge126.us.us, %._crit_edge.us144.us, %bb.bf, %bb.bd
  %i.yx = zext i32 %.pre203 to i64
  %i.yy = getelementptr inbounds nuw [120 x i8], ptr %i.nv, i64 %i.yx
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %i.qb
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !85
  call void %i.za(ptr noundef %.0175.i131.us.us, i64 noundef %i.pi, ptr noundef nonnull %i.b, ptr noundef %.0.us.us) #5, !inline_history !0
  %.not195.i.us.us = icmp eq i32 %i.pd, 0
  br i1 %.not195.i.us.us, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %check_intra_mode.exit42.us.us
  %i.zb = load ptr, ptr %i.ny, align 8, !tbaa !85
  %i.zc = load i64, ptr %i.no, align 8, !tbaa !91
  %i.zd = load ptr, ptr %i.on, align 8, !tbaa !92
  %.idx236 = shl nsw i64 %indvars.iv195, 5
  %i.ze = getelementptr inbounds i8, ptr %i.zd, i64 %.idx236
  call void %i.zb(ptr noundef %.0175.i131.us.us, i64 noundef %i.zc, ptr noundef %i.ze, i32 noundef %i.pd) #5, !inline_history !0
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %check_intra_mode.exit42.us.us
  %i.zf = add nsw i32 %.1185.i128.us.us, %i.aq    ; 2 uses
  %i.zg = getelementptr inbounds i8, ptr %.0175.i131.us.us, i64 %i.ob
  %i.zh = getelementptr inbounds i8, ptr %.0.i134.us.us, i64 %i.ob
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, %i.oe ; 2 uses
  %i.zi = icmp slt i32 %i.zf, %i.nf
  br i1 %i.zi, label %bb.ag, label %._crit_edge138.us.us, !llvm.loop !3

._crit_edge138.us.us:                             ; preds = %bb.bk
  %i.zj = load ptr, ptr %i.at, align 8, !tbaa !76 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 68
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !77
  %i.zm = mul nsw i32 %i.zl, %i.oa
  %i.zn = sext i32 %i.zm to i64
  %i.zo = getelementptr inbounds i8, ptr %.1.i142.us.us, i64 %i.zn
  %i.zp = load i64, ptr %i.no, align 8, !tbaa !91
  %i.zq = mul nsw i64 %i.zp, %i.ob
  %i.zr = getelementptr inbounds i8, ptr %.1180.i141.us.us, i64 %i.zq
  %i.zs = add nsw i32 %.1183.i140.us.us, %i.aq    ; 2 uses
  %i.zt = icmp slt i32 %i.zs, %i.nj
  br i1 %i.zt, label %.preheader87.us.us, label %..loopexit_crit_edge.split.us.us, !llvm.loop !4

..loopexit_crit_edge.split.us.us:                 ; preds = %._crit_edge138.us.us
  br i1 %i.og, label %.preheader87.lr.ph.us, label %intra_recon.exit.split, !llvm.loop !5

intra_recon.exit.split:                           ; preds = %..loopexit_crit_edge.split.us.us, %._crit_edge118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_vp9_intra_recon_16bpp(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 12 uses
  %i.b = alloca [64 x i8], align 16               ; 58 uses
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
end_hunk_2
