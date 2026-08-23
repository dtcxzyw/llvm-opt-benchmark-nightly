Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/psnames?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ps_unicodes_init:bb.a
.fold.split8.i:                                   ; preds = %bb.o
  br label %bb.p

.fold.split9.i:                                   ; preds = %bb.o
  br label %bb.p

.fold.split10.i:                                  ; preds = %bb.o
  br label %bb.p

.fold.split11.i:                                  ; preds = %bb.o
  br label %bb.p

.fold.split12.i:                                  ; preds = %bb.o
  br label %bb.p

.fold.split13.i:                                  ; preds = %bb.o
  br label %bb.p

.fold.split14.i:                                  ; preds = %bb.o
  br label %bb.p

.fold.split15.i:                                  ; preds = %bb.o
  br label %bb.p

bb.p:                                             ; preds = %.fold.split15.i, %.fold.split14.i, %.fold.split13.i, %.fold.split12.i, %.fold.split11.i, %.fold.split10.i, %.fold.split9.i, %.fold.split8.i, %.fold.split.i, %bb.o
  %.lcssa.i62.sroa.phi = phi ptr [ %.sroa.0103, %bb.o ], [ %.sroa.27, %.fold.split14.i ], [ %.sroa.6104, %.fold.split.i ], [ %.sroa.9, %.fold.split8.i ], [ %.sroa.12105, %.fold.split9.i ], [ %.sroa.15, %.fold.split10.i ], [ %.sroa.18106, %.fold.split11.i ], [ %.sroa.21, %.fold.split12.i ], [ %.sroa.24, %.fold.split13.i ], [ %.sroa.30, %.fold.split15.i ]
  store i32 2, ptr %.lcssa.i62.sroa.phi, align 4, !tbaa !22
  br label %ps_check_extra_glyph_unicode.exit

ps_check_extra_glyph_unicode.exit:                ; preds = %bb.o, %bb.p
  store i32 %i.aq, ptr %.095, align 4, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %.095, i64 4
  store i32 %.05193, ptr %i.as, align 4, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %.095, i64 8
  br label %bb.q

bb.q:                                             ; preds = %ps_check_extra_glyph_unicode.exit, %ps_check_extra_glyph_name.exit
  %.1 = phi ptr [ %i.at, %ps_check_extra_glyph_unicode.exit ], [ %.095, %ps_check_extra_glyph_name.exit ] ; 2 uses
  br i1 %.not61, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %4(ptr noundef %5, ptr noundef nonnull %i.i) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.c, %bb.b
  %.2 = phi ptr [ %.1, %bb.r ], [ %.1, %bb.q ], [ %.095, %bb.c ], [ %.095, %bb.b ] ; 5 uses
  %i.au = add nuw i32 %.05193, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %2
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !26

bb.t:                                             ; preds = %.preheader
  store i32 916, ptr %.2, align 4, !tbaa !23
  %.sroa.0.0..sroa.0.0..sroa.0.0. = load i32, ptr %.sroa.0, align 16, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %.2, i64 4
  store i32 %.sroa.0.0..sroa.0.0..sroa.0.0., ptr %i.av, align 4, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %.2, i64 8
  br label %.preheader.thread

