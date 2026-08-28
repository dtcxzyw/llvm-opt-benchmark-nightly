Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcBlast?download=true
inline.NumInlined: 1166
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Wlc_BlastSqrt:bb.a
  %i.ew = xor i32 %.19397, 1
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv105 ; 3 uses
  %.0.i83 = xor i32 %i.du, 1
  %i.ey = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.0.i83, i32 noundef %.19397) #27 ; 2 uses
  %i.ez = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.du, i32 noundef %i.ew) #27
  %i.fa = xor i32 %i.ey, 1
  %i.fb = xor i32 %i.ez, 1
  %i.fc = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.fa, i32 noundef %i.fb) #27 ; 2 uses
  %i.fd = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef 0, i32 noundef %i.fc) #27 ; 2 uses
  %i.fe = xor i32 %i.fc, 1
  %i.ff = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef 1, i32 noundef %i.fe) #27
  %i.fg = xor i32 %i.fd, 1
  %i.fh = xor i32 %i.ff, 1
  %i.fi = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.fg, i32 noundef %i.fh) #27
  store i32 %i.fi, ptr %i.ex, align 4, !tbaa !8
  %i.fj = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.ey, i32 noundef %i.fd) #27
  %i.fk = load i32, ptr %i.ex, align 4, !tbaa !8
  %i.fl = xor i32 %i.fk, 1
  store i32 %i.fl, ptr %i.ex, align 4, !tbaa !8
  %i.fm = xor i32 %i.fj, 1
  br label %Wlc_BlastFullAdder.exit

Wlc_BlastFullAdder.exit:                          ; preds = %bb.l, %bb.k, %bb.m
  %.294 = phi i32 [ %i.fm, %bb.m ], [ %i.ev, %bb.l ], [ %i.es, %bb.k ]
  %i.fn = add nsw i64 %indvars.iv105, -1
  %i.fo = icmp samesign uge i64 %i.fn, %indvars.iv123
  %i.fp = zext i1 %i.fo to i32
  %spec.select = xor i32 %.294, %i.fp             ; 2 uses
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next106, %indvars.iv119
  br i1 %exitcond111.not, label %.loopexit113, label %.peel.next.peel.newph, !llvm.loop !127

.loopexit113:                                     ; preds = %Wlc_BlastFullAdder.exit, %.peel.next
  %spec.select.lcssa = phi i32 [ %spec.select.peel, %.peel.next ], [ %spec.select, %Wlc_BlastFullAdder.exit ]
  %i.fq = xor i32 %spec.select.lcssa, 1
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.val69, i64 %indvars.iv123 ; 2 uses
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %.loopexit113, %bb.n
  %indvars.iv114 = phi i64 [ 0, %.loopexit113 ], [ %indvars.iv.next115, %bb.n ] ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !8
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv114 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !8
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv114
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !8
  %i.fx = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.fs, i32 noundef %i.fu, i32 noundef %i.fw) #27
  store i32 %i.fx, ptr %i.ft, align 4, !tbaa !8
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %indvars.iv119
  br i1 %exitcond118.not, label %.loopexit, label %bb.n, !llvm.loop !129

._crit_edge:                                      ; preds = %.loopexit, %Vec_IntFill.exit78.thread, %Vec_IntFill.exit78
  %i.fy = phi ptr [ %i.aa, %Vec_IntFill.exit78.thread ], [ %i.af, %Vec_IntFill.exit78 ], [ %i.af, %.loopexit ]
  %i.fz = load i32, ptr %i.o, align 4, !tbaa !28  ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 1
  br i1 %i.ga, label %.lr.ph.i84, label %Vec_IntReverseOrder.exit

