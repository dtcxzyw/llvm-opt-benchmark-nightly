Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/cut_mesh?download=true
inline.NumInlined: 1292
inline.NumDeleted: 672
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN3igl8cut_meshIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES4_S4_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRNS1_15PlainObjectBaseIT_EERNS6_IT0_EERNS1_10MatrixBaseIT1_EERNSD_IT2_EERKNSD_IT3_EERNS6_IT4_EE:bb.a
  br label %.loopexit.split-lp

.loopexit.split-lp.thread:                        ; preds = %bb.aa, %bb.ac, %bb.ab
  %lpad.loopexit228 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit150

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.af
  %lpad.loopexit.split-lp229 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %.sroa.0160.1 = phi ptr [ %.sroa.0160.1.ph, %.loopexit ], [ %.sroa.0160.0, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.1.ph, %.loopexit ], [ %.sroa.9164.0, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp229, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i149 = icmp eq ptr %.sroa.0160.1, null
  br i1 %.not.i.i.i149, label %_ZNSt6vectorIiSaIiEED2Ev.exit150, label %bb.ax

bb.ap:                                            ; preds = %.lr.ph253, %bb.av
  %.sroa.0151.0251 = phi ptr [ %.sroa.0160.2, %.lr.ph253 ], [ %i.jg, %bb.av ] ; 3 uses
  %i.iv = load i32, ptr %.sroa.0151.0251, align 4, !tbaa !28
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr [4 x i8], ptr %i.it, i64 %i.iw ; 4 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !28
  %i.iz = icmp eq i32 %i.iy, %i.gq
  br i1 %i.iz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 %.1255, ptr %i.ix, align 4, !tbaa !28
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.ja = getelementptr [4 x i8], ptr %i.ix, i64 %i.iu ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !28
  %i.jc = icmp eq i32 %i.jb, %i.gq
  br i1 %i.jc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 %.1255, ptr %i.ja, align 4, !tbaa !28
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.jd = getelementptr i8, ptr %i.ix, i64 %.idx304 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !28
  %i.jf = icmp eq i32 %i.je, %i.gq
  br i1 %i.jf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 %.1255, ptr %i.jd, align 4, !tbaa !28
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0151.0251, i64 4
  %.not224 = icmp eq ptr %.sroa.0151.0251, %.pn
  br i1 %.not224, label %._crit_edge254, label %bb.ap

._crit_edge254:                                   ; preds = %bb.av, %bb.ao
  %i.jh = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.ji = load i64, ptr %i.gh, align 8, !tbaa !26 ; 2 uses
  %i.jj = mul nsw i64 %i.ji, %indvars.iv277
  %i.jk = getelementptr [4 x i8], ptr %i.jh, i64 %indvars.iv281
  %i.jl = getelementptr [4 x i8], ptr %i.jk, i64 %i.jj
  store i32 -1, ptr %i.jl, align 4, !tbaa !28
  %i.jm = mul nsw i64 %i.ji, %i.hy
  %i.jn = getelementptr [4 x i8], ptr %i.jh, i64 %i.hx
  %i.jo = getelementptr [4 x i8], ptr %i.jn, i64 %i.jm
  store i32 -1, ptr %i.jo, align 4, !tbaa !28
  %i.jp = add nsw i32 %.1255, 1
  %.not.i.i.i148 = icmp eq ptr %.sroa.0160.2, null
  br i1 %.not.i.i.i148, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge254
  %i.jq = ptrtoint ptr %.sroa.13.2 to i64
  %i.jr = ptrtoint ptr %.sroa.0160.2 to i64
  %i.js = sub i64 %i.jq, %i.jr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0160.2, i64 noundef %i.js) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge254, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ay

bb.ax:                                            ; preds = %.loopexit.split-lp
  %i.jt = ptrtoint ptr %.sroa.13.1 to i64
  %i.ju = ptrtoint ptr %.sroa.0160.1 to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0160.1, i64 noundef %i.jv) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit150