.preheader.thread:                                ; preds = %.preheader92, %.preheader, %bb.t
  %.4 = phi ptr [ %i.aw, %bb.t ], [ %.2, %.preheader ], [ %i.e, %.preheader92 ] ; 4 uses
  %.sroa.6104.0..sroa.6104.0..sroa.6104.4. = load i32, ptr %.sroa.6104, align 4, !tbaa !22
  %i.ax = icmp eq i32 %.sroa.6104.0..sroa.6104.0..sroa.6104.4., 1
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.preheader.thread
  store i32 937, ptr %.4, align 4, !tbaa !23
  %.sroa.4.0..sroa.4.0..sroa.4.4. = load i32, ptr %.sroa.4, align 4, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %.4, i64 4
  store i32 %.sroa.4.0..sroa.4.0..sroa.4.4., ptr %i.ay, align 4, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %.4, i64 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.preheader.thread
  %.4.1 = phi ptr [ %i.az, %bb.u ], [ %.4, %.preheader.thread ] ; 4 uses
  %.sroa.9.0..sroa.9.0..sroa.9.8. = load i32, ptr %.sroa.9, align 8, !tbaa !22
  %i.ba = icmp eq i32 %.sroa.9.0..sroa.9.0..sroa.9.8., 1
  br i1 %i.ba, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 8725, ptr %.4.1, align 4, !tbaa !23
  %.sroa.6.0..sroa.6.0..sroa.6.8. = load i32, ptr %.sroa.6, align 8, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %.4.1, i64 4
  store i32 %.sroa.6.0..sroa.6.0..sroa.6.8., ptr %i.bb, align 4, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %.4.1, i64 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.4.2 = phi ptr [ %i.bc, %bb.w ], [ %.4.1, %bb.v ] ; 4 uses
  %.sroa.12105.0..sroa.12105.0..sroa.12105.12. = load i32, ptr %.sroa.12105, align 4, !tbaa !22
  %i.bd = icmp eq i32 %.sroa.12105.0..sroa.12105.0..sroa.12105.12., 1
  br i1 %i.bd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 173, ptr %.4.2, align 4, !tbaa !23
  %.sroa.8.0..sroa.8.0..sroa.8.12. = load i32, ptr %.sroa.8, align 4, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %.4.2, i64 4
  store i32 %.sroa.8.0..sroa.8.0..sroa.8.12., ptr %i.be, align 4, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %.4.2, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.4.3 = phi ptr [ %i.bf, %bb.y ], [ %.4.2, %bb.x ] ; 4 uses
  %.sroa.15.0..sroa.15.0..sroa.15.16. = load i32, ptr %.sroa.15, align 16, !tbaa !22
  %i.bg = icmp eq i32 %.sroa.15.0..sroa.15.0..sroa.15.16., 1
  br i1 %i.bg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 713, ptr %.4.3, align 4, !tbaa !23
  %.sroa.10.0..sroa.10.0..sroa.10.16. = load i32, ptr %.sroa.10, align 16, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %.4.3, i64 4
  store i32 %.sroa.10.0..sroa.10.0..sroa.10.16., ptr %i.bh, align 4, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %.4.3, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.4.4 = phi ptr [ %i.bi, %bb.aa ], [ %.4.3, %bb.z ] ; 4 uses
  %.sroa.18106.0..sroa.18106.0..sroa.18106.20. = load i32, ptr %.sroa.18106, align 4, !tbaa !22
  %i.bj = icmp eq i32 %.sroa.18106.0..sroa.18106.0..sroa.18106.20., 1
  br i1 %i.bj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 956, ptr %.4.4, align 4, !tbaa !23
  %.sroa.12.0..sroa.12.0..sroa.12.20. = load i32, ptr %.sroa.12, align 4, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %.4.4, i64 4
  store i32 %.sroa.12.0..sroa.12.0..sroa.12.20., ptr %i.bk, align 4, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %.4.4, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.4.5 = phi ptr [ %i.bl, %bb.ac ], [ %.4.4, %bb.ab ] ; 4 uses
  %.sroa.21.0..sroa.21.0..sroa.21.24. = load i32, ptr %.sroa.21, align 8, !tbaa !22
  %i.bm = icmp eq i32 %.sroa.21.0..sroa.21.0..sroa.21.24., 1
  br i1 %i.bm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 8729, ptr %.4.5, align 4, !tbaa !23
  %.sroa.14.0..sroa.14.0..sroa.14.24. = load i32, ptr %.sroa.14, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %.4.5, i64 4
  store i32 %.sroa.14.0..sroa.14.0..sroa.14.24., ptr %i.bn, align 4, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %.4.5, i64 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.4.6 = phi ptr [ %i.bo, %bb.ae ], [ %.4.5, %bb.ad ] ; 4 uses
  %.sroa.24.0..sroa.24.0..sroa.24.28. = load i32, ptr %.sroa.24, align 4, !tbaa !22
  %i.bp = icmp eq i32 %.sroa.24.0..sroa.24.0..sroa.24.28., 1
  br i1 %i.bp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 160, ptr %.4.6, align 4, !tbaa !23
  %.sroa.16.0..sroa.16.0..sroa.16.28. = load i32, ptr %.sroa.16, align 4, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %.4.6, i64 4
  store i32 %.sroa.16.0..sroa.16.0..sroa.16.28., ptr %i.bq, align 4, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %.4.6, i64 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.4.7 = phi ptr [ %i.br, %bb.ag ], [ %.4.6, %bb.af ] ; 4 uses
  %.sroa.27.0..sroa.27.0..sroa.27.32. = load i32, ptr %.sroa.27, align 16, !tbaa !22
  %i.bs = icmp eq i32 %.sroa.27.0..sroa.27.0..sroa.27.32., 1
  br i1 %i.bs, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 538, ptr %.4.7, align 4, !tbaa !23
  %.sroa.18.0..sroa.18.0..sroa.18.32. = load i32, ptr %.sroa.18, align 16, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %.4.7, i64 4
  store i32 %.sroa.18.0..sroa.18.0..sroa.18.32., ptr %i.bt, align 4, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %.4.7, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.4.8 = phi ptr [ %i.bu, %bb.ai ], [ %.4.7, %bb.ah ] ; 4 uses
  %.sroa.30.0..sroa.30.0..sroa.30.36. = load i32, ptr %.sroa.30, align 4, !tbaa !22
  %i.bv = icmp eq i32 %.sroa.30.0..sroa.30.0..sroa.30.36., 1
  br i1 %i.bv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 539, ptr %.4.8, align 4, !tbaa !23
  %.sroa.20.0..sroa.20.0..sroa.20.36. = load i32, ptr %.sroa.20, align 4, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %.4.8, i64 4
  store i32 %.sroa.20.0..sroa.20.0..sroa.20.36., ptr %i.bw, align 4, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %.4.8, i64 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.4.9 = phi ptr [ %i.bx, %bb.ak ], [ %.4.8, %bb.aj ]
  %i.by = load ptr, ptr %i.f, align 8, !tbaa !21  ; 4 uses
  %i.bz = ptrtoint ptr %.4.9 to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = lshr exact i64 %i.cb, 3                 ; 2 uses
  %i.cd = trunc i64 %i.cc to i32                  ; 3 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @ft_mem_free(ptr noundef %0, ptr noundef %i.by) #10
  store ptr null, ptr %i.f, align 8, !tbaa !21
  %i.cf = load i32, ptr %i.a, align 4, !tbaa !22  ; 2 uses
  %.not57 = icmp eq i32 %i.cf, 0
  br i1 %.not57, label %6, label %bb.ap

