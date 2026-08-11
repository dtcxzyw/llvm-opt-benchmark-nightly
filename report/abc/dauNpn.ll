inline.NumInlined: 286
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 49
begin_hunk_0_@Dau_CollectBoothFunctions:bb.a
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
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !171

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
  %i.am = load i64, ptr %i.al, align 8, !tbaa !15
  %i.an = or i64 %i.am, %i.ai
  store i64 %i.an, ptr %i.al, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.us
  %i.ao = add nuw nsw i32 %.04655.us, 1           ; 2 uses
  %exitcond65.not = icmp eq i32 %i.ao, %smax64
  br i1 %exitcond65.not, label %.preheader, label %.lr.ph.us, !llvm.loop !172

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
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !15 ; 7 uses
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
  store i64 %.5.i.us, ptr %i.bf, align 8, !tbaa !15
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.bv = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.h, ptr noundef %i.bu) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond70.not, label %._crit_edge.thread, label %.lr.ph.split.us, !llvm.loop !173

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
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !15
  %i.cl = or i64 %i.ck, %i.cg
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph57.split, %bb.d
  %i.cm = add nuw nsw i32 %.04655, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cm, %smax64
  br i1 %exitcond.not, label %.preheader, label %.lr.ph57.split, !llvm.loop !172

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.04458 = phi i32 [ %i.cr, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.cn = shl i32 %.04458, %i.be
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.co
  %i.cq = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.h, ptr noundef %i.cp) ; 0 uses
  %i.cr = add nuw nsw i32 %.04458, 1              ; 2 uses
  %exitcond67.not = icmp eq i32 %i.cr, %smax69
  br i1 %exitcond67.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !173

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
  %i.c = shl nuw i32 1, %i.b                      ; 3 uses
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 11 uses
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
  br i1 %i.k, label %.lr.ph.i, label %.lr.ph.preheader, !llvm.loop !174

Abc_TtPrintBits2.exit:                            ; preds = %bb.b
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38) ; 0 uses
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38) ; 0 uses
  %i.n = zext nneg i32 %3 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %Abc_TtPrintBits2.exit
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40) ; 0 uses
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !12 ; 2 uses
  %7 = icmp sgt i32 %3, 5                         ; 2 uses
  %i.q = add nsw i32 %3, -2                       ; 2 uses
  %i.r = icmp slt i32 %3, 2                       ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.s = load i64, ptr %2, align 8, !tbaa !15
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 15                         ; 3 uses
  %i.v = icmp samesign ult i32 %i.u, 10
  %i.w = or disjoint i32 %i.u, 48
  %i.x = add nuw nsw i32 %i.u, 55
  %.0.i.i = select i1 %i.v, i32 %i.w, i32 %i.x
  %fputc17.i = tail call i32 @fputc(i32 %.0.i.i, ptr %i.p) ; 0 uses
  br label %Abc_TtPrintHexRev.exit

bb.d:                                             ; preds = %._crit_edge
  %i.y = icmp samesign ult i32 %3, 7
  %i.z = select i1 %i.y, i32 1, i32 %i.c          ; 2 uses
  %.not22.i = icmp slt i32 %i.z, 1
  br i1 %.not22.i, label %Abc_TtPrintHexRev.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.d
  %i.aa = zext nneg i32 %i.z to i64
  %.idx.i = shl nuw nsw i64 %i.aa, 3
  %i.ab = getelementptr i8, ptr %2, i64 %.idx.i
  %.021.i = getelementptr i8, ptr %i.ab, i64 -8
  %notmask.i = shl nsw i32 -1, %i.q
  %i.ac = xor i32 %notmask.i, -1
  %i.ad = select i1 %7, i32 15, i32 %i.ac
  %i.ae = zext nneg i32 %i.ad to i64
  br label %bb.e

.loopexit.i:                                      ; preds = %bb.f
  %.0.i27 = getelementptr inbounds i8, ptr %.023.i, i64 -8 ; 2 uses
  %.not.i = icmp ult ptr %.0.i27, %2
  br i1 %.not.i, label %Abc_TtPrintHexRev.exit, label %bb.e, !llvm.loop !175

