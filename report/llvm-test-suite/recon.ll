Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/recon?download=true
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@form_predictions:bb.a
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
  %11 = add nsw i32 %5, -1
  %12 = zext nneg i32 %11 to i64
  %13 = mul nsw i64 %i.t, %12                     ; 2 uses
  %14 = getelementptr i8, ptr %0, i64 %13
  %15 = getelementptr i8, ptr %14, i64 %i.k
  %i.u = getelementptr i8, ptr %15, i64 %i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %i.g
  %scevgep585 = getelementptr i8, ptr %i.v, i64 %wide.trip.count311
  %i.w = getelementptr i8, ptr %1, i64 %13
  %i.x = getelementptr i8, ptr %i.w, i64 %i.i
  %i.y = getelementptr i8, ptr %i.x, i64 %i.n
  %scevgep586 = getelementptr i8, ptr %i.y, i64 %wide.trip.count311
  %bound0588 = icmp ult ptr %i.p, %scevgep585
  %bound1589 = icmp ult ptr %i.l, %scevgep586
  %found.conflict590 = and i1 %bound0588, %bound1589
  %stride.check591 = icmp slt i32 %3, 0
  %16 = or i1 %found.conflict590, %stride.check591
  %min.iters.check593 = icmp samesign ult i32 %4, 16
  %n.vec595 = and i64 %wide.trip.count311, 16     ; 3 uses
  %cmp.n600 = icmp eq i64 %n.vec595, %wide.trip.count311
  %i.z = and i64 %wide.trip.count311, 12
  %min.epilog.iters.check604 = icmp eq i64 %i.z, 0
  %n.vec607 = and i64 %wide.trip.count311, 28     ; 3 uses
  %cmp.n614 = icmp eq i64 %n.vec607, %wide.trip.count311
  %xtraiter665 = and i64 %wide.trip.count311, 1
  %lcmp.mod666.not = icmp eq i64 %xtraiter665, 0
  %i.aa = add nsw i64 %wide.trip.count311, -1
  br label %vector.memcheck587

.preheader.preheader:                             ; preds = %bb.b
  %i.ab = add i64 %i.b, %i.n
  %i.ac = add i64 %i.a, %i.k
  %i.ad = add i64 %i.ac, %i.g
  %i.ae = sub i64 %i.ad, %i.ab
  %diff.check619 = icmp ugt i64 %i.ae, -16
  %min.iters.check621 = icmp samesign ult i32 %4, 16
  %n.vec623 = and i64 %wide.trip.count311, 16     ; 3 uses
  %cmp.n627 = icmp eq i64 %n.vec623, %wide.trip.count311
  %i.af = and i64 %wide.trip.count311, 12
  %min.epilog.iters.check631 = icmp eq i64 %i.af, 0
  %n.vec634 = and i64 %wide.trip.count311, 28     ; 3 uses
  %cmp.n640 = icmp eq i64 %n.vec634, %wide.trip.count311
  %xtraiter667 = and i64 %wide.trip.count311, 3   ; 2 uses
  %lcmp.mod668.not = icmp eq i64 %xtraiter667, 0
  br label %vector.memcheck618

vector.memcheck587:                               ; preds = %.loopexit643, %.preheader210.preheader
  %.0258 = phi ptr [ %i.cb, %.loopexit643 ], [ %i.p, %.preheader210.preheader ] ; 7 uses
  %.0182257 = phi ptr [ %i.ca, %.loopexit643 ], [ %i.l, %.preheader210.preheader ] ; 6 uses
  %.0190256 = phi i32 [ %i.cc, %.loopexit643 ], [ 0, %.preheader210.preheader ]
  br i1 %16, label %vec.epilog.scalar.ph603.preheader, label %vector.main.loop.iter.check592

vector.main.loop.iter.check592:                   ; preds = %vector.memcheck587
  br i1 %min.iters.check593, label %vec.epilog.ph605, label %vector.ph594

vector.ph594:                                     ; preds = %vector.main.loop.iter.check592
  %wide.load597 = load <16 x i8>, ptr %.0258, align 1, !tbaa !60, !alias.scope !61, !noalias !62
  %i.ag = zext <16 x i8> %wide.load597 to <16 x i16>
  %wide.load598 = load <16 x i8>, ptr %.0182257, align 1, !tbaa !60, !alias.scope !62
  %i.ah = zext <16 x i8> %wide.load598 to <16 x i16>
  %i.ai = add nuw nsw <16 x i16> %i.ag, splat (i16 1)
  %i.aj = add nuw nsw <16 x i16> %i.ai, %i.ah
  %i.ak = lshr <16 x i16> %i.aj, splat (i16 1)
  %i.al = trunc nuw <16 x i16> %i.ak to <16 x i8>
  store <16 x i8> %i.al, ptr %.0258, align 1, !tbaa !60, !alias.scope !61, !noalias !62
  br i1 %cmp.n600, label %.loopexit643, label %vec.epilog.iter.check602

vec.epilog.iter.check602:                         ; preds = %vector.ph594
  br i1 %min.epilog.iters.check604, label %vec.epilog.scalar.ph603.preheader, label %vec.epilog.ph605, !prof !63

vec.epilog.ph605:                                 ; preds = %vector.main.loop.iter.check592, %vec.epilog.iter.check602
  %vec.epilog.resume.val606 = phi i64 [ %n.vec595, %vec.epilog.iter.check602 ], [ 0, %vector.main.loop.iter.check592 ]
  br label %vec.epilog.vector.body608

