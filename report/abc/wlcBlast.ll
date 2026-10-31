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
  store i32 %i.fi, ptr %i.ex, align 4, !tbaa !22
  %i.fj = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.ey, i32 noundef %i.fd) #27
  %i.fk = load i32, ptr %i.ex, align 4, !tbaa !22
  %i.fl = xor i32 %i.fk, 1
  store i32 %i.fl, ptr %i.ex, align 4, !tbaa !22
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
  br i1 %exitcond111.not, label %.loopexit113, label %.peel.next.peel.newph, !llvm.loop !171

.loopexit113:                                     ; preds = %Wlc_BlastFullAdder.exit, %.peel.next
  %spec.select.lcssa = phi i32 [ %spec.select.peel, %.peel.next ], [ %spec.select, %Wlc_BlastFullAdder.exit ]
  %i.fq = xor i32 %spec.select.lcssa, 1
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.val69, i64 %indvars.iv123 ; 2 uses
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %.loopexit113, %bb.n
  %indvars.iv114 = phi i64 [ 0, %.loopexit113 ], [ %indvars.iv.next115, %bb.n ] ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !22
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv114 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !22
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv114
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !22
  %i.fx = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.fs, i32 noundef %i.fu, i32 noundef %i.fw) #27
  store i32 %i.fx, ptr %i.ft, align 4, !tbaa !22
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %indvars.iv119
  br i1 %exitcond118.not, label %.loopexit, label %bb.n, !llvm.loop !172

._crit_edge:                                      ; preds = %.loopexit, %Vec_IntFill.exit78.thread, %Vec_IntFill.exit78
  %i.fy = phi ptr [ %i.aa, %Vec_IntFill.exit78.thread ], [ %i.af, %Vec_IntFill.exit78 ], [ %i.af, %.loopexit ]
  %i.fz = load i32, ptr %i.o, align 4, !tbaa !40  ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 1
  br i1 %i.ga, label %.lr.ph.i84, label %Vec_IntReverseOrder.exit