bb.e:                                             ; preds = %.loopexit.i, %.lr.ph.i26
  %.023.i = phi ptr [ %.021.i, %.lr.ph.i26 ], [ %.0.i27, %.loopexit.i ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i = phi i64 [ %i.ae, %bb.e ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.af = load i64, ptr %.023.i, align 8, !tbaa !15
  %i.ag = shl nsw i64 %indvars.iv.i, 2
  %i.ah = and i64 %i.ag, 4294967292
  %i.ai = lshr i64 %i.af, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 15                       ; 3 uses
  %i.al = icmp samesign ult i32 %i.ak, 10
  %i.am = or disjoint i32 %i.ak, 48
  %i.an = add nuw nsw i32 %i.ak, 55
  %.0.i18.i = select i1 %i.al, i32 %i.am, i32 %i.an
  %fputc.i = tail call i32 @fputc(i32 %.0.i18.i, ptr %i.p) ; 0 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ao = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.ao, label %bb.f, label %.loopexit.i, !llvm.loop !176

Abc_TtPrintHexRev.exit:                           ; preds = %.loopexit.i, %bb.c, %bb.d
  %i.ap = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef %2)
  %i.aq = icmp sgt i32 %i.d, 0                    ; 2 uses
  br i1 %i.aq, label %.lr.ph.preheader.i, label %Abc_TtNot.exit

.lr.ph.preheader.i:                               ; preds = %Abc_TtPrintHexRev.exit
  %min.iters.check = icmp ult i32 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.i28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.ar = and i32 %i.d, 2147483644
  %n.vec = zext nneg i32 %i.ar to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.as, align 8, !tbaa !15
  %wide.load76 = load <2 x i64>, ptr %i.at, align 8, !tbaa !15
  %i.au = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.av = xor <2 x i64> %wide.load76, splat (i64 -1)
  store <2 x i64> %i.au, ptr %i.as, align 8, !tbaa !15
  store <2 x i64> %i.av, ptr %i.at, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %Abc_TtNot.exit, label %vector.body, !llvm.loop !177

.lr.ph.i28:                                       ; preds = %.lr.ph.preheader.i
  %i.ax = load i64, ptr %2, align 8, !tbaa !15
  %i.ay = xor i64 %i.ax, -1
  store i64 %i.ay, ptr %2, align 8, !tbaa !15
  %exitcond.not.i = icmp eq i32 %i.d, 1
  br i1 %exitcond.not.i, label %Abc_TtNot.exit, label %.lr.ph.i28.1

.lr.ph.i28.1:                                     ; preds = %.lr.ph.i28
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !15
  %i.bb = xor i64 %i.ba, -1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !15
  %exitcond.not.i.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond.not.i.1, label %Abc_TtNot.exit, label %.lr.ph.i28.2

.lr.ph.i28.2:                                     ; preds = %.lr.ph.i28.1
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !15
  %i.be = xor i64 %i.bd, -1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !15
  br label %Abc_TtNot.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.bg) ; 0 uses
  %i.bi = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !178

Abc_TtNot.exit:                                   ; preds = %vector.body, %.lr.ph.i28, %.lr.ph.i28.1, %.lr.ph.i28.2, %Abc_TtPrintHexRev.exit
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %i.ap) ; 0 uses
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42) ; 0 uses
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !12 ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %Abc_TtNot.exit
  %i.bm = load i64, ptr %2, align 8, !tbaa !15
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 15                       ; 3 uses
  %i.bp = icmp samesign ult i32 %i.bo, 10
  %i.bq = or disjoint i32 %i.bo, 48
  %i.br = add nuw nsw i32 %i.bo, 55
  %.0.i.i44 = select i1 %i.bp, i32 %i.bq, i32 %i.br
  %fputc17.i45 = tail call i32 @fputc(i32 %.0.i.i44, ptr %i.bl) ; 0 uses
  br label %Abc_TtPrintHexRev.exit46

bb.h:                                             ; preds = %Abc_TtNot.exit
  %i.bs = icmp samesign ult i32 %3, 7
  %i.bt = select i1 %i.bs, i32 1, i32 %i.c        ; 2 uses
  %.not22.i31 = icmp slt i32 %i.bt, 1
  br i1 %.not22.i31, label %Abc_TtPrintHexRev.exit46, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.h
  %i.bu = zext nneg i32 %i.bt to i64
  %.idx.i33 = shl nuw nsw i64 %i.bu, 3
  %i.bv = getelementptr i8, ptr %2, i64 %.idx.i33
  %.021.i34 = getelementptr i8, ptr %i.bv, i64 -8
  %notmask.i35 = shl nsw i32 -1, %i.q
  %i.bw = xor i32 %notmask.i35, -1
  %i.bx = select i1 %7, i32 15, i32 %i.bw
  %i.by = zext nneg i32 %i.bx to i64
  br label %bb.i

.loopexit.i41:                                    ; preds = %bb.j
  %.0.i42 = getelementptr inbounds i8, ptr %.023.i36, i64 -8 ; 2 uses
  %.not.i43 = icmp ult ptr %.0.i42, %2
  br i1 %.not.i43, label %Abc_TtPrintHexRev.exit46, label %bb.i, !llvm.loop !175

