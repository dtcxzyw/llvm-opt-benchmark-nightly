Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-var?download=true
inline.NumInlined: 3771
inline.NumDeleted: 1746
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK17hb_data_wrapper_tI9hb_face_tLj5EE11call_createIN2OT18hmtx_accelerator_tE21hb_face_lazy_loader_tIS4_Lj5EEEEPT_v:bb.a
  br label %_ZN16hb_lazy_loader_tIN2OT18hmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj5EE9hb_face_tLj5ES1_E6createEPS4_.exit

_ZN16hb_lazy_loader_tIN2OT18hmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj5EE9hb_face_tLj5ES1_E6createEPS4_.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_lazy_loader_tIN2OT18hmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj5EE9hb_face_tLj5ES1_E10do_destroyEPS1_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  %.not3 = icmp eq ptr %0, @_hb_NullPool
  %or.cond = or i1 %.not, %.not3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !323
  tail call void @hb_blob_destroy(ptr noundef %i.b) #10
  store ptr null, ptr %i.a, align 8, !tbaa !323
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !323
  tail call void @hb_blob_destroy(ptr noundef %i.d) #10
  tail call void @hb_free(ptr noundef nonnull %0) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj12EE11call_createIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS4_Lj12EEEEPT_v(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125
  %i.c = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef 40) #10 ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_E6createEPS4_.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2OT8hmtxvmtxINS_4vmtxENS_4vheaENS_4VVAREE13accelerator_tC2EP9hb_face_t(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef %i.b)
  br label %_ZN16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_E6createEPS4_.exit

_ZN16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_E6createEPS4_.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_E10do_destroyEPS1_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  %.not3 = icmp eq ptr %0, @_hb_NullPool
  %or.cond = or i1 %.not, %.not3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !323
  tail call void @hb_blob_destroy(ptr noundef %i.b) #10
  store ptr null, ptr %i.a, align 8, !tbaa !323
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !323
  tail call void @hb_blob_destroy(ptr noundef %i.d) #10
  tail call void @hb_free(ptr noundef nonnull %0) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT9glyf_impl11SimpleGlyph18get_contour_pointsER22contour_point_vector_tb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !626, !nonnull !20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  %i.c = load i16, ptr %i.a, align 1, !tbaa !53
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %i.c) ; 3 uses
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = sext i16 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.g ; 6 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !628  ; 2 uses
  %.not.i = icmp ugt ptr %i.i, %i.h
  br i1 %.not.i, label %.critedge, label %bb.b, !prof !434

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !629
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l ; 2 uses
  %.not6.i = icmp ule ptr %i.h, %i.m
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = and i64 %i.p, 4294967294
  %i.r = icmp ne i64 %i.q, 0
  %or.cond = and i1 %.not6.i, %i.r
  br i1 %or.cond, label %bb.c, label %.critedge, !prof !630

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.h, i64 -2
  %i.t = load i16, ptr %i.s, align 1, !tbaa !53
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = add nuw nsw i32 %i.v, 1                  ; 3 uses
  %i.x = icmp ult i32 %i.w, %i.e
  br i1 %i.x, label %.critedge, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !432  ; 4 uses
  %i.aa = add nuw nsw i32 %i.v, 5
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = tail call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ab, i1 noundef zeroext false) ; 0 uses
  %i.ad = load i32, ptr %i.y, align 4, !tbaa !432
  %i.ae = add i32 %i.ad, %i.w                     ; 5 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.critedge, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ae, i1 noundef zeroext false)
  br i1 %i.ag, label %bb.f, label %.critedge, !prof !454

bb.f:                                             ; preds = %bb.e
  store i32 %i.ae, ptr %i.y, align 4, !tbaa !432
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !433 ; 2 uses
  %.not83 = icmp eq i32 %i.z, 0
  br i1 %.not83, label %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %storemerge.i = tail call i32 @llvm.usub.sat.i32(i32 %i.ae, i32 %i.z)
  %i.aj = zext i32 %i.z to i64
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %i.aj
  br label %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit

_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit: ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.in = phi i32 [ %storemerge.i, %bb.g ], [ %i.ae, %bb.f ] ; 5 uses
  %.sroa.0.0.i = phi ptr [ %i.ak, %bb.g ], [ %i.ai, %bb.f ] ; 15 uses
  %.sroa.3.0.i = zext nneg i32 %.sroa.3.0.i.in to i64
  br i1 %2, label %.critedge, label %_ZL9hb_memsetPvij.exit