6:                                                ; preds = %bb.am
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.cg = lshr i32 %2, 1
  %i.ch = icmp ugt i32 %i.cg, %i.cd
  %i.ci = and i64 %i.cc, 4294967295               ; 2 uses
  br i1 %i.ch, label %bb.ao, label %._crit_edge

bb.ao:                                            ; preds = %bb.an
  %i.cj = call ptr @ft_mem_qrealloc(ptr noundef %0, i64 noundef 8, i64 noundef %i.d, i64 noundef %i.ci, ptr noundef %i.by, ptr noundef nonnull %i.a) #10 ; 2 uses
  store ptr %i.cj, ptr %i.f, align 8, !tbaa !21
  store i32 0, ptr %i.a, align 4, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.an, %bb.ao
  %i.ck = phi ptr [ %i.cj, %bb.ao ], [ %i.by, %bb.an ]
  call void @qsort(ptr noundef %i.ck, i64 noundef %i.ci, i64 noundef 8, ptr noundef nonnull @compare_uni_maps) #10
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !22
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %6, %._crit_edge
  %.pre = phi i32 [ %i.cf, %bb.am ], [ 163, %6 ], [ %.pre.pre, %._crit_edge ]
  store i32 %i.cd, ptr %i.b, align 8, !tbaa !12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.a
  %i.cl = phi i32 [ %.pre, %bb.ap ], [ %i.g, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0103)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6104)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12105)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18106)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.cl
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @ps_unicodes_char_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %.not62 = icmp eq i32 %i.b, 0
  br i1 %.not62, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.03261 = phi ptr [ %.1, %bb.b ], [ %i.g, %.lr.ph.preheader ] ; 6 uses
  %.03360 = phi ptr [ %.134, %bb.b ], [ %i.h, %.lr.ph.preheader ]
  %.03659 = phi ptr [ %.137, %bb.b ], [ %i.d, %.lr.ph.preheader ]
  %.03958 = phi ptr [ %spec.select, %bb.b ], [ null, %.lr.ph.preheader ]
  %i.i = load i32, ptr %.03261, align 4, !tbaa !23 ; 2 uses
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %.thread52, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = and i32 %i.i, 2147483647                 ; 3 uses
  %i.l = icmp eq i32 %i.k, %1
  %spec.select = select i1 %i.l, ptr %.03261, ptr %.03958 ; 3 uses
  %i.m = icmp ult i32 %i.k, %1                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03261, i64 8
  %.137 = select i1 %i.m, ptr %i.n, ptr %.03659   ; 5 uses
  %.134 = select i1 %i.m, ptr %.03360, ptr %.03261 ; 4 uses
  %i.o = sub i32 %1, %i.k
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.03261, i64 %i.p ; 3 uses
  %.not = icmp uge ptr %i.q, %.134
  %i.r = icmp ult ptr %i.q, %.137
  %or.cond = or i1 %.not, %i.r
  %i.s = ptrtoint ptr %.134 to i64
  %i.t = ptrtoint ptr %.137 to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr i64 %i.u, 4
  %i.w = getelementptr inbounds [8 x i8], ptr %.137, i64 %i.v
  %.1 = select i1 %or.cond, ptr %i.w, ptr %i.q
  %i.x = icmp ult ptr %.137, %.134
  br i1 %i.x, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.not46 = icmp eq ptr %spec.select, null
  br i1 %.not46, label %._crit_edge.thread, label %.thread52

