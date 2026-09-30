Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauNpn?download=true
inline.NumInlined: 286
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 51
begin_hunk_0_@Dau_CollectBoothFunctions:bb.a

.lr.ph57:                                         ; preds = %bb.a
  %i.l = shl nuw i32 1, %i.a
  %i.m = icmp sgt i32 %0, 1
  %i.n = shl nuw i32 1, %0                        ; 2 uses
  %i.o = select i1 %i.b, i32 0, i32 %i.c          ; 2 uses
  %smax64 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1) ; 2 uses
  br i1 %i.m, label %.lr.ph.us.preheader, label %.lr.ph57.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph57
  %i.p = add nsw i32 %0, -1                       ; 3 uses
  %xtraiter = and i32 %i.p, 1
  %i.q = icmp eq i32 %0, 2
  %unroll_iter = and i32 %i.p, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod83 = trunc i32 %i.p to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.c
  %.04655.us = phi i32 [ %i.ao, %bb.c ], [ 0, %.lr.ph.us.preheader ] ; 8 uses
  %i.r = and i32 %.04655.us, 1                    ; 2 uses
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.054.us = phi i32 [ %.1.us.1, %.lr.ph.us.new ], [ %i.r, %.lr.ph.us ]
  %.04553.us = phi i32 [ %i.ab, %.lr.ph.us.new ], [ 1, %.lr.ph.us ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.s = shl nuw i32 1, %.04553.us
  %i.t = and i32 %i.s, %.04655.us
  %.not51.us = icmp eq i32 %i.t, 0
  %i.u = add nsw i32 %.04553.us, -1
  %i.v = shl nuw i32 1, %i.u
  %i.w = select i1 %.not51.us, i32 0, i32 %i.v
  %.1.us = add nsw i32 %i.w, %.054.us
  %i.x = shl nuw i32 2, %.04553.us
  %i.y = and i32 %i.x, %.04655.us
  %.not51.us.1 = icmp eq i32 %i.y, 0
  %i.z = shl nuw i32 1, %.04553.us
  %i.aa = select i1 %.not51.us.1, i32 0, i32 %i.z
  %.1.us.1 = add nsw i32 %i.aa, %.1.us            ; 3 uses
  %i.ab = add nuw nsw i32 %.04553.us, 2           ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !166

bb.b:                                             ; preds = %._crit_edge.us
  %spec.select.us = sub nsw i32 %.1.us.lcssa, %i.av
  %spec.select52.us = tail call i32 @llvm.abs.i32(i32 %spec.select.us, i1 true)
  %i.ac = add nsw i32 %spec.select52.us, -1
  %i.ad = shl i32 %i.ac, %i.o
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ae
  %i.ag = and i32 %.04655.us, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = lshr i32 %.04655.us, 6
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !28
  %i.an = or i64 %i.am, %i.ai
  store i64 %i.an, ptr %i.al, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.us
  %i.ao = add nuw nsw i32 %.04655.us, 1           ; 2 uses
  %exitcond65.not = icmp eq i32 %i.ao, %smax64
  br i1 %exitcond65.not, label %.preheader, label %.lr.ph.us, !llvm.loop !167

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.054.us.epil.init = phi i32 [ %i.r, %.lr.ph.us ], [ %.1.us.1, %._crit_edge.us.unr-lcssa ]
  %.04553.us.epil.init = phi i32 [ 1, %.lr.ph.us ], [ %i.ab, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.ap = shl nuw i32 1, %.04553.us.epil.init
  %i.aq = and i32 %i.ap, %.04655.us
  %.not51.us.epil = icmp eq i32 %i.aq, 0
  %i.ar = add nsw i32 %.04553.us.epil.init, -1
  %i.as = shl nuw i32 1, %i.ar
  %i.at = select i1 %.not51.us.epil, i32 0, i32 %i.as
  %.1.us.epil = add nsw i32 %i.at, %.054.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.1.us.lcssa = phi i32 [ %.1.us.1, %._crit_edge.us.unr-lcssa ], [ %.1.us.epil, %.epil.preheader ] ; 2 uses
  %i.au = and i32 %.04655.us, %i.n
  %.not50.us = icmp eq i32 %i.au, 0
  %i.av = select i1 %.not50.us, i32 0, i32 %i.g   ; 2 uses
  %i.aw = icmp eq i32 %.1.us.lcssa, %i.av
  br i1 %i.aw, label %bb.c, label %bb.b

.preheader:                                       ; preds = %bb.e, %bb.c
  %.not60 = icmp eq i32 %i.f, 31
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.preheader
  %i.ax = icmp slt i32 %0, 5
  %i.ay = icmp eq i32 %i.a, 0
  %i.az = icmp ult i32 %i.a, 2
  %i.ba = icmp ult i32 %i.a, 3
  %i.bb = icmp ult i32 %i.a, 4
  %i.bc = icmp ult i32 %i.a, 5
  %i.bd = icmp ult i32 %i.a, 6
  %i.be = select i1 %i.b, i32 0, i32 %i.c
  %smax69 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  br i1 %i.ax, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %smax69 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %.lr.ph.split.us ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !28 ; 7 uses
  %i.bh = trunc i64 %i.bg to i1
  %i.bi = select i1 %i.bh, i64 3, i64 0
  %i.bj = and i64 %i.bg, 3
  %i.bk = select i1 %i.ay, i64 %i.bi, i64 %i.bj
  %i.bl = mul nuw nsw i64 %i.bk, 5
  %.126.i.us = select i1 %i.az, i64 %i.bl, i64 %i.bg
  %i.bm = and i64 %.126.i.us, 15
  %i.bn = mul nuw nsw i64 %i.bm, 17
  %.227.i.us = select i1 %i.ba, i64 %i.bn, i64 %i.bg
  %i.bo = and i64 %.227.i.us, 255
  %i.bp = mul nuw nsw i64 %i.bo, 257
  %.328.i.us = select i1 %i.bb, i64 %i.bp, i64 %i.bg
  %i.bq = and i64 %.328.i.us, 65535
  %i.br = mul nuw nsw i64 %i.bq, 65537
  %.429.i.us = select i1 %i.bc, i64 %i.br, i64 %i.bg
  %i.bs = and i64 %.429.i.us, 4294967295
  %i.bt = mul nuw i64 %i.bs, 4294967297
  %.5.i.us = select i1 %i.bd, i64 %i.bt, i64 %i.bg
  store i64 %.5.i.us, ptr %i.bf, align 8, !tbaa !28
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.bv = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.h, ptr noundef %i.bu) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond70.not, label %._crit_edge.thread, label %.lr.ph.split.us, !llvm.loop !168

.lr.ph57.split:                                   ; preds = %.lr.ph57, %bb.e
  %.04655 = phi i32 [ %i.cm, %bb.e ], [ 0, %.lr.ph57 ] ; 5 uses
  %i.bw = and i32 %.04655, 1                      ; 2 uses
  %i.bx = and i32 %.04655, %i.n
  %.not50 = icmp eq i32 %i.bx, 0
  %i.by = select i1 %.not50, i32 0, i32 %i.g      ; 2 uses
  %i.bz = icmp eq i32 %i.bw, %i.by
  br i1 %i.bz, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph57.split
  %spec.select = sub nsw i32 %i.bw, %i.by
  %spec.select52 = tail call i32 @llvm.abs.i32(i32 %spec.select, i1 true)
  %i.ca = add nsw i32 %spec.select52, -1
  %i.cb = shl i32 %i.ca, %i.o
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cc
  %i.ce = and i32 %.04655, 63
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = lshr i32 %.04655, 6
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !28
  %i.cl = or i64 %i.ck, %i.cg
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph57.split, %bb.d
  %i.cm = add nuw nsw i32 %.04655, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cm, %smax64
  br i1 %exitcond.not, label %.preheader, label %.lr.ph57.split, !llvm.loop !167

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.04458 = phi i32 [ %i.cr, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.cn = shl i32 %.04458, %i.be
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.co
  %i.cq = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.h, ptr noundef %i.cp) ; 0 uses
  %i.cr = add nuw nsw i32 %.04458, 1              ; 2 uses
  %exitcond67.not = icmp eq i32 %i.cr, %smax69
  br i1 %exitcond67.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !168

._crit_edge:                                      ; preds = %.lr.ph.split, %.preheader
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.f, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split.us, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.k) #27
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %._crit_edge.thread
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define void @Dau_PrintNpnFunction(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(address) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %3, 7
  %i.b = add nsw i32 %3, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 15 uses
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %1) ; 0 uses
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %.lr.ph.i, label %Abc_TtPrintBits2.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.0.in4.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %3, %bb.b ] ; 2 uses
  %.0.i = add nsw i32 %.0.in4.i, -1               ; 2 uses
  %i.g = and i32 %.0.i, 31
  %i.h = lshr i32 %4, %i.g
  %i.i = and i32 %i.h, 1
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %i.i) ; 0 uses
  %i.k = icmp samesign ugt i32 %.0.in4.i, 1
  br i1 %i.k, label %.lr.ph.i, label %.lr.ph.preheader, !llvm.loop !169

