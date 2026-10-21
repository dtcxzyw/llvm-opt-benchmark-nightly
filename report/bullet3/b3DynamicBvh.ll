Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3DynamicBvh?download=true
inline.NumInlined: 243
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12b3DynamicBvh15optimizeTopDownEi:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr null, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30   ; 6 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %_ZN20b3AlignedObjectArrayIP10b3DbvtNodeE8allocateEi.exit.i, label %_ZN20b3AlignedObjectArrayIP10b3DbvtNodeE7reserveEi.exit

_ZN20b3AlignedObjectArrayIP10b3DbvtNodeE8allocateEi.exit.i: ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
          to label %.noexc unwind label %bb.h     ; 9 uses

.noexc:                                           ; preds = %_ZN20b3AlignedObjectArrayIP10b3DbvtNodeE8allocateEi.exit.i
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %.split7.i, label %.split.i

.split.i:                                         ; preds = %.noexc
  %i.n = load i32, ptr %i.d, align 4, !tbaa !40   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  %.pre7 = load ptr, ptr %i.c, align 8, !tbaa !39 ; 11 uses
  br i1 %i.o, label %.lr.ph.i.i, label %_ZNK20b3AlignedObjectArrayIP10b3DbvtNodeE4copyEiiPS1_.exit.i

.lr.ph.i.i:                                       ; preds = %.split.i
  %.pre715 = ptrtoaddr ptr %.pre7 to i64
  %wide.trip.count.i.i = zext nneg i32 %i.n to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  %i.p = sub i64 %.pre715, %i.l
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond17 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond17, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.pre7, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x ptr>, ptr %i.r, align 8, !tbaa !42
  %wide.load16 = load <2 x ptr>, ptr %i.s, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x ptr> %wide.load, ptr %i.q, align 8, !tbaa !42
  store <2 x ptr> %wide.load16, ptr %i.t, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIP10b3DbvtNodeE4copyEiiPS1_.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.prol
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.pre7, i64 %indvars.iv.i.i.prol
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42
  store ptr %i.x, ptr %i.v, align 8, !tbaa !42
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !76

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.y = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %_ZNK20b3AlignedObjectArrayIP10b3DbvtNodeE4copyEiiPS1_.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.pre7, i64 %indvars.iv.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !42
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre7, i64 %indvars.iv.next.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !42
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre7, i64 %indvars.iv.next.i.i.1
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !42
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.2
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre7, i64 %indvars.iv.next.i.i.2
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !42
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZNK20b3AlignedObjectArrayIP10b3DbvtNodeE4copyEiiPS1_.exit.i, label %scalar.ph, !llvm.loop !77

.split7.i:                                        ; preds = %.noexc
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
          to label %.noexc3 unwind label %bb.h

.noexc3:                                          ; preds = %.split7.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
          to label %.noexc4 unwind label %bb.h

.noexc4:                                          ; preds = %.noexc3
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !39
  br label %_ZNK20b3AlignedObjectArrayIP10b3DbvtNodeE4copyEiiPS1_.exit.i

_ZNK20b3AlignedObjectArrayIP10b3DbvtNodeE4copyEiiPS1_.exit.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc4, %.split.i
  %i.am = phi ptr [ %.pre, %.noexc4 ], [ %.pre7, %.split.i ], [ %.pre7, %middle.block ], [ %.pre7, %scalar.ph ], [ %.pre7, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i = phi i32 [ 0, %.noexc4 ], [ %i.g, %.split.i ], [ %i.g, %middle.block ], [ %i.g, %scalar.ph ], [ %i.g, %scalar.ph.prol.loopexit ]
  %.not.i10.i = icmp ne ptr %i.am, null
  %i.an = load i8, ptr %i.b, align 8, !range !34
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond = select i1 %.not.i10.i, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN20b3AlignedObjectArrayIP10b3DbvtNodeE10deallocateEv.exit.i

bb.c:                                             ; preds = %_ZNK20b3AlignedObjectArrayIP10b3DbvtNodeE4copyEiiPS1_.exit.i
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.am)
          to label %_ZN20b3AlignedObjectArrayIP10b3DbvtNodeE10deallocateEv.exit.i unwind label %bb.h