.lr.ph.i84:                                       ; preds = %._crit_edge
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !39 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i84
  %indvars.iv.i85 = phi i64 [ 0, %.lr.ph.i84 ], [ %indvars.iv.next.i86, %bb.o ] ; 3 uses
  %i.gc = phi i32 [ %i.fz, %.lr.ph.i84 ], [ %i.gp, %bb.o ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i85 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !22
  %i.gf = trunc nuw nsw i64 %indvars.iv.i85 to i32
  %i.gg = xor i32 %i.gf, -1                       ; 2 uses
  %i.gh = add i32 %i.gc, %i.gg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !22
  store i32 %i.gk, ptr %i.gd, align 4, !tbaa !22
  %i.gl = load i32, ptr %i.o, align 4, !tbaa !40
  %i.gm = add i32 %i.gl, %i.gg
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gn
  store i32 %i.ge, ptr %i.go, align 4, !tbaa !22
  %indvars.iv.next.i86 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %i.gp = load i32, ptr %i.o, align 4, !tbaa !40  ; 2 uses
  %i.gq = sdiv i32 %i.gp, 2
  %i.gr = sext i32 %i.gq to i64
  %i.gs = icmp slt i64 %indvars.iv.next.i86, %i.gr
  br i1 %i.gs, label %bb.o, label %Vec_IntReverseOrder.exit, !llvm.loop !8

Vec_IntReverseOrder.exit:                         ; preds = %bb.o, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_BlastSqrtNR(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((4, 8)) %3, ptr nofree noundef captures(none) initializes((4, 8)) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = sdiv i32 %2, 2                           ; 6 uses
  %i.b = load i32, ptr %4, align 8, !tbaa !38
  %.not.i.i = icmp slt i32 %i.b, %i.a
  br i1 %.not.i.i, label %bb.b, label %Vec_IntGrow.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
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
  store ptr %i.i, ptr %i.c, align 8, !tbaa !39
  store i32 %i.a, ptr %4, align 8, !tbaa !38
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.a
  %i.j = icmp sgt i32 %2, 1                       ; 2 uses
  br i1 %i.j, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = shl nuw i32 %i.a, 2
  %i.n = zext i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.n, i1 false), !tbaa !22
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %.lr.ph.i, %Vec_IntGrow.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i32 %i.a, ptr %i.o, align 4, !tbaa !40
  %i.p = shl nsw i32 %2, 1                        ; 6 uses
  %i.q = load i32, ptr %3, align 8, !tbaa !38
  %.not.i.i56 = icmp slt i32 %i.q, %i.p
  br i1 %.not.i.i56, label %bb.f, label %Vec_IntGrow.exit.i57

bb.f:                                             ; preds = %Vec_IntFill.exit
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39   ; 2 uses
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
  store ptr %i.x, ptr %i.r, align 8, !tbaa !39
  store i32 %i.p, ptr %3, align 8, !tbaa !38
  br label %Vec_IntGrow.exit.i57

Vec_IntGrow.exit.i57:                             ; preds = %bb.i, %Vec_IntFill.exit
  %i.y = icmp sgt i32 %2, 0
  br i1 %i.y, label %Vec_IntFill.exit64, label %Vec_IntFill.exit64.thread

Vec_IntFill.exit64.thread:                        ; preds = %Vec_IntGrow.exit.i57
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.p, ptr %i.z, align 4, !tbaa !40
  %i.aa = getelementptr i8, ptr %4, i64 8
  br label %._crit_edge88

Vec_IntFill.exit64:                               ; preds = %Vec_IntGrow.exit.i57
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 7 uses
  %wide.trip.count.i59 = zext nneg i32 %i.p to i64
  %i.ad = shl nuw nsw i64 %wide.trip.count.i59, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %i.ad, i1 false), !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.p, ptr %i.ae, align 4, !tbaa !40
  %i.af = getelementptr i8, ptr %4, i64 8         ; 3 uses
  %.val55 = load ptr, ptr %i.af, align 8, !tbaa !39 ; 4 uses
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
  %5 = shl i64 %indvars.iv, 2
  %i.an = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.an, label %.preheader.thread, label %.preheader

.preheader.thread:                                ; preds = %.preheader75
  %i.ao = shl i64 %indvars.iv, 2
  %i.ap = add i64 %i.ao, 17179869180
  %i.aq = and i64 %i.ap, 17179869180
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.aq, i1 false), !tbaa !22
  br label %.lr.ph78.preheader

.preheader:                                       ; preds = %.preheader75
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.lr.ph83, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %.preheader.thread, %.preheader
  %i.ar = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.as = icmp eq i64 %indvars.iv, 0
  %i.at = select i1 %i.as, i64 1, i64 %i.ar
  %i.au = sub nsw i64 %i.at, %indvars.iv          ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 8
  %.reass = add i64 %5, %invariant.op
  %diff.check.a = icmp ult i64 %.reass, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check.a
  br i1 %or.cond, label %.lr.ph78.preheader110, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph78.preheader
  %n.vec = and i64 %i.au, -8                      ; 3 uses
  %i.av = add i64 %indvars.iv, %n.vec             ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val55, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !22
  %wide.load109 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !22
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x i32> %wide.load, ptr %i.az, align 4, !tbaa !22
  store <4 x i32> %wide.load109, ptr %i.ba, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %.lr.ph83.loopexit, label %.lr.ph78.preheader110

.lr.ph78.preheader110:                            ; preds = %.lr.ph78.preheader, %middle.block
  %indvars.iv91.ph = phi i64 [ %indvars.iv, %.lr.ph78.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.preheader110, %.lr.ph78
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %.lr.ph78 ], [ %indvars.iv91.ph, %.lr.ph78.preheader110 ] ; 3 uses
  %i.bc = sub nuw nsw i64 %indvars.iv91, %indvars.iv
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.val55, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !22
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv91
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !22
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 3 uses
  %i.bg = icmp samesign ult i64 %indvars.iv.next92, %i.ar
  br i1 %i.bg, label %.lr.ph78, label %.lr.ph83.loopexit, !llvm.loop !174