Abc_TtPrintBits2.exit:                            ; preds = %bb.b
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38) ; 0 uses
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38) ; 0 uses
  %i.n = zext nneg i32 %3 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %Abc_TtPrintBits2.exit
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40) ; 0 uses
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !27 ; 2 uses
  %i.q = icmp samesign ugt i32 %3, 5              ; 2 uses
  %i.r = add nsw i32 %3, -2                       ; 2 uses
  %i.s = icmp slt i32 %3, 2                       ; 2 uses
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.t = load i64, ptr %2, align 8, !tbaa !28
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.u, 15                         ; 3 uses
  %i.w = icmp samesign ult i32 %i.v, 10
  %i.x = or disjoint i32 %i.v, 48
  %i.y = add nuw nsw i32 %i.v, 55
  %.0.i.i = select i1 %i.w, i32 %i.x, i32 %i.y
  %fputc17.i = tail call i32 @fputc(i32 %.0.i.i, ptr %i.p) ; 0 uses
  br label %Abc_TtPrintHexRev.exit

bb.d:                                             ; preds = %._crit_edge
  %.not22.i = icmp slt i32 %i.d, 1
  br i1 %.not22.i, label %Abc_TtPrintHexRev.exit.thread, label %.lr.ph.i26

Abc_TtPrintHexRev.exit.thread:                    ; preds = %bb.d
  %7 = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef %2)
  br label %Abc_TtNot.exit

.lr.ph.i26:                                       ; preds = %bb.d
  %i.z = zext nneg i32 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.z, 3
  %i.aa = getelementptr i8, ptr %2, i64 %.idx.i
  %.01521.i = getelementptr i8, ptr %i.aa, i64 -8
  %notmask.i = shl nsw i32 -1, %i.r
  %i.ab = xor i32 %notmask.i, -1
  %i.ac = select i1 %i.q, i32 15, i32 %i.ab
  %i.ad = zext nneg i32 %i.ac to i64
  br label %bb.e

.loopexit.i:                                      ; preds = %bb.f
  %.015.i = getelementptr inbounds i8, ptr %.01523.i, i64 -8 ; 2 uses
  %.not.i = icmp ult ptr %.015.i, %2
  br i1 %.not.i, label %Abc_TtPrintHexRev.exit, label %bb.e, !llvm.loop !11

bb.e:                                             ; preds = %.loopexit.i, %.lr.ph.i26
  %.01523.i = phi ptr [ %.01521.i, %.lr.ph.i26 ], [ %.015.i, %.loopexit.i ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i = phi i64 [ %i.ad, %bb.e ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.ae = load i64, ptr %.01523.i, align 8, !tbaa !28
  %i.af = shl nsw i64 %indvars.iv.i, 2
  %i.ag = and i64 %i.af, 4294967292
  %i.ah = lshr i64 %i.ae, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 15                       ; 3 uses
  %i.ak = icmp samesign ult i32 %i.aj, 10
  %i.al = or disjoint i32 %i.aj, 48
  %i.am = add nuw nsw i32 %i.aj, 55
  %.0.i18.i = select i1 %i.ak, i32 %i.al, i32 %i.am
  %fputc.i = tail call i32 @fputc(i32 %.0.i18.i, ptr %i.p) ; 0 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.an = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.an, label %bb.f, label %.loopexit.i, !llvm.loop !12

Abc_TtPrintHexRev.exit:                           ; preds = %.loopexit.i, %bb.c
  %i.ao = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef %2) ; 5 uses
  %i.ap = icmp sgt i32 %i.d, 0
  br i1 %i.ap, label %.lr.ph.preheader.i, label %Abc_TtNot.exit

.lr.ph.preheader.i:                               ; preds = %Abc_TtPrintHexRev.exit
  %min.iters.check = icmp ult i32 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.i27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.aq = and i32 %i.d, 2147483644
  %n.vec = zext nneg i32 %i.aq to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ar, align 8, !tbaa !28
  %wide.load75 = load <2 x i64>, ptr %i.as, align 8, !tbaa !28
  %i.at = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.au = xor <2 x i64> %wide.load75, splat (i64 -1)
  store <2 x i64> %i.at, ptr %i.ar, align 8, !tbaa !28
  store <2 x i64> %i.au, ptr %i.as, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %Abc_TtNot.exit, label %vector.body, !llvm.loop !170

.lr.ph.i27:                                       ; preds = %.lr.ph.preheader.i
  %i.aw = load i64, ptr %2, align 8, !tbaa !28
  %i.ax = xor i64 %i.aw, -1
  store i64 %i.ax, ptr %2, align 8, !tbaa !28
  %exitcond.not.i = icmp eq i32 %i.d, 1
  br i1 %exitcond.not.i, label %Abc_TtNot.exit, label %.lr.ph.i27.1

.lr.ph.i27.1:                                     ; preds = %.lr.ph.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !28
  %i.ba = xor i64 %i.az, -1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !28
  %exitcond.not.i.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond.not.i.1, label %Abc_TtNot.exit, label %.lr.ph.i27.2

.lr.ph.i27.2:                                     ; preds = %.lr.ph.i27.1
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !28
  %i.bd = xor i64 %i.bc, -1
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !28
  br label %Abc_TtNot.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !29
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.bf) ; 0 uses
  %i.bh = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bh, label %.lr.ph, label %._crit_edge, !llvm.loop !171

