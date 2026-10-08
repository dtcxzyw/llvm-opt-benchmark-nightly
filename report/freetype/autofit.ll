Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/autofit?download=true
inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 37
begin_hunk_0_@af_latin_compute_stem_width:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !285 ; 2 uses
  %i.bg = sub nsw i64 %spec.select, %i.bf
  %spec.select.i.1 = tail call i64 @llvm.abs.i64(i64 %i.bg, i1 true) ; 2 uses
  %i.bh = icmp samesign ult i64 %spec.select.i.1, %.125.i
  %.125.i.1 = tail call i64 @llvm.umin.i64(i64 %spec.select.i.1, i64 %.125.i) ; 2 uses
  %.1.i.1 = select i1 %i.bh, i64 %i.bf, i64 %.1.i ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !589

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  %.02335.i.epil.init = phi i64 [ %spec.select, %.lr.ph.preheader.i ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ]
  %.02434.i.epil.init = phi i64 [ 98, %.lr.ph.preheader.i ], [ %.125.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod14 = trunc i32 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i.epil.init
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !285 ; 2 uses
  %i.bl = sub nsw i64 %spec.select, %i.bk
  %spec.select.i.epil = tail call i64 @llvm.abs.i64(i64 %i.bl, i1 true)
  %i.bm = icmp samesign ult i64 %spec.select.i.epil, %.02434.i.epil.init
  %.1.i.epil = select i1 %i.bm, i64 %i.bk, i64 %.02335.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.1.i.lcssa = phi i64 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ] ; 4 uses
  %i.bn = add nsw i64 %.1.i.lcssa, 32
  %i.bo = and i64 %i.bn, -64                      ; 2 uses
  %.not.i = icmp slt i64 %spec.select, %.1.i.lcssa
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.bp = phi i64 [ %i.aw, %._crit_edge.thread.i ], [ %i.bo, %._crit_edge.i ]
  %.023.lcssa42.i = phi i64 [ %spec.select, %._crit_edge.thread.i ], [ %.1.i.lcssa, %._crit_edge.i ]
  %i.bq = or disjoint i64 %i.bp, 48
  %i.br = icmp slt i64 %spec.select, %i.bq
  %spec.select31.i = select i1 %i.br, i64 %.023.lcssa42.i, i64 %spec.select
  br label %af_latin_snap_width.exit

bb.w:                                             ; preds = %._crit_edge.i
  %i.bs = add nsw i64 %i.bo, -48
  %i.bt = icmp sgt i64 %spec.select, %i.bs
  %spec.select32.i = select i1 %i.bt, i64 %.1.i.lcssa, i64 %spec.select
  br label %af_latin_snap_width.exit

af_latin_snap_width.exit:                         ; preds = %bb.v, %bb.w
  %.027.i = phi i64 [ %spec.select31.i, %bb.v ], [ %spec.select32.i, %bb.w ] ; 9 uses
  br i1 %.not7, label %bb.z, label %bb.x

bb.x:                                             ; preds = %af_latin_snap_width.exit
  %i.bu = icmp sgt i64 %.027.i, 63
  br i1 %i.bu, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.bv = add nuw nsw i64 %.027.i, 16
  %i.bw = and i64 %i.bv, 9223372036854775744
  br label %bb.aj

bb.z:                                             ; preds = %af_latin_snap_width.exit
  %i.bx = and i32 %.5164.val, 8
  %.not116 = icmp eq i32 %i.bx, 0
  br i1 %.not116, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = icmp slt i64 %.027.i, 64
  br i1 %i.by, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = add nuw nsw i64 %.027.i, 32
  %i.ca = and i64 %i.bz, 9223372036854775744
  br label %bb.aj

