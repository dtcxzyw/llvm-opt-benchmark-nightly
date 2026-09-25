Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cs_qr?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define ptr @cs_qr(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = icmp eq i32 %i.b, -1
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !29   ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load double, ptr %i.t, align 8, !tbaa !30
  %i.v = fptosi double %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load double, ptr %i.w, align 8, !tbaa !31
  %i.y = fptosi double %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  %i.ab = add nsw i32 %i.s, %i.f
  %i.ac = tail call ptr @cs_malloc(i32 noundef %i.ab, i64 noundef 4) #4 ; 9 uses
  %i.ad = tail call ptr @cs_malloc(i32 noundef %i.s, i64 noundef 8) #4 ; 9 uses
  %i.ae = tail call ptr @cs_calloc(i32 noundef 1, i64 noundef 32) #4 ; 5 uses
  %i.af = icmp ne ptr %i.ac, null
  %i.ag = icmp ne ptr %i.ad, null
  %or.cond3 = select i1 %i.af, i1 %i.ag, i1 false
  %i.ah = icmp ne ptr %i.ae, null
  %or.cond5 = select i1 %or.cond3, i1 %i.ah, i1 false
  br i1 %or.cond5, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.ai = sext i32 %i.s to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ai ; 6 uses
  %i.ak = icmp sgt i32 %i.s, 0                    ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.al = zext nneg i32 %i.s to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ad, i8 0, i64 %i.am, i1 false), !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.d
  %i.an = tail call ptr @cs_spalloc(i32 noundef %i.s, i32 noundef %i.f, i32 noundef %i.v, i32 noundef 1, i32 noundef 0) #4 ; 8 uses
  store ptr %i.an, ptr %i.ae, align 8, !tbaa !36
  %i.ao = tail call ptr @cs_spalloc(i32 noundef %i.s, i32 noundef %i.f, i32 noundef %i.y, i32 noundef 1, i32 noundef 0) #4 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !37
  %i.aq = tail call ptr @cs_malloc(i32 noundef %i.f, i64 noundef 8) #4 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !38
  %i.as = icmp ne ptr %i.ao, null
  %i.at = icmp ne ptr %i.an, null
  %or.cond7 = select i1 %i.as, i1 %i.at, i1 false
  %i.au = icmp ne ptr %i.aq, null
  %or.cond9 = select i1 %or.cond7, i1 %i.au, i1 false
  br i1 %or.cond9, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !22 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !23 ; 4 uses
  br i1 %i.ak, label %.lr.ph226.preheader, label %.preheader222

.lr.ph226.preheader:                              ; preds = %bb.e
  %i.bh = zext nneg i32 %i.s to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 -1, i64 %i.bi, i1 false), !tbaa !39
  br label %.preheader222

.preheader222:                                    ; preds = %.lr.ph226.preheader, %bb.e
  %i.bj = icmp sgt i32 %i.f, 0
  br i1 %i.bj, label %.lr.ph257, label %._crit_edge258

