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
  %.fr52.i = freeze i32 %i.aa                     ; 9 uses
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
  %i.bb = shl i32 %.fr52.i, 2
  %i.bc = shl nuw i32 %.fr52.i, 1
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = zext i32 %i.bb to i64                   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.fr52.i to i64 ; 4 uses
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = mul nsw i64 %i.ba, -8
  %i.bh = shl nuw nsw i64 %i.bd, 3                ; 2 uses
  %i.bi = shl nsw i64 %i.ba, 3
  %i.bj = add i64 %i.bf, %i.an                    ; 2 uses
  %min.iters.check = icmp ult i32 %.fr52.i, 16
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %lcmp.mod.not = trunc i32 %.fr52.i to i1
  %i.bk = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next59.i, %._crit_edge.us.i ] ; 4 uses
  %.04147.us.i = phi ptr [ %i.am, %.lr.ph.us.preheader.i ], [ %i.dn, %._crit_edge.us.i ] ; 7 uses
  %.04346.us.i = phi ptr [ %i.ar, %.lr.ph.us.preheader.i ], [ %i.do, %._crit_edge.us.i ] ; 3 uses
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
  %i.ci = add i64 %i.ch, -1
  %diff.check60 = icmp ult i64 %i.ci, 31
  %i.cj = add i64 %i.cd, %i.an
  %i.ck = add i64 %i.bh, %i.cc
  %i.cl = sub i64 %i.ck, %i.cj
  %diff.check61 = icmp ugt i64 %i.cl, -32
  %conflict.rdx62 = or i1 %diff.check60, %diff.check61
  %i.cm = sub i64 %i.cc, %i.ce
  %diff.check63 = icmp ugt i64 %i.cm, -32
  %conflict.rdx64 = or i1 %conflict.rdx62, %diff.check63
  %i.cn = add i64 %i.bj, %i.cd
  %i.co = add i64 %i.bh, %i.cc
  %i.cp = sub i64 %i.co, %i.cn
  %diff.check65 = icmp ugt i64 %i.cp, -32
  %conflict.rdx66 = or i1 %conflict.rdx64, %diff.check65
  br i1 %conflict.rdx66, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load = load <2 x ptr>, ptr %i.cq, align 8, !tbaa !57
  %wide.load67 = load <2 x ptr>, ptr %i.cr, align 8, !tbaa !57
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.04147.us.i, i64 %index ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <2 x ptr> %wide.load, ptr %i.cs, align 8, !tbaa !57
  store <2 x ptr> %wide.load67, ptr %i.ct, align 8, !tbaa !57
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load68 = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !57
  %wide.load69 = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !57
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep62.i, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <2 x ptr> %wide.load68, ptr %i.cw, align 8, !tbaa !57
  store <2 x ptr> %wide.load69, ptr %i.cx, align 8, !tbaa !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us.i, %middle.block
  %indvars.iv55.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.i ], [ %n.vec, %middle.block ] ; 7 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv55.i.ph
  %i.cz = load ptr, ptr %gep.i.prol, align 8, !tbaa !57
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.04147.us.i, i64 %indvars.iv55.i.ph
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !57
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv55.i.ph
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !57
  %gep63.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep62.i, i64 %indvars.iv55.i.ph
  store ptr %i.dc, ptr %gep63.i.prol, align 8, !tbaa !57
  %indvars.iv.next56.i.prol = or disjoint i64 %indvars.iv55.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv55.i.unr = phi i64 [ %indvars.iv55.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next56.i.prol, %scalar.ph.prol ]
  %i.dd = icmp eq i64 %indvars.iv55.i.ph, %i.bk
  br i1 %i.dd, label %._crit_edge.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i.1, %scalar.ph ], [ %indvars.iv55.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv55.i
  %i.de = load ptr, ptr %gep.i, align 8, !tbaa !57
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.04147.us.i, i64 %indvars.iv55.i
  store ptr %i.de, ptr %i.df, align 8, !tbaa !57
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv55.i
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !57
  %gep63.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep62.i, i64 %indvars.iv55.i
  store ptr %i.dh, ptr %gep63.i, align 8, !tbaa !57
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 4 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next56.i
  %i.di = load ptr, ptr %gep.i.1, align 8, !tbaa !57
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.04147.us.i, i64 %indvars.iv.next56.i
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !57
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next56.i
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !57
  %gep63.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep62.i, i64 %indvars.iv.next56.i
  store ptr %i.dl, ptr %gep63.i.1, align 8, !tbaa !57
  %indvars.iv.next56.i.1 = add nuw nsw i64 %indvars.iv55.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next56.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !63

._crit_edge.us.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv58.i
  store ptr %i.cb, ptr %i.dm, align 8, !tbaa !64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.04147.us.i, i64 %i.ba
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.04346.us.i, i64 96
  %i.dp = load i32, ptr %i.ag, align 4, !tbaa !49
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next59.i, %i.dq
  br i1 %i.dr, label %.lr.ph.us.i, label %create_context_buffer.exit, !llvm.loop !66

.lr.ph50.split.i:                                 ; preds = %.lr.ph50.i, %.lr.ph50.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph50.split.i ], [ 0, %.lr.ph50.i ] ; 2 uses
  %.04147.i = phi ptr [ %i.ek, %.lr.ph50.split.i ], [ %i.am, %.lr.ph50.i ] ; 2 uses
  %.04346.i = phi ptr [ %i.el, %.lr.ph50.split.i ], [ %i.ar, %.lr.ph50.i ] ; 3 uses
  %i.ds = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !52
  %i.dv = getelementptr inbounds nuw i8, ptr %.04346.i, i64 28
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !53
  %i.dx = zext i32 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, %i.as
  %i.dz = load i32, ptr %i.at, align 4, !tbaa !55
  %i.ea = sext i32 %i.dz to i64
  %i.eb = mul nsw i64 %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %.04346.i, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !56
  %i.ee = sext i32 %i.ed to i64
  %i.ef = sdiv i64 %i.eb, %i.ee
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = tail call ptr %i.du(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.eg, i32 noundef %i.au) #4, !inline_history !50
  %i.ei = getelementptr inbounds [8 x i8], ptr %.04147.i, i64 %i.av ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ei, ptr align 8 %i.eh, i64 %i.ax, i1 false)
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !64
  %i.ek = getelementptr inbounds [8 x i8], ptr %.04147.i, i64 %i.ba
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.04346.i, i64 96
  %i.em = load i32, ptr %i.ag, align 4, !tbaa !49
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv.next.i, %i.en
  br i1 %i.eo, label %.lr.ph50.split.i, label %create_context_buffer.exit, !llvm.loop !66