.lr.ph83.loopexit:                                ; preds = %.lr.ph78, %middle.block
  %indvars.iv.next92.lcssa = phi i64 [ %i.av, %middle.block ], [ %indvars.iv.next92, %.lr.ph78 ]
  %i.bh = and i64 %indvars.iv.next92.lcssa, 4294967295
  br label %.lr.ph83

.lr.ph83:                                         ; preds = %.lr.ph83.loopexit, %.preheader
  %i.bi = phi i64 [ 0, %.preheader ], [ %i.ar, %.lr.ph83.loopexit ] ; 3 uses
  %.1.lcssa.in = phi i64 [ 0, %.preheader ], [ %i.bh, %.lr.ph83.loopexit ]
  %i.bj = xor i32 %.07286, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.1.lcssa.in ; 2 uses
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !22
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 1, ptr %i.bl, align 4, !tbaa !22
  %i.bm = sub nsw i64 %i.ag, %i.bi
  %i.bn = getelementptr [4 x i8], ptr %1, i64 %i.bm ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !22
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bi
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !22
  %i.br = getelementptr i8, ptr %i.bn, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !22
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bi
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph83, %Wlc_BlastFullAdder.exit
  %indvars.iv96 = phi i64 [ %indvars.iv94, %.lr.ph83 ], [ %indvars.iv.next97, %Wlc_BlastFullAdder.exit ] ; 4 uses
  %.17380 = phi i32 [ %.07286, %.lr.ph83 ], [ %.274, %Wlc_BlastFullAdder.exit ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv96
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !22
  %i.bx = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %.07286, i32 noundef %i.bw) #27 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv96 ; 4 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !22 ; 2 uses
  %i.ca = icmp eq i32 %i.bx, 1
  %i.cb = icmp eq i32 %i.bz, 1
  %or.cond.i = or i1 %i.ca, %i.cb
  %i.cc = icmp eq i32 %.17380, 1
  %spec.select.i = or i1 %i.cc, %or.cond.i        ; 2 uses
  %i.cd = zext i1 %spec.select.i to i32           ; 3 uses
  %.054.i = xor i32 %.17380, %i.cd                ; 2 uses
  %.053.i = xor i32 %i.bz, %i.cd                  ; 2 uses
  %.0.i = xor i32 %i.bx, %i.cd                    ; 2 uses
  %i.ce = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.0.i, i32 noundef %.053.i) #27 ; 2 uses
  %i.cf = xor i32 %.0.i, 1
  %i.cg = xor i32 %.053.i, 1
  %i.ch = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cf, i32 noundef %i.cg) #27
  %i.ci = xor i32 %i.ce, 1
  %i.cj = xor i32 %i.ch, 1
  %i.ck = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.ci, i32 noundef %i.cj) #27 ; 2 uses
  %i.cl = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.054.i, i32 noundef %i.ck) #27 ; 2 uses
  %i.cm = xor i32 %.054.i, 1
  %i.cn = xor i32 %i.ck, 1
  %i.co = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cm, i32 noundef %i.cn) #27
  %i.cp = xor i32 %i.cl, 1
  %i.cq = xor i32 %i.co, 1
  %i.cr = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cp, i32 noundef %i.cq) #27
  store i32 %i.cr, ptr %i.by, align 4, !tbaa !22
  %i.cs = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.ce, i32 noundef %i.cl) #27 ; 2 uses
  br i1 %spec.select.i, label %bb.k, label %Wlc_BlastFullAdder.exit

bb.k:                                             ; preds = %bb.j
  %i.ct = load i32, ptr %i.by, align 4, !tbaa !22
  %i.cu = xor i32 %i.ct, 1
  store i32 %i.cu, ptr %i.by, align 4, !tbaa !22
  %i.cv = xor i32 %i.cs, 1
  br label %Wlc_BlastFullAdder.exit