vec.epilog.vector.body608:                        ; preds = %vec.epilog.vector.body608, %vec.epilog.ph605
  %index609 = phi i64 [ %vec.epilog.resume.val606, %vec.epilog.ph605 ], [ %index.next612, %vec.epilog.vector.body608 ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0258, i64 %index609 ; 2 uses
  %wide.load610 = load <4 x i8>, ptr %i.am, align 1, !tbaa !60, !alias.scope !61, !noalias !62
  %i.an = zext <4 x i8> %wide.load610 to <4 x i16>
  %i.ao = getelementptr inbounds nuw i8, ptr %.0182257, i64 %index609
  %wide.load611 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !60, !alias.scope !62
  %i.ap = zext <4 x i8> %wide.load611 to <4 x i16>
  %i.aq = add nuw nsw <4 x i16> %i.an, splat (i16 1)
  %i.ar = add nuw nsw <4 x i16> %i.aq, %i.ap
  %i.as = lshr <4 x i16> %i.ar, splat (i16 1)
  %i.at = trunc nuw <4 x i16> %i.as to <4 x i8>
  store <4 x i8> %i.at, ptr %i.am, align 1, !tbaa !60, !alias.scope !61, !noalias !62
  %index.next612 = add nuw i64 %index609, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next612, %n.vec607
  br i1 %i.au, label %vec.epilog.middle.block613, label %vec.epilog.vector.body608, !llvm.loop !16

vec.epilog.middle.block613:                       ; preds = %vec.epilog.vector.body608
  br i1 %cmp.n614, label %.loopexit643, label %vec.epilog.scalar.ph603.preheader

vec.epilog.scalar.ph603.preheader:                ; preds = %vector.memcheck587, %vec.epilog.iter.check602, %vec.epilog.middle.block613
  %indvars.iv302.ph = phi i64 [ 0, %vector.memcheck587 ], [ %n.vec595, %vec.epilog.iter.check602 ], [ %n.vec607, %vec.epilog.middle.block613 ] ; 5 uses
  br i1 %lcmp.mod666.not, label %vec.epilog.scalar.ph603.prol.loopexit, label %vec.epilog.scalar.ph603.prol

vec.epilog.scalar.ph603.prol:                     ; preds = %vec.epilog.scalar.ph603.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %.0258, i64 %indvars.iv302.ph ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !60
  %i.ax = zext i8 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %.0182257, i64 %indvars.iv302.ph
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !60
  %i.ba = zext i8 %i.az to i16
  %i.bb = add nuw nsw i16 %i.ax, 1
  %i.bc = add nuw nsw i16 %i.bb, %i.ba
  %i.bd = lshr i16 %i.bc, 1
  %i.be = trunc nuw i16 %i.bd to i8
  store i8 %i.be, ptr %i.av, align 1, !tbaa !60
  %indvars.iv.next303.prol = or disjoint i64 %indvars.iv302.ph, 1
  br label %vec.epilog.scalar.ph603.prol.loopexit

vec.epilog.scalar.ph603.prol.loopexit:            ; preds = %vec.epilog.scalar.ph603.prol, %vec.epilog.scalar.ph603.preheader
  %indvars.iv302.unr = phi i64 [ %indvars.iv302.ph, %vec.epilog.scalar.ph603.preheader ], [ %indvars.iv.next303.prol, %vec.epilog.scalar.ph603.prol ]
  %i.bf = icmp eq i64 %indvars.iv302.ph, %i.aa
  br i1 %i.bf, label %.loopexit643, label %vec.epilog.scalar.ph603

vec.epilog.scalar.ph603:                          ; preds = %vec.epilog.scalar.ph603.prol.loopexit, %vec.epilog.scalar.ph603
  %indvars.iv302 = phi i64 [ %indvars.iv.next303.1, %vec.epilog.scalar.ph603 ], [ %indvars.iv302.unr, %vec.epilog.scalar.ph603.prol.loopexit ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0258, i64 %indvars.iv302 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !60
  %i.bi = zext i8 %i.bh to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %.0182257, i64 %indvars.iv302
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !60
  %i.bl = zext i8 %i.bk to i16
  %i.bm = add nuw nsw i16 %i.bi, 1
  %i.bn = add nuw nsw i16 %i.bm, %i.bl
  %i.bo = lshr i16 %i.bn, 1
  %i.bp = trunc nuw i16 %i.bo to i8
  store i8 %i.bp, ptr %i.bg, align 1, !tbaa !60
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0258, i64 %indvars.iv.next303 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !60
  %i.bs = zext i8 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %.0182257, i64 %indvars.iv.next303
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !60
  %i.bv = zext i8 %i.bu to i16
  %i.bw = add nuw nsw i16 %i.bs, 1
  %i.bx = add nuw nsw i16 %i.bw, %i.bv
  %i.by = lshr i16 %i.bx, 1
  %i.bz = trunc nuw i16 %i.by to i8
  store i8 %i.bz, ptr %i.bq, align 1, !tbaa !60
  %indvars.iv.next303.1 = add nuw nsw i64 %indvars.iv302, 2 ; 2 uses
  %exitcond306.not.1 = icmp eq i64 %indvars.iv.next303.1, %wide.trip.count311
  br i1 %exitcond306.not.1, label %.loopexit643, label %vec.epilog.scalar.ph603, !llvm.loop !17

.loopexit643:                                     ; preds = %vec.epilog.scalar.ph603.prol.loopexit, %vec.epilog.scalar.ph603, %vec.epilog.middle.block613, %vector.ph594
  %i.ca = getelementptr inbounds i8, ptr %.0182257, i64 %i.t
  %i.cb = getelementptr inbounds i8, ptr %.0258, i64 %i.t
  %i.cc = add nuw nsw i32 %.0190256, 1            ; 2 uses
  %exitcond307.not = icmp eq i32 %i.cc, %5
  br i1 %exitcond307.not, label %.loopexit, label %vector.memcheck587, !llvm.loop !18

vector.memcheck618:                               ; preds = %.loopexit642, %.preheader.preheader
  %.1262 = phi ptr [ %i.cy, %.loopexit642 ], [ %i.p, %.preheader.preheader ] ; 8 uses
  %.1183261 = phi ptr [ %i.cx, %.loopexit642 ], [ %i.l, %.preheader.preheader ] ; 8 uses
  %.1191260 = phi i32 [ %i.cz, %.loopexit642 ], [ 0, %.preheader.preheader ]
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
  %i.cd = getelementptr inbounds nuw i8, ptr %.1183261, i64 %index636
  %wide.load637 = load <4 x i8>, ptr %i.cd, align 1, !tbaa !60
  %i.ce = getelementptr inbounds nuw i8, ptr %.1262, i64 %index636
  store <4 x i8> %wide.load637, ptr %i.ce, align 1, !tbaa !60
  %index.next638 = add nuw i64 %index636, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next638, %n.vec634
  br i1 %i.cf, label %vec.epilog.middle.block639, label %vec.epilog.vector.body635, !llvm.loop !19

vec.epilog.middle.block639:                       ; preds = %vec.epilog.vector.body635
  br i1 %cmp.n640, label %.loopexit642, label %vec.epilog.scalar.ph630.preheader

vec.epilog.scalar.ph630.preheader:                ; preds = %vector.memcheck618, %vec.epilog.iter.check629, %vec.epilog.middle.block639
  %indvars.iv308.ph = phi i64 [ 0, %vector.memcheck618 ], [ %n.vec623, %vec.epilog.iter.check629 ], [ %n.vec634, %vec.epilog.middle.block639 ] ; 3 uses
  br i1 %lcmp.mod668.not, label %vec.epilog.scalar.ph630.prol.loopexit, label %vec.epilog.scalar.ph630.prol

vec.epilog.scalar.ph630.prol:                     ; preds = %vec.epilog.scalar.ph630.preheader, %vec.epilog.scalar.ph630.prol
  %indvars.iv308.prol = phi i64 [ %indvars.iv.next309.prol, %vec.epilog.scalar.ph630.prol ], [ %indvars.iv308.ph, %vec.epilog.scalar.ph630.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph630.prol ], [ 0, %vec.epilog.scalar.ph630.preheader ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv308.prol
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv308.prol
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !60
  %indvars.iv.next309.prol = add nuw nsw i64 %indvars.iv308.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter667
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph630.prol.loopexit, label %vec.epilog.scalar.ph630.prol, !llvm.loop !20

vec.epilog.scalar.ph630.prol.loopexit:            ; preds = %vec.epilog.scalar.ph630.prol, %vec.epilog.scalar.ph630.preheader
  %indvars.iv308.unr = phi i64 [ %indvars.iv308.ph, %vec.epilog.scalar.ph630.preheader ], [ %indvars.iv.next309.prol, %vec.epilog.scalar.ph630.prol ]
  %i.cj = sub nsw i64 %indvars.iv308.ph, %wide.trip.count311
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %.loopexit642, label %vec.epilog.scalar.ph630

vec.epilog.scalar.ph630:                          ; preds = %vec.epilog.scalar.ph630.prol.loopexit, %vec.epilog.scalar.ph630
  %indvars.iv308 = phi i64 [ %indvars.iv.next309.3, %vec.epilog.scalar.ph630 ], [ %indvars.iv308.unr, %vec.epilog.scalar.ph630.prol.loopexit ] ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv308
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv308
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !60
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv.next309
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !60
  %i.cq = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv.next309
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !60
  %indvars.iv.next309.1 = add nuw nsw i64 %indvars.iv308, 2 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv.next309.1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !60
  %i.ct = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv.next309.1
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !60
  %indvars.iv.next309.2 = add nuw nsw i64 %indvars.iv308, 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv.next309.2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !60
  %i.cw = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv.next309.2
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !60
  %indvars.iv.next309.3 = add nuw nsw i64 %indvars.iv308, 4 ; 2 uses
  %exitcond312.not.3 = icmp eq i64 %indvars.iv.next309.3, %wide.trip.count311
  br i1 %exitcond312.not.3, label %.loopexit642, label %vec.epilog.scalar.ph630, !llvm.loop !21

.loopexit642:                                     ; preds = %vec.epilog.scalar.ph630.prol.loopexit, %vec.epilog.scalar.ph630, %vec.epilog.middle.block639, %vector.ph622
  %i.cx = getelementptr inbounds i8, ptr %.1183261, i64 %i.t
  %i.cy = getelementptr inbounds i8, ptr %.1262, i64 %i.t
  %i.cz = add nuw nsw i32 %.1191260, 1            ; 2 uses
  %exitcond313.not = icmp eq i32 %i.cz, %5
  br i1 %exitcond313.not, label %.loopexit, label %vector.memcheck618, !llvm.loop !22

bb.c:                                             ; preds = %bb.a
  %i.da = and i32 %8, 1
  %i.db = icmp eq i32 %i.da, 0                    ; 2 uses
  %or.cond3 = and i1 %i.db, %i.q
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not208 = icmp eq i32 %10, 0
  %i.dc = sext i32 %3 to i64                      ; 5 uses
  %i.dd = sext i32 %2 to i64                      ; 5 uses
  %wide.trip.count299 = zext nneg i32 %4 to i64   ; 19 uses
  br i1 %.not208, label %.preheader213.preheader, label %.preheader216.preheader

.preheader216.preheader:                          ; preds = %bb.d
  %17 = add nsw i32 %5, -1
  %18 = zext nneg i32 %17 to i64
  %19 = mul nsw i64 %i.dc, %18                    ; 2 uses
  %20 = add i64 %19, %i.k
  %i.de = add i64 %20, %i.i                       ; 2 uses
  %i.df = getelementptr i8, ptr %0, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.g
  %scevgep509 = getelementptr i8, ptr %i.dg, i64 %wide.trip.count299
  %i.dh = getelementptr i8, ptr %0, i64 %i.de
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.dd
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.g
  %scevgep510 = getelementptr i8, ptr %i.dj, i64 %wide.trip.count299
  %i.dk = getelementptr i8, ptr %0, i64 %i.k
  %21 = getelementptr i8, ptr %i.dk, i64 %i.i
  %i.dl = getelementptr i8, ptr %21, i64 %i.dd
  %scevgep511 = getelementptr i8, ptr %i.dl, i64 %i.g
  %i.dm = getelementptr i8, ptr %1, i64 %19
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.i
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.n
  %scevgep512 = getelementptr i8, ptr %i.do, i64 %wide.trip.count299 ; 2 uses
  %bound0514 = icmp ult ptr %i.p, %scevgep510
  %bound1515 = icmp ult ptr %scevgep511, %scevgep512
  %found.conflict516 = and i1 %bound0514, %bound1515
  %stride.check517 = icmp slt i32 %3, 0
  %22 = or i1 %found.conflict516, %stride.check517
  %bound0518 = icmp ult ptr %i.p, %scevgep509
  %bound1519 = icmp ult ptr %i.l, %scevgep512
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx521 = or i1 %22, %found.conflict520
  %min.iters.check523 = icmp samesign ult i32 %4, 16
  %n.vec525 = and i64 %wide.trip.count299, 16     ; 3 uses
  %cmp.n531 = icmp eq i64 %n.vec525, %wide.trip.count299
  %i.dp = and i64 %wide.trip.count299, 12
  %min.epilog.iters.check535 = icmp eq i64 %i.dp, 0
  %n.vec538 = and i64 %wide.trip.count299, 28     ; 3 uses
  %cmp.n546 = icmp eq i64 %n.vec538, %wide.trip.count299
  %xtraiter661 = and i64 %wide.trip.count299, 1
  %lcmp.mod662.not = icmp eq i64 %xtraiter661, 0
  %i.dq = add nsw i64 %wide.trip.count299, -1
  br label %iter.check532

.preheader213.preheader:                          ; preds = %bb.d
  %i.dr = add i64 %i.b, %i.n                      ; 2 uses
  %i.ds = add i64 %i.a, %i.k                      ; 2 uses
  %i.dt = add i64 %i.ds, %i.g
  %i.du = add i64 %i.ds, %i.dd
  %i.dv = add i64 %i.du, %i.g
  %i.dw = sub i64 %i.dv, %i.dr
  %diff.check = icmp ugt i64 %i.dw, -16
  %i.dx = sub i64 %i.dt, %i.dr
  %diff.check552 = icmp ugt i64 %i.dx, -16
  %conflict.rdx553 = or i1 %diff.check, %diff.check552
  %min.iters.check555 = icmp samesign ult i32 %4, 16
  %n.vec557 = and i64 %wide.trip.count299, 16     ; 3 uses
  %cmp.n562 = icmp eq i64 %n.vec557, %wide.trip.count299
  %i.dy = and i64 %wide.trip.count299, 12
  %min.epilog.iters.check566 = icmp eq i64 %i.dy, 0
  %n.vec569 = and i64 %wide.trip.count299, 28     ; 3 uses
  %cmp.n576 = icmp eq i64 %n.vec569, %wide.trip.count299
  %xtraiter663 = and i64 %wide.trip.count299, 1
  %lcmp.mod664.not = icmp eq i64 %xtraiter663, 0
  %i.dz = add nsw i64 %wide.trip.count299, -1
  br label %iter.check563

iter.check532:                                    ; preds = %.preheader216.preheader, %.loopexit645
  %.2250 = phi ptr [ %i.gt, %.loopexit645 ], [ %i.p, %.preheader216.preheader ] ; 7 uses
  %.2184249 = phi ptr [ %i.gs, %.loopexit645 ], [ %i.l, %.preheader216.preheader ] ; 7 uses
  %.2192248 = phi i32 [ %i.gu, %.loopexit645 ], [ 0, %.preheader216.preheader ]
  %invariant.gep330 = getelementptr i8, ptr %.2184249, i64 %i.dd ; 5 uses
  br i1 %conflict.rdx521, label %vec.epilog.scalar.ph534.preheader, label %vector.main.loop.iter.check522

vector.main.loop.iter.check522:                   ; preds = %iter.check532
  br i1 %min.iters.check523, label %vec.epilog.ph536, label %vector.ph524

vector.ph524:                                     ; preds = %vector.main.loop.iter.check522
  %wide.load527 = load <16 x i8>, ptr %.2250, align 1, !tbaa !60, !alias.scope !68, !noalias !69
  %i.ea = zext <16 x i8> %wide.load527 to <16 x i16>
  %wide.load528 = load <16 x i8>, ptr %.2184249, align 1, !tbaa !60, !alias.scope !70
  %i.eb = zext <16 x i8> %wide.load528 to <16 x i16>
  %wide.load529 = load <16 x i8>, ptr %invariant.gep330, align 1, !tbaa !60, !alias.scope !71
  %i.ec = zext <16 x i8> %wide.load529 to <16 x i16>
  %i.ed = add nuw nsw <16 x i16> %i.eb, splat (i16 1)
  %i.ee = add nuw nsw <16 x i16> %i.ed, %i.ec
  %i.ef = lshr <16 x i16> %i.ee, splat (i16 1)
  %i.eg = add nuw nsw <16 x i16> %i.ea, splat (i16 1)
  %i.eh = add nuw nsw <16 x i16> %i.eg, %i.ef
  %i.ei = lshr <16 x i16> %i.eh, splat (i16 1)
  %i.ej = trunc nuw <16 x i16> %i.ei to <16 x i8>
  store <16 x i8> %i.ej, ptr %.2250, align 1, !tbaa !60, !alias.scope !68, !noalias !69
  br i1 %cmp.n531, label %.loopexit645, label %vec.epilog.iter.check533

vec.epilog.iter.check533:                         ; preds = %vector.ph524
  br i1 %min.epilog.iters.check535, label %vec.epilog.scalar.ph534.preheader, label %vec.epilog.ph536, !prof !63

vec.epilog.ph536:                                 ; preds = %vector.main.loop.iter.check522, %vec.epilog.iter.check533
  %vec.epilog.resume.val537 = phi i64 [ %n.vec525, %vec.epilog.iter.check533 ], [ 0, %vector.main.loop.iter.check522 ]
  br label %vec.epilog.vector.body539

vec.epilog.vector.body539:                        ; preds = %vec.epilog.vector.body539, %vec.epilog.ph536
  %index540 = phi i64 [ %vec.epilog.resume.val537, %vec.epilog.ph536 ], [ %index.next544, %vec.epilog.vector.body539 ] ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.2250, i64 %index540 ; 2 uses
  %wide.load541 = load <4 x i8>, ptr %i.ek, align 1, !tbaa !60, !alias.scope !68, !noalias !69
  %i.el = zext <4 x i8> %wide.load541 to <4 x i16>
  %i.em = getelementptr inbounds nuw i8, ptr %.2184249, i64 %index540
  %wide.load542 = load <4 x i8>, ptr %i.em, align 1, !tbaa !60, !alias.scope !70
  %i.en = zext <4 x i8> %wide.load542 to <4 x i16>
  %i.eo = getelementptr i8, ptr %invariant.gep330, i64 %index540
  %wide.load543 = load <4 x i8>, ptr %i.eo, align 1, !tbaa !60, !alias.scope !71
  %i.ep = zext <4 x i8> %wide.load543 to <4 x i16>
  %i.eq = add nuw nsw <4 x i16> %i.en, splat (i16 1)
  %i.er = add nuw nsw <4 x i16> %i.eq, %i.ep
  %i.es = lshr <4 x i16> %i.er, splat (i16 1)
  %i.et = add nuw nsw <4 x i16> %i.el, splat (i16 1)
  %i.eu = add nuw nsw <4 x i16> %i.et, %i.es
  %i.ev = lshr <4 x i16> %i.eu, splat (i16 1)
  %i.ew = trunc nuw <4 x i16> %i.ev to <4 x i8>
  store <4 x i8> %i.ew, ptr %i.ek, align 1, !tbaa !60, !alias.scope !68, !noalias !69
  %index.next544 = add nuw i64 %index540, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next544, %n.vec538
  br i1 %i.ex, label %vec.epilog.middle.block545, label %vec.epilog.vector.body539, !llvm.loop !27

vec.epilog.middle.block545:                       ; preds = %vec.epilog.vector.body539
  br i1 %cmp.n546, label %.loopexit645, label %vec.epilog.scalar.ph534.preheader

vec.epilog.scalar.ph534.preheader:                ; preds = %iter.check532, %vec.epilog.iter.check533, %vec.epilog.middle.block545
  %indvars.iv290.ph = phi i64 [ 0, %iter.check532 ], [ %n.vec525, %vec.epilog.iter.check533 ], [ %n.vec538, %vec.epilog.middle.block545 ] ; 6 uses
  br i1 %lcmp.mod662.not, label %vec.epilog.scalar.ph534.prol.loopexit, label %vec.epilog.scalar.ph534.prol

vec.epilog.scalar.ph534.prol:                     ; preds = %vec.epilog.scalar.ph534.preheader
  %i.ey = getelementptr inbounds nuw i8, ptr %.2250, i64 %indvars.iv290.ph ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !60
  %i.fa = zext i8 %i.ez to i16
  %i.fb = getelementptr inbounds nuw i8, ptr %.2184249, i64 %indvars.iv290.ph
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !60
  %i.fd = zext i8 %i.fc to i16
  %gep331.prol = getelementptr i8, ptr %invariant.gep330, i64 %indvars.iv290.ph
  %i.fe = load i8, ptr %gep331.prol, align 1, !tbaa !60
  %i.ff = zext i8 %i.fe to i16
  %i.fg = add nuw nsw i16 %i.fd, 1
  %i.fh = add nuw nsw i16 %i.fg, %i.ff
  %i.fi = lshr i16 %i.fh, 1
  %i.fj = add nuw nsw i16 %i.fa, 1
  %i.fk = add nuw nsw i16 %i.fj, %i.fi
  %i.fl = lshr i16 %i.fk, 1
  %i.fm = trunc nuw i16 %i.fl to i8
  store i8 %i.fm, ptr %i.ey, align 1, !tbaa !60
  %indvars.iv.next291.prol = or disjoint i64 %indvars.iv290.ph, 1
  br label %vec.epilog.scalar.ph534.prol.loopexit

vec.epilog.scalar.ph534.prol.loopexit:            ; preds = %vec.epilog.scalar.ph534.prol, %vec.epilog.scalar.ph534.preheader
  %indvars.iv290.unr = phi i64 [ %indvars.iv290.ph, %vec.epilog.scalar.ph534.preheader ], [ %indvars.iv.next291.prol, %vec.epilog.scalar.ph534.prol ]
  %i.fn = icmp eq i64 %indvars.iv290.ph, %i.dq
  br i1 %i.fn, label %.loopexit645, label %vec.epilog.scalar.ph534

vec.epilog.scalar.ph534:                          ; preds = %vec.epilog.scalar.ph534.prol.loopexit, %vec.epilog.scalar.ph534
  %indvars.iv290 = phi i64 [ %indvars.iv.next291.1, %vec.epilog.scalar.ph534 ], [ %indvars.iv290.unr, %vec.epilog.scalar.ph534.prol.loopexit ] ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.2250, i64 %indvars.iv290 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !60
  %i.fq = zext i8 %i.fp to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %.2184249, i64 %indvars.iv290
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !60
  %i.ft = zext i8 %i.fs to i16
  %gep331 = getelementptr i8, ptr %invariant.gep330, i64 %indvars.iv290
  %i.fu = load i8, ptr %gep331, align 1, !tbaa !60
  %i.fv = zext i8 %i.fu to i16
  %i.fw = add nuw nsw i16 %i.ft, 1
  %i.fx = add nuw nsw i16 %i.fw, %i.fv
  %i.fy = lshr i16 %i.fx, 1
  %i.fz = add nuw nsw i16 %i.fq, 1
  %i.ga = add nuw nsw i16 %i.fz, %i.fy
  %i.gb = lshr i16 %i.ga, 1
  %i.gc = trunc nuw i16 %i.gb to i8
  store i8 %i.gc, ptr %i.fo, align 1, !tbaa !60
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.2250, i64 %indvars.iv.next291 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !60
  %i.gf = zext i8 %i.ge to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %.2184249, i64 %indvars.iv.next291
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !60
  %i.gi = zext i8 %i.gh to i16
  %gep331.1 = getelementptr i8, ptr %invariant.gep330, i64 %indvars.iv.next291
  %i.gj = load i8, ptr %gep331.1, align 1, !tbaa !60
  %i.gk = zext i8 %i.gj to i16
  %i.gl = add nuw nsw i16 %i.gi, 1
  %i.gm = add nuw nsw i16 %i.gl, %i.gk
  %i.gn = lshr i16 %i.gm, 1
  %i.go = add nuw nsw i16 %i.gf, 1
  %i.gp = add nuw nsw i16 %i.go, %i.gn
  %i.gq = lshr i16 %i.gp, 1
  %i.gr = trunc nuw i16 %i.gq to i8
  store i8 %i.gr, ptr %i.gd, align 1, !tbaa !60
  %indvars.iv.next291.1 = add nuw nsw i64 %indvars.iv290, 2 ; 2 uses
  %exitcond294.not.1 = icmp eq i64 %indvars.iv.next291.1, %wide.trip.count299
  br i1 %exitcond294.not.1, label %.loopexit645, label %vec.epilog.scalar.ph534, !llvm.loop !28

.loopexit645:                                     ; preds = %vec.epilog.scalar.ph534.prol.loopexit, %vec.epilog.scalar.ph534, %vec.epilog.middle.block545, %vector.ph524
  %i.gs = getelementptr inbounds i8, ptr %.2184249, i64 %i.dc
  %i.gt = getelementptr inbounds i8, ptr %.2250, i64 %i.dc
  %i.gu = add nuw nsw i32 %.2192248, 1            ; 2 uses
  %exitcond295.not = icmp eq i32 %i.gu, %5
  br i1 %exitcond295.not, label %.loopexit, label %iter.check532, !llvm.loop !29

iter.check563:                                    ; preds = %.preheader213.preheader, %.loopexit644
  %.3254 = phi ptr [ %i.ir, %.loopexit644 ], [ %i.p, %.preheader213.preheader ] ; 6 uses
  %.3185253 = phi ptr [ %i.iq, %.loopexit644 ], [ %i.l, %.preheader213.preheader ] ; 7 uses
  %.3193252 = phi i32 [ %i.is, %.loopexit644 ], [ 0, %.preheader213.preheader ]
  %invariant.gep332 = getelementptr i8, ptr %.3185253, i64 %i.dd ; 5 uses
  br i1 %conflict.rdx553, label %vec.epilog.scalar.ph565.preheader, label %vector.main.loop.iter.check554

vector.main.loop.iter.check554:                   ; preds = %iter.check563
  br i1 %min.iters.check555, label %vec.epilog.ph567, label %vector.ph556

vector.ph556:                                     ; preds = %vector.main.loop.iter.check554
  %wide.load559 = load <16 x i8>, ptr %.3185253, align 1, !tbaa !60
  %i.gv = zext <16 x i8> %wide.load559 to <16 x i16>
  %wide.load560 = load <16 x i8>, ptr %invariant.gep332, align 1, !tbaa !60
  %i.gw = zext <16 x i8> %wide.load560 to <16 x i16>
  %i.gx = add nuw nsw <16 x i16> %i.gv, splat (i16 1)
  %i.gy = add nuw nsw <16 x i16> %i.gx, %i.gw
  %i.gz = lshr <16 x i16> %i.gy, splat (i16 1)
  %i.ha = trunc nuw <16 x i16> %i.gz to <16 x i8>
  store <16 x i8> %i.ha, ptr %.3254, align 1, !tbaa !60
  br i1 %cmp.n562, label %.loopexit644, label %vec.epilog.iter.check564

vec.epilog.iter.check564:                         ; preds = %vector.ph556
  br i1 %min.epilog.iters.check566, label %vec.epilog.scalar.ph565.preheader, label %vec.epilog.ph567, !prof !63

vec.epilog.ph567:                                 ; preds = %vector.main.loop.iter.check554, %vec.epilog.iter.check564
  %vec.epilog.resume.val568 = phi i64 [ %n.vec557, %vec.epilog.iter.check564 ], [ 0, %vector.main.loop.iter.check554 ]
  br label %vec.epilog.vector.body570

vec.epilog.vector.body570:                        ; preds = %vec.epilog.vector.body570, %vec.epilog.ph567
  %index571 = phi i64 [ %vec.epilog.resume.val568, %vec.epilog.ph567 ], [ %index.next574, %vec.epilog.vector.body570 ] ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.3185253, i64 %index571
  %wide.load572 = load <4 x i8>, ptr %i.hb, align 1, !tbaa !60
  %i.hc = zext <4 x i8> %wide.load572 to <4 x i16>
  %i.hd = getelementptr i8, ptr %invariant.gep332, i64 %index571
  %wide.load573 = load <4 x i8>, ptr %i.hd, align 1, !tbaa !60
  %i.he = zext <4 x i8> %wide.load573 to <4 x i16>
  %i.hf = add nuw nsw <4 x i16> %i.hc, splat (i16 1)
  %i.hg = add nuw nsw <4 x i16> %i.hf, %i.he
  %i.hh = lshr <4 x i16> %i.hg, splat (i16 1)
  %i.hi = trunc nuw <4 x i16> %i.hh to <4 x i8>
  %i.hj = getelementptr inbounds nuw i8, ptr %.3254, i64 %index571
  store <4 x i8> %i.hi, ptr %i.hj, align 1, !tbaa !60
  %index.next574 = add nuw i64 %index571, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next574, %n.vec569
  br i1 %i.hk, label %vec.epilog.middle.block575, label %vec.epilog.vector.body570, !llvm.loop !30

vec.epilog.middle.block575:                       ; preds = %vec.epilog.vector.body570
  br i1 %cmp.n576, label %.loopexit644, label %vec.epilog.scalar.ph565.preheader

vec.epilog.scalar.ph565.preheader:                ; preds = %iter.check563, %vec.epilog.iter.check564, %vec.epilog.middle.block575
  %indvars.iv296.ph = phi i64 [ 0, %iter.check563 ], [ %n.vec557, %vec.epilog.iter.check564 ], [ %n.vec569, %vec.epilog.middle.block575 ] ; 6 uses
  br i1 %lcmp.mod664.not, label %vec.epilog.scalar.ph565.prol.loopexit, label %vec.epilog.scalar.ph565.prol

vec.epilog.scalar.ph565.prol:                     ; preds = %vec.epilog.scalar.ph565.preheader
  %i.hl = getelementptr inbounds nuw i8, ptr %.3185253, i64 %indvars.iv296.ph
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !60
  %i.hn = zext i8 %i.hm to i16
  %gep333.prol = getelementptr i8, ptr %invariant.gep332, i64 %indvars.iv296.ph
  %i.ho = load i8, ptr %gep333.prol, align 1, !tbaa !60
  %i.hp = zext i8 %i.ho to i16
  %i.hq = add nuw nsw i16 %i.hn, 1
  %i.hr = add nuw nsw i16 %i.hq, %i.hp
  %i.hs = lshr i16 %i.hr, 1
  %i.ht = trunc nuw i16 %i.hs to i8
  %i.hu = getelementptr inbounds nuw i8, ptr %.3254, i64 %indvars.iv296.ph
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !60
  %indvars.iv.next297.prol = or disjoint i64 %indvars.iv296.ph, 1
  br label %vec.epilog.scalar.ph565.prol.loopexit

vec.epilog.scalar.ph565.prol.loopexit:            ; preds = %vec.epilog.scalar.ph565.prol, %vec.epilog.scalar.ph565.preheader
  %indvars.iv296.unr = phi i64 [ %indvars.iv296.ph, %vec.epilog.scalar.ph565.preheader ], [ %indvars.iv.next297.prol, %vec.epilog.scalar.ph565.prol ]
  %i.hv = icmp eq i64 %indvars.iv296.ph, %i.dz
  br i1 %i.hv, label %.loopexit644, label %vec.epilog.scalar.ph565

vec.epilog.scalar.ph565:                          ; preds = %vec.epilog.scalar.ph565.prol.loopexit, %vec.epilog.scalar.ph565
  %indvars.iv296 = phi i64 [ %indvars.iv.next297.1, %vec.epilog.scalar.ph565 ], [ %indvars.iv296.unr, %vec.epilog.scalar.ph565.prol.loopexit ] ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.3185253, i64 %indvars.iv296
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !60
  %i.hy = zext i8 %i.hx to i16
  %gep333 = getelementptr i8, ptr %invariant.gep332, i64 %indvars.iv296
  %i.hz = load i8, ptr %gep333, align 1, !tbaa !60
  %i.ia = zext i8 %i.hz to i16
  %i.ib = add nuw nsw i16 %i.hy, 1
  %i.ic = add nuw nsw i16 %i.ib, %i.ia
  %i.id = lshr i16 %i.ic, 1
  %i.ie = trunc nuw i16 %i.id to i8
  %i.if = getelementptr inbounds nuw i8, ptr %.3254, i64 %indvars.iv296
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !60
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.3185253, i64 %indvars.iv.next297
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !60
  %i.ii = zext i8 %i.ih to i16
  %gep333.1 = getelementptr i8, ptr %invariant.gep332, i64 %indvars.iv.next297
  %i.ij = load i8, ptr %gep333.1, align 1, !tbaa !60
  %i.ik = zext i8 %i.ij to i16
  %i.il = add nuw nsw i16 %i.ii, 1
  %i.im = add nuw nsw i16 %i.il, %i.ik
  %i.in = lshr i16 %i.im, 1
  %i.io = trunc nuw i16 %i.in to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %.3254, i64 %indvars.iv.next297
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !60
  %indvars.iv.next297.1 = add nuw nsw i64 %indvars.iv296, 2 ; 2 uses
  %exitcond300.not.1 = icmp eq i64 %indvars.iv.next297.1, %wide.trip.count299
  br i1 %exitcond300.not.1, label %.loopexit644, label %vec.epilog.scalar.ph565, !llvm.loop !31

.loopexit644:                                     ; preds = %vec.epilog.scalar.ph565.prol.loopexit, %vec.epilog.scalar.ph565, %vec.epilog.middle.block575, %vector.ph556
  %i.iq = getelementptr inbounds i8, ptr %.3185253, i64 %i.dc
  %i.ir = getelementptr inbounds i8, ptr %.3254, i64 %i.dc
  %i.is = add nuw nsw i32 %.3193252, 1            ; 2 uses
  %exitcond301.not = icmp eq i32 %i.is, %5
  br i1 %exitcond301.not, label %.loopexit, label %iter.check563, !llvm.loop !32

bb.e:                                             ; preds = %bb.c
  %or.cond5 = or i1 %i.db, %i.q
  %.not207 = icmp eq i32 %10, 0                   ; 2 uses
  %i.it = sext i32 %3 to i64                      ; 10 uses
  br i1 %or.cond5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %wide.trip.count275 = zext nneg i32 %4 to i64   ; 18 uses
  %23 = add nsw i32 %5, -1
  %24 = zext nneg i32 %23 to i64
  %25 = mul nsw i64 %i.it, %24                    ; 2 uses
  %26 = getelementptr i8, ptr %0, i64 %25
  %27 = getelementptr i8, ptr %26, i64 %i.k
  %i.iu = getelementptr i8, ptr %27, i64 %i.i
  %i.iv = getelementptr i8, ptr %i.iu, i64 %i.g
  %i.iw = getelementptr i8, ptr %i.iv, i64 %wide.trip.count275
  %scevgep357.a = getelementptr i8, ptr %i.iw, i64 1 ; 2 uses
  %i.ix = getelementptr i8, ptr %1, i64 %25
  %i.iy = getelementptr i8, ptr %i.ix, i64 %i.i
  %i.iz = getelementptr i8, ptr %i.iy, i64 %i.n
  %scevgep358 = getelementptr i8, ptr %i.iz, i64 %wide.trip.count275 ; 2 uses
  br i1 %.not207, label %vector.memcheck359.preheader, label %vector.memcheck.preheader

vector.memcheck.preheader:                        ; preds = %bb.f
  %bound0 = icmp ult ptr %i.p, %scevgep357.a
  %bound1 = icmp ult ptr %i.l, %scevgep358
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %3, 0
  %28 = or i1 %found.conflict, %stride.check
  %min.iters.check = icmp samesign ult i32 %4, 16
  %n.vec = and i64 %wide.trip.count275, 16        ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count275
  %i.ja = and i64 %wide.trip.count275, 12
  %min.epilog.iters.check = icmp eq i64 %i.ja, 0
  %n.vec345 = and i64 %wide.trip.count275, 28     ; 3 uses
  %cmp.n349 = icmp eq i64 %n.vec345, %wide.trip.count275
  %xtraiter = and i64 %wide.trip.count275, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.jb = add nsw i64 %wide.trip.count275, -1
  br label %vector.memcheck

vector.memcheck359.preheader:                     ; preds = %bb.f
  %bound0360 = icmp ult ptr %i.p, %scevgep357.a
  %bound1361 = icmp ult ptr %i.l, %scevgep358
  %found.conflict362 = and i1 %bound0360, %bound1361
  %stride.check363 = icmp slt i32 %3, 0
  %29 = or i1 %found.conflict362, %stride.check363
  %min.iters.check365 = icmp samesign ult i32 %4, 16
  %n.vec367 = and i64 %wide.trip.count275, 16     ; 3 uses
  %cmp.n372 = icmp eq i64 %n.vec367, %wide.trip.count275
  %i.jc = and i64 %wide.trip.count275, 12
  %min.epilog.iters.check376 = icmp eq i64 %i.jc, 0
  %n.vec379 = and i64 %wide.trip.count275, 28     ; 3 uses
  %cmp.n386 = icmp eq i64 %n.vec379, %wide.trip.count275
  %xtraiter657 = and i64 %wide.trip.count275, 1
  %lcmp.mod658.not = icmp eq i64 %xtraiter657, 0
  %i.jd = add nsw i64 %wide.trip.count275, -1
  br label %vector.memcheck359

vector.memcheck:                                  ; preds = %vector.memcheck.preheader, %.loopexit649
  %.4234 = phi ptr [ %i.mc, %.loopexit649 ], [ %i.p, %vector.memcheck.preheader ] ; 7 uses
  %.4186233 = phi ptr [ %i.mb, %.loopexit649 ], [ %i.l, %vector.memcheck.preheader ] ; 11 uses
  %.4194232 = phi i32 [ %i.md, %.loopexit649 ], [ 0, %vector.memcheck.preheader ]
  br i1 %28, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %wide.load = load <16 x i8>, ptr %.4234, align 1, !tbaa !60, !alias.scope !72, !noalias !73
  %i.je = zext <16 x i8> %wide.load to <16 x i16>
  %wide.load343 = load <16 x i8>, ptr %.4186233, align 1, !tbaa !60, !alias.scope !73
  %i.jf = zext <16 x i8> %wide.load343 to <16 x i16>
  %i.jg = getelementptr inbounds nuw i8, ptr %.4186233, i64 1
  %wide.load344 = load <16 x i8>, ptr %i.jg, align 1, !tbaa !60, !alias.scope !73
  %i.jh = zext <16 x i8> %wide.load344 to <16 x i16>
  %i.ji = add nuw nsw <16 x i16> %i.jf, splat (i16 1)
  %i.jj = add nuw nsw <16 x i16> %i.ji, %i.jh
  %i.jk = lshr <16 x i16> %i.jj, splat (i16 1)
  %i.jl = add nuw nsw <16 x i16> %i.je, splat (i16 1)
  %i.jm = add nuw nsw <16 x i16> %i.jl, %i.jk
  %i.jn = lshr <16 x i16> %i.jm, splat (i16 1)
  %i.jo = trunc nuw <16 x i16> %i.jn to <16 x i8>
  store <16 x i8> %i.jo, ptr %.4234, align 1, !tbaa !60, !alias.scope !72, !noalias !73
  br i1 %cmp.n, label %.loopexit649, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.4234, i64 %index ; 2 uses
  %wide.load346 = load <4 x i8>, ptr %i.jp, align 1, !tbaa !60, !alias.scope !72, !noalias !73
  %i.jq = zext <4 x i8> %wide.load346 to <4 x i16>
  %i.jr = getelementptr inbounds nuw i8, ptr %.4186233, i64 %index
  %wide.load347 = load <4 x i8>, ptr %i.jr, align 1, !tbaa !60, !alias.scope !73
  %i.js = zext <4 x i8> %wide.load347 to <4 x i16>
  %i.jt = getelementptr inbounds nuw i8, ptr %.4186233, i64 %index
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %wide.load348 = load <4 x i8>, ptr %i.ju, align 1, !tbaa !60, !alias.scope !73
  %i.jv = zext <4 x i8> %wide.load348 to <4 x i16>
  %i.jw = add nuw nsw <4 x i16> %i.js, splat (i16 1)
  %i.jx = add nuw nsw <4 x i16> %i.jw, %i.jv
  %i.jy = lshr <4 x i16> %i.jx, splat (i16 1)
  %i.jz = add nuw nsw <4 x i16> %i.jq, splat (i16 1)
  %i.ka = add nuw nsw <4 x i16> %i.jz, %i.jy
  %i.kb = lshr <4 x i16> %i.ka, splat (i16 1)
  %i.kc = trunc nuw <4 x i16> %i.kb to <4 x i8>
  store <4 x i8> %i.kc, ptr %i.jp, align 1, !tbaa !60, !alias.scope !72, !noalias !73
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec345
  br i1 %i.kd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n349, label %.loopexit649, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec345, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ke = getelementptr inbounds nuw i8, ptr %.4234, i64 %indvars.iv.ph ; 2 uses
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !60
  %i.kg = zext i8 %i.kf to i16
  %i.kh = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv.ph
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !60
  %i.kj = zext i8 %i.ki to i16
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv.next.prol
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !60
  %i.km = zext i8 %i.kl to i16
  %i.kn = add nuw nsw i16 %i.kj, 1
  %i.ko = add nuw nsw i16 %i.kn, %i.km
  %i.kp = lshr i16 %i.ko, 1
  %i.kq = add nuw nsw i16 %i.kg, 1
  %i.kr = add nuw nsw i16 %i.kq, %i.kp
  %i.ks = lshr i16 %i.kr, 1
  %i.kt = trunc nuw i16 %i.ks to i8
  store i8 %i.kt, ptr %i.ke, align 1, !tbaa !60
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ku = icmp eq i64 %indvars.iv.ph, %i.jb
  br i1 %i.ku, label %.loopexit649, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.4234, i64 %indvars.iv ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !60
  %i.kx = zext i8 %i.kw to i16
  %i.ky = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !60
  %i.la = zext i8 %i.kz to i16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv.next
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
  %i.ll = getelementptr inbounds nuw i8, ptr %.4234, i64 %indvars.iv.next ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !60
  %i.ln = zext i8 %i.lm to i16
  %i.lo = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv.next
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !60
  %i.lq = zext i8 %i.lp to i16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv.next.1
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !60
  %i.lt = zext i8 %i.ls to i16
  %i.lu = add nuw nsw i16 %i.lq, 1
  %i.lv = add nuw nsw i16 %i.lu, %i.lt
  %i.lw = lshr i16 %i.lv, 1
  %i.lx = add nuw nsw i16 %i.ln, 1
  %i.ly = add nuw nsw i16 %i.lx, %i.lw
  %i.lz = lshr i16 %i.ly, 1
  %i.ma = trunc nuw i16 %i.lz to i8
  store i8 %i.ma, ptr %i.ll, align 1, !tbaa !60
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count275
  br i1 %exitcond.not.1, label %.loopexit649, label %vec.epilog.scalar.ph, !llvm.loop !37

.loopexit649:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %i.mb = getelementptr inbounds i8, ptr %.4186233, i64 %i.it
  %i.mc = getelementptr inbounds i8, ptr %.4234, i64 %i.it
  %i.md = add nuw nsw i32 %.4194232, 1            ; 2 uses
  %exitcond271.not = icmp eq i32 %i.md, %5
  br i1 %exitcond271.not, label %.loopexit, label %vector.memcheck, !llvm.loop !38

vector.memcheck359:                               ; preds = %vector.memcheck359.preheader, %.loopexit648
  %.5238 = phi ptr [ %i.of, %.loopexit648 ], [ %i.p, %vector.memcheck359.preheader ] ; 6 uses
  %.5187237 = phi ptr [ %i.oe, %.loopexit648 ], [ %i.l, %vector.memcheck359.preheader ] ; 11 uses
  %.5195236 = phi i32 [ %i.og, %.loopexit648 ], [ 0, %vector.memcheck359.preheader ]
  br i1 %29, label %vec.epilog.scalar.ph375.preheader, label %vector.main.loop.iter.check364

vector.main.loop.iter.check364:                   ; preds = %vector.memcheck359
  br i1 %min.iters.check365, label %vec.epilog.ph377, label %vector.ph366

vector.ph366:                                     ; preds = %vector.main.loop.iter.check364
  %wide.load369 = load <16 x i8>, ptr %.5187237, align 1, !tbaa !60, !alias.scope !74
  %i.me = zext <16 x i8> %wide.load369 to <16 x i16>
  %i.mf = getelementptr inbounds nuw i8, ptr %.5187237, i64 1
  %wide.load370 = load <16 x i8>, ptr %i.mf, align 1, !tbaa !60, !alias.scope !74
  %i.mg = zext <16 x i8> %wide.load370 to <16 x i16>
  %i.mh = add nuw nsw <16 x i16> %i.me, splat (i16 1)
  %i.mi = add nuw nsw <16 x i16> %i.mh, %i.mg
  %i.mj = lshr <16 x i16> %i.mi, splat (i16 1)
  %i.mk = trunc nuw <16 x i16> %i.mj to <16 x i8>
  store <16 x i8> %i.mk, ptr %.5238, align 1, !tbaa !60, !alias.scope !75, !noalias !74
  br i1 %cmp.n372, label %.loopexit648, label %vec.epilog.iter.check374

vec.epilog.iter.check374:                         ; preds = %vector.ph366
  br i1 %min.epilog.iters.check376, label %vec.epilog.scalar.ph375.preheader, label %vec.epilog.ph377, !prof !63

vec.epilog.ph377:                                 ; preds = %vector.main.loop.iter.check364, %vec.epilog.iter.check374
  %vec.epilog.resume.val378 = phi i64 [ %n.vec367, %vec.epilog.iter.check374 ], [ 0, %vector.main.loop.iter.check364 ]
  br label %vec.epilog.vector.body380

vec.epilog.vector.body380:                        ; preds = %vec.epilog.vector.body380, %vec.epilog.ph377
  %index381 = phi i64 [ %vec.epilog.resume.val378, %vec.epilog.ph377 ], [ %index.next384, %vec.epilog.vector.body380 ] ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.5187237, i64 %index381
  %wide.load382 = load <4 x i8>, ptr %i.ml, align 1, !tbaa !60, !alias.scope !74
  %i.mm = zext <4 x i8> %wide.load382 to <4 x i16>
  %i.mn = getelementptr inbounds nuw i8, ptr %.5187237, i64 %index381
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 1
  %wide.load383 = load <4 x i8>, ptr %i.mo, align 1, !tbaa !60, !alias.scope !74
  %i.mp = zext <4 x i8> %wide.load383 to <4 x i16>
  %i.mq = add nuw nsw <4 x i16> %i.mm, splat (i16 1)
  %i.mr = add nuw nsw <4 x i16> %i.mq, %i.mp
  %i.ms = lshr <4 x i16> %i.mr, splat (i16 1)
  %i.mt = trunc nuw <4 x i16> %i.ms to <4 x i8>
  %i.mu = getelementptr inbounds nuw i8, ptr %.5238, i64 %index381
  store <4 x i8> %i.mt, ptr %i.mu, align 1, !tbaa !60, !alias.scope !75, !noalias !74
  %index.next384 = add nuw i64 %index381, 4       ; 2 uses
  %i.mv = icmp eq i64 %index.next384, %n.vec379
  br i1 %i.mv, label %vec.epilog.middle.block385, label %vec.epilog.vector.body380, !llvm.loop !42

vec.epilog.middle.block385:                       ; preds = %vec.epilog.vector.body380
  br i1 %cmp.n386, label %.loopexit648, label %vec.epilog.scalar.ph375.preheader

vec.epilog.scalar.ph375.preheader:                ; preds = %vector.memcheck359, %vec.epilog.iter.check374, %vec.epilog.middle.block385
  %indvars.iv272.ph = phi i64 [ 0, %vector.memcheck359 ], [ %n.vec367, %vec.epilog.iter.check374 ], [ %n.vec379, %vec.epilog.middle.block385 ] ; 5 uses
  br i1 %lcmp.mod658.not, label %vec.epilog.scalar.ph375.prol.loopexit, label %vec.epilog.scalar.ph375.prol

vec.epilog.scalar.ph375.prol:                     ; preds = %vec.epilog.scalar.ph375.preheader
  %i.mw = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv272.ph
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !60
  %i.my = zext i8 %i.mx to i16
  %indvars.iv.next273.prol = or disjoint i64 %indvars.iv272.ph, 1 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv.next273.prol
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !60
  %i.nb = zext i8 %i.na to i16
  %i.nc = add nuw nsw i16 %i.my, 1
  %i.nd = add nuw nsw i16 %i.nc, %i.nb
  %i.ne = lshr i16 %i.nd, 1
  %i.nf = trunc nuw i16 %i.ne to i8
  %i.ng = getelementptr inbounds nuw i8, ptr %.5238, i64 %indvars.iv272.ph
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !60
  br label %vec.epilog.scalar.ph375.prol.loopexit

vec.epilog.scalar.ph375.prol.loopexit:            ; preds = %vec.epilog.scalar.ph375.prol, %vec.epilog.scalar.ph375.preheader
  %indvars.iv272.unr = phi i64 [ %indvars.iv272.ph, %vec.epilog.scalar.ph375.preheader ], [ %indvars.iv.next273.prol, %vec.epilog.scalar.ph375.prol ]
  %i.nh = icmp eq i64 %indvars.iv272.ph, %i.jd
  br i1 %i.nh, label %.loopexit648, label %vec.epilog.scalar.ph375

vec.epilog.scalar.ph375:                          ; preds = %vec.epilog.scalar.ph375.prol.loopexit, %vec.epilog.scalar.ph375
  %indvars.iv272 = phi i64 [ %indvars.iv.next273.1, %vec.epilog.scalar.ph375 ], [ %indvars.iv272.unr, %vec.epilog.scalar.ph375.prol.loopexit ] ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv272
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !60
  %i.nk = zext i8 %i.nj to i16
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv.next273
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !60
  %i.nn = zext i8 %i.nm to i16
  %i.no = add nuw nsw i16 %i.nk, 1
  %i.np = add nuw nsw i16 %i.no, %i.nn
  %i.nq = lshr i16 %i.np, 1
  %i.nr = trunc nuw i16 %i.nq to i8
  %i.ns = getelementptr inbounds nuw i8, ptr %.5238, i64 %indvars.iv272
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !60
  %i.nt = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv.next273
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !60
  %i.nv = zext i8 %i.nu to i16
  %indvars.iv.next273.1 = add nuw nsw i64 %indvars.iv272, 2 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv.next273.1
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !60
  %i.ny = zext i8 %i.nx to i16
  %i.nz = add nuw nsw i16 %i.nv, 1
  %i.oa = add nuw nsw i16 %i.nz, %i.ny
  %i.ob = lshr i16 %i.oa, 1
  %i.oc = trunc nuw i16 %i.ob to i8
  %i.od = getelementptr inbounds nuw i8, ptr %.5238, i64 %indvars.iv.next273
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !60
  %exitcond276.not.1 = icmp eq i64 %indvars.iv.next273.1, %wide.trip.count275
  br i1 %exitcond276.not.1, label %.loopexit648, label %vec.epilog.scalar.ph375, !llvm.loop !43

.loopexit648:                                     ; preds = %vec.epilog.scalar.ph375.prol.loopexit, %vec.epilog.scalar.ph375, %vec.epilog.middle.block385, %vector.ph366
  %i.oe = getelementptr inbounds i8, ptr %.5187237, i64 %i.it
  %i.of = getelementptr inbounds i8, ptr %.5238, i64 %i.it
  %i.og = add nuw nsw i32 %.5195236, 1            ; 2 uses
  %exitcond277.not = icmp eq i32 %i.og, %5
  br i1 %exitcond277.not, label %.loopexit, label %vector.memcheck359, !llvm.loop !44

bb.g:                                             ; preds = %bb.e
  %i.oh = sext i32 %2 to i64                      ; 4 uses
  %wide.trip.count287 = zext nneg i32 %4 to i64   ; 17 uses
  %30 = add nsw i32 %5, -1
  %31 = zext nneg i32 %30 to i64
  %32 = mul nsw i64 %i.it, %31                    ; 2 uses
  %33 = add i64 %32, %i.k
  %i.oi = add i64 %33, %i.i                       ; 2 uses
  %i.oj = getelementptr i8, ptr %0, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 %i.g
  %i.ol = getelementptr i8, ptr %i.ok, i64 %wide.trip.count287
  %scevgep455 = getelementptr i8, ptr %i.ol, i64 1 ; 2 uses
  %i.om = getelementptr i8, ptr %0, i64 %i.oi
  %i.on = getelementptr i8, ptr %i.om, i64 %i.oh
  %i.oo = getelementptr i8, ptr %i.on, i64 %i.g
  %i.op = getelementptr i8, ptr %i.oo, i64 %wide.trip.count287
  %scevgep456 = getelementptr i8, ptr %i.op, i64 1 ; 2 uses
  %i.oq = getelementptr i8, ptr %0, i64 %i.k
  %34 = getelementptr i8, ptr %i.oq, i64 %i.i
  %i.or = getelementptr i8, ptr %34, i64 %i.oh
  %scevgep457 = getelementptr i8, ptr %i.or, i64 %i.g ; 2 uses
  %i.os = getelementptr i8, ptr %1, i64 %32
  %i.ot = getelementptr i8, ptr %i.os, i64 %i.i
  %i.ou = getelementptr i8, ptr %i.ot, i64 %i.n
  %scevgep458 = getelementptr i8, ptr %i.ou, i64 %wide.trip.count287 ; 4 uses
  br i1 %.not207, label %iter.check479.preheader, label %iter.check424.preheader

iter.check424.preheader:                          ; preds = %bb.g
  %bound0405.a = icmp ult ptr %i.p, %scevgep456
  %bound1406.a = icmp ult ptr %scevgep457, %scevgep458
  %found.conflict407.a = and i1 %bound0405.a, %bound1406.a
  %stride.check408 = icmp slt i32 %3, 0
  %35 = or i1 %found.conflict407.a, %stride.check408
  %bound0409 = icmp ult ptr %i.p, %scevgep455
  %bound1410 = icmp ult ptr %i.l, %scevgep458
  %found.conflict411 = and i1 %bound0409, %bound1410
  %conflict.rdx = or i1 %35, %found.conflict411
  %min.iters.check413 = icmp samesign ult i32 %4, 16
  %n.vec415 = and i64 %wide.trip.count287, 16     ; 3 uses
  %cmp.n423 = icmp eq i64 %n.vec415, %wide.trip.count287
  %i.ov = and i64 %wide.trip.count287, 12
  %min.epilog.iters.check427 = icmp eq i64 %i.ov, 0
  %n.vec430 = and i64 %wide.trip.count287, 28     ; 3 uses
  %cmp.n440 = icmp eq i64 %n.vec430, %wide.trip.count287
  br label %iter.check424

iter.check479.preheader:                          ; preds = %bb.g
  %bound0460 = icmp ult ptr %i.p, %scevgep456
  %bound1461 = icmp ult ptr %scevgep457, %scevgep458
  %found.conflict462 = and i1 %bound0460, %bound1461
  %stride.check463 = icmp slt i32 %3, 0
  %36 = or i1 %found.conflict462, %stride.check463
  %bound0464 = icmp ult ptr %i.p, %scevgep455
  %bound1465 = icmp ult ptr %i.l, %scevgep458
  %found.conflict466 = and i1 %bound0464, %bound1465
  %conflict.rdx467 = or i1 %36, %found.conflict466
  %min.iters.check469 = icmp samesign ult i32 %4, 16
  %n.vec471 = and i64 %wide.trip.count287, 16     ; 3 uses
  %cmp.n478 = icmp eq i64 %n.vec471, %wide.trip.count287
  %i.ow = and i64 %wide.trip.count287, 12
  %min.epilog.iters.check482 = icmp eq i64 %i.ow, 0
  %n.vec485 = and i64 %wide.trip.count287, 28     ; 3 uses
  %cmp.n494 = icmp eq i64 %n.vec485, %wide.trip.count287
  %xtraiter659 = and i64 %wide.trip.count287, 1
  %lcmp.mod660.not = icmp eq i64 %xtraiter659, 0
  %i.ox = add nsw i64 %wide.trip.count287, -1
  br label %iter.check479

iter.check424:                                    ; preds = %iter.check424.preheader, %.loopexit647
  %.6242 = phi ptr [ %i.rh, %.loopexit647 ], [ %i.p, %iter.check424.preheader ] ; 5 uses
  %.6188241 = phi ptr [ %i.rg, %.loopexit647 ], [ %i.l, %iter.check424.preheader ] ; 8 uses
  %.6196240 = phi i32 [ %i.ri, %.loopexit647 ], [ 0, %iter.check424.preheader ]
  %invariant.gep = getelementptr i8, ptr %.6188241, i64 %i.oh ; 4 uses
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph426.preheader, label %vector.main.loop.iter.check412

vector.main.loop.iter.check412:                   ; preds = %iter.check424
  br i1 %min.iters.check413, label %vec.epilog.ph428, label %vector.ph414

vector.ph414:                                     ; preds = %vector.main.loop.iter.check412
  %wide.load417.a = load <16 x i8>, ptr %.6242, align 1, !tbaa !60, !alias.scope !76, !noalias !77
  %i.oy = zext <16 x i8> %wide.load417.a to <16 x i16>
  %wide.load418 = load <16 x i8>, ptr %.6188241, align 1, !tbaa !60, !alias.scope !78
  %i.oz = zext <16 x i8> %wide.load418 to <16 x i16>
  %i.pa = getelementptr inbounds nuw i8, ptr %.6188241, i64 1
  %wide.load419 = load <16 x i8>, ptr %i.pa, align 1, !tbaa !60, !alias.scope !78
  %i.pb = zext <16 x i8> %wide.load419 to <16 x i16>
  %wide.load420 = load <16 x i8>, ptr %invariant.gep, align 1, !tbaa !60, !alias.scope !79
  %i.pc = zext <16 x i8> %wide.load420 to <16 x i16>
  %i.pd = getelementptr i8, ptr %invariant.gep, i64 1
  %wide.load421 = load <16 x i8>, ptr %i.pd, align 1, !tbaa !60, !alias.scope !79
  %i.pe = zext <16 x i8> %wide.load421 to <16 x i16>
  %i.pf = add nuw nsw <16 x i16> %i.oz, splat (i16 2)
  %i.pg = add nuw nsw <16 x i16> %i.pf, %i.pb
  %i.ph = add nuw nsw <16 x i16> %i.pg, %i.pc
  %i.pi = add nuw nsw <16 x i16> %i.ph, %i.pe
  %i.pj = lshr <16 x i16> %i.pi, splat (i16 2)
  %i.pk = add nuw nsw <16 x i16> %i.oy, splat (i16 1)
  %i.pl = add nuw nsw <16 x i16> %i.pk, %i.pj
  %i.pm = lshr <16 x i16> %i.pl, splat (i16 1)
  %i.pn = trunc nuw <16 x i16> %i.pm to <16 x i8>
  store <16 x i8> %i.pn, ptr %.6242, align 1, !tbaa !60, !alias.scope !76, !noalias !77
  br i1 %cmp.n423, label %.loopexit647, label %vec.epilog.iter.check425

vec.epilog.iter.check425:                         ; preds = %vector.ph414
  br i1 %min.epilog.iters.check427, label %vec.epilog.scalar.ph426.preheader, label %vec.epilog.ph428, !prof !63

vec.epilog.ph428:                                 ; preds = %vector.main.loop.iter.check412, %vec.epilog.iter.check425
  %vec.epilog.resume.val429 = phi i64 [ %n.vec415, %vec.epilog.iter.check425 ], [ 0, %vector.main.loop.iter.check412 ]
  br label %vec.epilog.vector.body431

vec.epilog.vector.body431:                        ; preds = %vec.epilog.vector.body431, %vec.epilog.ph428
  %index432 = phi i64 [ %vec.epilog.resume.val429, %vec.epilog.ph428 ], [ %index.next438, %vec.epilog.vector.body431 ] ; 5 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.6242, i64 %index432 ; 2 uses
  %wide.load433.a = load <4 x i8>, ptr %i.po, align 1, !tbaa !60, !alias.scope !76, !noalias !77
  %i.pp = zext <4 x i8> %wide.load433.a to <4 x i16>
  %i.pq = getelementptr inbounds nuw i8, ptr %.6188241, i64 %index432
  %wide.load434 = load <4 x i8>, ptr %i.pq, align 1, !tbaa !60, !alias.scope !78
  %i.pr = zext <4 x i8> %wide.load434 to <4 x i16>
  %i.ps = getelementptr inbounds nuw i8, ptr %.6188241, i64 %index432
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 1
  %wide.load435 = load <4 x i8>, ptr %i.pt, align 1, !tbaa !60, !alias.scope !78
  %i.pu = zext <4 x i8> %wide.load435 to <4 x i16>
  %i.pv = getelementptr i8, ptr %invariant.gep, i64 %index432 ; 2 uses
  %wide.load436 = load <4 x i8>, ptr %i.pv, align 1, !tbaa !60, !alias.scope !79
  %i.pw = zext <4 x i8> %wide.load436 to <4 x i16>
  %i.px = getelementptr i8, ptr %i.pv, i64 1
  %wide.load437 = load <4 x i8>, ptr %i.px, align 1, !tbaa !60, !alias.scope !79
  %i.py = zext <4 x i8> %wide.load437 to <4 x i16>
  %i.pz = add nuw nsw <4 x i16> %i.pr, splat (i16 2)
  %i.qa = add nuw nsw <4 x i16> %i.pz, %i.pu
  %i.qb = add nuw nsw <4 x i16> %i.qa, %i.pw
  %i.qc = add nuw nsw <4 x i16> %i.qb, %i.py
  %i.qd = lshr <4 x i16> %i.qc, splat (i16 2)
  %i.qe = add nuw nsw <4 x i16> %i.pp, splat (i16 1)
  %i.qf = add nuw nsw <4 x i16> %i.qe, %i.qd
  %i.qg = lshr <4 x i16> %i.qf, splat (i16 1)
  %i.qh = trunc nuw <4 x i16> %i.qg to <4 x i8>
  store <4 x i8> %i.qh, ptr %i.po, align 1, !tbaa !60, !alias.scope !76, !noalias !77
  %index.next438 = add nuw i64 %index432, 4       ; 2 uses
  %i.qi = icmp eq i64 %index.next438, %n.vec430
  br i1 %i.qi, label %vec.epilog.middle.block439, label %vec.epilog.vector.body431, !llvm.loop !49

vec.epilog.middle.block439:                       ; preds = %vec.epilog.vector.body431
  br i1 %cmp.n440, label %.loopexit647, label %vec.epilog.scalar.ph426.preheader

vec.epilog.scalar.ph426.preheader:                ; preds = %iter.check424, %vec.epilog.iter.check425, %vec.epilog.middle.block439
  %indvars.iv278.ph = phi i64 [ 0, %iter.check424 ], [ %n.vec415, %vec.epilog.iter.check425 ], [ %n.vec430, %vec.epilog.middle.block439 ]
  br label %vec.epilog.scalar.ph426

vec.epilog.scalar.ph426:                          ; preds = %vec.epilog.scalar.ph426.preheader, %vec.epilog.scalar.ph426
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %vec.epilog.scalar.ph426 ], [ %indvars.iv278.ph, %vec.epilog.scalar.ph426.preheader ] ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.6242, i64 %indvars.iv278 ; 2 uses
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !60
  %i.ql = zext i8 %i.qk to i16
  %i.qm = getelementptr inbounds nuw i8, ptr %.6188241, i64 %indvars.iv278
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !60
  %i.qo = zext i8 %i.qn to i16
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.6188241, i64 %indvars.iv.next279
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !60
  %i.qr = zext i8 %i.qq to i16
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv278 ; 2 uses
  %i.qs = load i8, ptr %gep, align 1, !tbaa !60
  %i.qt = zext i8 %i.qs to i16
  %i.qu = getelementptr i8, ptr %gep, i64 1
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !60
  %i.qw = zext i8 %i.qv to i16
  %i.qx = add nuw nsw i16 %i.qo, 2
  %i.qy = add nuw nsw i16 %i.qx, %i.qr
  %i.qz = add nuw nsw i16 %i.qy, %i.qt
  %i.ra = add nuw nsw i16 %i.qz, %i.qw
  %i.rb = lshr i16 %i.ra, 2
  %i.rc = add nuw nsw i16 %i.ql, 1
  %i.rd = add nuw nsw i16 %i.rc, %i.rb
  %i.re = lshr i16 %i.rd, 1
  %i.rf = trunc nuw i16 %i.re to i8
  store i8 %i.rf, ptr %i.qj, align 1, !tbaa !60
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count287
  br i1 %exitcond282.not, label %.loopexit647, label %vec.epilog.scalar.ph426, !llvm.loop !50

.loopexit647:                                     ; preds = %vec.epilog.scalar.ph426, %vec.epilog.middle.block439, %vector.ph414
  %i.rg = getelementptr inbounds i8, ptr %.6188241, i64 %i.it
  %i.rh = getelementptr inbounds i8, ptr %.6242, i64 %i.it
  %i.ri = add nuw nsw i32 %.6196240, 1            ; 2 uses
  %exitcond283.not = icmp eq i32 %i.ri, %5
  br i1 %exitcond283.not, label %.loopexit, label %iter.check424, !llvm.loop !51

iter.check479:                                    ; preds = %iter.check479.preheader, %.loopexit646
  %.7246 = phi ptr [ %i.uq, %.loopexit646 ], [ %i.p, %iter.check479.preheader ] ; 6 uses
  %.7189245 = phi ptr [ %i.up, %.loopexit646 ], [ %i.l, %iter.check479.preheader ] ; 12 uses
  %.7197244 = phi i32 [ %i.ur, %.loopexit646 ], [ 0, %iter.check479.preheader ]
  %invariant.gep328 = getelementptr i8, ptr %.7189245, i64 %i.oh ; 6 uses
  br i1 %conflict.rdx467, label %vec.epilog.scalar.ph481.preheader, label %vector.main.loop.iter.check468

vector.main.loop.iter.check468:                   ; preds = %iter.check479
  br i1 %min.iters.check469, label %vec.epilog.ph483, label %vector.ph470

vector.ph470:                                     ; preds = %vector.main.loop.iter.check468
  %wide.load473 = load <16 x i8>, ptr %.7189245, align 1, !tbaa !60, !alias.scope !80
  %i.rj = zext <16 x i8> %wide.load473 to <16 x i16>
  %i.rk = getelementptr inbounds nuw i8, ptr %.7189245, i64 1
  %wide.load474 = load <16 x i8>, ptr %i.rk, align 1, !tbaa !60, !alias.scope !80
  %i.rl = zext <16 x i8> %wide.load474 to <16 x i16>
  %wide.load475 = load <16 x i8>, ptr %invariant.gep328, align 1, !tbaa !60, !alias.scope !81
  %i.rm = zext <16 x i8> %wide.load475 to <16 x i16>
  %i.rn = getelementptr i8, ptr %invariant.gep328, i64 1
  %wide.load476 = load <16 x i8>, ptr %i.rn, align 1, !tbaa !60, !alias.scope !81
  %i.ro = zext <16 x i8> %wide.load476 to <16 x i16>
  %i.rp = add nuw nsw <16 x i16> %i.rj, splat (i16 2)
  %i.rq = add nuw nsw <16 x i16> %i.rp, %i.rl
  %i.rr = add nuw nsw <16 x i16> %i.rq, %i.rm
  %i.rs = add nuw nsw <16 x i16> %i.rr, %i.ro
  %i.rt = lshr <16 x i16> %i.rs, splat (i16 2)
  %i.ru = trunc nuw <16 x i16> %i.rt to <16 x i8>
  store <16 x i8> %i.ru, ptr %.7246, align 1, !tbaa !60, !alias.scope !82, !noalias !83
  br i1 %cmp.n478, label %.loopexit646, label %vec.epilog.iter.check480

vec.epilog.iter.check480:                         ; preds = %vector.ph470
  br i1 %min.epilog.iters.check482, label %vec.epilog.scalar.ph481.preheader, label %vec.epilog.ph483, !prof !63

vec.epilog.ph483:                                 ; preds = %vector.main.loop.iter.check468, %vec.epilog.iter.check480
  %vec.epilog.resume.val484 = phi i64 [ %n.vec471, %vec.epilog.iter.check480 ], [ 0, %vector.main.loop.iter.check468 ]
  br label %vec.epilog.vector.body486

vec.epilog.vector.body486:                        ; preds = %vec.epilog.vector.body486, %vec.epilog.ph483
  %index487 = phi i64 [ %vec.epilog.resume.val484, %vec.epilog.ph483 ], [ %index.next492, %vec.epilog.vector.body486 ] ; 5 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.7189245, i64 %index487
  %wide.load488 = load <4 x i8>, ptr %i.rv, align 1, !tbaa !60, !alias.scope !80
  %i.rw = zext <4 x i8> %wide.load488 to <4 x i16>
  %i.rx = getelementptr inbounds nuw i8, ptr %.7189245, i64 %index487
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 1
  %wide.load489 = load <4 x i8>, ptr %i.ry, align 1, !tbaa !60, !alias.scope !80
  %i.rz = zext <4 x i8> %wide.load489 to <4 x i16>
  %i.sa = getelementptr i8, ptr %invariant.gep328, i64 %index487 ; 2 uses
  %wide.load490 = load <4 x i8>, ptr %i.sa, align 1, !tbaa !60, !alias.scope !81
  %i.sb = zext <4 x i8> %wide.load490 to <4 x i16>
  %i.sc = getelementptr i8, ptr %i.sa, i64 1
  %wide.load491 = load <4 x i8>, ptr %i.sc, align 1, !tbaa !60, !alias.scope !81
  %i.sd = zext <4 x i8> %wide.load491 to <4 x i16>
  %i.se = add nuw nsw <4 x i16> %i.rw, splat (i16 2)
  %i.sf = add nuw nsw <4 x i16> %i.se, %i.rz
  %i.sg = add nuw nsw <4 x i16> %i.sf, %i.sb
  %i.sh = add nuw nsw <4 x i16> %i.sg, %i.sd
  %i.si = lshr <4 x i16> %i.sh, splat (i16 2)
  %i.sj = trunc nuw <4 x i16> %i.si to <4 x i8>
  %i.sk = getelementptr inbounds nuw i8, ptr %.7246, i64 %index487
  store <4 x i8> %i.sj, ptr %i.sk, align 1, !tbaa !60, !alias.scope !82, !noalias !83
  %index.next492 = add nuw i64 %index487, 4       ; 2 uses
  %i.sl = icmp eq i64 %index.next492, %n.vec485
  br i1 %i.sl, label %vec.epilog.middle.block493, label %vec.epilog.vector.body486, !llvm.loop !56

vec.epilog.middle.block493:                       ; preds = %vec.epilog.vector.body486
  br i1 %cmp.n494, label %.loopexit646, label %vec.epilog.scalar.ph481.preheader

vec.epilog.scalar.ph481.preheader:                ; preds = %iter.check479, %vec.epilog.iter.check480, %vec.epilog.middle.block493
  %indvars.iv284.ph = phi i64 [ 0, %iter.check479 ], [ %n.vec471, %vec.epilog.iter.check480 ], [ %n.vec485, %vec.epilog.middle.block493 ] ; 6 uses
end_hunk_0