.lr.ph257:                                        ; preds = %.preheader222
  %.not218 = icmp eq ptr %i.n, null
  %wide.trip.count292 = zext nneg i32 %i.f to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph257, %._crit_edge253
  %indvars.iv289 = phi i64 [ 0, %.lr.ph257 ], [ %indvars.iv.next290, %._crit_edge253 ] ; 13 uses
  %.0256 = phi i32 [ 0, %.lr.ph257 ], [ %i.fu, %._crit_edge253 ] ; 4 uses
  %.0195255 = phi i32 [ 0, %.lr.ph257 ], [ %.3.lcssa, %._crit_edge253 ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv289
  store i32 %.0256, ptr %i.bk, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv289
  store i32 %.0195255, ptr %i.bl, align 4, !tbaa !39
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv289
  %i.bn = trunc nuw nsw i64 %indvars.iv289 to i32 ; 6 uses
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !39
  %i.bo = add nsw i32 %.0195255, 1                ; 2 uses
  %i.bp = sext i32 %.0195255 to i64               ; 8 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bp
  store i32 %i.bn, ptr %i.bq, align 4, !tbaa !39
  br i1 %.not218, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv289
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !39
  %i.bt = sext i32 %i.bs to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bu = phi i64 [ %i.bt, %bb.g ], [ %indvars.iv289, %bb.f ]
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !39 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bv, i64 4      ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !39
  %i.bz = icmp slt i32 %i.bw, %i.by
  br i1 %i.bz, label %.lr.ph242.preheader, label %.preheader220

.lr.ph242.preheader:                              ; preds = %bb.h
  %i.ca = sext i32 %i.bw to i64
  br label %.lr.ph242

.preheader221:                                    ; preds = %bb.k
  %i.cb = icmp slt i32 %.1194.lcssa, %i.f
  br i1 %i.cb, label %.lr.ph248.preheader, label %.preheader220

.lr.ph248.preheader:                              ; preds = %.preheader221
  %i.cc = sext i32 %.0256 to i64
  %i.cd = sext i32 %.1194.lcssa to i64
  br label %.lr.ph248

.lr.ph242:                                        ; preds = %.lr.ph242.preheader, %bb.k
  %indvars.iv275 = phi i64 [ %i.ca, %.lr.ph242.preheader ], [ %indvars.iv.next276, %bb.k ] ; 3 uses
  %.0193240 = phi i32 [ %i.f, %.lr.ph242.preheader ], [ %.1194.lcssa, %bb.k ] ; 2 uses
  %.1196239 = phi i32 [ %i.bo, %.lr.ph242.preheader ], [ %.2, %bb.k ] ; 4 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv275 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !39
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.cg
  %.1203227 = load i32, ptr %i.ch, align 4, !tbaa !39 ; 2 uses
  %i.ci = sext i32 %.1203227 to i64               ; 2 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !39
  %i.cl = zext i32 %i.ck to i64
  %.not219228 = icmp eq i64 %indvars.iv289, %i.cl
  br i1 %.not219228, label %._crit_edge236, label %.lr.ph232

.lr.ph235.preheader.a:                            ; preds = %.lr.ph232
  %2 = trunc i64 %indvars.iv.next to i32          ; 2 uses
  %i.cm = sext i32 %.0193240 to i64               ; 5 uses
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 1)
  %4 = sub i32 %2, %3                             ; 2 uses
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %4, 7
  br i1 %min.iters.check, label %.lr.ph235.preheader312, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph235.preheader.a
  %i.cn = sub i64 %indvars.iv, %i.cm
  %reass.sub = shl i64 %i.cn, 2
  %diff.check = icmp ult i64 %reass.sub, 28
  br i1 %diff.check, label %.lr.ph235.preheader312, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %6, 8589934584                 ; 4 uses
  %i.co = sub nsw i64 %i.cm, %n.vec               ; 2 uses
  %7 = sub i64 %indvars.iv.next, %n.vec
  %invariant.gep = getelementptr [4 x i8], ptr %i.aj, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = sub i64 %indvars.iv, %index
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -12
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cr, align 4, !tbaa !39
  %wide.load309 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !39
  %i.ct = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ct ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.cv = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.cu, align 4, !tbaa !39
  store <4 x i32> %wide.load309, ptr %i.cv, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %._crit_edge236.loopexit, label %.lr.ph235.preheader312

.lr.ph235.preheader312:                           ; preds = %vector.memcheck, %.lr.ph235.preheader.a, %middle.block
  %indvars.iv270.ph = phi i64 [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph235.preheader.a ], [ %i.co, %middle.block ]
  %indvars.iv268.ph = phi i64 [ %indvars.iv.next, %vector.memcheck ], [ %indvars.iv.next, %.lr.ph235.preheader.a ], [ %7, %middle.block ]
  br label %.lr.ph235

