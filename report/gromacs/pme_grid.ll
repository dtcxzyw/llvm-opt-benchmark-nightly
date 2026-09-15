Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_grid?download=true
inline.NumInlined: 401
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNSt6vectorI9pmegrid_tSaIS0_EE17_M_default_appendEm:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !150    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 72                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !296
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 72                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 128102389400760776
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 128102389400760775, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIP9pmegrid_tmS0_ET_S2_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIP9pmegrid_tmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 72                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !149
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorI9pmegrid_tSaIS0_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorI9pmegrid_tSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 128102389400760775) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 72
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 72
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI9pmegrid_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI9pmegrid_tSaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorI9pmegrid_tSaIS0_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorI9pmegrid_tSaIS0_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i, i64 72, i1 false), !tbaa.struct !298, !alias.scope !299
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorI9pmegrid_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !295

_ZNSt6vectorI9pmegrid_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorI9pmegrid_tSaIS0_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseI9pmegrid_tSaIS0_EE13_M_deallocateEPS0_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI9pmegrid_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !296
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #23
  br label %_ZNSt12_Vector_baseI9pmegrid_tSaIS0_EE13_M_deallocateEPS0_m.exit37

_ZNSt12_Vector_baseI9pmegrid_tSaIS0_EE13_M_deallocateEPS0_m.exit37: ; preds = %_ZNSt6vectorI9pmegrid_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !150
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !149
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !296
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP9pmegrid_tmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI9pmegrid_tSaIS0_EE13_M_deallocateEPS0_m.exit37, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !152    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !164
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !10
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !151
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #25 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !10
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !10
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !164
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #23
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !152
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !151
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !164
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_Z28make_gridindex_to_localindexiiib(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::tuple.112") align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i32 %1, 5                            ; 5 uses
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #22
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.noexc34

.noexc34:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 2                  ; 6 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #25 ; 17 uses
  store i32 0, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %i.g = add nsw i64 %i.d, -4                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %i.g, i1 false), !tbaa !10
  %5 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #25
          to label %.lr.ph unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit42 ; 15 uses

.lr.ph:                                           ; preds = %.noexc34
  %6 = getelementptr i8, ptr %i.e, i64 %i.d       ; 6 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 6 uses
  %8 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.b ; 6 uses
  store float 0.000000e+00, ptr %5, align 4, !tbaa !108
  %9 = getelementptr i8, ptr %5, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %9, i8 0, i64 %i.g, i1 false), !tbaa !108
  %10 = getelementptr i8, ptr %5, i64 %i.d        ; 6 uses
  %i.h = sub i32 %1, %2                           ; 6 uses
  %i.i = icmp slt i32 %3, %1
  %or.cond = and i1 %i.i, %4
  %i.j = add nsw i32 %1, -1                       ; 4 uses
  %i.k = add nsw i32 %3, -1                       ; 2 uses
  br i1 %or.cond, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %i.l = zext nneg i32 %smax to i64               ; 4 uses
  %i.m = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, i8 0, i64 %i.m, i1 false), !tbaa !108
  %min.iters.check = icmp slt i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.split.preheader158, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.l, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert112 = insertelement <8 x i32> poison, i32 %1, i64 0
  %broadcast.splat113 = shufflevector <8 x i32> %broadcast.splatinsert112, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.n = add <8 x i32> %broadcast.splat, %vec.ind
  %i.o = srem <8 x i32> %i.n, %broadcast.splat113
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <8 x i32> %i.o, ptr %i.p, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !300

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.l
  br i1 %cmp.n, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.split.preheader158