bb.ac:                                            ; preds = %bb.z
  %i.cb = icmp slt i64 %.027.i, 48
  br i1 %i.cb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cc = add nsw i64 %.027.i, 64
  %i.cd = ashr i64 %i.cc, 1
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.ce = icmp samesign ult i64 %.027.i, 128
  br i1 %i.ce, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cf = add nuw nsw i64 %.027.i, 22
  %i.cg = and i64 %i.cf, 192                      ; 2 uses
  %reass.sub = sub nsw i64 %i.cg, %spec.select
  %i.ch = add nsw i64 %reass.sub, -16
  %i.ci = icmp ult i64 %i.ch, -31
  br i1 %i.ci, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cj = icmp samesign ult i64 %spec.select, 48
  br i1 %i.cj, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ck = lshr i64 %spec.select, 1
  %i.cl = or disjoint i64 %i.ck, 32
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.cm = add nuw nsw i64 %.027.i, 32
  %i.cn = and i64 %i.cm, 9223372036854775744
  br label %bb.aj

bb.aj:                                            ; preds = %bb.o, %bb.y, %bb.ad, %bb.ai, %bb.ab, %bb.x, %bb.aa, %bb.ag, %bb.ah, %bb.af, %bb.j, %bb.l, %bb.n, %.thread3, %bb.h, %bb.e
  %.6 = phi i64 [ %spec.select123, %bb.o ], [ %spec.select, %bb.e ], [ %.195, %bb.h ], [ %spec.store.select5, %bb.j ], [ %i.as, %.thread3 ], [ %i.z, %bb.n ], [ %i.cg, %bb.af ], [ %.195, %bb.l ], [ %i.bw, %bb.y ], [ %i.cn, %bb.ai ], [ 64, %bb.x ], [ %i.ca, %bb.ab ], [ %i.cd, %bb.ad ], [ 64, %bb.aa ], [ %i.cl, %bb.ah ], [ %spec.select, %bb.ag ] ; 2 uses
  %i.co = sub nsw i64 0, %.6
  %i.cp = icmp slt i64 %1, 0
  %spec.select122 = select i1 %i.cp, i64 %i.co, i64 %.6
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.b, %bb.aj
  %.097 = phi i64 [ %1, %bb.a ], [ %spec.select122, %bb.aj ], [ %1, %bb.b ]
  ret i64 %.097
}