_ZNSt6vectorIiSaIiEED2Ev.exit150:                 ; preds = %.loopexit.split-lp.thread, %bb.ax, %.loopexit.split-lp
  %.pn123.pn.pn = phi { ptr, i32 } [ %lpad.loopexit228, %.loopexit.split-lp.thread ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.az

bb.ay:                                            ; preds = %bb.y, %bb.z, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  %.3 = phi i32 [ %.1255, %bb.w ], [ %i.jp, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %.1255, %bb.z ], [ %.1255, %bb.y ] ; 2 uses
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next278, 3
  br i1 %exitcond280.not, label %bb.v, label %bb.w, !llvm.loop !122

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit150, %bb.x
  %.pn132.pn = phi { ptr, i32 } [ %.pn123.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit150 ], [ %i.gr, %bb.x ]
  call void @free(ptr noundef %.sroa.0176.0215) #20
  br label %.body

.body:                                            ; preds = %bb.az, %bb.c
  %.sroa.0189.0199 = phi ptr [ %i.f, %bb.c ], [ %.sroa.0189.0198207214, %bb.az ]
  %.pn132.pn.pn.pn = phi { ptr, i32 } [ %i.u, %bb.c ], [ %.pn132.pn, %bb.az ]
  call void @free(ptr noundef %.sroa.0189.0199) #20
  resume { ptr, i32 } %.pn132.pn.pn.pn
}

declare void @_ZN3igl16HalfEdgeIteratorIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEES3_S3_EC1ERKNS1_10MatrixBaseIS3_EES8_S8_iib(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #4

declare noundef i32 @_ZN3igl16HalfEdgeIteratorIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEES3_S3_E2FiEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef i32 @_ZN3igl16HalfEdgeIteratorIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEES3_S3_E2EiEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN3igl16HalfEdgeIteratorIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEES3_S3_E5flipEEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN3igl16HalfEdgeIteratorIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEES3_S3_E5flipFEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN3igl16HalfEdgeIteratorIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEES3_S3_E8isBorderEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.i) #20
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #22 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !30
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.82", align 8 ; 5 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.82", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.85", align 8 ; 7 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 12 uses
  %8 = alloca %"class.Eigen::Block.71", align 8   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = icmp eq i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %9 = icmp eq i64 %2, 3
  br i1 %9, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %1, 0
  %i.e = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.d, %i.e
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = sdiv i64 9223372036854775807, %2
  %i.g = icmp sgt i64 %1, %i.f
  br i1 %i.g, label %bb.e, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.c, %bb.d
  %i.i = mul nsw i64 %2, %1
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE18conservativeResizeElll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.i, i64 noundef %1, i64 noundef %2)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %1, i64 noundef %2)
          to label %bb.h unwind label %bb.g

common.resume:                                    ; preds = %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.ae, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %7, align 8, !tbaa !16
  call void @free(ptr noundef %i.k) #20
  br label %common.resume