.lr.ph.i84:                                       ; preds = %._crit_edge
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !27 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i84
  %indvars.iv.i85 = phi i64 [ 0, %.lr.ph.i84 ], [ %indvars.iv.next.i86, %bb.o ] ; 3 uses
  %i.gc = phi i32 [ %i.fz, %.lr.ph.i84 ], [ %i.gp, %bb.o ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i85 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !8
  %i.gf = trunc nuw nsw i64 %indvars.iv.i85 to i32
  %i.gg = xor i32 %i.gf, -1                       ; 2 uses
  %i.gh = add i32 %i.gc, %i.gg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !8
  store i32 %i.gk, ptr %i.gd, align 4, !tbaa !8
  %i.gl = load i32, ptr %i.o, align 4, !tbaa !28
  %i.gm = add i32 %i.gl, %i.gg
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gn
  store i32 %i.ge, ptr %i.go, align 4, !tbaa !8
  %indvars.iv.next.i86 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %i.gp = load i32, ptr %i.o, align 4, !tbaa !28  ; 2 uses
  %i.gq = sdiv i32 %i.gp, 2
  %i.gr = sext i32 %i.gq to i64
  %i.gs = icmp slt i64 %indvars.iv.next.i86, %i.gr
  br i1 %i.gs, label %bb.o, label %Vec_IntReverseOrder.exit, !llvm.loop !130

Vec_IntReverseOrder.exit:                         ; preds = %bb.o, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_BlastSqrtNR(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((4, 8)) %3, ptr nofree noundef captures(none) initializes((4, 8)) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = sdiv i32 %2, 2                           ; 6 uses
  %i.b = load i32, ptr %4, align 8, !tbaa !26
  %.not.i.i = icmp slt i32 %i.b, %i.a
  br i1 %.not.i.i, label %bb.b, label %Vec_IntGrow.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.d, null
  %i.e = sext i32 %i.a to i64
  %i.f = shl nsw i64 %i.e, 2                      ; 2 uses
  br i1 %.not9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @realloc(ptr noundef nonnull %i.d, i64 noundef %i.f) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.f) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !27
  store i32 %i.a, ptr %4, align 8, !tbaa !26
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.a
  %i.j = icmp sgt i32 %2, 1                       ; 2 uses
  br i1 %i.j, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.m = shl nuw i32 %i.a, 2
  %i.n = zext i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.n, i1 false), !tbaa !8
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %.lr.ph.i, %Vec_IntGrow.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i32 %i.a, ptr %i.o, align 4, !tbaa !28
  %i.p = shl nsw i32 %2, 1                        ; 6 uses
  %i.q = load i32, ptr %3, align 8, !tbaa !26
  %.not.i.i56 = icmp slt i32 %i.q, %i.p
  br i1 %.not.i.i56, label %bb.f, label %Vec_IntGrow.exit.i57

bb.f:                                             ; preds = %Vec_IntFill.exit
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %.not9.i.i63 = icmp eq ptr %i.s, null
  %i.t = sext i32 %i.p to i64
  %i.u = shl nsw i64 %i.t, 2                      ; 2 uses
  br i1 %.not9.i.i63, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call ptr @realloc(ptr noundef nonnull %i.s, i64 noundef %i.u) #25
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.u) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = phi ptr [ %i.v, %bb.g ], [ %i.w, %bb.h ]
  store ptr %i.x, ptr %i.r, align 8, !tbaa !27
  store i32 %i.p, ptr %3, align 8, !tbaa !26
  br label %Vec_IntGrow.exit.i57

Vec_IntGrow.exit.i57:                             ; preds = %bb.i, %Vec_IntFill.exit
  %i.y = icmp sgt i32 %2, 0
  br i1 %i.y, label %Vec_IntFill.exit64, label %Vec_IntFill.exit64.thread

Vec_IntFill.exit64.thread:                        ; preds = %Vec_IntGrow.exit.i57
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.p, ptr %i.z, align 4, !tbaa !28
  %i.aa = getelementptr i8, ptr %4, i64 8
  br label %._crit_edge88

