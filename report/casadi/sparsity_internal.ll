Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sparsity_internal?download=true
inline.NumInlined: 4371
inline.NumDeleted: 628
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN6casadi16SparsityInternal10ldl_colindEPKxPxS3_S3_:bb.a
  br i1 %lcmp.mod.not, label %._crit_edge65, label %.lr.ph64.epil.preheader

.lr.ph64.epil.preheader:                          ; preds = %._crit_edge65.loopexit.unr-lcssa, %._crit_edge61
  %.epil.init = phi i64 [ 0, %._crit_edge61 ], [ %i.az, %._crit_edge65.loopexit.unr-lcssa ]
  %.162.epil.init = phi i64 [ 0, %._crit_edge61 ], [ %i.aw, %._crit_edge65.loopexit.unr-lcssa ]
  %lcmp.mod73 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod73)
  br label %.lr.ph64.epil

.lr.ph64.epil:                                    ; preds = %.lr.ph64.epil, %.lr.ph64.epil.preheader
  %i.ba = phi i64 [ %i.be, %.lr.ph64.epil ], [ %.epil.init, %.lr.ph64.epil.preheader ]
  %.162.epil = phi i64 [ %i.bb, %.lr.ph64.epil ], [ %.162.epil.init, %.lr.ph64.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph64.epil ], [ 0, %.lr.ph64.epil.preheader ]
  %i.bb = add nuw nsw i64 %.162.epil, 1           ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !8
  %i.be = add nsw i64 %i.bd, %i.ba                ; 2 uses
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge65, label %.lr.ph64.epil, !llvm.loop !53

._crit_edge65:                                    ; preds = %._crit_edge65.loopexit.unr-lcssa, %.lr.ph64.epil, %._crit_edge61.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6casadi16SparsityInternal7ldl_rowEPKxS2_PxS3_S3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !8      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = icmp sgt i64 %i.a, 0
  br i1 %i.e, label %.lr.ph57, label %._crit_edge61

.preheader:                                       ; preds = %.critedge
  %min.iters.check = icmp ult i64 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %i.a, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <2 x i64> [ <i64 poison, i64 0>, %vector.ph ], [ %wide.load69, %vector.body ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !8 ; 2 uses
  %wide.load69 = load <2 x i64>, ptr %i.g, align 8, !tbaa !8 ; 3 uses
  %i.h = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.i = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load69, <2 x i32> <i32 1, i32 2>
  store <2 x i64> %i.h, ptr %i.f, align 8, !tbaa !8
  store <2 x i64> %i.i, ptr %i.g, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load69, i64 1
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge61, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %.preheader, %middle.block
  %.159.ph = phi i64 [ 0, %.preheader ], [ %vector.recur.extract, %middle.block ]
  %.14358.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph60

.lr.ph57:                                         ; preds = %bb.a, %.critedge
  %.04255 = phi i64 [ %i.n, %.critedge ], [ 0, %bb.a ] ; 9 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04255
  store i64 %.04255, ptr %i.k, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.04255
  %i.m = load i64, ptr %i.l, align 8, !tbaa !8    ; 2 uses
  %i.n = add nuw nsw i64 %.04255, 1               ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !8    ; 2 uses
  %i.q = icmp slt i64 %i.m, %i.p
  br i1 %i.q, label %.lr.ph52, label %.critedge

.lr.ph52:                                         ; preds = %.lr.ph57, %._crit_edge
  %i.r = phi i64 [ %i.ag, %._crit_edge ], [ %i.p, %.lr.ph57 ]
  %.050 = phi i64 [ %i.ah, %._crit_edge ], [ %i.m, %.lr.ph57 ] ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.050
  %i.t = load i64, ptr %i.s, align 8, !tbaa !8    ; 3 uses
  %i.u = icmp slt i64 %i.t, %.04255
  br i1 %i.u, label %.preheader47, label %.critedge

.preheader47:                                     ; preds = %.lr.ph52
  %i.v = getelementptr inbounds [8 x i8], ptr %4, i64 %i.t ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !8
  %.not48 = icmp eq i64 %i.w, %.04255
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader47, %.lr.ph
  %i.x = phi ptr [ %i.ae, %.lr.ph ], [ %i.v, %.preheader47 ]
  %.04449 = phi i64 [ %i.ad, %.lr.ph ], [ %i.t, %.preheader47 ] ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %2, i64 %.04449 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !8    ; 2 uses
  %i.aa = add nsw i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !8
  %i.ab = getelementptr inbounds [8 x i8], ptr %3, i64 %i.z
  store i64 %.04255, ptr %i.ab, align 8, !tbaa !8
  store i64 %.04255, ptr %i.x, align 8, !tbaa !8
  %i.ac = getelementptr inbounds [8 x i8], ptr %1, i64 %.04449
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !8  ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !8
  %.not = icmp eq i64 %i.af, %.04255
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !55

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i64, ptr %i.o, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader47
  %i.ag = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.r, %.preheader47 ] ; 2 uses
  %i.ah = add nsw i64 %.050, 1                    ; 2 uses
  %i.ai = icmp slt i64 %i.ah, %i.ag
  br i1 %i.ai, label %.lr.ph52, label %.critedge, !llvm.loop !56