_ZN20b3AlignedObjectArrayIP10b3DbvtNodeE10deallocateEv.exit.i: ; preds = %bb.c, %_ZNK20b3AlignedObjectArrayIP10b3DbvtNodeE4copyEiiPS1_.exit.i
  store i8 1, ptr %i.b, align 8, !tbaa !38
  store ptr %i.k, ptr %i.c, align 8, !tbaa !39
  store i32 %.0.i, ptr %i.e, align 8, !tbaa !41
  %.pre8 = load ptr, ptr %0, align 8, !tbaa !32
  br label %_ZN20b3AlignedObjectArrayIP10b3DbvtNodeE7reserveEi.exit

_ZN20b3AlignedObjectArrayIP10b3DbvtNodeE7reserveEi.exit: ; preds = %_ZN20b3AlignedObjectArrayIP10b3DbvtNodeE10deallocateEv.exit.i, %bb.b
  %i.ap = phi ptr [ %.pre8, %_ZN20b3AlignedObjectArrayIP10b3DbvtNodeE10deallocateEv.exit.i ], [ %i.a, %bb.b ]
  invoke fastcc void @_ZL13b3FetchLeavesP12b3DynamicBvhP10b3DbvtNodeR20b3AlignedObjectArrayIS2_Ei(ptr noundef %0, ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(25) %2, i32 noundef -1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN20b3AlignedObjectArrayIP10b3DbvtNodeE7reserveEi.exit
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.ar = load i32, ptr %i.d, align 4, !tbaa !40
  %i.as = invoke fastcc noundef ptr @_ZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeii(ptr noundef %0, ptr noundef %i.aq, i32 noundef %i.ar, i32 noundef %1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr %i.as, ptr %0, align 8, !tbaa !32
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.at, null
  %i.au = load i8, ptr %i.b, align 8, !range !34
  %i.av = trunc nuw i8 %i.au to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.av, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %_ZN20b3AlignedObjectArrayIP10b3DbvtNodeED2Ev.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.at)
          to label %_ZN20b3AlignedObjectArrayIP10b3DbvtNodeED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #17
  unreachable

_ZN20b3AlignedObjectArrayIP10b3DbvtNodeED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %.noexc3, %.split7.i, %_ZN20b3AlignedObjectArrayIP10b3DbvtNodeE8allocateEi.exit.i, %bb.d, %_ZN20b3AlignedObjectArrayIP10b3DbvtNodeE7reserveEi.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20b3AlignedObjectArrayIP10b3DbvtNodeED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.ay

bb.i:                                             ; preds = %_ZN20b3AlignedObjectArrayIP10b3DbvtNodeED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeii(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !85

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr @_ZZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis, align 16
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis, i64 16), align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis, i64 40), align 8
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = icmp sgt i32 %2, 1
  br i1 %i.e, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.f = icmp sgt i32 %2, %3
  br i1 %i.f, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !42, !noalias !86 ; 6 uses
  %i.h = load <2 x float>, ptr %i.g, align 16, !noalias !86
  %.sroa.8.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.8.0.copyload14.i = load float, ptr %.sroa.8.0..sroa_idx13.i, align 8, !noalias !86
  %.sroa.10.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.10.0.copyload16.i = load i32, ptr %.sroa.10.0..sroa_idx15.i, align 4, !tbaa !35, !noalias !86
  %.sroa.1017.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load <2 x float>, ptr %.sroa.1017.0..sroa_idx18.i, align 16, !noalias !86
  %.sroa.14.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.14.0.copyload23.i = load float, ptr %.sroa.14.0..sroa_idx22.i, align 8, !noalias !86
  %.sroa.16.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.sroa.16.0.copyload25.i = load i32, ptr %.sroa.16.0..sroa_idx24.i, align 4, !tbaa !35, !noalias !86
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ 1, %bb.f ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %.sroa.8.029.i = phi float [ %.sroa.8.0.copyload14.i, %bb.f ], [ %.sink28.i.i, %bb.g ] ; 2 uses
  %.sroa.14.026.i = phi float [ %.sroa.14.0.copyload23.i, %bb.f ], [ %.sink42.i.i, %bb.g ] ; 2 uses
  %i.j = phi <2 x float> [ %i.h, %bb.f ], [ %i.q, %bb.g ] ; 2 uses
  %i.k = phi <2 x float> [ %i.i, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42, !noalias !86 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load <2 x float>, ptr %i.m, align 4, !tbaa !49, !noalias !86 ; 2 uses
  %i.p = fcmp olt <2 x float> %i.j, %i.o
  %i.q = select <2 x i1> %i.p, <2 x float> %i.j, <2 x float> %i.o ; 3 uses
  %i.r = load <2 x float>, ptr %i.n, align 4, !tbaa !49, !noalias !86 ; 2 uses
  %i.s = fcmp ogt <2 x float> %i.k, %i.r
  %i.t = select <2 x i1> %i.s, <2 x float> %i.k, <2 x float> %i.r ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !49, !noalias !86 ; 2 uses
  %i.w = fcmp olt float %.sroa.8.029.i, %i.v
  %.sink28.i.i = select i1 %i.w, float %.sroa.8.029.i, float %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.y = load float, ptr %i.x, align 4, !tbaa !49, !noalias !86 ; 2 uses
  %i.z = fcmp ogt float %.sroa.14.026.i, %i.y
  %.sink42.i.i = select i1 %i.z, float %.sroa.14.026.i, float %i.y ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.preheader, label %bb.g, !llvm.loop !80

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.aa = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis, i64 8), align 8
  %i.ab = shufflevector <2 x float> %i.q, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ac = insertelement <3 x float> %i.ab, float %.sink28.i.i, i64 2
  %i.ad = shufflevector <2 x float> %i.t, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ae = insertelement <3 x float> %i.ad, float %.sink42.i.i, i64 2
  %i.af = fadd <3 x float> %i.ac, %i.ae
  %i.ag = fmul <3 x float> %i.af, splat (float 5.000000e-01) ; 3 uses
  %i.ah = load <2 x float>, ptr @_ZZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis, align 16, !tbaa !35 ; 2 uses
  %i.ai = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis, i64 16), align 16, !tbaa !35 ; 2 uses
  %i.aj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis, i64 24), align 8, !tbaa !35
  %i.ak = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis, i64 32), align 16, !tbaa !35
  %i.al = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis, i64 36), align 4, !tbaa !35
  %i.am = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis, i64 40), align 8, !tbaa !35
  %i.an = insertelement <2 x float> %i.aa, float %i.aj, i64 1
  %i.ao = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.ap = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 1, i32 3>
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.aq = extractelement <4 x i32> %i.bt, i64 0   ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = extractelement <4 x i32> %i.bt, i64 2   ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  %or.cond = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.11.1 = phi i32 [ 0, %.lr.ph.preheader ], [ %.sroa.11.2, %.lr.ph ] ; 2 uses
  %.sroa.13.1 = phi i32 [ 0, %.lr.ph.preheader ], [ %.sroa.13.2, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.au = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bt, %.lr.ph ] ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load <3 x float>, ptr %i.aw, align 16, !tbaa !35
  %i.az = load <3 x float>, ptr %i.ax, align 16, !tbaa !35
  %i.ba = fadd <3 x float> %i.ay, %i.az
  %i.bb = fmul <3 x float> %i.ba, splat (float 5.000000e-01)
  %i.bc = fsub <3 x float> %i.bb, %i.ag           ; 6 uses
  %i.bd = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.be = fmul <2 x float> %i.bd, %i.ap
  %i.bf = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.ao, <2 x float> %i.be)
  %i.bh = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.an, <2 x float> %i.bg)
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bk = fcmp ogt <4 x float> %i.bj, zeroinitializer ; 2 uses
  %i.bl = shufflevector <4 x i1> %i.bk, <4 x i1> poison, <2 x i32> <i32 0, i32 1>
  %i.bm = shufflevector <4 x i32> %i.au, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.bn = shufflevector <4 x i32> %i.au, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.bo = select <2 x i1> %i.bl, <2 x i32> %i.bm, <2 x i32> %i.bn
  %i.bp = add nsw <2 x i32> %i.bo, splat (i32 1)
  %i.bq = shufflevector <2 x i32> %i.bp, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.br = shufflevector <4 x i32> %i.au, <4 x i32> %i.bq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bs = shufflevector <4 x i32> %i.bq, <4 x i32> %i.au, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bt = select <4 x i1> %i.bk, <4 x i32> %i.br, <4 x i32> %i.bs ; 5 uses
  %i.bu = extractelement <3 x float> %i.bc, i64 1
  %i.bv = fmul float %i.bu, %i.al
  %i.bw = extractelement <3 x float> %i.bc, i64 0
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.ak, float %i.bv)
  %i.by = extractelement <3 x float> %i.bc, i64 2
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.by, float %i.am, float %i.bx)
  %i.ca = fcmp ogt float %i.bz, 0.000000e+00      ; 3 uses
  %.sroa.speculated = select i1 %i.ca, i32 %.sroa.13.1, i32 %.sroa.11.1
  %i.cb = add nsw i32 %.sroa.speculated, 1        ; 2 uses
  %.sroa.11.2 = select i1 %i.ca, i32 %.sroa.11.1, i32 %i.cb ; 3 uses
  %.sroa.13.2 = select i1 %i.ca, i32 %i.cb, i32 %.sroa.13.1 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !81

