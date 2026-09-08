Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_grid?download=true
inline.NumInlined: 401
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
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
  %i.a = mul i32 %1, 5                            ; 6 uses
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
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #25 ; 24 uses
  store i32 0, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.idx.i.i.i.i.i.i.i.a = add nsw i64 %i.d, -4    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i.a, i1 false), !tbaa !10
  %5 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #25
          to label %.lr.ph unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit42 ; 19 uses

.lr.ph:                                           ; preds = %.noexc34
  %6 = getelementptr i8, ptr %i.e, i64 %i.d       ; 8 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 8 uses
  store float 0.000000e+00, ptr %5, align 4, !tbaa !108
  %8 = getelementptr i8, ptr %5, i64 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.b ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %8, i8 0, i64 %.idx.i.i.i.i.i.i.i.a, i1 false), !tbaa !108
  %10 = getelementptr i8, ptr %5, i64 %i.d        ; 8 uses
  %i.g = sub i32 %1, %2                           ; 11 uses
  %i.h = icmp slt i32 %3, %1
  %or.cond = and i1 %i.h, %4
  %i.i = add nsw i32 %1, -1                       ; 6 uses
  %i.j = add nsw i32 %3, -1                       ; 3 uses
  br i1 %or.cond, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %i.k = zext nneg i32 %smax to i64               ; 3 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, i8 0, i64 %i.l, i1 false), !tbaa !108
  %xtraiter = and i64 %i.k, 3                     ; 3 uses
  %i.m = icmp slt i32 %i.a, 4
  br i1 %i.m, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %i.k, 2147483644
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.n = icmp sgt i32 %3, 0
  %smax83 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1) ; 3 uses
  %wide.trip.count84 = zext nneg i32 %smax83 to i64 ; 4 uses
  br i1 %i.n, label %.lr.ph.split.us.split.preheader, label %.lr.ph.split.us.split.us.preheader

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %xtraiter108 = and i64 %wide.trip.count84, 1
  %i.o = icmp slt i32 %i.a, 2
  br i1 %i.o, label %.lr.ph.split.us.split.us.epil.preheader, label %.lr.ph.split.us.split.us.preheader.new

.lr.ph.split.us.split.us.preheader.new:           ; preds = %.lr.ph.split.us.split.us.preheader
  %unroll_iter112 = and i64 %wide.trip.count84, 2147483646
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %xtraiter114 = and i64 %wide.trip.count84, 1
  %i.p = icmp slt i32 %i.a, 2
  br i1 %i.p, label %.lr.ph.split.us.split.epil.preheader, label %.lr.ph.split.us.split.preheader.new

.lr.ph.split.us.split.preheader.new:              ; preds = %.lr.ph.split.us.split.preheader
  %unroll_iter118 = and i64 %wide.trip.count84, 2147483646
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %bb.d, %.lr.ph.split.us.split.us.preheader.new
  %indvars.iv74 = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader.new ], [ %indvars.iv.next75.1, %bb.d ] ; 5 uses
  %niter113 = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader.new ], [ %niter113.next.1, %bb.d ]
  %i.q = trunc nuw nsw i64 %indvars.iv74 to i32
  %i.r = add i32 %i.g, %i.q
  %i.s = srem i32 %i.r, %1                        ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv74 ; 2 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv74 ; 2 uses
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !108
  %i.v = icmp eq i32 %i.s, %i.i
  br i1 %i.v, label %bb.b, label %.lr.ph.split.us.split.us.1

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  store i32 0, ptr %i.t, align 4, !tbaa !10
  store float -1.000000e+00, ptr %i.u, align 4, !tbaa !108
  br label %.lr.ph.split.us.split.us.1

.lr.ph.split.us.split.us.1:                       ; preds = %.lr.ph.split.us.split.us, %bb.b
  %indvars.iv.next75 = or disjoint i64 %indvars.iv74, 1 ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.next75 to i32
  %i.x = add i32 %i.g, %i.w
  %i.y = srem i32 %i.x, %1                        ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next75 ; 2 uses
  store i32 %i.y, ptr %i.z, align 4, !tbaa !10
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next75 ; 2 uses
  store float 0.000000e+00, ptr %i.aa, align 4, !tbaa !108
  %i.ab = icmp eq i32 %i.y, %i.i
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us.split.us.1
  store i32 0, ptr %i.z, align 4, !tbaa !10
  store float -1.000000e+00, ptr %i.aa, align 4, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.us.split.us.1
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %niter113.next.1 = add i64 %niter113, 2         ; 2 uses
  %niter113.ncmp.1 = icmp eq i64 %niter113.next.1, %unroll_iter112
  br i1 %niter113.ncmp.1, label %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit105.unr-lcssa, label %.lr.ph.split.us.split.us, !llvm.loop !300

