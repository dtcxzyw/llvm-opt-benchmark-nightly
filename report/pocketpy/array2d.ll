Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/array2d?download=true
inline.NumInlined: 65
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@c11_chunked_array2d__new_chunk:bb.a
  %spec.select55.i.i = getelementptr inbounds nuw i8, ptr %.7.i.i, i64 %spec.select55.idx.i.i
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  unreachable

bb.j:                                             ; preds = %bb.h, %._crit_edge.i.i
  %.8.i.i = phi ptr [ %.044.lcssa.i.i, %._crit_edge.i.i ], [ %spec.select55.i.i, %bb.h ]
  %i.aa = ptrtoint ptr %.8.i.i to i64
  %i.ab = ptrtoint ptr %i.a to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 4
  %i.ae = trunc i64 %i.ad to i32
  %.not.i.i = icmp eq i32 %i.c, %i.ae
  br i1 %.not.i.i, label %c11_chunked_array2d_chunks__contains.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %sext.i.i = shl i64 %i.ac, 28
  %i.af = ashr i64 %sext.i.i, 32
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !24
  %.not49.i.i = icmp eq i64 %i.ah, %1
  br i1 %.not49.i.i, label %bb.l, label %c11_chunked_array2d_chunks__contains.exit

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.3, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef %.sroa.5.0.extract.trunc) #20 ; 0 uses
  br label %.loopexit

c11_chunked_array2d_chunks__contains.exit:        ; preds = %bb.k, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !44 ; 3 uses
  %i.al = mul nsw i32 %i.ak, %i.ak                ; 4 uses
  %i.am = add nuw i32 %i.al, 1
  %i.an = zext i32 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.an, 24
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.ao) #21 ; 12 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = zext nneg i32 %i.al to i64
  %i.as = mul nuw nsw i64 %i.ar, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aq, i8 0, i64 %i.as, i1 false)
  tail call void @c11_chunked_array2d_chunks__set(ptr noundef nonnull %0, i64 %1, ptr noundef nonnull %i.ap)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !47
  %.not33 = icmp eq i32 %i.ak, 0
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %c11_chunked_array2d_chunks__contains.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.aw = zext nneg i32 %i.al to i64              ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 3 uses
  %i.ax = icmp samesign ult i32 %i.al, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.aw, 2147483644
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.m ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.m ]
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !25
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !25
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !25
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !25
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !88

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod36 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.n ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !25
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.n, !llvm.loop !89

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.n, %c11_chunked_array2d_chunks__contains.exit, %bb.l
  %.031 = phi ptr [ null, %bb.l ], [ %i.ap, %c11_chunked_array2d_chunks__contains.exit ], [ %i.ap, %bb.n ], [ %i.ap, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.031
}

declare ptr @py_None(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @c11_chunked_array2d__dtor(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !51
  %i.d = load i32, ptr %i.b, align 8, !tbaa !52
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.e
  %.not812 = icmp eq ptr %i.a, %i.f
  br i1 %.not812, label %.critedge, label %.lr.ph14

.critedge:                                        ; preds = %.lr.ph14, %.lr.ph, %bb.a
  tail call void @c11_vector__dtor(ptr noundef nonnull %0) #20
  ret void

.lr.ph14:                                         ; preds = %.lr.ph, %.lr.ph14
  %.01013 = phi ptr [ %i.i, %.lr.ph14 ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01013, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.h) #20
  %i.i = getelementptr inbounds nuw i8, ptr %.01013, i64 16 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !51
  %i.k = load i32, ptr %i.b, align 8, !tbaa !52
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.l
  %.not8 = icmp eq ptr %i.i, %i.m
  br i1 %.not8, label %.critedge, label %.lr.ph14
}

; Function Attrs: nounwind uwtable
define void @c11_chunked_array2d__mark(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.b = load i8, ptr %i.a, align 2, !tbaa !93, !range !49, !noundef !50
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !24    ; 3 uses
  %i.h = and i8 %i.g, 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = or disjoint i8 %i.g, 1
  store i8 %i.i, ptr %i.f, align 1, !tbaa !24
  %i.j = and i8 %i.g, 2
  %.not39 = icmp eq i8 %i.j, 0
  br i1 %.not39, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %1) #20
  tail call void @c11_vector__reserve(ptr noundef nonnull %1, i32 noundef %i.p) #20
  %.pre = load i32, ptr %i.k, align 8, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %.pre, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !35
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  store ptr %i.e, ptr %i.t, align 8, !tbaa !95
  %i.u = add nsw i32 %i.q, 1
  store i32 %i.u, ptr %i.k, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.c, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !52
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !44   ; 2 uses
  %i.aa = mul i32 %i.z, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  %i.ad = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.ad to i64
  br label %bb.h

._crit_edge:                                      ; preds = %bb.i, %bb.g
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv46 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next47, %bb.i ] ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv46
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !39
  br label %bb.j

