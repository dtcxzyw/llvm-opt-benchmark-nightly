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
  %i.ac = tail call ptr @cs_malloc(i32 noundef %i.ab, i64 noundef 4) #3 ; 9 uses
  %i.ad = tail call ptr @cs_malloc(i32 noundef %i.s, i64 noundef 8) #3 ; 9 uses
  %i.ae = tail call ptr @cs_calloc(i32 noundef 1, i64 noundef 32) #3 ; 5 uses
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
  %i.an = tail call ptr @cs_spalloc(i32 noundef %i.s, i32 noundef %i.f, i32 noundef %i.v, i32 noundef 1, i32 noundef 0) #3 ; 8 uses
  store ptr %i.an, ptr %i.ae, align 8, !tbaa !36
  %i.ao = tail call ptr @cs_spalloc(i32 noundef %i.s, i32 noundef %i.f, i32 noundef %i.y, i32 noundef 1, i32 noundef 0) #3 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !37
  %i.aq = tail call ptr @cs_malloc(i32 noundef %i.f, i64 noundef 8) #3 ; 4 uses
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
  %.0256 = phi i32 [ 0, %.lr.ph257 ], [ %i.fx, %._crit_edge253 ] ; 4 uses
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
  %.0193240 = phi i32 [ %i.f, %.lr.ph242.preheader ], [ %.1194.lcssa, %bb.k ] ; 3 uses
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

.preheader:                                       ; preds = %.lr.ph232
  %i.cm = trunc nuw i64 %indvars.iv.next to i32
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph235.preheader, label %._crit_edge236

.lr.ph235.preheader:                              ; preds = %.preheader
  %i.co = sext i32 %.0193240 to i64               ; 5 uses
  %min.iters.check = icmp ult i64 %indvars.iv, 7
  br i1 %min.iters.check, label %.lr.ph235.preheader312, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph235.preheader
  %i.cp = sub i64 %indvars.iv, %i.co
  %reass.sub = shl i64 %i.cp, 2
  %diff.check = icmp ult i64 %reass.sub, 28
  br i1 %diff.check, label %.lr.ph235.preheader312, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv.next, 2147483640   ; 3 uses
  %i.cq = sub nsw i64 %i.co, %n.vec               ; 2 uses
  %2 = and i64 %indvars.iv.next, 7
  %invariant.gep = getelementptr [4 x i8], ptr %i.aj, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cr = sub i64 %indvars.iv, %index
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -12
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ct, align 4, !tbaa !39
  %wide.load309 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !39
  %i.cv = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cv ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.cx = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.cw, align 4, !tbaa !39
  store <4 x i32> %wide.load309, ptr %i.cx, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv.next, %n.vec
  br i1 %cmp.n, label %._crit_edge236.loopexit, label %.lr.ph235.preheader312

.lr.ph235.preheader312:                           ; preds = %vector.memcheck, %.lr.ph235.preheader, %middle.block
  %indvars.iv270.ph = phi i64 [ %i.co, %vector.memcheck ], [ %i.co, %.lr.ph235.preheader ], [ %i.cq, %middle.block ]
  %indvars.iv268.ph = phi i64 [ %indvars.iv.next, %vector.memcheck ], [ %indvars.iv.next, %.lr.ph235.preheader ], [ %2, %middle.block ]
  br label %.lr.ph235

.lr.ph232:                                        ; preds = %.lr.ph242, %.lr.ph232
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph232 ], [ 0, %.lr.ph242 ] ; 5 uses
  %i.cz = phi ptr [ %i.de, %.lr.ph232 ], [ %i.cj, %.lr.ph242 ]
  %i.da = phi i64 [ %i.dd, %.lr.ph232 ], [ %i.ci, %.lr.ph242 ]
  %.1203230 = phi i32 [ %.1203, %.lr.ph232 ], [ %.1203227, %.lr.ph242 ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 7 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  store i32 %.1203230, ptr %i.db, align 4, !tbaa !39
  store i32 %i.bn, ptr %i.cz, align 4, !tbaa !39
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.da
  %.1203 = load i32, ptr %i.dc, align 4, !tbaa !39 ; 2 uses
  %i.dd = sext i32 %.1203 to i64                  ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !39
  %i.dg = zext i32 %i.df to i64
  %.not219 = icmp eq i64 %indvars.iv289, %i.dg
  br i1 %.not219, label %.preheader, label %.lr.ph232, !llvm.loop !9

.lr.ph235:                                        ; preds = %.lr.ph235.preheader312, %.lr.ph235
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %.lr.ph235 ], [ %indvars.iv270.ph, %.lr.ph235.preheader312 ]
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %.lr.ph235 ], [ %indvars.iv268.ph, %.lr.ph235.preheader312 ] ; 2 uses
  %indvars.iv.next269 = add nsw i64 %indvars.iv268, -1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next269
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !39
  %indvars.iv.next271 = add nsw i64 %indvars.iv270, -1 ; 3 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv.next271
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !39
  %i.dk = icmp samesign ugt i64 %indvars.iv268, 1
  br i1 %i.dk, label %.lr.ph235, label %._crit_edge236.loopexit, !llvm.loop !10