.lr.ph.split.us.split:                            ; preds = %bb.g, %.lr.ph.split.us.split.preheader.new
  %indvars.iv80 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %indvars.iv.next81.1, %bb.g ] ; 5 uses
  %niter119 = phi i64 [ 0, %.lr.ph.split.us.split.preheader.new ], [ %niter119.next.1, %bb.g ]
  %i.ac = trunc nuw nsw i64 %indvars.iv80 to i32
  %i.ad = add i32 %i.g, %i.ac
  %i.ae = srem i32 %i.ad, %1                      ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv80 ; 2 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !10
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv80 ; 2 uses
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !108
  %i.ah = icmp eq i32 %i.ae, %i.i
  br i1 %i.ah, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.split
  %i.ai = icmp eq i32 %i.ae, %3
  br i1 %i.ai, label %.sink.split, label %.lr.ph.split.us.split.1

.sink.split:                                      ; preds = %.lr.ph.split.us.split, %bb.e
  %.sink102 = phi i32 [ %i.j, %bb.e ], [ 0, %.lr.ph.split.us.split ]
  %.sink = phi float [ 1.000000e+00, %bb.e ], [ -1.000000e+00, %.lr.ph.split.us.split ]
  store i32 %.sink102, ptr %i.af, align 4, !tbaa !10
  store float %.sink, ptr %i.ag, align 4, !tbaa !108
  br label %.lr.ph.split.us.split.1

.lr.ph.split.us.split.1:                          ; preds = %.sink.split, %bb.e
  %indvars.iv.next81 = or disjoint i64 %indvars.iv80, 1 ; 3 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv.next81 to i32
  %i.ak = add i32 %i.g, %i.aj
  %i.al = srem i32 %i.ak, %1                      ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next81 ; 2 uses
  store i32 %i.al, ptr %i.am, align 4, !tbaa !10
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next81 ; 2 uses
  store float 0.000000e+00, ptr %i.an, align 4, !tbaa !108
  %i.ao = icmp eq i32 %i.al, %i.i
  br i1 %i.ao, label %.sink.split.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.split.1
  %i.ap = icmp eq i32 %i.al, %3
  br i1 %i.ap, label %.sink.split.1, label %bb.g

.sink.split.1:                                    ; preds = %bb.f, %.lr.ph.split.us.split.1
  %.sink102.1 = phi i32 [ %i.j, %bb.f ], [ 0, %.lr.ph.split.us.split.1 ]
  %.sink.1 = phi float [ 1.000000e+00, %bb.f ], [ -1.000000e+00, %.lr.ph.split.us.split.1 ]
  store i32 %.sink102.1, ptr %i.am, align 4, !tbaa !10
  store float %.sink.1, ptr %i.an, align 4, !tbaa !108
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.1, %bb.f
  %indvars.iv.next81.1 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %niter119.next.1 = add i64 %niter119, 2         ; 2 uses
  %niter119.ncmp.1 = icmp eq i64 %niter119.next.1, %unroll_iter118
  br i1 %niter119.ncmp.1, label %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit.unr-lcssa, label %.lr.ph.split.us.split, !llvm.loop !300

_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod116.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod116.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.split.us.split.epil.preheader

.lr.ph.split.us.split.epil.preheader:             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit.unr-lcssa, %.lr.ph.split.us.split.preheader
  %indvars.iv80.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next81.1, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod117 = trunc i32 %smax83 to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.aq = trunc nuw nsw i64 %indvars.iv80.epil.init to i32
  %i.ar = add i32 %i.g, %i.aq
  %i.as = srem i32 %i.ar, %1                      ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv80.epil.init ; 2 uses
  store i32 %i.as, ptr %i.at, align 4, !tbaa !10
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv80.epil.init ; 2 uses
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !108
  %i.av = icmp eq i32 %i.as, %i.i
  br i1 %i.av, label %.sink.split.epil, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us.split.epil.preheader
  %i.aw = icmp eq i32 %i.as, %3
  br i1 %i.aw, label %.sink.split.epil, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.sink.split.epil:                                 ; preds = %bb.h, %.lr.ph.split.us.split.epil.preheader
  %.sink102.epil = phi i32 [ %i.j, %bb.h ], [ 0, %.lr.ph.split.us.split.epil.preheader ]
  %.sink.epil = phi float [ 1.000000e+00, %bb.h ], [ -1.000000e+00, %.lr.ph.split.us.split.epil.preheader ]
  store i32 %.sink102.epil, ptr %i.at, align 4, !tbaa !10
  store float %.sink.epil, ptr %i.au, align 4, !tbaa !108
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit105.unr-lcssa: ; preds = %bb.d
  %lcmp.mod110.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod110.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.split.us.split.us.epil.preheader