bb.i:                                             ; preds = %bb.p
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.ai = load i32, ptr %i.v, align 8, !tbaa !52
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next47, %i.aj
  br i1 %i.ak, label %bb.h, label %._crit_edge, !llvm.loop !91

bb.j:                                             ; preds = %bb.h, %bb.p
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i8, ptr %i.am, align 2, !tbaa !96, !range !49, !noundef !50
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !24  ; 3 uses
  %i.at = and i8 %i.as, 1
  %.not41 = icmp eq i8 %i.at, 0
  br i1 %.not41, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.au = or disjoint i8 %i.as, 1
  store i8 %i.au, ptr %i.ar, align 1, !tbaa !24
  %i.av = and i8 %i.as, 2
  %.not42 = icmp eq i8 %i.av, 0
  br i1 %.not42, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = load i32, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %i.ax = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %1) #20
  tail call void @c11_vector__reserve(ptr noundef nonnull %1, i32 noundef %i.az) #20
  %.pre49 = load i32, ptr %i.ab, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ba = phi i32 [ %.pre49, %bb.n ], [ %i.aw, %bb.m ] ; 2 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !35
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  store ptr %i.aq, ptr %i.bd, align 8, !tbaa !95
  %i.be = add nsw i32 %i.ba, 1
  store i32 %i.be, ptr %i.ab, align 8, !tbaa !36
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o, %bb.l, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.i, label %bb.j, !llvm.loop !92
}