Vec_IntFill.exit64:                               ; preds = %Vec_IntGrow.exit.i57
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27 ; 7 uses
  %wide.trip.count.i59 = zext nneg i32 %i.p to i64
  %i.ad = shl nuw nsw i64 %wide.trip.count.i59, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %i.ad, i1 false), !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.p, ptr %i.ae, align 4, !tbaa !28
  %i.af = getelementptr i8, ptr %4, i64 8         ; 3 uses
  %.val55 = load ptr, ptr %i.af, align 8, !tbaa !27 ; 4 uses
  %i.ag = zext nneg i32 %2 to i64                 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ag ; 4 uses
  br i1 %i.j, label %.preheader75.preheader, label %._crit_edge88

.preheader75.preheader:                           ; preds = %Vec_IntFill.exit64
  %.val55108 = ptrtoaddr ptr %.val55 to i64
  %i.ai = ptrtoaddr ptr %i.ac to i64
  %i.aj = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ac, i64 %i.aj
  %scevgep = getelementptr i8, ptr %i.ak, i64 4
  %wide.trip.count = zext nneg i32 %i.a to i64
  %i.al = add i64 %i.aj, %i.ai
  %i.am = sub i64 %i.al, %.val55108
  %invariant.op = add i64 %i.am, -1
  br label %.preheader75

.preheader75:                                     ; preds = %.preheader75.preheader, %._crit_edge84
  %indvars.iv94 = phi i64 [ 1, %.preheader75.preheader ], [ %indvars.iv.next95, %._crit_edge84 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader75.preheader ], [ %indvars.iv.next, %._crit_edge84 ] ; 13 uses
  %.07286 = phi i32 [ 1, %.preheader75.preheader ], [ %.274, %._crit_edge84 ] ; 3 uses
  %i.an = shl i64 %indvars.iv, 2
  %i.ao = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ao, label %.preheader.thread, label %.preheader

.preheader.thread:                                ; preds = %.preheader75
  %i.ap = shl i64 %indvars.iv, 2
  %i.aq = add i64 %i.ap, 17179869180
  %i.ar = and i64 %i.aq, 17179869180
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ar, i1 false), !tbaa !8
  br label %.lr.ph78.preheader

.preheader:                                       ; preds = %.preheader75
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.lr.ph83, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %.preheader.thread, %.preheader
  %i.as = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %5 = icmp eq i64 %indvars.iv, 0
  %6 = select i1 %5, i64 1, i64 %i.as
  %7 = sub nsw i64 %6, %indvars.iv                ; 3 uses
  %min.iters.check = icmp ult i64 %7, 8
  %.reass = add i64 %i.an, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph78.preheader110, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph78.preheader
  %n.vec = and i64 %7, -8                         ; 3 uses
  %i.at = add i64 %indvars.iv, %n.vec             ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val55, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !8
  %wide.load109 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <4 x i32> %wide.load, ptr %i.ax, align 4, !tbaa !8
  store <4 x i32> %wide.load109, ptr %i.ay, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %.lr.ph83.loopexit, label %.lr.ph78.preheader110

.lr.ph78.preheader110:                            ; preds = %.lr.ph78.preheader, %middle.block
  %indvars.iv91.ph = phi i64 [ %indvars.iv, %.lr.ph78.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.preheader110, %.lr.ph78
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %.lr.ph78 ], [ %indvars.iv91.ph, %.lr.ph78.preheader110 ] ; 3 uses
  %i.ba = sub nuw nsw i64 %indvars.iv91, %indvars.iv
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val55, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv91
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !8
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 3 uses
  %i.be = icmp samesign ult i64 %indvars.iv.next92, %i.as
  br i1 %i.be, label %.lr.ph78, label %.lr.ph83.loopexit, !llvm.loop !132