_ZL9hb_memsetPvij.exit:                           ; preds = %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit
  %i.al = mul nuw nsw i32 %i.w, 12
  %i.am = zext nneg i32 %i.al to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i, i8 0, i64 %i.am, i1 false)
  %i.an = icmp sgt i16 %i.d, 0
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZL9hb_memsetPvij.exit
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit, %_ZL9hb_memsetPvij.exit
  %i.ao = getelementptr i8, ptr %i.h, i64 2
  %i.ap = load i16, ptr %i.h, align 1, !tbaa !53
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.ar = zext i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar ; 3 uses
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !631 ; 2 uses
  %i.au = icmp ult ptr %i.as, %i.at
  br i1 %i.au, label %.critedge, label %bb.j, !prof !21

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit ] ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !53
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw) ; 2 uses
  %i.ay = zext i16 %i.ax to i32
  %.not.i.i = icmp ugt i32 %.sroa.3.0.i.in, %i.ay
  br i1 %.not.i.i, label %bb.i, label %bb.h, !prof !22

bb.h:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit

bb.i:                                             ; preds = %.lr.ph
  %i.az = zext i16 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %i.az
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.ba, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 9
  store i8 1, ptr %i.bb, align 1, !tbaa !632
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !633

bb.j:                                             ; preds = %._crit_edge
  %i.bc = load i32, ptr %i.j, align 8, !tbaa !634
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bd ; 7 uses
  %.not = icmp ult ptr %i.as, %i.be
  br i1 %.not, label %bb.k, label %.critedge, !prof !22

