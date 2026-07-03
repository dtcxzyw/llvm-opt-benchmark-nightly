inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @j16init_c_prep_controller(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28   ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.f, -17
  %or.cond = icmp ult i32 %i.g, -4
  br i1 %or.cond, label %.sink.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not43 = icmp eq i32 %i.f, 16
  br i1 %.not43, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 16, ptr %i.i, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 %i.f, ptr %i.j, align 4, !tbaa !35
  %i.k = load ptr, ptr %0, align 8, !tbaa !29
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  tail call void %i.l(ptr noundef nonnull %0) #4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %bb.c
  %.not44 = icmp eq i32 %1, 0
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 3, ptr %i.n, align 8, !tbaa !30
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !36
  tail call void %i.o(ptr noundef nonnull %0) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.s = tail call ptr %i.r(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 128) #4 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.s, ptr %i.t, align 8, !tbaa !40
  store ptr @start_pass_prep, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !45
  %.not45 = icmp eq i32 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  br i1 %.not45, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @pre_process_context, ptr %i.y, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !48
  %.fr52.i = freeze i32 %i.aa                     ; 8 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !26
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !49
  %i.ai = mul i32 %.fr52.i, 5                     ; 2 uses
  %i.aj = mul i32 %i.ah, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = tail call ptr %i.af(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.al) #4, !inline_history !50 ; 3 uses
  %i.an = ptrtoaddr ptr %i.am to i64              ; 3 uses
  %i.ao = load i32, ptr %i.ag, align 4, !tbaa !49
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph50.i, label %create_context_buffer.exit

.lr.ph50.i:                                       ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !51 ; 2 uses
  %.not.i = icmp eq i32 %i.ad, 0
  %i.as = select i1 %.not.i, i64 3, i64 0         ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.au = mul nsw i32 %.fr52.i, 3                 ; 3 uses
  %i.av = sext i32 %.fr52.i to i64                ; 2 uses
  %i.aw = sext i32 %i.au to i64
  %i.ax = shl nsw i64 %i.aw, 3                    ; 2 uses
  %i.ay = icmp sgt i32 %.fr52.i, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ba = sext i32 %i.ai to i64                   ; 4 uses
  br i1 %i.ay, label %.lr.ph.us.preheader.i, label %.lr.ph50.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph50.i
  %i.bb = shl i32 %.fr52.i, 2                     ; 2 uses
  %i.bc = shl nuw i32 %.fr52.i, 1
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = zext i32 %i.bb to i64                   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.fr52.i to i64 ; 5 uses
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = mul nsw i64 %i.ba, -8
  %i.bh = shl nuw nsw i64 %i.bd, 3                ; 2 uses
  %i.bi = shl nsw i64 %i.ba, 3
  %i.bj = add i64 %i.bf, %i.an                    ; 2 uses
  %min.iters.check = icmp ult i32 %.fr52.i, 10
  %diff.check = icmp eq i32 %i.bb, 0
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bk = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next59.i, %._crit_edge.us.i ] ; 4 uses
  %.04147.us.i = phi ptr [ %i.am, %.lr.ph.us.preheader.i ], [ %i.dm, %._crit_edge.us.i ] ; 7 uses
  %.04346.us.i = phi ptr [ %i.ar, %.lr.ph.us.preheader.i ], [ %i.dn, %._crit_edge.us.i ] ; 3 uses
  %i.bl = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !52
  %i.bo = getelementptr inbounds nuw i8, ptr %.04346.us.i, i64 28
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !53
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, %i.as
  %i.bs = load i32, ptr %i.at, align 4, !tbaa !55
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul nsw i64 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.04346.us.i, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !56
  %i.bx = sext i32 %i.bw to i64
  %i.by = sdiv i64 %i.bu, %i.bx
  %i.bz = trunc i64 %i.by to i32
  %i.ca = tail call ptr %i.bn(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.bz, i32 noundef %i.au) #4, !inline_history !50 ; 7 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.04147.us.i, i64 %i.av ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr align 8 %i.ca, i64 %i.ax, i1 false)
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bd ; 4 uses
  %invariant.gep62.i = getelementptr inbounds nuw [8 x i8], ptr %.04147.us.i, i64 %i.be ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.i
  %i.cc = ptrtoaddr ptr %i.ca to i64              ; 4 uses
  %i.cd = mul i64 %i.bi, %indvars.iv58.i          ; 3 uses
  %i.ce = add i64 %i.bj, %i.cd
  %i.cf = mul i64 %i.bg, %indvars.iv58.i
  %i.cg = sub i64 %i.cf, %i.an
  %i.ch = add i64 %i.cg, %i.cc
  %diff.check60 = icmp ult i64 %i.ch, 32
  %conflict.rdx = or i1 %diff.check, %diff.check60
  %i.ci = add i64 %i.cd, %i.an
  %i.cj = add i64 %i.bh, %i.cc
  %i.ck = sub i64 %i.ci, %i.cj
  %diff.check61 = icmp ult i64 %i.ck, 32
  %conflict.rdx62 = or i1 %conflict.rdx, %diff.check61
  %i.cl = sub i64 %i.ce, %i.cc
  %diff.check63 = icmp ult i64 %i.cl, 32
  %conflict.rdx64 = or i1 %conflict.rdx62, %diff.check63
  %i.cm = add i64 %i.bj, %i.cd
  %i.cn = add i64 %i.bh, %i.cc
  %i.co = sub i64 %i.cm, %i.cn
  %diff.check65 = icmp ult i64 %i.co, 32
  %conflict.rdx66 = or i1 %conflict.rdx64, %diff.check65
  br i1 %conflict.rdx66, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load = load <2 x ptr>, ptr %i.cp, align 8, !tbaa !57
  %wide.load67 = load <2 x ptr>, ptr %i.cq, align 8, !tbaa !57
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.04147.us.i, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <2 x ptr> %wide.load, ptr %i.cr, align 8, !tbaa !57
  store <2 x ptr> %wide.load67, ptr %i.cs, align 8, !tbaa !57
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load68 = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !57
  %wide.load69 = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !57
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep62.i, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <2 x ptr> %wide.load68, ptr %i.cv, align 8, !tbaa !57
  store <2 x ptr> %wide.load69, ptr %i.cw, align 8, !tbaa !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us.i, %middle.block
  %indvars.iv55.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.i ], [ %n.vec, %middle.block ] ; 7 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv55.i.ph
  %i.cy = load ptr, ptr %gep.i.prol, align 8, !tbaa !57
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.04147.us.i, i64 %indvars.iv55.i.ph
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !57
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv55.i.ph
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !57
  %gep63.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep62.i, i64 %indvars.iv55.i.ph
  store ptr %i.db, ptr %gep63.i.prol, align 8, !tbaa !57
  %indvars.iv.next56.i.prol = or disjoint i64 %indvars.iv55.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv55.i.unr = phi i64 [ %indvars.iv55.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next56.i.prol, %scalar.ph.prol ]
  %i.dc = icmp eq i64 %indvars.iv55.i.ph, %i.bk
  br i1 %i.dc, label %._crit_edge.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i.1, %scalar.ph ], [ %indvars.iv55.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv55.i
  %i.dd = load ptr, ptr %gep.i, align 8, !tbaa !57
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.04147.us.i, i64 %indvars.iv55.i
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !57
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv55.i
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !57
  %gep63.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep62.i, i64 %indvars.iv55.i
  store ptr %i.dg, ptr %gep63.i, align 8, !tbaa !57
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 4 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next56.i
  %i.dh = load ptr, ptr %gep.i.1, align 8, !tbaa !57
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.04147.us.i, i64 %indvars.iv.next56.i
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !57
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next56.i
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !57
  %gep63.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep62.i, i64 %indvars.iv.next56.i
  store ptr %i.dk, ptr %gep63.i.1, align 8, !tbaa !57
  %indvars.iv.next56.i.1 = add nuw nsw i64 %indvars.iv55.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next56.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !63

._crit_edge.us.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv58.i
  store ptr %i.cb, ptr %i.dl, align 8, !tbaa !64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.04147.us.i, i64 %i.ba
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.04346.us.i, i64 96
  %i.do = load i32, ptr %i.ag, align 4, !tbaa !49
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next59.i, %i.dp
  br i1 %i.dq, label %.lr.ph.us.i, label %create_context_buffer.exit, !llvm.loop !66

.lr.ph50.split.i:                                 ; preds = %.lr.ph50.i, %.lr.ph50.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph50.split.i ], [ 0, %.lr.ph50.i ] ; 2 uses
  %.04147.i = phi ptr [ %i.ej, %.lr.ph50.split.i ], [ %i.am, %.lr.ph50.i ] ; 2 uses
  %.04346.i = phi ptr [ %i.ek, %.lr.ph50.split.i ], [ %i.ar, %.lr.ph50.i ] ; 3 uses
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !52
  %i.du = getelementptr inbounds nuw i8, ptr %.04346.i, i64 28
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !53
  %i.dw = zext i32 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dw, %i.as
  %i.dy = load i32, ptr %i.at, align 4, !tbaa !55
  %i.dz = sext i32 %i.dy to i64
  %i.ea = mul nsw i64 %i.dx, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %.04346.i, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !56
  %i.ed = sext i32 %i.ec to i64
  %i.ee = sdiv i64 %i.ea, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = tail call ptr %i.dt(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.ef, i32 noundef %i.au) #4, !inline_history !50
  %i.eh = getelementptr inbounds [8 x i8], ptr %.04147.i, i64 %i.av ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.eh, ptr align 8 %i.eg, i64 %i.ax, i1 false)
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !64
  %i.ej = getelementptr inbounds [8 x i8], ptr %.04147.i, i64 %i.ba
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.04346.i, i64 96
  %i.el = load i32, ptr %i.ag, align 4, !tbaa !49
  %i.em = sext i32 %i.el to i64
  %i.en = icmp slt i64 %indvars.iv.next.i, %i.em
  br i1 %i.en, label %.lr.ph50.split.i, label %create_context_buffer.exit, !llvm.loop !66