.critedge:                                        ; preds = %._crit_edge, %.lr.ph52, %.lr.ph57
  %exitcond.not = icmp eq i64 %i.n, %i.a
  br i1 %exitcond.not, label %.preheader, label %.lr.ph57, !llvm.loop !57

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.159 = phi i64 [ %i.ak, %.lr.ph60 ], [ %.159.ph, %.lr.ph60.preheader ]
  %.14358 = phi i64 [ %i.al, %.lr.ph60 ], [ %.14358.ph, %.lr.ph60.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.14358 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !8
  store i64 %.159, ptr %i.aj, align 8, !tbaa !8
  %i.al = add nuw nsw i64 %.14358, 1              ; 2 uses
  %exitcond62.not = icmp eq i64 %i.al, %i.a
  br i1 %exitcond62.not, label %._crit_edge61, label %.lr.ph60, !llvm.loop !58

._crit_edge61:                                    ; preds = %.lr.ph60, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi16SparsityInternalC2ExxPKxS2_(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 24)) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6casadi16SparsityInternalE, i64 16), ptr %0, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = add nsw i64 %2, 3
  %i.d = getelementptr inbounds [8 x i8], ptr %3, i64 %2 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %i.f = add nsw i64 %i.c, %i.e                   ; 5 uses
  %i.g = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.h = shl nuw nsw i64 %i.f, 3
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28
          to label %.noexc22 unwind label %bb.i   ; 8 uses

.noexc22:                                         ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  store ptr %i.i, ptr %i.b, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.k, align 8, !tbaa !65
  store i64 0, ptr %i.i, align 8, !tbaa !8
  %i.l = getelementptr i8, ptr %i.i, i64 8        ; 3 uses
  %i.m = add nsw i64 %i.f, -1                     ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc22
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc22
  %.0.i.i.i.i.i = phi ptr [ %i.o, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc22 ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i.i.i.i, ptr %i.p, align 8, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.q, align 8, !tbaa !67
  store i64 %1, ptr %i.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %i.r, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.t = icmp sgt i64 %2, 0
  br i1 %i.t, label %bb.c, label %bb.d, !prof !76

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i
  %.idx = shl nsw i64 %2, 3
  %i.u = add nuw nsw i64 %.idx, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %3, i64 %i.u, i1 false)
  br label %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i
  %i.v = icmp eq i64 %2, 0
  br i1 %i.v, label %bb.e, label %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %3, align 8, !tbaa !8
  store i64 %i.w, ptr %i.s, align 8, !tbaa !8
  br label %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit: ; preds = %bb.e, %bb.d, %bb.c
  %i.x = load i64, ptr %i.d, align 8, !tbaa !8    ; 3 uses
  %i.y = getelementptr [8 x i8], ptr %i.i, i64 %2
  %i.z = getelementptr i8, ptr %i.y, i64 24       ; 2 uses
  %i.aa = icmp sgt i64 %i.x, 1
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !76

bb.f:                                             ; preds = %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit
  %.idx28 = shl nsw i64 %i.x, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %4, i64 %.idx28, i1 false)
  br label %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit23

bb.g:                                             ; preds = %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit
  %i.ab = icmp eq i64 %i.x, 1
  br i1 %i.ab, label %bb.h, label %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit23

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %4, align 8, !tbaa !8
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !8
  br label %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit23

_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit23: ; preds = %bb.h, %bb.g, %bb.f
  ret void

bb.i:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #29
  resume { ptr, i32 } %i.ad
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6casadi16SparsityInternalD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(56) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6casadi16SparsityInternalE, i64 16), ptr %0, align 8, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6casadi16SparsityInternal3BtfD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.b) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 152) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEEE, i64 16), ptr %0, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  invoke void @_ZN6casadi14GenericWeakRefINS_12SharedObjectENS_20SharedObjectInternalEE4killEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !77   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #31
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i: ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 8) #30
  br label %_ZN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit

bb.i:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #31
  unreachable

_ZN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %bb.f, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi16SparsityInternal3BtfD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIxSaIxEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit2

_ZNSt6vectorIxSaIxEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIxSaIxEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit4

_ZNSt6vectorIxSaIxEED2Ev.exit4:                   ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIxSaIxEED2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit6

_ZNSt6vectorIxSaIxEED2Ev.exit6:                   ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit4, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !61 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIxSaIxEED2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit6
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !65
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit8

_ZNSt6vectorIxSaIxEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit6, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !61 ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIxSaIxEED2Ev.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !65
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit10

_ZNSt6vectorIxSaIxEED2Ev.exit10:                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit8, %bb.g
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6casadi16SparsityInternalD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6casadi16SparsityInternalD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #30
  ret void
