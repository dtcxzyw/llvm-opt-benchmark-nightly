Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_layout_row_push:bb.a
  %i.k = fcmp ogt float %1, 0.000000e+00
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = fcmp ogt float %1, 1.000000e+00
  %i.m = select i1 %i.l, float 1.000000e+00, float %1
  br label %.critedge.sink.split

bb.h:                                             ; preds = %bb.f
  %i.n = fsub float 1.000000e+00, %i.h
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.d, %bb.g, %bb.h
  %.sink = phi float [ %i.n, %bb.h ], [ %i.m, %bb.g ], [ %1, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store float %.sink, ptr %i.o, align 8, !tbaa !497
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.d, %bb.e, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_layout_row_end(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 4 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i32, ptr %i.e, align 8, !tbaa !545
  switch i32 %i.f, label %bb.f [
    i32 5, label %bb.e
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store float 0.000000e+00, ptr %i.g, align 8, !tbaa !497
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !544
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_layout_row(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, float noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 5 uses
  %.not46 = icmp eq ptr %i.b, null
  br i1 %.not46, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 11 uses
  %.not47 = icmp eq ptr %i.d, null
  br i1 %.not47, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %.sroa.03.0.copyload.i = load i32, ptr %i.f, align 8, !tbaa !56
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9648
  %.sroa.3.0.copyload.i = load float, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store i32 0, ptr %i.g, align 4, !tbaa !494
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !499
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !503
  %i.l = fadd float %i.i, %i.k                    ; 2 uses
  store float %i.l, ptr %i.j, align 4, !tbaa !503
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i32 %3, ptr %i.m, align 8, !tbaa !495
  %i.n = fcmp oeq float %2, 0.000000e+00
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.p = load float, ptr %i.o, align 4, !tbaa !425 ; 2 uses
  %i.q = fcmp olt float %2, %i.p
  %..i = select i1 %i.q, float %i.p, float %2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi float [ %..i, %bb.e ], [ %2, %bb.d ]
  %storemerge.i = fadd float %.sroa.3.0.copyload.i, %.pn.i ; 2 uses
  store float %storemerge.i, ptr %i.h, align 8, !tbaa !499
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  store float 0.000000e+00, ptr %i.r, align 8, !tbaa !544
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !488
  %i.u = and i32 %i.t, 2048
  %.not36.i = icmp eq i32 %i.u, 0
  br i1 %.not36.i, label %nk_panel_layout.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.w = load float, ptr %i.v, align 4, !tbaa !480
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.w, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.y = load float, ptr %i.x, align 4, !tbaa !478
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> poison, float %i.y, i64 0
  %i.z = fadd float %i.l, -1.000000e+00
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.z, i64 1
  %i.aa = fadd float %storemerge.i, 1.000000e+00
  %.sroa.5.12.vec.insert.i = insertelement <2 x float> %.sroa.5.8.vec.insert.i, float %i.aa, i64 1
  tail call void @nk_fill_rect(ptr noundef nonnull %i.e, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.5.12.vec.insert.i, float noundef 0.000000e+00, i32 %.sroa.03.0.copyload.i)
  br label %nk_panel_layout.exit

nk_panel_layout.exit:                             ; preds = %bb.f, %bb.g
  %i.ab = icmp eq i32 %1, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr %4, ptr %i.ad, align 8, !tbaa !496
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %nk_panel_layout.exit
  %i.ae = icmp sgt i32 %3, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %3, 1
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.050 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ] ; 2 uses
  %.03849 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.139.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !54 ; 2 uses
  %i.ai = fcmp olt float %i.ah, 0.000000e+00      ; 2 uses
  %i.aj = fadd float %.050, %i.ah
  %i.ak = zext i1 %i.ai to i32
  %.139 = add nuw nsw i32 %.03849, %i.ak
  %.1 = select i1 %i.ai, float %.050, float %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !54 ; 2 uses
  %i.ao = fcmp olt float %i.an, 0.000000e+00      ; 2 uses
  %i.ap = fadd float %.1, %i.an
  %i.aq = zext i1 %i.ao to i32
  %.139.1 = add nuw nsw i32 %.139, %i.aq          ; 3 uses
  %.1.1 = select i1 %i.ao, float %.1, float %i.ap ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1066

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.050.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.03849.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.139.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod61 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.as = load float, ptr %i.ar, align 4, !tbaa !54 ; 2 uses
  %i.at = fcmp olt float %i.as, 0.000000e+00      ; 2 uses
  %i.au = fadd float %.050.epil.init, %i.as
  %i.av = zext i1 %i.at to i32
  %.139.epil = add nuw nsw i32 %.03849.epil.init, %i.av
  %.1.epil = select i1 %i.at, float %.050.epil.init, float %i.au
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %.038.lcssa = phi i32 [ 0, %bb.h ], [ %.139.1, %._crit_edge.loopexit.unr-lcssa ], [ %.139.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %.0.lcssa = phi float [ 0.000000e+00, %bb.h ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ]
  %i.aw = fsub float 1.000000e+00, %.0.lcssa      ; 2 uses
  %i.ax = fcmp ogt float %i.aw, 1.000000e+00
  %i.ay = select i1 %i.ax, float 1.000000e+00, float %i.aw ; 2 uses
  %i.az = fcmp ogt float %i.ay, 0.000000e+00      ; 2 uses
  %5 = select i1 %i.az, float %i.ay, float 0.000000e+00
  store i32 3, ptr %i.ac, align 8, !tbaa !545
  %i.ba = icmp ne i32 %.038.lcssa, 0
  %or.cond = select i1 %i.az, i1 %i.ba, i1 false
  %i.bb = uitofp nneg i32 %.038.lcssa to float
  %i.bc = fdiv float %5, %i.bb
  %i.bd = select i1 %or.cond, float %i.bc, float 0.000000e+00
  br label %bb.j

bb.i:                                             ; preds = %nk_panel_layout.exit
  store i32 7, ptr %i.ac, align 8, !tbaa !545
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sink = phi float [ 0.000000e+00, %bb.i ], [ %i.bd, %._crit_edge ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store float %.sink, ptr %i.be, align 8, !tbaa !497
  store <2 x float> zeroinitializer, ptr %i.r, align 8, !tbaa !54
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_layout_row_template_begin(ptr nofree noundef readonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 5 uses
  %.not21 = icmp eq ptr %i.b, null
  br i1 %.not21, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 10 uses
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %.sroa.03.0.copyload.i = load i32, ptr %i.f, align 8, !tbaa !56
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9648
  %.sroa.3.0.copyload.i = load float, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store i32 0, ptr %i.g, align 4, !tbaa !494
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !499
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !503
  %i.l = fadd float %i.i, %i.k                    ; 2 uses
  store float %i.l, ptr %i.j, align 4, !tbaa !503
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  store i32 1, ptr %i.m, align 8, !tbaa !495
  %i.n = fcmp oeq float %1, 0.000000e+00
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.p = load float, ptr %i.o, align 4, !tbaa !425 ; 2 uses
  %i.q = fcmp olt float %1, %i.p
  %..i = select i1 %i.q, float %i.p, float %1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi float [ %..i, %bb.e ], [ %1, %bb.d ]
  %storemerge.i = fadd float %.sroa.3.0.copyload.i, %.pn.i ; 2 uses
  store float %storemerge.i, ptr %i.h, align 8, !tbaa !499
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store float 0.000000e+00, ptr %i.r, align 8, !tbaa !544
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !488
  %i.u = and i32 %i.t, 2048
  %.not36.i = icmp eq i32 %i.u, 0
  br i1 %.not36.i, label %nk_panel_layout.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.w = load float, ptr %i.v, align 4, !tbaa !480
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.w, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.y = load float, ptr %i.x, align 4, !tbaa !478
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> poison, float %i.y, i64 0
  %i.z = fadd float %i.l, -1.000000e+00
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.z, i64 1
  %i.aa = fadd float %storemerge.i, 1.000000e+00
  %.sroa.5.12.vec.insert.i = insertelement <2 x float> %.sroa.5.8.vec.insert.i, float %i.aa, i64 1
  tail call void @nk_fill_rect(ptr noundef nonnull %i.e, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.5.12.vec.insert.i, float noundef 0.000000e+00, i32 %.sroa.03.0.copyload.i)
  br label %nk_panel_layout.exit

nk_panel_layout.exit:                             ; preds = %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 8, ptr %i.ab, align 8, !tbaa !545
  store i32 0, ptr %i.m, align 8, !tbaa !495
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i8 0, i64 40, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %nk_panel_layout.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_layout_row_template_push_dynamic(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 4 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i32, ptr %i.e, align 8, !tbaa !545
  %.not14 = icmp eq i32 %i.f, 8
  br i1 %.not14, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !495  ; 3 uses
  %i.i = icmp sgt i32 %i.h, 15
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 180
  %i.k = add nsw i32 %i.h, 1
  store i32 %i.k, ptr %i.g, align 8, !tbaa !495
  %i.l = sext i32 %i.h to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l
  store float -1.000000e+00, ptr %i.m, align 4, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.c, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_layout_row_template_push_variable(ptr nofree noundef readonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 4 uses
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i32, ptr %i.e, align 8, !tbaa !545
  %.not15 = icmp eq i32 %i.f, 8
  br i1 %.not15, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !495  ; 3 uses
  %i.i = icmp sgt i32 %i.h, 15
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = fneg float %1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 180
  %i.l = add nsw i32 %i.h, 1
  store i32 %i.l, ptr %i.g, align 8, !tbaa !495
  %i.m = sext i32 %i.h to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.m
  store float %i.j, ptr %i.n, align 4, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.c, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_layout_row_template_push_static(ptr nofree noundef readonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