.lr.ph232:                                        ; preds = %.lr.ph242, %.lr.ph232
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph232 ], [ 0, %.lr.ph242 ] ; 4 uses
  %i.cx = phi ptr [ %i.dc, %.lr.ph232 ], [ %i.cj, %.lr.ph242 ]
  %i.cy = phi i64 [ %i.db, %.lr.ph232 ], [ %i.ci, %.lr.ph242 ]
  %.1203230 = phi i32 [ %.1203, %.lr.ph232 ], [ %.1203227, %.lr.ph242 ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 5 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  store i32 %.1203230, ptr %i.cz, align 4, !tbaa !39
  store i32 %i.bn, ptr %i.cx, align 4, !tbaa !39
  %i.da = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cy
  %.1203 = load i32, ptr %i.da, align 4, !tbaa !39 ; 2 uses
  %i.db = sext i32 %.1203 to i64                  ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !39
  %i.de = zext i32 %i.dd to i64
  %.not219 = icmp eq i64 %indvars.iv289, %i.de
  br i1 %.not219, label %.lr.ph235.preheader.a, label %.lr.ph232, !llvm.loop !9

.lr.ph235:                                        ; preds = %.lr.ph235.preheader312, %.lr.ph235
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %.lr.ph235 ], [ %indvars.iv270.ph, %.lr.ph235.preheader312 ]
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %.lr.ph235 ], [ %indvars.iv268.ph, %.lr.ph235.preheader312 ] ; 2 uses
  %indvars.iv.next269 = add nsw i64 %indvars.iv268, -1 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next269
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !39
  %indvars.iv.next271 = add nsw i64 %indvars.iv270, -1 ; 3 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv.next271
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !39
  %8 = trunc nuw i64 %indvars.iv268 to i32
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %.lr.ph235, label %._crit_edge236.loopexit, !llvm.loop !10

._crit_edge236.loopexit:                          ; preds = %.lr.ph235, %middle.block
  %indvars.iv.next271.lcssa = phi i64 [ %i.co, %middle.block ], [ %indvars.iv.next271, %.lr.ph235 ]
  %i.di = trunc nsw i64 %indvars.iv.next271.lcssa to i32
  br label %._crit_edge236

._crit_edge236:                                   ; preds = %.lr.ph242, %._crit_edge236.loopexit
  %.1194.lcssa = phi i32 [ %.0193240, %.lr.ph242 ], [ %i.di, %._crit_edge236.loopexit ] ; 3 uses
  %i.dj = load i32, ptr %i.ce, align 4, !tbaa !39
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !39 ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv275
  %i.do = load double, ptr %i.dn, align 8, !tbaa !33
  %i.dp = sext i32 %i.dm to i64                   ; 3 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.dp
  store double %i.do, ptr %i.dq, align 8, !tbaa !33
  %i.dr = icmp slt i64 %indvars.iv289, %i.dp
  br i1 %i.dr, label %bb.i, label %bb.k

bb.i:                                             ; preds = %._crit_edge236
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.dp ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !39
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp sgt i64 %indvars.iv289, %i.du
  br i1 %i.dv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dw = add nsw i32 %.1196239, 1
  %i.dx = sext i32 %.1196239 to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.dx
  store i32 %i.dm, ptr %i.dy, align 4, !tbaa !39
  store i32 %i.bn, ptr %i.ds, align 4, !tbaa !39
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge236, %bb.i, %bb.j
  %.2 = phi i32 [ %i.dw, %bb.j ], [ %.1196239, %bb.i ], [ %.1196239, %._crit_edge236 ] ; 3 uses
  %indvars.iv.next276 = add nsw i64 %indvars.iv275, 1 ; 2 uses
  %i.dz = load i32, ptr %i.bx, align 4, !tbaa !39
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next276, %i.ea
  br i1 %i.eb, label %.lr.ph242, label %.preheader221, !llvm.loop !11

.preheader220.loopexit:                           ; preds = %bb.m
  %i.ec = trunc nsw i64 %indvars.iv.next279 to i32
  br label %.preheader220

.preheader220:                                    ; preds = %bb.h, %.preheader220.loopexit, %.preheader221
  %.3.lcssa = phi i32 [ %.2, %.preheader221 ], [ %.4, %.preheader220.loopexit ], [ %i.bo, %bb.h ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0256, %.preheader221 ], [ %i.ec, %.preheader220.loopexit ], [ %.0256, %bb.h ] ; 2 uses
  %i.ed = icmp slt i32 %.0195255, %.3.lcssa
  br i1 %i.ed, label %.lr.ph252.preheader, label %._crit_edge253