bb.h:                                             ; preds = %bb.f
  store ptr @pre_process_data, ptr %i.y, align 8, !tbaa !47
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !49
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph, label %create_context_buffer.exit

.lr.ph:                                           ; preds = %bb.h
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !51
  %i.et = select i1 %.not, i64 3, i64 0
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.04148 = phi ptr [ %i.es, %.lr.ph ], [ %i.fp, %bb.i ] ; 3 uses
  %i.ex = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !52
  %i.fa = getelementptr inbounds nuw i8, ptr %.04148, i64 28
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !53
  %i.fc = zext i32 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, %i.et
  %i.fe = load i32, ptr %i.eu, align 4, !tbaa !55
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul nsw i64 %i.fd, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %.04148, i64 8
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !56
  %i.fj = sext i32 %i.fi to i64
  %i.fk = sdiv i64 %i.fg, %i.fj
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = load i32, ptr %i.ev, align 8, !tbaa !48
  %i.fn = tail call ptr %i.ez(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.fl, i32 noundef %i.fm) #4
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.04148, i64 96
  %i.fq = load i32, ptr %i.eo, align 4, !tbaa !49
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next, %i.fr
  br i1 %i.fs, label %bb.i, label %create_context_buffer.exit, !llvm.loop !67

create_context_buffer.exit:                       ; preds = %.lr.ph50.split.i, %._crit_edge.us.i, %bb.i, %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_prep(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 4 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 3, ptr %i.d, align 8, !tbaa !30
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !36
  tail call void %i.e(ptr noundef nonnull %0) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %i.g, ptr %i.h, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  store i32 0, ptr %i.i, align 4, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 0, ptr %i.j, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.l = load i32, ptr %i.k, align 8, !tbaa !48
  %i.m = shl nsw i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 %i.m, ptr %i.n, align 4, !tbaa !72
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pre_process_context(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) #0 {
bb.a:
end_hunk_0