; Function Attrs: nounwind uwtable
define void @pk__add_module_array2d() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @py_newmodule(ptr noundef nonnull @.str.2) #20 ; 6 uses
  %i.b = tail call signext i16 @py_newtype(ptr noundef nonnull @.str.4, i16 noundef signext 1, ptr noundef %i.a, ptr noundef null) #20 ; 43 uses
  tail call void @py_bindproperty(i16 noundef signext %i.b, ptr noundef nonnull @.str.5, ptr noundef nonnull @array2d_like_n_cols, ptr noundef null) #20
  tail call void @py_bindproperty(i16 noundef signext %i.b, ptr noundef nonnull @.str.6, ptr noundef nonnull @array2d_like_n_rows, ptr noundef null) #20
  tail call void @py_bindproperty(i16 noundef signext %i.b, ptr noundef nonnull @.str.7, ptr noundef nonnull @array2d_like_n_cols, ptr noundef null) #20
  tail call void @py_bindproperty(i16 noundef signext %i.b, ptr noundef nonnull @.str.8, ptr noundef nonnull @array2d_like_n_rows, ptr noundef null) #20
  tail call void @py_bindproperty(i16 noundef signext %i.b, ptr noundef nonnull @.str.9, ptr noundef nonnull @array2d_like_shape, ptr noundef null) #20
  tail call void @py_bindproperty(i16 noundef signext %i.b, ptr noundef nonnull @.str.10, ptr noundef nonnull @array2d_like_numel, ptr noundef null) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.11, ptr noundef nonnull @array2d_like_is_valid) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.12, ptr noundef nonnull @array2d_like_get) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.13, ptr noundef nonnull @array2d_like_index) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.14, ptr noundef nonnull @array2d_like_render) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.15, ptr noundef nonnull @array2d_like_render_with_color) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.16, ptr noundef nonnull @array2d_like_all) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.17, ptr noundef nonnull @array2d_like_any) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.18, ptr noundef nonnull @array2d_like_map) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.19, ptr noundef nonnull @array2d_like_apply) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.20, ptr noundef nonnull @array2d_like_zip_with) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.21, ptr noundef nonnull @array2d_like_copy) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.22, ptr noundef nonnull @array2d_like_tolist) #20
  %i.c = load ptr, ptr @__le__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.c, ptr noundef nonnull @array2d_like__le__) #20
  %i.d = load ptr, ptr @__lt__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.d, ptr noundef nonnull @array2d_like__lt__) #20
  %i.e = load ptr, ptr @__ge__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.e, ptr noundef nonnull @array2d_like__ge__) #20
  %i.f = load ptr, ptr @__gt__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.f, ptr noundef nonnull @array2d_like__gt__) #20
  %i.g = load ptr, ptr @__eq__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.g, ptr noundef nonnull @array2d_like__eq__) #20
  %i.h = load ptr, ptr @__ne__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.h, ptr noundef nonnull @array2d_like__ne__) #20
  %i.i = load ptr, ptr @__add__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.i, ptr noundef nonnull @array2d_like__add__) #20
  %i.j = load ptr, ptr @__sub__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.j, ptr noundef nonnull @array2d_like__sub__) #20
  %i.k = load ptr, ptr @__mul__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.k, ptr noundef nonnull @array2d_like__mul__) #20
  %i.l = load ptr, ptr @__truediv__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.l, ptr noundef nonnull @array2d_like__truediv__) #20
  %i.m = load ptr, ptr @__floordiv__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.m, ptr noundef nonnull @array2d_like__floordiv__) #20
  %i.n = load ptr, ptr @__mod__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.n, ptr noundef nonnull @array2d_like__mod__) #20
  %i.o = load ptr, ptr @__pow__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.o, ptr noundef nonnull @array2d_like__pow__) #20
  %i.p = load ptr, ptr @__and__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.p, ptr noundef nonnull @array2d_like__and__) #20
  %i.q = load ptr, ptr @__or__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.q, ptr noundef nonnull @array2d_like__or__) #20
  %i.r = load ptr, ptr @__xor__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.r, ptr noundef nonnull @array2d_like__xor__) #20
  %i.s = load ptr, ptr @__invert__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.s, ptr noundef nonnull @array2d_like__invert__) #20
  %i.t = load ptr, ptr @__iter__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.t, ptr noundef nonnull @array2d_like__iter__) #20
  %i.u = load ptr, ptr @__repr__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.u, ptr noundef nonnull @array2d_like__repr__) #20
  %i.v = load ptr, ptr @__getitem__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.v, ptr noundef nonnull @array2d_like__getitem__) #20
  %i.w = load ptr, ptr @__setitem__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.b, ptr noundef %i.w, ptr noundef nonnull @array2d_like__setitem__) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.23, ptr noundef nonnull @array2d_like_count) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.24, ptr noundef nonnull @array2d_like_get_bounding_rect) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.25, ptr noundef nonnull @array2d_like_count_neighbors) #20
  tail call void @py_bindmethod(i16 noundef signext %i.b, ptr noundef nonnull @.str.26, ptr noundef nonnull @array2d_like_convolve) #20
  %i.x = tail call zeroext i1 @py_exec(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef %i.a) #20
  br i1 %i.x, label %register_array2d_like.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (...) @py_printexc() #20
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !98
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.29, i64 28, i64 1, ptr %i.y) #22 ; 0 uses
  %i.z = tail call i32 @putchar(i32 noundef 10)   ; 0 uses
  tail call void @abort() #23
  unreachable