bb.k:                                             ; preds = %bb.j
  %.not3139.i = icmp eq i32 %.sroa.3.0.i.in, 0
  br i1 %.not3139.i, label %.critedge, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %bb.k, %.loopexit.i
  %.02240.i = phi i32 [ %.3.i, %.loopexit.i ], [ 0, %bb.k ] ; 4 uses
  %3 = phi ptr [ %.168, %.loopexit.i ], [ %i.as, %bb.k ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  %i.bg = icmp ugt ptr %i.bf, %i.be
  br i1 %i.bg, label %.critedge, label %bb.l, !prof !21

bb.l:                                             ; preds = %.lr.ph42.i
  %i.bh = load i8, ptr %3, align 1, !tbaa !460    ; 11 uses
  %i.bi = add nuw i32 %.02240.i, 1                ; 5 uses
  %i.bj = zext i32 %.02240.i to i64
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i8 %i.bh, ptr %i.bl, align 4, !tbaa !635
  %i.bm = and i8 %i.bh, 8
  %.not.i43 = icmp eq i8 %i.bm, 0
  br i1 %.not.i43, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 4 uses
  %i.bo = icmp ugt ptr %i.bn, %i.be
  br i1 %i.bo, label %.critedge, label %bb.n, !prof !21

bb.n:                                             ; preds = %bb.m
  %i.bp = load i8, ptr %i.bf, align 1, !tbaa !460
  %i.bq = zext i8 %i.bp to i32
  %i.br = add i32 %i.bi, %i.bq
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.br, i32 %.sroa.3.0.i.in) ; 6 uses
  %i.bs = icmp ult i32 %i.bi, %.sroa.speculated.i
  br i1 %i.bs, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.bt = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bu = xor i32 %.02240.i, -1
  %i.bv = add i32 %.sroa.speculated.i, %i.bu
  %i.bw = add i32 %.sroa.speculated.i, -2
  %i.bx = sub i32 %i.bw, %.02240.i
  %xtraiter = and i32 %i.bv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.bt, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i.prol
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i8 %i.bh, ptr %i.bz, align 4, !tbaa !635
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !636

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.bt, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ca = icmp ult i32 %i.bx, 7
  br i1 %i.ca, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i8 %i.bh, ptr %i.cc, align 4, !tbaa !635
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  store i8 %i.bh, ptr %i.ce, align 4, !tbaa !635
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store i8 %i.bh, ptr %i.cg, align 4, !tbaa !635
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 44
  store i8 %i.bh, ptr %i.ci, align 4, !tbaa !635
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  store i8 %i.bh, ptr %i.ck, align 4, !tbaa !635
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 68
  store i8 %i.bh, ptr %i.cm, align 4, !tbaa !635
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  store i8 %i.bh, ptr %i.co, align 4, !tbaa !635
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 92
  store i8 %i.bh, ptr %i.cq, align 4, !tbaa !635
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %lftr.wideiv.i.7 = trunc i64 %indvars.iv.next.i.7 to i32
  %exitcond.not.i.7 = icmp eq i32 %.sroa.speculated.i, %lftr.wideiv.i.7
  br i1 %exitcond.not.i.7, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !637

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n, %bb.l
  %.168 = phi ptr [ %i.bf, %bb.l ], [ %i.bn, %bb.n ], [ %i.bn, %.lr.ph.i ], [ %i.bn, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.3.i = phi i32 [ %i.bi, %bb.l ], [ %i.bi, %bb.n ], [ %.sroa.speculated.i, %.lr.ph.i ], [ %.sroa.speculated.i, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.not31.not.i = icmp ult i32 %.3.i, %.sroa.3.0.i.in
  br i1 %.not31.not.i, label %.lr.ph42.i, label %.lr.ph.i46.preheader, !llvm.loop !638

.lr.ph.i46.preheader:                             ; preds = %.loopexit.i
  %.idx.i = mul nuw nsw i64 %.sroa.3.0.i, 12
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.idx.i ; 2 uses
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46.preheader, %bb.t
  %.3 = phi ptr [ %.4, %bb.t ], [ %.168, %.lr.ph.i46.preheader ]
  %.03044.i = phi ptr [ %i.dm, %bb.t ], [ %.sroa.0.0.i, %.lr.ph.i46.preheader ] ; 3 uses
  %.03143.i = phi i32 [ %.132.i, %bb.t ], [ 0, %.lr.ph.i46.preheader ] ; 3 uses
  %4 = phi ptr [ %5, %bb.t ], [ %.168, %.lr.ph.i46.preheader ] ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.03044.i, i64 8
  %i.ct = load i8, ptr %i.cs, align 4, !tbaa !635
  %i.cu = zext i8 %i.ct to i32                    ; 3 uses
  %i.cv = and i32 %i.cu, 2
  %.not37.i = icmp eq i32 %i.cv, 0
  br i1 %.not37.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i46
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  %i.cx = icmp ugt ptr %i.cw, %i.be
  br i1 %i.cx, label %.critedge, label %bb.p, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.cy = and i32 %i.cu, 16
  %.not39.i = icmp eq i32 %i.cy, 0
  %i.cz = load i8, ptr %4, align 1, !tbaa !460
  %i.da = zext i8 %i.cz to i32                    ; 2 uses
  %i.db = sub nsw i32 0, %i.da
  %i.dc = select i1 %.not39.i, i32 %i.db, i32 %i.da
  %i.dd = add i32 %i.dc, %.03143.i
  br label %bb.t

bb.q:                                             ; preds = %.lr.ph.i46
  %i.de = and i32 %i.cu, 16
  %.not38.i = icmp eq i32 %i.de, 0
  br i1 %.not38.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 3 uses
  %i.dg = icmp ugt ptr %i.df, %i.be
  br i1 %i.dg, label %.critedge, label %bb.s, !prof !21

bb.s:                                             ; preds = %bb.r
  %i.dh = load i16, ptr %4, align 1, !tbaa !53
  %i.di = tail call noundef i16 @llvm.bswap.i16(i16 %i.dh)
  %i.dj = sext i16 %i.di to i32
  %i.dk = add nsw i32 %.03143.i, %i.dj
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.p
  %.4 = phi ptr [ %i.df, %bb.s ], [ %.3, %bb.q ], [ %i.cw, %bb.p ] ; 2 uses
  %5 = phi ptr [ %i.df, %bb.s ], [ %4, %bb.q ], [ %i.cw, %bb.p ]
  %.132.i = phi i32 [ %i.dk, %bb.s ], [ %.03143.i, %bb.q ], [ %i.dd, %bb.p ] ; 2 uses
  %i.dl = sitofp i32 %.132.i to float
  store float %i.dl, ptr %.03044.i, align 4, !tbaa !138
  %i.dm = getelementptr inbounds nuw i8, ptr %.03044.i, i64 12 ; 2 uses
  %.not.i47 = icmp eq ptr %i.dm, %i.cr
  br i1 %.not.i47, label %.lr.ph.i52, label %.lr.ph.i46

.lr.ph.i52:                                       ; preds = %bb.t, %bb.z
  %.03044.i53 = phi ptr [ %i.ej, %bb.z ], [ %.sroa.0.0.i, %bb.t ] ; 3 uses
  %.03143.i54 = phi i32 [ %.132.i57, %bb.z ], [ 0, %bb.t ] ; 3 uses
  %6 = phi ptr [ %i.eg, %bb.z ], [ %.4, %bb.t ]   ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.03044.i53, i64 8
  %i.do = load i8, ptr %i.dn, align 4, !tbaa !635
  %i.dp = zext i8 %i.do to i32                    ; 3 uses
  %i.dq = and i32 %i.dp, 4
  %.not37.i55 = icmp eq i32 %i.dq, 0
  br i1 %.not37.i55, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i52
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %i.ds = icmp ugt ptr %i.dr, %i.be
  br i1 %i.ds, label %.critedge, label %bb.v, !prof !21

bb.v:                                             ; preds = %bb.u
  %i.dt = and i32 %i.dp, 32
  %.not39.i56 = icmp eq i32 %i.dt, 0
  %i.du = load i8, ptr %6, align 1, !tbaa !460
  %i.dv = zext i8 %i.du to i32                    ; 2 uses
  %i.dw = sub nsw i32 0, %i.dv
  %i.dx = select i1 %.not39.i56, i32 %i.dw, i32 %i.dv
  %i.dy = add i32 %i.dx, %.03143.i54
  br label %bb.z

bb.w:                                             ; preds = %.lr.ph.i52
  %i.dz = and i32 %i.dp, 32
  %.not38.i60 = icmp eq i32 %i.dz, 0
  br i1 %.not38.i60, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 2 uses
  %i.eb = icmp ugt ptr %i.ea, %i.be
  br i1 %i.eb, label %.critedge, label %bb.y, !prof !21

bb.y:                                             ; preds = %bb.x
  %i.ec = load i16, ptr %6, align 1, !tbaa !53
  %i.ed = tail call noundef i16 @llvm.bswap.i16(i16 %i.ec)
  %i.ee = sext i16 %i.ed to i32
  %i.ef = add nsw i32 %.03143.i54, %i.ee
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.v
  %i.eg = phi ptr [ %i.dr, %bb.v ], [ %6, %bb.w ], [ %i.ea, %bb.y ]
  %.132.i57 = phi i32 [ %i.dy, %bb.v ], [ %.03143.i54, %bb.w ], [ %i.ef, %bb.y ] ; 2 uses
  %i.eh = sitofp i32 %.132.i57 to float
  %i.ei = getelementptr inbounds nuw i8, ptr %.03044.i53, i64 4
  store float %i.eh, ptr %i.ei, align 4, !tbaa !138
  %i.ej = getelementptr inbounds nuw i8, ptr %.03044.i53, i64 12 ; 2 uses
  %.not.i58 = icmp eq ptr %i.ej, %i.cr
  br i1 %.not.i58, label %.critedge, label %.lr.ph.i52

.critedge:                                        ; preds = %bb.m, %.lr.ph42.i, %bb.r, %bb.o, %bb.z, %bb.x, %bb.u, %bb.k, %bb.e, %bb.d, %bb.a, %bb.b, %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit, %bb.j, %._crit_edge, %bb.c
  %.5 = phi i1 [ true, %bb.z ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.a ], [ true, %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit ], [ false, %._crit_edge ], [ false, %bb.j ], [ false, %bb.d ], [ false, %bb.b ], [ true, %bb.k ], [ false, %bb.r ], [ false, %bb.u ], [ false, %bb.x ], [ false, %bb.o ], [ false, %.lr.ph42.i ], [ false, %bb.m ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !429    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !21

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !639

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 357913941
  br i1 %i.j, label %.critedge, label %bb.e, !prof !21

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !433
  tail call void @hb_free(ptr noundef %i.m) #10
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !433  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 12
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #10 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !432  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !433
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 309237645241) %i.v, i1 false), !alias.scope !640
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = zext nneg i32 %.138 to i64
  %i.z = mul nuw nsw i64 %i.y, 12
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #10 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, !prof !129

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !429   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !433
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !429
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17hb_glyf_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51
  %i.c = add i32 %i.b, -1
  %spec.select.i.i.i = icmp ult i32 %i.c, -2
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.d, align 4, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  tail call void @hb_free(ptr noundef %i.f) #10
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8, !tbaa !51
  %i.i = add i32 %i.h, -1
  %spec.select.i.i.i1 = icmp ult i32 %i.i, -2
  br i1 %spec.select.i.i.i1, label %bb.c, label %_ZN11hb_vector_tIjLb0EED2Ev.exit2

bb.c:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.j, align 4, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  tail call void @hb_free(ptr noundef %i.l) #10
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit2

_ZN11hb_vector_tIjLb0EED2Ev.exit2:                ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i32, ptr %i.m, align 8, !tbaa !429
  %i.o = add i32 %i.n, -1
  %spec.select.i.i.i3 = icmp ult i32 %i.o, -2
  br i1 %spec.select.i.i.i3, label %bb.d, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit

bb.d:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.p, align 4, !tbaa !432
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !433
  tail call void @hb_free(ptr noundef %i.r) #10
  br label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit: ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit2, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load i32, ptr %i.s, align 8, !tbaa !180
  %i.u = add i32 %i.t, -1
  %spec.select.i.i.i4 = icmp ult i32 %i.u, -2
  br i1 %spec.select.i.i.i4, label %bb.e, label %_ZN11hb_vector_tIiLb0EED2Ev.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.v, align 4, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  tail call void @hb_free(ptr noundef %i.x) #10
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit

_ZN11hb_vector_tIiLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !180
  %i.aa = add i32 %i.z, -1
  %spec.select.i.i.i5 = icmp ult i32 %i.aa, -2
  br i1 %spec.select.i.i.i5, label %bb.f, label %_ZN11hb_vector_tIiLb0EED2Ev.exit6

bb.f:                                             ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.ab, align 4, !tbaa !65
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63
end_hunk_0