bb.i:                                             ; preds = %.loopexit.i41, %.lr.ph.i32
  %.023.i36 = phi ptr [ %.021.i34, %.lr.ph.i32 ], [ %.0.i42, %.loopexit.i41 ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.i37 = phi i64 [ %i.by, %bb.i ], [ %indvars.iv.next.i40, %bb.j ] ; 3 uses
  %i.bz = load i64, ptr %.023.i36, align 8, !tbaa !15
  %i.ca = shl nsw i64 %indvars.iv.i37, 2
  %i.cb = and i64 %i.ca, 4294967292
  %i.cc = lshr i64 %i.bz, %i.cb
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = and i32 %i.cd, 15                       ; 3 uses
  %i.cf = icmp samesign ult i32 %i.ce, 10
  %i.cg = or disjoint i32 %i.ce, 48
  %i.ch = add nuw nsw i32 %i.ce, 55
  %.0.i18.i38 = select i1 %i.cf, i32 %i.cg, i32 %i.ch
  %fputc.i39 = tail call i32 @fputc(i32 %.0.i18.i38, ptr %i.bl) ; 0 uses
  %indvars.iv.next.i40 = add nsw i64 %indvars.iv.i37, -1
  %i.ci = icmp sgt i64 %indvars.iv.i37, 0
  br i1 %i.ci, label %bb.j, label %.loopexit.i41, !llvm.loop !176

.critedge:                                        ; preds = %bb.a
  %i.cj = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef %2) ; 0 uses
  %i.ck = icmp sgt i32 %i.d, 0
  br i1 %i.ck, label %.lr.ph.preheader.i47, label %Abc_TtNot.exit60.thread

Abc_TtNot.exit60.thread:                          ; preds = %.critedge
  %i.cl = tail call fastcc i32 @Vec_MemHashInsert(ptr noundef %0, ptr noundef %2) ; 0 uses
  br label %bb.l

.lr.ph.preheader.i47:                             ; preds = %.critedge
  %wide.trip.count.i48 = zext nneg i32 %i.d to i64 ; 2 uses
  %min.iters.check78 = icmp ult i32 %i.d, 4
  br i1 %min.iters.check78, label %.lr.ph.i49, label %vector.ph79

vector.ph79:                                      ; preds = %.lr.ph.preheader.i47
  %n.vec80 = and i64 %wide.trip.count.i48, 2147483644
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next85, %vector.body81 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index82 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %wide.load83 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@Dau_PrintNpnFunctions:bb.a
  %i.ey = and i64 %i.eu, %i.ex
  %i.ez = and i64 %i.ex, %i.er
  %i.fa = lshr i64 %i.ez, %i.et
  %i.fb = or i64 %i.fa, %i.ey
  store i64 %i.fb, ptr %i.i, align 8, !tbaa !15
  br label %Abc_TtFlip.exit

bb.k:                                             ; preds = %bb.i
  %i.fc = icmp slt i32 %i.eq, 6
  br i1 %i.fc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %i.l, label %.lr.ph.i123, label %Abc_TtFlip.exit

.lr.ph.i123:                                      ; preds = %bb.l
  %i.fd = shl nuw nsw i32 1, %i.eq
  %i.fe = zext nneg i32 %i.fd to i64              ; 7 uses
  %i.ff = sext i32 %i.eq to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !15 ; 7 uses
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
  %wide.load = load <2 x i64>, ptr %i.fi, align 8, !tbaa !15 ; 2 uses
  %wide.load217 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !15 ; 2 uses
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
  store <2 x i64> %i.fs, ptr %i.fi, align 8, !tbaa !15
  store <2 x i64> %i.ft, ptr %i.fj, align 8, !tbaa !15
  %index.next218 = add nuw i64 %index216, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next218, %n.vec212
  br i1 %i.fu, label %Abc_TtFlip.exit, label %vector.body215, !llvm.loop !194

scalar.ph209:                                     ; preds = %.lr.ph.i123
  %i.fv = load i64, ptr %i.i, align 8, !tbaa !15  ; 2 uses
  %i.fw = shl i64 %i.fv, %i.fe
  %i.fx = and i64 %i.fw, %i.fh
  %i.fy = and i64 %i.fv, %i.fh
  %i.fz = lshr i64 %i.fy, %i.fe
  %i.ga = or i64 %i.fz, %i.fx
  store i64 %i.ga, ptr %i.i, align 8, !tbaa !15
  %i.gb = load i64, ptr %i.af, align 8, !tbaa !15 ; 2 uses
  %i.gc = shl i64 %i.gb, %i.fe
  %i.gd = and i64 %i.gc, %i.fh
  %i.ge = and i64 %i.gb, %i.fh
  %i.gf = lshr i64 %i.ge, %i.fe
  %i.gg = or i64 %i.gf, %i.gd
  store i64 %i.gg, ptr %i.af, align 8, !tbaa !15
  br i1 %exitcond60.not.i.1, label %Abc_TtFlip.exit, label %scalar.ph209.2