._crit_edge236.loopexit:                          ; preds = %.lr.ph235, %middle.block
  %indvars.iv.next271.lcssa = phi i64 [ %i.cq, %middle.block ], [ %indvars.iv.next271, %.lr.ph235 ]
  %i.dl = trunc nsw i64 %indvars.iv.next271.lcssa to i32
  br label %._crit_edge236

._crit_edge236:                                   ; preds = %.lr.ph242, %._crit_edge236.loopexit, %.preheader
  %.1194.lcssa = phi i32 [ %.0193240, %.preheader ], [ %i.dl, %._crit_edge236.loopexit ], [ %.0193240, %.lr.ph242 ] ; 3 uses
  %i.dm = load i32, ptr %i.ce, align 4, !tbaa !39
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !39 ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv275
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !33
  %i.ds = sext i32 %i.dp to i64                   ; 3 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ds
  store double %i.dr, ptr %i.dt, align 8, !tbaa !33
  %i.du = icmp slt i64 %indvars.iv289, %i.ds
  br i1 %i.du, label %bb.i, label %bb.k

bb.i:                                             ; preds = %._crit_edge236
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ds ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !39
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp sgt i64 %indvars.iv289, %i.dx
  br i1 %i.dy, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dz = add nsw i32 %.1196239, 1
  %i.ea = sext i32 %.1196239 to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.ea
  store i32 %i.dp, ptr %i.eb, align 4, !tbaa !39
  store i32 %i.bn, ptr %i.dv, align 4, !tbaa !39
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge236, %bb.i, %bb.j
  %.2 = phi i32 [ %i.dz, %bb.j ], [ %.1196239, %bb.i ], [ %.1196239, %._crit_edge236 ] ; 3 uses
  %indvars.iv.next276 = add nsw i64 %indvars.iv275, 1 ; 2 uses
  %i.ec = load i32, ptr %i.bx, align 4, !tbaa !39
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp slt i64 %indvars.iv.next276, %i.ed
  br i1 %i.ee, label %.lr.ph242, label %.preheader221, !llvm.loop !11

.preheader220.loopexit:                           ; preds = %bb.m
  %i.ef = trunc nsw i64 %indvars.iv.next279 to i32
  br label %.preheader220

.preheader220:                                    ; preds = %bb.h, %.preheader220.loopexit, %.preheader221
  %.3.lcssa = phi i32 [ %.2, %.preheader221 ], [ %.4, %.preheader220.loopexit ], [ %i.bo, %bb.h ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0256, %.preheader221 ], [ %i.ef, %.preheader220.loopexit ], [ %.0256, %bb.h ] ; 2 uses
  %i.eg = icmp slt i32 %.0195255, %.3.lcssa
  br i1 %i.eg, label %.lr.ph252.preheader, label %._crit_edge253

.lr.ph252.preheader:                              ; preds = %.preheader220
  %wide.trip.count = sext i32 %.3.lcssa to i64    ; 3 uses
  %i.eh = sub nsw i64 %wide.trip.count, %i.bp
  %xtraiter = and i64 %i.eh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph252.prol.loopexit, label %.lr.ph252.prol

.lr.ph252.prol:                                   ; preds = %.lr.ph252.preheader
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bp
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !39
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ek ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !33
  %i.en = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bp
  store double %i.em, ptr %i.en, align 8, !tbaa !33
  store double 0.000000e+00, ptr %i.el, align 8, !tbaa !33
  %indvars.iv.next286.prol = add nsw i64 %i.bp, 1
  br label %.lr.ph252.prol.loopexit

