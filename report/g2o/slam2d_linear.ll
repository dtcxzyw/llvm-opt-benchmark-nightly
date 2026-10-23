Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/slam2d_linear?download=true
inline.NumInlined: 7562
inline.NumDeleted: 4021
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.a, align 8, !tbaa !194
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.b, align 8, !tbaa !196
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !148  ; 2 uses
  %.not = icmp ne i64 %i.d, %2
  %i.e = icmp eq i64 %i.d, 0
  %or.cond = or i1 %.not, %i.e
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154
  tail call void @free(ptr noundef %i.g) #35
  %i.h = shl i64 %2, 2
  %i.i = add i64 %i.h, 4
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #40 ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !154
  %.not6 = icmp eq ptr %i.j, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #39
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %2, ptr %i.c, align 8, !tbaa !148
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !155  ; 2 uses
  %.not7 = icmp eq ptr %i.m, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #35
  store ptr null, ptr %i.l, align 8, !tbaa !155
  %.pre = load i64, ptr %i.c, align 8, !tbaa !148
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i64 [ %.pre, %bb.f ], [ %2, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !154
  %i.q = shl i64 %i.n, 2
  %i.r = add i64 %i.q, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.r, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !156    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #18

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195
  tail call void @free(ptr noundef %i.b) #35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !195
  tail call void @free(ptr noundef %i.d) #35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !195
  tail call void @free(ptr noundef %i.f) #35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !195
  tail call void @free(ptr noundef %i.h) #35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !197
  tail call void @free(ptr noundef %i.j) #35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !154
  tail call void @free(ptr noundef %i.l) #35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !155
  tail call void @free(ptr noundef %i.n) #35
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !156  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !157  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15computeCholeskyERKNS_17SparseBlockMatrixIS3_EERd(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !146, !range !198, !noundef !199
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !201  ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !202
  %.not.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rowsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !48
  %i.j = sext i32 %i.i to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rowsEv.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rowsEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !201  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !202
  %.not.i8 = icmp eq ptr %i.n, %i.o
  br i1 %.not.i8, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rowsEv.exit
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !48
  %i.r = sext i32 %i.q to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rowsEv.exit, %bb.d
  %i.s = phi i64 [ %i.r, %bb.d ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rowsEv.exit ]
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 noundef %i.k, i64 noundef %i.s)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !146, !range !198
  %3 = trunc nuw i8 %.pre to i1
  %4 = xor i1 %3, true
  br label %bb.e

bb.e:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit, %bb.a
  %i.t = phi i1 [ %4, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4colsEv.exit ], [ true, %bb.a ]
  tail call void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE16fillSparseMatrixERKNS_17SparseBlockMatrixIS3_EEb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, i1 noundef zeroext %i.t)
  %i.u = load i8, ptr %i.a, align 1, !tbaa !146, !range !198, !noundef !199
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE28computeSymbolicDecompositionERKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i8 0, ptr %i.a, align 1, !tbaa !146
  %i.w = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  store double %i.w, ptr %2, align 8, !tbaa !175
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE9factorizeILb0EEEvRKS3_(ptr noundef nonnull align 8 dereferenceable(184) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !150
  %.not = icmp eq i32 %i.aa, 0                    ; 2 uses
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !125, !range !198, !noundef !199
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call noundef zeroext i1 @_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11writeOctaveEPKcb(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull @.str.7, i1 noundef zeroext true) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  ret i1 %.not
}