Abc_TtNot.exit:                                   ; preds = %vector.body, %.lr.ph.i27, %.lr.ph.i27.1, %.lr.ph.i27.2, %Abc_TtPrintHexRev.exit.thread, %Abc_TtPrintHexRev.exit
  %8 = phi i1 [ false, %Abc_TtPrintHexRev.exit.thread ], [ false, %Abc_TtPrintHexRev.exit ], [ true, %.lr.ph.i27 ], [ true, %.lr.ph.i27.2 ], [ true, %.lr.ph.i27.1 ], [ true, %vector.body ]
  %9 = phi i32 [ %7, %Abc_TtPrintHexRev.exit.thread ], [ %i.ao, %Abc_TtPrintHexRev.exit ], [ %i.ao, %.lr.ph.i27 ], [ %i.ao, %.lr.ph.i27.2 ], [ %i.ao, %.lr.ph.i27.1 ], [ %i.ao, %vector.body ]
  %i.bi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %9) ; 0 uses
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42) ; 0 uses
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !27 ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %Abc_TtNot.exit
  %i.bl = load i64, ptr %2, align 8, !tbaa !28
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 15                       ; 3 uses
  %i.bo = icmp samesign ult i32 %i.bn, 10
  %i.bp = or disjoint i32 %i.bn, 48
  %i.bq = add nuw nsw i32 %i.bn, 55
  %.0.i.i43 = select i1 %i.bo, i32 %i.bp, i32 %i.bq
  %fputc17.i44 = tail call i32 @fputc(i32 %.0.i.i43, ptr %i.bk) ; 0 uses
  br label %Abc_TtPrintHexRev.exit45

bb.h:                                             ; preds = %Abc_TtNot.exit
  %.not22.i30 = icmp slt i32 %i.d, 1
  br i1 %.not22.i30, label %Abc_TtPrintHexRev.exit45, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.h
  %i.br = zext nneg i32 %i.d to i64
  %.idx.i32 = shl nuw nsw i64 %i.br, 3
  %i.bs = getelementptr i8, ptr %2, i64 %.idx.i32
  %.01521.i33 = getelementptr i8, ptr %i.bs, i64 -8
  %notmask.i34 = shl nsw i32 -1, %i.r
  %i.bt = xor i32 %notmask.i34, -1
  %i.bu = select i1 %i.q, i32 15, i32 %i.bt
  %i.bv = zext nneg i32 %i.bu to i64
  br label %bb.i

.loopexit.i40:                                    ; preds = %bb.j
  %.015.i41 = getelementptr inbounds i8, ptr %.01523.i35, i64 -8 ; 2 uses
  %.not.i42 = icmp ult ptr %.015.i41, %2
  br i1 %.not.i42, label %Abc_TtPrintHexRev.exit45, label %bb.i, !llvm.loop !11

bb.i:                                             ; preds = %.loopexit.i40, %.lr.ph.i31
  %.01523.i35 = phi ptr [ %.01521.i33, %.lr.ph.i31 ], [ %.015.i41, %.loopexit.i40 ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.i36 = phi i64 [ %i.bv, %bb.i ], [ %indvars.iv.next.i39, %bb.j ] ; 3 uses
  %i.bw = load i64, ptr %.01523.i35, align 8, !tbaa !28
  %i.bx = shl nsw i64 %indvars.iv.i36, 2
  %i.by = and i64 %i.bx, 4294967292
  %i.bz = lshr i64 %i.bw, %i.by
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = and i32 %i.ca, 15                       ; 3 uses
  %i.cc = icmp samesign ult i32 %i.cb, 10
  %i.cd = or disjoint i32 %i.cb, 48
  %i.ce = add nuw nsw i32 %i.cb, 55
  %.0.i18.i37 = select i1 %i.cc, i32 %i.cd, i32 %i.ce
  %fputc.i38 = tail call i32 @fputc(i32 %.0.i18.i37, ptr %i.bk) ; 0 uses
  %indvars.iv.next.i39 = add nsw i64 %indvars.iv.i36, -1
  %i.cf = icmp sgt i64 %indvars.iv.i36, 0
  br i1 %i.cf, label %bb.j, label %.loopexit.i40, !llvm.loop !12

.critedge:                                        ; preds = %bb.a
  %i.cg = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef %2) ; 0 uses
  %i.ch = icmp sgt i32 %i.d, 0
  br i1 %i.ch, label %.lr.ph.preheader.i46, label %Abc_TtNot.exit59.thread

Abc_TtNot.exit59.thread:                          ; preds = %.critedge
  %i.ci = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef %2) ; 0 uses
  br label %bb.l

.lr.ph.preheader.i46:                             ; preds = %.critedge
  %wide.trip.count.i47 = zext nneg i32 %i.d to i64 ; 2 uses
  %min.iters.check77 = icmp ult i32 %i.d, 4
  br i1 %min.iters.check77, label %.lr.ph.i48, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph.preheader.i46
  %n.vec79 = and i64 %wide.trip.count.i47, 2147483644
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next84, %vector.body80 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index81 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %wide.load82 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !28
  %wide.load83 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !28
  %i.cl = xor <2 x i64> %wide.load82, splat (i64 -1)
  %i.cm = xor <2 x i64> %wide.load83, splat (i64 -1)
  store <2 x i64> %i.cl, ptr %i.cj, align 8, !tbaa !28
  store <2 x i64> %i.cm, ptr %i.ck, align 8, !tbaa !28
  %index.next84 = add nuw i64 %index81, 4         ; 2 uses
  %i.cn = icmp eq i64 %index.next84, %n.vec79
  br i1 %i.cn, label %Abc_TtPrintHexRev.exit45.thread, label %vector.body80, !llvm.loop !172