.lr.ph.split.preheader158:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.r = icmp sgt i32 %3, 0
  %smax83 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count84 = zext nneg i32 %smax83 to i64 ; 6 uses
  %min.iters.check133 = icmp slt i32 %i.a, 8      ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us.split.preheader, label %.lr.ph.split.us.split.us.preheader

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  br i1 %min.iters.check133, label %.lr.ph.split.us.split.us.preheader156, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.split.us.split.us.preheader
  %n.vec117 = and i64 %wide.trip.count84, 2147483640 ; 3 uses
  %broadcast.splatinsert118 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat119 = shufflevector <8 x i32> %broadcast.splatinsert118, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert120 = insertelement <8 x i32> poison, i32 %1, i64 0
  %broadcast.splat121 = shufflevector <8 x i32> %broadcast.splatinsert120, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert122 = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat123 = shufflevector <8 x i32> %broadcast.splatinsert122, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph116
  %index125 = phi i64 [ 0, %vector.ph116 ], [ %index.next127, %vector.body124 ] ; 3 uses
  %vec.ind126 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph116 ], [ %vec.ind.next128, %vector.body124 ] ; 2 uses
  %i.s = add <8 x i32> %broadcast.splat119, %vec.ind126
  %i.t = srem <8 x i32> %i.s, %broadcast.splat121 ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %i.e, i64 %index125 ; 2 uses
  store <8 x i32> %i.t, ptr %i.u, align 4, !tbaa !10
  %i.v = getelementptr [4 x i8], ptr %5, i64 %index125 ; 2 uses
  store <8 x float> zeroinitializer, ptr %i.v, align 4, !tbaa !108
  %i.w = icmp eq <8 x i32> %i.t, %broadcast.splat123 ; 2 uses
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> zeroinitializer, ptr align 4 %i.u, <8 x i1> %i.w), !tbaa !10
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float -1.000000e+00), ptr align 4 %i.v, <8 x i1> %i.w), !tbaa !108
  %index.next127 = add nuw i64 %index125, 8       ; 2 uses
  %vec.ind.next128 = add <8 x i32> %vec.ind126, splat (i32 8)
  %i.x = icmp eq i64 %index.next127, %n.vec117
  br i1 %i.x, label %middle.block129, label %vector.body124, !llvm.loop !301

middle.block129:                                  ; preds = %vector.body124
  %cmp.n130 = icmp eq i64 %n.vec117, %wide.trip.count84
  br i1 %cmp.n130, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.split.us.split.us.preheader156

.lr.ph.split.us.split.us.preheader156:            ; preds = %.lr.ph.split.us.split.us.preheader, %middle.block129
  %indvars.iv74.ph = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %n.vec117, %middle.block129 ]
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  br i1 %min.iters.check133, label %.lr.ph.split.us.split.preheader155, label %vector.ph134

vector.ph134:                                     ; preds = %.lr.ph.split.us.split.preheader
  %n.vec135 = and i64 %wide.trip.count84, 2147483640 ; 3 uses
  %broadcast.splatinsert136 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat137 = shufflevector <8 x i32> %broadcast.splatinsert136, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert138 = insertelement <8 x i32> poison, i32 %1, i64 0
  %broadcast.splat139 = shufflevector <8 x i32> %broadcast.splatinsert138, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert140 = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat141 = shufflevector <8 x i32> %broadcast.splatinsert140, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <8 x i32> poison, i32 %3, i64 0
  %broadcast.splat143 = shufflevector <8 x i32> %broadcast.splatinsert142, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert144 = insertelement <8 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat145 = shufflevector <8 x i32> %broadcast.splatinsert144, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph134
  %index147 = phi i64 [ 0, %vector.ph134 ], [ %index.next150, %vector.body146 ] ; 3 uses
  %vec.ind148 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph134 ], [ %vec.ind.next151, %vector.body146 ] ; 2 uses
  %i.y = add <8 x i32> %broadcast.splat137, %vec.ind148
  %i.z = srem <8 x i32> %i.y, %broadcast.splat139 ; 3 uses
  %i.aa = getelementptr [4 x i8], ptr %i.e, i64 %index147 ; 2 uses
  store <8 x i32> %i.z, ptr %i.aa, align 4, !tbaa !10
  %i.ab = getelementptr [4 x i8], ptr %5, i64 %index147 ; 2 uses
  store <8 x float> zeroinitializer, ptr %i.ab, align 4, !tbaa !108
  %i.ac = icmp eq <8 x i32> %i.z, %broadcast.splat141 ; 2 uses
  %i.ad = xor <8 x i1> %i.ac, splat (i1 true)
  %i.ae = icmp eq <8 x i32> %i.z, %broadcast.splat143 ; 2 uses
  %i.af = and <8 x i1> %i.ae, %i.ad               ; 2 uses
  %i.ag = or <8 x i1> %i.ac, %i.ae                ; 2 uses
  %predphi = select <8 x i1> %i.af, <8 x i32> %broadcast.splat145, <8 x i32> zeroinitializer
  %predphi149 = select <8 x i1> %i.af, <8 x float> splat (float 1.000000e+00), <8 x float> splat (float -1.000000e+00)
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> %predphi, ptr align 4 %i.aa, <8 x i1> %i.ag), !tbaa !10
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %predphi149, ptr align 4 %i.ab, <8 x i1> %i.ag), !tbaa !108
  %index.next150 = add nuw i64 %index147, 8       ; 2 uses
  %vec.ind.next151 = add <8 x i32> %vec.ind148, splat (i32 8)
  %i.ah = icmp eq i64 %index.next150, %n.vec135
  br i1 %i.ah, label %middle.block152, label %vector.body146, !llvm.loop !302