end_hunk_0
begin_hunk_1_@_ZNK6casadi16SparsityInternal3dfsExxRSt6vectorIxSaIxEES4_RKS3_RS1_IbSaIbEE:bb.a
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr [8 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %3, align 8, !tbaa !61     ; 3 uses
  store i64 %1, ptr %i.h, align 8, !tbaa !8
  %i.i = load ptr, ptr %5, align 8, !tbaa !83     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = icmp eq ptr %i.i, %i.k
  %i.m = load ptr, ptr %6, align 8, !tbaa !143    ; 2 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !61     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.l
  %.04576 = phi i64 [ 0, %bb.a ], [ %.4, %bb.l ]  ; 5 uses
  %.04875 = phi i64 [ %2, %bb.a ], [ %.149, %bb.l ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.04576
  %i.p = load i64, ptr %i.o, align 8, !tbaa !8    ; 6 uses
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.s = phi i64 [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 4 uses
  %i.t = sdiv i64 %i.p, 64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.t
  %i.v = and i64 %i.p, -9223372036854775745
  %i.w = icmp ugt i64 %i.v, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.w, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.u, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.x = and i64 %i.p, 63
  %i.y = shl nuw i64 1, %i.x                      ; 2 uses
  %i.z = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !146 ; 2 uses
  %i.aa = and i64 %i.z, %i.y
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = or i64 %i.z, %i.y
  store i64 %i.ab, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !146
  %i.ac = icmp slt i64 %i.s, 0
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.s
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.af = phi i64 [ %i.ae, %bb.f ], [ 0, %bb.e ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.04576
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ah = icmp slt i64 %i.s, 0
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.s
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.al = phi i64 [ %i.ak, %bb.i ], [ 0, %bb.h ]  ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.04576 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !8  ; 2 uses
  %i.ao = icmp slt i64 %i.an, %i.al
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.04374 = phi i64 [ %i.ba, %bb.k ], [ %i.an, %bb.j ] ; 3 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.04374
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !8  ; 4 uses
  %i.ar = sdiv i64 %i.aq, 64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ar
  %i.at = and i64 %i.aq, -9223372036854775745
  %i.au = icmp ugt i64 %i.at, -9223372036854775808
  %storemerge.idx.i.i.i.i.i56 = select i1 %i.au, i64 -8, i64 0
  %storemerge.i.i.i.i.i57 = getelementptr inbounds i8, ptr %i.as, i64 %storemerge.idx.i.i.i.i.i56
  %i.av = and i64 %i.aq, 63
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = load i64, ptr %storemerge.i.i.i.i.i57, align 8, !tbaa !146
  %i.ay = and i64 %i.aw, %i.ax
  %.not72 = icmp eq i64 %i.ay, 0
  br i1 %.not72, label %.thread68, label %bb.k

.thread68:                                        ; preds = %.lr.ph
  store i64 %.04374, ptr %i.am, align 8, !tbaa !8
  %i.az = add nuw nsw i64 %.04576, 1              ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.ba = add i64 %.04374, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !147

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %i.bb = add nsw i64 %.04576, -1
  %i.bc = add nsw i64 %.04875, -1                 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.thread68, %._crit_edge
  %.sink85 = phi i64 [ %i.az, %.thread68 ], [ %i.bc, %._crit_edge ]
  %.lcssa.sink = phi i64 [ %i.aq, %.thread68 ], [ %i.p, %._crit_edge ]
  %.149 = phi i64 [ %.04875, %.thread68 ], [ %i.bc, %._crit_edge ] ; 2 uses
  %.4 = phi i64 [ %i.az, %.thread68 ], [ %i.bb, %._crit_edge ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sink85
  store i64 %.lcssa.sink, ptr %i.bd, align 8, !tbaa !8
  %i.be = icmp sgt i64 %.4, -1
  br i1 %i.be, label %bb.b, label %bb.m, !llvm.loop !148

bb.m:                                             ; preds = %bb.l
  ret i64 %.149
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6casadi16SparsityInternal3sccERSt6vectorIxSaIxEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %5 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %7 = alloca %"class.std::vector.3", align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !149
  invoke void @_ZNK6casadi16SparsityInternal9transposeERSt6vectorIxSaIxEEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %5, ptr noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !61, !noalias !149 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65, !noalias !149
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #30
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %3, align 8, !tbaa !61, !noalias !149 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit3.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65, !noalias !149
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit3.i

_ZNSt6vectorIxSaIxEED2Ev.exit3.i:                 ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !149
  br label %.body

bb.f:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !149
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !8    ; 4 uses
  %i.r = and i64 %i.q, 8646911284551352320
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.f
  %i.s = shl i64 %i.q, 4
  %i.t = or disjoint i64 %i.s, 8                  ; 3 uses
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #28
          to label %.noexc103 unwind label %bb.t  ; 10 uses

.noexc103:                                        ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  store i64 0, ptr %i.u, align 8, !tbaa !8
  %i.v = icmp eq i64 %i.q, 0
  br i1 %i.v, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc103
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %.idx.i.i.i.i.i.i.i = shl nsw i64 %i.q, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !8
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc103
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !8    ; 3 uses
  %i.aa = add nsw i64 %i.z, 1                     ; 4 uses
  %i.ab = icmp ugt i64 %i.aa, 1152921504606846975
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i104

bb.h:                                             ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
          to label %.noexc109 unwind label %bb.u

.noexc109:                                        ; preds = %bb.h
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i104: ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i105 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i105, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i104
  %i.ac = shl nuw nsw i64 %i.aa, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #28
          to label %.noexc110 unwind label %bb.u  ; 4 uses

.noexc110:                                        ; preds = %bb.i
  store ptr %i.ad, ptr %6, align 8, !tbaa !61
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !65
  store i64 0, ptr %i.ad, align 8, !tbaa !8
  %i.ag = getelementptr i8, ptr %i.ad, i64 8      ; 3 uses
  %i.ah = icmp eq i64 %i.z, 0
  br i1 %i.ah, label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i106

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i106: ; preds = %.noexc110
  %.idx.i.i.i.i.i.i.i107 = shl nuw nsw i64 %i.z, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %.idx.i.i.i.i.i.i.i107, i1 false), !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i.i.i.i.i.i.i107
  br label %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i104, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i106, %.noexc110
  %.0.i.i.i.i.i108 = phi ptr [ %i.ai, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i106 ], [ %i.ag, %.noexc110 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i104 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.i.i.i.i.i108, ptr %i.aj, align 8, !tbaa !66
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !61  ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !8  ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !66 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 3 uses
  %i.au = icmp ugt i64 %i.am, %i.at
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i
  %i.av = sub nuw i64 %i.am, %i.at
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.av)
          to label %._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge unwind label %bb.v

._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge:    ; preds = %bb.j
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !61  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre205 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !8
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i
  %i.aw = icmp ult i64 %i.am, %i.at
  br i1 %i.aw, label %bb.l, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.am ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.ax
  br i1 %.not.i.i, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.l
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !66
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i, %bb.l, %bb.k
  %i.ay = phi i64 [ %.pre205, %._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge ], [ %i.am, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.am, %bb.l ], [ %i.am, %bb.k ]
  %i.az = phi ptr [ %.pre, %._ZNSt6vectorIxSaIxEE6resizeEm.exit_crit_edge ], [ %i.ak, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ak, %bb.l ], [ %i.ak, %bb.k ] ; 3 uses
  %i.ba = add nsw i64 %i.ay, 6                    ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !66 ; 2 uses
  %i.bd = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3                 ; 3 uses
  %i.bi = icmp ugt i64 %i.ba, %i.bh
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.bj = sub nuw i64 %i.ba, %i.bh
  invoke void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bj)
          to label %._ZNSt6vectorIxSaIxEE6resizeEm.exit116_crit_edge unwind label %bb.v

._ZNSt6vectorIxSaIxEE6resizeEm.exit116_crit_edge: ; preds = %bb.m
  %.pre206 = load ptr, ptr %i.n, align 8, !tbaa !61
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit116

bb.n:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.bk = icmp ult i64 %i.ba, %i.bh
  br i1 %i.bk, label %bb.o, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit116

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ba ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.bc, %i.bl
  br i1 %.not.i.i113, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit116, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i114

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i114:     ; preds = %bb.o
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !66
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit116

_ZNSt6vectorIxSaIxEE6resizeEm.exit116:            ; preds = %._ZNSt6vectorIxSaIxEE6resizeEm.exit116_crit_edge, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i114, %bb.o, %bb.n
  %i.bm = phi ptr [ %.pre206, %._ZNSt6vectorIxSaIxEE6resizeEm.exit116_crit_edge ], [ %i.az, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i114 ], [ %i.az, %bb.o ], [ %i.az, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !8  ; 5 uses
  store ptr null, ptr %7, align 8, !tbaa !143
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !152
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !143
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i32 0, ptr %i.br, align 8, !tbaa !152
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !153
  %.not.i.i117 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i117, label %.thread, label %bb.p

.thread:                                          ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit116
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

bb.p:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit116
  %i.bu = add i64 %i.bo, 63                       ; 2 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = and i64 %i.bv, 2305843009213693944
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #28
          to label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit unwind label %bb.q ; 12 uses

bb.q:                                             ; preds = %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %7, align 8, !tbaa !143   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %.body118, label %.body118.sink.split

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.p
  %i.ca = lshr i64 %i.bu, 6                       ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ca
  store ptr %i.cb, ptr %i.bs, align 8, !tbaa !153
  store ptr %i.bx, ptr %7, align 8
  store i32 0, ptr %i.bp, align 8
  %i.cc = sdiv i64 %i.bo, 64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cc
  %i.ce = and i64 %i.bo, -9223372036854775745
  %i.cf = icmp ugt i64 %i.ce, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.cf, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.cd, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.cg = trunc i64 %i.bo to i32
  %i.ch = and i32 %i.cg, 63                       ; 2 uses
  store ptr %storemerge.i.i.i.i.i, ptr %i.bq, align 8
  store i32 %i.ch, ptr %i.br, align 8
  %.idx.i = shl nuw nsw i64 %i.ca, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bx, i8 0, i64 %.idx.i, i1 false)
  %.pre207 = load ptr, ptr %i.n, align 8, !tbaa !61 ; 8 uses
  %.phi.trans.insert208 = getelementptr inbounds nuw i8, ptr %.pre207, i64 8
  %.pre209 = load i64, ptr %.phi.trans.insert208, align 8, !tbaa !8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre207, i64 8 ; 5 uses
  %i.cj = icmp sgt i64 %.pre209, 0
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre207, i64 16 ; 2 uses
  %i.cl = load ptr, ptr %4, align 8               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = icmp eq ptr %i.cl, %i.cn
  %i.cp = load ptr, ptr %6, align 8               ; 2 uses
  br label %bb.w

._crit_edge.loopexit:                             ; preds = %_ZNK6casadi16SparsityInternal3dfsExxRSt6vectorIxSaIxEES4_RKS3_RS1_IbSaIbEE.exit
  %.sroa.0.0.copyload.i.pre = load ptr, ptr %i.bq, align 8
  %.sroa.2.0.copyload.i.pre = load i32, ptr %i.br, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %.sroa.2.0.copyload.i = phi i32 [ %.sroa.2.0.copyload.i.pre, %._crit_edge.loopexit ], [ %i.ch, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ] ; 4 uses
  %.sroa.0.0.copyload.i = phi ptr [ %.sroa.0.0.copyload.i.pre, %._crit_edge.loopexit ], [ %storemerge.i.i.i.i.i, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit ] ; 4 uses
  %.not.i.i.i122 = icmp eq ptr %i.bx, %.sroa.0.0.copyload.i
end_hunk_1
begin_hunk_2_@_ZNK6casadi16SparsityInternal6get_nzExx:bb.a
  %.1 = phi i1 [ true, %bb.bc ], [ %.019, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %.019, %bb.bd ] ; 2 uses
  %i.dy = load ptr, ptr %22, align 8, !tbaa !84   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !90
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.bb
  %.pn89.pn = phi { ptr, i32 } [ %i.dq, %bb.bb ], [ %.pn89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %.pn89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ] ; 2 uses
  %.2 = phi i1 [ true, %bb.bb ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  %i.ed = load ptr, ptr %23, align 8, !tbaa !84   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !90
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.ba
  %.pn89.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.ba ], [ %.pn89.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.pn89.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.ba ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ] ; 2 uses
  %i.ei = load ptr, ptr %24, align 8, !tbaa !84   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !90
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %bb.az
  %.pn89.pn.pn.pn = phi { ptr, i32 } [ %i.do, %bb.az ], [ %.pn89.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %.pn89.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.az ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ] ; 2 uses
  %i.en = load ptr, ptr %25, align 8, !tbaa !84   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !90
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.ay
  %.pn89.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dn, %bb.ay ], [ %.pn89.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %.pn89.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ] ; 2 uses
  %.5 = phi i1 [ true, %bb.ay ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ] ; 2 uses
  %i.es = load ptr, ptr %29, align 8, !tbaa !84   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !90
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %bb.ax
  %.pn89.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.ax ], [ %.pn89.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %.pn89.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ] ; 2 uses
  %.6 = phi i1 [ true, %bb.ax ], [ %.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  %i.ex = load ptr, ptr %26, align 8, !tbaa !84   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !90
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %bb.aw
  %.pn89.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.aw ], [ %.pn89.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %.pn89.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ] ; 2 uses
  %.7 = phi i1 [ true, %bb.aw ], [ %.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ] ; 2 uses
  %i.fc = load ptr, ptr %27, align 8, !tbaa !84   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !90
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157, %bb.av
  %.pn89.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dk, %bb.av ], [ %.pn89.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %.pn89.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ] ; 2 uses
  %.8 = phi i1 [ true, %bb.av ], [ %.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ] ; 2 uses
  %i.fh = load ptr, ptr %28, align 8, !tbaa !84   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !90
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %bb.au
  %.pn89.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dj, %bb.au ], [ %.pn89.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %.pn89.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ] ; 2 uses
  %.9 = phi i1 [ true, %bb.au ], [ %.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.fm = load ptr, ptr %18, align 8, !tbaa !84   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !90
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163, %bb.at
  %.pn89.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.at ], [ %.pn89.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163 ], [ %.pn89.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ] ; 4 uses
  %.10 = phi i1 [ true, %bb.at ], [ %.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163 ], [ %.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ] ; 2 uses
  %i.fr = load ptr, ptr %19, align 8, !tbaa !84   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !90
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  %i.fw = load ptr, ptr %20, align 8, !tbaa !84   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.thread: ; preds = %bb.ag
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %20, align 8, !tbaa !84   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %.sink.split276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.thread
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !90
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #30
  br label %.sink.split276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.gf = load i64, ptr %i.fx, align 8, !tbaa !90
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.gg) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br i1 %.10, label %.sink.split277, label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br i1 %.10, label %.sink.split277, label %bb.bl