.lr.ph252.prol.loopexit:                          ; preds = %.lr.ph252.prol, %.lr.ph252.preheader
  %indvars.iv285.unr = phi i64 [ %i.bp, %.lr.ph252.preheader ], [ %indvars.iv.next286.prol, %.lr.ph252.prol ]
  %i.eo = add nsw i64 %wide.trip.count, -1
  %i.ep = icmp eq i64 %i.eo, %i.bp
  br i1 %i.ep, label %._crit_edge253, label %.lr.ph252

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %bb.m
  %indvars.iv280 = phi i64 [ %i.cd, %.lr.ph248.preheader ], [ %indvars.iv.next281, %bb.m ] ; 2 uses
  %indvars.iv278 = phi i64 [ %i.cc, %.lr.ph248.preheader ], [ %indvars.iv.next279, %bb.m ] ; 3 uses
  %.3246 = phi i32 [ %.2, %.lr.ph248.preheader ], [ %.4, %bb.m ] ; 2 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv280
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !39 ; 4 uses
  %i.es = sext i32 %i.er to i64                   ; 3 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !33
  %i.ev = tail call i32 @cs_happly(ptr noundef nonnull %i.an, i32 noundef %i.er, double noundef %i.eu, ptr noundef nonnull %i.ad) #3 ; 0 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv278
  store i32 %i.er, ptr %i.ew, align 4, !tbaa !39
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.es ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !33
  %indvars.iv.next279 = add nsw i64 %indvars.iv278, 1 ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %indvars.iv278
  store double %i.ey, ptr %i.ez, align 8, !tbaa !33
  store double 0.000000e+00, ptr %i.ex, align 8, !tbaa !33
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.es
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !39
  %i.fc = zext i32 %i.fb to i64
  %i.fd = icmp eq i64 %indvars.iv289, %i.fc
  br i1 %i.fd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph248
  %i.fe = tail call i32 @cs_scatter(ptr noundef nonnull %i.an, i32 noundef %i.er, double noundef 0.000000e+00, ptr noundef nonnull %i.ac, ptr noundef null, i32 noundef %i.bn, ptr noundef nonnull %i.an, i32 noundef %.3246) #3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph248, %bb.l
  %.4 = phi i32 [ %i.fe, %bb.l ], [ %.3246, %.lr.ph248 ] ; 2 uses
  %indvars.iv.next281 = add nsw i64 %indvars.iv280, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next281 to i32
  %exitcond.not = icmp eq i32 %i.f, %lftr.wideiv
  br i1 %exitcond.not, label %.preheader220.loopexit, label %.lr.ph248, !llvm.loop !12

.lr.ph252:                                        ; preds = %.lr.ph252.prol.loopexit, %.lr.ph252
  %indvars.iv285 = phi i64 [ %indvars.iv.next286.1, %.lr.ph252 ], [ %indvars.iv285.unr, %.lr.ph252.prol.loopexit ] ; 4 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv285
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !39
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.fh ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !33
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv285
  store double %i.fj, ptr %i.fk, align 8, !tbaa !33
  store double 0.000000e+00, ptr %i.fi, align 8, !tbaa !33
  %indvars.iv.next286 = add nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv.next286
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !39
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.fn ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !33
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv.next286
  store double %i.fp, ptr %i.fq, align 8, !tbaa !33
  store double 0.000000e+00, ptr %i.fo, align 8, !tbaa !33
  %indvars.iv.next286.1 = add nsw i64 %indvars.iv285, 2 ; 2 uses
  %exitcond288.not.1 = icmp eq i64 %indvars.iv.next286.1, %wide.trip.count
  br i1 %exitcond288.not.1, label %._crit_edge253, label %.lr.ph252, !llvm.loop !13

._crit_edge253:                                   ; preds = %.lr.ph252.prol.loopexit, %.lr.ph252, %.preheader220
  %i.fr = sext i32 %.1.lcssa to i64               ; 2 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.fr
  store i32 %i.bn, ptr %i.fs, align 4, !tbaa !39
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bp
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv289
  %i.fv = sub nsw i32 %.3.lcssa, %.0195255
  %i.fw = tail call double @cs_house(ptr noundef %i.ft, ptr noundef nonnull %i.fu, i32 noundef %i.fv) #3
  %i.fx = add nsw i32 %.1.lcssa, 1                ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.fr
  store double %i.fw, ptr %i.fy, align 8, !tbaa !33
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292
  br i1 %exitcond293.not, label %._crit_edge258, label %bb.f, !llvm.loop !14

._crit_edge258:                                   ; preds = %._crit_edge253, %.preheader222
  %.0195.lcssa = phi i32 [ 0, %.preheader222 ], [ %.3.lcssa, %._crit_edge253 ]
  %.0.lcssa = phi i32 [ 0, %.preheader222 ], [ %i.fx, %._crit_edge253 ]
  %i.fz = sext i32 %i.f to i64                    ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.fz
  store i32 %.0.lcssa, ptr %i.ga, align 4, !tbaa !39
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.fz
  store i32 %.0195.lcssa, ptr %i.gb, align 4, !tbaa !39
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.c, %._crit_edge258
  %.sink = phi i32 [ 1, %._crit_edge258 ], [ 0, %bb.c ], [ 0, %._crit_edge ]
  %i.gc = tail call ptr @cs_ndone(ptr noundef %i.ae, ptr noundef null, ptr noundef %i.ac, ptr noundef %i.ad, i32 noundef %.sink) #3
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.0204 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.gc, %.sink.split ]
  ret ptr %.0204
}

declare ptr @cs_malloc(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @cs_calloc(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @cs_ndone(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

end_hunk_0