.lr.ph252.preheader:                              ; preds = %.preheader220
  %wide.trip.count = sext i32 %.3.lcssa to i64    ; 3 uses
  %i.ee = sub nsw i64 %wide.trip.count, %i.bp
  %xtraiter = and i64 %i.ee, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph252.prol.loopexit, label %.lr.ph252.prol

.lr.ph252.prol:                                   ; preds = %.lr.ph252.preheader
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bp
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !39
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.eh ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !33
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bp
  store double %i.ej, ptr %i.ek, align 8, !tbaa !33
  store double 0.000000e+00, ptr %i.ei, align 8, !tbaa !33
  %indvars.iv.next286.prol = add nsw i64 %i.bp, 1
  br label %.lr.ph252.prol.loopexit

.lr.ph252.prol.loopexit:                          ; preds = %.lr.ph252.prol, %.lr.ph252.preheader
  %indvars.iv285.unr = phi i64 [ %i.bp, %.lr.ph252.preheader ], [ %indvars.iv.next286.prol, %.lr.ph252.prol ]
  %i.el = add nsw i64 %wide.trip.count, -1
  %i.em = icmp eq i64 %i.el, %i.bp
  br i1 %i.em, label %._crit_edge253, label %.lr.ph252

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %bb.m
  %indvars.iv280 = phi i64 [ %i.cd, %.lr.ph248.preheader ], [ %indvars.iv.next281, %bb.m ] ; 2 uses
  %indvars.iv278 = phi i64 [ %i.cc, %.lr.ph248.preheader ], [ %indvars.iv.next279, %bb.m ] ; 3 uses
  %.3246 = phi i32 [ %.2, %.lr.ph248.preheader ], [ %.4, %bb.m ] ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv280
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !39 ; 4 uses
  %i.ep = sext i32 %i.eo to i64                   ; 3 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !33
  %i.es = tail call i32 @cs_happly(ptr noundef nonnull %i.an, i32 noundef %i.eo, double noundef %i.er, ptr noundef nonnull %i.ad) #4 ; 0 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv278
  store i32 %i.eo, ptr %i.et, align 4, !tbaa !39
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ep ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !33
  %indvars.iv.next279 = add nsw i64 %indvars.iv278, 1 ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %indvars.iv278
  store double %i.ev, ptr %i.ew, align 8, !tbaa !33
  store double 0.000000e+00, ptr %i.eu, align 8, !tbaa !33
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ep
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !39
  %i.ez = zext i32 %i.ey to i64
  %i.fa = icmp eq i64 %indvars.iv289, %i.ez
  br i1 %i.fa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph248
  %i.fb = tail call i32 @cs_scatter(ptr noundef nonnull %i.an, i32 noundef %i.eo, double noundef 0.000000e+00, ptr noundef nonnull %i.ac, ptr noundef null, i32 noundef %i.bn, ptr noundef nonnull %i.an, i32 noundef %.3246) #4
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph248, %bb.l
  %.4 = phi i32 [ %i.fb, %bb.l ], [ %.3246, %.lr.ph248 ] ; 2 uses
  %indvars.iv.next281 = add nsw i64 %indvars.iv280, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next281 to i32
  %exitcond.not = icmp eq i32 %i.f, %lftr.wideiv
  br i1 %exitcond.not, label %.preheader220.loopexit, label %.lr.ph248, !llvm.loop !12

.lr.ph252:                                        ; preds = %.lr.ph252.prol.loopexit, %.lr.ph252
  %indvars.iv285 = phi i64 [ %indvars.iv.next286.1, %.lr.ph252 ], [ %indvars.iv285.unr, %.lr.ph252.prol.loopexit ] ; 4 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv285
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !39
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.fe ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !33
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv285
  store double %i.fg, ptr %i.fh, align 8, !tbaa !33
  store double 0.000000e+00, ptr %i.ff, align 8, !tbaa !33
  %indvars.iv.next286 = add nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv.next286
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !39
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.fk ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !33
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv.next286
  store double %i.fm, ptr %i.fn, align 8, !tbaa !33
  store double 0.000000e+00, ptr %i.fl, align 8, !tbaa !33
  %indvars.iv.next286.1 = add nsw i64 %indvars.iv285, 2 ; 2 uses
  %exitcond288.not.1 = icmp eq i64 %indvars.iv.next286.1, %wide.trip.count
  br i1 %exitcond288.not.1, label %._crit_edge253, label %.lr.ph252, !llvm.loop !13