bb.h:                                             ; preds = %bb.f
  store ptr @pre_process_data, ptr %i.y, align 8, !tbaa !47
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !49
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph, label %create_context_buffer.exit

.lr.ph:                                           ; preds = %bb.h
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !51
  %i.eu = select i1 %.not, i64 3, i64 0
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ex = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.04148 = phi ptr [ %i.et, %.lr.ph ], [ %i.fq, %bb.i ] ; 3 uses
  %i.ey = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !52
  %i.fb = getelementptr inbounds nuw i8, ptr %.04148, i64 28
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !53
  %i.fd = zext i32 %i.fc to i64
  %i.fe = shl nuw nsw i64 %i.fd, %i.eu
  %i.ff = load i32, ptr %i.ev, align 4, !tbaa !55
  %i.fg = sext i32 %i.ff to i64
  %i.fh = mul nsw i64 %i.fe, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %.04148, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !56
  %i.fk = sext i32 %i.fj to i64
  %i.fl = sdiv i64 %i.fh, %i.fk
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = load i32, ptr %i.ew, align 8, !tbaa !48
  %i.fo = tail call ptr %i.fa(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.fm, i32 noundef %i.fn) #4
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.04148, i64 96
  %i.fr = load i32, ptr %i.ep, align 4, !tbaa !49
  %i.fs = sext i32 %i.fr to i64
  %i.ft = icmp slt i64 %indvars.iv.next, %i.fs
  br i1 %i.ft, label %bb.i, label %create_context_buffer.exit, !llvm.loop !67

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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !48
  %i.e = mul nsw i32 %i.d, 3                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 4 uses
  %i.g = load i32, ptr %5, align 4, !tbaa !3
  %i.h = icmp ult i32 %i.g, %6
  br i1 %i.h, label %.lr.ph88, label %._crit_edge89

.lr.ph88:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 124 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph88, %bb.l
  %i.r = load i32, ptr %2, align 4, !tbaa !3      ; 3 uses
  %i.s = icmp ult i32 %i.r, %3
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = sub nuw i32 %3, %i.r
  %i.u = load i32, ptr %i.j, align 4, !tbaa !72
  %i.v = load i32, ptr %i.i, align 4, !tbaa !70   ; 2 uses
end_hunk_0
