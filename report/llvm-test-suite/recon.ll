Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/recon?download=true
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@form_predictions:bb.a
  %i.dq = load i32, ptr @picture_structure, align 4, !tbaa !7
  %i.dr = icmp eq i32 %i.dq, 3
  br i1 %i.dr, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.ds = icmp eq i32 %3, 2
  %i.dt = icmp slt i32 %.0145, 2                  ; 2 uses
  br i1 %i.ds, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.dt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.du = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7 ; 2 uses
  %i.dv = shl i32 %i.du, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !7
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !7
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef 0, i32 noundef 0, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef 8, i32 noundef %0, i32 noundef %1, i32 noundef %i.dx, i32 noundef %i.dz, i32 noundef %.0145)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ea = icmp slt i32 %.0, 2
  br i1 %i.ea, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.eb = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7 ; 2 uses
  %i.ec = shl i32 %i.eb, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !7
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !7
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef 1, i32 noundef 1, i32 noundef %i.eb, i32 noundef %i.ec, i32 noundef 8, i32 noundef %0, i32 noundef %1, i32 noundef %i.ee, i32 noundef %i.eg, i32 noundef %.0)
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ad
  br i1 %i.dt, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !7
  %i.ej = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %i.ek = shl i32 %i.ej, 1                        ; 2 uses
  %i.el = ashr i32 %1, 1
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !7
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !7
  %i.eq = ashr i32 %i.ep, 1
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef %i.ei, i32 noundef 0, i32 noundef %i.ek, i32 noundef %i.ek, i32 noundef 8, i32 noundef %0, i32 noundef %i.el, i32 noundef %i.en, i32 noundef %i.eq, i32 noundef %.0145)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.er = icmp slt i32 %.0, 2
  br i1 %i.er, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !7
  %i.eu = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %i.ev = shl i32 %i.eu, 1                        ; 2 uses
  %i.ew = ashr i32 %1, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !7
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !7
  %i.fb = ashr i32 %i.fa, 1
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef %i.et, i32 noundef 1, i32 noundef %i.ev, i32 noundef %i.ev, i32 noundef 8, i32 noundef %0, i32 noundef %i.ew, i32 noundef %i.ey, i32 noundef %i.fb, i32 noundef %.0)
  br label %bb.aq

bb.am:                                            ; preds = %bb.ac
  switch i32 %3, label %bb.ap [
    i32 1, label %bb.an
    i32 2, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !7
  %i.fe = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %i.ff = shl i32 %i.fe, 1                        ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !7
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !7
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef %i.fd, i32 noundef 0, i32 noundef %i.ff, i32 noundef %i.ff, i32 noundef 16, i32 noundef %0, i32 noundef %1, i32 noundef %i.fh, i32 noundef %i.fj, i32 noundef %.0145)
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !7
  %i.fm = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %i.fn = shl i32 %i.fm, 1                        ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !7
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !7
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef %i.fl, i32 noundef 0, i32 noundef %i.fn, i32 noundef %i.fn, i32 noundef 8, i32 noundef %0, i32 noundef %1, i32 noundef %i.fp, i32 noundef %i.fr, i32 noundef %.0145)
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !7
  %i.fu = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !7
  %i.fv = shl i32 %i.fu, 1                        ; 2 uses
  %i.fw = add nsw i32 %1, 8
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !7
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !7
  call fastcc void @form_prediction(ptr noundef nonnull @backward_reference_frame, i32 noundef %i.ft, i32 noundef 0, i32 noundef %i.fv, i32 noundef %i.fv, i32 noundef 8, i32 noundef %0, i32 noundef %i.fw, i32 noundef %i.fy, i32 noundef %i.ga, i32 noundef %.0145)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %puts159 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ak, %bb.al, %bb.ag, %bb.ah, %bb.ao, %bb.ap, %bb.an, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @form_prediction(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i32 noundef range(i32 0, -1) %4, i32 noundef range(i32 8, 17) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef range(i32 -715827882, 3) %10) unnamed_addr #2 !guid !9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.b = ashr i32 %4, 1                           ; 4 uses
  %i.c = select i1 %.not, i32 0, i32 %i.b
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = load ptr, ptr @current_frame, align 16, !tbaa !12
  %.not59 = icmp eq i32 %2, 0                     ; 2 uses
  %i.g = select i1 %.not59, i32 0, i32 %i.b
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  tail call fastcc void @form_component_prediction(ptr noundef %i.e, ptr noundef %i.i, i32 noundef %3, i32 noundef %4, i32 noundef 16, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10)
  %i.j = load i32, ptr @chroma_format, align 4, !tbaa !7 ; 2 uses
  %.not60 = icmp eq i32 %i.j, 3
  br i1 %.not60, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ashr i32 %3, 1                           ; 2 uses
  %i.l = ashr i32 %6, 1                           ; 2 uses
  %i.m = sdiv i32 %8, 2                           ; 2 uses
  %i.n = icmp eq i32 %i.j, 1
  br i1 %i.n, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.o = lshr i32 %5, 1
  %i.p = ashr i32 %7, 1
  %i.q = sdiv i32 %9, 2
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %.010 = phi i32 [ %i.k, %bb.c ], [ %i.k, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.0539 = phi i32 [ %i.m, %bb.c ], [ %i.m, %bb.b ], [ %8, %bb.a ] ; 2 uses
  %.0558 = phi i32 [ %i.l, %bb.c ], [ %i.l, %bb.b ], [ %6, %bb.a ] ; 2 uses
  %.0577 = phi i32 [ 8, %bb.c ], [ 8, %bb.b ], [ 16, %bb.a ] ; 2 uses
  %.0586 = phi i32 [ %i.b, %bb.c ], [ %i.b, %bb.b ], [ %4, %bb.a ] ; 3 uses
  %.056 = phi i32 [ %i.o, %bb.c ], [ %5, %bb.b ], [ %5, %bb.a ] ; 2 uses
  %.054 = phi i32 [ %i.p, %bb.c ], [ %7, %bb.b ], [ %7, %bb.a ] ; 2 uses
  %.052 = phi i32 [ %i.q, %bb.c ], [ %9, %bb.b ], [ %9, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.t = ashr i32 %.0586, 1                       ; 2 uses
  %i.u = select i1 %.not, i32 0, i32 %i.t
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %i.v
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_frame, i64 8), align 8, !tbaa !12
  %i.y = select i1 %.not59, i32 0, i32 %i.t
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %i.z
  tail call fastcc void @form_component_prediction(ptr noundef %i.w, ptr noundef %i.aa, i32 noundef %.010, i32 noundef %.0586, i32 noundef %.0577, i32 noundef %.056, i32 noundef %.0558, i32 noundef %.054, i32 noundef %.0539, i32 noundef %.052, i32 noundef %10)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.v
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @current_frame, i64 16), align 16, !tbaa !12
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.z
  tail call fastcc void @form_component_prediction(ptr noundef %i.ad, ptr noundef %i.af, i32 noundef %.010, i32 noundef %.0586, i32 noundef %.0577, i32 noundef %.056, i32 noundef %.0558, i32 noundef %.054, i32 noundef %.0539, i32 noundef %.052, i32 noundef %10)
  ret void
}

declare void @Dual_Prime_Arithmetic(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @form_component_prediction(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 8, 17) %4, i32 noundef range(i32 4, 17) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef range(i32 -715827882, 3) %10) unnamed_addr #4 !guid !59 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = ashr i32 %8, 1
  %i.d = ashr i32 %9, 1
  %i.e = add i32 %i.d, %7
  %i.f = mul i32 %i.e, %2
  %i.g = sext i32 %i.f to i64                     ; 12 uses
  %i.h = getelementptr i8, ptr %0, i64 %i.g
  %i.i = sext i32 %6 to i64                       ; 12 uses
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i
  %i.k = sext i32 %i.c to i64                     ; 9 uses
  %i.l = getelementptr i8, ptr %i.j, i64 %i.k     ; 14 uses
  %i.m = mul i32 %7, %2
  %i.n = sext i32 %i.m to i64                     ; 7 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 %i.i     ; 17 uses
  %i.q = trunc i32 %9 to i1                       ; 2 uses
  %i.r = or i32 %9, %8
  %i.s = and i32 %i.r, 1
  %or.cond.not = icmp eq i32 %i.s, 0
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %10, 0
  %i.t = sext i32 %3 to i64                       ; 5 uses
  %wide.trip.count311 = zext nneg i32 %4 to i64   ; 18 uses
  br i1 %.not, label %.preheader.preheader, label %.preheader210.preheader

.preheader210.preheader:                          ; preds = %bb.b
  %i.u = add nsw i32 %5, -1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = mul nsw i64 %i.t, %i.v                   ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 %i.k
  %i.z = getelementptr i8, ptr %i.y, i64 %i.i
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.g
  %scevgep585 = getelementptr i8, ptr %i.aa, i64 %wide.trip.count311
  %i.ab = getelementptr i8, ptr %1, i64 %i.w
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.n
  %scevgep586 = getelementptr i8, ptr %i.ad, i64 %wide.trip.count311
  %bound0588 = icmp ult ptr %i.p, %scevgep585
  %bound1589 = icmp ult ptr %i.l, %scevgep586
  %found.conflict590 = and i1 %bound0588, %bound1589
  %stride.check591 = icmp slt i32 %3, 0
  %i.ae = or i1 %found.conflict590, %stride.check591
  %min.iters.check593 = icmp samesign ult i32 %4, 16
  %n.vec595 = and i64 %wide.trip.count311, 16     ; 3 uses
  %cmp.n600 = icmp eq i64 %n.vec595, %wide.trip.count311
  %i.af = and i64 %wide.trip.count311, 12
  %min.epilog.iters.check604 = icmp eq i64 %i.af, 0
  %n.vec607 = and i64 %wide.trip.count311, 28     ; 3 uses
  %cmp.n614 = icmp eq i64 %n.vec607, %wide.trip.count311
  %xtraiter665 = and i64 %wide.trip.count311, 1
  %lcmp.mod666.not = icmp eq i64 %xtraiter665, 0
  %i.ag = add nsw i64 %wide.trip.count311, -1
  br label %vector.memcheck587

