Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_textedit_locate_coord
define internal fastcc i32 @nk_textedit_locate_coord(ptr nofree noundef readonly captures(address_is_null) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, float noundef %4) unnamed_addr #20 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !626  ; 5 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.thread66

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.04578 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %bb.g ] ; 6 uses
  %.04877 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ae, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #50
  store i32 0, ptr %i.f, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #50
  %i.o = load i32, ptr %i.j, align 8, !tbaa !91
  %.not6.i.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i.i, label %nk_textedit_layout_row.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.m, align 8, !tbaa !93   ; 2 uses
  %.not7.i.i = icmp eq i64 %i.p, 0
  br i1 %.not7.i.i, label %nk_textedit_layout_row.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.r = shl i64 %i.p, 32
  %i.s = ashr exact i64 %i.r, 32
  br label %nk_textedit_layout_row.exit

nk_textedit_layout_row.exit:                      ; preds = %bb.b, %bb.c, %bb.d
  %.0.i20.i = phi i64 [ %i.s, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.0.i18.i = phi ptr [ %i.q, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  %i.t = getelementptr inbounds i8, ptr %.0.i18.i, i64 %.0.i20.i
  %i.u = call ptr @nk_str_at_const(ptr noundef nonnull readonly %i.i, i32 noundef %.04578, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e) ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = call fastcc <2 x float> @nk_text_calculate_text_bounds(ptr noundef readonly %3, ptr noundef %i.u, i32 noundef %i.y, float noundef %4, ptr noundef %i.h, ptr noundef null, ptr noundef %i.f) ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.z, i64 1
  %i.aa = load i32, ptr %i.f, align 4, !tbaa !55  ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #50
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %.thread66, label %bb.e

bb.e:                                             ; preds = %nk_textedit_layout_row.exit
  %i.ac = icmp eq i32 %.04578, 0
  %i.ad = fcmp olt float %2, %.04877
  %or.cond = and i1 %i.ad, %i.ac
  br i1 %or.cond, label %.thread66, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = fadd float %.04877, %.sroa.0.4.vec.extract.i ; 2 uses
  %i.af = fcmp olt float %2, %i.ae
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = add nuw nsw i32 %i.aa, %.04578          ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.k
  br i1 %i.ah, label %bb.b, label %.thread66, !llvm.loop !1263

bb.h:                                             ; preds = %bb.f
  %i.ai = fcmp olt float %1, 0.000000e+00
  br i1 %i.ai, label %.thread66, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.vec.extract.i.le = extractelement <2 x float> %i.z, i64 0
  %i.aj = fcmp olt float %1, %.sroa.0.0.vec.extract.i.le
  br i1 %i.aj, label %.lr.ph84, label %.loopexit

.lr.ph84:                                         ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph84, %bb.l
  %.183 = phi i32 [ 0, %.lr.ph84 ], [ %i.az, %bb.l ] ; 2 uses
  %.04682 = phi float [ 0.000000e+00, %.lr.ph84 ], [ %i.at, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  store i32 0, ptr %i.c, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  %i.am = add nuw nsw i32 %.183, %.04578          ; 2 uses
  %i.an = call ptr @nk_str_at_const(ptr noundef nonnull readonly %i.i, i32 noundef %i.am, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !139
  %i.ap = load float, ptr %i.al, align 8, !tbaa !140
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !55
  %i.ar = load ptr, ptr %3, align 8
  %i.as = call float %i.ao(ptr %i.ar, float noundef %i.ap, ptr noundef %i.an, i32 noundef %i.aq) #50, !inline_history !44 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  %i.at = fadd float %.04682, %i.as               ; 2 uses
  %i.au = fcmp uge float %1, %i.at
  br i1 %i.au, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = fmul float %i.as, 5.000000e-01
  %i.aw = fadd float %.04682, %i.av
  %i.ax = fcmp uge float %1, %i.aw
  %i.ay = zext i1 %i.ax to i32
  %spec.select = add nuw nsw i32 %i.am, %i.ay
  br label %.thread66

bb.l:                                             ; preds = %bb.j
  %i.az = add nuw nsw i32 %.183, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.az, %i.aa
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !1264

.loopexit:                                        ; preds = %bb.l, %bb.i
  %.2 = phi i32 [ %.04578, %bb.i ], [ %i.aa, %bb.l ]
  %i.ba = add nuw nsw i32 %.2, %i.aa              ; 2 uses
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i32 0, ptr %i.b, align 4, !tbaa !55
  %i.bc = call ptr @nk_str_at_const(ptr noundef nonnull readonly %i.i, i32 noundef %i.bb, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 0 uses
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  %i.be = icmp eq i32 %i.bd, 10
  %spec.select70 = select i1 %i.be, i32 %i.bb, i32 %i.ba
  br label %.thread66

.thread66:                                        ; preds = %nk_textedit_layout_row.exit, %bb.g, %bb.e, %bb.a, %.loopexit, %bb.k, %bb.h
  %.251 = phi i32 [ %spec.select, %bb.k ], [ %.04578, %bb.h ], [ %spec.select70, %.loopexit ], [ %i.k, %bb.a ], [ %i.k, %nk_textedit_layout_row.exit ], [ %i.k, %bb.g ], [ 0, %bb.e ]
  ret i32 %.251
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @nk_textedit_move_to_last(ptr nofree noundef captures(none) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !627  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !628  ; 4 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.b, ptr %i.c, align 8, !tbaa !628
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  %i.g = phi i32 [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load i32, ptr %i.h, align 8, !tbaa !626  ; 4 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.i) ; 3 uses
  %i.j = icmp sgt i32 %i.f, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.i, ptr %i.c, align 8, !tbaa !628
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi i32 [ %i.i, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.l = icmp eq i32 %spec.select, %i.k
  br i1 %i.l, label %bb.g, label %nk_textedit_clamp.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %spec.select, ptr %i.m, align 8, !tbaa !629
  br label %nk_textedit_clamp.exit

nk_textedit_clamp.exit:                           ; preds = %bb.g, %bb.f
  %i.n = phi i32 [ %spec.select, %bb.g ], [ %i.k, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.n, ptr %i.o, align 8, !tbaa !629
  store i32 %i.n, ptr %i.a, align 4, !tbaa !627
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 183
  store i8 0, ptr %i.p, align 1, !tbaa !625
  br label %bb.h

bb.h:                                             ; preds = %nk_textedit_clamp.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -2147483647, 2147483647) i32 @nk_textedit_move_to_word_previous(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load i32, ptr %i.g, align 8, !tbaa !629  ; 2 uses
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
  br label %.critedge, !llvm.loop !1265

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
  br i1 %i.s, label %nk_is_word_boundary.exit20.thread, label %.lr.ph35, !llvm.loop !1266

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
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !1266

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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !626  ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = load i32, ptr %i.i, align 8, !tbaa !629  ; 8 uses
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
  %smax = call i32 @llvm.smax.i32(i32 %i.j, i32 %i.h) ; 3 uses
  %exitcond.not55.not = icmp slt i32 %i.j, %i.h
  br i1 %exitcond.not55.not, label %.lr.ph57, label %.critedge2

bb.e:                                             ; preds = %nk_is_word_boundary.exit26
  %exitcond.not = icmp eq i32 %i.p, %smax
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph57, !llvm.loop !1267

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
end_hunk_0