._crit_edge253:                                   ; preds = %.lr.ph252.prol.loopexit, %.lr.ph252, %.preheader220
  %i.fo = sext i32 %.1.lcssa to i64               ; 2 uses
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.fo
  store i32 %i.bn, ptr %i.fp, align 4, !tbaa !39
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv289
  %i.fs = sub nsw i32 %.3.lcssa, %.0195255
  %i.ft = tail call double @cs_house(ptr noundef %i.fq, ptr noundef nonnull %i.fr, i32 noundef %i.fs) #4
  %i.fu = add nsw i32 %.1.lcssa, 1                ; 2 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.fo
  store double %i.ft, ptr %i.fv, align 8, !tbaa !33
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292
  br i1 %exitcond293.not, label %._crit_edge258, label %bb.f, !llvm.loop !14

._crit_edge258:                                   ; preds = %._crit_edge253, %.preheader222
  %.0195.lcssa = phi i32 [ 0, %.preheader222 ], [ %.3.lcssa, %._crit_edge253 ]
  %.0.lcssa = phi i32 [ 0, %.preheader222 ], [ %i.fu, %._crit_edge253 ]
  %i.fw = sext i32 %i.f to i64                    ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.fw
  store i32 %.0.lcssa, ptr %i.fx, align 4, !tbaa !39
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.fw
  store i32 %.0195.lcssa, ptr %i.fy, align 4, !tbaa !39
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.c, %._crit_edge258
  %.sink = phi i32 [ 1, %._crit_edge258 ], [ 0, %bb.c ], [ 0, %._crit_edge ]
  %i.fz = tail call ptr @cs_ndone(ptr noundef %i.ae, ptr noundef null, ptr noundef %i.ac, ptr noundef %i.ad, i32 noundef %.sink) #4
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.0204 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.fz, %.sink.split ]
  ret ptr %.0204
}

declare ptr @cs_malloc(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @cs_calloc(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @cs_ndone(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cs_spalloc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @cs_happly(ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare i32 @cs_scatter(ptr noundef, i32 noundef, double noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare double @cs_house(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!8 = distinct !{!8, !40, !41, !42}
!9 = distinct !{!9, !40}
!10 = distinct !{!10, !40, !41}
!11 = distinct !{!11, !40}
!12 = distinct !{!12, !40}
!13 = distinct !{!13, !40}
!14 = distinct !{!14, !40}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"p1 int", !15, i64 0}
!17 = !{!"p1 double", !15, i64 0}
!18 = !{!"cs_sparse", !5, i64 0, !5, i64 4, !5, i64 8, !16, i64 16, !16, i64 24, !17, i64 32, !5, i64 40}
!19 = !{!18, !5, i64 40}
!20 = !{!18, !5, i64 8}
!21 = !{!18, !16, i64 16}
!22 = !{!18, !16, i64 24}
!23 = !{!18, !17, i64 32}
!24 = !{!"double", !4, i64 0}
!25 = !{!"cs_symbolic", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !5, i64 40, !24, i64 48, !24, i64 56}
!26 = !{!25, !16, i64 8}
!27 = !{!25, !16, i64 16}
!28 = !{!25, !16, i64 0}
!29 = !{!25, !5, i64 40}
!30 = !{!25, !24, i64 48}
!31 = !{!25, !24, i64 56}
!32 = !{!25, !16, i64 32}
!33 = !{!24, !24, i64 0}
!34 = !{!"p1 _ZTS9cs_sparse", !15, i64 0}
!35 = !{!"cs_numeric", !34, i64 0, !34, i64 8, !16, i64 16, !17, i64 24}
!36 = !{!35, !34, i64 0}
!37 = !{!35, !34, i64 8}
!38 = !{!35, !17, i64 24}
!39 = !{!5, !5, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