.sink.split276:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169.thread
  %.pn89.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn186.ph = phi { ptr, i32 } [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169.thread ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.thread ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %.sink.split277

bb.be:                                            ; preds = %bb.ae
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.o
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !8  ; 5 uses
  %i.gj = mul nsw i64 %i.w, %i.o
  %i.gk = icmp eq i64 %i.gi, %i.gj
  br i1 %i.gk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gl = mul nsw i64 %i.q, %i.w
  %i.gm = add nuw nsw i64 %i.gl, %i.j
  br label %.loopexit

bb.bg:                                            ; preds = %bb.be
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !8  ; 4 uses
  %i.gp = icmp eq i64 %i.go, %i.gi
  br i1 %i.gp, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gq = getelementptr i8, ptr %i.gn, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !8  ; 3 uses
  %i.gs = icmp eq i64 %i.gr, %i.gi
  br i1 %i.gs, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gt = getelementptr [8 x i8], ptr %i.u, i64 %i.gi
  %i.gu = getelementptr i8, ptr %i.gt, i64 -8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !8
  %i.gw = icmp sge i64 %i.gv, %i.j
  %i.gx = icmp slt i64 %i.go, %i.gi
  %or.cond206 = and i1 %i.gw, %i.gx
  br i1 %or.cond206, label %.lr.ph.preheader, label %.loopexit

bb.bj:                                            ; preds = %bb.bh
  %.old = icmp slt i64 %i.go, %i.gr
  br i1 %.old, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.bj, %bb.bi
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bk
  %.0201 = phi i64 [ %i.hc, %bb.bk ], [ %i.go, %.lr.ph.preheader ] ; 3 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.0201
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !8  ; 2 uses
  %i.ha = icmp eq i64 %i.gz, %i.j
  br i1 %i.ha, label %.loopexit, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph
  %i.hb = icmp sle i64 %i.gz, %i.j
  %i.hc = add nsw i64 %.0201, 1                   ; 2 uses
  %i.hd = icmp slt i64 %i.hc, %i.gr
  %or.cond209 = select i1 %i.hb, i1 %i.hd, i1 false
  br i1 %or.cond209, label %.lr.ph, label %.loopexit, !llvm.loop !537

.loopexit:                                        ; preds = %bb.bk, %.lr.ph, %bb.bj, %bb.bg, %bb.bi, %bb.bf
  %.172 = phi i64 [ %i.gm, %bb.bf ], [ -1, %bb.bi ], [ -1, %bb.bg ], [ -1, %bb.bj ], [ -1, %bb.bk ], [ %.0201, %.lr.ph ]
  ret i64 %.172

.sink.split277:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %.sink.split276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %.sink.split
  %.sink = phi ptr [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %i.y, %.sink.split ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %i.dd, %.sink.split276 ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ]
  %.pn89.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn174.ph, %.sink.split ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %.pn89.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn186.ph, %.sink.split276 ], [ %.pn89.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %.pn89.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ]
  call void @__cxa_free_exception(ptr %.sink) #29
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %.pn89.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %.pn89.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ %.pn89.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %.pn89.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.sink.split277 ]
  resume { ptr, i32 } %.pn89.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.bm:                                            ; preds = %bb.as, %bb.s
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi16SparsityInternal8_reshapeExx(ptr dead_on_unwind noalias writable sret(%"class.casadi::Sparsity") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %23 = alloca %"class.std::vector.10", align 8   ; 5 uses
  %24 = alloca %"class.std::vector", align 8      ; 12 uses
  %25 = alloca %"class.std::vector", align 8      ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %3, ptr %i.b, align 8, !tbaa !8
  %i.g = icmp sgt i64 %3, 0                       ; 2 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !8
  %i.h = icmp slt i64 %2, 0
  %or.cond175265 = and i1 %i.h, %i.g
  br i1 %or.cond175265, label %tailrecurse._crit_edge.preheader, label %.lr.ph

tailrecurse._crit_edge.preheader:                 ; preds = %bb.a
  %.pre211 = load i64, ptr %i.f, align 8, !tbaa !8
  br label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %tailrecurse._crit_edge, %bb.a
  %.tr172.ph.fr.lcssa = phi i64 [ %2, %bb.a ], [ %i.q, %tailrecurse._crit_edge ] ; 3 uses
  %i.i = icmp sgt i64 %.tr172.ph.fr.lcssa, 0
  br i1 %i.i, label %.lr.ph.split.split.us, label %.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = icmp slt i64 %3, 0
  br i1 %i.k, label %tailrecurse.us, label %.split.us

tailrecurse.us:                                   ; preds = %.lr.ph.split.split.us, %tailrecurse.us
  %i.l = load i64, ptr %i.e, align 8, !tbaa !8
  %i.m = load i64, ptr %i.j, align 8, !tbaa !8
  %i.n = mul nsw i64 %i.m, %i.l
  %i.o = sdiv i64 %i.n, %.tr172.ph.fr.lcssa       ; 3 uses
  store i64 %i.o, ptr %i.b, align 8, !tbaa !8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %tailrecurse.us, label %.split.us

tailrecurse._crit_edge:                           ; preds = %tailrecurse._crit_edge.preheader, %tailrecurse._crit_edge
  %.pre210 = load i64, ptr %i.e, align 8, !tbaa !8
  %.pre212 = mul nsw i64 %.pre211, %.pre210
  %.pre212.fr = freeze i64 %.pre212
  %i.q = sdiv i64 %.pre212.fr, %3                 ; 3 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !8
  %i.r = icmp slt i64 %i.q, 0
  %or.cond175 = and i1 %i.r, %i.g
  br i1 %or.cond175, label %tailrecurse._crit_edge, label %.lr.ph

.split.us:                                        ; preds = %tailrecurse.us, %.lr.ph.split.split.us, %.lr.ph
  %.us-phi177 = phi i64 [ %3, %.lr.ph ], [ %3, %.lr.ph.split.split.us ], [ %i.o, %tailrecurse.us ]
  %i.s = load i64, ptr %i.e, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !8
  %i.v = mul nsw i64 %i.u, %i.s
  %i.w = mul nsw i64 %.us-phi177, %.tr172.ph.fr.lcssa
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.an, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.y = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.3)
          to label %bb.e unwind label %bb.v

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  invoke void @_ZNK6casadi16SparsityInternal3dimB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.w

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull @.str.71, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.g unwind label %bb.x

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.72)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.z

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.j unwind label %bb.aa

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.9)
          to label %bb.k unwind label %bb.ab

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
end_hunk_2
begin_hunk_3_@_ZNK6casadi16SparsityInternal5pmultERKSt6vectorIxSaIxEEbbb:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread: ; preds = %bb.ao
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split296

