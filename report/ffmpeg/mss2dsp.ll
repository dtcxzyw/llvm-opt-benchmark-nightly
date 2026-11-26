Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mss2dsp?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mss2_blit_wmv9_masked_c:bb.a
  %.0.i26 = phi ptr [ %i.aq, %._crit_edge ], [ %0, %.preheader.preheader ] ; 2 uses
  %.051.i25 = phi ptr [ %i.ap, %._crit_edge ], [ %3, %.preheader.preheader ] ; 2 uses
  %.052.i24 = phi ptr [ %i.ar, %._crit_edge ], [ %5, %.preheader.preheader ] ; 2 uses
  %.057.i23 = phi ptr [ %i.av, %._crit_edge ], [ %7, %.preheader.preheader ] ; 2 uses
  %.058.i22 = phi ptr [ %i.aw, %._crit_edge ], [ %8, %.preheader.preheader ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.d
  %indvars.iv27 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next28, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.055.i20 = phi i32 [ 0, %.preheader ], [ %i.ao, %bb.d ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.051.i25, i64 %indvars.iv27
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11
  %i.f = zext i8 %i.e to i32
  %i.g = icmp eq i32 %2, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.052.i24, i64 %indvars.iv27
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i32                      ; 3 uses
  %i.k = zext nneg i32 %.055.i20 to i64           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.057.i23, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -128                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.058.i22, i64 %i.k
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -128                   ; 2 uses
  %i.t = mul nsw i32 %i.s, 91881
  %i.u = add nsw i32 %i.t, 32768
  %i.v = ashr i32 %i.u, 16
  %i.w = add nsw i32 %i.v, %i.j
  %i.x = tail call i32 @llvm.smax.i32(i32 %i.w, i32 0)
  %.0.i1516 = tail call i32 @llvm.umin.i32(i32 %i.x, i32 255)
  %.0.i15 = trunc nuw i32 %.0.i1516 to i8
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i26, i64 %indvars.iv ; 3 uses
  store i8 %.0.i15, ptr %i.y, align 1, !tbaa !11
  %i.z = mul nsw i32 %i.o, -22554
  %.neg.i = mul nsw i32 %i.s, -46802
  %i.aa = add nsw i32 %i.z, 32768
  %i.ab = add nsw i32 %i.aa, %.neg.i
  %i.ac = ashr i32 %i.ab, 16
  %i.ad = add nsw i32 %i.ac, %i.j
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %.0.i1317 = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 255)
  %.0.i13 = trunc nuw i32 %.0.i1317 to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %.0.i13, ptr %i.af, align 1, !tbaa !11
  %i.ag = mul nsw i32 %i.o, 116130
  %i.ah = add nsw i32 %i.ag, 32768
  %i.ai = ashr i32 %i.ah, 16
  %i.aj = add nsw i32 %i.ai, %i.j
  %i.ak = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %.0.i1118 = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 255)
  %.0.i11 = trunc nuw i32 %.0.i1118 to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 %.0.i11, ptr %i.al, align 1, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.am = trunc nuw nsw i64 %indvars.iv27 to i32
  %i.an = and i32 %i.am, 1
  %i.ao = add nuw nsw i32 %.055.i20, %i.an
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %exitcond.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.d
  %i.ap = getelementptr inbounds i8, ptr %.051.i25, i64 %4
  %i.aq = getelementptr inbounds i8, ptr %.0.i26, i64 %1
  %i.ar = getelementptr inbounds i8, ptr %.052.i24, i64 %6
  %i.as = and i32 %i.c, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = mul nuw nsw i64 %9, %i.at               ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.057.i23, i64 %i.au
  %i.aw = getelementptr inbounds i8, ptr %.058.i22, i64 %i.au
  %i.ax = add nuw nsw i32 %i.c, 1                 ; 2 uses
  %exitcond32.not = icmp eq i32 %i.ax, %11
  br i1 %exitcond32.not, label %mss2_blit_wmv9_template.exit, label %.preheader, !llvm.loop !1

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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = zext i8 %i.f to i32
  %i.h = icmp eq i32 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.new
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i9, i64 %indvars.iv ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 -128, ptr %i.j, align 1, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 -128, ptr %i.k, align 1, !tbaa !11
  store i8 -128, ptr %i.i, align 1, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.new
  %i.l = getelementptr inbounds nuw i8, ptr %.051.i8, i64 %indvars.iv10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11
  %i.o = zext i8 %i.n to i32
  %i.p = icmp eq i32 %2, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i9, i64 %indvars.iv ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  store i8 -128, ptr %i.s, align 1, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i8 -128, ptr %i.t, align 1, !tbaa !11
  store i8 -128, ptr %i.r, align 1, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next11.1 = add nuw nsw i64 %indvars.iv10, 2 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !0