.lr.ph.i48:                                       ; preds = %.lr.ph.preheader.i46
  %i.co = load i64, ptr %2, align 8, !tbaa !28
  %i.cp = xor i64 %i.co, -1
  store i64 %i.cp, ptr %2, align 8, !tbaa !28
  %exitcond.not.i51 = icmp eq i32 %i.d, 1
  br i1 %exitcond.not.i51, label %Abc_TtPrintHexRev.exit45.thread, label %.lr.ph.i48.1

.lr.ph.i48.1:                                     ; preds = %.lr.ph.i48
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !28
  %i.cs = xor i64 %i.cr, -1
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !28
  %exitcond.not.i51.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond.not.i51.1, label %Abc_TtPrintHexRev.exit45.thread, label %.lr.ph.i48.2

.lr.ph.i48.2:                                     ; preds = %.lr.ph.i48.1
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !28
  %i.cv = xor i64 %i.cu, -1
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !28
  br label %Abc_TtPrintHexRev.exit45.thread

Abc_TtPrintHexRev.exit45.thread:                  ; preds = %vector.body80, %.lr.ph.i48, %.lr.ph.i48.1, %.lr.ph.i48.2
  %i.cw = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef nonnull %2)
  br label %.lr.ph.preheader.i53

Abc_TtPrintHexRev.exit45:                         ; preds = %.loopexit.i40, %bb.h, %bb.g
  %i.cx = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef %2) ; 2 uses
  br i1 %8, label %Abc_TtPrintHexRev.exit45..lr.ph.preheader.i53_crit_edge, label %Abc_TtNot.exit59

Abc_TtPrintHexRev.exit45..lr.ph.preheader.i53_crit_edge: ; preds = %Abc_TtPrintHexRev.exit45
  %.pre = zext nneg i32 %i.d to i64
  br label %.lr.ph.preheader.i53

.lr.ph.preheader.i53:                             ; preds = %Abc_TtPrintHexRev.exit45..lr.ph.preheader.i53_crit_edge, %Abc_TtPrintHexRev.exit45.thread
  %wide.trip.count.i54.pre-phi = phi i64 [ %.pre, %Abc_TtPrintHexRev.exit45..lr.ph.preheader.i53_crit_edge ], [ %wide.trip.count.i47, %Abc_TtPrintHexRev.exit45.thread ] ; 4 uses
  %i.cy = phi i32 [ %i.cx, %Abc_TtPrintHexRev.exit45..lr.ph.preheader.i53_crit_edge ], [ %i.cw, %Abc_TtPrintHexRev.exit45.thread ] ; 2 uses
  %min.iters.check89 = icmp samesign ult i64 %wide.trip.count.i54.pre-phi, 4
  br i1 %min.iters.check89, label %.lr.ph.i55.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.preheader.i53
  %n.vec91 = and i64 %wide.trip.count.i54.pre-phi, 2147483644 ; 3 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next96, %vector.body92 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index93 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %wide.load94 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !28
  %wide.load95 = load <2 x i64>, ptr %i.da, align 8, !tbaa !28
  %i.db = xor <2 x i64> %wide.load94, splat (i64 -1)
  %i.dc = xor <2 x i64> %wide.load95, splat (i64 -1)
  store <2 x i64> %i.db, ptr %i.cz, align 8, !tbaa !28
  store <2 x i64> %i.dc, ptr %i.da, align 8, !tbaa !28
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %i.dd = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.dd, label %middle.block97, label %vector.body92, !llvm.loop !173

middle.block97:                                   ; preds = %vector.body92
  %cmp.n98 = icmp eq i64 %wide.trip.count.i54.pre-phi, %n.vec91
  br i1 %cmp.n98, label %Abc_TtNot.exit59, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %.lr.ph.preheader.i53, %middle.block97
  %indvars.iv.i56.ph = phi i64 [ 0, %.lr.ph.preheader.i53 ], [ %n.vec91, %middle.block97 ]
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader, %.lr.ph.i55
  %indvars.iv.i56 = phi i64 [ %indvars.iv.next.i57, %.lr.ph.i55 ], [ %indvars.iv.i56.ph, %.lr.ph.i55.preheader ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i56 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !28
  %i.dg = xor i64 %i.df, -1
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !28
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i57, %wide.trip.count.i54.pre-phi
  br i1 %exitcond.not.i58, label %Abc_TtNot.exit59, label %.lr.ph.i55, !llvm.loop !174

Abc_TtNot.exit59:                                 ; preds = %.lr.ph.i55, %middle.block97, %Abc_TtPrintHexRev.exit45
  %i.dh = phi i32 [ %i.cx, %Abc_TtPrintHexRev.exit45 ], [ %i.cy, %middle.block97 ], [ %i.cy, %.lr.ph.i55 ]
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %Abc_TtNot.exit59
  %i.di = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %i.dh) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %Abc_TtNot.exit59.thread, %bb.k, %Abc_TtNot.exit59
  ret void
}

; Function Attrs: nounwind uwtable
define void @Dau_PrintNpnFunctions(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 6 uses
  %i.b = icmp slt i32 %1, 7
  %i.c = add nsw i32 %1, -6
  %i.d = shl nuw i32 1, %i.c
  %i.e = select i1 %i.b, i32 1, i32 %i.d          ; 12 uses
  %i.f = tail call fastcc ptr @Vec_MemAllocForTTSimple(i32 noundef %1) ; 8 uses
  %i.g = sext i32 %i.e to i64
  %i.h = shl nsw i64 %i.g, 3                      ; 4 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #29 ; 29 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 3 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.h) #29 ; 8 uses
  %i.l = icmp sgt i32 %i.e, 0                     ; 7 uses
  br i1 %i.l, label %.lr.ph18.preheader.i, label %Abc_TtCopy.exit100

.lr.ph18.preheader.i:                             ; preds = %bb.a
  %wide.trip.count24.i = zext nneg i32 %i.e to i64
  %i.m = shl nuw nsw i64 %wide.trip.count24.i, 3  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.m, i1 false), !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.m, i1 false), !tbaa !28
  br label %Abc_TtCopy.exit100

Abc_TtCopy.exit100:                               ; preds = %.lr.ph18.preheader.i, %bb.a
  %i.n = tail call i32 @Extra_Factorial(i32 noundef %1) #27 ; 4 uses
  %i.o = shl nuw i32 1, %1                        ; 2 uses
  %i.p = tail call ptr @Extra_PermSchedule(i32 noundef %1) #27 ; 3 uses
  %i.q = tail call ptr @Extra_GreyCodeSchedule(i32 noundef %1) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.r = shl i32 %i.n, %1
  %i.s = shl nsw i32 %i.r, 1                      ; 3 uses
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %i.s, i32 noundef %i.o, i32 noundef %i.n) ; 0 uses
  %i.u = icmp sgt i32 %1, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.preheader.lr.ph