bb.ax:                                            ; preds = %bb.aq
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.ay:                                            ; preds = %bb.ar
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

bb.az:                                            ; preds = %bb.as
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.ba:                                            ; preds = %bb.at
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.bb:                                            ; preds = %bb.au
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

bb.bc:                                            ; preds = %bb.aw, %bb.av
  %.056 = phi i1 [ false, %bb.aw ], [ true, %bb.av ] ; 2 uses
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ho = load ptr, ptr %18, align 8, !tbaa !84   ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.bc
  %i.hr = load i64, ptr %i.hp, align 8, !tbaa !90
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %bb.bb
  %.157 = phi i1 [ true, %bb.bb ], [ %.056, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %.056, %bb.bc ] ; 2 uses
  %.pn81 = phi { ptr, i32 } [ %i.hm, %bb.bb ], [ %i.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ], [ %i.hn, %bb.bc ] ; 2 uses
  %i.ht = load ptr, ptr %23, align 8, !tbaa !84   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !90
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.ba
  %.258 = phi i1 [ true, %bb.ba ], [ %.157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ] ; 2 uses
  %.pn81.pn = phi { ptr, i32 } [ %i.hl, %bb.ba ], [ %.pn81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  %i.hy = load ptr, ptr %24, align 8, !tbaa !84   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !90
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.az
  %.359 = phi i1 [ true, %bb.az ], [ %.258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %.258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ] ; 2 uses
  %.pn81.pn.pn = phi { ptr, i32 } [ %i.hk, %bb.az ], [ %.pn81.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %.pn81.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ] ; 2 uses
  %i.id = load ptr, ptr %25, align 8, !tbaa !84   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !90
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %bb.ay
  %.460 = phi i1 [ true, %bb.ay ], [ %.359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %.359, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ] ; 2 uses
  %.pn81.pn.pn.pn = phi { ptr, i32 } [ %i.hj, %bb.ay ], [ %.pn81.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %.pn81.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  %i.ii = load ptr, ptr %19, align 8, !tbaa !84   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !90
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %bb.ax
  %.561 = phi i1 [ true, %bb.ax ], [ %.460, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %.460, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ] ; 2 uses
  %.pn81.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hi, %bb.ax ], [ %.pn81.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %.pn81.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ] ; 4 uses
  %i.in = load ptr, ptr %20, align 8, !tbaa !84   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !90
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.is = load ptr, ptr %21, align 8, !tbaa !84   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread: ; preds = %bb.ap
  %i.iv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iw = load ptr, ptr %21, align 8, !tbaa !84   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %.sink.split296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !90
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #30
  br label %.sink.split296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.jb = load i64, ptr %i.it, align 8, !tbaa !90
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.jc) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br i1 %.561, label %bb.bd, label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br i1 %.561, label %bb.bd, label %bb.bo