._crit_edge.unr-lcssa:                            ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv10.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next11.1, %._crit_edge.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.u = getelementptr inbounds nuw i8, ptr %.051.i8, i64 %indvars.iv10.epil.init
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = zext i8 %i.v to i32
  %i.x = icmp eq i32 %2, %i.w
  br i1 %i.x, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %.epil.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i9, i64 %indvars.iv.epil.init ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 -128, ptr %i.z, align 1, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 -128, ptr %i.aa, align 1, !tbaa !11
  store i8 -128, ptr %i.y, align 1, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.f, %._crit_edge.unr-lcssa
  %i.ab = getelementptr inbounds i8, ptr %.051.i8, i64 %4
  %i.ac = getelementptr inbounds i8, ptr %.0.i9, i64 %1
  %i.ad = add nuw nsw i32 %i.d, 1                 ; 2 uses
  %exitcond15.not = icmp eq i32 %i.ad, %6
  br i1 %exitcond15.not, label %mss2_blit_wmv9_template.exit, label %.preheader, !llvm.loop !1

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
  %.neg = sub nsw i64 2, %i.u
  %.neg128 = mul i64 %.neg, %1
  %i.v = shl i64 %1, 1
  %.neg129 = sub nsw i64 1, %i.u
  %.neg130 = mul i64 %.neg129, %1
  %i.w = add nuw nsw i64 %i.t, 1                  ; 5 uses
  %min.iters.check = icmp ult i32 %i.r, 3
  %i.x = add i64 %1, -1
  %diff.check = icmp ult i64 %i.x, 15
  %min.iters.check113 = icmp ult i32 %i.r, 15
  %i.y = and i64 %i.w, 12
  %n.vec = and i64 %i.w, 4294967280               ; 4 uses
  %i.z = sub nsw i64 %i.t, %n.vec
  %cmp.n = icmp eq i64 %i.w, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  %n.vec118 = and i64 %i.w, 4294967292            ; 3 uses
  %i.aa = sub nsw i64 %i.t, %n.vec118
  %cmp.n127 = icmp eq i64 %i.w, %n.vec118
  br label %iter.check

..loopexit72_crit_edge:                           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ab = icmp samesign ugt i64 %indvars.iv82, 4
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ab, label %iter.check, label %.preheader, !llvm.loop !15

.preheader:                                       ; preds = %..loopexit72_crit_edge, %bb.b
  %i.ac = icmp sgt i32 %i.g, -1
  br i1 %i.ac, label %.lr.ph79, label %.loopexit

.lr.ph79:                                         ; preds = %.lr.ph75, %.preheader
  %i.ad = add i32 %i.d, -1                        ; 3 uses
  %i.ae = ashr i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64                   ; 6 uses
  %i.ag = sext i32 %i.ad to i64                   ; 6 uses
  %i.ah = icmp sgt i32 %i.d, 3
  br i1 %i.ah, label %.lr.ph77.us.preheader, label %.lr.ph79.split.preheader

.lr.ph79.split.preheader:                         ; preds = %.lr.ph79
  %4 = zext i32 %i.g to i64                       ; 3 uses
  %i.ai = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph79.split.prol.loopexit, label %.lr.ph79.split.prol