.lr.ph83.loopexit:                                ; preds = %.lr.ph78, %middle.block
  %indvars.iv.next92.lcssa = phi i64 [ %i.at, %middle.block ], [ %indvars.iv.next92, %.lr.ph78 ]
  %i.bf = and i64 %indvars.iv.next92.lcssa, 4294967295
  br label %.lr.ph83

.lr.ph83:                                         ; preds = %.lr.ph83.loopexit, %.preheader
  %i.bg = phi i64 [ 0, %.preheader ], [ %i.as, %.lr.ph83.loopexit ] ; 3 uses
  %.1.lcssa.in = phi i64 [ 0, %.preheader ], [ %i.bf, %.lr.ph83.loopexit ]
  %i.bh = xor i32 %.07286, 1
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.1.lcssa.in ; 2 uses
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 1, ptr %i.bj, align 4, !tbaa !8
  %i.bk = sub nsw i64 %i.ag, %i.bg
  %i.bl = getelementptr [4 x i8], ptr %1, i64 %i.bk ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !8
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bg
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !8
  %i.bp = getelementptr i8, ptr %i.bl, i64 -8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !8
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bg
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 %i.bq, ptr %i.bs, align 4, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph83, %Wlc_BlastFullAdder.exit
  %indvars.iv96 = phi i64 [ %indvars.iv94, %.lr.ph83 ], [ %indvars.iv.next97, %Wlc_BlastFullAdder.exit ] ; 4 uses
  %.17380 = phi i32 [ %.07286, %.lr.ph83 ], [ %.274, %Wlc_BlastFullAdder.exit ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv96
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !8
  %i.bv = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %.07286, i32 noundef %i.bu) #27 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv96 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8  ; 2 uses
  %i.by = icmp eq i32 %i.bv, 1
  %i.bz = icmp eq i32 %i.bx, 1
  %or.cond.i = or i1 %i.by, %i.bz
  %i.ca = icmp eq i32 %.17380, 1
  %spec.select.i = or i1 %i.ca, %or.cond.i        ; 2 uses
  %i.cb = zext i1 %spec.select.i to i32           ; 3 uses
  %.054.i = xor i32 %.17380, %i.cb                ; 2 uses
  %.053.i = xor i32 %i.bx, %i.cb                  ; 2 uses
  %.0.i = xor i32 %i.bv, %i.cb                    ; 2 uses
  %i.cc = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.0.i, i32 noundef %.053.i) #27 ; 2 uses
  %i.cd = xor i32 %.0.i, 1
  %i.ce = xor i32 %.053.i, 1
  %i.cf = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cd, i32 noundef %i.ce) #27
  %i.cg = xor i32 %i.cc, 1
  %i.ch = xor i32 %i.cf, 1
  %i.ci = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cg, i32 noundef %i.ch) #27 ; 2 uses
  %i.cj = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.054.i, i32 noundef %i.ci) #27 ; 2 uses
  %i.ck = xor i32 %.054.i, 1
  %i.cl = xor i32 %i.ci, 1
  %i.cm = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.ck, i32 noundef %i.cl) #27
  %i.cn = xor i32 %i.cj, 1
  %i.co = xor i32 %i.cm, 1
  %i.cp = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cn, i32 noundef %i.co) #27
  store i32 %i.cp, ptr %i.bw, align 4, !tbaa !8
  %i.cq = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.cc, i32 noundef %i.cj) #27 ; 2 uses
  br i1 %spec.select.i, label %bb.k, label %Wlc_BlastFullAdder.exit

bb.k:                                             ; preds = %bb.j
  %i.cr = load i32, ptr %i.bw, align 4, !tbaa !8
  %i.cs = xor i32 %i.cr, 1
  store i32 %i.cs, ptr %i.bw, align 4, !tbaa !8
  %i.ct = xor i32 %i.cq, 1
  br label %Wlc_BlastFullAdder.exit