.sink.split296:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.thread
  %.pn81.pn.pn.pn.pn.pn.pn199.ph = phi { ptr, i32 } [ %i.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.thread ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.thread ], [ %i.iv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %.pn81.pn.pn.pn.pn.pn.pn199 = phi { ptr, i32 } [ %.pn81.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %.pn81.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %.pn81.pn.pn.pn.pn.pn.pn199.ph, %.sink.split296 ]
  call void @__cxa_free_exception(ptr %i.hg) #29
  br label %bb.bo

bb.be:                                            ; preds = %.lr.ph218, %bb.be
  %.055217 = phi i64 [ 0, %.lr.ph218 ], [ %i.ji, %bb.be ] ; 3 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.055217
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !8
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.je
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !8
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.055217
  store i64 %i.jg, ptr %i.jh, align 8, !tbaa !8
  %i.ji = add nuw nsw i64 %.055217, 1             ; 2 uses
  %i.jj = load i64, ptr %i.ha, align 8, !tbaa !8
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.jj
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !8
  %i.jm = icmp slt i64 %i.ji, %i.jl
  br i1 %i.jm, label %bb.be, label %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit, !llvm.loop !644

bb.bf:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEES6_ET0_T_S8_S7_.exit
  %i.jn = load ptr, ptr %i.al, align 8, !tbaa !83 ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !8
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.jq
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !8  ; 3 uses
  %i.jt = icmp sgt i64 %i.js, 1
  br i1 %i.jt, label %bb.bg, label %bb.bh, !prof !76

bb.bg:                                            ; preds = %bb.bf
  %.idx = shl nsw i64 %i.js, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.go, ptr align 8 %i.bw, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit

bb.bh:                                            ; preds = %bb.bf
  %i.ju = icmp eq i64 %i.js, 1
  br i1 %i.ju, label %bb.bi, label %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.jv = load i64, ptr %i.bw, align 8, !tbaa !8
  store i64 %i.jv, ptr %i.go, align 8, !tbaa !8
  br label %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit: ; preds = %bb.be, %.preheader, %bb.bi, %bb.bh, %bb.bg
  %i.jw = phi ptr [ %i.jn, %bb.bg ], [ %i.gw, %.preheader ], [ %i.jn, %bb.bi ], [ %i.jn, %bb.bh ], [ %i.gw, %bb.be ] ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !8
  invoke void @_ZN6casadi8Sparsity7tripletExxRKSt6vectorIxSaIxEES5_(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8 %0, i64 noundef %i.jx, i64 noundef %i.jz, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.bj unwind label %bb.z

bb.bj:                                            ; preds = %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit
  %i.ka = load ptr, ptr %7, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !65
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = ptrtoint ptr %i.ka to i64
  %i.kf = sub i64 %i.kd, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef %i.kf) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.kg = load ptr, ptr %6, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i147 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i147, label %_ZNSt6vectorIxSaIxEED2Ev.exit148, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.kh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !65
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = ptrtoint ptr %i.kg to i64
  %i.kl = sub i64 %i.kj, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kl) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit148