.lr.ph79.split.prol:                              ; preds = %.lr.ph79.split.preheader, %.lr.ph79.split.prol
  %indvars.iv85.prol = phi i64 [ %indvars.iv.next86.prol, %.lr.ph79.split.prol ], [ %4, %.lr.ph79.split.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph79.split.prol ], [ 0, %.lr.ph79.split.preheader ]
  %i.aj = mul nsw i64 %1, %indvars.iv85.prol
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.af
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.ag
  store i8 %i.am, ptr %i.an, align 1, !tbaa !11
  %indvars.iv.next86.prol = add nsw i64 %indvars.iv85.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph79.split.prol.loopexit, label %.lr.ph79.split.prol, !llvm.loop !16

.lr.ph79.split.prol.loopexit:                     ; preds = %.lr.ph79.split.prol, %.lr.ph79.split.preheader
  %indvars.iv85.unr = phi i64 [ %4, %.lr.ph79.split.preheader ], [ %indvars.iv.next86.prol, %.lr.ph79.split.prol ]
  %i.ao = icmp ult i32 %i.g, 3
  br i1 %i.ao, label %.loopexit, label %.lr.ph79.split

.lr.ph77.us.preheader:                            ; preds = %.lr.ph79
  %i.ap = zext nneg i32 %i.ad to i64
  %i.aq = zext nneg i32 %i.g to i64
  br label %.lr.ph77.us

.lr.ph77.us:                                      ; preds = %.lr.ph77.us.preheader, %._crit_edge.us
  %indvars.iv91 = phi i64 [ %i.aq, %.lr.ph77.us.preheader ], [ %indvars.iv.next92, %._crit_edge.us ] ; 3 uses
  %i.ar = mul nsw i64 %1, %indvars.iv91
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar ; 6 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.af
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.ag
  store i8 %i.au, ptr %i.av, align 1, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph77.us, %bb.c
  %indvars.iv88 = phi i64 [ %i.ap, %.lr.ph77.us ], [ %indvars.iv.next89, %bb.c ] ; 3 uses
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, -2 ; 3 uses
  %i.aw = lshr i64 %indvars.iv.next89, 1
  %i.ax = and i64 %i.aw, 2147483647
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.ba = add nsw i64 %indvars.iv88, -1           ; 2 uses
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = and i64 %i.bb, 2147483647
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bf = zext i8 %i.az to i32                    ; 2 uses
  %i.bg = mul nuw nsw i32 %i.bf, 3
  %i.bh = zext i8 %i.be to i32                    ; 2 uses
  %i.bi = add nuw nsw i32 %i.bh, 1
  %i.bj = add nuw nsw i32 %i.bi, %i.bg
  %i.bk = lshr i32 %i.bj, 2
  %i.bl = trunc nuw i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.next89
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !11
  %i.bn = mul nuw nsw i32 %i.bh, 3
  %i.bo = add nuw nsw i32 %i.bf, 1
  %i.bp = add nuw nsw i32 %i.bo, %i.bn
  %i.bq = lshr i32 %i.bp, 2
  %i.br = trunc nuw i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ba
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !11
  %i.bt = icmp sgt i64 %indvars.iv88, 4
  br i1 %i.bt, label %bb.c, label %._crit_edge.us, !llvm.loop !17

._crit_edge.us:                                   ; preds = %bb.c
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, -1
  %i.bu = icmp sgt i64 %indvars.iv91, 0
  br i1 %i.bu, label %.lr.ph77.us, label %.loopexit, !llvm.loop !18