scalar.ph209.2:                                   ; preds = %scalar.ph209
  %i.gh = load i64, ptr %i.ag, align 8, !tbaa !15 ; 2 uses
  %i.gi = shl i64 %i.gh, %i.fe
  %i.gj = and i64 %i.gi, %i.fh
  %i.gk = and i64 %i.gh, %i.fh
  %i.gl = lshr i64 %i.gk, %i.fe
  %i.gm = or i64 %i.gl, %i.gj
  store i64 %i.gm, ptr %i.ag, align 8, !tbaa !15
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
  %wide.trip.count.i115 = zext nneg i32 %smax.i to i64 ; 4 uses
  %i.gs = shl nuw nsw i64 %wide.trip.count.i115, 3 ; 2 uses
  %i.gt = shl nsw i64 %i.gq, 3
  %i.gu = shl nsw i64 %i.gr, 3                    ; 2 uses
  %min.iters.check225 = icmp slt i32 %i.go, 4
  %i.gv = getelementptr i8, ptr %i.i, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gs
  %i.gx = getelementptr i8, ptr %i.i, i64 %i.gu
  %i.gy = getelementptr i8, ptr %i.i, i64 %i.gs
  %n.vec227 = and i64 %wide.trip.count.i115, 2147483644
  %xtraiter295 = and i64 %wide.trip.count.i115, 1
  %i.gz = icmp slt i32 %i.go, 2
  %unroll_iter298 = and i64 %wide.trip.count.i115, 2147483646
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  %lcmp.mod297 = trunc i32 %smax.i to i1
  br label %.preheader.us.i116

.preheader.us.i116:                               ; preds = %._crit_edge.us.i122, %.preheader.us.preheader.i114
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i122 ], [ 0, %.preheader.us.preheader.i114 ] ; 2 uses
  %.051.us.i = phi ptr [ %i.hp, %._crit_edge.us.i122 ], [ %i.i, %.preheader.us.preheader.i114 ] ; 7 uses
  %invariant.gep.i117 = getelementptr [8 x i8], ptr %.051.us.i, i64 %i.gr ; 4 uses
  br i1 %min.iters.check225, label %scalar.ph224.preheader, label %vector.memcheck

scalar.ph224.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i116
  br i1 %i.gz, label %scalar.ph224.epil.preheader, label %scalar.ph224

vector.memcheck:                                  ; preds = %.preheader.us.i116
  %i.ha = mul i64 %i.gt, %indvar                  ; 3 uses
  %scevgep223 = getelementptr i8, ptr %i.gw, i64 %i.ha
  %scevgep222 = getelementptr i8, ptr %i.gx, i64 %i.ha
  %scevgep = getelementptr i8, ptr %i.gy, i64 %i.ha
  %bound0 = icmp ult ptr %.051.us.i, %scevgep223
  %bound1 = icmp ult ptr %scevgep222, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph224.preheader, label %vector.body228