.thread52:                                        ; preds = %.lr.ph, %._crit_edge
  %.355 = phi ptr [ %spec.select, %._crit_edge ], [ %.03261, %.lr.ph ]
  %i.y = getelementptr inbounds nuw i8, ptr %.355, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %.thread52
  %.042 = phi i32 [ %i.z, %.thread52 ], [ 0, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.042
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @ps_unicodes_char_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #3 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !22
  %i.b = add i32 %i.a, 1                          ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12   ; 4 uses
  %.not63 = icmp eq i32 %i.d, 0
  br i1 %.not63, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = lshr i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.04161 = phi i32 [ %i.e, %.lr.ph ], [ %.1, %bb.f ] ; 4 uses
  %.04260 = phi i32 [ %i.d, %.lr.ph ], [ %.143, %bb.f ]
  %.04459 = phi i32 [ 0, %.lr.ph ], [ %.145, %bb.f ]
  %.04858 = phi i32 [ 0, %.lr.ph ], [ %.149, %bb.f ]
  %i.h = zext i32 %.04161 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !23   ; 2 uses
  %i.k = icmp eq i32 %i.j, %i.b
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.n = and i32 %i.j, 2147483647                 ; 3 uses
  %i.o = icmp eq i32 %i.n, %i.b
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.149 = phi i32 [ %i.q, %bb.e ], [ %.04858, %bb.d ] ; 3 uses
  %i.r = icmp ult i32 %i.n, %i.b                  ; 2 uses
  %i.s = add i32 %.04161, 1
  %.145 = select i1 %i.r, i32 %i.s, i32 %.04459   ; 6 uses
  %.143 = select i1 %i.r, i32 %.04260, i32 %.04161 ; 4 uses
  %i.t = sub i32 %i.b, %i.n
  %i.u = add i32 %i.t, %.04161                    ; 3 uses
  %.not55 = icmp uge i32 %i.u, %.143
  %i.v = icmp ult i32 %i.u, %.145
  %or.cond = or i1 %.not55, %i.v
  %i.w = sub i32 %.143, %.145
  %i.x = lshr i32 %i.w, 1
  %i.y = add i32 %i.x, %.145
  %.1 = select i1 %or.cond, i32 %i.y, i32 %i.u
  %i.z = icmp ult i32 %.145, %.143
  br i1 %i.z, label %bb.b, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.f
  %.not = icmp eq i32 %.149, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.h

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.044.lcssa71 = phi i32 [ %.145, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.aa = icmp ult i32 %.044.lcssa71, %i.d
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ad = zext i32 %.044.lcssa71 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !25
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !23
  %i.ai = and i32 %i.ah, 2147483647
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %._crit_edge, %bb.g, %._crit_edge.thread
  %.3 = phi i32 [ %i.m, %bb.c ], [ %.149, %._crit_edge ], [ %i.ag, %bb.g ], [ 0, %._crit_edge.thread ]
  %.147 = phi i32 [ %i.b, %bb.c ], [ %i.b, %._crit_edge ], [ %i.ai, %bb.g ], [ 0, %._crit_edge.thread ]
  store i32 %.147, ptr %1, align 4, !tbaa !22
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @ps_get_macintosh_name(i32 noundef %0) #4 {
bb.a:
  %i.a = icmp ugt i32 %0, 257
  %spec.store.select = select i1 %i.a, i32 0, i32 %0
  %i.b = zext nneg i32 %spec.store.select to i64
  %i.c = getelementptr inbounds nuw [2 x i8], ptr @ft_mac_names, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !28
  %i.e = sext i16 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr @ft_standard_glyph_names, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal ptr @ps_get_standard_strings(i32 noundef %0) #4 {
bb.a:
  %i.a = icmp ugt i32 %0, 390
  br i1 %i.a, label %bb.c, label %bb.b

end_hunk_0