iter.check:                                       ; preds = %.lr.ph.preheader, %..loopexit72_crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %..loopexit72_crit_edge ] ; 2 uses
  %indvars.iv82 = phi i64 [ %i.u, %.lr.ph.preheader ], [ %indvars.iv.next83, %..loopexit72_crit_edge ] ; 3 uses
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, -2 ; 3 uses
  %i.bv = add nsw i64 %indvars.iv82, -1           ; 2 uses
  %i.bw = mul nsw i64 %1, %i.bv
  %i.bx = getelementptr inbounds i8, ptr %0, i64 %i.bw ; 3 uses
  %i.by = mul nsw i64 %1, %indvars.iv.next83
  %i.bz = getelementptr inbounds i8, ptr %0, i64 %i.by ; 3 uses
  %i.ca = lshr i64 %i.bv, 1
  %i.cb = and i64 %i.ca, 2147483647
  %i.cc = mul nsw i64 %1, %i.cb                   ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %0, i64 %i.cc ; 3 uses
  %i.ce = lshr i64 %indvars.iv.next83, 1
  %i.cf = and i64 %i.ce, 2147483647
  %i.cg = mul nsw i64 %1, %i.cf                   ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %i.cg ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ci = mul i64 %indvar, %i.v                   ; 2 uses
  %i.cj = add i64 %.neg130, %i.ci                 ; 2 uses
  %i.ck = add i64 %i.cj, %i.cc
  %i.cl = add i64 %i.ck, -1
  %diff.check106 = icmp ult i64 %i.cl, 15
  %conflict.rdx = or i1 %diff.check, %diff.check106
  %i.cm = add i64 %i.cj, %i.cg
  %i.cn = add i64 %i.cm, -1
  %diff.check107 = icmp ult i64 %i.cn, 15
  %conflict.rdx108 = or i1 %conflict.rdx, %diff.check107
  %i.co = add i64 %.neg128, %i.ci                 ; 2 uses
  %i.cp = add i64 %i.co, %i.cc
  %i.cq = add i64 %i.cp, -1
  %diff.check109 = icmp ult i64 %i.cq, 15
  %conflict.rdx110 = or i1 %conflict.rdx108, %diff.check109
  %i.cr = add i64 %i.co, %i.cg
  %i.cs = add i64 %i.cr, -1
  %diff.check111 = icmp ult i64 %i.cs, 15
  %conflict.rdx112 = or i1 %conflict.rdx110, %diff.check111
  br i1 %conflict.rdx112, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check113, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ct = sub i64 %i.t, %index                    ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -15
  %wide.load = load <16 x i8>, ptr %i.cv, align 1, !tbaa !11
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ct
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -15
  %wide.load114 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !11
  %reverse115 = shufflevector <16 x i8> %wide.load114, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cy = zext <16 x i8> %reverse to <16 x i32>   ; 2 uses
  %i.cz = mul nuw nsw <16 x i32> %i.cy, splat (i32 3)
  %i.da = zext <16 x i8> %reverse115 to <16 x i32> ; 2 uses
  %i.db = add nuw nsw <16 x i32> %i.da, splat (i32 2)
  %i.dc = add nuw nsw <16 x i32> %i.db, %i.cz
  %i.dd = lshr <16 x i32> %i.dc, splat (i32 2)
  %i.de = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ct
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -15
  %i.dg = shufflevector <16 x i32> %i.dd, <16 x i32> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse116 = trunc nuw <16 x i32> %i.dg to <16 x i8>
  store <16 x i8> %reverse116, ptr %i.df, align 1, !tbaa !11
  %i.dh = mul nuw nsw <16 x i32> %i.da, splat (i32 3)
  %i.di = add nuw nsw <16 x i32> %i.cy, splat (i32 2)
  %i.dj = add nuw nsw <16 x i32> %i.di, %i.dh
  %i.dk = lshr <16 x i32> %i.dj, splat (i32 2)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ct
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -15
  %i.dn = shufflevector <16 x i32> %i.dk, <16 x i32> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse117 = trunc nuw <16 x i32> %i.dn to <16 x i8>
  store <16 x i8> %reverse117, ptr %i.dm, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit72_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index119 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 2 uses
  %i.dp = sub i64 %i.t, %index119                 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -3
  %wide.load120 = load <4 x i8>, ptr %i.dr, align 1, !tbaa !11
  %reverse121 = shufflevector <4 x i8> %wide.load120, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dp
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -3
  %wide.load122 = load <4 x i8>, ptr %i.dt, align 1, !tbaa !11
  %reverse123 = shufflevector <4 x i8> %wide.load122, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.du = zext <4 x i8> %reverse121 to <4 x i32>  ; 2 uses
  %i.dv = mul nuw nsw <4 x i32> %i.du, splat (i32 3)
  %i.dw = zext <4 x i8> %reverse123 to <4 x i32>  ; 2 uses
  %i.dx = add nuw nsw <4 x i32> %i.dw, splat (i32 2)
  %i.dy = add nuw nsw <4 x i32> %i.dx, %i.dv
  %i.dz = lshr <4 x i32> %i.dy, splat (i32 2)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.dp
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -3
  %i.ec = shufflevector <4 x i32> %i.dz, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse124 = trunc nuw <4 x i32> %i.ec to <4 x i8>
  store <4 x i8> %reverse124, ptr %i.eb, align 1, !tbaa !11
  %i.ed = mul nuw nsw <4 x i32> %i.dw, splat (i32 3)
  %i.ee = add nuw nsw <4 x i32> %i.du, splat (i32 2)
  %i.ef = add nuw nsw <4 x i32> %i.ee, %i.ed
  %i.eg = lshr <4 x i32> %i.ef, splat (i32 2)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.dp
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -3
  %i.ej = shufflevector <4 x i32> %i.eg, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse125 = trunc nuw <4 x i32> %i.ej to <4 x i8>
  store <4 x i8> %reverse125, ptr %i.ei, align 1, !tbaa !11
  %index.next126 = add nuw i64 %index119, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next126, %n.vec118
  br i1 %i.ek, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %..loopexit72_crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %iter.check ], [ %i.t, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv
  %i.em = load i8, ptr %i.el, align 1, !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %i.ch, i64 %indvars.iv
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !11
  %i.ep = zext i8 %i.em to i32                    ; 2 uses
  %i.eq = mul nuw nsw i32 %i.ep, 3
  %i.er = zext i8 %i.eo to i32                    ; 2 uses
  %i.es = add nuw nsw i32 %i.er, 2
  %i.et = add nuw nsw i32 %i.es, %i.eq
  %i.eu = lshr i32 %i.et, 2
  %i.ev = trunc nuw i32 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !11
  %i.ex = mul nuw nsw i32 %i.er, 3
  %i.ey = add nuw nsw i32 %i.ep, 2
  %i.ez = add nuw nsw i32 %i.ey, %i.ex
  %i.fa = lshr i32 %i.ez, 2
  %i.fb = trunc nuw i32 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fd = icmp sgt i64 %indvars.iv, 0
  br i1 %i.fd, label %vec.epilog.scalar.ph, label %..loopexit72_crit_edge, !llvm.loop !21

.lr.ph79.split:                                   ; preds = %.lr.ph79.split.prol.loopexit, %.lr.ph79.split
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.3, %.lr.ph79.split ], [ %indvars.iv85.unr, %.lr.ph79.split.prol.loopexit ] ; 5 uses
  %i.fe = mul nsw i64 %1, %indvars.iv85
  %i.ff = getelementptr inbounds i8, ptr %0, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 %i.af
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !11
  %i.fi = getelementptr inbounds i8, ptr %i.ff, i64 %i.ag
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !11
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, -1
  %i.fj = mul nsw i64 %1, %indvars.iv.next86
  %i.fk = getelementptr inbounds i8, ptr %0, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %i.af
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !11
  %i.fn = getelementptr inbounds i8, ptr %i.fk, i64 %i.ag
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !11
  %indvars.iv.next86.1 = add nsw i64 %indvars.iv85, -2
  %i.fo = mul nsw i64 %1, %indvars.iv.next86.1
  %i.fp = getelementptr inbounds i8, ptr %0, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.af
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !11
  %i.fs = getelementptr inbounds i8, ptr %i.fp, i64 %i.ag
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !11
  %indvars.iv.next86.2 = add nsw i64 %indvars.iv85, -3 ; 2 uses
  %i.ft = mul nsw i64 %1, %indvars.iv.next86.2
  %i.fu = getelementptr inbounds i8, ptr %0, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %i.af
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !11
  %i.fx = getelementptr inbounds i8, ptr %i.fu, i64 %i.ag
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !11
  %indvars.iv.next86.3 = add nsw i64 %indvars.iv85, -4
  %.not.3 = icmp eq i64 %indvars.iv.next86.2, 0
  br i1 %.not.3, label %.loopexit, label %.lr.ph79.split, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph79.split.prol.loopexit, %.lr.ph79.split, %._crit_edge.us, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"override-stack-alignment", i32 16}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !22}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12, !23, !24}
!20 = distinct !{!20, !12, !23, !24}
!21 = distinct !{!21, !12, !23}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