_ZNSt6vectorIxSaIxEED2Ev.exit148:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.not.i.i.i149 = icmp eq ptr %.sroa.0164.0, null
  br i1 %.not.i.i.i149, label %_ZNSt6vectorIxSaIxEED2Ev.exit150, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit148
  %i.km = ptrtoint ptr %.sroa.17.0 to i64
  %i.kn = sub i64 %i.km, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0164.0, i64 noundef %i.kn) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit150

_ZNSt6vectorIxSaIxEED2Ev.exit150:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit148, %bb.bm
  %.sroa.0175.0..sroa.0175.0..sroa.0175.0..sroa.0175.0.177 = load ptr, ptr %.sroa.0175, align 8, !tbaa !61 ; 3 uses
  %.not.i.i.i151 = icmp eq ptr %.sroa.0175.0..sroa.0175.0..sroa.0175.0..sroa.0175.0.177, null
  br i1 %.not.i.i.i151, label %_ZNSt6vectorIxSaIxEED2Ev.exit152, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit150
  %i.ko = ptrtoint ptr %.sroa.16.0 to i64
  %i.kp = ptrtoint ptr %.sroa.0175.0..sroa.0175.0..sroa.0175.0..sroa.0175.0.177 to i64
  %i.kq = sub i64 %i.ko, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.0..sroa.0175.0..sroa.0175.0..sroa.0175.0.177, i64 noundef %i.kq) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit152

_ZNSt6vectorIxSaIxEED2Ev.exit152:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit150, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0175)
  ret void

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %bb.ag, %bb.z
  %i.kr = phi ptr [ %.pre226, %bb.z ], [ %i.gn, %bb.bd ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %i.cq, %bb.ag ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %i.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ] ; 3 uses
  %.pn89 = phi { ptr, i32 } [ %i.dj, %bb.z ], [ %.pn81.pn.pn.pn.pn.pn.pn199, %bb.bd ], [ %.pn81.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %.pn.pn.pn.pn.pn.pn.pn187, %bb.ag ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123 ], [ %.pn81.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ] ; 2 uses
  %.not.i.i.i153 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIxSaIxEED2Ev.exit154, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ks = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !65
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.kr to i64
  %i.kw = sub i64 %i.ku, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef %i.kw) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit154

_ZNSt6vectorIxSaIxEED2Ev.exit154:                 ; preds = %bb.bp, %bb.bo, %bb.y
  %.pn89.pn = phi { ptr, i32 } [ %i.di, %bb.y ], [ %.pn89, %bb.bo ], [ %.pn89, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.kx = load ptr, ptr %6, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i155 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIxSaIxEED2Ev.exit156, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit154
  %i.ky = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !65
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = ptrtoint ptr %i.kx to i64
  %i.lc = sub i64 %i.la, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.lc) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit156

_ZNSt6vectorIxSaIxEED2Ev.exit156:                 ; preds = %bb.bq, %_ZNSt6vectorIxSaIxEED2Ev.exit154, %bb.x
  %.pn89.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.x ], [ %.pn89.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit154 ], [ %.pn89.pn, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.not.i.i.i157 = icmp eq ptr %.sroa.0164.0, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIxSaIxEED2Ev.exit158, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit156
  %i.ld = ptrtoint ptr %.sroa.17.0 to i64
  %i.le = sub i64 %i.ld, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0164.0, i64 noundef %i.le) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit158

