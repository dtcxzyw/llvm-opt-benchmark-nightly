Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jcprepct-16?download=true
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !66   ; 3 uses
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
  store i32 15, ptr %i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 %i.f, ptr %i.j, align 4, !tbaa !67
  %i.k = load ptr, ptr %0, align 8, !tbaa !29
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  tail call void %i.l(ptr noundef nonnull %0) #4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %bb.c
  %.not44 = icmp eq i32 %1, 0
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 4, ptr %i.n, align 8, !tbaa !34
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !35
  tail call void %i.o(ptr noundef nonnull %0) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = tail call ptr %i.r(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 128) #4 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.s, ptr %i.t, align 8, !tbaa !36
  store ptr @start_pass_prep, ptr %i.s, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !72
  %.not45 = icmp eq i32 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  br i1 %.not45, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @pre_process_context, ptr %i.y, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !41
  %.fr52.i = freeze i32 %i.aa                     ; 8 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !28
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !42
  %i.ai = mul i32 %.fr52.i, 5                     ; 2 uses
  %i.aj = mul i32 %i.ah, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = tail call ptr %i.af(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.al) #4, !inline_history !61 ; 3 uses
  %i.an = ptrtoaddr ptr %i.am to i64              ; 3 uses
  %i.ao = load i32, ptr %i.ag, align 4, !tbaa !42
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph50.i, label %create_context_buffer.exit

.lr.ph50.i:                                       ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !43 ; 2 uses
  %.not.i = icmp eq i32 %i.ad, 0
  %i.as = select i1 %.not.i, i64 3, i64 0         ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
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
  %wide.trip.count.i = zext nneg i32 %.fr52.i to i64 ; 5 uses
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add i64 %i.bf, %i.an                    ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bd, 3                ; 2 uses
  %2 = shl nsw i64 %i.ba, 3
  %3 = mul nsw i64 %i.ba, -8
  %min.iters.check = icmp ult i32 %.fr52.i, 16
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bi = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next59.i, %._crit_edge.us.i ] ; 4 uses
  %.048.us.i = phi ptr [ %i.am, %.lr.ph.us.preheader.i ], [ %i.dh, %._crit_edge.us.i ] ; 7 uses
  %.04147.us.i = phi ptr [ %i.ar, %.lr.ph.us.preheader.i ], [ %i.di, %._crit_edge.us.i ] ; 3 uses
  %i.bj = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %.04147.us.i, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !45
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, %i.as
  %i.bq = load i32, ptr %i.at, align 8, !tbaa !75
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul nsw i64 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.04147.us.i, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !76
  %i.bv = sext i32 %i.bu to i64
  %i.bw = sdiv i64 %i.bs, %i.bv
  %i.bx = trunc i64 %i.bw to i32
  %i.by = tail call ptr %i.bl(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.bx, i32 noundef %i.au) #4, !inline_history !61 ; 7 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.048.us.i, i64 %i.av ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr align 8 %i.by, i64 %i.ax, i1 false)
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bd ; 4 uses
  %invariant.gep62.i = getelementptr inbounds nuw [8 x i8], ptr %.048.us.i, i64 %i.be ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.i
  %i.ca = ptrtoaddr ptr %i.by to i64              ; 4 uses
  %i.cb = mul i64 %indvars.iv58.i, %3
  %4 = sub i64 %i.cb, %i.an
  %i.cc = add i64 %4, %i.ca
  %5 = add i64 %i.cc, -1
  %diff.check67 = icmp ult i64 %5, 31
  %i.cd = mul i64 %indvars.iv58.i, %2             ; 3 uses
  %i.ce = add i64 %i.cd, %i.an
  %i.cf = add i64 %i.bh, %i.ca
  %6 = sub i64 %i.cf, %i.ce
  %diff.check68 = icmp ugt i64 %6, -32
  %conflict.rdx69 = or i1 %diff.check67, %diff.check68
  %i.cg = add i64 %i.bg, %i.cd
  %i.ch = sub i64 %i.ca, %i.cg
  %diff.check70 = icmp ugt i64 %i.ch, -32
  %conflict.rdx71 = or i1 %conflict.rdx69, %diff.check70
  %7 = add i64 %i.bg, %i.cd
  %i.ci = add i64 %i.bh, %i.ca
  %i.cj = sub i64 %i.ci, %7
  %diff.check72 = icmp ugt i64 %i.cj, -32
  %conflict.rdx73 = or i1 %conflict.rdx71, %diff.check72
  br i1 %conflict.rdx73, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !78
  %wide.load74 = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !78
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.048.us.i, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <2 x ptr> %wide.load, ptr %i.cm, align 8, !tbaa !78
  store <2 x ptr> %wide.load74, ptr %i.cn, align 8, !tbaa !78
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load75 = load <2 x ptr>, ptr %i.co, align 8, !tbaa !78
  %wide.load76 = load <2 x ptr>, ptr %i.cp, align 8, !tbaa !78
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep62.i, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <2 x ptr> %wide.load75, ptr %i.cq, align 8, !tbaa !78
  store <2 x ptr> %wide.load76, ptr %i.cr, align 8, !tbaa !78
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us.i, %middle.block
  %indvars.iv55.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.i ], [ %n.vec, %middle.block ] ; 7 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv55.i.ph
  %i.ct = load ptr, ptr %gep.i.prol, align 8, !tbaa !78
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.048.us.i, i64 %indvars.iv55.i.ph
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !78
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv55.i.ph
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !78
  %gep63.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep62.i, i64 %indvars.iv55.i.ph
  store ptr %i.cw, ptr %gep63.i.prol, align 8, !tbaa !78
  %indvars.iv.next56.i.prol = or disjoint i64 %indvars.iv55.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv55.i.unr = phi i64 [ %indvars.iv55.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next56.i.prol, %scalar.ph.prol ]
  %i.cx = icmp eq i64 %indvars.iv55.i.ph, %i.bi
  br i1 %i.cx, label %._crit_edge.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i.1, %scalar.ph ], [ %indvars.iv55.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv55.i
  %i.cy = load ptr, ptr %gep.i, align 8, !tbaa !78
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.048.us.i, i64 %indvars.iv55.i
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !78
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv55.i
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !78
  %gep63.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep62.i, i64 %indvars.iv55.i
  store ptr %i.db, ptr %gep63.i, align 8, !tbaa !78
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 4 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next56.i
  %i.dc = load ptr, ptr %gep.i.1, align 8, !tbaa !78
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.048.us.i, i64 %indvars.iv.next56.i
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !78
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next56.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !78
  %gep63.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep62.i, i64 %indvars.iv.next56.i
  store ptr %i.df, ptr %gep63.i.1, align 8, !tbaa !78
  %indvars.iv.next56.i.1 = add nuw nsw i64 %indvars.iv55.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next56.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !63

._crit_edge.us.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv58.i
  store ptr %i.bz, ptr %i.dg, align 8, !tbaa !48
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.048.us.i, i64 %i.ba
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.04147.us.i, i64 96
  %i.dj = load i32, ptr %i.ag, align 4, !tbaa !42
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next59.i, %i.dk
  br i1 %i.dl, label %.lr.ph.us.i, label %create_context_buffer.exit, !llvm.loop !64

.lr.ph50.split.i:                                 ; preds = %.lr.ph50.i, %.lr.ph50.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph50.split.i ], [ 0, %.lr.ph50.i ] ; 2 uses
  %.048.i = phi ptr [ %i.ee, %.lr.ph50.split.i ], [ %i.am, %.lr.ph50.i ] ; 2 uses
  %.04147.i = phi ptr [ %i.ef, %.lr.ph50.split.i ], [ %i.ar, %.lr.ph50.i ] ; 3 uses
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !74
  %i.dp = getelementptr inbounds nuw i8, ptr %.04147.i, i64 28
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !45
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, %i.as
  %i.dt = load i32, ptr %i.at, align 8, !tbaa !75
  %i.du = sext i32 %i.dt to i64
  %i.dv = mul nsw i64 %i.ds, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %.04147.i, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !76
  %i.dy = sext i32 %i.dx to i64
  %i.dz = sdiv i64 %i.dv, %i.dy
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = tail call ptr %i.do(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.ea, i32 noundef %i.au) #4, !inline_history !61
  %i.ec = getelementptr inbounds [8 x i8], ptr %.048.i, i64 %i.av ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ec, ptr align 8 %i.eb, i64 %i.ax, i1 false)
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !48
  %i.ee = getelementptr inbounds [8 x i8], ptr %.048.i, i64 %i.ba
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.04147.i, i64 96
  %i.eg = load i32, ptr %i.ag, align 4, !tbaa !42
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp slt i64 %indvars.iv.next.i, %i.eh
  br i1 %i.ei, label %.lr.ph50.split.i, label %create_context_buffer.exit, !llvm.loop !64