.lr.ph.preheader:                                 ; preds = %Abc_TtCopy.exit100
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader292, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %vec.ind, ptr %i.v, align 16, !tbaa !29
  store <4 x i32> %step.add, ptr %i.w, align 16, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader138, label %.lr.ph.preheader292

.lr.ph.preheader292:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader138:                                    ; preds = %.lr.ph, %middle.block
  %.not150 = icmp eq i32 %1, 31
  br i1 %.not150, label %._crit_edge149, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %Abc_TtCopy.exit100, %.preheader138
  %i.y = icmp sgt i32 %i.n, 0
  %wide.trip.count.i = zext i32 %i.e to i64       ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.i, i64 %i.h ; 3 uses
  %.not91 = icmp eq i32 %2, 0
  %i.aa = icmp eq i32 %i.e, 1
  %i.ab = shl nuw nsw i64 %wide.trip.count.i, 3
  %smax = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  %wide.trip.count168 = zext nneg i32 %smax to i64
  %wide.trip.count163 = zext nneg i32 %i.n to i64
  %i.ac = add i64 %i.h, %i.j
  %min.iters.check238 = icmp ult i32 %i.e, 4
  %n.vec240 = and i64 %wide.trip.count.i, 2147483644
  %exitcond74.not.i = icmp eq i32 %i.e, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %exitcond74.not.i.1 = icmp eq i32 %i.e, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %min.iters.check210 = icmp ult i32 %i.e, 4
  %n.vec212 = and i64 %wide.trip.count.i, 2147483644
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %exitcond60.not.i.1 = icmp eq i32 %i.e, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader292, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader292 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader138, label %.lr.ph, !llvm.loop !176

.preheader:                                       ; preds = %.preheader.lr.ph, %Abc_TtFlip.exit
  %indvars.iv165 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next166, %Abc_TtFlip.exit ] ; 2 uses
  %.0148 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.hr, %Abc_TtFlip.exit ] ; 2 uses
  %.079147 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %Abc_TtFlip.exit ] ; 2 uses
  br i1 %i.y, label %.lr.ph145, label %._crit_edge

.lr.ph145:                                        ; preds = %.preheader, %Abc_TtSwapAdjacent.exit
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %Abc_TtSwapAdjacent.exit ], [ 0, %.preheader ] ; 2 uses
  %.1144 = phi i32 [ %i.ao, %Abc_TtSwapAdjacent.exit ], [ %.079147, %.preheader ] ; 2 uses
  br i1 %i.l, label %.lr.ph.i, label %Abc_TtCopy.exit107

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtCopy.exit107, label %.lr.ph.i, !llvm.loop !177

.lr.ph.i:                                         ; preds = %.lr.ph145, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %.lr.ph145 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !28 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq i64 %i.ak, %i.am
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = icmp ult i64 %i.ak, %i.am
  br i1 %i.an, label %Abc_TtCopy.exit107, label %.lr.ph18.i103.preheader

.lr.ph18.i103.preheader:                          ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ab, i1 false), !tbaa !28
  br label %Abc_TtCopy.exit107

Abc_TtCopy.exit107:                               ; preds = %bb.b, %.lr.ph18.i103.preheader, %bb.c, %.lr.ph145
  %i.ao = add nsw i32 %.1144, 1                   ; 2 uses
  call void @Dau_PrintNpnFunction(ptr noundef %i.f, i32 noundef %.1144, ptr noundef %i.i, i32 noundef %1, i32 noundef %.0148, ptr noundef nonnull %i.a, i32 noundef %2)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv160
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29 ; 7 uses
  %i.ar = icmp slt i32 %i.aq, 5
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %Abc_TtCopy.exit107
  br i1 %i.l, label %.lr.ph64.i, label %Abc_TtSwapAdjacent.exit

.lr.ph64.i:                                       ; preds = %bb.d
  %i.as = shl nuw nsw i32 1, %i.aq
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.at ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !28 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !28 ; 4 uses
  %i.ay = zext nneg i32 %i.as to i64              ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !28 ; 4 uses
  br i1 %min.iters.check238, label %scalar.ph237, label %vector.ph239