vector.body228:                                   ; preds = %vector.memcheck, %vector.body228
  %index229 = phi i64 [ %index.next234, %vector.body228 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %index229 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %wide.load230 = load <2 x i64>, ptr %i.hb, align 8, !tbaa !15, !alias.scope !195, !noalias !198
  %wide.load231 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !15, !alias.scope !195, !noalias !198
  %i.hd = getelementptr [8 x i8], ptr %invariant.gep.i117, i64 %index229 ; 3 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 16     ; 2 uses
  %wide.load232 = load <2 x i64>, ptr %i.hd, align 8, !tbaa !15, !alias.scope !198
  %wide.load233 = load <2 x i64>, ptr %i.he, align 8, !tbaa !15, !alias.scope !198
  store <2 x i64> %wide.load232, ptr %i.hb, align 8, !tbaa !15, !alias.scope !195, !noalias !198
  store <2 x i64> %wide.load233, ptr %i.hc, align 8, !tbaa !15, !alias.scope !195, !noalias !198
  store <2 x i64> %wide.load230, ptr %i.hd, align 8, !tbaa !15, !alias.scope !198
  store <2 x i64> %wide.load231, ptr %i.he, align 8, !tbaa !15, !alias.scope !198
  %index.next234 = add nuw i64 %index229, 4       ; 2 uses
  %i.hf = icmp eq i64 %index.next234, %n.vec227
  br i1 %i.hf, label %._crit_edge.us.i122, label %vector.body228, !llvm.loop !200

scalar.ph224:                                     ; preds = %scalar.ph224.preheader, %scalar.ph224
  %indvars.iv.i118 = phi i64 [ %indvars.iv.next.i120.1, %scalar.ph224 ], [ 0, %scalar.ph224.preheader ] ; 4 uses
  %niter299 = phi i64 [ %niter299.next.1, %scalar.ph224 ], [ 0, %scalar.ph224.preheader ]
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i118 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !15
  %gep.i119 = getelementptr [8 x i8], ptr %invariant.gep.i117, i64 %indvars.iv.i118 ; 2 uses
  %i.hi = load i64, ptr %gep.i119, align 8, !tbaa !15
  store i64 %i.hi, ptr %i.hg, align 8, !tbaa !15
  store i64 %i.hh, ptr %gep.i119, align 8, !tbaa !15
  %indvars.iv.next.i120 = or disjoint i64 %indvars.iv.i118, 1 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.next.i120 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !15
  %gep.i119.1 = getelementptr [8 x i8], ptr %invariant.gep.i117, i64 %indvars.iv.next.i120 ; 2 uses
  %i.hl = load i64, ptr %gep.i119.1, align 8, !tbaa !15
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !15
  store i64 %i.hk, ptr %gep.i119.1, align 8, !tbaa !15
  %indvars.iv.next.i120.1 = add nuw nsw i64 %indvars.iv.i118, 2 ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %._crit_edge.us.i122.loopexit.unr-lcssa, label %scalar.ph224, !llvm.loop !201

._crit_edge.us.i122.loopexit.unr-lcssa:           ; preds = %scalar.ph224
  br i1 %lcmp.mod296.not, label %._crit_edge.us.i122, label %scalar.ph224.epil.preheader

scalar.ph224.epil.preheader:                      ; preds = %._crit_edge.us.i122.loopexit.unr-lcssa, %scalar.ph224.preheader
  %indvars.iv.i118.epil.init = phi i64 [ 0, %scalar.ph224.preheader ], [ %indvars.iv.next.i120.1, %._crit_edge.us.i122.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod297)
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i118.epil.init ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !15
  %gep.i119.epil = getelementptr [8 x i8], ptr %invariant.gep.i117, i64 %indvars.iv.i118.epil.init ; 2 uses
  %i.ho = load i64, ptr %gep.i119.epil, align 8, !tbaa !15
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !15
  store i64 %i.hn, ptr %gep.i119.epil, align 8, !tbaa !15
  br label %._crit_edge.us.i122

._crit_edge.us.i122:                              ; preds = %vector.body228, %scalar.ph224.epil.preheader, %._crit_edge.us.i122.loopexit.unr-lcssa
  %i.hp = getelementptr inbounds [8 x i8], ptr %.051.us.i, i64 %i.gq ; 2 uses
  %i.hq = icmp ult ptr %i.hp, %i.z
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hq, label %.preheader.us.i116, label %Abc_TtFlip.exit, !llvm.loop !154

Abc_TtFlip.exit:                                  ; preds = %._crit_edge.us.i122, %vector.body215, %scalar.ph209, %scalar.ph209.2, %bb.j, %bb.l, %bb.m, %.preheader.lr.ph.i112
  %i.hr = shl nuw i32 1, %i.eq
  %i.hs = xor i32 %i.hr, %.0148
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %._crit_edge149, label %.preheader, !llvm.loop !202

._crit_edge149:                                   ; preds = %Abc_TtFlip.exit, %.preheader138
  %i.ht = getelementptr i8, ptr %i.f, i64 4
  %.val93 = load i32, ptr %i.ht, align 4, !tbaa !87 ; 2 uses
  %i.hu = sdiv i32 %i.s, %.val93
  %i.hv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %.val93, i32 noundef %i.s, i32 noundef %i.hu) ; 0 uses
  %i.hw = load ptr, ptr @stdout, align 8, !tbaa !12 ; 2 uses
  %3 = icmp sgt i32 %1, 5
  %i.hx = add nsw i32 %1, -2
  %i.hy = icmp slt i32 %1, 2
  br i1 %i.hy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge149
  %i.hz = load i64, ptr %i.k, align 8, !tbaa !15
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = and i32 %i.ia, 15                       ; 3 uses
  %i.ic = icmp samesign ult i32 %i.ib, 10
  %i.id = or disjoint i32 %i.ib, 48
  %i.ie = add nuw nsw i32 %i.ib, 55
  %.0.i.i = select i1 %i.ic, i32 %i.id, i32 %i.ie
  %fputc17.i = tail call i32 @fputc(i32 %.0.i.i, ptr %i.hw) ; 0 uses
  br label %Abc_TtPrintHexRev.exit

bb.o:                                             ; preds = %._crit_edge149
  %i.if = icmp samesign ult i32 %1, 7
  %i.ig = select i1 %i.if, i32 1, i32 %i.d        ; 2 uses
  %.not22.i = icmp slt i32 %i.ig, 1
  br i1 %.not22.i, label %Abc_TtPrintHexRev.exit, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %bb.o
  %i.ih = zext nneg i32 %i.ig to i64
  %.idx.i125 = shl nuw nsw i64 %i.ih, 3
  %i.ii = getelementptr i8, ptr %i.k, i64 %.idx.i125
  %.021.i = getelementptr i8, ptr %i.ii, i64 -8
  %notmask.i = shl nsw i32 -1, %i.hx
  %i.ij = xor i32 %notmask.i, -1
  %i.ik = select i1 %3, i32 15, i32 %i.ij
  %i.il = zext nneg i32 %i.ik to i64
  br label %bb.p

.loopexit.i:                                      ; preds = %bb.q
  %.0.i = getelementptr inbounds i8, ptr %.023.i, i64 -8 ; 2 uses
  %.not.i128 = icmp ult ptr %.0.i, %i.k
  br i1 %.not.i128, label %Abc_TtPrintHexRev.exit, label %bb.p, !llvm.loop !175