; Function Attrs: nounwind uwtable
define internal fastcc void @af_loader_embolden_glyph_in_slot(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %3 = alloca %struct.FT_Matrix_, align 8         ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !216  ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !213  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !tbaa !76
  %i.l = load i16, ptr %i.k, align 8, !tbaa !590
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 768 ; 3 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !289
  %.not46 = icmp eq i16 %i.l, %i.n                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !37   ; 2 uses
  %i.q = zext i16 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 16                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @__const.af_loader_embolden_glyph_in_slot.scale_down_matrix, i64 24, i1 false)
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %2, align 8, !tbaa !180
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !220
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @af_writing_system_classes, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !222
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !591  ; 2 uses
  %.not45 = icmp eq ptr %i.z, null
  br i1 %.not45, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void %i.z(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #18
  %.pre = load i64, ptr %i.a, align 8, !tbaa !76  ; 3 uses
  br i1 %.not46, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp sgt i64 %.pre, 0
  br i1 %i.aa, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 776
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !592
  %.not47 = icmp eq i64 %.pre, %i.ac
  br i1 %.not47, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.val51 = load ptr, ptr %i.e, align 8, !tbaa !216
  %.val52 = load i16, ptr %i.o, align 8, !tbaa !37
  %.val53 = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.ad = getelementptr i8, ptr %.val51, i64 816
  %.val51.val = load ptr, ptr %i.ad, align 8, !tbaa !56
  %i.ae = getelementptr i8, ptr %.val53, i64 24
  %.val53.val = load i16, ptr %i.ae, align 8, !tbaa !287
  %i.af = call fastcc i64 @af_loader_compute_darkening(ptr %.val51.val, i16 %.val52, i16 %.val53.val, i64 noundef %.pre)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !593
  %i.ai = mul i64 %i.ah, %i.af                    ; 2 uses
  %i.aj = ashr i64 %i.ai, 63
  %i.ak = add i64 %i.ai, 32768
  %i.al = add i64 %i.ak, %i.aj
  %4 = lshr i64 %i.al, 16
  %i.am = load i64, ptr %i.a, align 8, !tbaa !76
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 776
  store i64 %i.am, ptr %i.an, align 8, !tbaa !592
  %i.ao = load i16, ptr %i.k, align 8, !tbaa !590
  store i16 %i.ao, ptr %i.m, align 8, !tbaa !289
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, 32768
  %7 = ashr i32 %6, 16
  %8 = sext i32 %7 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 792
  store i64 %8, ptr %i.ap, align 8, !tbaa !594
  br i1 %.not46, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre55 = load i64, ptr %i.b, align 8, !tbaa !76
  br label %bb.h

.thread:                                          ; preds = %bb.d, %bb.e, %bb.f
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !76  ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 784
  %i.at = load i64, ptr %i.as, align 8, !tbaa !595
  %.not48 = icmp eq i64 %i.aq, %i.at
  br i1 %.not48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.au = phi i64 [ %.pre55, %._crit_edge ], [ %i.aq, %bb.g ]
  %.val = load ptr, ptr %i.e, align 8, !tbaa !216
  %.val49 = load i16, ptr %i.o, align 8, !tbaa !37
  %.val50 = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.av = getelementptr i8, ptr %.val, i64 816
  %.val.val = load ptr, ptr %i.av, align 8, !tbaa !56
  %i.aw = getelementptr i8, ptr %.val50, i64 24
  %.val50.val = load i16, ptr %i.aw, align 8, !tbaa !287
  %i.ax = call fastcc i64 @af_loader_compute_darkening(ptr %.val.val, i16 %.val49, i16 %.val50.val, i64 noundef %i.au) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !596
  %i.ba = mul i64 %i.az, %i.ax                    ; 2 uses
  %i.bb = ashr i64 %i.ba, 63
  %i.bc = add i64 %i.ba, 32768
  %i.bd = add i64 %i.bc, %i.bb
  %9 = lshr i64 %i.bd, 16
  %i.be = load i64, ptr %i.b, align 8, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 784
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !595
  %i.bg = load i16, ptr %i.k, align 8, !tbaa !590
  store i16 %i.bg, ptr %i.m, align 8, !tbaa !289
  %10 = trunc i64 %9 to i32
  %11 = add i32 %10, 32768
  %12 = ashr i32 %11, 16
  %13 = sext i32 %12 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 800
  store i64 %13, ptr %i.bh, align 8, !tbaa !597
  %.neg54 = add nsw i64 %i.r, -524288
  %i.bi = sub i64 %.neg54, %i.ax
  %i.bj = call i64 @FT_DivFix(i64 noundef %i.bi, i64 noundef %i.r) #18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 808
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !598
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 792
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !594
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 800
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !597
  %i.bq = call i32 @FT_Outline_EmboldenXY(ptr noundef nonnull %i.bl, i64 noundef %i.bn, i64 noundef %i.bp) #18 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 808
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !598
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !599
  call void @FT_Outline_Transform(ptr noundef nonnull %i.bl, ptr noundef nonnull %3) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare i32 @FT_Matrix_Invert(ptr noundef) local_unnamed_addr #4

declare void @FT_Vector_Transform(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @FT_Outline_Translate(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @FT_Outline_Transform(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @FT_Outline_Get_CBox(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @af_face_globals_new(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !131
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !615
  %i.j = shl i64 %i.i, 1
  %i.k = add i64 %i.j, 824
  %i.l = call ptr @ft_mem_qalloc(ptr noundef %i.g, i64 noundef %i.k, ptr noundef nonnull %i.e) #18 ; 24 uses
  %i.m = load i32, ptr %i.e, align 4, !tbaa !70   ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.ct

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.n, i8 0, i64 696, i1 false)
  store ptr %0, ptr %i.l, align 8, !tbaa !174
  %i.o = load i64, ptr %i.h, align 8, !tbaa !615
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 17 uses
  store i32 %i.p, ptr %i.q, align 8, !tbaa !170
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 824 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !169
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 816 ; 10 uses
  store ptr %2, ptr %i.t, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 768
  store i16 0, ptr %i.u, align 8, !tbaa !289
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 776
  %i.w = getelementptr i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false)
  %.val.val = load ptr, ptr %i.w, align 8, !tbaa !62 ; 3 uses
  %.not39 = icmp eq ptr %.val.val, null
  br i1 %.not39, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !616  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !618
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %.val.val, align 8, !tbaa !231
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !619
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !620
  %i.af = trunc i64 %i.ae to i32
  %i.ag = call ptr %i.ab(ptr noundef %i.ac, i32 noundef %i.af, i32 noundef 1, ptr noundef nonnull %0, ptr noundef null) #18, !inline_history !600 ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !237
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !621
  %i.ao = trunc i64 %i.an to i32
  %i.ap = call ptr %i.al(ptr noundef %i.ag, i32 noundef %i.ao) #18, !inline_history !600
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !232
  call void %i.au(ptr noundef %i.ag) #18, !inline_history !600
  br label %ft_hb_ft_font_create.exit

bb.e:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %.val.val, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !238
  %i.ax = call ptr %i.aw(ptr noundef nonnull @ft_hb_ft_reference_table, ptr noundef nonnull %i.l, ptr noundef null) #18, !inline_history !600
  br label %ft_hb_ft_font_create.exit

ft_hb_ft_font_create.exit:                        ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.ax, %bb.e ], [ %i.ap, %bb.d ] ; 4 uses
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !240
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !621
  %i.bf = trunc i64 %i.be to i32
  call void %i.bc(ptr noundef %.0.i.i, i32 noundef %i.bf) #18, !inline_history !600
  %i.bg = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !62
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !241
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bm = load i16, ptr %i.bl, align 8, !tbaa !37
  %i.bn = zext i16 %i.bm to i32
  call void %i.bk(ptr noundef %.0.i.i, i32 noundef %i.bn) #18, !inline_history !600
  %i.bo = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 120
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !242
  %i.bt = call ptr %i.bs(ptr noundef %.0.i.i) #18, !inline_history !601
  %i.bu = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !62
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !239
  call void %i.by(ptr noundef %.0.i.i) #18, !inline_history !601
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.bt, ptr %i.bz, align 8, !tbaa !177
  %i.ca = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !64
  %i.cf = call ptr %i.ce() #18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !70
  %i.ch = load ptr, ptr %i.l, align 8, !tbaa !174 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 184
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !131 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  store ptr null, ptr %i.ck, align 8, !tbaa !186
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  store ptr null, ptr %i.cl, align 8, !tbaa !185
  store i64 0, ptr %i.d, align 8, !tbaa !76
  %i.cm = call i32 @FT_Load_Sfnt_Table(ptr noundef %i.ch, i64 noundef 1196643650, i64 noundef 0, ptr noundef null, ptr noundef nonnull %i.d) #18
  %.not.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i, label %bb.f, label %bb.ao

bb.f:                                             ; preds = %ft_hb_ft_font_create.exit
  %i.cn = load i64, ptr %i.d, align 8, !tbaa !76
  %i.co = call ptr @ft_mem_qalloc(ptr noundef %i.cj, i64 noundef %i.cn, ptr noundef nonnull %i.c) #18 ; 11 uses
  %i.cp = load i32, ptr %i.c, align 4, !tbaa !70
  %.not53.i = icmp eq i32 %i.cp, 0
  br i1 %.not53.i, label %bb.g, label %bb.ao

bb.g:                                             ; preds = %bb.f
  %i.cq = call i32 @FT_Load_Sfnt_Table(ptr noundef nonnull %i.ch, i64 noundef 1196643650, i64 noundef 0, ptr noundef %i.co, ptr noundef nonnull %i.d) #18
  %i.cr = icmp ne i32 %i.cq, 0
  %i.cs = load i64, ptr %i.d, align 8             ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 10
  %or.cond.i = select i1 %i.cr, i1 true, i1 %i.ct
  br i1 %or.cond.i, label %bb.ao, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !68
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 9
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !68
  %i.da = zext i8 %i.cz to i32
  %i.db = or disjoint i32 %i.cx, %i.da            ; 3 uses
  %i.dc = add nuw nsw i32 %i.db, 2                ; 2 uses
end_hunk_0
