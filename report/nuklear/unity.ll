Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_list_view_begin:bb.a
  store i32 %spec.select, ptr %1, align 8, !tbaa !1077
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !509
  %i.bc = fdiv float %i.bb, %i.ay                 ; 2 uses
  %i.bd = fptosi float %i.bc to i32               ; 2 uses
  %i.be = sitofp i32 %i.bd to float
  %i.bf = fcmp ogt float %i.bc, %i.be
  %i.bg = zext i1 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, %i.bd
  %spec.select107 = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 0)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = sub nsw i32 %5, %spec.select
  %. = tail call i32 @llvm.smin.i32(i32 %spec.select107, i32 %i.bj) ; 2 uses
  store i32 %., ptr %i.bi, align 8, !tbaa !1078
  %i.bk = add nsw i32 %., %spec.select
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !1079
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %0, ptr %i.bm, align 8, !tbaa !565
  br label %nk_find_value.exit102.thread

nk_find_value.exit102.thread:                     ; preds = %._crit_edge.i97, %.loopexit, %bb.a, %bb.i
  %.074 = phi i1 [ %i.ap, %bb.i ], [ false, %.loopexit ], [ false, %bb.a ], [ false, %._crit_edge.i97 ]
  ret i1 %.074
}

; Function Attrs: nounwind uwtable
define void @nk_list_view_end(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !565  ; 3 uses
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18560
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !415
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !416  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !492
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !564
  %i.k = sitofp i32 %i.j to float
  %i.l = fadd float %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store float %i.l, ptr %i.m, align 4, !tbaa !503
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !563  ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !562
  %i.s = add i32 %i.r, %i.p
  store i32 %i.s, ptr %i.o, align 4, !tbaa !55
  tail call void @nk_group_scrolled_end(ptr noundef nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @nk_widget_bounds(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #36 {
bb.a:
  %1 = alloca %struct.nk_rect, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 6 uses
  %.not24.i = icmp eq ptr %i.d, null
  br i1 %.not24.i, label %nk_layout_peek.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !503 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 116 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !494  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.j = load i32, ptr %i.i, align 8, !tbaa !495
  %.not25.i = icmp slt i32 %i.h, %i.j
  br i1 %.not25.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.l = load float, ptr %i.k, align 8, !tbaa !499
  %i.m = fadd float %i.f, %i.l
  store float %i.m, ptr %i.e, align 4, !tbaa !503
  store i32 0, ptr %i.g, align 4, !tbaa !494
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call fastcc void @nk_layout_widget_space(ptr noundef nonnull %1, ptr noundef nonnull readonly %0, i32 noundef 0)
  %i.n = load i32, ptr %i.g, align 4, !tbaa !494
  %.not26.i = icmp eq i32 %i.n, 0
  br i1 %.not26.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.p = load float, ptr %i.o, align 8, !tbaa !544
  %i.q = load float, ptr %1, align 8, !tbaa !112
  %i.r = fsub float %i.q, %i.p
  store float %i.r, ptr %1, align 8, !tbaa !112
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store float %i.f, ptr %i.e, align 4, !tbaa !503
  store i32 %i.h, ptr %i.g, align 4, !tbaa !494
  %.sroa.0.0.copyload.pre = load <2 x float>, ptr %1, align 8, !tbaa !54
  %.sroa.3.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload.pre = load <2 x float>, ptr %.sroa.3.0..sroa_idx.phi.trans.insert, align 8, !tbaa !54
  br label %nk_layout_peek.exit

nk_layout_peek.exit:                              ; preds = %bb.c, %bb.h
  %.sroa.3.0.copyload = phi <2 x float> [ %.sroa.3.0.copyload.pre, %bb.h ], [ zeroinitializer, %bb.c ]
  %.sroa.0.0.copyload = phi <2 x float> [ %.sroa.0.0.copyload.pre, %bb.h ], [ zeroinitializer, %bb.c ]
  %i.s = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %i.t = insertvalue { <2 x float>, <2 x float> } %i.s, <2 x float> %.sroa.3.0.copyload, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %nk_layout_peek.exit
  %.fca.1.insert.merged = phi { <2 x float>, <2 x float> } [ %i.t, %nk_layout_peek.exit ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  ret { <2 x float>, <2 x float> } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @nk_widget_position(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #36 {
bb.a:
  %1 = alloca %struct.nk_rect, align 16           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 6 uses
  %.not24.i = icmp eq ptr %i.d, null
  br i1 %.not24.i, label %nk_layout_peek.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !503 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 116 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !494  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.j = load i32, ptr %i.i, align 8, !tbaa !495
  %.not25.i = icmp slt i32 %i.h, %i.j
  br i1 %.not25.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.l = load float, ptr %i.k, align 8, !tbaa !499
  %i.m = fadd float %i.f, %i.l
  store float %i.m, ptr %i.e, align 4, !tbaa !503
  store i32 0, ptr %i.g, align 4, !tbaa !494
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call fastcc void @nk_layout_widget_space(ptr noundef nonnull %1, ptr noundef nonnull readonly %0, i32 noundef 0)
  %i.n = load i32, ptr %i.g, align 4, !tbaa !494
  %.not26.i = icmp eq i32 %i.n, 0
  br i1 %.not26.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.p = load float, ptr %i.o, align 8, !tbaa !544
  %i.q = load float, ptr %1, align 16, !tbaa !112
  %i.r = fsub float %i.q, %i.p
  store float %i.r, ptr %1, align 16, !tbaa !112
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store float %i.f, ptr %i.e, align 4, !tbaa !503
  store i32 %i.h, ptr %i.g, align 4, !tbaa !494
  %.pre = load <4 x float>, ptr %1, align 16      ; 2 uses
  %i.s = extractelement <4 x float> %.pre, i64 1
  %i.t = shufflevector <4 x float> %.pre, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  br label %nk_layout_peek.exit

nk_layout_peek.exit:                              ; preds = %bb.c, %bb.h
  %i.u = phi float [ %i.s, %bb.h ], [ 0.000000e+00, %bb.c ]
  %.sroa.0.0.vec.insert.i = phi <2 x float> [ %i.t, %bb.h ], [ <float 0.000000e+00, float poison>, %bb.c ]
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.u, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %nk_layout_peek.exit
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %nk_layout_peek.exit ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @nk_widget_size(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #36 {
bb.a:
  %1 = alloca %struct.nk_rect, align 16           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 6 uses
  %.not24.i = icmp eq ptr %i.d, null
  br i1 %.not24.i, label %nk_layout_peek.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !503 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 116 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !494  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.j = load i32, ptr %i.i, align 8, !tbaa !495
  %.not25.i = icmp slt i32 %i.h, %i.j
  br i1 %.not25.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.l = load float, ptr %i.k, align 8, !tbaa !499
  %i.m = fadd float %i.f, %i.l
  store float %i.m, ptr %i.e, align 4, !tbaa !503
  store i32 0, ptr %i.g, align 4, !tbaa !494
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call fastcc void @nk_layout_widget_space(ptr noundef nonnull %1, ptr noundef nonnull readonly %0, i32 noundef 0)
  %i.n = load i32, ptr %i.g, align 4, !tbaa !494
  %.not26.i = icmp eq i32 %i.n, 0
  br i1 %.not26.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.p = load float, ptr %i.o, align 8, !tbaa !544
  %i.q = load float, ptr %1, align 16, !tbaa !112
  %i.r = fsub float %i.q, %i.p
  store float %i.r, ptr %1, align 16, !tbaa !112
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store float %i.f, ptr %i.e, align 4, !tbaa !503
  store i32 %i.h, ptr %i.g, align 4, !tbaa !494
  %.pre = load <4 x float>, ptr %1, align 16      ; 2 uses
  %i.s = extractelement <4 x float> %.pre, i64 3
  %i.t = shufflevector <4 x float> %.pre, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  br label %nk_layout_peek.exit

nk_layout_peek.exit:                              ; preds = %bb.c, %bb.h
  %i.u = phi float [ %i.s, %bb.h ], [ 0.000000e+00, %bb.c ]
  %.sroa.0.0.vec.insert.i = phi <2 x float> [ %i.t, %bb.h ], [ <float 0.000000e+00, float poison>, %bb.c ]
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.u, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %nk_layout_peek.exit
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %nk_layout_peek.exit ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define float @nk_widget_width(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #36 {
bb.a:
  %1 = alloca %struct.nk_rect, align 4            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_layout_peek.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %nk_layout_peek.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 5 uses
  %.not24.i = icmp eq ptr %i.d, null
  br i1 %.not24.i, label %nk_layout_peek.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !503 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 116 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !494  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.j = load i32, ptr %i.i, align 8, !tbaa !495
  %.not25.i = icmp slt i32 %i.h, %i.j
  br i1 %.not25.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.l = load float, ptr %i.k, align 8, !tbaa !499
  %i.m = fadd float %i.f, %i.l
  store float %i.m, ptr %i.e, align 4, !tbaa !503
  store i32 0, ptr %i.g, align 4, !tbaa !494
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call fastcc void @nk_layout_widget_space(ptr noundef nonnull %1, ptr noundef nonnull readonly %0, i32 noundef 0)
  store float %i.f, ptr %i.e, align 4, !tbaa !503
  store i32 %i.h, ptr %i.g, align 4, !tbaa !494
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !113
  br label %nk_layout_peek.exit

nk_layout_peek.exit:                              ; preds = %bb.c, %bb.f, %bb.a, %bb.b
  %.0 = phi float [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ], [ %.pre, %bb.f ], [ 0.000000e+00, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define float @nk_widget_height(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #36 {
bb.a:
  %1 = alloca %struct.nk_rect, align 4            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_layout_peek.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %nk_layout_peek.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 5 uses
  %.not24.i = icmp eq ptr %i.d, null
  br i1 %.not24.i, label %nk_layout_peek.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !503 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 116 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !494  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.j = load i32, ptr %i.i, align 8, !tbaa !495
  %.not25.i = icmp slt i32 %i.h, %i.j
  br i1 %.not25.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.l = load float, ptr %i.k, align 8, !tbaa !499
  %i.m = fadd float %i.f, %i.l
  store float %i.m, ptr %i.e, align 4, !tbaa !503
  store i32 0, ptr %i.g, align 4, !tbaa !494
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call fastcc void @nk_layout_widget_space(ptr noundef nonnull %1, ptr noundef nonnull readonly %0, i32 noundef 0)
  store float %i.f, ptr %i.e, align 4, !tbaa !503
  store i32 %i.h, ptr %i.g, align 4, !tbaa !494
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !115
  br label %nk_layout_peek.exit

nk_layout_peek.exit:                              ; preds = %bb.c, %bb.f, %bb.a, %bb.b
  %.0 = phi float [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ], [ %.pre, %bb.f ], [ 0.000000e+00, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @nk_widget_is_hovered(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #36 {
bb.a:
  %1 = alloca %struct.nk_rect, align 8            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_input_is_mouse_hovering_rect.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %nk_input_is_mouse_hovering_rect.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 9 uses
  %.not16 = icmp eq ptr %i.d, null
  br i1 %.not16, label %nk_input_is_mouse_hovering_rect.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18552
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !461
  %.not17 = icmp eq ptr %i.f, %i.b
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.d, align 8, !tbaa !487
  %i.h = and i32 %i.g, 244
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %nk_input_is_mouse_hovering_rect.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !54
  %i.k = load <2 x float>, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !54
  %i.l = fptosi <2 x float> %i.k to <2 x i32>
  %i.m = sitofp <2 x i32> %i.l to <2 x float>
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 3 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !503 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 116 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !494  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.s = load i32, ptr %i.r, align 8, !tbaa !495
  %.not25.i = icmp slt i32 %i.q, %i.s
  br i1 %.not25.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.u = load float, ptr %i.t, align 8, !tbaa !499
  %i.v = fadd float %i.o, %i.u
  store float %i.v, ptr %i.n, align 4, !tbaa !503
  store i32 0, ptr %i.p, align 4, !tbaa !494
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call fastcc void @nk_layout_widget_space(ptr noundef nonnull %1, ptr noundef nonnull readonly %0, i32 noundef 0)
  %i.w = load i32, ptr %i.p, align 4, !tbaa !494
  %.not26.i = icmp eq i32 %i.w, 0
  %.pre = load float, ptr %1, align 8, !tbaa !112 ; 2 uses
  br i1 %.not26.i, label %bb.i, label %nk_layout_peek.exit

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.y = load float, ptr %i.x, align 8, !tbaa !544
  %i.z = fsub float %.pre, %i.y                   ; 2 uses
  store float %i.z, ptr %1, align 8, !tbaa !112
  br label %nk_layout_peek.exit

nk_layout_peek.exit:                              ; preds = %bb.h, %bb.i
  %i.aa = phi float [ %.pre, %bb.h ], [ %i.z, %bb.i ]
  store float %i.o, ptr %i.n, align 4, !tbaa !503
  store i32 %i.q, ptr %i.p, align 4, !tbaa !494
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !114
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.ad, align 8, !tbaa !54
  %i.af = insertelement <4 x float> poison, float %i.aa, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.ac, i64 3 ; 2 uses
  %i.ah = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = fptosi <4 x float> %i.ah to <4 x i32>
  %i.aj = sitofp <4 x i32> %i.ai to <4 x float>   ; 2 uses
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.al = shufflevector <2 x float> %i.m, <2 x float> %i.ae, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.am = fadd <4 x float> %i.ak, %i.al
  %i.an = shufflevector <4 x float> %i.ag, <4 x float> %i.aj, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
end_hunk_0
begin_hunk_1_@nk_textedit_move_to_last:bb.a

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi i32 [ %i.i, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.l = icmp eq i32 %spec.select, %i.k
  br i1 %i.l, label %bb.g, label %nk_textedit_clamp.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %spec.select, ptr %i.m, align 8, !tbaa !630
  br label %nk_textedit_clamp.exit

nk_textedit_clamp.exit:                           ; preds = %bb.g, %bb.f
  %i.n = phi i32 [ %spec.select, %bb.g ], [ %i.k, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.n, ptr %i.o, align 8, !tbaa !630
  store i32 %i.n, ptr %i.a, align 4, !tbaa !628
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 183
  store i8 0, ptr %i.p, align 1, !tbaa !626
  br label %bb.h

bb.h:                                             ; preds = %nk_textedit_clamp.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @nk_textedit_move_to_word_previous(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load i32, ptr %i.g, align 8, !tbaa !630  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #50
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = call ptr @nk_str_at_rune(ptr noundef nonnull readonly %i.k, i32 noundef %i.j, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e)
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.lr.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.f, align 4, !tbaa !55
  switch i32 %i.m, label %nk_is_word_boundary.exit [
    i32 32, label %.lr.ph
    i32 13, label %.lr.ph
    i32 12, label %.lr.ph
    i32 11, label %.lr.ph
    i32 10, label %.lr.ph
    i32 9, label %.lr.ph
    i32 12288, label %.lr.ph
  ]

nk_is_word_boundary.exit:                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #50
  br label %.critedge

.lr.ph:                                           ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #50
  br label %bb.d

.critedge25:                                      ; preds = %bb.e, %bb.d, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  %i.n = icmp samesign ugt i32 %.027, 1
  br i1 %i.n, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph, %.critedge25
  %.027 = phi i32 [ %i.j, %.lr.ph ], [ %i.o, %.critedge25 ] ; 2 uses
  %i.o = add nsw i32 %.027, -1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  %i.p = call ptr @nk_str_at_rune(ptr noundef nonnull readonly %i.k, i32 noundef %i.o, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  %.not.i15 = icmp eq ptr %i.p, null
  br i1 %.not.i15, label %.critedge25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.d, align 4, !tbaa !55
  switch i32 %i.q, label %nk_is_word_boundary.exit17 [
    i32 32, label %.critedge25
    i32 13, label %.critedge25
    i32 12, label %.critedge25
    i32 11, label %.critedge25
    i32 10, label %.critedge25
    i32 9, label %.critedge25
    i32 12288, label %.critedge25
  ]

nk_is_word_boundary.exit17:                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  br label %.critedge, !llvm.loop !1264

.critedge:                                        ; preds = %.critedge25, %nk_is_word_boundary.exit17, %nk_is_word_boundary.exit
  %.1 = phi i32 [ %i.o, %nk_is_word_boundary.exit17 ], [ %i.j, %nk_is_word_boundary.exit ], [ 0, %.critedge25 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.r = icmp slt i32 %.1, 1
  br i1 %i.r, label %nk_is_word_boundary.exit20.thread, label %.lr.ph35

bb.f:                                             ; preds = %nk_is_word_boundary.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.s = icmp slt i32 %.234, 2
  br i1 %i.s, label %nk_is_word_boundary.exit20.thread, label %.lr.ph35, !llvm.loop !1265

.lr.ph35:                                         ; preds = %.critedge, %bb.f
  %.234 = phi i32 [ %i.t, %bb.f ], [ %.1, %.critedge ] ; 10 uses
  %i.t = add nsw i32 %.234, -1                    ; 3 uses
  %i.u = call ptr @nk_str_at_rune(ptr noundef nonnull readonly %i.k, i32 noundef %i.t, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %.not.i18 = icmp eq ptr %i.u, null
  br i1 %.not.i18, label %nk_is_word_boundary.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph35
  %i.v = load i32, ptr %i.b, align 4, !tbaa !55   ; 2 uses
  switch i32 %i.v, label %nk_is_word_boundary.exit20 [
    i32 32, label %nk_is_word_boundary.exit20.thread
    i32 13, label %nk_is_word_boundary.exit20.thread
    i32 12, label %nk_is_word_boundary.exit20.thread
    i32 11, label %nk_is_word_boundary.exit20.thread
    i32 10, label %nk_is_word_boundary.exit20.thread
    i32 9, label %nk_is_word_boundary.exit20.thread
  ]

nk_is_word_boundary.exit20.thread:                ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %.lr.ph35, %bb.f, %.critedge
  %.2.lcssa = phi i32 [ %.1, %.critedge ], [ %.234, %bb.g ], [ %.234, %bb.g ], [ %.234, %bb.g ], [ %.234, %bb.g ], [ %.234, %bb.g ], [ %.234, %bb.g ], [ %.234, %.lr.ph35 ], [ %i.t, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %.loopexit

nk_is_word_boundary.exit20:                       ; preds = %bb.g
  %.not = icmp eq i32 %i.v, 12288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !1265

.loopexit:                                        ; preds = %nk_is_word_boundary.exit20, %nk_is_word_boundary.exit20.thread, %bb.a
  %.011 = phi i32 [ %.2.lcssa, %nk_is_word_boundary.exit20.thread ], [ 0, %bb.a ], [ %.234, %nk_is_word_boundary.exit20 ]
  ret i32 %.011
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @nk_textedit_move_to_word_next(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !627  ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = load i32, ptr %i.i, align 8, !tbaa !630  ; 8 uses
  %i.k = icmp slt i32 %i.j, %i.h
  br i1 %i.k, label %bb.b, label %.critedge2

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #50
  %i.l = icmp slt i32 %i.j, 0
  br i1 %i.l, label %nk_is_word_boundary.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = call ptr @nk_str_at_rune(ptr noundef nonnull readonly %i.m, i32 noundef %i.j, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e)
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %nk_is_word_boundary.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.f, align 4, !tbaa !55   ; 2 uses
  switch i32 %i.o, label %nk_is_word_boundary.exit [
    i32 32, label %nk_is_word_boundary.exit.thread
    i32 13, label %nk_is_word_boundary.exit.thread
    i32 12, label %nk_is_word_boundary.exit.thread
    i32 11, label %nk_is_word_boundary.exit.thread
    i32 10, label %nk_is_word_boundary.exit.thread
    i32 9, label %nk_is_word_boundary.exit.thread
  ]

nk_is_word_boundary.exit.thread:                  ; preds = %bb.b, %bb.c, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #50
  br label %.critedge

nk_is_word_boundary.exit:                         ; preds = %bb.d
  %.not = icmp eq i32 %i.o, 12288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #50
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %nk_is_word_boundary.exit
  %smax = call i32 @llvm.smax.i32(i32 %i.h, i32 %i.j) ; 3 uses
  %exitcond.not55.not = icmp slt i32 %i.j, %i.h
  br i1 %exitcond.not55.not, label %.lr.ph57, label %.critedge2

bb.e:                                             ; preds = %nk_is_word_boundary.exit26
  %exitcond.not = icmp eq i32 %i.p, %smax
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph57, !llvm.loop !1266

.lr.ph57:                                         ; preds = %.preheader, %bb.e
  %.056 = phi i32 [ %i.p, %bb.e ], [ %i.j, %.preheader ]
  %i.p = add i32 %.056, 1                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  %i.q = call ptr @nk_str_at_rune(ptr noundef nonnull readonly %i.m, i32 noundef %i.p, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  %.not.i24 = icmp eq ptr %i.q, null
  br i1 %.not.i24, label %nk_is_word_boundary.exit26.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph57
  %i.r = load i32, ptr %i.d, align 4, !tbaa !55   ; 2 uses
  switch i32 %i.r, label %nk_is_word_boundary.exit26 [
    i32 32, label %nk_is_word_boundary.exit26.thread
    i32 13, label %nk_is_word_boundary.exit26.thread
    i32 12, label %nk_is_word_boundary.exit26.thread
    i32 11, label %nk_is_word_boundary.exit26.thread
    i32 10, label %nk_is_word_boundary.exit26.thread
    i32 9, label %nk_is_word_boundary.exit26.thread
  ]

nk_is_word_boundary.exit26.thread:                ; preds = %.lr.ph57, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  br label %.critedge

nk_is_word_boundary.exit26:                       ; preds = %bb.f
  %.not34 = icmp eq i32 %i.r, 12288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  br i1 %.not34, label %.critedge, label %bb.e, !llvm.loop !1266

.critedge:                                        ; preds = %nk_is_word_boundary.exit26, %nk_is_word_boundary.exit26.thread, %nk_is_word_boundary.exit.thread, %nk_is_word_boundary.exit
  %.1 = phi i32 [ %i.j, %nk_is_word_boundary.exit ], [ %i.j, %nk_is_word_boundary.exit.thread ], [ %i.p, %nk_is_word_boundary.exit26.thread ], [ %i.p, %nk_is_word_boundary.exit26 ] ; 3 uses
  %i.s = icmp slt i32 %.1, %i.h
  br i1 %i.s, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.g

.critedge35:                                      ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  %exitcond41.not = icmp eq i32 %i.u, %i.h
  br i1 %exitcond41.not, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.critedge35
  %.238 = phi i32 [ %.1, %.lr.ph ], [ %i.u, %.critedge35 ] ; 2 uses
  %i.u = add i32 %.238, 1                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.v = icmp slt i32 %.238, -1
  br i1 %i.v, label %.critedge35, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = call ptr @nk_str_at_rune(ptr noundef nonnull readonly %i.t, i32 noundef %i.u, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %.not.i27 = icmp eq ptr %i.w, null
  br i1 %.not.i27, label %.critedge35, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr %i.b, align 4, !tbaa !55
  switch i32 %i.x, label %nk_is_word_boundary.exit29 [
    i32 32, label %.critedge35
    i32 13, label %.critedge35
    i32 12, label %.critedge35
    i32 11, label %.critedge35
    i32 10, label %.critedge35
    i32 9, label %.critedge35
    i32 12288, label %.critedge35
  ]

nk_is_word_boundary.exit29:                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %.critedge2, !llvm.loop !1267

.critedge2:                                       ; preds = %bb.e, %.critedge35, %.preheader, %.critedge, %nk_is_word_boundary.exit29, %bb.a
  %.018 = phi i32 [ %i.h, %bb.a ], [ %i.u, %nk_is_word_boundary.exit29 ], [ %.1, %.critedge ], [ %smax, %.preheader ], [ %i.h, %.critedge35 ], [ %smax, %bb.e ]
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_textedit_find_charpos(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef range(i32 0, 256) %3, ptr nofree noundef readonly captures(address_is_null) %4, float noundef %5) unnamed_addr #20 {
.loopexit46.i.i.thread:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %i.j = alloca ptr, align 8                      ; 3 uses
  %i.k = alloca i32, align 4                      ; 3 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 3 uses
  %i.n = alloca ptr, align 8                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !627  ; 2 uses
  %i.q = icmp eq i32 %2, %i.p
  br i1 %i.q, label %bb.a, label %bb.g

bb.a:                                             ; preds = %.loopexit46.i.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #50
  store i32 0, ptr %i.l, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #50
  %.not6.i.i = icmp eq i32 %2, 0
  br i1 %.not6.i.i, label %nk_textedit_layout_row.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.s = load i64, ptr %i.r, align 8, !tbaa !93   ; 2 uses
  %.not7.i.i = icmp eq i64 %i.s, 0
  br i1 %.not7.i.i, label %nk_textedit_layout_row.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !94
  %i.v = shl i64 %i.s, 32
  %i.w = ashr exact i64 %i.v, 32
  br label %nk_textedit_layout_row.exit

nk_textedit_layout_row.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  %.0.i20.i = phi i64 [ %i.w, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.0.i18.i = phi ptr [ %i.u, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.0.i18.i, i64 %.0.i20.i
  %i.z = call ptr @nk_str_at_const(ptr noundef nonnull readonly %i.x, i32 noundef 0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.k) ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = call fastcc <2 x float> @nk_text_calculate_text_bounds(ptr noundef readonly %4, ptr noundef %i.z, i32 noundef %i.ad, float noundef %5, ptr noundef %i.n, ptr noundef null, ptr noundef %i.l) ; 2 uses
  %i.af = load i32, ptr %i.l, align 4, !tbaa !55  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #50
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %nk_textedit_layout_row.exit
  %i.ag = icmp sgt i32 %2, 0
  br i1 %i.ag, label %.lr.ph91, label %._crit_edge

.lr.ph91:                                         ; preds = %.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph91, %nk_textedit_layout_row.exit63
  %.090 = phi i32 [ 0, %.lr.ph91 ], [ %i.ak, %nk_textedit_layout_row.exit63 ] ; 2 uses
  %i.aj = phi i32 [ %i.af, %.lr.ph91 ], [ %i.ax, %nk_textedit_layout_row.exit63 ]
  %i.ak = add nsw i32 %i.aj, %.090                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #50
  store i32 0, ptr %i.h, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #50
  %i.al = load i32, ptr %i.o, align 8, !tbaa !91
  %.not6.i.i57 = icmp eq i32 %i.al, 0
  br i1 %.not6.i.i57, label %nk_textedit_layout_row.exit63, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load i64, ptr %i.ah, align 8, !tbaa !93 ; 2 uses
  %.not7.i.i58 = icmp eq i64 %i.am, 0
  br i1 %.not7.i.i58, label %nk_textedit_layout_row.exit63, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !94
  %i.ao = shl i64 %i.am, 32
  %i.ap = ashr exact i64 %i.ao, 32
  br label %nk_textedit_layout_row.exit63

nk_textedit_layout_row.exit63:                    ; preds = %bb.d, %bb.e, %bb.f
  %.0.i20.i59 = phi i64 [ %i.ap, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.0.i18.i60 = phi ptr [ %i.an, %bb.f ], [ null, %bb.e ], [ null, %bb.d ]
  %i.aq = getelementptr inbounds i8, ptr %.0.i18.i60, i64 %.0.i20.i59
  %i.ar = call ptr @nk_str_at_const(ptr noundef nonnull readonly %i.x, i32 noundef %i.ak, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g) ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = call fastcc <2 x float> @nk_text_calculate_text_bounds(ptr noundef readonly %4, ptr noundef %i.ar, i32 noundef %i.av, float noundef %5, ptr noundef %i.j, ptr noundef null, ptr noundef %i.h)
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !55  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #50
  %i.ay = icmp slt i32 %i.ak, %2
end_hunk_1