bb.h:                                             ; preds = %bb.f
  %i.l = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.sroa.speculated24 = call i64 @llvm.smin.i64(i64 %i.l, i64 %1)
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %2, i64 3)
  %i.m = load ptr, ptr %0, align 8, !tbaa !16, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.n = load ptr, ptr %7, align 8, !tbaa !16, !noalias !130 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13, !noalias !130 ; 2 uses
  store ptr %i.n, ptr %8, align 8, !tbaa !42, !alias.scope !130
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.speculated24, ptr %i.q, align 8, !tbaa !43, !alias.scope !130
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %.sroa.speculated, ptr %i.r, align 8, !tbaa !43, !alias.scope !130
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.s, align 8, !tbaa !131, !alias.scope !130
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i64 %i.p, ptr %i.u, align 8, !tbaa !132, !alias.scope !130
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.m, ptr %3, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.l, ptr %i.v, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr %i.n, ptr %4, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.p, ptr %i.w, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %4, ptr %5, align 8, !tbaa !133
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.x, align 8, !tbaa !133
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %6, ptr %i.y, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %8, ptr %i.z, align 8, !tbaa !134
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIddEELi0EEELi4ELi0EE3runERSB_(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.aa = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.ab = load ptr, ptr %7, align 8, !tbaa !54
  store ptr %i.ab, ptr %0, align 8, !tbaa !54
  store ptr %i.aa, ptr %7, align 8, !tbaa !54
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !55
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !55
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !55
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !55
  call void @free(ptr noundef %i.aa) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.af = load ptr, ptr %7, align 8, !tbaa !16
  call void @free(ptr noundef %i.af) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

bb.k:                                             ; preds = %bb.b, %bb.i, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE18conservativeResizeElll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit5.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit5.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !tbaa !13
  %i.f = mul nsw i64 %i.e, 3
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %bb.c, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit5.i
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit5.i
  %i.i = shl nuw i64 %1, 3
  %i.j = tail call ptr @realloc(ptr noundef %i.a, i64 noundef %i.i) #25 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.l, %i.k
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZN5Eigen8internal36conditional_aligned_realloc_new_autoIdLb1EEEPT_S3_mm.exit

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal36conditional_aligned_realloc_new_autoIdLb1EEEPT_S3_mm.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  store ptr %i.j, ptr %0, align 8, !tbaa !16
  store i64 %2, ptr %i.b, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIddEELi0EEELi4ELi0EE3runERSB_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147, !nonnull !56, !align !57 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIddEELi0EEELi0ELi0EE3runERSB_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !43   ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIddEELi0EEELi0ELi0EE3runERSB_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !56, !align !57 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %0, align 8, !nonnull !56, !align !57 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !49   ; 3 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !43   ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !49   ; 3 uses
  %i.t = load i64, ptr %i.n, align 8, !tbaa !43   ; 3 uses
  %i.u = add nsw i64 %i.g, -1                     ; 2 uses
  %i.v = mul i64 %i.r, %i.u
  %i.w = add i64 %i.v, %i.j
  %i.x = shl i64 %i.w, 3
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.x
  %i.y = mul i64 %i.t, %i.u
  %i.z = add i64 %i.y, %i.j
  %i.aa = shl i64 %i.z, 3
  %scevgep64 = getelementptr i8, ptr %i.s, i64 %i.aa
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.q, %scevgep64
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ab = or i64 %i.t, %i.r
  %i.ac = and i64 %i.ab, 1152921504606846976
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %found.conflict, %i.ad
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.au, %._crit_edge.i ] ; 3 uses
  %i.af = mul nsw i64 %.0810.i, %i.r
  %i.ag = getelementptr [8 x i8], ptr %i.q, i64 %i.af ; 6 uses
  %i.ah = mul nsw i64 %.0810.i, %i.t
  %i.ai = getelementptr [8 x i8], ptr %i.s, i64 %i.ah ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ae
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %wide.load = load <2 x double>, ptr %i.ak, align 8, !tbaa !18, !alias.scope !148
  %wide.load66 = load <2 x double>, ptr %i.al, align 8, !tbaa !18, !alias.scope !148
  %i.am = getelementptr i8, ptr %i.aj, i64 16
  store <2 x double> %wide.load, ptr %i.aj, align 8, !tbaa !18, !alias.scope !149, !noalias !148
  store <2 x double> %wide.load66, ptr %i.am, align 8, !tbaa !18, !alias.scope !149, !noalias !148
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.prol = phi i64 [ %i.ar, %scalar.ph.prol ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ao = getelementptr [8 x i8], ptr %i.ag, i64 %.09.i.prol
  %i.ap = getelementptr [8 x i8], ptr %i.ai, i64 %.09.i.prol
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !18
  store double %i.aq, ptr %i.ao, align 8, !tbaa !18
  %i.ar = add nuw nsw i64 %.09.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !139

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ar, %scalar.ph.prol ]
  %i.as = sub nsw i64 %.09.i.ph, %i.j
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.au = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.au, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIddEELi0EEELi0ELi0EE3runERSB_.exit, label %.preheader.i, !llvm.loop !140

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bk, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.av = getelementptr [8 x i8], ptr %i.ag, i64 %.09.i
  %i.aw = getelementptr [8 x i8], ptr %i.ai, i64 %.09.i
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !18
  store double %i.ax, ptr %i.av, align 8, !tbaa !18
  %i.ay = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ag, i64 %i.ay
  %i.ba = getelementptr [8 x i8], ptr %i.ai, i64 %i.ay
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !18
  store double %i.bb, ptr %i.az, align 8, !tbaa !18
  %i.bc = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.ag, i64 %i.bc
  %i.be = getelementptr [8 x i8], ptr %i.ai, i64 %i.bc
  %i.bf = load double, ptr %i.be, align 8, !tbaa !18
  store double %i.bf, ptr %i.bd, align 8, !tbaa !18
  %i.bg = add nuw nsw i64 %.09.i, 3               ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %i.ag, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.ai, i64 %i.bg
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !18
  store double %i.bj, ptr %i.bh, align 8, !tbaa !18
  %i.bk = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bk, %i.j
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !141

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !43 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !43 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !150, !nonnull !56, !align !57
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !13
  %i.bt = and i64 %i.bs, 1
  %i.bu = icmp sgt i64 %i.bo, 0
  br i1 %i.bu, label %.lr.ph52, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIddEELi0EEELi0ELi0EE3runERSB_.exit

.lr.ph52:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
end_hunk_0