.lr.ph.split.us.split.us.epil.preheader:          ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit105.unr-lcssa, %.lr.ph.split.us.split.us.preheader
  %indvars.iv74.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %indvars.iv.next75.1, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit105.unr-lcssa ] ; 3 uses
  %lcmp.mod111 = trunc i32 %smax83 to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.ax = trunc nuw nsw i64 %indvars.iv74.epil.init to i32
  %i.ay = add i32 %i.g, %i.ax
  %i.az = srem i32 %i.ay, %1                      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv74.epil.init ; 2 uses
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !10
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv74.epil.init ; 2 uses
  store float 0.000000e+00, ptr %i.bb, align 4, !tbaa !108
  %i.bc = icmp eq i32 %i.az, %i.i
  br i1 %i.bc, label %bb.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.i:                                             ; preds = %.lr.ph.split.us.split.us.epil.preheader
  store i32 0, ptr %i.ba, align 4, !tbaa !10
  store float -1.000000e+00, ptr %i.bb, align 4, !tbaa !108
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit106.unr-lcssa: ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit106.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.3, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit106.unr-lcssa ]
  %lcmp.mod107 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod107)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.split.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.split.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.split.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.epil ]
  %i.bd = trunc nuw nsw i64 %indvars.iv.epil to i32
  %i.be = add i32 %i.g, %i.bd
  %i.bf = srem i32 %i.be, %1
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !10
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.split.epil, !llvm.loop !301

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit106.unr-lcssa, %.lr.ph.split.epil, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit105.unr-lcssa, %bb.i, %.lr.ph.split.us.split.us.epil.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit.unr-lcssa, %.sink.split.epil, %bb.h, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.0.i.i.i.i.i3799 = phi ptr [ %10, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit.unr-lcssa ], [ %10, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit105.unr-lcssa ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %10, %bb.h ], [ %10, %.sink.split.epil ], [ %10, %.lr.ph.split.us.split.us.epil.preheader ], [ %10, %bb.i ], [ %10, %.lr.ph.split.epil ], [ %10, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit106.unr-lcssa ]
  %.sroa.14.098 = phi ptr [ %9, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit.unr-lcssa ], [ %9, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit105.unr-lcssa ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %9, %bb.h ], [ %9, %.sink.split.epil ], [ %9, %.lr.ph.split.us.split.us.epil.preheader ], [ %9, %bb.i ], [ %9, %.lr.ph.split.epil ], [ %9, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit106.unr-lcssa ]
  %.sroa.043.097 = phi ptr [ %5, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit.unr-lcssa ], [ %5, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit105.unr-lcssa ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %5, %bb.h ], [ %5, %.sink.split.epil ], [ %5, %.lr.ph.split.us.split.us.epil.preheader ], [ %5, %bb.i ], [ %5, %.lr.ph.split.epil ], [ %5, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit106.unr-lcssa ]
  %.sroa.17.06496 = phi ptr [ %7, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit.unr-lcssa ], [ %7, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit105.unr-lcssa ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %7, %bb.h ], [ %7, %.sink.split.epil ], [ %7, %.lr.ph.split.us.split.us.epil.preheader ], [ %7, %bb.i ], [ %7, %.lr.ph.split.epil ], [ %7, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit106.unr-lcssa ]
  %.sroa.050.06695 = phi ptr [ %i.e, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit.unr-lcssa ], [ %i.e, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit105.unr-lcssa ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.e, %bb.h ], [ %i.e, %.sink.split.epil ], [ %i.e, %.lr.ph.split.us.split.us.epil.preheader ], [ %i.e, %bb.i ], [ %i.e, %.lr.ph.split.epil ], [ %i.e, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit106.unr-lcssa ]
  %.0.i.i.i.i.i6794 = phi ptr [ %6, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit.unr-lcssa ], [ %6, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit105.unr-lcssa ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %6, %bb.h ], [ %6, %.sink.split.epil ], [ %6, %.lr.ph.split.us.split.us.epil.preheader ], [ %6, %bb.i ], [ %6, %.lr.ph.split.epil ], [ %6, %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit106.unr-lcssa ]
  store ptr %.sroa.043.097, ptr %0, align 8, !tbaa !107
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i3799, ptr %i.bh, align 8, !tbaa !302
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.098, ptr %i.bi, align 8, !tbaa !303
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.050.06695, ptr %i.bj, align 8, !tbaa !152
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i.i.i.i6794, ptr %i.bk, align 8, !tbaa !151
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.17.06496, ptr %i.bl, align 8, !tbaa !164
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit42:                  ; preds = %.noexc34
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.d) #23
  resume { ptr, i32 } %i.bm

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.3, %.lr.ph.split ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.3, %.lr.ph.split ]
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32
  %i.bo = add i32 %i.g, %i.bn
  %i.bp = srem i32 %i.bo, %1
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !10
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.br = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bs = add i32 %i.g, %i.br
  %i.bt = srem i32 %i.bs, %1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !10
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.bw = add i32 %i.g, %i.bv
  %i.bx = srem i32 %i.bw, %1
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.1
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !10
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.ca = add i32 %i.g, %i.bz
  %i.cb = srem i32 %i.ca, %1
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.2
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !10
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNSt6vectorIiSaIiEED2Ev.exit.loopexit106.unr-lcssa, label %.lr.ph.split, !llvm.loop !300
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
end_hunk_0