bb.p:                                             ; preds = %.loopexit.i, %.lr.ph.i124
  %.023.i = phi ptr [ %.021.i, %.lr.ph.i124 ], [ %.0.i, %.loopexit.i ] ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.i126 = phi i64 [ %i.il, %bb.p ], [ %indvars.iv.next.i127, %bb.q ] ; 3 uses
  %i.im = load i64, ptr %.023.i, align 8, !tbaa !15
  %i.in = shl nsw i64 %indvars.iv.i126, 2
  %i.io = and i64 %i.in, 4294967292
  %i.ip = lshr i64 %i.im, %i.io
  %i.iq = trunc i64 %i.ip to i32
  %i.ir = and i32 %i.iq, 15                       ; 3 uses
  %i.is = icmp samesign ult i32 %i.ir, 10
  %i.it = or disjoint i32 %i.ir, 48
  %i.iu = add nuw nsw i32 %i.ir, 55
  %.0.i18.i = select i1 %i.is, i32 %i.it, i32 %i.iu
  %fputc.i = tail call i32 @fputc(i32 %.0.i18.i, ptr %i.hw) ; 0 uses
  %indvars.iv.next.i127 = add nsw i64 %indvars.iv.i126, -1
  %i.iv = icmp sgt i64 %indvars.iv.i126, 0
  br i1 %i.iv, label %bb.q, label %.loopexit.i, !llvm.loop !176

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
  %i.iw = icmp eq ptr %i.f, null
  br i1 %i.iw, label %Vec_MemHashFree.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ix = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !90 ; 3 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %Vec_IntFreeP.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i, label %bb.ab, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aa
  tail call void @free(ptr noundef nonnull %i.jb) #27
  br label %bb.ab

bb.ab:                                            ; preds = %.thread.i.i, %bb.aa
  tail call void @free(ptr noundef nonnull %i.iy) #27
  br label %Vec_IntFreeP.exit.i

Vec_IntFreeP.exit.i:                              ; preds = %bb.ab, %bb.z
  %i.jc = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !90 ; 3 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %Vec_MemHashFree.exit, label %bb.ac

bb.ac:                                            ; preds = %Vec_IntFreeP.exit.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !25 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.jg, null
  br i1 %.not.i3.i, label %bb.ad, label %.thread.i4.i

.thread.i4.i:                                     ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.jg) #27
  br label %bb.ad

bb.ad:                                            ; preds = %.thread.i4.i, %bb.ac
  tail call void @free(ptr noundef nonnull %i.jd) #27
  br label %Vec_MemHashFree.exit