vector.ph239:                                     ; preds = %.lr.ph64.i
  %broadcast.splatinsert241 = insertelement <2 x i64> poison, i64 %i.av, i64 0
  %broadcast.splat242 = shufflevector <2 x i64> %broadcast.splatinsert241, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert243 = insertelement <2 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat244 = shufflevector <2 x i64> %broadcast.splatinsert243, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert245 = insertelement <2 x i64> poison, i64 %i.ay, i64 0
  %broadcast.splat246 = shufflevector <2 x i64> %broadcast.splatinsert245, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert247 = insertelement <2 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat248 = shufflevector <2 x i64> %broadcast.splatinsert247, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph239
  %index250 = phi i64 [ 0, %vector.ph239 ], [ %index.next253, %vector.body249 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index250 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load251 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !28 ; 3 uses
  %wide.load252 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !28 ; 3 uses
  %i.bd = and <2 x i64> %wide.load251, %broadcast.splat242
  %i.be = and <2 x i64> %wide.load252, %broadcast.splat242
  %i.bf = and <2 x i64> %wide.load251, %broadcast.splat244
  %i.bg = and <2 x i64> %wide.load252, %broadcast.splat244
  %i.bh = shl <2 x i64> %i.bf, %broadcast.splat246
  %i.bi = shl <2 x i64> %i.bg, %broadcast.splat246
  %i.bj = or <2 x i64> %i.bh, %i.bd
  %i.bk = or <2 x i64> %i.bi, %i.be
  %i.bl = and <2 x i64> %wide.load251, %broadcast.splat248
  %i.bm = and <2 x i64> %wide.load252, %broadcast.splat248
  %i.bn = lshr <2 x i64> %i.bl, %broadcast.splat246
  %i.bo = lshr <2 x i64> %i.bm, %broadcast.splat246
  %i.bp = or <2 x i64> %i.bj, %i.bn
  %i.bq = or <2 x i64> %i.bk, %i.bo
  store <2 x i64> %i.bp, ptr %i.bb, align 8, !tbaa !28
  store <2 x i64> %i.bq, ptr %i.bc, align 8, !tbaa !28
  %index.next253 = add nuw i64 %index250, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next253, %n.vec240
  br i1 %i.br, label %Abc_TtSwapAdjacent.exit, label %vector.body249, !llvm.loop !178

scalar.ph237:                                     ; preds = %.lr.ph64.i
  %i.bs = load i64, ptr %i.i, align 8, !tbaa !28  ; 3 uses
  %i.bt = and i64 %i.bs, %i.av
  %i.bu = and i64 %i.bs, %i.ax
  %i.bv = shl i64 %i.bu, %i.ay
  %i.bw = or i64 %i.bv, %i.bt
  %i.bx = and i64 %i.bs, %i.ba
  %i.by = lshr i64 %i.bx, %i.ay
  %i.bz = or i64 %i.bw, %i.by
  store i64 %i.bz, ptr %i.i, align 8, !tbaa !28
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph237.1

end_hunk_0
begin_hunk_1_@Dau_PrintNpnFunctions:bb.a
  %i.fd = shl nuw nsw i32 1, %i.eq
  %i.fe = zext nneg i32 %i.fd to i64              ; 7 uses
  %i.ff = sext i32 %i.eq to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !28 ; 7 uses
  br i1 %min.iters.check210, label %scalar.ph209, label %vector.ph211

vector.ph211:                                     ; preds = %.lr.ph.i123
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.fe, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert213 = insertelement <2 x i64> poison, i64 %i.fh, i64 0
  %broadcast.splat214 = shufflevector <2 x i64> %broadcast.splatinsert213, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph211
  %index216 = phi i64 [ 0, %vector.ph211 ], [ %index.next218, %vector.body215 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index216 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fi, align 8, !tbaa !28 ; 2 uses
  %wide.load217 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !28 ; 2 uses
  %i.fk = shl <2 x i64> %wide.load, %broadcast.splat
  %i.fl = shl <2 x i64> %wide.load217, %broadcast.splat
  %i.fm = and <2 x i64> %i.fk, %broadcast.splat214
  %i.fn = and <2 x i64> %i.fl, %broadcast.splat214
  %i.fo = and <2 x i64> %wide.load, %broadcast.splat214
  %i.fp = and <2 x i64> %wide.load217, %broadcast.splat214
  %i.fq = lshr <2 x i64> %i.fo, %broadcast.splat
  %i.fr = lshr <2 x i64> %i.fp, %broadcast.splat
  %i.fs = or <2 x i64> %i.fq, %i.fm
  %i.ft = or <2 x i64> %i.fr, %i.fn
  store <2 x i64> %i.fs, ptr %i.fi, align 8, !tbaa !28
  store <2 x i64> %i.ft, ptr %i.fj, align 8, !tbaa !28
  %index.next218 = add nuw i64 %index216, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next218, %n.vec212
  br i1 %i.fu, label %Abc_TtFlip.exit, label %vector.body215, !llvm.loop !185

scalar.ph209:                                     ; preds = %.lr.ph.i123
  %i.fv = load i64, ptr %i.i, align 8, !tbaa !28  ; 2 uses
  %i.fw = shl i64 %i.fv, %i.fe
  %i.fx = and i64 %i.fw, %i.fh
  %i.fy = and i64 %i.fv, %i.fh
  %i.fz = lshr i64 %i.fy, %i.fe
  %i.ga = or i64 %i.fz, %i.fx
  store i64 %i.ga, ptr %i.i, align 8, !tbaa !28
  %i.gb = load i64, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %i.gc = shl i64 %i.gb, %i.fe
  %i.gd = and i64 %i.gc, %i.fh
  %i.ge = and i64 %i.gb, %i.fh
  %i.gf = lshr i64 %i.ge, %i.fe
  %i.gg = or i64 %i.gf, %i.gd
  store i64 %i.gg, ptr %i.af, align 8, !tbaa !28
  br i1 %exitcond60.not.i.1, label %Abc_TtFlip.exit, label %scalar.ph209.2

scalar.ph209.2:                                   ; preds = %scalar.ph209
  %i.gh = load i64, ptr %i.ag, align 8, !tbaa !28 ; 2 uses
  %i.gi = shl i64 %i.gh, %i.fe
  %i.gj = and i64 %i.gi, %i.fh
  %i.gk = and i64 %i.gh, %i.fh
  %i.gl = lshr i64 %i.gk, %i.fe
  %i.gm = or i64 %i.gl, %i.gj
  store i64 %i.gm, ptr %i.ag, align 8, !tbaa !28
  br label %Abc_TtFlip.exit

bb.m:                                             ; preds = %bb.k
  %i.gn = add nsw i32 %i.eq, -6                   ; 3 uses
  %i.go = shl nuw i32 1, %i.gn                    ; 4 uses
  br i1 %i.l, label %.preheader.lr.ph.i112, label %Abc_TtFlip.exit

.preheader.lr.ph.i112:                            ; preds = %bb.m
  %.not.i113 = icmp eq i32 %i.gn, 31
  %i.gp = shl i32 2, %i.gn
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  br i1 %.not.i113, label %Abc_TtFlip.exit, label %.preheader.us.preheader.i114

.preheader.us.preheader.i114:                     ; preds = %.preheader.lr.ph.i112
  %i.gr = sext i32 %i.go to i64                   ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.go, i32 1) ; 2 uses
  %wide.trip.count.i115 = zext nneg i32 %smax.i to i64 ; 5 uses
  %i.gs = shl nuw nsw i64 %wide.trip.count.i115, 3
  %i.gt = shl nsw i64 %i.gq, 3
  %i.gu = add nsw i64 %i.gr, %wide.trip.count.i115
  %i.gv = shl nsw i64 %i.gu, 3
  %min.iters.check224 = icmp slt i32 %i.go, 4
  %i.gw = getelementptr i8, ptr %i.i, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.i, i64 %i.gs
  %n.vec226 = and i64 %wide.trip.count.i115, 2147483644
  %xtraiter294 = and i64 %wide.trip.count.i115, 1
  %i.gy = icmp slt i32 %i.go, 2
  %unroll_iter297 = and i64 %wide.trip.count.i115, 2147483646
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  %lcmp.mod296 = trunc i32 %smax.i to i1
  br label %.preheader.us.i116

.preheader.us.i116:                               ; preds = %._crit_edge.us.i122, %.preheader.us.preheader.i114
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i122 ], [ 0, %.preheader.us.preheader.i114 ] ; 2 uses
  %.051.us.i = phi ptr [ %i.ho, %._crit_edge.us.i122 ], [ %i.i, %.preheader.us.preheader.i114 ] ; 7 uses
  %invariant.gep.i117 = getelementptr [8 x i8], ptr %.051.us.i, i64 %i.gr ; 5 uses
  br i1 %min.iters.check224, label %scalar.ph223.preheader, label %vector.memcheck

scalar.ph223.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i116
  br i1 %i.gy, label %scalar.ph223.epil.preheader, label %scalar.ph223

vector.memcheck:                                  ; preds = %.preheader.us.i116
  %i.gz = mul i64 %i.gt, %indvar                  ; 2 uses
  %scevgep222 = getelementptr i8, ptr %i.gw, i64 %i.gz
  %scevgep = getelementptr i8, ptr %i.gx, i64 %i.gz
  %bound0 = icmp ult ptr %.051.us.i, %scevgep222
  %bound1 = icmp ult ptr %invariant.gep.i117, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph223.preheader, label %vector.body227