_ZNSt6vectorIxSaIxEED2Ev.exit158:                 ; preds = %bb.w, %_ZNSt6vectorIxSaIxEED2Ev.exit156, %bb.br, %bb.e
  %.sroa.16.1 = phi ptr [ null, %bb.e ], [ %.sroa.16.0, %bb.br ], [ %.sroa.16.0, %_ZNSt6vectorIxSaIxEED2Ev.exit156 ], [ %.sroa.16.0, %bb.w ]
  %.pn89.pn.pn.pn.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn89.pn.pn, %bb.br ], [ %.pn89.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit156 ], [ %i.dg, %bb.w ]
  %.sroa.0175.0..sroa.0175.0..sroa.0175.0..sroa.0175.0.178 = load ptr, ptr %.sroa.0175, align 8, !tbaa !61 ; 3 uses
  %.not.i.i.i159 = icmp eq ptr %.sroa.0175.0..sroa.0175.0..sroa.0175.0..sroa.0175.0.178, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIxSaIxEED2Ev.exit160, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit158
  %i.lf = ptrtoint ptr %.sroa.16.1 to i64
  %i.lg = ptrtoint ptr %.sroa.0175.0..sroa.0175.0..sroa.0175.0..sroa.0175.0.178 to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.0..sroa.0175.0..sroa.0175.0..sroa.0175.0.178, i64 noundef %i.lh) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit160

_ZNSt6vectorIxSaIxEED2Ev.exit160:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit158, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0175)
  resume { ptr, i32 } %.pn89.pn.pn.pn.pn

bb.bt:                                            ; preds = %bb.aw, %bb.v
  unreachable
}

declare void @_ZNK6casadi8Sparsity14star_coloring2Exx(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZNK6casadi8Sparsity5pmultERKSt6vectorIxSaIxEEbbb(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi16SparsityInternal13star_coloringExx(ptr dead_on_unwind noalias writable sret(%"class.casadi::Sparsity") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %18 = alloca %"class.std::vector.10", align 8   ; 5 uses
  %19 = alloca %"class.std::vector", align 8      ; 10 uses
  %20 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %21 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %22 = alloca %"class.std::vector", align 8      ; 19 uses
  %23 = alloca %"class.std::vector", align 8      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %i.f = load i64, ptr %i.c, align 8, !tbaa !8
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi14message_prefixERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 2 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.82, i64 noundef 10) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZNK6casadi16SparsityInternal3dimB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false)
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.83, i64 noundef 43)
          to label %.noexc unwind label %bb.i     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !125, !alias.scope !645
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !84   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !89   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIxSaIxEE15_M_range_insertIPKxEEvN9__gnu_cxx17__normal_iteratorIPxS1_EET_S9_St20forward_iterator_tag:bb.a
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !76

bb.n:                                             ; preds = %_ZSt9__advanceIPKxlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !66
  br label %_ZSt22__uninitialized_copy_aIPKxPxxET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKxlEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKxPxxET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr %i.ai, align 8, !tbaa !8
  store i64 %i.an, ptr %i.h, align 8, !tbaa !8
  br label %_ZSt22__uninitialized_copy_aIPKxPxxET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKxPxxET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !66
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !76

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKxPxxET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %1, i64 %i.m, i1 false)
  %.pre70 = load ptr, ptr %i.g, align 8, !tbaa !66
  br label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit55

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKxPxxET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit55

bb.s:                                             ; preds = %bb.r
  %i.as = load i64, ptr %1, align 8, !tbaa !8
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !8
  br label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre70, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !66
  %i.av = icmp sgt i64 %i.m, 8
  br i1 %i.av, label %bb.t, label %bb.u, !prof !76

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit55
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit55
  %i.aw = icmp eq i64 %i.m, 8
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load i64, ptr %2, align 8, !tbaa !8
  store i64 %i.ax, ptr %1, align 8, !tbaa !8
  br label %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !61    ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = sub nsw i64 1152921504606846975, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.154) #27
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #28
  br label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !76

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i64, ptr %i.ay, align 8, !tbaa !8
  store i64 %i.bp, ptr %i.bk, align 8, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !76

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load i64, ptr %2, align 8, !tbaa !8
  store i64 %i.bt, ptr %i.bq, align 8, !tbaa !8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !76

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i64, ptr %1, align 8, !tbaa !8
  store i64 %i.by, ptr %i.bu, align 8, !tbaa !8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i59 = icmp eq ptr %i.ay, null
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #30
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !61
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !66
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !65
  br label %_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKxN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIxSaIxEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPxS1_EEmRKx(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPxxEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !8      ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !76

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !66
  br label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !8
  store i64 %i.s, ptr %i.d, align 8, !tbaa !8
  br label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !66
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !76

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !8
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec128, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat130 = shufflevector <2 x i64> %broadcast.splatinsert129, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x i64> %broadcast.splat130, ptr %next.gep133, align 8, !tbaa !8
  store <2 x i64> %broadcast.splat130, ptr %i.ak, align 8, !tbaa !8
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !811

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPxxEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPxxEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !812

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPxmxxET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %i.ar = add i64 %i.aq, -8
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !8
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !813

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPxmxxET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPxmxxET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !814

_ZSt24__uninitialized_fill_n_aIPxmxxET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !66
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !76

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPxmxxET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !66
  br label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPxmxxET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %1, align 8, !tbaa !8
  store i64 %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !8
  br label %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !66
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPxxEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPxS0_SaIxEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -8
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec115, 3
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat117 = shufflevector <2 x i64> %broadcast.splatinsert116, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 3
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x i64> %broadcast.splat117, ptr %next.gep120, align 8, !tbaa !8
  store <2 x i64> %broadcast.splat117, ptr %i.bn, align 8, !tbaa !8
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !815

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPxxEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPxxEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !816

end_hunk_4