Wlc_BlastFullAdder.exit:                          ; preds = %bb.j, %bb.k
  %.274 = phi i32 [ %i.cv, %bb.k ], [ %i.cs, %bb.j ] ; 3 uses
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, -1
  %i.cw = icmp sgt i64 %indvars.iv96, 0
  br i1 %i.cw, label %bb.j, label %._crit_edge84, !llvm.loop !175

._crit_edge84:                                    ; preds = %Wlc_BlastFullAdder.exit
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val55, i64 %indvars.iv
  store i32 %.274, ptr %i.cx, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 2
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge88, label %.preheader75, !llvm.loop !176

._crit_edge88:                                    ; preds = %._crit_edge84, %Vec_IntFill.exit64.thread, %Vec_IntFill.exit64
  %i.cy = phi ptr [ %i.aa, %Vec_IntFill.exit64.thread ], [ %i.af, %Vec_IntFill.exit64 ], [ %i.af, %._crit_edge84 ]
  %i.cz = load i32, ptr %i.o, align 4, !tbaa !40  ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %.lr.ph.i65, label %Vec_IntReverseOrder.exit

.lr.ph.i65:                                       ; preds = %._crit_edge88
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !39 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i65
  %indvars.iv.i66 = phi i64 [ 0, %.lr.ph.i65 ], [ %indvars.iv.next.i67, %bb.l ] ; 3 uses
  %i.dc = phi i32 [ %i.cz, %.lr.ph.i65 ], [ %i.dp, %bb.l ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i66 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !22
  %i.df = trunc nuw nsw i64 %indvars.iv.i66 to i32
  %i.dg = xor i32 %i.df, -1                       ; 2 uses
  %i.dh = add i32 %i.dc, %i.dg
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !22
  store i32 %i.dk, ptr %i.dd, align 4, !tbaa !22
  %i.dl = load i32, ptr %i.o, align 4, !tbaa !40
  %i.dm = add i32 %i.dl, %i.dg
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dn
  store i32 %i.de, ptr %i.do, align 4, !tbaa !22
  %indvars.iv.next.i67 = add nuw nsw i64 %indvars.iv.i66, 1 ; 2 uses
  %i.dp = load i32, ptr %i.o, align 4, !tbaa !40  ; 2 uses
  %i.dq = sdiv i32 %i.dp, 2
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next.i67, %i.dr
  br i1 %i.ds, label %bb.l, label %Vec_IntReverseOrder.exit, !llvm.loop !8

Vec_IntReverseOrder.exit:                         ; preds = %bb.l, %._crit_edge88
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Wlc_IntInsert(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %.val11 = load i32, ptr %i.a, align 4, !tbaa !40 ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %smin = tail call i32 @llvm.smin.i32(i32 %.val11, i32 0) ; 2 uses
  %i.c = icmp sgt i32 %.val11, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge15

.lr.ph:                                           ; preds = %bb.a
  %i.d = zext nneg i32 %.val11 to i64
  %.val = load ptr, ptr %i.b, align 8, !tbaa !39
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.e = trunc nuw i64 %i.h to i32                ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %._crit_edge15, !llvm.loop !9

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.g = phi i32 [ %.val11, %.lr.ph ], [ %i.e, %bb.b ]
  %indvars.iv14 = phi i64 [ %i.d, %.lr.ph ], [ %i.h, %bb.b ]
  %i.h = add nsw i64 %indvars.iv14, -1            ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22
  %.not = icmp slt i32 %i.j, %3
  br i1 %.not, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.c
  br label %._crit_edge15, !llvm.loop !9

._crit_edge15:                                    ; preds = %bb.b, %._crit_edge, %bb.a
  %.0.in.lcssa = phi i32 [ %i.g, %._crit_edge ], [ %smin, %bb.a ], [ %smin, %bb.b ] ; 2 uses
  tail call fastcc void @Vec_IntInsert(ptr noundef %0, i32 noundef %.0.in.lcssa, i32 noundef %2)
  tail call fastcc void @Vec_IntInsert(ptr noundef %1, i32 noundef %.0.in.lcssa, i32 noundef %3)
  ret void
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_IntInsert(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2147483647, -2147483648) %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40   ; 7 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !38
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
end_hunk_0
