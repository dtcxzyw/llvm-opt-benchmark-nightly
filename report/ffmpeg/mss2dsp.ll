loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mss2_blit_wmv9_masked_c:bb.a
  %i.u = add nsw i32 %i.t, 32768
  %i.v = ashr i32 %i.u, 16
  %i.w = add nsw i32 %i.v, %i.j                   ; 3 uses
  %i.x = icmp ugt i32 %i.w, 255
  %isnotneg.i14 = icmp sgt i32 %i.w, -1
  %i.y = sext i1 %isnotneg.i14 to i8
  %i.z = trunc nuw i32 %i.w to i8
  %.0.i15 = select i1 %i.x, i8 %i.y, i8 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i23, i64 %indvars.iv ; 3 uses
  store i8 %.0.i15, ptr %i.aa, align 1, !tbaa !15
  %i.ab = mul nsw i32 %i.o, -22554
  %.neg.i = mul nsw i32 %i.s, -46802
  %i.ac = add nsw i32 %i.ab, 32768
  %i.ad = add nsw i32 %i.ac, %.neg.i
  %i.ae = ashr i32 %i.ad, 16
  %i.af = add nsw i32 %i.ae, %i.j                 ; 3 uses
  %i.ag = icmp ugt i32 %i.af, 255
  %isnotneg.i12 = icmp sgt i32 %i.af, -1
  %i.ah = sext i1 %isnotneg.i12 to i8
  %i.ai = trunc nuw i32 %i.af to i8
  %.0.i13 = select i1 %i.ag, i8 %i.ah, i8 %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 %.0.i13, ptr %i.aj, align 1, !tbaa !15
  %i.ak = mul nsw i32 %i.o, 116130
  %i.al = add nsw i32 %i.ak, 32768
  %i.am = ashr i32 %i.al, 16
  %i.an = add nsw i32 %i.am, %i.j                 ; 3 uses
  %i.ao = icmp ugt i32 %i.an, 255
  %isnotneg.i = icmp sgt i32 %i.an, -1
  %i.ap = sext i1 %isnotneg.i to i8
  %i.aq = trunc nuw i32 %i.an to i8
  %.0.i11 = select i1 %i.ao, i8 %i.ap, i8 %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i8 %.0.i11, ptr %i.ar, align 1, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.as = trunc nuw nsw i64 %indvars.iv24 to i32
  %i.at = and i32 %i.as, 1
  %i.au = add nuw nsw i32 %.055.i17, %i.at
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %exitcond.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.d
  %i.av = getelementptr inbounds i8, ptr %.051.i22, i64 %4
  %i.aw = getelementptr inbounds i8, ptr %.0.i23, i64 %1
  %i.ax = getelementptr inbounds i8, ptr %.052.i21, i64 %6
  %i.ay = and i32 %i.c, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = mul nuw nsw i64 %9, %i.az               ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.057.i20, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %.058.i19, i64 %i.ba
  %i.bd = add nuw nsw i32 %i.c, 1                 ; 2 uses
  %exitcond29.not = icmp eq i32 %i.bd, %11
  br i1 %exitcond29.not, label %mss2_blit_wmv9_template.exit, label %.preheader, !llvm.loop !18