bb.h:                                             ; preds = %.preheader
  %i.cc = sub nsw i32 %i.aq, %i.as
  %i.cd = sitofp i32 %i.cc to float
  %i.ce = tail call noundef float @llvm.fabs.f32(float %i.cd)
  %i.cf = fptosi float %i.ce to i32               ; 2 uses
  %i.cg = icmp sle i32 %2, %i.cf
  %spec.select = sext i1 %i.cg to i32
  %spec.select68 = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.cf)
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.h
  %.261 = phi i32 [ %spec.select, %bb.h ], [ -1, %.preheader ] ; 2 uses
  %.2 = phi i32 [ %spec.select68, %bb.h ], [ %2, %.preheader ] ; 3 uses
  %i.ch = extractelement <4 x i32> %i.bt, i64 1   ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  %i.cj = extractelement <4 x i32> %i.bt, i64 3   ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  %or.cond164 = select i1 %i.ci, i1 %i.ck, i1 false
  br i1 %or.cond164, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cl = sub nsw i32 %i.ch, %i.cj
  %i.cm = sitofp i32 %i.cl to float
  %i.cn = tail call noundef float @llvm.fabs.f32(float %i.cm)
  %i.co = fptosi float %i.cn to i32               ; 2 uses
  %i.cp = icmp sgt i32 %.2, %i.co
  %spec.select.1 = select i1 %i.cp, i32 1, i32 %.261
  %spec.select68.1 = tail call i32 @llvm.smin.i32(i32 %.2, i32 %i.co)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.261.1 = phi i32 [ %spec.select.1, %bb.j ], [ %.261, %bb.i ] ; 2 uses
  %.2.1 = phi i32 [ %spec.select68.1, %bb.j ], [ %.2, %bb.i ]
  %i.cq = icmp sgt i32 %.sroa.11.2, 0
  %i.cr = icmp sgt i32 %.sroa.13.2, 0
  %or.cond165 = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond165, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cs = sub nsw i32 %.sroa.11.2, %.sroa.13.2
  %i.ct = sitofp i32 %i.cs to float
  %i.cu = tail call noundef float @llvm.fabs.f32(float %i.ct)
  %i.cv = fptosi float %i.cu to i32
  %i.cw = icmp sgt i32 %.2.1, %i.cv
  br i1 %i.cw, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cx = icmp sgt i32 %.261.1, -1
  br i1 %i.cx, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.l, %bb.m
  %.261.2149 = phi i32 [ %.261.1, %bb.m ], [ 2, %bb.l ]
  %i.cy = zext nneg i32 %.261.2149 to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr @_ZZL9b3TopDownP12b3DynamicBvhPP10b3DbvtNodeiiE4axis, i64 %i.cy ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load float, ptr %i.cz, align 16, !tbaa !35 ; 2 uses
  %i.dd = load float, ptr %i.da, align 4, !tbaa !35 ; 2 uses
  %i.de = load float, ptr %i.db, align 8, !tbaa !35 ; 2 uses
  %i.df = extractelement <3 x float> %i.ag, i64 0 ; 2 uses
  %i.dg = shufflevector <3 x float> %i.ag, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.thread
  %.049.i = phi i32 [ 0, %.thread ], [ %i.fh, %.critedge2.i ]
  %.03248.i = phi i32 [ %2, %.thread ], [ %i.fd, %.critedge2.i ] ; 5 uses
  %i.dh = sext i32 %.049.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i
end_hunk_0