Wlc_BlastFullAdder.exit:                          ; preds = %bb.j, %bb.k
  %.274 = phi i32 [ %i.ct, %bb.k ], [ %i.cq, %bb.j ] ; 3 uses
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, -1
  %i.cu = icmp sgt i64 %indvars.iv96, 0
  br i1 %i.cu, label %bb.j, label %._crit_edge84, !llvm.loop !133

._crit_edge84:                                    ; preds = %Wlc_BlastFullAdder.exit
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val55, i64 %indvars.iv
  store i32 %.274, ptr %i.cv, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 2
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge88, label %.preheader75, !llvm.loop !134

._crit_edge88:                                    ; preds = %._crit_edge84, %Vec_IntFill.exit64.thread, %Vec_IntFill.exit64
  %i.cw = phi ptr [ %i.aa, %Vec_IntFill.exit64.thread ], [ %i.af, %Vec_IntFill.exit64 ], [ %i.af, %._crit_edge84 ]
  %i.cx = load i32, ptr %i.o, align 4, !tbaa !28  ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 1
  br i1 %i.cy, label %.lr.ph.i65, label %Vec_IntReverseOrder.exit

.lr.ph.i65:                                       ; preds = %._crit_edge88
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !27 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i65
  %indvars.iv.i66 = phi i64 [ 0, %.lr.ph.i65 ], [ %indvars.iv.next.i67, %bb.l ] ; 3 uses
  %i.da = phi i32 [ %i.cx, %.lr.ph.i65 ], [ %i.dn, %bb.l ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i66 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %i.dd = trunc nuw nsw i64 %indvars.iv.i66 to i32
  %i.de = xor i32 %i.dd, -1                       ; 2 uses
  %i.df = add i32 %i.da, %i.de
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !8
  store i32 %i.di, ptr %i.db, align 4, !tbaa !8
  %i.dj = load i32, ptr %i.o, align 4, !tbaa !28
  %i.dk = add i32 %i.dj, %i.de
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dl
  store i32 %i.dc, ptr %i.dm, align 4, !tbaa !8
  %indvars.iv.next.i67 = add nuw nsw i64 %indvars.iv.i66, 1 ; 2 uses
  %i.dn = load i32, ptr %i.o, align 4, !tbaa !28  ; 2 uses
  %i.do = sdiv i32 %i.dn, 2
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next.i67, %i.dp
  br i1 %i.dq, label %bb.l, label %Vec_IntReverseOrder.exit, !llvm.loop !130

Vec_IntReverseOrder.exit:                         ; preds = %bb.l, %._crit_edge88
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Wlc_IntInsert(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %.val11 = load i32, ptr %i.a, align 4, !tbaa !28 ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %smin = tail call i32 @llvm.smin.i32(i32 %.val11, i32 0) ; 2 uses
  %i.c = icmp sgt i32 %.val11, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge15

.lr.ph:                                           ; preds = %bb.a
  %i.d = zext nneg i32 %.val11 to i64
  %.val = load ptr, ptr %i.b, align 8, !tbaa !27
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.e = trunc nuw i64 %i.h to i32                ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %._crit_edge15, !llvm.loop !135

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.g = phi i32 [ %.val11, %.lr.ph ], [ %i.e, %bb.b ]
  %indvars.iv14 = phi i64 [ %i.d, %.lr.ph ], [ %i.h, %bb.b ]
  %i.h = add nsw i64 %indvars.iv14, -1            ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %.not = icmp slt i32 %i.j, %3
  br i1 %.not, label %bb.b, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %bb.c
  br label %._crit_edge15, !llvm.loop !135

._crit_edge15:                                    ; preds = %bb.b, %._crit_edge, %bb.a
  %.0.in.lcssa = phi i32 [ %i.g, %._crit_edge ], [ %smin, %bb.a ], [ %smin, %bb.b ] ; 2 uses
  tail call fastcc void @Vec_IntInsert(ptr noundef %0, i32 noundef %.0.in.lcssa, i32 noundef %2)
end_hunk_0