Vec_MemHashFree.exit:                             ; preds = %bb.y, %Vec_IntFreeP.exit.i, %bb.ad
  %i.jh = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !83 ; 2 uses
  %.not19.i = icmp slt i32 %i.ji, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !74 ; 3 uses
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %Vec_MemHashFree.exit
  %narrow = add nuw i32 %i.ji, 1
  %i.jj = zext i32 %narrow to i64
  br label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.preheader, %bb.af
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i131, %bb.af ], [ 0, %.lr.ph.i129.preheader ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.pre23.i, i64 %indvars.iv.i130 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !79 ; 2 uses
  %.not18.i = icmp eq ptr %i.jl, null
  br i1 %.not18.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i129
  tail call void @free(ptr noundef nonnull %i.jl) #27
  store ptr null, ptr %i.jk, align 8, !tbaa !79
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i129
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i130, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next.i131, %i.jj
  br i1 %exitcond170.not, label %._crit_edge.thread.i, label %.lr.ph.i129, !llvm.loop !91

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
  %i.c = load i64, ptr %5, align 8, !tbaa !8
  %.neg165 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %.neg = sdiv i64 %i.e, -1000
  %.neg166 = add i64 %.neg, %.neg165
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg166, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.f = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  store i32 0, ptr %i.g, align 4, !tbaa !21
  store i32 100, ptr %i.f, align 8, !tbaa !24
  %i.h = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #29 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !25
  %i.j = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val113 = load i32, ptr %i.j, align 4, !tbaa !73 ; 2 uses
  %i.k = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29 ; 6 uses
  %i.l = add i32 %.val113, -1
  %or.cond.i = icmp ult i32 %i.l, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val113 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 4 uses
  store i32 0, ptr %i.m, align 4, !tbaa !21
  store i32 %spec.store.select.i, ptr %i.k, align 8, !tbaa !24
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.n = sext i32 %spec.store.select.i to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = call noalias ptr @malloc(i64 noundef %i.o) #29
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %Abc_Clock.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %Abc_Clock.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !25
  %i.s = call fastcc ptr @Vec_MemAllocForTTSimple(i32 noundef %1) ; 11 uses
  %i.t = icmp slt i32 %1, 7                       ; 2 uses
  %i.u = add nsw i32 %1, -6                       ; 2 uses
  %i.v = shl nuw i32 1, %i.u
  %i.w = select i1 %i.t, i32 1, i32 %i.v          ; 16 uses
  %i.x = call i32 @Extra_Factorial(i32 noundef %1) #27 ; 2 uses
  %i.y = call ptr @Extra_PermSchedule(i32 noundef %1) #27 ; 3 uses
  %i.z = call ptr @Extra_GreyCodeSchedule(i32 noundef %1) #27 ; 3 uses
  %i.aa = sext i32 %i.w to i64
  %i.ab = shl nsw i64 %i.aa, 3                    ; 3 uses
  %i.ac = call noalias ptr @malloc(i64 noundef %i.ab) #29 ; 46 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64              ; 4 uses
  %.val112 = load i32, ptr %i.j, align 4, !tbaa !73
  %i.ae = sdiv i32 %.val112, %i.w                 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph183, label %._crit_edge184

.lr.ph183:                                        ; preds = %Vec_IntAlloc.exit
  %i.ag = shl nuw i32 1, %1
  %i.ah = select i1 %i.t, i32 0, i32 %i.u
  %i.ai = getelementptr i8, ptr %0, i64 8
  %i.aj = getelementptr i8, ptr %i.s, i64 4       ; 3 uses
  %i.ak = icmp slt i32 %i.w, 1                    ; 9 uses
  %wide.trip.count.i = zext i32 %i.w to i64       ; 9 uses
  %.not188 = icmp eq i32 %1, 31
  %i.al = icmp eq i32 %i.w, 1
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 %i.ab ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.aq = icmp sgt i32 %i.x, 0
  %i.ar = shl nuw nsw i64 %wide.trip.count.i, 3   ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.ag, i32 1)
  %.val110.pre = load i32, ptr %i.aj, align 4, !tbaa !87
  %wide.trip.count = zext nneg i32 %smax to i64
  %wide.trip.count197 = zext nneg i32 %i.x to i64
  %i.as = add i64 %i.ab, %i.ad
  %min.iters.check341 = icmp ult i32 %i.w, 4
  %n.vec343 = and i64 %wide.trip.count.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.at = icmp ult i32 %i.w, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod367 = icmp ne i64 %xtraiter, 0
  %min.iters.check302 = icmp ult i32 %i.w, 4
  %n.vec304 = and i64 %wide.trip.count.i, 2147483644
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %exitcond60.not.i.1 = icmp eq i32 %i.w, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %min.iters.check290 = icmp ult i32 %i.w, 4
  %n.vec292 = and i64 %wide.trip.count.i, 2147483644
  %exitcond.not.i126 = icmp eq i32 %i.w, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %exitcond.not.i126.1 = icmp eq i32 %i.w, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %min.iters.check278 = icmp ult i32 %i.w, 4
  %n.vec280 = and i64 %wide.trip.count.i, 2147483644
  %min.iters.check = icmp ult i32 %i.w, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  %exitcond74.not.i = icmp eq i32 %i.w, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %exitcond74.not.i.1 = icmp eq i32 %i.w, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph183, %Vec_IntPush.exit159
  %i.ba = phi i32 [ %spec.store.select.i, %.lr.ph183 ], [ %i.mp, %Vec_IntPush.exit159 ]
  %i.bb = phi i32 [ 0, %.lr.ph183 ], [ %i.mq, %Vec_IntPush.exit159 ]
  %i.bc = phi ptr [ %i.h, %.lr.ph183 ], [ %i.ly, %Vec_IntPush.exit159 ] ; 2 uses
  %i.bd = phi ptr [ %i.h, %.lr.ph183 ], [ %i.lz, %Vec_IntPush.exit159 ] ; 2 uses
  %i.be = phi i32 [ 100, %.lr.ph183 ], [ %i.ma, %Vec_IntPush.exit159 ] ; 2 uses
  %i.bf = phi i32 [ 0, %.lr.ph183 ], [ %i.mb, %Vec_IntPush.exit159 ] ; 2 uses
  %.val110 = phi i32 [ %.val110.pre, %.lr.ph183 ], [ %.val108, %Vec_IntPush.exit159 ] ; 5 uses
  %.092182 = phi i32 [ 0, %.lr.ph183 ], [ %i.mt, %Vec_IntPush.exit159 ] ; 3 uses
  %i.bg = shl i32 %.092182, %i.ah
  %.val111 = load ptr, ptr %i.ai, align 8, !tbaa !72 ; 2 uses
  %.val111339 = ptrtoaddr ptr %.val111 to i64
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %.val111, i64 %i.bh ; 8 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !15
  %i.bk = and i64 %i.bj, 1
  %.not.i114 = icmp eq i64 %i.bk, 0
  br i1 %.not.i114, label %.preheader.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %bb.d
  br i1 %i.ak, label %Abc_TtCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader14.i
  br i1 %min.iters.check341, label %.lr.ph.i.preheader362, label %vector.memcheck338

.lr.ph.i.preheader362:                            ; preds = %vector.memcheck338, %.lr.ph.i.preheader
  br i1 %i.at, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