mss2_blit_wmv9_template.exit:                     ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @mss2_gray_fill_masked_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) #1 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  %i.b = icmp sgt i32 %5, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %mss2_blit_wmv9_template.exit

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %5, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod18 = trunc i32 %5 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.d = phi i32 [ %i.ad, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.0.i9 = phi ptr [ %i.ac, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
  %.051.i8 = phi ptr [ %i.ab, %._crit_edge ], [ %3, %.preheader.preheader ] ; 4 uses
  br i1 %i.c, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %bb.e
  %indvars.iv10 = phi i64 [ %indvars.iv.next11.1, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.preheader ]
  %i.e = getelementptr inbounds nuw i8, ptr %.051.i8, i64 %indvars.iv10
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15
  %i.g = zext i8 %i.f to i32
  %i.h = icmp eq i32 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.new
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i9, i64 %indvars.iv ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 -128, ptr %i.j, align 1, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 -128, ptr %i.k, align 1, !tbaa !15
  store i8 -128, ptr %i.i, align 1, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.new
  %i.l = getelementptr inbounds nuw i8, ptr %.051.i8, i64 %indvars.iv10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = zext i8 %i.n to i32
  %i.p = icmp eq i32 %2, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i9, i64 %indvars.iv ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  store i8 -128, ptr %i.s, align 1, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i8 -128, ptr %i.t, align 1, !tbaa !15
  store i8 -128, ptr %i.r, align 1, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next11.1 = add nuw nsw i64 %indvars.iv10, 2 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !16

._crit_edge.unr-lcssa:                            ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv10.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next11.1, %._crit_edge.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.u = getelementptr inbounds nuw i8, ptr %.051.i8, i64 %indvars.iv10.epil.init
  %i.v = load i8, ptr %i.u, align 1, !tbaa !15
  %i.w = zext i8 %i.v to i32
  %i.x = icmp eq i32 %2, %i.w
  br i1 %i.x, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %.epil.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i9, i64 %indvars.iv.epil.init ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 -128, ptr %i.z, align 1, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 -128, ptr %i.aa, align 1, !tbaa !15
  store i8 -128, ptr %i.y, align 1, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.f, %._crit_edge.unr-lcssa
  %i.ab = getelementptr inbounds i8, ptr %.051.i8, i64 %4
  %i.ac = getelementptr inbounds i8, ptr %.0.i9, i64 %1
  %i.ad = add nuw nsw i32 %i.d, 1                 ; 2 uses
  %exitcond15.not = icmp eq i32 %i.ad, %6
  br i1 %exitcond15.not, label %mss2_blit_wmv9_template.exit, label %.preheader, !llvm.loop !18

mss2_blit_wmv9_template.exit:                     ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @upsample_plane_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = icmp ne i32 %2, 0
  %i.b = icmp ne i32 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %2, 1
  %i.d = add i32 %i.c, %2                         ; 4 uses
  %i.e = and i32 %3, 1
  %i.f = add i32 %3, -1
  %i.g = add nuw i32 %i.f, %i.e                   ; 8 uses
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %1, %i.h
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  %i.k = ashr i32 %i.g, 1
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %1, %i.l
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = sext i32 %i.d to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.n, i64 %i.o, i1 false)
  %i.p = icmp sgt i32 %i.g, 2
  br i1 %i.p, label %.lr.ph75, label %.preheader

.lr.ph75:                                         ; preds = %bb.b
  %i.q = add nsw i32 %i.d, -1
  %i.r = ashr i32 %i.q, 1                         ; 4 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %.lr.ph.preheader, label %.lr.ph79

.lr.ph.preheader:                                 ; preds = %.lr.ph75
  %i.t = zext nneg i32 %i.r to i64                ; 7 uses
  %i.u = zext nneg i32 %i.g to i64                ; 3 uses
  %i.v = add nsw i64 %i.u, -1                     ; 2 uses
  %i.w = mul i64 %1, %i.v
  %i.x = shl i64 %1, 1
  %4 = lshr i64 %i.v, 1
  %i.y = add nsw i64 %i.u, -2                     ; 2 uses
  %5 = lshr i64 %i.y, 1
  %i.z = mul i64 %1, %i.y
  %i.aa = add nuw nsw i64 %i.t, 1                 ; 5 uses
  %min.iters.check = icmp ult i32 %i.r, 3
  %i.ab = add i64 %1, -1
  %diff.check = icmp ult i64 %i.ab, 15
  %min.iters.check106 = icmp ult i32 %i.r, 15
  %i.ac = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 4294967280              ; 4 uses
  %i.ad = sub nsw i64 %i.t, %n.vec
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  %n.vec111 = and i64 %i.aa, 4294967292           ; 3 uses
  %i.ae = sub nsw i64 %i.t, %n.vec111
  %cmp.n120 = icmp eq i64 %i.aa, %n.vec111
  br label %iter.check

..loopexit72_crit_edge:                           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.af = icmp samesign ugt i64 %indvars.iv82, 4
  %indvar.next = add i64 %indvar, 1
  br i1 %i.af, label %iter.check, label %.preheader, !llvm.loop !19

.preheader:                                       ; preds = %..loopexit72_crit_edge, %bb.b
  %i.ag = icmp sgt i32 %i.g, -1
  br i1 %i.ag, label %.lr.ph79, label %.loopexit

.lr.ph79:                                         ; preds = %.lr.ph75, %.preheader
  %i.ah = add i32 %i.d, -1                        ; 3 uses
  %i.ai = ashr i32 %i.ah, 1
  %i.aj = sext i32 %i.ai to i64                   ; 6 uses
  %i.ak = sext i32 %i.ah to i64                   ; 6 uses
  %i.al = icmp sgt i32 %i.d, 3
  br i1 %i.al, label %.lr.ph77.us.preheader, label %.lr.ph79.split.preheader

.lr.ph79.split.preheader:                         ; preds = %.lr.ph79
  %i.am = zext i32 %i.g to i64                    ; 3 uses
  %i.an = add nuw nsw i64 %i.am, 1
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph79.split.prol.loopexit, label %.lr.ph79.split.prol

.lr.ph79.split.prol:                              ; preds = %.lr.ph79.split.preheader, %.lr.ph79.split.prol
  %indvars.iv85.prol = phi i64 [ %indvars.iv.next86.prol, %.lr.ph79.split.prol ], [ %i.am, %.lr.ph79.split.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph79.split.prol ], [ 0, %.lr.ph79.split.preheader ]
  %i.ao = mul nsw i64 %1, %indvars.iv85.prol
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.aj
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !15
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ak
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !15
  %indvars.iv.next86.prol = add nsw i64 %indvars.iv85.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph79.split.prol.loopexit, label %.lr.ph79.split.prol, !llvm.loop !20

.lr.ph79.split.prol.loopexit:                     ; preds = %.lr.ph79.split.prol, %.lr.ph79.split.preheader
  %indvars.iv85.unr = phi i64 [ %i.am, %.lr.ph79.split.preheader ], [ %indvars.iv.next86.prol, %.lr.ph79.split.prol ]
  %i.at = icmp ult i32 %i.g, 3
  br i1 %i.at, label %.loopexit, label %.lr.ph79.split

.lr.ph77.us.preheader:                            ; preds = %.lr.ph79
  %i.au = zext nneg i32 %i.ah to i64
  %i.av = zext nneg i32 %i.g to i64
  br label %.lr.ph77.us

.lr.ph77.us:                                      ; preds = %.lr.ph77.us.preheader, %._crit_edge.us
  %indvars.iv91 = phi i64 [ %i.av, %.lr.ph77.us.preheader ], [ %indvars.iv.next92, %._crit_edge.us ] ; 3 uses
  %i.aw = mul nsw i64 %1, %indvars.iv91
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aw ; 6 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.aj
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !15
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 %i.ak
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph77.us, %bb.c
  %indvars.iv88 = phi i64 [ %i.au, %.lr.ph77.us ], [ %indvars.iv.next89, %bb.c ] ; 3 uses
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, -2 ; 3 uses
  %i.bb = lshr i64 %indvars.iv.next89, 1
  %i.bc = and i64 %i.bb, 2147483647
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  %i.bf = add nsw i64 %indvars.iv88, -1           ; 2 uses
  %i.bg = lshr i64 %i.bf, 1
  %i.bh = and i64 %i.bg, 2147483647
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !15
  %i.bk = zext i8 %i.be to i32                    ; 2 uses
  %i.bl = mul nuw nsw i32 %i.bk, 3
  %i.bm = zext i8 %i.bj to i32                    ; 2 uses
  %i.bn = add nuw nsw i32 %i.bm, 1
  %i.bo = add nuw nsw i32 %i.bn, %i.bl
  %i.bp = lshr i32 %i.bo, 2
  %i.bq = trunc nuw i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.next89
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !15
  %i.bs = mul nuw nsw i32 %i.bm, 3
  %i.bt = add nuw nsw i32 %i.bk, 1
  %i.bu = add nuw nsw i32 %i.bt, %i.bs
  %i.bv = lshr i32 %i.bu, 2
  %i.bw = trunc nuw i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bf
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !15
  %i.by = icmp sgt i64 %indvars.iv88, 4
  br i1 %i.by, label %bb.c, label %._crit_edge.us, !llvm.loop !22

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, -1
  %i.bz = icmp sgt i64 %indvars.iv91, 0
  br i1 %i.bz, label %.lr.ph77.us, label %.loopexit, !llvm.loop !23

iter.check:                                       ; preds = %.lr.ph.preheader, %..loopexit72_crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %..loopexit72_crit_edge ] ; 4 uses
  %indvars.iv82 = phi i64 [ %i.u, %.lr.ph.preheader ], [ %indvars.iv.next83, %..loopexit72_crit_edge ] ; 3 uses
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, -2 ; 3 uses
  %i.ca = add nsw i64 %indvars.iv82, -1           ; 2 uses
  %i.cb = mul nsw i64 %1, %i.ca
  %i.cc = getelementptr inbounds i8, ptr %0, i64 %i.cb ; 3 uses
  %i.cd = mul nsw i64 %1, %indvars.iv.next83
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd ; 3 uses
  %i.cf = lshr i64 %i.ca, 1
  %i.cg = and i64 %i.cf, 2147483647
  %i.ch = mul nsw i64 %1, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %0, i64 %i.ch ; 3 uses
  %i.cj = lshr i64 %indvars.iv.next83, 1
  %i.ck = and i64 %i.cj, 2147483647
  %i.cl = mul nsw i64 %1, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %0, i64 %i.cl ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cn = mul i64 %i.x, %indvar                   ; 2 uses
  %i.co = sub i64 %i.cn, %i.z                     ; 2 uses
  %6 = sub i64 %5, %indvar
  %i.cp = and i64 %6, 2147483647
  %i.cq = mul nsw i64 %1, %i.cp                   ; 2 uses
  %i.cr = add i64 %i.co, %i.cq
  %7 = sub i64 %4, %indvar
  %i.cs = and i64 %7, 2147483647
  %i.ct = mul nsw i64 %1, %i.cs                   ; 2 uses
  %i.cu = add i64 %i.co, %i.ct
  %i.cv = sub i64 %i.cn, %i.w                     ; 2 uses
  %i.cw = add i64 %i.cv, %i.cq
  %i.cx = add i64 %i.cv, %i.ct
  %i.cy = add i64 %i.cx, -1
  %diff.check99 = icmp ult i64 %i.cy, 15
  %conflict.rdx = or i1 %diff.check, %diff.check99
  %i.cz = add i64 %i.cw, -1
  %diff.check100 = icmp ult i64 %i.cz, 15
  %conflict.rdx101 = or i1 %conflict.rdx, %diff.check100
  %i.da = add i64 %i.cu, -1
  %diff.check102 = icmp ult i64 %i.da, 15
  %conflict.rdx103 = or i1 %conflict.rdx101, %diff.check102
  %i.db = add i64 %i.cr, -1
  %diff.check104 = icmp ult i64 %i.db, 15
  %conflict.rdx105 = or i1 %conflict.rdx103, %diff.check104
  br i1 %conflict.rdx105, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check106, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dc = sub i64 %i.t, %index                    ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -15
  %wide.load = load <16 x i8>, ptr %i.de, align 1, !tbaa !15
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dc
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -15
  %wide.load107 = load <16 x i8>, ptr %i.dg, align 1, !tbaa !15
  %reverse108 = shufflevector <16 x i8> %wide.load107, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.dh = zext <16 x i8> %reverse to <16 x i32>   ; 2 uses
  %i.di = mul nuw nsw <16 x i32> %i.dh, splat (i32 3)
  %i.dj = zext <16 x i8> %reverse108 to <16 x i32> ; 2 uses
  %i.dk = add nuw nsw <16 x i32> %i.dj, splat (i32 2)
  %i.dl = add nuw nsw <16 x i32> %i.dk, %i.di
  %i.dm = lshr <16 x i32> %i.dl, splat (i32 2)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.dc
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -15
  %i.dp = shufflevector <16 x i32> %i.dm, <16 x i32> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse109 = trunc nuw <16 x i32> %i.dp to <16 x i8>
  store <16 x i8> %reverse109, ptr %i.do, align 1, !tbaa !15
  %i.dq = mul nuw nsw <16 x i32> %i.dj, splat (i32 3)
  %i.dr = add nuw nsw <16 x i32> %i.dh, splat (i32 2)
  %i.ds = add nuw nsw <16 x i32> %i.dr, %i.dq
  %i.dt = lshr <16 x i32> %i.ds, splat (i32 2)
  %i.du = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.dc
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -15
  %i.dw = shufflevector <16 x i32> %i.dt, <16 x i32> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse110 = trunc nuw <16 x i32> %i.dw to <16 x i8>
  store <16 x i8> %reverse110, ptr %i.dv, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit72_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next119, %vec.epilog.vector.body ] ; 2 uses
  %i.dy = sub i64 %i.t, %index112                 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dy
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -3
  %wide.load113 = load <4 x i8>, ptr %i.ea, align 1, !tbaa !15
  %reverse114 = shufflevector <4 x i8> %wide.load113, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dy
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -3
  %wide.load115 = load <4 x i8>, ptr %i.ec, align 1, !tbaa !15
  %reverse116 = shufflevector <4 x i8> %wide.load115, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ed = zext <4 x i8> %reverse114 to <4 x i32>  ; 2 uses
  %i.ee = mul nuw nsw <4 x i32> %i.ed, splat (i32 3)
  %i.ef = zext <4 x i8> %reverse116 to <4 x i32>  ; 2 uses
  %i.eg = add nuw nsw <4 x i32> %i.ef, splat (i32 2)
  %i.eh = add nuw nsw <4 x i32> %i.eg, %i.ee
  %i.ei = lshr <4 x i32> %i.eh, splat (i32 2)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.dy
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -3
  %i.el = shufflevector <4 x i32> %i.ei, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse117 = trunc nuw <4 x i32> %i.el to <4 x i8>
  store <4 x i8> %reverse117, ptr %i.ek, align 1, !tbaa !15
  %i.em = mul nuw nsw <4 x i32> %i.ef, splat (i32 3)
  %i.en = add nuw nsw <4 x i32> %i.ed, splat (i32 2)
  %i.eo = add nuw nsw <4 x i32> %i.en, %i.em
  %i.ep = lshr <4 x i32> %i.eo, splat (i32 2)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.dy
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -3
  %i.es = shufflevector <4 x i32> %i.ep, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse118 = trunc nuw <4 x i32> %i.es to <4 x i8>
  store <4 x i8> %reverse118, ptr %i.er, align 1, !tbaa !15
  %index.next119 = add nuw i64 %index112, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next119, %n.vec111
  br i1 %i.et, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n120, label %..loopexit72_crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %iter.check ], [ %i.t, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !15
  %i.ey = zext i8 %i.ev to i32                    ; 2 uses
  %i.ez = mul nuw nsw i32 %i.ey, 3
  %i.fa = zext i8 %i.ex to i32                    ; 2 uses
  %i.fb = add nuw nsw i32 %i.fa, 2
  %i.fc = add nuw nsw i32 %i.fb, %i.ez
  %i.fd = lshr i32 %i.fc, 2
  %i.fe = trunc nuw i32 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !15
  %i.fg = mul nuw nsw i32 %i.fa, 3
  %i.fh = add nuw nsw i32 %i.ey, 2
  %i.fi = add nuw nsw i32 %i.fh, %i.fg
  %i.fj = lshr i32 %i.fi, 2
  %i.fk = trunc nuw i32 %i.fj to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !15
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fm = icmp sgt i64 %indvars.iv, 0
  br i1 %i.fm, label %vec.epilog.scalar.ph, label %..loopexit72_crit_edge, !llvm.loop !29

.lr.ph79.split:                                   ; preds = %.lr.ph79.split.prol.loopexit, %.lr.ph79.split
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.3, %.lr.ph79.split ], [ %indvars.iv85.unr, %.lr.ph79.split.prol.loopexit ] ; 5 uses
  %i.fn = mul nsw i64 %1, %indvars.iv85
  %i.fo = getelementptr inbounds i8, ptr %0, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 %i.aj
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !15
  %i.fr = getelementptr inbounds i8, ptr %i.fo, i64 %i.ak
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !15
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, -1
  %i.fs = mul nsw i64 %1, %indvars.iv.next86
  %i.ft = getelementptr inbounds i8, ptr %0, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 %i.aj
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !15
  %i.fw = getelementptr inbounds i8, ptr %i.ft, i64 %i.ak
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !15
  %indvars.iv.next86.1 = add nsw i64 %indvars.iv85, -2
  %i.fx = mul nsw i64 %1, %indvars.iv.next86.1
  %i.fy = getelementptr inbounds i8, ptr %0, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 %i.aj
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !15
  %i.gb = getelementptr inbounds i8, ptr %i.fy, i64 %i.ak
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !15
  %indvars.iv.next86.2 = add nsw i64 %indvars.iv85, -3 ; 2 uses
  %i.gc = mul nsw i64 %1, %indvars.iv.next86.2
  %i.gd = getelementptr inbounds i8, ptr %0, i64 %i.gc ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %i.aj
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !15
  %i.gg = getelementptr inbounds i8, ptr %i.gd, i64 %i.ak
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !15
  %indvars.iv.next86.3 = add nsw i64 %indvars.iv85, -4
  %.not.3 = icmp eq i64 %indvars.iv.next86.2, 0
  br i1 %.not.3, label %.loopexit, label %.lr.ph79.split, !llvm.loop !23

.loopexit:                                        ; preds = %.lr.ph79.split.prol.loopexit, %.lr.ph79.split, %._crit_edge.us, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"MSS2DSPContext", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!10, !11, i64 16}
!14 = !{!10, !11, i64 24}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17, !25, !26}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