register_array2d_like.exit:                       ; preds = %bb.a
  %i.aa = tail call signext i16 @py_newtype(ptr noundef nonnull @.str.49, i16 noundef signext 1, ptr noundef %i.a, ptr noundef null) #20 ; 2 uses
  %i.ab = load ptr, ptr @__iter__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.aa, ptr noundef %i.ab, ptr noundef nonnull @pk_wrapper__self) #20
  %i.ac = load ptr, ptr @__next__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.aa, ptr noundef %i.ac, ptr noundef nonnull @array2d_like_iterator__next__) #20
  %i.ad = tail call signext i16 @py_newtype(ptr noundef nonnull @.str.2, i16 noundef signext 79, ptr noundef %i.a, ptr noundef null) #20 ; 2 uses
  %i.ae = tail call ptr @py_tpobject(i16 noundef signext %i.ad) #20
  tail call void @py_bind(ptr noundef %i.ae, ptr noundef nonnull @.str.50, ptr noundef nonnull @array2d__new__) #20
  tail call void @py_bindstaticmethod(i16 noundef signext %i.ad, ptr noundef nonnull @.str.51, ptr noundef nonnull @array2d_fromlist_STATIC) #20
  %i.af = tail call signext i16 @py_newtype(ptr noundef nonnull @.str.55, i16 noundef signext 79, ptr noundef %i.a, ptr noundef null) #20
  tail call void @py_bindproperty(i16 noundef signext %i.af, ptr noundef nonnull @.str.56, ptr noundef nonnull @array2d_view_origin, ptr noundef null) #20
  %i.ag = tail call signext i16 @py_newtype(ptr noundef nonnull @.str.57, i16 noundef signext 1, ptr noundef %i.a, ptr noundef nonnull @c11_chunked_array2d__dtor) #20 ; 17 uses
  %i.ah = tail call ptr @py_tpobject(i16 noundef signext %i.ag) #20
  tail call void @py_bind(ptr noundef %i.ah, ptr noundef nonnull @.str.58, ptr noundef nonnull @chunked_array2d__new__) #20
  tail call void @py_bindproperty(i16 noundef signext %i.ag, ptr noundef nonnull @.str.59, ptr noundef nonnull @chunked_array2d_chunk_size, ptr noundef null) #20
  %i.ai = load ptr, ptr @__getitem__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.ag, ptr noundef %i.ai, ptr noundef nonnull @chunked_array2d__getitem__) #20
  %i.aj = load ptr, ptr @__setitem__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.ag, ptr noundef %i.aj, ptr noundef nonnull @chunked_array2d__setitem__) #20
  %i.ak = load ptr, ptr @__iter__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.ag, ptr noundef %i.ak, ptr noundef nonnull @chunked_array2d__iter__) #20
  %i.al = load ptr, ptr @__len__, align 8, !tbaa !54
  tail call void @py_bindmagic(i16 noundef signext %i.ag, ptr noundef %i.al, ptr noundef nonnull @chunked_array2d__len__) #20
  tail call void @py_bindmethod(i16 noundef signext %i.ag, ptr noundef nonnull @.str.60, ptr noundef nonnull @chunked_array2d_clear) #20
  tail call void @py_bindmethod(i16 noundef signext %i.ag, ptr noundef nonnull @.str.21, ptr noundef nonnull @chunked_array2d_copy) #20
  tail call void @py_bindmethod(i16 noundef signext %i.ag, ptr noundef nonnull @.str.61, ptr noundef nonnull @chunked_array2d_world_to_chunk) #20
  tail call void @py_bindmethod(i16 noundef signext %i.ag, ptr noundef nonnull @.str.62, ptr noundef nonnull @chunked_array2d_add_chunk) #20
  tail call void @py_bindmethod(i16 noundef signext %i.ag, ptr noundef nonnull @.str.63, ptr noundef nonnull @chunked_array2d_remove_chunk) #20
  tail call void @py_bindmethod(i16 noundef signext %i.ag, ptr noundef nonnull @.str.64, ptr noundef nonnull @chunked_array2d_move_chunk) #20
  tail call void @py_bindmethod(i16 noundef signext %i.ag, ptr noundef nonnull @.str.65, ptr noundef nonnull @chunked_array2d_get_context) #20
  tail call void @py_bindmethod(i16 noundef signext %i.ag, ptr noundef nonnull @.str.66, ptr noundef nonnull @chunked_array2d_view) #20
  tail call void @py_bindmethod(i16 noundef signext %i.ag, ptr noundef nonnull @.str.67, ptr noundef nonnull @chunked_array2d_view_rect) #20
  tail call void @py_bindmethod(i16 noundef signext %i.ag, ptr noundef nonnull @.str.68, ptr noundef nonnull @chunked_array2d_view_chunk) #20
  tail call void @py_bindmethod(i16 noundef signext %i.ag, ptr noundef nonnull @.str.69, ptr noundef nonnull @chunked_array2d_view_chunks) #20
  ret void
}

declare ptr @py_newmodule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @py_newarray2d(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %2, %1                       ; 2 uses
  %i.b = tail call ptr @py_newobject(ptr noundef %0, i16 noundef signext 81, i32 noundef %i.a, i32 noundef 40) #20 ; 6 uses
  store i32 %1, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
end_hunk_0