.preheader.preheader:                             ; preds = %bb.b
  %i.ah = add i64 %i.b, %i.n
  %i.ai = add i64 %i.a, %i.k
  %i.aj = add i64 %i.ai, %i.g
  %i.ak = sub i64 %i.aj, %i.ah
  %diff.check619 = icmp ugt i64 %i.ak, -16
  %min.iters.check621 = icmp samesign ult i32 %4, 16
  %n.vec623 = and i64 %wide.trip.count311, 16     ; 3 uses
  %cmp.n627 = icmp eq i64 %n.vec623, %wide.trip.count311
  %i.al = and i64 %wide.trip.count311, 12
  %min.epilog.iters.check631 = icmp eq i64 %i.al, 0
  %n.vec634 = and i64 %wide.trip.count311, 28     ; 3 uses
  %cmp.n640 = icmp eq i64 %n.vec634, %wide.trip.count311
  %xtraiter667 = and i64 %wide.trip.count311, 3   ; 2 uses
  %lcmp.mod668.not = icmp eq i64 %xtraiter667, 0
  br label %vector.memcheck618

vector.memcheck587:                               ; preds = %.loopexit643, %.preheader210.preheader
  %.0258 = phi ptr [ %i.ch, %.loopexit643 ], [ %i.p, %.preheader210.preheader ] ; 7 uses
  %.0182257 = phi ptr [ %i.cg, %.loopexit643 ], [ %i.l, %.preheader210.preheader ] ; 6 uses
  %.0190256 = phi i32 [ %i.ci, %.loopexit643 ], [ 0, %.preheader210.preheader ]
  br i1 %i.ae, label %vec.epilog.scalar.ph603.preheader, label %vector.main.loop.iter.check592

vector.main.loop.iter.check592:                   ; preds = %vector.memcheck587
  br i1 %min.iters.check593, label %vec.epilog.ph605, label %vector.ph594

vector.ph594:                                     ; preds = %vector.main.loop.iter.check592
  %wide.load597 = load <16 x i8>, ptr %.0258, align 1, !tbaa !60, !alias.scope !61, !noalias !62
  %i.am = zext <16 x i8> %wide.load597 to <16 x i16>
  %wide.load598 = load <16 x i8>, ptr %.0182257, align 1, !tbaa !60, !alias.scope !62
  %i.an = zext <16 x i8> %wide.load598 to <16 x i16>
  %i.ao = add nuw nsw <16 x i16> %i.am, splat (i16 1)
  %i.ap = add nuw nsw <16 x i16> %i.ao, %i.an
  %i.aq = lshr <16 x i16> %i.ap, splat (i16 1)
  %i.ar = trunc nuw <16 x i16> %i.aq to <16 x i8>
  store <16 x i8> %i.ar, ptr %.0258, align 1, !tbaa !60, !alias.scope !61, !noalias !62
  br i1 %cmp.n600, label %.loopexit643, label %vec.epilog.iter.check602

vec.epilog.iter.check602:                         ; preds = %vector.ph594
  br i1 %min.epilog.iters.check604, label %vec.epilog.scalar.ph603.preheader, label %vec.epilog.ph605, !prof !63

vec.epilog.ph605:                                 ; preds = %vector.main.loop.iter.check592, %vec.epilog.iter.check602
  %vec.epilog.resume.val606 = phi i64 [ %n.vec595, %vec.epilog.iter.check602 ], [ 0, %vector.main.loop.iter.check592 ]
  br label %vec.epilog.vector.body608