middle.block152:                                  ; preds = %vector.body146
  %cmp.n153 = icmp eq i64 %n.vec135, %wide.trip.count84
  br i1 %cmp.n153, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.split.us.split.preheader155

.lr.ph.split.us.split.preheader155:               ; preds = %.lr.ph.split.us.split.preheader, %middle.block152
  %indvars.iv80.ph = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %n.vec135, %middle.block152 ]
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader156, %bb.c
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %bb.c ], [ %indvars.iv74.ph, %.lr.ph.split.us.split.us.preheader156 ] ; 4 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv74 to i32
  %i.aj = add i32 %i.h, %i.ai
  %i.ak = srem i32 %i.aj, %1                      ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv74 ; 2 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv74 ; 2 uses
  store float 0.000000e+00, ptr %i.am, align 4, !tbaa !108
  %i.an = icmp eq i32 %i.ak, %i.j
  br i1 %i.an, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  store i32 0, ptr %i.al, align 4, !tbaa !10
  store float -1.000000e+00, ptr %i.am, align 4, !tbaa !108
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.split.us, %bb.b
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count84
  br i1 %exitcond79.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.split.us.split.us, !llvm.loop !303

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader155, %bb.e
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %bb.e ], [ %indvars.iv80.ph, %.lr.ph.split.us.split.preheader155 ] ; 4 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv80 to i32
  %i.ap = add i32 %i.h, %i.ao
  %i.aq = srem i32 %i.ap, %1                      ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv80 ; 2 uses
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !10
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv80 ; 2 uses
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !108
  %i.at = icmp eq i32 %i.aq, %i.j
  br i1 %i.at, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.split
  %i.au = icmp eq i32 %i.aq, %3
  br i1 %i.au, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %.lr.ph.split.us.split, %bb.d
  %.sink109 = phi i32 [ %i.k, %bb.d ], [ 0, %.lr.ph.split.us.split ]
  %.sink = phi float [ 1.000000e+00, %bb.d ], [ -1.000000e+00, %.lr.ph.split.us.split ]
  store i32 %.sink109, ptr %i.ar, align 4, !tbaa !10
  store float %.sink, ptr %i.as, align 4, !tbaa !108
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count84
  br i1 %exitcond85.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.split.us.split, !llvm.loop !304

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.lr.ph.split, %bb.c, %bb.e, %middle.block, %middle.block129, %middle.block152, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.0.i.i.i.i.i37106 = phi ptr [ %10, %middle.block152 ], [ %10, %middle.block129 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %10, %middle.block ], [ %10, %bb.c ], [ %10, %bb.e ], [ %10, %.lr.ph.split ]
  %.sroa.14.0104 = phi ptr [ %8, %middle.block152 ], [ %8, %middle.block129 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %8, %middle.block ], [ %8, %bb.c ], [ %8, %bb.e ], [ %8, %.lr.ph.split ]
  %.sroa.043.0102 = phi ptr [ %5, %middle.block152 ], [ %5, %middle.block129 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %5, %middle.block ], [ %5, %bb.c ], [ %5, %bb.e ], [ %5, %.lr.ph.split ]
  %.sroa.17.064100 = phi ptr [ %7, %middle.block152 ], [ %7, %middle.block129 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %7, %middle.block ], [ %7, %bb.c ], [ %7, %bb.e ], [ %7, %.lr.ph.split ]
  %.sroa.050.06698 = phi ptr [ %i.e, %middle.block152 ], [ %i.e, %middle.block129 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.e, %middle.block ], [ %i.e, %bb.c ], [ %i.e, %bb.e ], [ %i.e, %.lr.ph.split ]
  %.0.i.i.i.i.i6796 = phi ptr [ %6, %middle.block152 ], [ %6, %middle.block129 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %6, %middle.block ], [ %6, %bb.c ], [ %6, %bb.e ], [ %6, %.lr.ph.split ]
  store ptr %.sroa.043.0102, ptr %0, align 8, !tbaa !107
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i37106, ptr %i.av, align 8, !tbaa !306
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.0104, ptr %i.aw, align 8, !tbaa !307
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.050.06698, ptr %i.ax, align 8, !tbaa !152
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i.i.i.i6796, ptr %i.ay, align 8, !tbaa !151
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.17.064100, ptr %i.az, align 8, !tbaa !164
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit42:                  ; preds = %.noexc34
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.d) #23
  resume { ptr, i32 } %i.ba

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader158, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader158 ] ; 3 uses
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  %i.bc = add i32 %i.h, %i.bb
  %i.bd = srem i32 %i.bc, %1
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.split, !llvm.loop !305
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8i32.p0(<8 x i32>, ptr captures(none), <8 x i1>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nounwind }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { cold noreturn }
attributes #16 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { noreturn }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 _ZTS10tmpi_comm_", !9, i64 0}
!14 = !{!"p1 _ZTSN3gmx7MpiComm19HierarchicalReducerE", !9, i64 0}
!15 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx7MpiComm19HierarchicalReducerELb0EE", !14, i64 0}
!16 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !15, i64 0}
!17 = !{!"_ZTSSt5tupleIJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !16, i64 0}
!18 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !17, i64 0}
!19 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_ELb1ELb1EE", !18, i64 0}
!20 = !{!"_ZTSSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !19, i64 0}
!21 = !{!"_ZTSN3gmx7MpiCommE", !13, i64 0, !6, i64 8, !6, i64 12, !20, i64 16}
!22 = !{!"p1 _ZTSN3gmx7MpiCommE", !9, i64 0}
!23 = !{!"bool", !5, i64 0}
!24 = !{!"float", !5, i64 0}
!25 = !{!"_ZTS10PmeRunMode", !5, i64 0}
!26 = !{!"p1 _ZTS6PmeGpu", !9, i64 0}
!27 = !{!"p1 _ZTS15EwaldBoxZScaler", !9, i64 0}
!28 = !{!"_ZTSSt10_Head_baseILm0EP15EwaldBoxZScalerLb0EE", !27, i64 0}
!29 = !{!"_ZTSSt11_Tuple_implILm0EJP15EwaldBoxZScalerSt14default_deleteIS0_EEE", !28, i64 0}
!30 = !{!"_ZTSSt5tupleIJP15EwaldBoxZScalerSt14default_deleteIS0_EEE", !29, i64 0}
!31 = !{!"_ZTSSt15__uniq_ptr_implI15EwaldBoxZScalerSt14default_deleteIS0_EE", !30, i64 0}
!32 = !{!"_ZTSSt15__uniq_ptr_dataI15EwaldBoxZScalerSt14default_deleteIS0_ELb1ELb1EE", !31, i64 0}
!33 = !{!"_ZTSSt10unique_ptrI15EwaldBoxZScalerSt14default_deleteIS0_EE", !32, i64 0}
!34 = !{!"_ZTS12LongRangeVdW", !5, i64 0}
!35 = !{!"p1 _ZTS15pme_spline_work", !9, i64 0}
!36 = !{!"_ZTSSt10_Head_baseILm0EP15pme_spline_workLb0EE", !35, i64 0}
!37 = !{!"_ZTSSt11_Tuple_implILm0EJP15pme_spline_workSt14default_deleteIS0_EEE", !36, i64 0}
!38 = !{!"_ZTSSt5tupleIJP15pme_spline_workSt14default_deleteIS0_EEE", !37, i64 0}
!39 = !{!"_ZTSSt15__uniq_ptr_implI15pme_spline_workSt14default_deleteIS0_EE", !38, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_dataI15pme_spline_workSt14default_deleteIS0_ELb1ELb1EE", !39, i64 0}
!41 = !{!"_ZTSSt10unique_ptrI15pme_spline_workSt14default_deleteIS0_EE", !40, i64 0}
!42 = !{!"p1 _ZTS15PmeGridsStorage", !9, i64 0}
!43 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!44 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0}
!45 = !{!"_ZTSSt12__shared_ptrI15PmeGridsStorageLN9__gnu_cxx12_Lock_policyE2EE", !42, i64 0, !44, i64 8}
!46 = !{!"_ZTSSt10shared_ptrI15PmeGridsStorageE", !45, i64 0}
!47 = !{!"p1 _ZTS14PmeAndFftGrids", !9, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseI14PmeAndFftGridsSaIS0_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!49 = !{!"_ZTSNSt12_Vector_baseI14PmeAndFftGridsSaIS0_EE12_Vector_implE", !48, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseI14PmeAndFftGridsSaIS0_EE", !49, i64 0}
!51 = !{!"_ZTSSt6vectorI14PmeAndFftGridsSaIS0_EE", !50, i64 0}
!52 = !{!"p1 _ZTSN9gmx_pme_t8GridsRefE", !9, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN9gmx_pme_t8GridsRefESaIS1_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseIN9gmx_pme_t8GridsRefESaIS1_EE12_Vector_implE", !53, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIN9gmx_pme_t8GridsRefESaIS1_EE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorIN9gmx_pme_t8GridsRefESaIS1_EE", !55, i64 0}
!57 = !{!"any p2 pointer", !9, i64 0}
!58 = !{!"p2 _ZTS9t_complex", !57, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIP9t_complexSaIS1_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!"_ZTSNSt12_Vector_baseIP9t_complexSaIS1_EE12_Vector_implE", !59, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIP9t_complexSaIS1_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIP9t_complexSaIS1_EE", !61, i64 0}
!63 = !{!"p1 int", !9, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !64, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !65, i64 0}
!67 = !{!"_ZTSSt6vectorIiSaIiEE", !66, i64 0}
!68 = !{!"p1 float", !9, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorIfSaIfEE", !71, i64 0}
!73 = !{!"p1 _ZTS11PmeAtomComm", !9, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseI11PmeAtomCommSaIS0_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!75 = !{!"_ZTSNSt12_Vector_baseI11PmeAtomCommSaIS0_EE12_Vector_implE", !74, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseI11PmeAtomCommSaIS0_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorI11PmeAtomCommSaIS0_EE", !76, i64 0}
!78 = !{!"_ZTSSt5arrayISt6vectorIfSaIfEELm3EE", !5, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!80 = !{!"_ZTSNSt12_Vector_baseIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE12_Vector_implE", !79, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE", !80, i64 0}
!82 = !{!"_ZTSSt6vectorIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE", !81, i64 0}
!83 = !{!"_ZTSSt5arrayI13pme_overlap_tLm2EE", !5, i64 0}
!84 = !{!"_ZTSSt10_Head_baseILm0EP11PmeAtomCommLb0EE", !73, i64 0}
!85 = !{!"_ZTSSt11_Tuple_implILm0EJP11PmeAtomCommSt14default_deleteIS0_EEE", !84, i64 0}
!86 = !{!"_ZTSSt5tupleIJP11PmeAtomCommSt14default_deleteIS0_EEE", !85, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implI11PmeAtomCommSt14default_deleteIS0_EE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_dataI11PmeAtomCommSt14default_deleteIS0_ELb1ELb1EE", !87, i64 0}
!89 = !{!"_ZTSSt10unique_ptrI11PmeAtomCommSt14default_deleteIS0_EE", !88, i64 0}
!90 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !9, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!92 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !91, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !92, i64 0}
!94 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !93, i64 0}
!95 = !{!"p1 _ZTS8PmeSolve", !9, i64 0}
!96 = !{!"_ZTSSt10_Head_baseILm0EP8PmeSolveLb0EE", !95, i64 0}
!97 = !{!"_ZTSSt11_Tuple_implILm0EJP8PmeSolveSt14default_deleteIS0_EEE", !96, i64 0}
!98 = !{!"_ZTSSt5tupleIJP8PmeSolveSt14default_deleteIS0_EEE", !97, i64 0}
!99 = !{!"_ZTSSt15__uniq_ptr_implI8PmeSolveSt14default_deleteIS0_EE", !98, i64 0}
!100 = !{!"_ZTSSt15__uniq_ptr_dataI8PmeSolveSt14default_deleteIS0_ELb1ELb1EE", !99, i64 0}
!101 = !{!"_ZTSSt10unique_ptrI8PmeSolveSt14default_deleteIS0_EE", !100, i64 0}
!102 = !{!"_ZTS9gmx_pme_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !21, i64 32, !22, i64 56, !5, i64 64, !23, i64 80, !6, i64 84, !23, i64 88, !23, i64 89, !23, i64 90, !23, i64 91, !23, i64 92, !23, i64 93, !23, i64 94, !23, i64 95, !6, i64 96, !6, i64 100, !6, i64 104, !23, i64 108, !6, i64 112, !24, i64 116, !24, i64 120, !24, i64 124, !6, i64 128, !24, i64 132, !25, i64 136, !26, i64 144, !33, i64 152, !34, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !41, i64 192, !46, i64 200, !51, i64 216, !51, i64 240, !56, i64 264, !62, i64 288, !67, i64 312, !67, i64 336, !67, i64 360, !72, i64 384, !72, i64 408, !72, i64 432, !77, i64 456, !5, i64 480, !24, i64 516, !78, i64 520, !82, i64 592, !82, i64 616, !83, i64 640, !89, i64 928, !94, i64 936, !72, i64 960, !101, i64 984}
!103 = !{!102, !6, i64 164}
!104 = !{!102, !6, i64 104}
!105 = !{!102, !6, i64 168}
!106 = !{!102, !6, i64 172}
!107 = !{!69, !68, i64 0}
!108 = !{!24, !24, i64 0}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!"llvm.loop.isvectorized", i32 1}
!111 = !{!"llvm.loop.unroll.runtime.disable"}
!112 = !{!"branch_weights", i32 4, i32 28}
!113 = !{!"llvm.loop.unroll.disable"}
!114 = !{!"p1 _ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !9, i64 0}
!115 = !{!"long", !5, i64 0}
!116 = !{!"_ZTS9pmegrid_t", !5, i64 0, !5, i64 12, !5, i64 24, !6, i64 36, !5, i64 40, !114, i64 56, !115, i64 64}
!117 = !{!116, !114, i64 56}
!118 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!119 = !{!118, !68, i64 0}
!120 = !{!"p1 _ZTS9pmegrid_t", !9, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseI9pmegrid_tSaIS0_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!122 = !{!"_ZTSNSt12_Vector_baseI9pmegrid_tSaIS0_EE12_Vector_implE", !121, i64 0}
!123 = !{!"_ZTSSt12_Vector_baseI9pmegrid_tSaIS0_EE", !122, i64 0}
!124 = !{!"_ZTSSt6vectorI9pmegrid_tSaIS0_EE", !123, i64 0}
!125 = !{!"_ZTSSt5arrayISt6vectorIiSaIiEELm3EE", !5, i64 0}
!126 = !{!"_ZTS10pmegrids_t", !116, i64 0, !6, i64 72, !5, i64 76, !124, i64 88, !125, i64 112, !5, i64 184}
!127 = !{!"p1 _ZTS9t_complex", !9, i64 0}
end_hunk_0