vector.body227:                                   ; preds = %vector.memcheck, %vector.body227
  %index228 = phi i64 [ %index.next233, %vector.body227 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %index228 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %wide.load229 = load <2 x i64>, ptr %i.ha, align 8, !tbaa !28, !alias.scope !194, !noalias !195
  %wide.load230 = load <2 x i64>, ptr %i.hb, align 8, !tbaa !28, !alias.scope !194, !noalias !195
  %i.hc = getelementptr [8 x i8], ptr %invariant.gep.i117, i64 %index228 ; 3 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 16     ; 2 uses
  %wide.load231 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !28, !alias.scope !195
  %wide.load232 = load <2 x i64>, ptr %i.hd, align 8, !tbaa !28, !alias.scope !195
  store <2 x i64> %wide.load231, ptr %i.ha, align 8, !tbaa !28, !alias.scope !194, !noalias !195
  store <2 x i64> %wide.load232, ptr %i.hb, align 8, !tbaa !28, !alias.scope !194, !noalias !195
  store <2 x i64> %wide.load229, ptr %i.hc, align 8, !tbaa !28, !alias.scope !195
  store <2 x i64> %wide.load230, ptr %i.hd, align 8, !tbaa !28, !alias.scope !195
  %index.next233 = add nuw i64 %index228, 4       ; 2 uses
  %i.he = icmp eq i64 %index.next233, %n.vec226
  br i1 %i.he, label %._crit_edge.us.i122, label %vector.body227, !llvm.loop !189

scalar.ph223:                                     ; preds = %scalar.ph223.preheader, %scalar.ph223
  %indvars.iv.i118 = phi i64 [ %indvars.iv.next.i120.1, %scalar.ph223 ], [ 0, %scalar.ph223.preheader ] ; 4 uses
  %niter298 = phi i64 [ %niter298.next.1, %scalar.ph223 ], [ 0, %scalar.ph223.preheader ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i118 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !28
  %gep.i119 = getelementptr [8 x i8], ptr %invariant.gep.i117, i64 %indvars.iv.i118 ; 2 uses
  %i.hh = load i64, ptr %gep.i119, align 8, !tbaa !28
  store i64 %i.hh, ptr %i.hf, align 8, !tbaa !28
  store i64 %i.hg, ptr %gep.i119, align 8, !tbaa !28
  %indvars.iv.next.i120 = or disjoint i64 %indvars.iv.i118, 1 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.next.i120 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !28
  %gep.i119.1 = getelementptr [8 x i8], ptr %invariant.gep.i117, i64 %indvars.iv.next.i120 ; 2 uses
  %i.hk = load i64, ptr %gep.i119.1, align 8, !tbaa !28
  store i64 %i.hk, ptr %i.hi, align 8, !tbaa !28
  store i64 %i.hj, ptr %gep.i119.1, align 8, !tbaa !28
  %indvars.iv.next.i120.1 = add nuw nsw i64 %indvars.iv.i118, 2 ; 2 uses
  %niter298.next.1 = add i64 %niter298, 2         ; 2 uses
  %niter298.ncmp.1 = icmp eq i64 %niter298.next.1, %unroll_iter297
  br i1 %niter298.ncmp.1, label %._crit_edge.us.i122.loopexit.unr-lcssa, label %scalar.ph223, !llvm.loop !190

._crit_edge.us.i122.loopexit.unr-lcssa:           ; preds = %scalar.ph223
  br i1 %lcmp.mod295.not, label %._crit_edge.us.i122, label %scalar.ph223.epil.preheader

scalar.ph223.epil.preheader:                      ; preds = %._crit_edge.us.i122.loopexit.unr-lcssa, %scalar.ph223.preheader
  %indvars.iv.i118.epil.init = phi i64 [ 0, %scalar.ph223.preheader ], [ %indvars.iv.next.i120.1, %._crit_edge.us.i122.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod296)
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i118.epil.init ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !28
  %gep.i119.epil = getelementptr [8 x i8], ptr %invariant.gep.i117, i64 %indvars.iv.i118.epil.init ; 2 uses
  %i.hn = load i64, ptr %gep.i119.epil, align 8, !tbaa !28
  store i64 %i.hn, ptr %i.hl, align 8, !tbaa !28
  store i64 %i.hm, ptr %gep.i119.epil, align 8, !tbaa !28
  br label %._crit_edge.us.i122

._crit_edge.us.i122:                              ; preds = %vector.body227, %scalar.ph223.epil.preheader, %._crit_edge.us.i122.loopexit.unr-lcssa
  %i.ho = getelementptr inbounds [8 x i8], ptr %.051.us.i, i64 %i.gq ; 2 uses
  %i.hp = icmp ult ptr %i.ho, %i.z
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hp, label %.preheader.us.i116, label %Abc_TtFlip.exit, !llvm.loop !8

Abc_TtFlip.exit:                                  ; preds = %._crit_edge.us.i122, %vector.body215, %scalar.ph209, %scalar.ph209.2, %bb.j, %bb.l, %bb.m, %.preheader.lr.ph.i112
  %i.hq = shl nuw i32 1, %i.eq
  %i.hr = xor i32 %i.hq, %.0148
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %._crit_edge149, label %.preheader, !llvm.loop !191

._crit_edge149:                                   ; preds = %Abc_TtFlip.exit, %.preheader138
  %i.hs = getelementptr i8, ptr %i.f, i64 4
  %.val93 = load i32, ptr %i.hs, align 4, !tbaa !55 ; 2 uses
  %i.ht = sdiv i32 %i.s, %.val93
  %i.hu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %.val93, i32 noundef %i.s, i32 noundef %i.ht) ; 0 uses
  %i.hv = load ptr, ptr @stdout, align 8, !tbaa !27 ; 2 uses
  %i.hw = icmp samesign ugt i32 %1, 5
  %i.hx = add nsw i32 %1, -2
  %i.hy = icmp slt i32 %1, 2
  br i1 %i.hy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge149
  %i.hz = load i64, ptr %i.k, align 8, !tbaa !28
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = and i32 %i.ia, 15                       ; 3 uses
  %i.ic = icmp samesign ult i32 %i.ib, 10
  %i.id = or disjoint i32 %i.ib, 48
  %i.ie = add nuw nsw i32 %i.ib, 55
  %.0.i.i = select i1 %i.ic, i32 %i.id, i32 %i.ie
  %fputc17.i = tail call i32 @fputc(i32 %.0.i.i, ptr %i.hv) ; 0 uses
  br label %Abc_TtPrintHexRev.exit

bb.o:                                             ; preds = %._crit_edge149
  %.not22.i = icmp slt i32 %i.e, 1
  br i1 %.not22.i, label %Abc_TtPrintHexRev.exit, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %bb.o
  %i.if = zext nneg i32 %i.e to i64
  %.idx.i125 = shl nuw nsw i64 %i.if, 3
  %i.ig = getelementptr i8, ptr %i.k, i64 %.idx.i125
  %.01521.i = getelementptr i8, ptr %i.ig, i64 -8
  %notmask.i = shl nsw i32 -1, %i.hx
  %i.ih = xor i32 %notmask.i, -1
  %i.ii = select i1 %i.hw, i32 15, i32 %i.ih
  %i.ij = zext nneg i32 %i.ii to i64
  br label %bb.p

.loopexit.i:                                      ; preds = %bb.q
  %.015.i = getelementptr inbounds i8, ptr %.01523.i, i64 -8 ; 2 uses
  %.not.i128 = icmp ult ptr %.015.i, %i.k
  br i1 %.not.i128, label %Abc_TtPrintHexRev.exit, label %bb.p, !llvm.loop !11

bb.p:                                             ; preds = %.loopexit.i, %.lr.ph.i124
  %.01523.i = phi ptr [ %.01521.i, %.lr.ph.i124 ], [ %.015.i, %.loopexit.i ] ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.i126 = phi i64 [ %i.ij, %bb.p ], [ %indvars.iv.next.i127, %bb.q ] ; 3 uses
  %i.ik = load i64, ptr %.01523.i, align 8, !tbaa !28
  %i.il = shl nsw i64 %indvars.iv.i126, 2
  %i.im = and i64 %i.il, 4294967292
  %i.in = lshr i64 %i.ik, %i.im
  %i.io = trunc i64 %i.in to i32
  %i.ip = and i32 %i.io, 15                       ; 3 uses
  %i.iq = icmp samesign ult i32 %i.ip, 10
  %i.ir = or disjoint i32 %i.ip, 48
  %i.is = add nuw nsw i32 %i.ip, 55
  %.0.i18.i = select i1 %i.iq, i32 %i.ir, i32 %i.is
  %fputc.i = tail call i32 @fputc(i32 %.0.i18.i, ptr %i.hv) ; 0 uses
  %indvars.iv.next.i127 = add nsw i64 %indvars.iv.i126, -1
  %i.it = icmp sgt i64 %indvars.iv.i126, 0
  br i1 %i.it, label %bb.q, label %.loopexit.i, !llvm.loop !12

Abc_TtPrintHexRev.exit:                           ; preds = %.loopexit.i, %bb.n, %bb.o
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %Abc_TtPrintHexRev.exit
  tail call void @free(ptr noundef nonnull %i.p) #27
  br label %bb.s

bb.s:                                             ; preds = %Abc_TtPrintHexRev.exit, %bb.r
  %.not88 = icmp eq ptr %i.q, null
  br i1 %.not88, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.q) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.not89 = icmp eq ptr %i.i, null
  br i1 %.not89, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %i.i) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.not90 = icmp eq ptr %i.k, null
  br i1 %.not90, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.k) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.iu = icmp eq ptr %i.f, null
  br i1 %i.iu, label %Vec_MemHashFree.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iv = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !56 ; 3 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %Vec_IntFreeP.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq ptr %i.iz, null
  br i1 %.not.i.i, label %bb.ab, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aa
  tail call void @free(ptr noundef nonnull %i.iz) #27
  br label %bb.ab