vec.epilog.vector.body608:                        ; preds = %vec.epilog.vector.body608, %vec.epilog.ph605
  %index609 = phi i64 [ %vec.epilog.resume.val606, %vec.epilog.ph605 ], [ %index.next612, %vec.epilog.vector.body608 ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0258, i64 %index609 ; 2 uses
  %wide.load610 = load <4 x i8>, ptr %i.as, align 1, !tbaa !60, !alias.scope !61, !noalias !62
  %i.at = zext <4 x i8> %wide.load610 to <4 x i16>
  %i.au = getelementptr inbounds nuw i8, ptr %.0182257, i64 %index609
  %wide.load611 = load <4 x i8>, ptr %i.au, align 1, !tbaa !60, !alias.scope !62
  %i.av = zext <4 x i8> %wide.load611 to <4 x i16>
  %i.aw = add nuw nsw <4 x i16> %i.at, splat (i16 1)
  %i.ax = add nuw nsw <4 x i16> %i.aw, %i.av
  %i.ay = lshr <4 x i16> %i.ax, splat (i16 1)
  %i.az = trunc nuw <4 x i16> %i.ay to <4 x i8>
  store <4 x i8> %i.az, ptr %i.as, align 1, !tbaa !60, !alias.scope !61, !noalias !62
  %index.next612 = add nuw i64 %index609, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next612, %n.vec607
  br i1 %i.ba, label %vec.epilog.middle.block613, label %vec.epilog.vector.body608, !llvm.loop !16

vec.epilog.middle.block613:                       ; preds = %vec.epilog.vector.body608
  br i1 %cmp.n614, label %.loopexit643, label %vec.epilog.scalar.ph603.preheader

vec.epilog.scalar.ph603.preheader:                ; preds = %vector.memcheck587, %vec.epilog.iter.check602, %vec.epilog.middle.block613
  %indvars.iv302.ph = phi i64 [ 0, %vector.memcheck587 ], [ %n.vec595, %vec.epilog.iter.check602 ], [ %n.vec607, %vec.epilog.middle.block613 ] ; 5 uses
  br i1 %lcmp.mod666.not, label %vec.epilog.scalar.ph603.prol.loopexit, label %vec.epilog.scalar.ph603.prol

vec.epilog.scalar.ph603.prol:                     ; preds = %vec.epilog.scalar.ph603.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %.0258, i64 %indvars.iv302.ph ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !60
  %i.bd = zext i8 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %.0182257, i64 %indvars.iv302.ph
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !60
  %i.bg = zext i8 %i.bf to i16
  %i.bh = add nuw nsw i16 %i.bd, 1
  %i.bi = add nuw nsw i16 %i.bh, %i.bg
  %i.bj = lshr i16 %i.bi, 1
  %i.bk = trunc nuw i16 %i.bj to i8
  store i8 %i.bk, ptr %i.bb, align 1, !tbaa !60
  %indvars.iv.next303.prol = or disjoint i64 %indvars.iv302.ph, 1
  br label %vec.epilog.scalar.ph603.prol.loopexit

vec.epilog.scalar.ph603.prol.loopexit:            ; preds = %vec.epilog.scalar.ph603.prol, %vec.epilog.scalar.ph603.preheader
  %indvars.iv302.unr = phi i64 [ %indvars.iv302.ph, %vec.epilog.scalar.ph603.preheader ], [ %indvars.iv.next303.prol, %vec.epilog.scalar.ph603.prol ]
  %i.bl = icmp eq i64 %indvars.iv302.ph, %i.ag
  br i1 %i.bl, label %.loopexit643, label %vec.epilog.scalar.ph603

vec.epilog.scalar.ph603:                          ; preds = %vec.epilog.scalar.ph603.prol.loopexit, %vec.epilog.scalar.ph603
  %indvars.iv302 = phi i64 [ %indvars.iv.next303.1, %vec.epilog.scalar.ph603 ], [ %indvars.iv302.unr, %vec.epilog.scalar.ph603.prol.loopexit ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0258, i64 %indvars.iv302 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !60
  %i.bo = zext i8 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %.0182257, i64 %indvars.iv302
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !60
  %i.br = zext i8 %i.bq to i16
  %i.bs = add nuw nsw i16 %i.bo, 1
  %i.bt = add nuw nsw i16 %i.bs, %i.br
  %i.bu = lshr i16 %i.bt, 1
  %i.bv = trunc nuw i16 %i.bu to i8
  store i8 %i.bv, ptr %i.bm, align 1, !tbaa !60
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0258, i64 %indvars.iv.next303 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !60
  %i.by = zext i8 %i.bx to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %.0182257, i64 %indvars.iv.next303
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !60
  %i.cb = zext i8 %i.ca to i16
  %i.cc = add nuw nsw i16 %i.by, 1
  %i.cd = add nuw nsw i16 %i.cc, %i.cb
  %i.ce = lshr i16 %i.cd, 1
  %i.cf = trunc nuw i16 %i.ce to i8
  store i8 %i.cf, ptr %i.bw, align 1, !tbaa !60
  %indvars.iv.next303.1 = add nuw nsw i64 %indvars.iv302, 2 ; 2 uses
  %exitcond306.not.1 = icmp eq i64 %indvars.iv.next303.1, %wide.trip.count311
  br i1 %exitcond306.not.1, label %.loopexit643, label %vec.epilog.scalar.ph603, !llvm.loop !17

.loopexit643:                                     ; preds = %vec.epilog.scalar.ph603.prol.loopexit, %vec.epilog.scalar.ph603, %vec.epilog.middle.block613, %vector.ph594
  %i.cg = getelementptr inbounds i8, ptr %.0182257, i64 %i.t
  %i.ch = getelementptr inbounds i8, ptr %.0258, i64 %i.t
  %i.ci = add nuw nsw i32 %.0190256, 1            ; 2 uses
  %exitcond307.not = icmp eq i32 %i.ci, %5
  br i1 %exitcond307.not, label %.loopexit, label %vector.memcheck587, !llvm.loop !18

vector.memcheck618:                               ; preds = %.loopexit642, %.preheader.preheader
  %.1262 = phi ptr [ %i.de, %.loopexit642 ], [ %i.p, %.preheader.preheader ] ; 8 uses
  %.1183261 = phi ptr [ %i.dd, %.loopexit642 ], [ %i.l, %.preheader.preheader ] ; 8 uses
  %.1191260 = phi i32 [ %i.df, %.loopexit642 ], [ 0, %.preheader.preheader ]
  br i1 %diff.check619, label %vec.epilog.scalar.ph630.preheader, label %vector.main.loop.iter.check620

vector.main.loop.iter.check620:                   ; preds = %vector.memcheck618
  br i1 %min.iters.check621, label %vec.epilog.ph632, label %vector.ph622

vector.ph622:                                     ; preds = %vector.main.loop.iter.check620
  %wide.load625 = load <16 x i8>, ptr %.1183261, align 1, !tbaa !60
  store <16 x i8> %wide.load625, ptr %.1262, align 1, !tbaa !60
  br i1 %cmp.n627, label %.loopexit642, label %vec.epilog.iter.check629

vec.epilog.iter.check629:                         ; preds = %vector.ph622
  br i1 %min.epilog.iters.check631, label %vec.epilog.scalar.ph630.preheader, label %vec.epilog.ph632, !prof !63

vec.epilog.ph632:                                 ; preds = %vector.main.loop.iter.check620, %vec.epilog.iter.check629
  %vec.epilog.resume.val633 = phi i64 [ %n.vec623, %vec.epilog.iter.check629 ], [ 0, %vector.main.loop.iter.check620 ]
  br label %vec.epilog.vector.body635

vec.epilog.vector.body635:                        ; preds = %vec.epilog.vector.body635, %vec.epilog.ph632
  %index636 = phi i64 [ %vec.epilog.resume.val633, %vec.epilog.ph632 ], [ %index.next638, %vec.epilog.vector.body635 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1183261, i64 %index636
  %wide.load637 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !60
  %i.ck = getelementptr inbounds nuw i8, ptr %.1262, i64 %index636
  store <4 x i8> %wide.load637, ptr %i.ck, align 1, !tbaa !60
  %index.next638 = add nuw i64 %index636, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next638, %n.vec634
  br i1 %i.cl, label %vec.epilog.middle.block639, label %vec.epilog.vector.body635, !llvm.loop !19

vec.epilog.middle.block639:                       ; preds = %vec.epilog.vector.body635
  br i1 %cmp.n640, label %.loopexit642, label %vec.epilog.scalar.ph630.preheader

vec.epilog.scalar.ph630.preheader:                ; preds = %vector.memcheck618, %vec.epilog.iter.check629, %vec.epilog.middle.block639
  %indvars.iv308.ph = phi i64 [ 0, %vector.memcheck618 ], [ %n.vec623, %vec.epilog.iter.check629 ], [ %n.vec634, %vec.epilog.middle.block639 ] ; 3 uses
  br i1 %lcmp.mod668.not, label %vec.epilog.scalar.ph630.prol.loopexit, label %vec.epilog.scalar.ph630.prol

vec.epilog.scalar.ph630.prol:                     ; preds = %vec.epilog.scalar.ph630.preheader, %vec.epilog.scalar.ph630.prol
  %indvars.iv308.prol = phi i64 [ %indvars.iv.next309.prol, %vec.epilog.scalar.ph630.prol ], [ %indvars.iv308.ph, %vec.epilog.scalar.ph630.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph630.prol ], [ 0, %vec.epilog.scalar.ph630.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv308.prol
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !60
  %i.co = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv308.prol
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !60
  %indvars.iv.next309.prol = add nuw nsw i64 %indvars.iv308.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter667
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph630.prol.loopexit, label %vec.epilog.scalar.ph630.prol, !llvm.loop !20

vec.epilog.scalar.ph630.prol.loopexit:            ; preds = %vec.epilog.scalar.ph630.prol, %vec.epilog.scalar.ph630.preheader
  %indvars.iv308.unr = phi i64 [ %indvars.iv308.ph, %vec.epilog.scalar.ph630.preheader ], [ %indvars.iv.next309.prol, %vec.epilog.scalar.ph630.prol ]
  %i.cp = sub nsw i64 %indvars.iv308.ph, %wide.trip.count311
  %i.cq = icmp ugt i64 %i.cp, -4
  br i1 %i.cq, label %.loopexit642, label %vec.epilog.scalar.ph630

vec.epilog.scalar.ph630:                          ; preds = %vec.epilog.scalar.ph630.prol.loopexit, %vec.epilog.scalar.ph630
  %indvars.iv308 = phi i64 [ %indvars.iv.next309.3, %vec.epilog.scalar.ph630 ], [ %indvars.iv308.unr, %vec.epilog.scalar.ph630.prol.loopexit ] ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv308
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !60
  %i.ct = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv308
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !60
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv.next309
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !60
  %i.cw = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv.next309
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !60
  %indvars.iv.next309.1 = add nuw nsw i64 %indvars.iv308, 2 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv.next309.1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !60
  %i.cz = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv.next309.1
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !60
  %indvars.iv.next309.2 = add nuw nsw i64 %indvars.iv308, 3 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv.next309.2
  %i.db = load i8, ptr %i.da, align 1, !tbaa !60
  %i.dc = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv.next309.2
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !60
  %indvars.iv.next309.3 = add nuw nsw i64 %indvars.iv308, 4 ; 2 uses
  %exitcond312.not.3 = icmp eq i64 %indvars.iv.next309.3, %wide.trip.count311
  br i1 %exitcond312.not.3, label %.loopexit642, label %vec.epilog.scalar.ph630, !llvm.loop !21

.loopexit642:                                     ; preds = %vec.epilog.scalar.ph630.prol.loopexit, %vec.epilog.scalar.ph630, %vec.epilog.middle.block639, %vector.ph622
  %i.dd = getelementptr inbounds i8, ptr %.1183261, i64 %i.t
  %i.de = getelementptr inbounds i8, ptr %.1262, i64 %i.t
  %i.df = add nuw nsw i32 %.1191260, 1            ; 2 uses
  %exitcond313.not = icmp eq i32 %i.df, %5
  br i1 %exitcond313.not, label %.loopexit, label %vector.memcheck618, !llvm.loop !22

bb.c:                                             ; preds = %bb.a
  %i.dg = and i32 %8, 1
  %i.dh = icmp eq i32 %i.dg, 0                    ; 2 uses
  %or.cond3 = and i1 %i.dh, %i.q
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not208 = icmp eq i32 %10, 0
  %i.di = sext i32 %3 to i64                      ; 5 uses
  %i.dj = sext i32 %2 to i64                      ; 5 uses
  %wide.trip.count299 = zext nneg i32 %4 to i64   ; 19 uses
  br i1 %.not208, label %.preheader213.preheader, label %.preheader216.preheader

.preheader216.preheader:                          ; preds = %bb.d
  %i.dk = add nsw i32 %5, -1
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = mul nsw i64 %i.di, %i.dl                ; 2 uses
  %11 = add i64 %i.dm, %i.k
  %12 = add i64 %11, %i.i                         ; 2 uses
  %i.dn = getelementptr i8, ptr %0, i64 %12
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.g
  %scevgep509 = getelementptr i8, ptr %i.do, i64 %wide.trip.count299
  %i.dp = getelementptr i8, ptr %0, i64 %12
  %i.dq = getelementptr i8, ptr %i.dp, i64 %i.dj
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.g
  %scevgep510 = getelementptr i8, ptr %i.dr, i64 %wide.trip.count299
  %i.ds = getelementptr i8, ptr %0, i64 %i.k
  %i.dt = getelementptr i8, ptr %i.ds, i64 %i.i
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.dj
  %scevgep511 = getelementptr i8, ptr %i.du, i64 %i.g
  %i.dv = getelementptr i8, ptr %1, i64 %i.dm
  %i.dw = getelementptr i8, ptr %i.dv, i64 %i.i
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.n
  %scevgep512 = getelementptr i8, ptr %i.dx, i64 %wide.trip.count299 ; 2 uses
  %bound0514 = icmp ult ptr %i.p, %scevgep510
  %bound1515 = icmp ult ptr %scevgep511, %scevgep512
  %found.conflict516 = and i1 %bound0514, %bound1515
  %stride.check517 = icmp slt i32 %3, 0
  %i.dy = or i1 %found.conflict516, %stride.check517
  %bound0518 = icmp ult ptr %i.p, %scevgep509
  %bound1519 = icmp ult ptr %i.l, %scevgep512
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx521 = or i1 %i.dy, %found.conflict520
  %min.iters.check523 = icmp samesign ult i32 %4, 16
  %n.vec525 = and i64 %wide.trip.count299, 16     ; 3 uses
  %cmp.n531 = icmp eq i64 %n.vec525, %wide.trip.count299
  %i.dz = and i64 %wide.trip.count299, 12
  %min.epilog.iters.check535 = icmp eq i64 %i.dz, 0
  %n.vec538 = and i64 %wide.trip.count299, 28     ; 3 uses
  %cmp.n546 = icmp eq i64 %n.vec538, %wide.trip.count299
  %xtraiter661 = and i64 %wide.trip.count299, 1
  %lcmp.mod662.not = icmp eq i64 %xtraiter661, 0
  %i.ea = add nsw i64 %wide.trip.count299, -1
  br label %iter.check532

.preheader213.preheader:                          ; preds = %bb.d
  %i.eb = add i64 %i.b, %i.n                      ; 2 uses
  %i.ec = add i64 %i.a, %i.k                      ; 2 uses
  %i.ed = add i64 %i.ec, %i.g
  %i.ee = add i64 %i.ec, %i.dj
  %i.ef = add i64 %i.ee, %i.g
  %i.eg = sub i64 %i.ef, %i.eb
  %diff.check = icmp ugt i64 %i.eg, -16
  %i.eh = sub i64 %i.ed, %i.eb
  %diff.check552 = icmp ugt i64 %i.eh, -16
  %conflict.rdx553 = or i1 %diff.check, %diff.check552
  %min.iters.check555 = icmp samesign ult i32 %4, 16
  %n.vec557 = and i64 %wide.trip.count299, 16     ; 3 uses
  %cmp.n562 = icmp eq i64 %n.vec557, %wide.trip.count299
  %i.ei = and i64 %wide.trip.count299, 12
  %min.epilog.iters.check566 = icmp eq i64 %i.ei, 0
  %n.vec569 = and i64 %wide.trip.count299, 28     ; 3 uses
  %cmp.n576 = icmp eq i64 %n.vec569, %wide.trip.count299
  %xtraiter663 = and i64 %wide.trip.count299, 1
  %lcmp.mod664.not = icmp eq i64 %xtraiter663, 0
  %i.ej = add nsw i64 %wide.trip.count299, -1
  br label %iter.check563

iter.check532:                                    ; preds = %.preheader216.preheader, %.loopexit645
  %.2250 = phi ptr [ %i.hd, %.loopexit645 ], [ %i.p, %.preheader216.preheader ] ; 7 uses
  %.2184249 = phi ptr [ %i.hc, %.loopexit645 ], [ %i.l, %.preheader216.preheader ] ; 7 uses
  %.2192248 = phi i32 [ %i.he, %.loopexit645 ], [ 0, %.preheader216.preheader ]
  %invariant.gep330 = getelementptr i8, ptr %.2184249, i64 %i.dj ; 5 uses
  br i1 %conflict.rdx521, label %vec.epilog.scalar.ph534.preheader, label %vector.main.loop.iter.check522

vector.main.loop.iter.check522:                   ; preds = %iter.check532
  br i1 %min.iters.check523, label %vec.epilog.ph536, label %vector.ph524

vector.ph524:                                     ; preds = %vector.main.loop.iter.check522
  %wide.load527 = load <16 x i8>, ptr %.2250, align 1, !tbaa !60, !alias.scope !68, !noalias !69
  %i.ek = zext <16 x i8> %wide.load527 to <16 x i16>
  %wide.load528 = load <16 x i8>, ptr %.2184249, align 1, !tbaa !60, !alias.scope !70
  %i.el = zext <16 x i8> %wide.load528 to <16 x i16>
  %wide.load529 = load <16 x i8>, ptr %invariant.gep330, align 1, !tbaa !60, !alias.scope !71
  %i.em = zext <16 x i8> %wide.load529 to <16 x i16>
  %i.en = add nuw nsw <16 x i16> %i.el, splat (i16 1)
  %i.eo = add nuw nsw <16 x i16> %i.en, %i.em
  %i.ep = lshr <16 x i16> %i.eo, splat (i16 1)
  %i.eq = add nuw nsw <16 x i16> %i.ek, splat (i16 1)
  %i.er = add nuw nsw <16 x i16> %i.eq, %i.ep
  %i.es = lshr <16 x i16> %i.er, splat (i16 1)
  %i.et = trunc nuw <16 x i16> %i.es to <16 x i8>
  store <16 x i8> %i.et, ptr %.2250, align 1, !tbaa !60, !alias.scope !68, !noalias !69
  br i1 %cmp.n531, label %.loopexit645, label %vec.epilog.iter.check533

vec.epilog.iter.check533:                         ; preds = %vector.ph524
  br i1 %min.epilog.iters.check535, label %vec.epilog.scalar.ph534.preheader, label %vec.epilog.ph536, !prof !63

vec.epilog.ph536:                                 ; preds = %vector.main.loop.iter.check522, %vec.epilog.iter.check533
  %vec.epilog.resume.val537 = phi i64 [ %n.vec525, %vec.epilog.iter.check533 ], [ 0, %vector.main.loop.iter.check522 ]
  br label %vec.epilog.vector.body539

vec.epilog.vector.body539:                        ; preds = %vec.epilog.vector.body539, %vec.epilog.ph536
  %index540 = phi i64 [ %vec.epilog.resume.val537, %vec.epilog.ph536 ], [ %index.next544, %vec.epilog.vector.body539 ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.2250, i64 %index540 ; 2 uses
  %wide.load541 = load <4 x i8>, ptr %i.eu, align 1, !tbaa !60, !alias.scope !68, !noalias !69
  %i.ev = zext <4 x i8> %wide.load541 to <4 x i16>
  %i.ew = getelementptr inbounds nuw i8, ptr %.2184249, i64 %index540
  %wide.load542 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !60, !alias.scope !70
  %i.ex = zext <4 x i8> %wide.load542 to <4 x i16>
  %i.ey = getelementptr i8, ptr %invariant.gep330, i64 %index540
  %wide.load543 = load <4 x i8>, ptr %i.ey, align 1, !tbaa !60, !alias.scope !71
  %i.ez = zext <4 x i8> %wide.load543 to <4 x i16>
  %i.fa = add nuw nsw <4 x i16> %i.ex, splat (i16 1)
  %i.fb = add nuw nsw <4 x i16> %i.fa, %i.ez
  %i.fc = lshr <4 x i16> %i.fb, splat (i16 1)
  %i.fd = add nuw nsw <4 x i16> %i.ev, splat (i16 1)
  %i.fe = add nuw nsw <4 x i16> %i.fd, %i.fc
  %i.ff = lshr <4 x i16> %i.fe, splat (i16 1)
  %i.fg = trunc nuw <4 x i16> %i.ff to <4 x i8>
  store <4 x i8> %i.fg, ptr %i.eu, align 1, !tbaa !60, !alias.scope !68, !noalias !69
  %index.next544 = add nuw i64 %index540, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next544, %n.vec538
  br i1 %i.fh, label %vec.epilog.middle.block545, label %vec.epilog.vector.body539, !llvm.loop !27

vec.epilog.middle.block545:                       ; preds = %vec.epilog.vector.body539
  br i1 %cmp.n546, label %.loopexit645, label %vec.epilog.scalar.ph534.preheader

vec.epilog.scalar.ph534.preheader:                ; preds = %iter.check532, %vec.epilog.iter.check533, %vec.epilog.middle.block545
  %indvars.iv290.ph = phi i64 [ 0, %iter.check532 ], [ %n.vec525, %vec.epilog.iter.check533 ], [ %n.vec538, %vec.epilog.middle.block545 ] ; 6 uses
  br i1 %lcmp.mod662.not, label %vec.epilog.scalar.ph534.prol.loopexit, label %vec.epilog.scalar.ph534.prol

vec.epilog.scalar.ph534.prol:                     ; preds = %vec.epilog.scalar.ph534.preheader
  %i.fi = getelementptr inbounds nuw i8, ptr %.2250, i64 %indvars.iv290.ph ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !60
  %i.fk = zext i8 %i.fj to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %.2184249, i64 %indvars.iv290.ph
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !60
  %i.fn = zext i8 %i.fm to i16
  %gep331.prol = getelementptr i8, ptr %invariant.gep330, i64 %indvars.iv290.ph
  %i.fo = load i8, ptr %gep331.prol, align 1, !tbaa !60
  %i.fp = zext i8 %i.fo to i16
  %i.fq = add nuw nsw i16 %i.fn, 1
  %i.fr = add nuw nsw i16 %i.fq, %i.fp
  %i.fs = lshr i16 %i.fr, 1
  %i.ft = add nuw nsw i16 %i.fk, 1
  %i.fu = add nuw nsw i16 %i.ft, %i.fs
  %i.fv = lshr i16 %i.fu, 1
  %i.fw = trunc nuw i16 %i.fv to i8
  store i8 %i.fw, ptr %i.fi, align 1, !tbaa !60
  %indvars.iv.next291.prol = or disjoint i64 %indvars.iv290.ph, 1
  br label %vec.epilog.scalar.ph534.prol.loopexit

vec.epilog.scalar.ph534.prol.loopexit:            ; preds = %vec.epilog.scalar.ph534.prol, %vec.epilog.scalar.ph534.preheader
  %indvars.iv290.unr = phi i64 [ %indvars.iv290.ph, %vec.epilog.scalar.ph534.preheader ], [ %indvars.iv.next291.prol, %vec.epilog.scalar.ph534.prol ]
  %i.fx = icmp eq i64 %indvars.iv290.ph, %i.ea
  br i1 %i.fx, label %.loopexit645, label %vec.epilog.scalar.ph534

vec.epilog.scalar.ph534:                          ; preds = %vec.epilog.scalar.ph534.prol.loopexit, %vec.epilog.scalar.ph534
  %indvars.iv290 = phi i64 [ %indvars.iv.next291.1, %vec.epilog.scalar.ph534 ], [ %indvars.iv290.unr, %vec.epilog.scalar.ph534.prol.loopexit ] ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.2250, i64 %indvars.iv290 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !60
  %i.ga = zext i8 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %.2184249, i64 %indvars.iv290
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !60
  %i.gd = zext i8 %i.gc to i16
  %gep331 = getelementptr i8, ptr %invariant.gep330, i64 %indvars.iv290
  %i.ge = load i8, ptr %gep331, align 1, !tbaa !60
  %i.gf = zext i8 %i.ge to i16
  %i.gg = add nuw nsw i16 %i.gd, 1
  %i.gh = add nuw nsw i16 %i.gg, %i.gf
  %i.gi = lshr i16 %i.gh, 1
  %i.gj = add nuw nsw i16 %i.ga, 1
  %i.gk = add nuw nsw i16 %i.gj, %i.gi
  %i.gl = lshr i16 %i.gk, 1
  %i.gm = trunc nuw i16 %i.gl to i8
  store i8 %i.gm, ptr %i.fy, align 1, !tbaa !60
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.2250, i64 %indvars.iv.next291 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !60
  %i.gp = zext i8 %i.go to i16
  %i.gq = getelementptr inbounds nuw i8, ptr %.2184249, i64 %indvars.iv.next291
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !60
  %i.gs = zext i8 %i.gr to i16
  %gep331.1 = getelementptr i8, ptr %invariant.gep330, i64 %indvars.iv.next291
  %i.gt = load i8, ptr %gep331.1, align 1, !tbaa !60
  %i.gu = zext i8 %i.gt to i16
  %i.gv = add nuw nsw i16 %i.gs, 1
  %i.gw = add nuw nsw i16 %i.gv, %i.gu
  %i.gx = lshr i16 %i.gw, 1
  %i.gy = add nuw nsw i16 %i.gp, 1
  %i.gz = add nuw nsw i16 %i.gy, %i.gx
  %i.ha = lshr i16 %i.gz, 1
  %i.hb = trunc nuw i16 %i.ha to i8
  store i8 %i.hb, ptr %i.gn, align 1, !tbaa !60
  %indvars.iv.next291.1 = add nuw nsw i64 %indvars.iv290, 2 ; 2 uses
  %exitcond294.not.1 = icmp eq i64 %indvars.iv.next291.1, %wide.trip.count299
  br i1 %exitcond294.not.1, label %.loopexit645, label %vec.epilog.scalar.ph534, !llvm.loop !28

.loopexit645:                                     ; preds = %vec.epilog.scalar.ph534.prol.loopexit, %vec.epilog.scalar.ph534, %vec.epilog.middle.block545, %vector.ph524
  %i.hc = getelementptr inbounds i8, ptr %.2184249, i64 %i.di
  %i.hd = getelementptr inbounds i8, ptr %.2250, i64 %i.di
  %i.he = add nuw nsw i32 %.2192248, 1            ; 2 uses
  %exitcond295.not = icmp eq i32 %i.he, %5
  br i1 %exitcond295.not, label %.loopexit, label %iter.check532, !llvm.loop !29

iter.check563:                                    ; preds = %.preheader213.preheader, %.loopexit644
  %.3254 = phi ptr [ %i.jb, %.loopexit644 ], [ %i.p, %.preheader213.preheader ] ; 6 uses
  %.3185253 = phi ptr [ %i.ja, %.loopexit644 ], [ %i.l, %.preheader213.preheader ] ; 7 uses
  %.3193252 = phi i32 [ %i.jc, %.loopexit644 ], [ 0, %.preheader213.preheader ]
  %invariant.gep332 = getelementptr i8, ptr %.3185253, i64 %i.dj ; 5 uses
  br i1 %conflict.rdx553, label %vec.epilog.scalar.ph565.preheader, label %vector.main.loop.iter.check554

vector.main.loop.iter.check554:                   ; preds = %iter.check563
  br i1 %min.iters.check555, label %vec.epilog.ph567, label %vector.ph556

vector.ph556:                                     ; preds = %vector.main.loop.iter.check554
  %wide.load559 = load <16 x i8>, ptr %.3185253, align 1, !tbaa !60
  %i.hf = zext <16 x i8> %wide.load559 to <16 x i16>
  %wide.load560 = load <16 x i8>, ptr %invariant.gep332, align 1, !tbaa !60
  %i.hg = zext <16 x i8> %wide.load560 to <16 x i16>
  %i.hh = add nuw nsw <16 x i16> %i.hf, splat (i16 1)
  %i.hi = add nuw nsw <16 x i16> %i.hh, %i.hg
  %i.hj = lshr <16 x i16> %i.hi, splat (i16 1)
  %i.hk = trunc nuw <16 x i16> %i.hj to <16 x i8>
  store <16 x i8> %i.hk, ptr %.3254, align 1, !tbaa !60
  br i1 %cmp.n562, label %.loopexit644, label %vec.epilog.iter.check564

vec.epilog.iter.check564:                         ; preds = %vector.ph556
  br i1 %min.epilog.iters.check566, label %vec.epilog.scalar.ph565.preheader, label %vec.epilog.ph567, !prof !63

vec.epilog.ph567:                                 ; preds = %vector.main.loop.iter.check554, %vec.epilog.iter.check564
  %vec.epilog.resume.val568 = phi i64 [ %n.vec557, %vec.epilog.iter.check564 ], [ 0, %vector.main.loop.iter.check554 ]
  br label %vec.epilog.vector.body570

vec.epilog.vector.body570:                        ; preds = %vec.epilog.vector.body570, %vec.epilog.ph567
  %index571 = phi i64 [ %vec.epilog.resume.val568, %vec.epilog.ph567 ], [ %index.next574, %vec.epilog.vector.body570 ] ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.3185253, i64 %index571
  %wide.load572 = load <4 x i8>, ptr %i.hl, align 1, !tbaa !60
  %i.hm = zext <4 x i8> %wide.load572 to <4 x i16>
  %i.hn = getelementptr i8, ptr %invariant.gep332, i64 %index571
  %wide.load573 = load <4 x i8>, ptr %i.hn, align 1, !tbaa !60
  %i.ho = zext <4 x i8> %wide.load573 to <4 x i16>
  %i.hp = add nuw nsw <4 x i16> %i.hm, splat (i16 1)
  %i.hq = add nuw nsw <4 x i16> %i.hp, %i.ho
  %i.hr = lshr <4 x i16> %i.hq, splat (i16 1)
  %i.hs = trunc nuw <4 x i16> %i.hr to <4 x i8>
  %i.ht = getelementptr inbounds nuw i8, ptr %.3254, i64 %index571
  store <4 x i8> %i.hs, ptr %i.ht, align 1, !tbaa !60
  %index.next574 = add nuw i64 %index571, 4       ; 2 uses
  %i.hu = icmp eq i64 %index.next574, %n.vec569
  br i1 %i.hu, label %vec.epilog.middle.block575, label %vec.epilog.vector.body570, !llvm.loop !30

vec.epilog.middle.block575:                       ; preds = %vec.epilog.vector.body570
end_hunk_0
begin_hunk_1_@form_component_prediction:bb.a
vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n349, label %.loopexit649, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec345, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.kv = getelementptr inbounds nuw i8, ptr %.4234, i64 %indvars.iv.ph ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !60
  %i.kx = zext i8 %i.kw to i16
  %i.ky = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv.ph
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !60
  %i.la = zext i8 %i.kz to i16
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv.next.prol
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !60
  %i.ld = zext i8 %i.lc to i16
  %i.le = add nuw nsw i16 %i.la, 1
  %i.lf = add nuw nsw i16 %i.le, %i.ld
  %i.lg = lshr i16 %i.lf, 1
  %i.lh = add nuw nsw i16 %i.kx, 1
  %i.li = add nuw nsw i16 %i.lh, %i.lg
  %i.lj = lshr i16 %i.li, 1
  %i.lk = trunc nuw i16 %i.lj to i8
  store i8 %i.lk, ptr %i.kv, align 1, !tbaa !60
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ll = icmp eq i64 %indvars.iv.ph, %i.jr
  br i1 %i.ll, label %.loopexit649, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.4234, i64 %indvars.iv ; 2 uses
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !60
  %i.lo = zext i8 %i.ln to i16
  %i.lp = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !60
  %i.lr = zext i8 %i.lq to i16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv.next
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !60
  %i.lu = zext i8 %i.lt to i16
  %i.lv = add nuw nsw i16 %i.lr, 1
  %i.lw = add nuw nsw i16 %i.lv, %i.lu
  %i.lx = lshr i16 %i.lw, 1
  %i.ly = add nuw nsw i16 %i.lo, 1
  %i.lz = add nuw nsw i16 %i.ly, %i.lx
  %i.ma = lshr i16 %i.lz, 1
  %i.mb = trunc nuw i16 %i.ma to i8
  store i8 %i.mb, ptr %i.lm, align 1, !tbaa !60
  %i.mc = getelementptr inbounds nuw i8, ptr %.4234, i64 %indvars.iv.next ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !60
  %i.me = zext i8 %i.md to i16
  %i.mf = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv.next
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !60
  %i.mh = zext i8 %i.mg to i16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv.next.1
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !60
  %i.mk = zext i8 %i.mj to i16
  %i.ml = add nuw nsw i16 %i.mh, 1
  %i.mm = add nuw nsw i16 %i.ml, %i.mk
  %i.mn = lshr i16 %i.mm, 1
  %i.mo = add nuw nsw i16 %i.me, 1
  %i.mp = add nuw nsw i16 %i.mo, %i.mn
  %i.mq = lshr i16 %i.mp, 1
  %i.mr = trunc nuw i16 %i.mq to i8
  store i8 %i.mr, ptr %i.mc, align 1, !tbaa !60
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count275
  br i1 %exitcond.not.1, label %.loopexit649, label %vec.epilog.scalar.ph, !llvm.loop !37

.loopexit649:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %i.ms = getelementptr inbounds i8, ptr %.4186233, i64 %i.jd
  %i.mt = getelementptr inbounds i8, ptr %.4234, i64 %i.jd
  %i.mu = add nuw nsw i32 %.4194232, 1            ; 2 uses
  %exitcond271.not = icmp eq i32 %i.mu, %5
  br i1 %exitcond271.not, label %.loopexit, label %vector.memcheck, !llvm.loop !38

vector.memcheck359:                               ; preds = %vector.memcheck359.preheader, %.loopexit648
  %.5238 = phi ptr [ %i.ow, %.loopexit648 ], [ %i.p, %vector.memcheck359.preheader ] ; 6 uses
  %.5187237 = phi ptr [ %i.ov, %.loopexit648 ], [ %i.l, %vector.memcheck359.preheader ] ; 11 uses
  %.5195236 = phi i32 [ %i.ox, %.loopexit648 ], [ 0, %vector.memcheck359.preheader ]
  br i1 %i.js, label %vec.epilog.scalar.ph375.preheader, label %vector.main.loop.iter.check364

vector.main.loop.iter.check364:                   ; preds = %vector.memcheck359
  br i1 %min.iters.check365, label %vec.epilog.ph377, label %vector.ph366

vector.ph366:                                     ; preds = %vector.main.loop.iter.check364
  %wide.load369 = load <16 x i8>, ptr %.5187237, align 1, !tbaa !60, !alias.scope !74
  %i.mv = zext <16 x i8> %wide.load369 to <16 x i16>
  %i.mw = getelementptr inbounds nuw i8, ptr %.5187237, i64 1
  %wide.load370 = load <16 x i8>, ptr %i.mw, align 1, !tbaa !60, !alias.scope !74
  %i.mx = zext <16 x i8> %wide.load370 to <16 x i16>
  %i.my = add nuw nsw <16 x i16> %i.mv, splat (i16 1)
  %i.mz = add nuw nsw <16 x i16> %i.my, %i.mx
  %i.na = lshr <16 x i16> %i.mz, splat (i16 1)
  %i.nb = trunc nuw <16 x i16> %i.na to <16 x i8>
  store <16 x i8> %i.nb, ptr %.5238, align 1, !tbaa !60, !alias.scope !75, !noalias !74
  br i1 %cmp.n372, label %.loopexit648, label %vec.epilog.iter.check374

vec.epilog.iter.check374:                         ; preds = %vector.ph366
  br i1 %min.epilog.iters.check376, label %vec.epilog.scalar.ph375.preheader, label %vec.epilog.ph377, !prof !63

vec.epilog.ph377:                                 ; preds = %vector.main.loop.iter.check364, %vec.epilog.iter.check374
  %vec.epilog.resume.val378 = phi i64 [ %n.vec367, %vec.epilog.iter.check374 ], [ 0, %vector.main.loop.iter.check364 ]
  br label %vec.epilog.vector.body380

vec.epilog.vector.body380:                        ; preds = %vec.epilog.vector.body380, %vec.epilog.ph377
  %index381 = phi i64 [ %vec.epilog.resume.val378, %vec.epilog.ph377 ], [ %index.next384, %vec.epilog.vector.body380 ] ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.5187237, i64 %index381
  %wide.load382 = load <4 x i8>, ptr %i.nc, align 1, !tbaa !60, !alias.scope !74
  %i.nd = zext <4 x i8> %wide.load382 to <4 x i16>
  %i.ne = getelementptr inbounds nuw i8, ptr %.5187237, i64 %index381
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 1
  %wide.load383 = load <4 x i8>, ptr %i.nf, align 1, !tbaa !60, !alias.scope !74
  %i.ng = zext <4 x i8> %wide.load383 to <4 x i16>
  %i.nh = add nuw nsw <4 x i16> %i.nd, splat (i16 1)
  %i.ni = add nuw nsw <4 x i16> %i.nh, %i.ng
  %i.nj = lshr <4 x i16> %i.ni, splat (i16 1)
  %i.nk = trunc nuw <4 x i16> %i.nj to <4 x i8>
  %i.nl = getelementptr inbounds nuw i8, ptr %.5238, i64 %index381
  store <4 x i8> %i.nk, ptr %i.nl, align 1, !tbaa !60, !alias.scope !75, !noalias !74
  %index.next384 = add nuw i64 %index381, 4       ; 2 uses
  %i.nm = icmp eq i64 %index.next384, %n.vec379
  br i1 %i.nm, label %vec.epilog.middle.block385, label %vec.epilog.vector.body380, !llvm.loop !42

vec.epilog.middle.block385:                       ; preds = %vec.epilog.vector.body380
  br i1 %cmp.n386, label %.loopexit648, label %vec.epilog.scalar.ph375.preheader

vec.epilog.scalar.ph375.preheader:                ; preds = %vector.memcheck359, %vec.epilog.iter.check374, %vec.epilog.middle.block385
  %indvars.iv272.ph = phi i64 [ 0, %vector.memcheck359 ], [ %n.vec367, %vec.epilog.iter.check374 ], [ %n.vec379, %vec.epilog.middle.block385 ] ; 5 uses
  br i1 %lcmp.mod658.not, label %vec.epilog.scalar.ph375.prol.loopexit, label %vec.epilog.scalar.ph375.prol

vec.epilog.scalar.ph375.prol:                     ; preds = %vec.epilog.scalar.ph375.preheader
  %i.nn = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv272.ph
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !60
  %i.np = zext i8 %i.no to i16
  %indvars.iv.next273.prol = or disjoint i64 %indvars.iv272.ph, 1 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv.next273.prol
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !60
  %i.ns = zext i8 %i.nr to i16
  %i.nt = add nuw nsw i16 %i.np, 1
  %i.nu = add nuw nsw i16 %i.nt, %i.ns
  %i.nv = lshr i16 %i.nu, 1
  %i.nw = trunc nuw i16 %i.nv to i8
  %i.nx = getelementptr inbounds nuw i8, ptr %.5238, i64 %indvars.iv272.ph
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !60
  br label %vec.epilog.scalar.ph375.prol.loopexit

vec.epilog.scalar.ph375.prol.loopexit:            ; preds = %vec.epilog.scalar.ph375.prol, %vec.epilog.scalar.ph375.preheader
  %indvars.iv272.unr = phi i64 [ %indvars.iv272.ph, %vec.epilog.scalar.ph375.preheader ], [ %indvars.iv.next273.prol, %vec.epilog.scalar.ph375.prol ]
  %i.ny = icmp eq i64 %indvars.iv272.ph, %i.ju
  br i1 %i.ny, label %.loopexit648, label %vec.epilog.scalar.ph375

vec.epilog.scalar.ph375:                          ; preds = %vec.epilog.scalar.ph375.prol.loopexit, %vec.epilog.scalar.ph375
  %indvars.iv272 = phi i64 [ %indvars.iv.next273.1, %vec.epilog.scalar.ph375 ], [ %indvars.iv272.unr, %vec.epilog.scalar.ph375.prol.loopexit ] ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv272
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !60
  %i.ob = zext i8 %i.oa to i16
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv.next273
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !60
  %i.oe = zext i8 %i.od to i16
  %i.of = add nuw nsw i16 %i.ob, 1
  %i.og = add nuw nsw i16 %i.of, %i.oe
  %i.oh = lshr i16 %i.og, 1
  %i.oi = trunc nuw i16 %i.oh to i8
  %i.oj = getelementptr inbounds nuw i8, ptr %.5238, i64 %indvars.iv272
  store i8 %i.oi, ptr %i.oj, align 1, !tbaa !60
  %i.ok = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv.next273
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !60
  %i.om = zext i8 %i.ol to i16
  %indvars.iv.next273.1 = add nuw nsw i64 %indvars.iv272, 2 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv.next273.1
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !60
  %i.op = zext i8 %i.oo to i16
  %i.oq = add nuw nsw i16 %i.om, 1
  %i.or = add nuw nsw i16 %i.oq, %i.op
  %i.os = lshr i16 %i.or, 1
  %i.ot = trunc nuw i16 %i.os to i8
  %i.ou = getelementptr inbounds nuw i8, ptr %.5238, i64 %indvars.iv.next273
  store i8 %i.ot, ptr %i.ou, align 1, !tbaa !60
  %exitcond276.not.1 = icmp eq i64 %indvars.iv.next273.1, %wide.trip.count275
  br i1 %exitcond276.not.1, label %.loopexit648, label %vec.epilog.scalar.ph375, !llvm.loop !43

.loopexit648:                                     ; preds = %vec.epilog.scalar.ph375.prol.loopexit, %vec.epilog.scalar.ph375, %vec.epilog.middle.block385, %vector.ph366
  %i.ov = getelementptr inbounds i8, ptr %.5187237, i64 %i.jd
  %i.ow = getelementptr inbounds i8, ptr %.5238, i64 %i.jd
  %i.ox = add nuw nsw i32 %.5195236, 1            ; 2 uses
  %exitcond277.not = icmp eq i32 %i.ox, %5
  br i1 %exitcond277.not, label %.loopexit, label %vector.memcheck359, !llvm.loop !44

bb.g:                                             ; preds = %bb.e
  %i.oy = sext i32 %2 to i64                      ; 4 uses
  %wide.trip.count287 = zext nneg i32 %4 to i64   ; 17 uses
  %i.oz = add nsw i32 %5, -1
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = mul nsw i64 %i.jd, %i.pa                ; 2 uses
  %13 = add i64 %i.pb, %i.k
  %14 = add i64 %13, %i.i                         ; 2 uses
  %i.pc = getelementptr i8, ptr %0, i64 %14
  %i.pd = getelementptr i8, ptr %i.pc, i64 %i.g
  %i.pe = getelementptr i8, ptr %i.pd, i64 %wide.trip.count287
  %scevgep455 = getelementptr i8, ptr %i.pe, i64 1 ; 2 uses
  %i.pf = getelementptr i8, ptr %0, i64 %14
  %i.pg = getelementptr i8, ptr %i.pf, i64 %i.oy
  %i.ph = getelementptr i8, ptr %i.pg, i64 %i.g
  %i.pi = getelementptr i8, ptr %i.ph, i64 %wide.trip.count287
  %scevgep456 = getelementptr i8, ptr %i.pi, i64 1 ; 2 uses
  %i.pj = getelementptr i8, ptr %0, i64 %i.k
  %i.pk = getelementptr i8, ptr %i.pj, i64 %i.i
  %i.pl = getelementptr i8, ptr %i.pk, i64 %i.oy
  %scevgep457 = getelementptr i8, ptr %i.pl, i64 %i.g ; 2 uses
  %i.pm = getelementptr i8, ptr %1, i64 %i.pb
  %i.pn = getelementptr i8, ptr %i.pm, i64 %i.i
  %i.po = getelementptr i8, ptr %i.pn, i64 %i.n
  %scevgep458 = getelementptr i8, ptr %i.po, i64 %wide.trip.count287 ; 4 uses
  br i1 %.not207, label %iter.check479.preheader, label %iter.check424.preheader

iter.check424.preheader:                          ; preds = %bb.g
  %bound0405 = icmp ult ptr %i.p, %scevgep456
  %bound1406 = icmp ult ptr %scevgep457, %scevgep458
  %found.conflict407 = and i1 %bound0405, %bound1406
  %stride.check408 = icmp slt i32 %3, 0
  %i.pp = or i1 %found.conflict407, %stride.check408
  %bound0409 = icmp ult ptr %i.p, %scevgep455
  %bound1410 = icmp ult ptr %i.l, %scevgep458
  %found.conflict411 = and i1 %bound0409, %bound1410
  %conflict.rdx = or i1 %i.pp, %found.conflict411
  %min.iters.check413 = icmp samesign ult i32 %4, 16
  %n.vec415 = and i64 %wide.trip.count287, 16     ; 3 uses
  %cmp.n423 = icmp eq i64 %n.vec415, %wide.trip.count287
  %i.pq = and i64 %wide.trip.count287, 12
  %min.epilog.iters.check427 = icmp eq i64 %i.pq, 0
  %n.vec430 = and i64 %wide.trip.count287, 28     ; 3 uses
  %cmp.n440 = icmp eq i64 %n.vec430, %wide.trip.count287
  br label %iter.check424

iter.check479.preheader:                          ; preds = %bb.g
  %bound0460 = icmp ult ptr %i.p, %scevgep456
  %bound1461 = icmp ult ptr %scevgep457, %scevgep458
  %found.conflict462 = and i1 %bound0460, %bound1461
  %stride.check463 = icmp slt i32 %3, 0
  %i.pr = or i1 %found.conflict462, %stride.check463
  %bound0464 = icmp ult ptr %i.p, %scevgep455
  %bound1465 = icmp ult ptr %i.l, %scevgep458
  %found.conflict466 = and i1 %bound0464, %bound1465
  %conflict.rdx467 = or i1 %i.pr, %found.conflict466
  %min.iters.check469 = icmp samesign ult i32 %4, 16
  %n.vec471 = and i64 %wide.trip.count287, 16     ; 3 uses
  %cmp.n478 = icmp eq i64 %n.vec471, %wide.trip.count287
  %i.ps = and i64 %wide.trip.count287, 12
  %min.epilog.iters.check482 = icmp eq i64 %i.ps, 0
  %n.vec485 = and i64 %wide.trip.count287, 28     ; 3 uses
  %cmp.n494 = icmp eq i64 %n.vec485, %wide.trip.count287
  %xtraiter659 = and i64 %wide.trip.count287, 1
  %lcmp.mod660.not = icmp eq i64 %xtraiter659, 0
  %i.pt = add nsw i64 %wide.trip.count287, -1
  br label %iter.check479

iter.check424:                                    ; preds = %iter.check424.preheader, %.loopexit647
  %.6242 = phi ptr [ %i.sd, %.loopexit647 ], [ %i.p, %iter.check424.preheader ] ; 5 uses
  %.6188241 = phi ptr [ %i.sc, %.loopexit647 ], [ %i.l, %iter.check424.preheader ] ; 8 uses
  %.6196240 = phi i32 [ %i.se, %.loopexit647 ], [ 0, %iter.check424.preheader ]
  %invariant.gep = getelementptr i8, ptr %.6188241, i64 %i.oy ; 4 uses
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph426.preheader, label %vector.main.loop.iter.check412

vector.main.loop.iter.check412:                   ; preds = %iter.check424
  br i1 %min.iters.check413, label %vec.epilog.ph428, label %vector.ph414

vector.ph414:                                     ; preds = %vector.main.loop.iter.check412
  %wide.load417 = load <16 x i8>, ptr %.6242, align 1, !tbaa !60, !alias.scope !76, !noalias !77
  %i.pu = zext <16 x i8> %wide.load417 to <16 x i16>
  %wide.load418 = load <16 x i8>, ptr %.6188241, align 1, !tbaa !60, !alias.scope !78
  %i.pv = zext <16 x i8> %wide.load418 to <16 x i16>
  %i.pw = getelementptr inbounds nuw i8, ptr %.6188241, i64 1
  %wide.load419 = load <16 x i8>, ptr %i.pw, align 1, !tbaa !60, !alias.scope !78
  %i.px = zext <16 x i8> %wide.load419 to <16 x i16>
  %wide.load420 = load <16 x i8>, ptr %invariant.gep, align 1, !tbaa !60, !alias.scope !79
  %i.py = zext <16 x i8> %wide.load420 to <16 x i16>
  %i.pz = getelementptr i8, ptr %invariant.gep, i64 1
  %wide.load421 = load <16 x i8>, ptr %i.pz, align 1, !tbaa !60, !alias.scope !79
  %i.qa = zext <16 x i8> %wide.load421 to <16 x i16>
  %i.qb = add nuw nsw <16 x i16> %i.pv, splat (i16 2)
  %i.qc = add nuw nsw <16 x i16> %i.qb, %i.px
  %i.qd = add nuw nsw <16 x i16> %i.qc, %i.py
  %i.qe = add nuw nsw <16 x i16> %i.qd, %i.qa
  %i.qf = lshr <16 x i16> %i.qe, splat (i16 2)
  %i.qg = add nuw nsw <16 x i16> %i.pu, splat (i16 1)
  %i.qh = add nuw nsw <16 x i16> %i.qg, %i.qf
  %i.qi = lshr <16 x i16> %i.qh, splat (i16 1)
  %i.qj = trunc nuw <16 x i16> %i.qi to <16 x i8>
  store <16 x i8> %i.qj, ptr %.6242, align 1, !tbaa !60, !alias.scope !76, !noalias !77
  br i1 %cmp.n423, label %.loopexit647, label %vec.epilog.iter.check425

vec.epilog.iter.check425:                         ; preds = %vector.ph414
  br i1 %min.epilog.iters.check427, label %vec.epilog.scalar.ph426.preheader, label %vec.epilog.ph428, !prof !63

vec.epilog.ph428:                                 ; preds = %vector.main.loop.iter.check412, %vec.epilog.iter.check425
  %vec.epilog.resume.val429 = phi i64 [ %n.vec415, %vec.epilog.iter.check425 ], [ 0, %vector.main.loop.iter.check412 ]
  br label %vec.epilog.vector.body431

vec.epilog.vector.body431:                        ; preds = %vec.epilog.vector.body431, %vec.epilog.ph428
  %index432 = phi i64 [ %vec.epilog.resume.val429, %vec.epilog.ph428 ], [ %index.next438, %vec.epilog.vector.body431 ] ; 5 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.6242, i64 %index432 ; 2 uses
  %wide.load433 = load <4 x i8>, ptr %i.qk, align 1, !tbaa !60, !alias.scope !76, !noalias !77
  %i.ql = zext <4 x i8> %wide.load433 to <4 x i16>
  %i.qm = getelementptr inbounds nuw i8, ptr %.6188241, i64 %index432
  %wide.load434 = load <4 x i8>, ptr %i.qm, align 1, !tbaa !60, !alias.scope !78
  %i.qn = zext <4 x i8> %wide.load434 to <4 x i16>
  %i.qo = getelementptr inbounds nuw i8, ptr %.6188241, i64 %index432
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 1
  %wide.load435 = load <4 x i8>, ptr %i.qp, align 1, !tbaa !60, !alias.scope !78
  %i.qq = zext <4 x i8> %wide.load435 to <4 x i16>
  %i.qr = getelementptr i8, ptr %invariant.gep, i64 %index432 ; 2 uses
  %wide.load436 = load <4 x i8>, ptr %i.qr, align 1, !tbaa !60, !alias.scope !79
  %i.qs = zext <4 x i8> %wide.load436 to <4 x i16>
  %i.qt = getelementptr i8, ptr %i.qr, i64 1
  %wide.load437 = load <4 x i8>, ptr %i.qt, align 1, !tbaa !60, !alias.scope !79
  %i.qu = zext <4 x i8> %wide.load437 to <4 x i16>
  %i.qv = add nuw nsw <4 x i16> %i.qn, splat (i16 2)
  %i.qw = add nuw nsw <4 x i16> %i.qv, %i.qq
  %i.qx = add nuw nsw <4 x i16> %i.qw, %i.qs
  %i.qy = add nuw nsw <4 x i16> %i.qx, %i.qu
  %i.qz = lshr <4 x i16> %i.qy, splat (i16 2)
  %i.ra = add nuw nsw <4 x i16> %i.ql, splat (i16 1)
  %i.rb = add nuw nsw <4 x i16> %i.ra, %i.qz
  %i.rc = lshr <4 x i16> %i.rb, splat (i16 1)
  %i.rd = trunc nuw <4 x i16> %i.rc to <4 x i8>
  store <4 x i8> %i.rd, ptr %i.qk, align 1, !tbaa !60, !alias.scope !76, !noalias !77
  %index.next438 = add nuw i64 %index432, 4       ; 2 uses
  %i.re = icmp eq i64 %index.next438, %n.vec430
  br i1 %i.re, label %vec.epilog.middle.block439, label %vec.epilog.vector.body431, !llvm.loop !49

vec.epilog.middle.block439:                       ; preds = %vec.epilog.vector.body431
  br i1 %cmp.n440, label %.loopexit647, label %vec.epilog.scalar.ph426.preheader

vec.epilog.scalar.ph426.preheader:                ; preds = %iter.check424, %vec.epilog.iter.check425, %vec.epilog.middle.block439
  %indvars.iv278.ph = phi i64 [ 0, %iter.check424 ], [ %n.vec415, %vec.epilog.iter.check425 ], [ %n.vec430, %vec.epilog.middle.block439 ]
  br label %vec.epilog.scalar.ph426

vec.epilog.scalar.ph426:                          ; preds = %vec.epilog.scalar.ph426.preheader, %vec.epilog.scalar.ph426
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %vec.epilog.scalar.ph426 ], [ %indvars.iv278.ph, %vec.epilog.scalar.ph426.preheader ] ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.6242, i64 %indvars.iv278 ; 2 uses
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !60
  %i.rh = zext i8 %i.rg to i16
  %i.ri = getelementptr inbounds nuw i8, ptr %.6188241, i64 %indvars.iv278
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !60
  %i.rk = zext i8 %i.rj to i16
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.6188241, i64 %indvars.iv.next279
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !60
  %i.rn = zext i8 %i.rm to i16
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv278 ; 2 uses
  %i.ro = load i8, ptr %gep, align 1, !tbaa !60
  %i.rp = zext i8 %i.ro to i16
  %i.rq = getelementptr i8, ptr %gep, i64 1
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !60
  %i.rs = zext i8 %i.rr to i16
  %i.rt = add nuw nsw i16 %i.rk, 2
  %i.ru = add nuw nsw i16 %i.rt, %i.rn
  %i.rv = add nuw nsw i16 %i.ru, %i.rp
  %i.rw = add nuw nsw i16 %i.rv, %i.rs
  %i.rx = lshr i16 %i.rw, 2
  %i.ry = add nuw nsw i16 %i.rh, 1
  %i.rz = add nuw nsw i16 %i.ry, %i.rx
  %i.sa = lshr i16 %i.rz, 1
  %i.sb = trunc nuw i16 %i.sa to i8
  store i8 %i.sb, ptr %i.rf, align 1, !tbaa !60
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count287
  br i1 %exitcond282.not, label %.loopexit647, label %vec.epilog.scalar.ph426, !llvm.loop !50

.loopexit647:                                     ; preds = %vec.epilog.scalar.ph426, %vec.epilog.middle.block439, %vector.ph414
  %i.sc = getelementptr inbounds i8, ptr %.6188241, i64 %i.jd
  %i.sd = getelementptr inbounds i8, ptr %.6242, i64 %i.jd
  %i.se = add nuw nsw i32 %.6196240, 1            ; 2 uses
  %exitcond283.not = icmp eq i32 %i.se, %5
  br i1 %exitcond283.not, label %.loopexit, label %iter.check424, !llvm.loop !51

iter.check479:                                    ; preds = %iter.check479.preheader, %.loopexit646
  %.7246 = phi ptr [ %i.vm, %.loopexit646 ], [ %i.p, %iter.check479.preheader ] ; 6 uses
  %.7189245 = phi ptr [ %i.vl, %.loopexit646 ], [ %i.l, %iter.check479.preheader ] ; 12 uses
  %.7197244 = phi i32 [ %i.vn, %.loopexit646 ], [ 0, %iter.check479.preheader ]
  %invariant.gep328 = getelementptr i8, ptr %.7189245, i64 %i.oy ; 6 uses
  br i1 %conflict.rdx467, label %vec.epilog.scalar.ph481.preheader, label %vector.main.loop.iter.check468

vector.main.loop.iter.check468:                   ; preds = %iter.check479
  br i1 %min.iters.check469, label %vec.epilog.ph483, label %vector.ph470

vector.ph470:                                     ; preds = %vector.main.loop.iter.check468
  %wide.load473 = load <16 x i8>, ptr %.7189245, align 1, !tbaa !60, !alias.scope !80
  %i.sf = zext <16 x i8> %wide.load473 to <16 x i16>
  %i.sg = getelementptr inbounds nuw i8, ptr %.7189245, i64 1
  %wide.load474 = load <16 x i8>, ptr %i.sg, align 1, !tbaa !60, !alias.scope !80
  %i.sh = zext <16 x i8> %wide.load474 to <16 x i16>
  %wide.load475 = load <16 x i8>, ptr %invariant.gep328, align 1, !tbaa !60, !alias.scope !81
  %i.si = zext <16 x i8> %wide.load475 to <16 x i16>
  %i.sj = getelementptr i8, ptr %invariant.gep328, i64 1
  %wide.load476 = load <16 x i8>, ptr %i.sj, align 1, !tbaa !60, !alias.scope !81
  %i.sk = zext <16 x i8> %wide.load476 to <16 x i16>
  %i.sl = add nuw nsw <16 x i16> %i.sf, splat (i16 2)
  %i.sm = add nuw nsw <16 x i16> %i.sl, %i.sh
  %i.sn = add nuw nsw <16 x i16> %i.sm, %i.si
  %i.so = add nuw nsw <16 x i16> %i.sn, %i.sk
  %i.sp = lshr <16 x i16> %i.so, splat (i16 2)
  %i.sq = trunc nuw <16 x i16> %i.sp to <16 x i8>
  store <16 x i8> %i.sq, ptr %.7246, align 1, !tbaa !60, !alias.scope !82, !noalias !83
  br i1 %cmp.n478, label %.loopexit646, label %vec.epilog.iter.check480

vec.epilog.iter.check480:                         ; preds = %vector.ph470
  br i1 %min.epilog.iters.check482, label %vec.epilog.scalar.ph481.preheader, label %vec.epilog.ph483, !prof !63

vec.epilog.ph483:                                 ; preds = %vector.main.loop.iter.check468, %vec.epilog.iter.check480
  %vec.epilog.resume.val484 = phi i64 [ %n.vec471, %vec.epilog.iter.check480 ], [ 0, %vector.main.loop.iter.check468 ]
  br label %vec.epilog.vector.body486

vec.epilog.vector.body486:                        ; preds = %vec.epilog.vector.body486, %vec.epilog.ph483
  %index487 = phi i64 [ %vec.epilog.resume.val484, %vec.epilog.ph483 ], [ %index.next492, %vec.epilog.vector.body486 ] ; 5 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.7189245, i64 %index487
  %wide.load488 = load <4 x i8>, ptr %i.sr, align 1, !tbaa !60, !alias.scope !80
  %i.ss = zext <4 x i8> %wide.load488 to <4 x i16>
  %i.st = getelementptr inbounds nuw i8, ptr %.7189245, i64 %index487
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 1
  %wide.load489 = load <4 x i8>, ptr %i.su, align 1, !tbaa !60, !alias.scope !80
  %i.sv = zext <4 x i8> %wide.load489 to <4 x i16>
  %i.sw = getelementptr i8, ptr %invariant.gep328, i64 %index487 ; 2 uses
  %wide.load490 = load <4 x i8>, ptr %i.sw, align 1, !tbaa !60, !alias.scope !81
  %i.sx = zext <4 x i8> %wide.load490 to <4 x i16>
  %i.sy = getelementptr i8, ptr %i.sw, i64 1
  %wide.load491 = load <4 x i8>, ptr %i.sy, align 1, !tbaa !60, !alias.scope !81
  %i.sz = zext <4 x i8> %wide.load491 to <4 x i16>
  %i.ta = add nuw nsw <4 x i16> %i.ss, splat (i16 2)
  %i.tb = add nuw nsw <4 x i16> %i.ta, %i.sv
  %i.tc = add nuw nsw <4 x i16> %i.tb, %i.sx
  %i.td = add nuw nsw <4 x i16> %i.tc, %i.sz
  %i.te = lshr <4 x i16> %i.td, splat (i16 2)
  %i.tf = trunc nuw <4 x i16> %i.te to <4 x i8>
  %i.tg = getelementptr inbounds nuw i8, ptr %.7246, i64 %index487
  store <4 x i8> %i.tf, ptr %i.tg, align 1, !tbaa !60, !alias.scope !82, !noalias !83
  %index.next492 = add nuw i64 %index487, 4       ; 2 uses
  %i.th = icmp eq i64 %index.next492, %n.vec485
  br i1 %i.th, label %vec.epilog.middle.block493, label %vec.epilog.vector.body486, !llvm.loop !56

vec.epilog.middle.block493:                       ; preds = %vec.epilog.vector.body486
  br i1 %cmp.n494, label %.loopexit646, label %vec.epilog.scalar.ph481.preheader

vec.epilog.scalar.ph481.preheader:                ; preds = %iter.check479, %vec.epilog.iter.check480, %vec.epilog.middle.block493
  %indvars.iv284.ph = phi i64 [ 0, %iter.check479 ], [ %n.vec471, %vec.epilog.iter.check480 ], [ %n.vec485, %vec.epilog.middle.block493 ] ; 6 uses
  br i1 %lcmp.mod660.not, label %vec.epilog.scalar.ph481.prol.loopexit, label %vec.epilog.scalar.ph481.prol

vec.epilog.scalar.ph481.prol:                     ; preds = %vec.epilog.scalar.ph481.preheader
  %i.ti = getelementptr inbounds nuw i8, ptr %.7189245, i64 %indvars.iv284.ph
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !60
  %i.tk = zext i8 %i.tj to i16
  %indvars.iv.next285.prol = or disjoint i64 %indvars.iv284.ph, 1 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.7189245, i64 %indvars.iv.next285.prol
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !60
  %i.tn = zext i8 %i.tm to i16
  %gep329.prol = getelementptr i8, ptr %invariant.gep328, i64 %indvars.iv284.ph ; 2 uses
  %i.to = load i8, ptr %gep329.prol, align 1, !tbaa !60
  %i.tp = zext i8 %i.to to i16
  %i.tq = getelementptr i8, ptr %gep329.prol, i64 1
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !60
  %i.ts = zext i8 %i.tr to i16
  %i.tt = add nuw nsw i16 %i.tk, 2
  %i.tu = add nuw nsw i16 %i.tt, %i.tn
  %i.tv = add nuw nsw i16 %i.tu, %i.tp
  %i.tw = add nuw nsw i16 %i.tv, %i.ts
  %i.tx = lshr i16 %i.tw, 2
  %i.ty = trunc nuw i16 %i.tx to i8
  %i.tz = getelementptr inbounds nuw i8, ptr %.7246, i64 %indvars.iv284.ph
  store i8 %i.ty, ptr %i.tz, align 1, !tbaa !60
  br label %vec.epilog.scalar.ph481.prol.loopexit

vec.epilog.scalar.ph481.prol.loopexit:            ; preds = %vec.epilog.scalar.ph481.prol, %vec.epilog.scalar.ph481.preheader
  %indvars.iv284.unr = phi i64 [ %indvars.iv284.ph, %vec.epilog.scalar.ph481.preheader ], [ %indvars.iv.next285.prol, %vec.epilog.scalar.ph481.prol ]
  %i.ua = icmp eq i64 %indvars.iv284.ph, %i.pt
  br i1 %i.ua, label %.loopexit646, label %vec.epilog.scalar.ph481

vec.epilog.scalar.ph481:                          ; preds = %vec.epilog.scalar.ph481.prol.loopexit, %vec.epilog.scalar.ph481
  %indvars.iv284 = phi i64 [ %indvars.iv.next285.1, %vec.epilog.scalar.ph481 ], [ %indvars.iv284.unr, %vec.epilog.scalar.ph481.prol.loopexit ] ; 5 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.7189245, i64 %indvars.iv284
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !60
  %i.ud = zext i8 %i.uc to i16
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.7189245, i64 %indvars.iv.next285
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !60
  %i.ug = zext i8 %i.uf to i16
  %gep329 = getelementptr i8, ptr %invariant.gep328, i64 %indvars.iv284 ; 2 uses
  %i.uh = load i8, ptr %gep329, align 1, !tbaa !60
  %i.ui = zext i8 %i.uh to i16
  %i.uj = getelementptr i8, ptr %gep329, i64 1
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !60
  %i.ul = zext i8 %i.uk to i16
  %i.um = add nuw nsw i16 %i.ud, 2
  %i.un = add nuw nsw i16 %i.um, %i.ug
  %i.uo = add nuw nsw i16 %i.un, %i.ui
  %i.up = add nuw nsw i16 %i.uo, %i.ul
  %i.uq = lshr i16 %i.up, 2
  %i.ur = trunc nuw i16 %i.uq to i8
  %i.us = getelementptr inbounds nuw i8, ptr %.7246, i64 %indvars.iv284
  store i8 %i.ur, ptr %i.us, align 1, !tbaa !60
  %i.ut = getelementptr inbounds nuw i8, ptr %.7189245, i64 %indvars.iv.next285
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !60
  %i.uv = zext i8 %i.uu to i16
  %indvars.iv.next285.1 = add nuw nsw i64 %indvars.iv284, 2 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.7189245, i64 %indvars.iv.next285.1
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !60
  %i.uy = zext i8 %i.ux to i16
  %gep329.1 = getelementptr i8, ptr %invariant.gep328, i64 %indvars.iv.next285 ; 2 uses
  %i.uz = load i8, ptr %gep329.1, align 1, !tbaa !60
  %i.va = zext i8 %i.uz to i16
  %i.vb = getelementptr i8, ptr %gep329.1, i64 1
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !60
  %i.vd = zext i8 %i.vc to i16
  %i.ve = add nuw nsw i16 %i.uv, 2
  %i.vf = add nuw nsw i16 %i.ve, %i.uy
  %i.vg = add nuw nsw i16 %i.vf, %i.va
  %i.vh = add nuw nsw i16 %i.vg, %i.vd
  %i.vi = lshr i16 %i.vh, 2
  %i.vj = trunc nuw i16 %i.vi to i8
  %i.vk = getelementptr inbounds nuw i8, ptr %.7246, i64 %indvars.iv.next285
  store i8 %i.vj, ptr %i.vk, align 1, !tbaa !60
  %exitcond288.not.1 = icmp eq i64 %indvars.iv.next285.1, %wide.trip.count287
  br i1 %exitcond288.not.1, label %.loopexit646, label %vec.epilog.scalar.ph481, !llvm.loop !57

.loopexit646:                                     ; preds = %vec.epilog.scalar.ph481.prol.loopexit, %vec.epilog.scalar.ph481, %vec.epilog.middle.block493, %vector.ph470
  %i.vl = getelementptr inbounds i8, ptr %.7189245, i64 %i.jd
  %i.vm = getelementptr inbounds i8, ptr %.7246, i64 %i.jd
  %i.vn = add nuw nsw i32 %.7197244, 1            ; 2 uses
  %exitcond289.not = icmp eq i32 %i.vn, %5
  br i1 %exitcond289.not, label %.loopexit, label %iter.check479, !llvm.loop !58

.loopexit:                                        ; preds = %.loopexit649, %.loopexit648, %.loopexit647, %.loopexit646, %.loopexit645, %.loopexit644, %.loopexit643, %.loopexit642
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -3555925196601272381}
!9 = !{i64 -7898300186510092012}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, i1 false, !"LVerDomain"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !64, !65, !66}
!17 = distinct !{!17, !64, !65}
!18 = distinct !{!18, !64}
!19 = distinct !{!19, !64, !65, !66}
!20 = distinct !{!20, !67}
!21 = distinct !{!21, !64, !65}
!22 = distinct !{!22, !64}
!23 = distinct !{!23, i1 false, !"LVerDomain"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !64, !65, !66}
!28 = distinct !{!28, !64, !65}
!29 = distinct !{!29, !64}
!30 = distinct !{!30, !64, !65, !66}
!31 = distinct !{!31, !64, !65}
!32 = distinct !{!32, !64}
!33 = distinct !{!33, i1 false, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !64, !65, !66}
!37 = distinct !{!37, !64, !65}
!38 = distinct !{!38, !64}
!39 = distinct !{!39, i1 false, !"LVerDomain"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !64, !65, !66}
!43 = distinct !{!43, !64, !65}
!44 = distinct !{!44, !64}
!45 = distinct !{!45, i1 false, !"LVerDomain"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !45}
!49 = distinct !{!49, !64, !65, !66}
!50 = distinct !{!50, !64, !65}
!51 = distinct !{!51, !64}
!52 = distinct !{!52, i1 false, !"LVerDomain"}
!53 = distinct !{!53, !52}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !52}
!56 = distinct !{!56, !64, !65, !66}
!57 = distinct !{!57, !64, !65}
!58 = distinct !{!58, !64}
!59 = !{i64 -6273463238820432257}
!60 = !{!5, !5, i64 0}
!61 = !{!14}
!62 = !{!15}
!63 = !{!"branch_weights", i32 4, i32 12}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!24}
!69 = !{!26, !25}
!70 = !{!25}
!71 = !{!26}
!72 = !{!34}
!73 = !{!35}
!74 = !{!40}
!75 = !{!41}
!76 = !{!46}
!77 = !{!48, !47}
!78 = !{!47}
!79 = !{!48}
!80 = !{!53}
!81 = !{!54}
!82 = !{!55}
!83 = !{!54, !53}
end_hunk_1