vector.memcheck338:                               ; preds = %.lr.ph.i.preheader
  %i.bl = shl nsw i64 %i.bh, 3
  %i.bm = add i64 %i.bl, %.val111339
  %i.bn = sub i64 %i.bm, %i.ad
  %diff.check = icmp ugt i64 %i.bn, -32
  br i1 %diff.check, label %.lr.ph.i.preheader362, label %vector.body344

vector.body344:                                   ; preds = %vector.memcheck338, %vector.body344
  %index345 = phi i64 [ %index.next348, %vector.body344 ], [ 0, %vector.memcheck338 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index345 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load346 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !15
  %wide.load347 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !15
  %i.bq = xor <2 x i64> %wide.load346, splat (i64 -1)
  %i.br = xor <2 x i64> %wide.load347, splat (i64 -1)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index345 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <2 x i64> %i.bq, ptr %i.bs, align 8, !tbaa !15
  store <2 x i64> %i.br, ptr %i.bt, align 8, !tbaa !15
  %index.next348 = add nuw i64 %index345, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next348, %n.vec343
  br i1 %i.bu, label %Abc_TtCopy.exit, label %vector.body344, !llvm.loop !203

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.ak, label %Abc_TtCopy.exit, label %.lr.ph18.i.preheader

.lr.ph18.i.preheader:                             ; preds = %.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.ar, i1 false), !tbaa !15
  br label %Abc_TtCopy.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader362, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader362 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader362 ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !15
  %i.bx = xor i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !15
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !15
  %i.cb = xor i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !15
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next.i.1
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !15
  %i.cf = xor i64 %i.ce, -1
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.1
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !15
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next.i.2
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !15
  %i.cj = xor i64 %i.ci, -1
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.2
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !15
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Abc_TtCopy.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !204

Abc_TtCopy.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %Abc_TtCopy.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %Abc_TtCopy.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader362
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader362 ], [ %indvars.iv.next.i.3, %Abc_TtCopy.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod367)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i.epil
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !15
  %i.cn = xor i64 %i.cm, -1
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i.epil
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !15
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Abc_TtCopy.exit, label %.lr.ph.i.epil, !llvm.loop !205

Abc_TtCopy.exit:                                  ; preds = %vector.body344, %Abc_TtCopy.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %.lr.ph18.i.preheader, %.preheader14.i, %.preheader.i
  %i.cp = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.s, ptr noundef %i.ac) ; 0 uses
  br i1 %.not188, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Abc_TtCopy.exit, %Abc_TtNot.exit133
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_TtNot.exit133 ], [ 0, %Abc_TtCopy.exit ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !16 ; 6 uses
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.cs = load i64, ptr %i.ac, align 8, !tbaa !15 ; 2 uses
  %i.ct = shl nuw i32 1, %i.cr
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = shl i64 %i.cs, %i.cu
  %i.cw = sext i32 %i.cr to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !15 ; 2 uses
  %i.cz = and i64 %i.cv, %i.cy
  %i.da = and i64 %i.cy, %i.cs
  %i.db = lshr i64 %i.da, %i.cu
  %i.dc = or i64 %i.db, %i.cz
  store i64 %i.dc, ptr %i.ac, align 8, !tbaa !15
  br label %Abc_TtFlip.exit

bb.f:                                             ; preds = %.lr.ph
  %i.dd = icmp slt i32 %i.cr, 6
  br i1 %i.dd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %Abc_TtFlip.exit, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %bb.g
  %i.de = shl nuw nsw i32 1, %i.cr
  %i.df = zext nneg i32 %i.de to i64              ; 7 uses
  %i.dg = sext i32 %i.cr to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !15 ; 7 uses
  br i1 %min.iters.check302, label %scalar.ph301, label %vector.ph303

vector.ph303:                                     ; preds = %.lr.ph.i120
  %broadcast.splatinsert305 = insertelement <2 x i64> poison, i64 %i.df, i64 0
  %broadcast.splat306 = shufflevector <2 x i64> %broadcast.splatinsert305, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert307 = insertelement <2 x i64> poison, i64 %i.di, i64 0
  %broadcast.splat308 = shufflevector <2 x i64> %broadcast.splatinsert307, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph303
  %index310 = phi i64 [ 0, %vector.ph303 ], [ %index.next313, %vector.body309 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index310 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load311 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !15 ; 2 uses
  %wide.load312 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !15 ; 2 uses
  %i.dl = shl <2 x i64> %wide.load311, %broadcast.splat306
  %i.dm = shl <2 x i64> %wide.load312, %broadcast.splat306
  %i.dn = and <2 x i64> %i.dl, %broadcast.splat308
  %i.do = and <2 x i64> %i.dm, %broadcast.splat308
  %i.dp = and <2 x i64> %wide.load311, %broadcast.splat308
  %i.dq = and <2 x i64> %wide.load312, %broadcast.splat308
  %i.dr = lshr <2 x i64> %i.dp, %broadcast.splat306
end_hunk_1