bb.ab:                                            ; preds = %.thread.i.i, %bb.aa
  tail call void @free(ptr noundef nonnull %i.iw) #27
  br label %Vec_IntFreeP.exit.i

Vec_IntFreeP.exit.i:                              ; preds = %bb.ab, %bb.z
  %i.ja = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !56 ; 3 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %Vec_MemHashFree.exit, label %bb.ac

bb.ac:                                            ; preds = %Vec_IntFreeP.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !35 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.je, null
  br i1 %.not.i3.i, label %bb.ad, label %.thread.i4.i

.thread.i4.i:                                     ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.je) #27
  br label %bb.ad

bb.ad:                                            ; preds = %.thread.i4.i, %bb.ac
  tail call void @free(ptr noundef nonnull %i.jb) #27
  br label %Vec_MemHashFree.exit

Vec_MemHashFree.exit:                             ; preds = %bb.y, %Vec_IntFreeP.exit.i, %bb.ad
  %i.jf = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !52 ; 2 uses
  %.not19.i = icmp slt i32 %i.jg, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !47 ; 3 uses
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %Vec_MemHashFree.exit
  %narrow = add nuw i32 %i.jg, 1
  %i.jh = zext i32 %narrow to i64
  br label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.preheader, %bb.af
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i131, %bb.af ], [ 0, %.lr.ph.i129.preheader ] ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.pre23.i, i64 %indvars.iv.i130 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !49 ; 2 uses
  %.not18.i = icmp eq ptr %i.jj, null
  br i1 %.not18.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i129
  tail call void @free(ptr noundef nonnull %i.jj) #27
  store ptr null, ptr %i.ji, align 8, !tbaa !49
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i129
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i130, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next.i131, %i.jh
  br i1 %exitcond170.not, label %._crit_edge.thread.i, label %.lr.ph.i129, !llvm.loop !7

._crit_edge.i:                                    ; preds = %Vec_MemHashFree.exit
  %.not16.i = icmp eq ptr %.pre23.i, null
  br i1 %.not16.i, label %Vec_MemFree.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.af, %._crit_edge.i
  tail call void @free(ptr noundef nonnull %.pre23.i) #27
  br label %Vec_MemFree.exit

Vec_MemFree.exit:                                 ; preds = %._crit_edge.i, %._crit_edge.thread.i
  tail call void @free(ptr noundef nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Dau_CollectNpnFunctionsArray(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #27
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %5, align 8, !tbaa !23
  %.neg165 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  %.neg = sdiv i64 %i.e, -1000
  %.neg166 = add i64 %.neg, %.neg165
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg166, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.f = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  store i32 0, ptr %i.g, align 4, !tbaa !33
  store i32 100, ptr %i.f, align 8, !tbaa !34
  %i.h = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #29 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val113 = load i32, ptr %i.j, align 4, !tbaa !43 ; 2 uses
  %i.k = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29 ; 6 uses
  %i.l = add i32 %.val113, -1
  %or.cond.i = icmp ult i32 %i.l, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val113 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 4 uses
  store i32 0, ptr %i.m, align 4, !tbaa !33
  store i32 %spec.store.select.i, ptr %i.k, align 8, !tbaa !34
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.n = sext i32 %spec.store.select.i to i64
  %i.o = shl nsw i64 %i.n, 2
end_hunk_1