bb.h:                                             ; preds = %bb.f
  store ptr @pre_process_data, ptr %i.y, align 8, !tbaa !73
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !42
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.lr.ph, label %create_context_buffer.exit

.lr.ph:                                           ; preds = %bb.h
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !43
  %i.eo = select i1 %.not, i64 3, i64 0
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.er = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.049 = phi ptr [ %i.en, %.lr.ph ], [ %i.fk, %bb.i ] ; 3 uses
  %i.es = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !74
  %i.ev = getelementptr inbounds nuw i8, ptr %.049, i64 28
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !45
  %i.ex = zext i32 %i.ew to i64
  %i.ey = shl nuw nsw i64 %i.ex, %i.eo
  %i.ez = load i32, ptr %i.ep, align 8, !tbaa !75
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul nsw i64 %i.ey, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %.049, i64 8
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !76
  %i.fe = sext i32 %i.fd to i64
  %i.ff = sdiv i64 %i.fb, %i.fe
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = load i32, ptr %i.eq, align 4, !tbaa !41
  %i.fi = tail call ptr %i.eu(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.fg, i32 noundef %i.fh) #4
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.049, i64 96
  %i.fl = load i32, ptr %i.ej, align 4, !tbaa !42
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp slt i64 %indvars.iv.next, %i.fm
  br i1 %i.fn, label %bb.i, label %create_context_buffer.exit, !llvm.loop !65

create_context_buffer.exit:                       ; preds = %.lr.ph50.split.i, %._crit_edge.us.i, %bb.i, %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_prep(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 4 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 4, ptr %i.d, align 8, !tbaa !34
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !35
  tail call void %i.e(ptr noundef nonnull %0) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %i.g, ptr %i.h, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  store i32 0, ptr %i.i, align 4, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 0, ptr %i.j, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.l = load i32, ptr %i.k, align 4, !tbaa !41
  %i.m = shl nsw i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 %i.m, ptr %i.n, align 4, !tbaa !53
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pre_process_context(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) #0 {
end_hunk_0