declare noundef double @_ZN3g2o18get_monotonic_timeEv() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE16fillSparseMatrixERKNS_17SparseBlockMatrixIS3_EEb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %2, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !160  ; 2 uses
  %.not53.i = icmp eq ptr %i.e, %i.f
  br i1 %.not53.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE7fillCCSEPdb.exit, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !438
  %.pre58.i = load ptr, ptr %.pre.i, align 8, !tbaa !202
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge42.i, %.lr.ph50.i
  %i.j = phi ptr [ %i.f, %.lr.ph50.i ], [ %i.w, %._crit_edge42.i ] ; 5 uses
  %i.k = phi ptr [ %i.e, %.lr.ph50.i ], [ %i.x, %._crit_edge42.i ] ; 2 uses
  %i.l = phi ptr [ %.pre58.i, %.lr.ph50.i ], [ %i.y, %._crit_edge42.i ] ; 3 uses
  %.02647.i = phi i64 [ 0, %.lr.ph50.i ], [ %i.z, %._crit_edge42.i ] ; 6 uses
  %.02746.i = phi i32 [ 0, %.lr.ph50.i ], [ %i.v, %._crit_edge42.i ] ; 2 uses
  %.02845.i = phi ptr [ %i.h, %.lr.ph50.i ], [ %.1.lcssa.i, %._crit_edge42.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02647.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !48   ; 3 uses
  %i.o = sub nsw i32 %i.n, %.02746.i              ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph41.i, label %._crit_edge42.i

.lr.ph41.i:                                       ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.02647.i ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !204
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !204
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %._crit_edge42.i, label %.lr.ph41.split.preheader.i

.lr.ph41.split.preheader.i:                       ; preds = %.lr.ph41.i
  %wide.trip.count.i = zext nneg i32 %i.o to i64
  br label %.lr.ph41.split.i

._crit_edge42.loopexit55.i:                       ; preds = %._crit_edge.i
  %.pre59.i = load ptr, ptr %i.i, align 8, !tbaa !438
  %.pre60.i = load ptr, ptr %.pre59.i, align 8, !tbaa !202 ; 2 uses
  %.pre61.i = load ptr, ptr %i.d, align 8, !tbaa !161
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.pre60.i, i64 %.02647.i
  %.pre62.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !48
  br label %._crit_edge42.i

._crit_edge42.i:                                  ; preds = %._crit_edge42.loopexit55.i, %.lr.ph41.i, %bb.c
  %i.v = phi i32 [ %i.n, %bb.c ], [ %.pre62.i, %._crit_edge42.loopexit55.i ], [ %i.n, %.lr.ph41.i ]
  %i.w = phi ptr [ %i.j, %bb.c ], [ %i.al, %._crit_edge42.loopexit55.i ], [ %i.j, %.lr.ph41.i ] ; 2 uses
  %i.x = phi ptr [ %i.k, %bb.c ], [ %.pre61.i, %._crit_edge42.loopexit55.i ], [ %i.k, %.lr.ph41.i ] ; 2 uses
  %i.y = phi ptr [ %i.l, %bb.c ], [ %.pre60.i, %._crit_edge42.loopexit55.i ], [ %i.l, %.lr.ph41.i ]
  %.1.lcssa.i = phi ptr [ %.02845.i, %bb.c ], [ %.2.lcssa.i, %._crit_edge42.loopexit55.i ], [ %.02845.i, %.lr.ph41.i ]
  %i.z = add nuw i64 %.02647.i, 1                 ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = icmp ult i64 %i.z, %i.ad
  br i1 %i.ae, label %bb.c, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE7fillCCSEPdb.exit, !llvm.loop !422

.lr.ph41.split.i:                                 ; preds = %._crit_edge.i, %.lr.ph41.split.preheader.i
  %i.af = phi ptr [ %i.j, %.lr.ph41.split.preheader.i ], [ %i.al, %._crit_edge.i ]
  %i.ag = phi ptr [ %i.j, %.lr.ph41.split.preheader.i ], [ %i.am, %._crit_edge.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph41.split.preheader.i ], [ %.pre63.i, %._crit_edge.i ] ; 2 uses
  %.138.i = phi ptr [ %.02845.i, %.lr.ph41.split.preheader.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.02647.i ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !204 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !204
  %.not3435.i = icmp eq ptr %i.ai, %i.ak
  %.pre63.i = add nuw nsw i64 %indvars.iv.i, 1    ; 3 uses
  br i1 %.not3435.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph41.split.i
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 24
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph41.split.i
  %i.al = phi ptr [ %i.af, %.lr.ph41.split.i ], [ %i.bc, %bb.e ] ; 2 uses
  %i.am = phi ptr [ %i.ag, %.lr.ph41.split.i ], [ %i.bc, %bb.e ]
  %.2.lcssa.i = phi ptr [ %.138.i, %.lr.ph41.split.i ], [ %i.ba, %bb.e ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %.pre63.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge42.loopexit55.i, label %.lr.ph41.split.i, !llvm.loop !423

.lr.ph.split.i:                                   ; preds = %bb.e, %.lr.ph.i
  %.237.i = phi ptr [ %i.ba, %bb.e ], [ %.138.i, %.lr.ph.i ] ; 2 uses
  %.sroa.029.036.i = phi ptr [ %i.bb, %bb.e ], [ %i.ai, %.lr.ph.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.029.036.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !207
  %i.ap = load i32, ptr %.sroa.029.036.i, align 8, !tbaa !208 ; 2 uses
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !440, !nonnull !199, !align !209
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !202
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.i
  %i.aw = phi i32 [ %i.av, %bb.d ], [ 0, %.lr.ph.split.i ]
  %i.ax = icmp eq i32 %i.aw, %.02746.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i
  %spec.select.i = select i1 %i.ax, i64 %.pre63.i, i64 3 ; 2 uses
  %i.az = shl nuw nsw i64 %spec.select.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.237.i, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.az, i1 false)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.237.i, i64 %spec.select.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.029.036.i, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !160 ; 3 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %.02647.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !204
  %.not34.i = icmp eq ptr %i.bb, %i.bf
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !424

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE19initMatrixStructureERKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(73) %1)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !212 ; 2 uses
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !213 ; 7 uses
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8nonZerosEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 48                ; 3 uses
  %xtraiter = and i64 %i.bn, 3                    ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 4
  br i1 %i.bo, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.bn, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.cf, %.lr.ph.i.i ] ; 5 uses
  %.056.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.ce, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !218
  %i.bs = add i64 %i.br, %.056.i.i
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !218
  %i.bw = add i64 %i.bv, %i.bs
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
end_hunk_0
