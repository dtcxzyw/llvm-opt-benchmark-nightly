Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edge_drawing?download=true
inline.NumInlined: 1880
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_ZN2cv8ximgproc15EdgeDrawingImpl11sortCirclesEP6Circlei:bb.a
  %i.g = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !248 ; 2 uses
  %i.j = fcmp ogt double %i.i, %.pre              ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select.prol = select i1 %i.j, i32 %i.k, i32 %i.d ; 2 uses
  %indvars.iv.next31.prol = add nuw nsw i64 %indvars.iv, 1
  %i.l = select i1 %i.j, double %i.i, double %.pre
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %.unr = phi double [ %.pre, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %indvars.iv30.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next31.prol, %.lr.ph.prol ]
  %.02224.unr = phi i32 [ %i.d, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %i.m = icmp eq i64 %i.c, %indvars.iv33
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %spec.select.lcssa = phi i32 [ %spec.select.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select.1, %.lr.ph ] ; 2 uses
  %i.n = zext i32 %spec.select.lcssa to i64
  %.not = icmp eq i64 %indvars.iv33, %i.n
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.o = phi double [ %i.aa, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv30 = phi i64 [ %indvars.iv.next31.1, %.lr.ph ], [ %indvars.iv30.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02224 = phi i32 [ %spec.select.1, %.lr.ph ], [ %.02224.unr, %.lr.ph.prol.loopexit ]
  %i.p = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %indvars.iv30
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !248 ; 2 uses
  %i.s = fcmp ogt double %i.r, %i.o               ; 2 uses
  %i.t = trunc nuw nsw i64 %indvars.iv30 to i32
  %spec.select = select i1 %i.s, i32 %i.t, i32 %.02224
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.u = select i1 %i.s, double %i.r, double %i.o ; 2 uses
  %i.v = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %indvars.iv.next31
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load double, ptr %i.w, align 8, !tbaa !248 ; 2 uses
  %i.y = fcmp ogt double %i.x, %i.u               ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next31 to i32
  %spec.select.1 = select i1 %i.y, i32 %i.z, i32 %spec.select ; 2 uses
  %indvars.iv.next31.1 = add nuw nsw i64 %indvars.iv30, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next31.1, %wide.trip.count
  %i.aa = select i1 %i.y, double %i.x, double %i.u
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !25

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ab = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %indvars.iv33 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(152) %i.ab, i64 152, i1 false), !tbaa.struct !302
  %i.ac = sext i32 %spec.select.lcssa to i64
  %i.ad = getelementptr inbounds [152 x i8], ptr %0, i64 %i.ac ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ab, ptr noundef nonnull align 8 dereferenceable(152) %i.ad, i64 152, i1 false), !tbaa.struct !302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ad, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 152, i1 false), !tbaa.struct !302
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge29, label %.lr.ph.preheader, !llvm.loop !26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl7sortArcEP5MyArci(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %2 = alloca %struct.MyArc, align 8              ; 4 uses
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph28.preheader, label %._crit_edge29

.lr.ph28.preheader:                               ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %wide.trip.count36 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.c = add nsw i64 %wide.trip.count, -2
  br label %.lr.ph.preheader

._crit_edge29:                                    ; preds = %bb.c, %bb.a
  ret void

.lr.ph.preheader:                                 ; preds = %bb.c, %.lr.ph28.preheader
  %indvars.iv33 = phi i64 [ 0, %.lr.ph28.preheader ], [ %indvars.iv.next34, %bb.c ] ; 7 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph28.preheader ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %i.d = trunc nuw nsw i64 %indvars.iv33 to i32   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [168 x i8], ptr %0, i64 %indvars.iv33
  %.phi.trans.insert38 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 48
  %.pre = load double, ptr %.phi.trans.insert38, align 8, !tbaa !287 ; 3 uses
  %i.e = sub nsw i64 %indvars.iv33, %wide.trip.count
  %i.f = and i64 %i.e, 1
  %lcmp.mod.not.not = icmp eq i64 %i.f, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.g = getelementptr inbounds nuw [168 x i8], ptr %0, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load double, ptr %i.h, align 8, !tbaa !287 ; 2 uses
  %i.j = fcmp ogt double %i.i, %.pre              ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select.prol = select i1 %i.j, i32 %i.k, i32 %i.d ; 2 uses
  %indvars.iv.next31.prol = add nuw nsw i64 %indvars.iv, 1
  %i.l = select i1 %i.j, double %i.i, double %.pre
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %.unr = phi double [ %.pre, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %indvars.iv30.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next31.prol, %.lr.ph.prol ]
  %.02224.unr = phi i32 [ %i.d, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %i.m = icmp eq i64 %i.c, %indvars.iv33
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %spec.select.lcssa = phi i32 [ %spec.select.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select.1, %.lr.ph ] ; 2 uses
  %i.n = zext i32 %spec.select.lcssa to i64
  %.not = icmp eq i64 %indvars.iv33, %i.n
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.o = phi double [ %i.aa, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv30 = phi i64 [ %indvars.iv.next31.1, %.lr.ph ], [ %indvars.iv30.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02224 = phi i32 [ %spec.select.1, %.lr.ph ], [ %.02224.unr, %.lr.ph.prol.loopexit ]
  %i.p = getelementptr inbounds nuw [168 x i8], ptr %0, i64 %indvars.iv30
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load double, ptr %i.q, align 8, !tbaa !287 ; 2 uses
  %i.s = fcmp ogt double %i.r, %i.o               ; 2 uses
  %i.t = trunc nuw nsw i64 %indvars.iv30 to i32
  %spec.select = select i1 %i.s, i32 %i.t, i32 %.02224
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.u = select i1 %i.s, double %i.r, double %i.o ; 2 uses
  %i.v = getelementptr inbounds nuw [168 x i8], ptr %0, i64 %indvars.iv.next31
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load double, ptr %i.w, align 8, !tbaa !287 ; 2 uses
  %i.y = fcmp ogt double %i.x, %i.u               ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next31 to i32
  %spec.select.1 = select i1 %i.y, i32 %i.z, i32 %spec.select ; 2 uses
  %indvars.iv.next31.1 = add nuw nsw i64 %indvars.iv30, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next31.1, %wide.trip.count
  %i.aa = select i1 %i.y, double %i.x, double %i.u
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !22

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ab = getelementptr inbounds nuw [168 x i8], ptr %0, i64 %indvars.iv33 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %i.ab, i64 168, i1 false), !tbaa.struct !300
  %i.ac = sext i32 %spec.select.lcssa to i64
  %i.ad = getelementptr inbounds [168 x i8], ptr %0, i64 %i.ac ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ab, ptr noundef nonnull align 8 dereferenceable(168) %i.ad, i64 168, i1 false), !tbaa.struct !300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ad, ptr noundef nonnull align 8 dereferenceable(168) %2, i64 168, i1 false), !tbaa.struct !300
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge29, label %.lr.ph.preheader, !llvm.loop !23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 2 uses
  %i.b = icmp slt i32 %0, 0
  %i.c = shl nuw nsw i64 %i.a, 3
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #41 ; 2 uses
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = sext i32 %1 to i64
  %i.h = icmp slt i32 %1, 0
  %i.i = shl nsw i64 %i.g, 3                      ; 2 uses
  %i.j = select i1 %i.h, i64 -1, i64 %i.i
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret ptr %i.e

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #41 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.k, ptr %i.l, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.i, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !16
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 1) i32 @_ZN2cv8ximgproc15EdgeDrawingImpl7inverseEPPdS3_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i32 %2, 1                            ; 3 uses
  %i.b = add i32 %2, 2                            ; 4 uses
  %i.c = zext i32 %i.a to i64                     ; 25 uses
  %i.d = icmp slt i32 %2, -1
  %i.e = shl nuw nsw i64 %i.c, 3                  ; 5 uses
  %i.f = select i1 %i.d, i64 -1, i64 %i.e         ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #41 ; 8 uses
  %i.h = icmp sgt i32 %2, -1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge279.split.thread373

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = zext nneg i32 %i.b to i64
  %i.j = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #41 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  store ptr %i.k, ptr %i.l, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.c
  br i1 %exitcond.not.i, label %.lr.ph.i174, label %bb.b, !llvm.loop !16

.lr.ph.i174:                                      ; preds = %bb.b
  %i.m = shl nuw i32 %2, 1                        ; 9 uses
  %i.n = add nuw nsw i32 %i.m, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #41 ; 14 uses
  %i.p = zext nneg i32 %i.n to i64
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i174
  %indvars.iv.i175 = phi i64 [ 0, %.lr.ph.i174 ], [ %indvars.iv.next.i176, %bb.c ] ; 2 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #41 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i175
  store ptr %i.r, ptr %i.s, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, i8 0, i64 %i.q, i1 false)
  %indvars.iv.next.i176 = add nuw nsw i64 %indvars.iv.i175, 1 ; 2 uses
  %exitcond.not.i177 = icmp eq i64 %indvars.iv.next.i176, %i.c
  br i1 %exitcond.not.i177, label %.lr.ph.i179, label %bb.c, !llvm.loop !16

._crit_edge279.split.thread373:                   ; preds = %bb.a
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #41
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #43
  br label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit203

.lr.ph.i179:                                      ; preds = %bb.c
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #41 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i179
  %indvars.iv.i180 = phi i64 [ 0, %.lr.ph.i179 ], [ %indvars.iv.next.i181, %bb.d ] ; 2 uses
  %i.v = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #41 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i180
  store ptr %i.v, ptr %i.w, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.e, i1 false)
  %indvars.iv.next.i181 = add nuw nsw i64 %indvars.iv.i180, 1 ; 2 uses
  %exitcond.not.i182 = icmp eq i64 %indvars.iv.next.i181, %i.c
  br i1 %exitcond.not.i182, label %_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit183, label %bb.d, !llvm.loop !16

_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit183: ; preds = %bb.d
  %.not239 = icmp eq i32 %2, 0
  br i1 %.not239, label %.lr.ph.i207.preheader, label %.preheader236.preheader

.preheader236.preheader:                          ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit183
  %i.x = add nsw i64 %i.c, -1                     ; 2 uses
  %i.y = add nsw i64 %i.c, -1                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 5
  %n.vec = and i64 %i.y, -4                       ; 3 uses
  %i.z = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %.preheader236

.preheader236:                                    ; preds = %.preheader236.preheader, %._crit_edge
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %._crit_edge ], [ 1, %.preheader236.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv283
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !279 ; 7 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv283
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !279 ; 7 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %i.af = ptrtoaddr ptr %i.ab to i64
  %i.ag = sub i64 %i.af, %i.ae
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond466 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond466, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader236, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader236 ] ; 2 uses
  %i.ah = or disjoint i64 %index, 1               ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !46
  %wide.load376 = load <2 x double>, ptr %i.aj, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x double> %wide.load, ptr %i.ak, align 8, !tbaa !46
  store <2 x double> %wide.load376, ptr %i.al, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !722

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader236, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.preheader236 ], [ %i.z, %middle.block ] ; 4 uses
  %i.an = sub nsw i64 %i.c, %indvars.iv.ph
  %i.ao = sub nsw i64 %i.x, %indvars.iv.ph
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.prol
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.prol
  store double %i.aq, ptr %i.ar, align 8, !tbaa !46
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !723

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.as = icmp ult i64 %i.ao, 3
  br i1 %i.as, label %._crit_edge, label %scalar.ph

.preheader234.lr.ph:                              ; preds = %._crit_edge
  %.not172243.not = icmp slt i32 %2, %i.m
  %i.at = add nsw i32 %2, -1
  %i.au = zext i32 %i.b to i64                    ; 6 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = zext nneg i32 %2 to i64
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = add nsw i64 %i.au, -1                   ; 2 uses
  %min.iters.check380 = icmp ult i32 %i.b, 5
  %n.vec382 = and i64 %i.ay, -4                   ; 3 uses
  %i.az = or disjoint i64 %n.vec382, 1
  %cmp.n389 = icmp eq i64 %i.ay, %n.vec382
  br label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  store double %i.bb, ptr %i.bc, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.be = load double, ptr %i.bd, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next
  store double %i.be, ptr %i.bf, align 8, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !46
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.1
  store double %i.bh, ptr %i.bi, align 8, !tbaa !46
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.2
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !46
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.2
  store double %i.bk, ptr %i.bl, align 8, !tbaa !46
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.c
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !724

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %i.c
  br i1 %exitcond287.not, label %.preheader234.lr.ph, label %.preheader236, !llvm.loop !725

.lr.ph:                                           ; preds = %._crit_edge246, %.preheader234.lr.ph
  %indvars.iv297 = phi i64 [ 1, %.preheader234.lr.ph ], [ %indvars.iv.next298, %._crit_edge246 ] ; 5 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv297
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !279 ; 7 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv297
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !279 ; 7 uses
  %i.bq = ptrtoaddr ptr %i.bp to i64
  %i.br = ptrtoaddr ptr %i.bn to i64
  %i.bs = sub i64 %i.br, %i.bq
  %diff.check378 = icmp ugt i64 %i.bs, -32
  %or.cond469 = select i1 %min.iters.check380, i1 true, i1 %diff.check378
  br i1 %or.cond469, label %scalar.ph379.preheader, label %vector.body383

vector.body383:                                   ; preds = %.lr.ph, %vector.body383
  %index384 = phi i64 [ %index.next387, %vector.body383 ], [ 0, %.lr.ph ] ; 2 uses
  %i.bt = or disjoint i64 %index384, 1            ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load385 = load <2 x double>, ptr %i.bu, align 8, !tbaa !46
  %wide.load386 = load <2 x double>, ptr %i.bv, align 8, !tbaa !46
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bt ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x double> %wide.load385, ptr %i.bw, align 8, !tbaa !46
  store <2 x double> %wide.load386, ptr %i.bx, align 8, !tbaa !46
  %index.next387 = add nuw i64 %index384, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next387, %n.vec382
  br i1 %i.by, label %middle.block388, label %vector.body383, !llvm.loop !726

middle.block388:                                  ; preds = %vector.body383
  br i1 %cmp.n389, label %.preheader233, label %scalar.ph379.preheader

scalar.ph379.preheader:                           ; preds = %.lr.ph, %middle.block388
  %indvars.iv289.ph = phi i64 [ 1, %.lr.ph ], [ %i.az, %middle.block388 ] ; 4 uses
  %i.bz = sub nsw i64 %i.au, %indvars.iv289.ph
  %xtraiter472 = and i64 %i.bz, 3                 ; 2 uses
  %lcmp.mod473.not = icmp eq i64 %xtraiter472, 0
  br i1 %lcmp.mod473.not, label %scalar.ph379.prol.loopexit, label %scalar.ph379.prol

scalar.ph379.prol:                                ; preds = %scalar.ph379.preheader, %scalar.ph379.prol
  %indvars.iv289.prol = phi i64 [ %indvars.iv.next290.prol, %scalar.ph379.prol ], [ %indvars.iv289.ph, %scalar.ph379.preheader ] ; 3 uses
  %prol.iter474 = phi i64 [ %prol.iter474.next, %scalar.ph379.prol ], [ 0, %scalar.ph379.preheader ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv289.prol
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !46
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv289.prol
  store double %i.cb, ptr %i.cc, align 8, !tbaa !46
  %indvars.iv.next290.prol = add nuw nsw i64 %indvars.iv289.prol, 1 ; 2 uses
  %prol.iter474.next = add i64 %prol.iter474, 1   ; 2 uses
  %prol.iter474.cmp.not = icmp eq i64 %prol.iter474.next, %xtraiter472
  br i1 %prol.iter474.cmp.not, label %scalar.ph379.prol.loopexit, label %scalar.ph379.prol, !llvm.loop !727

scalar.ph379.prol.loopexit:                       ; preds = %scalar.ph379.prol, %scalar.ph379.preheader
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %scalar.ph379.preheader ], [ %indvars.iv.next290.prol, %scalar.ph379.prol ]
  %i.cd = sub nsw i64 %indvars.iv289.ph, %i.au
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %.preheader233, label %scalar.ph379

.lr.ph270:                                        ; preds = %._crit_edge246
  %i.cf = or disjoint i32 %i.m, 1
  %i.cg = add i32 %i.m, 2
  %i.ch = or disjoint i32 %i.m, 1
  %i.ci = sext i32 %i.ch to i64                   ; 7 uses
  %i.cj = sext i32 %i.cf to i64
  %wide.trip.count314 = zext i32 %i.cg to i64     ; 4 uses
  %i.ck = sext i32 %i.m to i64
  %i.cl = shl nsw i64 %i.ck, 3
  %i.cm = add nsw i64 %i.cl, 16                   ; 2 uses
  %i.cn = or disjoint i32 %i.m, 1
  %i.co = sext i32 %i.cn to i64
  %i.cp = or disjoint i32 %i.m, 1
  %i.cq = sext i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %wide.trip.count314, 3  ; 2 uses
  %i.cs = add nsw i64 %i.c, -2
  %i.ct = add nsw i64 %wide.trip.count314, -1
  br label %bb.e

.preheader233:                                    ; preds = %scalar.ph379.prol.loopexit, %scalar.ph379, %middle.block388
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv297
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !279 ; 2 uses
  br i1 %.not172243.not, label %.lr.ph245, label %._crit_edge246

.lr.ph245:                                        ; preds = %.preheader233
  %scevgep = getelementptr nuw i8, ptr %i.cv, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep, i8 0, i64 %i.ax, i1 false), !tbaa !46
  br label %._crit_edge246

scalar.ph379:                                     ; preds = %scalar.ph379.prol.loopexit, %scalar.ph379
  %indvars.iv289 = phi i64 [ %indvars.iv.next290.3, %scalar.ph379 ], [ %indvars.iv289.unr, %scalar.ph379.prol.loopexit ] ; 6 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv289
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !46
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv289
  store double %i.cx, ptr %i.cy, align 8, !tbaa !46
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next290
  %i.da = load double, ptr %i.cz, align 8, !tbaa !46
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next290
  store double %i.da, ptr %i.db, align 8, !tbaa !46
  %indvars.iv.next290.1 = add nuw nsw i64 %indvars.iv289, 2 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next290.1
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !46
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next290.1
  store double %i.dd, ptr %i.de, align 8, !tbaa !46
  %indvars.iv.next290.2 = add nuw nsw i64 %indvars.iv289, 3 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next290.2
  %i.dg = load double, ptr %i.df, align 8, !tbaa !46
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next290.2
  store double %i.dg, ptr %i.dh, align 8, !tbaa !46
  %indvars.iv.next290.3 = add nuw nsw i64 %indvars.iv289, 4 ; 2 uses
  %exitcond293.3 = icmp eq i64 %indvars.iv.next290.3, %i.au
  br i1 %exitcond293.3, label %.preheader233, label %scalar.ph379, !llvm.loop !728

._crit_edge246:                                   ; preds = %.preheader233, %.lr.ph245
  %i.di = trunc nuw nsw i64 %indvars.iv297 to i32
  %i.dj = add i32 %i.at, %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr [8 x i8], ptr %i.cv, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  store double 1.000000e+00, ptr %i.dm, align 8, !tbaa !46
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond301.not = icmp eq i64 %indvars.iv.next298, %i.c
  br i1 %exitcond301.not, label %.lr.ph270, label %.lr.ph, !llvm.loop !729

.preheader228:                                    ; preds = %._crit_edge266
  %.not163271.not = icmp slt i32 %2, %i.m
  br i1 %.not163271.not, label %.preheader.preheader, label %.lr.ph.i207.preheader

.preheader.preheader:                             ; preds = %.preheader228
  %i.dn = zext i32 %i.b to i64                    ; 4 uses
  %i.do = shl nuw nsw i64 %i.au, 3
  %i.dp = add nsw i64 %i.c, -1                    ; 2 uses
  %min.iters.check452 = icmp ult i32 %i.a, 5
  %n.vec454 = and i64 %i.dp, -4                   ; 4 uses
  %i.dq = add nsw i64 %n.vec454, %i.dn
  %i.dr = or disjoint i64 %n.vec454, 1
  %cmp.n461 = icmp eq i64 %i.dp, %n.vec454
  br label %.preheader

bb.e:                                             ; preds = %.lr.ph270, %._crit_edge266
  %indvar = phi i64 [ 0, %.lr.ph270 ], [ %indvar.next, %._crit_edge266 ] ; 8 uses
  %indvars.iv302 = phi i64 [ 1, %.lr.ph270 ], [ %indvars.iv.next303, %._crit_edge266 ] ; 21 uses
  %i.ds = sub i64 %i.x, %indvar
  %i.dt = xor i64 %indvar, -1
  %i.du = add i64 %i.dt, %wide.trip.count314      ; 3 uses
  %i.dv = shl nuw nsw i64 %indvar, 3
  %i.dw = add nuw i64 %i.dv, 8                    ; 2 uses
  %i.dx = sub i64 %i.cq, %indvar                  ; 3 uses
  %i.dy = sub i64 %i.co, %indvar                  ; 3 uses
  %i.dz = shl nuw nsw i64 %indvar, 3
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv302
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !279 ; 13 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv302 ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !46 ; 2 uses
  %i.ee = tail call double @llvm.fabs.f64(double %i.ed) ; 3 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv302 to i32 ; 2 uses
  %xtraiter475 = and i64 %i.ds, 1
  %lcmp.mod476.not = icmp eq i64 %xtraiter475, 0
  br i1 %lcmp.mod476.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.e
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv302
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !279
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv302
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !46
  %i.ek = tail call double @llvm.fabs.f64(double %i.ej) ; 2 uses
  %i.el = fcmp olt double %i.ee, %i.ek            ; 2 uses
  %.1145.prol = select i1 %i.el, double %i.ek, double %i.ee ; 2 uses
  %i.em = trunc nuw nsw i64 %indvars.iv302 to i32
  %.1.prol = select i1 %i.el, i32 %i.em, i32 %i.ef ; 2 uses
  %indvars.iv.next305.prol = add nuw nsw i64 %indvars.iv302, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.e
  %.1145.lcssa.unr = phi double [ poison, %bb.e ], [ %.1145.prol, %.prol.loopexit.unr-lcssa ]
  %.1.lcssa.unr = phi i32 [ poison, %bb.e ], [ %.1.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv304.unr = phi i64 [ %indvars.iv302, %bb.e ], [ %indvars.iv.next305.prol, %.prol.loopexit.unr-lcssa ]
  %.0251.unr = phi i32 [ %i.ef, %bb.e ], [ %.1.prol, %.prol.loopexit.unr-lcssa ]
  %.0144250.unr = phi double [ %i.ee, %bb.e ], [ %.1145.prol, %.prol.loopexit.unr-lcssa ]
  %i.en = icmp eq i64 %i.cs, %indvar
  br i1 %i.en, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv304 = phi i64 [ %indvars.iv.next305.1, %.new ], [ %indvars.iv304.unr, %.prol.loopexit ] ; 4 uses
  %.0251 = phi i32 [ %.1.1, %.new ], [ %.0251.unr, %.prol.loopexit ]
  %.0144250 = phi double [ %.1145.1, %.new ], [ %.0144250.unr, %.prol.loopexit ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv304
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !279
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv302
  %i.er = load double, ptr %i.eq, align 8, !tbaa !46
  %i.es = tail call double @llvm.fabs.f64(double %i.er) ; 2 uses
  %i.et = fcmp olt double %.0144250, %i.es        ; 2 uses
  %.1145 = select i1 %i.et, double %i.es, double %.0144250 ; 2 uses
  %i.eu = trunc nuw nsw i64 %indvars.iv304 to i32
  %.1 = select i1 %i.et, i32 %i.eu, i32 %.0251
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next305
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !279
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv302
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !46
  %i.ez = tail call double @llvm.fabs.f64(double %i.ey) ; 2 uses
  %i.fa = fcmp olt double %.1145, %i.ez           ; 2 uses
  %.1145.1 = select i1 %i.fa, double %i.ez, double %.1145 ; 2 uses
  %i.fb = trunc nuw nsw i64 %indvars.iv.next305 to i32
  %.1.1 = select i1 %i.fa, i32 %i.fb, i32 %.1     ; 2 uses
  %indvars.iv.next305.1 = add nuw nsw i64 %indvars.iv304, 2 ; 2 uses
  %exitcond308.not.1 = icmp eq i64 %indvars.iv.next305.1, %i.c
  br i1 %exitcond308.not.1, label %.unr-lcssa, label %.new, !llvm.loop !730

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.1145.lcssa = phi double [ %.1145.lcssa.unr, %.prol.loopexit ], [ %.1145.1, %.new ]
  %.1.lcssa = phi i32 [ %.1.lcssa.unr, %.prol.loopexit ], [ %.1.1, %.new ] ; 2 uses
  %i.fc = fcmp ult double %.1145.lcssa, f0x3BFD83C94FB6D2AC
  br i1 %i.fc, label %.lr.ph.i184, label %bb.f

bb.f:                                             ; preds = %.unr-lcssa
  %i.fd = zext i32 %.1.lcssa to i64
  %.not165 = icmp eq i64 %indvars.iv302, %i.fd
  %.not166252 = icmp sgt i64 %indvars.iv302, %i.cj ; 2 uses
  %or.cond = select i1 %.not165, i1 true, i1 %.not166252
  br i1 %or.cond, label %.loopexit231, label %.lr.ph254

.lr.ph254:                                        ; preds = %bb.f
  %i.fe = sext i32 %.1.lcssa to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !279 ; 6 uses
  %min.iters.check436 = icmp ult i64 %i.du, 4
  br i1 %min.iters.check436, label %scalar.ph435.preheader, label %vector.memcheck427

vector.memcheck427:                               ; preds = %.lr.ph254
  %scevgep428 = getelementptr nuw i8, ptr %i.fg, i64 %i.dw
  %scevgep429 = getelementptr i8, ptr %i.fg, i64 %i.cr
  %scevgep430 = getelementptr i8, ptr %i.eb, i64 %i.dw
  %scevgep431 = getelementptr i8, ptr %i.eb, i64 %i.cr
  %bound0432 = icmp ult ptr %scevgep428, %scevgep431
  %bound1433 = icmp ult ptr %scevgep430, %scevgep429
  %found.conflict434 = and i1 %bound0432, %bound1433
  br i1 %found.conflict434, label %scalar.ph435.preheader, label %vector.ph437

vector.ph437:                                     ; preds = %vector.memcheck427
  %n.vec438 = and i64 %i.du, -4                   ; 3 uses
  %i.fh = add i64 %indvars.iv302, %n.vec438
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph437
  %index440 = phi i64 [ 0, %vector.ph437 ], [ %index.next445, %vector.body439 ] ; 2 uses
  %i.fi = add nuw i64 %indvars.iv302, %index440   ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %wide.load441 = load <2 x double>, ptr %i.fj, align 8, !tbaa !46, !alias.scope !749, !noalias !750
  %wide.load442 = load <2 x double>, ptr %i.fk, align 8, !tbaa !46, !alias.scope !749, !noalias !750
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.fi ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %wide.load443 = load <2 x double>, ptr %i.fl, align 8, !tbaa !46, !alias.scope !750
  %wide.load444 = load <2 x double>, ptr %i.fm, align 8, !tbaa !46, !alias.scope !750
  store <2 x double> %wide.load443, ptr %i.fj, align 8, !tbaa !46, !alias.scope !749, !noalias !750
  store <2 x double> %wide.load444, ptr %i.fk, align 8, !tbaa !46, !alias.scope !749, !noalias !750
  store <2 x double> %wide.load441, ptr %i.fl, align 8, !tbaa !46, !alias.scope !750
  store <2 x double> %wide.load442, ptr %i.fm, align 8, !tbaa !46, !alias.scope !750
  %index.next445 = add nuw i64 %index440, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next445, %n.vec438
  br i1 %i.fn, label %middle.block446, label %vector.body439, !llvm.loop !734

middle.block446:                                  ; preds = %vector.body439
  %cmp.n447 = icmp eq i64 %i.du, %n.vec438
  br i1 %cmp.n447, label %.loopexit231.loopexit, label %scalar.ph435.preheader

scalar.ph435.preheader:                           ; preds = %vector.memcheck427, %.lr.ph254, %middle.block446
  %indvars.iv311.ph = phi i64 [ %indvars.iv302, %vector.memcheck427 ], [ %indvars.iv302, %.lr.ph254 ], [ %i.fh, %middle.block446 ] ; 6 uses
  %xtraiter478 = and i64 %indvars.iv311.ph, 1
  %lcmp.mod479.not = icmp eq i64 %xtraiter478, 0
  br i1 %lcmp.mod479.not, label %scalar.ph435.prol.loopexit, label %scalar.ph435.prol

scalar.ph435.prol:                                ; preds = %scalar.ph435.preheader
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv311.ph ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !46
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv311.ph ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !46
  store double %i.fr, ptr %i.fo, align 8, !tbaa !46
  store double %i.fp, ptr %i.fq, align 8, !tbaa !46
  %indvars.iv.next312.prol = add nuw nsw i64 %indvars.iv311.ph, 1
  br label %scalar.ph435.prol.loopexit

scalar.ph435.prol.loopexit:                       ; preds = %scalar.ph435.prol, %scalar.ph435.preheader
  %indvars.iv311.unr = phi i64 [ %indvars.iv311.ph, %scalar.ph435.preheader ], [ %indvars.iv.next312.prol, %scalar.ph435.prol ]
  %i.fs = icmp eq i64 %indvars.iv311.ph, %i.ct
  br i1 %i.fs, label %.loopexit231.loopexit, label %scalar.ph435

scalar.ph435:                                     ; preds = %scalar.ph435.prol.loopexit, %scalar.ph435
  %indvars.iv311 = phi i64 [ %indvars.iv.next312.1, %scalar.ph435 ], [ %indvars.iv311.unr, %scalar.ph435.prol.loopexit ] ; 4 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv311 ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !46
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv311 ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !46
  store double %i.fw, ptr %i.ft, align 8, !tbaa !46
  store double %i.fu, ptr %i.fv, align 8, !tbaa !46
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next312 ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !46
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next312 ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !46
  store double %i.ga, ptr %i.fx, align 8, !tbaa !46
  store double %i.fy, ptr %i.fz, align 8, !tbaa !46
  %indvars.iv.next312.1 = add nuw nsw i64 %indvars.iv311, 2 ; 2 uses
  %exitcond315.1 = icmp eq i64 %indvars.iv.next312.1, %wide.trip.count314
  br i1 %exitcond315.1, label %.loopexit231.loopexit, label %scalar.ph435, !llvm.loop !735

.loopexit231.loopexit:                            ; preds = %scalar.ph435.prol.loopexit, %scalar.ph435, %middle.block446
  %.pre346 = load double, ptr %i.ec, align 8, !tbaa !46
  br label %.loopexit231

.loopexit231:                                     ; preds = %.loopexit231.loopexit, %bb.f
  %i.gb = phi double [ %.pre346, %.loopexit231.loopexit ], [ %i.ed, %bb.f ] ; 2 uses
  br i1 %.not166252, label %._crit_edge266, label %.lr.ph258.preheader

.lr.ph258.preheader:                              ; preds = %.loopexit231
  %min.iters.check415 = icmp ult i64 %i.dx, 2
  br i1 %min.iters.check415, label %.lr.ph258.preheader471, label %vector.ph416

vector.ph416:                                     ; preds = %.lr.ph258.preheader
  %n.vec417 = and i64 %i.dx, -2                   ; 3 uses
  %i.gc = sub i64 %i.ci, %n.vec417
  %broadcast.splatinsert418 = insertelement <2 x double> poison, double %i.gb, i64 0
  %broadcast.splat419 = shufflevector <2 x double> %broadcast.splatinsert418, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body420

vector.body420:                                   ; preds = %vector.body420, %vector.ph416
  %index421 = phi i64 [ 0, %vector.ph416 ], [ %index.next423, %vector.body420 ] ; 2 uses
  %i.gd = sub i64 %i.ci, %index421
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.gd
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -8 ; 2 uses
  %wide.load422 = load <2 x double>, ptr %i.gf, align 8, !tbaa !46
  %i.gg = fdiv <2 x double> %wide.load422, %broadcast.splat419
  store <2 x double> %i.gg, ptr %i.gf, align 8, !tbaa !46
  %index.next423 = add nuw i64 %index421, 2       ; 2 uses
  %i.gh = icmp eq i64 %index.next423, %n.vec417
  br i1 %i.gh, label %middle.block424, label %vector.body420, !llvm.loop !736

middle.block424:                                  ; preds = %vector.body420
  %cmp.n425 = icmp eq i64 %i.dx, %n.vec417
  br i1 %cmp.n425, label %.lr.ph265.split.preheader, label %.lr.ph258.preheader471

.lr.ph258.preheader471:                           ; preds = %.lr.ph258.preheader, %middle.block424
  %indvars.iv316.ph = phi i64 [ %i.ci, %.lr.ph258.preheader ], [ %i.gc, %middle.block424 ]
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader471, %.lr.ph258
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %.lr.ph258 ], [ %indvars.iv316.ph, %.lr.ph258.preheader471 ] ; 3 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %indvars.iv316 ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !46
  %i.gk = fdiv double %i.gj, %i.gb
  store double %i.gk, ptr %i.gi, align 8, !tbaa !46
  %indvars.iv.next317 = add nsw i64 %indvars.iv316, -1
  %.not167.not = icmp sgt i64 %indvars.iv316, %indvars.iv302
  br i1 %.not167.not, label %.lr.ph258, label %.lr.ph265.split.preheader, !llvm.loop !737

.lr.ph265.split.preheader:                        ; preds = %.lr.ph258, %middle.block424
  %i.gl = getelementptr i8, ptr %i.eb, i64 %i.dz
  %scevgep393.a = getelementptr i8, ptr %i.gl, i64 8
  %scevgep394 = getelementptr i8, ptr %i.eb, i64 %i.cm
  %min.iters.check396 = icmp ult i64 %i.dy, 4
  %n.vec398 = and i64 %i.dy, -4                   ; 3 uses
  %i.gm = sub i64 %i.ci, %n.vec398
  %cmp.n412 = icmp eq i64 %i.dy, %n.vec398
  br label %.lr.ph265.split

.lr.ph265.split:                                  ; preds = %.lr.ph265.split.preheader, %..loopexit_crit_edge
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %..loopexit_crit_edge ], [ 1, %.lr.ph265.split.preheader ] ; 3 uses
  %.not169 = icmp eq i64 %indvars.iv322, %indvars.iv302
  br i1 %.not169, label %..loopexit_crit_edge, label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph265.split
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv322
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !279 ; 4 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv302 ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !46
  %i.gr = fneg double %i.gq                       ; 2 uses
  br i1 %min.iters.check396, label %scalar.ph395.preheader, label %vector.memcheck391

vector.memcheck391:                               ; preds = %.lr.ph262
  %scevgep392 = getelementptr i8, ptr %i.go, i64 %i.cm
  %bound0 = icmp ult ptr %i.gp, %scevgep394
  %bound1 = icmp ult ptr %scevgep393.a, %scevgep392
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph395.preheader, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck391
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gr, i64 0 ; 2 uses
  %i.gs = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph397
  %index400 = phi i64 [ 0, %vector.ph397 ], [ %index.next410, %vector.body399 ] ; 2 uses
  %i.gu = sub i64 %i.ci, %index400                ; 2 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.gu ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -8 ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 -24 ; 2 uses
  %wide.load401 = load <2 x double>, ptr %i.gw, align 8, !tbaa !46, !alias.scope !751, !noalias !752
  %wide.load402 = load <2 x double>, ptr %i.gx, align 8, !tbaa !46, !alias.scope !751, !noalias !752
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.gu ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -8
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 -24
  %wide.load404 = load <2 x double>, ptr %i.gz, align 8, !tbaa !46, !alias.scope !752
  %wide.load405 = load <2 x double>, ptr %i.ha, align 8, !tbaa !46, !alias.scope !752
  %reverse408 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %wide.load404, <2 x double> %wide.load401)
  %reverse409 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %wide.load405, <2 x double> %wide.load402)
  store <2 x double> %reverse408, ptr %i.gw, align 8, !tbaa !46, !alias.scope !751, !noalias !752
  store <2 x double> %reverse409, ptr %i.gx, align 8, !tbaa !46, !alias.scope !751, !noalias !752
  %index.next410 = add nuw i64 %index400, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next410, %n.vec398
  br i1 %i.hb, label %middle.block411, label %vector.body399, !llvm.loop !741

middle.block411:                                  ; preds = %vector.body399
  br i1 %cmp.n412, label %..loopexit_crit_edge, label %scalar.ph395.preheader

scalar.ph395.preheader:                           ; preds = %vector.memcheck391, %.lr.ph262, %middle.block411
  %indvars.iv319.ph = phi i64 [ %i.ci, %vector.memcheck391 ], [ %i.ci, %.lr.ph262 ], [ %i.gm, %middle.block411 ]
  br label %scalar.ph395

scalar.ph395:                                     ; preds = %scalar.ph395.preheader, %scalar.ph395
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %scalar.ph395 ], [ %indvars.iv319.ph, %scalar.ph395.preheader ] ; 4 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.go, i64 %indvars.iv319 ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !46
  %i.he = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %indvars.iv319
  %i.hf = load double, ptr %i.he, align 8, !tbaa !46
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.gr, double %i.hf, double %i.hd)
  store double %i.hg, ptr %i.hc, align 8, !tbaa !46
  %indvars.iv.next320 = add nsw i64 %indvars.iv319, -1
  %.not170.not = icmp sgt i64 %indvars.iv319, %indvars.iv302
  br i1 %.not170.not, label %scalar.ph395, label %..loopexit_crit_edge, !llvm.loop !742

..loopexit_crit_edge:                             ; preds = %scalar.ph395, %middle.block411, %.lr.ph265.split
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %i.c
  br i1 %exitcond326.not, label %._crit_edge266, label %.lr.ph265.split, !llvm.loop !743

.lr.ph.i184:                                      ; preds = %.unr-lcssa, %bb.h
  %indvars.iv.i185 = phi i64 [ %indvars.iv.next.i186, %bb.h ], [ 0, %.unr-lcssa ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i185
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !279 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i184
  tail call void @_ZdaPv(ptr noundef nonnull %i.hi) #43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i184
  %indvars.iv.next.i186 = add nuw nsw i64 %indvars.iv.i185, 1 ; 2 uses
  %exitcond.not.i187 = icmp eq i64 %indvars.iv.next.i186, %i.c
  br i1 %exitcond.not.i187, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit, label %.lr.ph.i184, !llvm.loop !21

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit: ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #43
  br label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit, %bb.j
  %indvars.iv.i192 = phi i64 [ %indvars.iv.next.i193, %bb.j ], [ 0, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i192
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !279 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i191
  tail call void @_ZdaPv(ptr noundef nonnull %i.hl) #43
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i191
  %indvars.iv.next.i193 = add nuw nsw i64 %indvars.iv.i192, 1 ; 2 uses
  %exitcond.not.i194 = icmp eq i64 %indvars.iv.next.i193, %i.c
  br i1 %exitcond.not.i194, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit195, label %.lr.ph.i191, !llvm.loop !21

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit195: ; preds = %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #43
  br label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit195, %bb.l
  %indvars.iv.i200 = phi i64 [ %indvars.iv.next.i201, %bb.l ], [ 0, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit195 ] ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i200
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !279 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i199
  tail call void @_ZdaPv(ptr noundef nonnull %i.ho) #43
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i199
  %indvars.iv.next.i201 = add nuw nsw i64 %indvars.iv.i200, 1 ; 2 uses
  %exitcond.not.i202 = icmp eq i64 %indvars.iv.next.i201, %i.c
  br i1 %exitcond.not.i202, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit203, label %.lr.ph.i199, !llvm.loop !21

._crit_edge266:                                   ; preds = %..loopexit_crit_edge, %.loopexit231
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next303, %i.c
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond329.not, label %.preheader228, label %bb.e, !llvm.loop !744

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge275
  %indvars.iv339 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next340, %._crit_edge275 ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv339
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !279 ; 7 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv339
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !279 ; 7 uses
  br i1 %min.iters.check452, label %scalar.ph451.preheader, label %vector.memcheck449

vector.memcheck449:                               ; preds = %.preheader
  %i.hu = ptrtoaddr ptr %i.ht to i64
  %i.hv = ptrtoaddr ptr %i.hr to i64
  %i.hw = add i64 %i.do, %i.hv
  %i.hx = sub i64 %i.hu, %i.hw
  %i.hy = add i64 %i.hx, 7
  %diff.check450 = icmp ult i64 %i.hy, 31
  br i1 %diff.check450, label %scalar.ph451.preheader, label %vector.ph453

vector.ph453:                                     ; preds = %vector.memcheck449
  %invariant.gep = getelementptr [8 x i8], ptr %i.hr, i64 %i.dn
  br label %vector.body455

vector.body455:                                   ; preds = %vector.body455, %vector.ph453
  %index456 = phi i64 [ 0, %vector.ph453 ], [ %index.next459, %vector.body455 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index456 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load457 = load <2 x double>, ptr %gep, align 8, !tbaa !46
  %wide.load458 = load <2 x double>, ptr %i.hz, align 8, !tbaa !46
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %index456 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  store <2 x double> %wide.load457, ptr %i.ib, align 8, !tbaa !46
  store <2 x double> %wide.load458, ptr %i.ic, align 8, !tbaa !46
  %index.next459 = add nuw i64 %index456, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next459, %n.vec454
  br i1 %i.id, label %middle.block460, label %vector.body455, !llvm.loop !745

middle.block460:                                  ; preds = %vector.body455
  br i1 %cmp.n461, label %._crit_edge275, label %scalar.ph451.preheader

scalar.ph451.preheader:                           ; preds = %vector.memcheck449, %.preheader, %middle.block460
  %indvars.iv334.ph = phi i64 [ %i.dn, %vector.memcheck449 ], [ %i.dn, %.preheader ], [ %i.dq, %middle.block460 ] ; 2 uses
  %indvars.iv332.ph = phi i64 [ 1, %vector.memcheck449 ], [ 1, %.preheader ], [ %i.dr, %middle.block460 ] ; 4 uses
  %3 = sub nsw i64 %i.c, %indvars.iv332.ph
  %xtraiter482 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod483.not = icmp eq i64 %xtraiter482, 0
  br i1 %lcmp.mod483.not, label %scalar.ph452.prol.loopexit, label %scalar.ph451

scalar.ph451:                                     ; preds = %scalar.ph451.preheader, %scalar.ph451
  %indvars.iv334.prol = phi i64 [ %indvars.iv.next335, %scalar.ph451 ], [ %indvars.iv334.ph, %scalar.ph451.preheader ] ; 2 uses
  %indvars.iv334.a = phi i64 [ %indvars.iv.next333, %scalar.ph451 ], [ %indvars.iv332.ph, %scalar.ph451.preheader ] ; 2 uses
  %indvars.iv332.a = phi i64 [ %prol.iter484.next, %scalar.ph451 ], [ 0, %scalar.ph451.preheader ]
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv334.prol
  %i.if = load double, ptr %i.ie, align 8, !tbaa !46
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv334.a
  store double %i.if, ptr %i.ig, align 8, !tbaa !46
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334.prol, 1 ; 2 uses
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv334.a, 1 ; 2 uses
  %prol.iter484.next = add i64 %indvars.iv332.a, 1 ; 2 uses
  %prol.iter484.cmp.not = icmp eq i64 %prol.iter484.next, %xtraiter482
  br i1 %prol.iter484.cmp.not, label %scalar.ph452.prol.loopexit, label %scalar.ph451, !llvm.loop !746

scalar.ph452.prol.loopexit:                       ; preds = %scalar.ph451, %scalar.ph451.preheader
  %indvars.iv334.unr = phi i64 [ %indvars.iv334.ph, %scalar.ph451.preheader ], [ %indvars.iv.next335, %scalar.ph451 ]
  %indvars.iv332.unr = phi i64 [ %indvars.iv332.ph, %scalar.ph451.preheader ], [ %indvars.iv.next333, %scalar.ph451 ]
  %4 = sub nsw i64 %indvars.iv332.ph, %i.c
  %5 = icmp ugt i64 %4, -4
  br i1 %5, label %._crit_edge275, label %scalar.ph452

scalar.ph452:                                     ; preds = %scalar.ph452.prol.loopexit, %scalar.ph452
  %indvars.iv334 = phi i64 [ %indvars.iv.next335.3, %scalar.ph452 ], [ %indvars.iv334.unr, %scalar.ph452.prol.loopexit ] ; 5 uses
  %indvars.iv332 = phi i64 [ %indvars.iv.next333.3, %scalar.ph452 ], [ %indvars.iv332.unr, %scalar.ph452.prol.loopexit ] ; 5 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv334
  %7 = load double, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv332
  store double %7, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv334
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %11 = load double, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv332
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store double %11, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv334
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %16 = load double, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv332
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  store double %16, ptr %18, align 8, !tbaa !46
  %19 = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv334
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %21 = load double, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv332
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 24
  store double %21, ptr %23, align 8, !tbaa !46
  %indvars.iv.next335.3 = add nuw nsw i64 %indvars.iv334, 4
  %indvars.iv.next333.3 = add nuw nsw i64 %indvars.iv332, 4 ; 2 uses
  %exitcond340.3 = icmp eq i64 %indvars.iv.next333.3, %i.c
  br i1 %exitcond340.3, label %._crit_edge275, label %scalar.ph452, !llvm.loop !747

._crit_edge275:                                   ; preds = %scalar.ph452.prol.loopexit, %scalar.ph452, %middle.block460
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next340, %i.c
  br i1 %exitcond345.not, label %.lr.ph.i207.preheader, label %.preheader, !llvm.loop !748

.lr.ph.i207.preheader:                            ; preds = %._crit_edge275, %.preheader228, %_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit183
  br label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %.lr.ph.i207.preheader, %bb.n
  %indvars.iv.i208 = phi i64 [ %indvars.iv.next.i209, %bb.n ], [ 0, %.lr.ph.i207.preheader ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i208
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !279 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i207
  tail call void @_ZdaPv(ptr noundef nonnull %i.ii) #43
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i207
  %indvars.iv.next.i209 = add nuw nsw i64 %indvars.iv.i208, 1 ; 2 uses
  %exitcond.not.i210 = icmp eq i64 %indvars.iv.next.i209, %i.c
  br i1 %exitcond.not.i210, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit211, label %.lr.ph.i207, !llvm.loop !21

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit211: ; preds = %bb.n
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #43
  br label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit211, %bb.p
  %indvars.iv.i216 = phi i64 [ %indvars.iv.next.i217, %bb.p ], [ 0, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit211 ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i216
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !279 ; 2 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i215
  tail call void @_ZdaPv(ptr noundef nonnull %i.il) #43
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i215
  %indvars.iv.next.i217 = add nuw nsw i64 %indvars.iv.i216, 1 ; 2 uses
  %exitcond.not.i218 = icmp eq i64 %indvars.iv.next.i217, %i.c
  br i1 %exitcond.not.i218, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit219, label %.lr.ph.i215, !llvm.loop !21

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit219: ; preds = %bb.p
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #43
  br label %.lr.ph.i223

.lr.ph.i223:                                      ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit219, %bb.r
  %indvars.iv.i224 = phi i64 [ %indvars.iv.next.i225, %bb.r ], [ 0, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit219 ] ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i224
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !279 ; 2 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i223
  tail call void @_ZdaPv(ptr noundef nonnull %i.io) #43
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i223
  %indvars.iv.next.i225 = add nuw nsw i64 %indvars.iv.i224, 1 ; 2 uses
  %exitcond.not.i226 = icmp eq i64 %indvars.iv.next.i225, %i.c
  br i1 %exitcond.not.i226, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit203, label %.lr.ph.i223, !llvm.loop !21

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit203: ; preds = %bb.l, %bb.r, %._crit_edge279.split.thread373
  %.sink = phi ptr [ %i.u, %bb.r ], [ %i.t, %._crit_edge279.split.thread373 ], [ %i.u, %bb.l ]
  %.0156 = phi i32 [ 0, %bb.r ], [ 0, %._crit_edge279.split.thread373 ], [ -1, %bb.l ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sink) #43
  ret i32 %.0156
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl5AperBEPPdS3_S3_iiii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #7 align 2 {
bb.a:
  %.not33 = icmp slt i32 %3, 1
  %.not2529 = icmp slt i32 %6, 1
  %or.cond = or i1 %.not33, %.not2529
  br i1 %or.cond, label %._crit_edge35.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %.not2627 = icmp slt i32 %4, 1
  %i.a = add nuw i32 %3, 1
  %wide.trip.count56 = zext i32 %i.a to i64
  br i1 %.not2627, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.b = add nuw i32 %6, 1
  %wide.trip.count43 = zext i32 %i.b to i64
  %i.c = zext nneg i32 %4 to i64                  ; 2 uses
  %xtraiter = and i64 %i.c, 1
  %i.d = icmp eq i32 %4, 1
  %unroll_iter = and i64 %i.c, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod63 = trunc i32 %4 to i1
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.e = zext nneg i32 %6 to i64
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 9 uses
  %i.g = zext nneg i32 %3 to i64                  ; 2 uses
  %xtraiter64 = and i64 %i.g, 7                   ; 3 uses
  %i.h = add nsw i32 %3, -1
  %i.i = icmp ult i32 %i.h, 7
  br i1 %i.i, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter67 = and i64 %i.g, 2147483640
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader.new
  %indvars.iv53 = phi i64 [ 1, %.preheader.us.preheader.new ], [ %indvars.iv.next54.7, %.preheader.us ] ; 9 uses
  %niter68 = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter68.next.7, %.preheader.us ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !279
  %scevgep = getelementptr nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !279
  %scevgep.1 = getelementptr nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.1, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !279
  %scevgep.2 = getelementptr nuw i8, ptr %i.q, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.2, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !279
  %scevgep.3 = getelementptr nuw i8, ptr %i.t, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.3, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !279
  %scevgep.4 = getelementptr nuw i8, ptr %i.w, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.4, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !279
  %scevgep.5 = getelementptr nuw i8, ptr %i.z, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.5, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !279
  %scevgep.6 = getelementptr nuw i8, ptr %i.ac, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.6, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !279
  %scevgep.7 = getelementptr nuw i8, ptr %i.af, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.7, i8 0, i64 %i.f, i1 false), !tbaa !46
  %indvars.iv.next54.7 = add nuw nsw i64 %indvars.iv53, 8 ; 2 uses
  %niter68.next.7 = add i64 %niter68, 8           ; 2 uses
  %niter68.ncmp.7 = icmp eq i64 %niter68.next.7, %unroll_iter67
  br i1 %niter68.ncmp.7, label %._crit_edge35.split.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !20

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge32.split
  %indvars.iv45 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge32.split ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv45
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !279
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv45
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !279 ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv40 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next41, %._crit_edge ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv40 ; 4 uses
  store double 0.000000e+00, ptr %i.ak, align 8, !tbaa !46
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 1, %.lr.ph ] ; 4 uses
  %i.al = phi double [ %i.az, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.an = load double, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !279
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv40
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !46
  %i.as = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ar, double %i.al) ; 2 uses
  store double %i.as, ptr %i.ak, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next
  %i.au = load double, ptr %i.at, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !279
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv40
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !46
  %i.az = tail call double @llvm.fmuladd.f64(double %i.au, double %i.ay, double %i.as) ; 3 uses
  store double %i.az, ptr %i.ak, align 8, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !753

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.az, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.epil.init
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !279
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv40
  %i.bf = load double, ptr %i.be, align 8, !tbaa !46
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bf, double %.epil.init)
  store double %i.bg, ptr %i.ak, align 8, !tbaa !46
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge32.split, label %.lr.ph, !llvm.loop !754

._crit_edge32.split:                              ; preds = %._crit_edge
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count56
  br i1 %exitcond49.not, label %._crit_edge35.split, label %.preheader, !llvm.loop !20

._crit_edge35.split.loopexit.unr-lcssa:           ; preds = %.preheader.us
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %._crit_edge35.split, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %._crit_edge35.split.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv53.epil.init = phi i64 [ 1, %.preheader.us.preheader ], [ %indvars.iv.next54.7, %._crit_edge35.split.loopexit.unr-lcssa ]
  %lcmp.mod66 = icmp ne i64 %xtraiter64, 0
  tail call void @llvm.assume(i1 %lcmp.mod66)
  br label %.preheader.us.epil

.preheader.us.epil:                               ; preds = %.preheader.us.epil, %.preheader.us.epil.preheader
  %indvars.iv53.epil = phi i64 [ %indvars.iv53.epil.init, %.preheader.us.epil.preheader ], [ %indvars.iv.next54.epil, %.preheader.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.us.epil.preheader ], [ %epil.iter.next, %.preheader.us.epil ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53.epil
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !279
  %scevgep.epil = getelementptr nuw i8, ptr %i.bi, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.epil, i8 0, i64 %i.f, i1 false), !tbaa !46
  %indvars.iv.next54.epil = add nuw nsw i64 %indvars.iv53.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter64
  br i1 %epil.iter.cmp.not, label %._crit_edge35.split, label %.preheader.us.epil, !llvm.loop !755

._crit_edge35.split:                              ; preds = %._crit_edge32.split, %._crit_edge35.split.loopexit.unr-lcssa, %.preheader.us.epil, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl7A_TperBEPPdS3_S3_iiii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #7 align 2 {
bb.a:
  %.not33 = icmp slt i32 %4, 1
  %.not2529 = icmp slt i32 %6, 1
  %or.cond = or i1 %.not33, %.not2529
  br i1 %or.cond, label %._crit_edge35.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %.not2627 = icmp slt i32 %3, 1
  %i.a = add nuw i32 %4, 1
  %wide.trip.count56 = zext i32 %i.a to i64
  br i1 %.not2627, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.b = add nuw i32 %6, 1
  %wide.trip.count43 = zext i32 %i.b to i64
  %i.c = zext nneg i32 %3 to i64                  ; 2 uses
  %xtraiter = and i64 %i.c, 1
  %i.d = icmp eq i32 %3, 1
  %unroll_iter = and i64 %i.c, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod63 = trunc i32 %3 to i1
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.e = zext nneg i32 %6 to i64
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 9 uses
  %i.g = zext nneg i32 %4 to i64                  ; 2 uses
  %xtraiter64 = and i64 %i.g, 7                   ; 3 uses
  %i.h = add nsw i32 %4, -1
  %i.i = icmp ult i32 %i.h, 7
  br i1 %i.i, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter67 = and i64 %i.g, 2147483640
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader.new
  %indvars.iv53 = phi i64 [ 1, %.preheader.us.preheader.new ], [ %indvars.iv.next54.7, %.preheader.us ] ; 9 uses
  %niter68 = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter68.next.7, %.preheader.us ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !279
  %scevgep = getelementptr nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !279
  %scevgep.1 = getelementptr nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.1, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !279
  %scevgep.2 = getelementptr nuw i8, ptr %i.q, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.2, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !279
  %scevgep.3 = getelementptr nuw i8, ptr %i.t, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.3, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !279
  %scevgep.4 = getelementptr nuw i8, ptr %i.w, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.4, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !279
  %scevgep.5 = getelementptr nuw i8, ptr %i.z, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.5, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !279
  %scevgep.6 = getelementptr nuw i8, ptr %i.ac, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.6, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !279
  %scevgep.7 = getelementptr nuw i8, ptr %i.af, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.7, i8 0, i64 %i.f, i1 false), !tbaa !46
  %indvars.iv.next54.7 = add nuw nsw i64 %indvars.iv53, 8 ; 2 uses
  %niter68.next.7 = add i64 %niter68, 8           ; 2 uses
  %niter68.ncmp.7 = icmp eq i64 %niter68.next.7, %unroll_iter67
  br i1 %niter68.ncmp.7, label %._crit_edge35.split.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !18

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge32.split
  %indvars.iv45 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge32.split ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv45
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !279
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv40 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next41, %._crit_edge ] ; 5 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv40 ; 4 uses
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !46
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 1, %.lr.ph ] ; 4 uses
  %i.aj = phi double [ %i.bb, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !279
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv45
  %i.an = load double, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !279
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv40
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !46
  %i.as = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ar, double %i.aj) ; 2 uses
  store double %i.as, ptr %i.ai, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !279
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv45
  %i.aw = load double, ptr %i.av, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !279
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv40
  %i.ba = load double, ptr %i.az, align 8, !tbaa !46
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ba, double %i.as) ; 3 uses
  store double %i.bb, ptr %i.ai, align 8, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !17

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.bb, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !279
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv45
  %i.bf = load double, ptr %i.be, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !279
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv40
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !46
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bj, double %.epil.init)
  store double %i.bk, ptr %i.ai, align 8, !tbaa !46
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge32.split, label %.lr.ph, !llvm.loop !756

._crit_edge32.split:                              ; preds = %._crit_edge
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count56
  br i1 %exitcond49.not, label %._crit_edge35.split, label %.preheader, !llvm.loop !18

._crit_edge35.split.loopexit.unr-lcssa:           ; preds = %.preheader.us
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %._crit_edge35.split, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %._crit_edge35.split.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv53.epil.init = phi i64 [ 1, %.preheader.us.preheader ], [ %indvars.iv.next54.7, %._crit_edge35.split.loopexit.unr-lcssa ]
  %lcmp.mod66 = icmp ne i64 %xtraiter64, 0
  tail call void @llvm.assume(i1 %lcmp.mod66)
  br label %.preheader.us.epil

.preheader.us.epil:                               ; preds = %.preheader.us.epil, %.preheader.us.epil.preheader
  %indvars.iv53.epil = phi i64 [ %indvars.iv53.epil.init, %.preheader.us.epil.preheader ], [ %indvars.iv.next54.epil, %.preheader.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.us.epil.preheader ], [ %epil.iter.next, %.preheader.us.epil ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53.epil
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !279
  %scevgep.epil = getelementptr nuw i8, ptr %i.bm, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.epil, i8 0, i64 %i.f, i1 false), !tbaa !46
  %indvars.iv.next54.epil = add nuw nsw i64 %indvars.iv53.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter64
  br i1 %epil.iter.cmp.not, label %._crit_edge35.split, label %.preheader.us.epil, !llvm.loop !757

._crit_edge35.split:                              ; preds = %._crit_edge32.split, %._crit_edge35.split.loopexit.unr-lcssa, %.preheader.us.epil, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !279  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #43
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !21

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %0) #43
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl15joinLastTwoArcsEP5MyArcRi(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %2 = alloca %struct.AngleSet, align 8           ; 8 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr [168 x i8], ptr %0, i64 %i.g ; 25 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -336
  %i.j = getelementptr i8, ptr %i.h, i64 -276
  %i.k = load i32, ptr %i.j, align 4, !tbaa !289
  %i.l = getelementptr i8, ptr %i.h, i64 -108
  %i.m = load i32, ptr %i.l, align 4, !tbaa !289
  %.not = icmp eq i32 %i.k, %i.m
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.h, i64 -280
  %i.o = load i32, ptr %i.n, align 8, !tbaa !288
  %i.p = getelementptr i8, ptr %i.h, i64 -112
  %i.q = load i32, ptr %i.p, align 8, !tbaa !288
  %.not92 = icmp eq i32 %i.o, %i.q
  br i1 %.not92, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.h, i64 -236
  %i.s = load i8, ptr %i.r, align 4, !tbaa !290, !range !81, !noundef !82
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.h, i64 -68
  %i.v = load i8, ptr %i.u, align 4, !tbaa !290, !range !81, !noundef !82
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.h, i64 -320     ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !283 ; 3 uses
  %i.z = getelementptr i8, ptr %i.h, i64 -152
  %i.aa = load double, ptr %i.z, align 8, !tbaa !283 ; 3 uses
  %i.ab = fcmp ogt double %i.y, %i.aa
  %. = select i1 %i.ab, double %i.aa, double %i.y
  %i.ac = fmul double %., 2.500000e-01
  %i.ad = fsub double %i.y, %i.aa
  %i.ae = tail call double @llvm.fabs.f64(double %i.ad)
  %i.af = fcmp ogt double %i.ae, %i.ac
  br i1 %i.af, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %i.h, i64 -264    ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !293
  %i.ai = getelementptr i8, ptr %i.h, i64 -104
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !291
  %i.ak = sub nsw i32 %i.ah, %i.aj
  %i.al = sitofp i32 %i.ak to double              ; 2 uses
  %i.am = getelementptr i8, ptr %i.h, i64 -260
  %i.an = load i32, ptr %i.am, align 4, !tbaa !294
  %i.ao = getelementptr i8, ptr %i.h, i64 -100
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !292
  %i.aq = sub nsw i32 %i.an, %i.ap
  %i.ar = sitofp i32 %i.aq to double              ; 2 uses
  %i.as = fmul nnan double %i.ar, %i.ar
  %i.at = tail call double @llvm.fmuladd.f64(double %i.al, double %i.al, double %i.as)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.at)
  %i.au = fcmp ogt double %sqrt, 1.000000e+01
  br i1 %i.au, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr i8, ptr %i.h, i64 -240    ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !297
  %i.ax = getelementptr i8, ptr %i.h, i64 -72
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !297
  %i.az = add nsw i32 %i.ay, %i.aw                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #42
  %i.ba = getelementptr i8, ptr %i.h, i64 -256
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !295
  %i.bc = getelementptr i8, ptr %i.h, i64 -248
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !296
  %i.be = call noundef zeroext i1 @_ZN2cv8ximgproc15EdgeDrawingImpl9CircleFitEPdS2_iS2_S2_S2_S2_(ptr noundef %i.bb, ptr noundef %i.bd, i32 noundef %i.az, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.bf = load double, ptr %i.d, align 8, !tbaa !46 ; 2 uses
  %i.bg = fcmp ugt double %i.bf, 1.500000e+00
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.az, ptr %i.av, align 8, !tbaa !297
  %i.bh = getelementptr i8, ptr %i.h, i64 -312
  store double %i.bf, ptr %i.bh, align 8, !tbaa !284
  %i.bi = load double, ptr %i.a, align 8, !tbaa !46
  store double %i.bi, ptr %i.i, align 8, !tbaa !281
  %i.bj = load double, ptr %i.b, align 8, !tbaa !46
  %i.bk = getelementptr i8, ptr %i.h, i64 -328
  store double %i.bj, ptr %i.bk, align 8, !tbaa !282
  %i.bl = load double, ptr %i.c, align 8, !tbaa !46
  store double %i.bl, ptr %i.x, align 8, !tbaa !283
  %i.bm = getelementptr i8, ptr %i.h, i64 -96
  %i.bn = load <2 x i32>, ptr %i.bm, align 8, !tbaa !44
  store <2 x i32> %i.bn, ptr %i.ag, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8640
  store i32 -1, ptr %i.bo, align 8, !tbaa !53
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8644
  store i32 0, ptr %i.bp, align 4, !tbaa !48
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8648
  store double 0.000000e+00, ptr %i.bq, align 8, !tbaa !60
  %i.br = getelementptr i8, ptr %i.h, i64 -304    ; 3 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !285
  %i.bt = getelementptr i8, ptr %i.h, i64 -296    ; 3 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !286
  call void @_ZN8AngleSet3setEdd(ptr noundef nonnull align 8 dereferenceable(8656) %2, double noundef %i.bs, double noundef %i.bu)
  %i.bv = getelementptr i8, ptr %i.h, i64 -136
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !285
  %i.bx = getelementptr i8, ptr %i.h, i64 -128
  %i.by = load double, ptr %i.bx, align 8, !tbaa !286
  call void @_ZN8AngleSet3setEdd(ptr noundef nonnull align 8 dereferenceable(8656) %2, double noundef %i.bw, double noundef %i.by)
  call void @_ZN8AngleSet20computeStartEndThetaERdS0_(ptr noundef nonnull align 8 dereferenceable(8656) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
  %i.bz = load double, ptr %i.br, align 8, !tbaa !285 ; 3 uses
  %i.ca = load double, ptr %i.bt, align 8, !tbaa !286 ; 2 uses
  %i.cb = fcmp ogt double %i.ca, %i.bz
  %i.cc = fsub double f0x401921FB54442D18, %i.bz
  %i.cd = fneg double %i.bz
  %.0.p.i = select i1 %i.cb, double %i.cd, double %i.cc
  %.0.i = fadd double %i.ca, %.0.p.i
  %i.ce = fdiv double %.0.i, f0x401921FB54442D18
  %i.cf = getelementptr i8, ptr %i.h, i64 -288
  store double %i.ce, ptr %i.cf, align 8, !tbaa !287
  %i.cg = load i32, ptr %1, align 4, !tbaa !44
  %i.ch = add nsw i32 %i.cg, -1
  store i32 %i.ch, ptr %1, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.d, %bb.j, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl6choldcEPPdiS3_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i32 %1, 1                            ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = icmp slt i32 %1, -1
  %i.d = shl nsw i64 %i.b, 3                      ; 2 uses
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #41 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.d, i1 false)
  %.not72 = icmp slt i32 %1, 1
  br i1 %.not72, label %._crit_edge, label %.preheader68.preheader

.preheader68.preheader:                           ; preds = %bb.a
  %wide.trip.count90 = zext i32 %i.a to i64       ; 3 uses
  br label %.preheader68

.preheader68:                                     ; preds = %.preheader68.preheader, %.split.us
  %indvar = phi i64 [ 0, %.preheader68.preheader ], [ %indvar.next, %.split.us ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.preheader68.preheader ], [ %indvars.iv.next, %.split.us ] ; 11 uses
  %i.g = add i64 %indvar, -1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !279  ; 7 uses
  %i.j = icmp samesign ugt i64 %indvars.iv, 1
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 4 uses
  br i1 %i.j, label %.lr.ph.us.preheader, label %.preheader68.split

.lr.ph.us.preheader:                              ; preds = %.preheader68
  %xtraiter = and i64 %indvar, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.l = icmp ult i64 %i.g, 3
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.e
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %bb.e ], [ %indvars.iv, %.lr.ph.us.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv84
  %i.n = load double, ptr %i.m, align 8, !tbaa !46 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv84
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !279  ; 6 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.us, %.prol.preheader
  %indvars.iv81.prol = phi i64 [ %indvars.iv.next82.prol, %.prol.preheader ], [ %indvars.iv, %.lr.ph.us ]
  %.070.us.prol = phi double [ %i.v, %.prol.preheader ], [ %i.n, %.lr.ph.us ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.us ]
  %indvars.iv.next82.prol = add nsw i64 %indvars.iv81.prol, -1 ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next82.prol
  %i.r = load double, ptr %i.q, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next82.prol
  %i.t = load double, ptr %i.s, align 8, !tbaa !46
  %i.u = fneg double %i.r
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.t, double %.070.us.prol) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !758

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.us
  %indvars.iv81.unr = phi i64 [ %indvars.iv, %.lr.ph.us ], [ %indvars.iv.next82.prol, %.prol.preheader ]
  %.070.us.unr = phi double [ %i.n, %.lr.ph.us ], [ %i.v, %.prol.preheader ]
  %.lcssa.unr = phi double [ poison, %.lr.ph.us ], [ %i.v, %.prol.preheader ]
  br i1 %i.l, label %._crit_edge.us, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.prol.loopexit, %.lr.ph.us.new
  %indvars.iv81 = phi i64 [ %indvars.iv.next82.3, %.lr.ph.us.new ], [ %indvars.iv81.unr, %.prol.loopexit ] ; 5 uses
  %.070.us = phi double [ %i.at, %.lr.ph.us.new ], [ %.070.us.unr, %.prol.loopexit ]
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, -1 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next82
  %i.x = load double, ptr %i.w, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next82
  %i.z = load double, ptr %i.y, align 8, !tbaa !46
  %i.aa = fneg double %i.x
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.z, double %.070.us)
  %indvars.iv.next82.1 = add nsw i64 %indvars.iv81, -2 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next82.1
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next82.1
  %i.af = load double, ptr %i.ae, align 8, !tbaa !46
  %i.ag = fneg double %i.ad
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.af, double %i.ab)
  %indvars.iv.next82.2 = add nsw i64 %indvars.iv81, -3 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next82.2
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next82.2
  %i.al = load double, ptr %i.ak, align 8, !tbaa !46
  %i.am = fneg double %i.aj
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.al, double %i.ah)
  %indvars.iv.next82.3 = add nsw i64 %indvars.iv81, -4 ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next82.3
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !46
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next82.3
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !46
  %i.as = fneg double %i.ap
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ar, double %i.an) ; 2 uses
  %i.au = icmp sgt i64 %indvars.iv81, 5
  br i1 %i.au, label %.lr.ph.us.new, label %._crit_edge.us, !llvm.loop !759

bb.b:                                             ; preds = %._crit_edge.us
  %i.av = load double, ptr %i.k, align 8, !tbaa !46
  %i.aw = fdiv double %.lcssa, %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store double %i.aw, ptr %i.ax, align 8, !tbaa !46
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.us
  %i.ay = fcmp ugt double %.lcssa, 0.000000e+00
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.az = tail call double @sqrt(double noundef %.lcssa) #42
  store double %i.az, ptr %i.k, align 8, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count90
  br i1 %exitcond88.not, label %.split.us, label %.lr.ph.us, !llvm.loop !760

._crit_edge.us:                                   ; preds = %.lr.ph.us.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.at, %.lr.ph.us.new ] ; 3 uses
  %i.ba = icmp eq i64 %indvars.iv, %indvars.iv84
  br i1 %i.ba, label %bb.c, label %bb.b

.preheader.preheader:                             ; preds = %.split.us
  %wide.trip.count100 = zext i32 %i.a to i64      ; 2 uses
  br label %.preheader

.preheader68.split:                               ; preds = %.preheader68, %bb.i
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %bb.i ], [ 1, %.preheader68 ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv78
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !46 ; 3 uses
  %i.bd = icmp eq i64 %indvars.iv, %indvars.iv78
  br i1 %i.bd, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.preheader68.split
  %i.be = fcmp ugt double %i.bc, 0.000000e+00
  br i1 %i.be, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bf = tail call double @sqrt(double noundef %i.bc) #42
  store double %i.bf, ptr %i.k, align 8, !tbaa !46
  br label %bb.i

bb.h:                                             ; preds = %.preheader68.split
  %i.bg = load double, ptr %i.k, align 8, !tbaa !46
  %i.bh = fdiv double %i.bc, %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv78
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !279
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  store double %i.bh, ptr %i.bk, align 8, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count90
  br i1 %exitcond.not, label %.split.us, label %.preheader68.split, !llvm.loop !760

.split.us:                                        ; preds = %bb.i, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next, %wide.trip.count90
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond91.not, label %.preheader.preheader, label %.preheader68, !llvm.loop !761

.preheader:                                       ; preds = %.preheader.preheader, %bb.n
  %indvars.iv92 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next93, %bb.n ] ; 8 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv92
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv92
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !279
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.m
  %indvars.iv94 = phi i64 [ %indvars.iv92, %.preheader ], [ %indvars.iv.next95, %bb.m ] ; 5 uses
  %i.bo = icmp eq i64 %indvars.iv92, %indvars.iv94
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bp = load double, ptr %i.bm, align 8, !tbaa !46
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv94
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !279
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv92
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !46
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv94
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !279
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv92
  store double %i.bt, ptr %i.bw, align 8, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %indvars.iv92.sink = phi i64 [ %indvars.iv92, %bb.k ], [ %indvars.iv94, %bb.l ]
  %.sink = phi double [ %i.bp, %bb.k ], [ 0.000000e+00, %bb.l ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv92.sink
  store double %.sink, ptr %i.bx, align 8, !tbaa !46
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count100
  br i1 %exitcond98.not, label %bb.n, label %bb.j, !llvm.loop !762

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge, label %.preheader, !llvm.loop !763

._crit_edge:                                      ; preds = %bb.n, %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl7AperB_TEPPdS3_S3_iiii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #7 align 2 {
bb.a:
  %.not33 = icmp slt i32 %4, 1
  %.not2529 = icmp slt i32 %6, 1
  %or.cond = or i1 %.not33, %.not2529
  br i1 %or.cond, label %._crit_edge35.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %.not2627 = icmp slt i32 %3, 1
  %i.a = add nuw i32 %4, 1
  %wide.trip.count56 = zext i32 %i.a to i64
  br i1 %.not2627, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.b = add nuw i32 %6, 1
  %wide.trip.count43 = zext i32 %i.b to i64
  %i.c = zext nneg i32 %3 to i64                  ; 2 uses
  %xtraiter = and i64 %i.c, 1
  %i.d = icmp eq i32 %3, 1
  %unroll_iter = and i64 %i.c, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod63 = trunc i32 %3 to i1
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.e = zext nneg i32 %6 to i64
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 9 uses
  %i.g = zext nneg i32 %4 to i64                  ; 2 uses
  %xtraiter64 = and i64 %i.g, 7                   ; 3 uses
  %i.h = add nsw i32 %4, -1
  %i.i = icmp ult i32 %i.h, 7
  br i1 %i.i, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter67 = and i64 %i.g, 2147483640
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader.new
  %indvars.iv53 = phi i64 [ 1, %.preheader.us.preheader.new ], [ %indvars.iv.next54.7, %.preheader.us ] ; 9 uses
  %niter68 = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter68.next.7, %.preheader.us ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !279
  %scevgep = getelementptr nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !279
  %scevgep.1 = getelementptr nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.1, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !279
  %scevgep.2 = getelementptr nuw i8, ptr %i.q, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.2, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !279
  %scevgep.3 = getelementptr nuw i8, ptr %i.t, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.3, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !279
  %scevgep.4 = getelementptr nuw i8, ptr %i.w, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.4, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !279
  %scevgep.5 = getelementptr nuw i8, ptr %i.z, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.5, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !279
  %scevgep.6 = getelementptr nuw i8, ptr %i.ac, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.6, i8 0, i64 %i.f, i1 false), !tbaa !46
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !279
  %scevgep.7 = getelementptr nuw i8, ptr %i.af, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.7, i8 0, i64 %i.f, i1 false), !tbaa !46
  %indvars.iv.next54.7 = add nuw nsw i64 %indvars.iv53, 8 ; 2 uses
  %niter68.next.7 = add i64 %niter68, 8           ; 2 uses
  %niter68.ncmp.7 = icmp eq i64 %niter68.next.7, %unroll_iter67
  br i1 %niter68.ncmp.7, label %._crit_edge35.split.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !19

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge32.split
  %indvars.iv45 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next46, %._crit_edge32.split ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv45
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !279
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv45
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !279 ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv40 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next41, %._crit_edge ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv40 ; 4 uses
  store double 0.000000e+00, ptr %i.ak, align 8, !tbaa !46
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !279 ; 3 uses
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 1, %.lr.ph ] ; 4 uses
  %i.an = phi double [ %i.ax, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !46
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !46
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ar, double %i.an) ; 2 uses
  store double %i.as, ptr %i.ak, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next
  %i.au = load double, ptr %i.at, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next
  %i.aw = load double, ptr %i.av, align 8, !tbaa !46
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.au, double %i.aw, double %i.as) ; 3 uses
  store double %i.ax, ptr %i.ak, align 8, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !764

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ax, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.epil.init
  %i.az = load double, ptr %i.ay, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.epil.init
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !46
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.az, double %i.bb, double %.epil.init)
  store double %i.bc, ptr %i.ak, align 8, !tbaa !46
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge32.split, label %.lr.ph, !llvm.loop !765

._crit_edge32.split:                              ; preds = %._crit_edge
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count56
  br i1 %exitcond49.not, label %._crit_edge35.split, label %.preheader, !llvm.loop !19

._crit_edge35.split.loopexit.unr-lcssa:           ; preds = %.preheader.us
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %._crit_edge35.split, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %._crit_edge35.split.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv53.epil.init = phi i64 [ 1, %.preheader.us.preheader ], [ %indvars.iv.next54.7, %._crit_edge35.split.loopexit.unr-lcssa ]
  %lcmp.mod66 = icmp ne i64 %xtraiter64, 0
  tail call void @llvm.assume(i1 %lcmp.mod66)
  br label %.preheader.us.epil

.preheader.us.epil:                               ; preds = %.preheader.us.epil, %.preheader.us.epil.preheader
  %indvars.iv53.epil = phi i64 [ %indvars.iv53.epil.init, %.preheader.us.epil.preheader ], [ %indvars.iv.next54.epil, %.preheader.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.us.epil.preheader ], [ %epil.iter.next, %.preheader.us.epil ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53.epil
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !279
  %scevgep.epil = getelementptr nuw i8, ptr %i.be, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.epil, i8 0, i64 %i.f, i1 false), !tbaa !46
  %indvars.iv.next54.epil = add nuw nsw i64 %indvars.iv53.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter64
  br i1 %epil.iter.cmp.not, label %._crit_edge35.split, label %.preheader.us.epil, !llvm.loop !766

._crit_edge35.split:                              ; preds = %._crit_edge32.split, %._crit_edge35.split.loopexit.unr-lcssa, %.preheader.us.epil, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl6jacobiEPPdiS2_S3_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i32 %1, 1                            ; 5 uses
  %i.b = sext i32 %i.a to i64
  %i.c = icmp slt i32 %1, -1
  %i.d = shl nsw i64 %i.b, 3                      ; 3 uses
  %i.e = select i1 %i.c, i64 -1, i64 %i.d         ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #41 ; 7 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #41 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.d, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.d, i1 false)
  %.not207 = icmp slt i32 %1, 1                   ; 2 uses
  br i1 %.not207, label %.preheader202, label %.preheader204.preheader

.preheader204.preheader:                          ; preds = %bb.a
  %i.h = zext nneg i32 %1 to i64
  %i.i = shl nuw nsw i64 %i.h, 3                  ; 5 uses
  %wide.trip.count = zext i32 %i.a to i64         ; 2 uses
  %i.j = add nsw i64 %wide.trip.count, -1         ; 5 uses
  %i.k = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %.preheader204.epil.preheader, label %.preheader204.preheader.new

.preheader204.preheader.new:                      ; preds = %.preheader204.preheader
  %unroll_iter = and i64 %i.j, -4
  br label %.preheader204

.preheader204:                                    ; preds = %.preheader204, %.preheader204.preheader.new
  %indvars.iv = phi i64 [ 1, %.preheader204.preheader.new ], [ %indvars.iv.next.3, %.preheader204 ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader204.preheader.new ], [ %niter.next.3, %.preheader204 ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !279  ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep, i8 0, i64 %i.i, i1 false), !tbaa !46
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !279  ; 2 uses
  %scevgep.1 = getelementptr nuw i8, ptr %i.q, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.1, i8 0, i64 %i.i, i1 false), !tbaa !46
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next
  store double 1.000000e+00, ptr %i.r, align 8, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !279  ; 2 uses
  %scevgep.2 = getelementptr nuw i8, ptr %i.t, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.2, i8 0, i64 %i.i, i1 false), !tbaa !46
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.1
  store double 1.000000e+00, ptr %i.u, align 8, !tbaa !46
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !279  ; 2 uses
  %scevgep.3 = getelementptr nuw i8, ptr %i.w, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.3, i8 0, i64 %i.i, i1 false), !tbaa !46
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.2
  store double 1.000000e+00, ptr %i.x, align 8, !tbaa !46
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.unr-lcssa, label %.preheader204, !llvm.loop !767

.lr.ph.preheader.unr-lcssa:                       ; preds = %.preheader204
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.preheader204.epil.preheader

.preheader204.epil.preheader:                     ; preds = %.lr.ph.preheader.unr-lcssa, %.preheader204.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.preheader204.preheader ], [ %indvars.iv.next.3, %.lr.ph.preheader.unr-lcssa ]
  %lcmp.mod332 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod332)
  br label %.preheader204.epil

.preheader204.epil:                               ; preds = %.preheader204.epil, %.preheader204.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader204.epil.preheader ], [ %indvars.iv.next.epil, %.preheader204.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader204.epil.preheader ], [ %epil.iter.next, %.preheader204.epil ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !279  ; 2 uses
  %scevgep.epil = getelementptr nuw i8, ptr %i.z, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.epil, i8 0, i64 %i.i, i1 false), !tbaa !46
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.epil
  store double 1.000000e+00, ptr %i.aa, align 8, !tbaa !46
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %.preheader204.epil, !llvm.loop !768

.lr.ph.preheader:                                 ; preds = %.preheader204.epil, %.lr.ph.preheader.unr-lcssa
  %xtraiter333 = and i64 %i.j, 1
  %i.ab = icmp eq i64 %i.k, 0
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter337 = and i64 %i.j, -2
  br label %.lr.ph

.preheader202.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod335.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod335.not, label %.preheader202, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader202.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv252.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next253.1, %.preheader202.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod336 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod336)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv252.epil.init
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !279
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv252.epil.init
  %i.af = load double, ptr %i.ae, align 8, !tbaa !46 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv252.epil.init
  store double %i.af, ptr %i.ag, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv252.epil.init
  store double %i.af, ptr %i.ah, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv252.epil.init
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !46
  br label %.preheader202

.preheader202:                                    ; preds = %.lr.ph.epil.preheader, %.preheader202.loopexit.unr-lcssa, %bb.a
  %.not185.not216 = icmp sgt i32 %1, 1
  %i.aj = mul nsw i32 %1, %1
  %i.ak = uitofp nneg i32 %i.aj to double
  %i.al = sext i32 %1 to i64
  %wide.trip.count267 = zext i32 %1 to i64        ; 3 uses
  %wide.trip.count262 = zext i32 %i.a to i64      ; 4 uses
  %wide.trip.count299 = zext nneg i32 %1 to i64   ; 2 uses
  %wide.trip.count294 = zext i32 %i.a to i64      ; 2 uses
  %wide.trip.count305 = zext i32 %i.a to i64
  %i.am = shl nuw nsw i64 %wide.trip.count267, 3
  %i.an = add nuw nsw i64 %i.am, 8                ; 2 uses
  %i.ao = add nsw i64 %wide.trip.count267, -2
  %i.ap = xor i64 %wide.trip.count262, 2
  %i.aq = add nsw i64 %wide.trip.count262, -3
  %i.ar = add nsw i64 %wide.trip.count262, -1     ; 3 uses
  %n.vec = and i64 %i.ar, -2                      ; 2 uses
  %i.as = or i64 %i.ar, 1
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br label %.preheader201

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv252 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next253.1, %.lr.ph ] ; 7 uses
  %niter338 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter338.next.1, %.lr.ph ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv252
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !279
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv252
  %i.aw = load double, ptr %i.av, align 8, !tbaa !46 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv252
  store double %i.aw, ptr %i.ax, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv252
  store double %i.aw, ptr %i.ay, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv252
  store double 0.000000e+00, ptr %i.az, align 8, !tbaa !46
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 5 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next253
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !279
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next253
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !46 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next253
  store double %i.bd, ptr %i.be, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next253
  store double %i.bd, ptr %i.bf, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next253
  store double 0.000000e+00, ptr %i.bg, align 8, !tbaa !46
  %indvars.iv.next253.1 = add nuw nsw i64 %indvars.iv252, 2 ; 2 uses
  %niter338.next.1 = add nuw i64 %niter338, 2     ; 2 uses
  %niter338.ncmp.1 = icmp eq i64 %niter338.next.1, %unroll_iter337
  br i1 %niter338.ncmp.1, label %.preheader202.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !769

.preheader201:                                    ; preds = %.preheader202, %._crit_edge247
  %.0171248 = phi i32 [ 1, %.preheader202 ], [ %i.ii, %._crit_edge247 ] ; 3 uses
  br i1 %.not185.not216, label %.lr.ph215, label %._crit_edge220.thread

.loopexit199:                                     ; preds = %.lr.ph215.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.ci, %.lr.ph215.new ] ; 3 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  %indvar.next340 = add i64 %indvar339, 1
  br i1 %exitcond268.not, label %._crit_edge220, label %.lr.ph215, !llvm.loop !770

.lr.ph215:                                        ; preds = %.preheader201, %.loopexit199
  %indvar339 = phi i64 [ %indvar.next340, %.loopexit199 ], [ 0, %.preheader201 ] ; 3 uses
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %.loopexit199 ], [ 1, %.preheader201 ] ; 2 uses
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %.loopexit199 ], [ 2, %.preheader201 ] ; 3 uses
  %.0218 = phi double [ %.lcssa, %.loopexit199 ], [ 0.000000e+00, %.preheader201 ] ; 2 uses
  %i.bh = sub i64 %i.ap, %indvar339
  %i.bi = sub i64 %i.aq, %indvar339
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv264
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 5 uses
  %xtraiter341 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod342.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod342.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph215, %.prol.preheader
  %indvars.iv259.prol = phi i64 [ %indvars.iv.next260.prol, %.prol.preheader ], [ %indvars.iv257, %.lr.ph215 ] ; 2 uses
  %.1213.prol = phi double [ %i.bo, %.prol.preheader ], [ %.0218, %.lr.ph215 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph215 ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv259.prol
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !46
  %i.bn = tail call double @llvm.fabs.f64(double %i.bm)
  %i.bo = fadd double %.1213.prol, %i.bn          ; 3 uses
  %indvars.iv.next260.prol = add nuw nsw i64 %indvars.iv259.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter341
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !771

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph215
  %.lcssa.unr = phi double [ poison, %.lr.ph215 ], [ %i.bo, %.prol.preheader ]
  %indvars.iv259.unr = phi i64 [ %indvars.iv257, %.lr.ph215 ], [ %indvars.iv.next260.prol, %.prol.preheader ]
  %.1213.unr = phi double [ %.0218, %.lr.ph215 ], [ %i.bo, %.prol.preheader ]
  %i.bp = icmp ult i64 %i.bi, 3
  br i1 %i.bp, label %.loopexit199, label %.lr.ph215.new

.lr.ph215.new:                                    ; preds = %.prol.loopexit, %.lr.ph215.new
  %indvars.iv259 = phi i64 [ %indvars.iv.next260.3, %.lr.ph215.new ], [ %indvars.iv259.unr, %.prol.loopexit ] ; 5 uses
  %.1213 = phi double [ %i.ci, %.lr.ph215.new ], [ %.1213.unr, %.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv259
  %i.br = load double, ptr %i.bq, align 8, !tbaa !46
  %i.bs = tail call double @llvm.fabs.f64(double %i.br)
  %i.bt = fadd double %.1213, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv259
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !46
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw)
  %i.by = fadd double %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv259
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !46
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb)
  %i.cd = fadd double %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv259
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !46
  %i.ch = tail call double @llvm.fabs.f64(double %i.cg)
  %i.ci = fadd double %i.cd, %i.ch                ; 2 uses
  %indvars.iv.next260.3 = add nuw nsw i64 %indvars.iv259, 4 ; 2 uses
  %exitcond263.not.3 = icmp eq i64 %indvars.iv.next260.3, %wide.trip.count262
  br i1 %exitcond263.not.3, label %.loopexit199, label %.lr.ph215.new, !llvm.loop !772

._crit_edge220:                                   ; preds = %.loopexit199
  %i.cj = fcmp oeq double %.lcssa, 0.000000e+00
  br i1 %i.cj, label %._crit_edge220.thread, label %.lr.ph243

.lr.ph243:                                        ; preds = %._crit_edge220
  %i.ck = icmp samesign ult i32 %.0171248, 4
  %i.cl = fmul double %.lcssa, 2.000000e-01
  %i.cm = fdiv double %i.cl, %i.ak
  %.0170 = select i1 %i.ck, double %i.cm, double 0.000000e+00
  %i.cn = icmp samesign ugt i32 %.0171248, 4
  br label %.lr.ph239

.loopexit198:                                     ; preds = %.loopexit
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond300.not, label %.preheader200, label %.lr.ph239, !llvm.loop !773

.preheader200:                                    ; preds = %.loopexit198
  br i1 %.not207, label %._crit_edge247, label %vector.body

vector.body:                                      ; preds = %.preheader200, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader200 ] ; 2 uses
  %i.co = or disjoint i64 %index, 1               ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.co ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cp, align 8, !tbaa !46
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.co ; 2 uses
  %wide.load310 = load <2 x double>, ptr %i.cq, align 8, !tbaa !46
  %i.cr = fadd <2 x double> %wide.load, %wide.load310 ; 2 uses
  store <2 x double> %i.cr, ptr %i.cq, align 8, !tbaa !46
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.co
  store <2 x double> %i.cr, ptr %i.cs, align 8, !tbaa !46
  store <2 x double> zeroinitializer, ptr %i.cp, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !774

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge247, label %.lr.ph246

.lr.ph239:                                        ; preds = %.loopexit198, %.lr.ph243
  %indvar = phi i64 [ %indvar.next, %.loopexit198 ], [ 0, %.lr.ph243 ] ; 3 uses
  %indvars.iv296 = phi i64 [ %indvars.iv.next297, %.loopexit198 ], [ 1, %.lr.ph243 ] ; 8 uses
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %.loopexit198 ], [ 2, %.lr.ph243 ] ; 3 uses
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv296
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !279 ; 6 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv296 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv296 ; 2 uses
  %.not189.not222 = icmp samesign ugt i64 %indvars.iv296, 1
  %scevgep314 = getelementptr i8, ptr %i.cv, i64 %i.an
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph239, %.loopexit
  %indvar311 = phi i64 [ 0, %.lr.ph239 ], [ %indvar.next312, %.loopexit ] ; 3 uses
  %indvars.iv281 = phi i64 [ %indvars.iv274, %.lr.ph239 ], [ %indvars.iv.next282, %.loopexit ] ; 15 uses
  %i.cy = add i64 %indvar, %indvar311
  %i.cz = sub i64 %i.ao, %i.cy                    ; 3 uses
  %i.da = add i64 %indvar, %indvar311
  %i.db = shl i64 %i.da, 3
  %i.dc = add i64 %i.db, 24                       ; 2 uses
  %scevgep313 = getelementptr i8, ptr %i.cv, i64 %i.dc
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv281 ; 3 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !46 ; 4 uses
  %i.df = tail call double @llvm.fabs.f64(double %i.de) ; 2 uses
  %i.dg = fmul double %i.df, 1.000000e+02
  %i.dh = fcmp oeq double %i.dg, 0.000000e+00     ; 2 uses
  %or.cond = select i1 %i.cn, i1 %i.dh, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.dd, align 8, !tbaa !46
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.di = fcmp ogt double %i.df, %.0170
  br i1 %i.di, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv281 ; 3 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !46
  %i.dl = load double, ptr %i.cw, align 8, !tbaa !46 ; 2 uses
  %i.dm = fsub double %i.dk, %i.dl                ; 2 uses
  br i1 %i.dh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dn = fdiv double %i.de, %i.dm
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.do = fmul double %i.dm, 5.000000e-01
  %i.dp = fdiv double %i.do, %i.de                ; 4 uses
  %i.dq = tail call double @llvm.fabs.f64(double %i.dp)
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.dp, double 1.000000e+00)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.dr)
  %i.ds = fadd double %i.dq, %sqrt
  %i.dt = fdiv double 1.000000e+00, %i.ds         ; 2 uses
  %i.du = fcmp olt double %i.dp, 0.000000e+00
  br i1 %i.du, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dv = fneg double %i.dt
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.0169 = phi double [ %i.dn, %bb.f ], [ %i.dv, %bb.h ], [ %i.dt, %bb.g ] ; 4 uses
  %i.dw = tail call double @llvm.fmuladd.f64(double %.0169, double %.0169, double 1.000000e+00)
  %sqrt195 = tail call double @llvm.sqrt.f64(double %i.dw)
  %i.dx = fdiv double 1.000000e+00, %sqrt195      ; 2 uses
  %i.dy = fmul double %.0169, %i.dx               ; 10 uses
  %i.dz = fadd double %i.dx, 1.000000e+00
  %i.ea = fdiv double %i.dy, %i.dz                ; 5 uses
  %i.eb = fmul double %i.de, %.0169               ; 4 uses
  %i.ec = load double, ptr %i.cx, align 8, !tbaa !46
  %i.ed = fsub double %i.ec, %i.eb
  store double %i.ed, ptr %i.cx, align 8, !tbaa !46
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv281 ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !46
  %i.eg = fadd double %i.eb, %i.ef
  store double %i.eg, ptr %i.ee, align 8, !tbaa !46
  %i.eh = fsub double %i.dl, %i.eb
  store double %i.eh, ptr %i.cw, align 8, !tbaa !46
  %i.ei = load double, ptr %i.dj, align 8, !tbaa !46
  %i.ej = fadd double %i.eb, %i.ei
  store double %i.ej, ptr %i.dj, align 8, !tbaa !46
  store double 0.000000e+00, ptr %i.dd, align 8, !tbaa !46
  br i1 %.not189.not222, label %.lr.ph225, label %.preheader197

.lr.ph225:                                        ; preds = %bb.i
  %i.ek = fneg double %i.dy
  %i.el = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.em = insertelement <2 x double> %i.el, double %i.ek, i64 1
  %i.en = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.j

.preheader197:                                    ; preds = %bb.j, %bb.i
  %.not190.not226 = icmp samesign ult i64 %indvars.iv.next297, %indvars.iv281
  br i1 %.not190.not226, label %.lr.ph228, label %.preheader196

.lr.ph228:                                        ; preds = %.preheader197
  %i.ep = fneg double %i.dy
  %i.eq = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.ep, i64 1
  %i.es = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph225, %bb.j
  %indvars.iv269 = phi i64 [ 1, %.lr.ph225 ], [ %indvars.iv.next270, %bb.j ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv269
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !279 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv296 ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !46 ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv281 ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !46 ; 3 uses
  %i.fa = fneg double %i.ez
  %i.fb = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.ex, i64 1
  %i.fd = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.ez, i64 1
  %i.ff = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fc, <2 x double> %i.eo, <2 x double> %i.fe)
  %i.fg = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.ex, i64 1
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.ff, <2 x double> %i.fh) ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 1
  store double %i.fj, ptr %i.ew, align 8, !tbaa !46
  %i.fk = extractelement <2 x double> %i.fi, i64 0
  store double %i.fk, ptr %i.ey, align 8, !tbaa !46
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %indvars.iv296
  br i1 %exitcond273.not, label %.preheader197, label %bb.j, !llvm.loop !775

.preheader196:                                    ; preds = %bb.k, %.preheader197
  %.not191.not229 = icmp slt i64 %indvars.iv281, %i.al
  br i1 %.not191.not229, label %.lr.ph231, label %.preheader196..lr.ph234_crit_edge

.preheader196..lr.ph234_crit_edge:                ; preds = %.preheader196
  %.pre = fneg double %i.dy
  br label %.lr.ph234

.lr.ph231:                                        ; preds = %.preheader196
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv281
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !279 ; 4 uses
  %i.fn = fneg double %i.dy                       ; 4 uses
  %min.iters.check = icmp ult i64 %i.cz, 2
  br i1 %min.iters.check, label %scalar.ph317.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph231
  %scevgep315 = getelementptr nuw i8, ptr %i.fm, i64 %i.dc
  %scevgep316 = getelementptr i8, ptr %i.fm, i64 %i.an
  %bound0 = icmp ult ptr %scevgep313, %scevgep316
  %bound1 = icmp ult ptr %scevgep315, %scevgep314
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph317.preheader, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck
  %n.vec319 = and i64 %i.cz, -2                   ; 3 uses
  %i.fo = add i64 %indvars.iv281, %n.vec319
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fn, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert320 = insertelement <2 x double> poison, double %i.ea, i64 0
  %broadcast.splat321 = shufflevector <2 x double> %broadcast.splatinsert320, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert322 = insertelement <2 x double> poison, double %i.dy, i64 0
  %broadcast.splat323 = shufflevector <2 x double> %broadcast.splatinsert322, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op = add nuw i64 %indvars.iv281, 1
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph318
  %index325 = phi i64 [ 0, %vector.ph318 ], [ %index.next328, %vector.body324 ] ; 2 uses
  %.reass = add nuw i64 %index325, %invariant.op  ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.reass ; 2 uses
  %wide.load326 = load <2 x double>, ptr %i.fp, align 8, !tbaa !46, !alias.scope !786, !noalias !787 ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.reass ; 2 uses
  %wide.load327 = load <2 x double>, ptr %i.fq, align 8, !tbaa !46, !alias.scope !787 ; 3 uses
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load326, <2 x double> %broadcast.splat321, <2 x double> %wide.load327)
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.fr, <2 x double> %wide.load326)
  store <2 x double> %i.fs, ptr %i.fp, align 8, !tbaa !46, !alias.scope !786, !noalias !787
  %i.ft = fneg <2 x double> %wide.load327
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> %broadcast.splat321, <2 x double> %wide.load326)
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat323, <2 x double> %i.fu, <2 x double> %wide.load327)
  store <2 x double> %i.fv, ptr %i.fq, align 8, !tbaa !46, !alias.scope !787
  %index.next328 = add nuw i64 %index325, 2       ; 2 uses
  %i.fw = icmp eq i64 %index.next328, %n.vec319
  br i1 %i.fw, label %middle.block329, label %vector.body324, !llvm.loop !779

middle.block329:                                  ; preds = %vector.body324
  %cmp.n330 = icmp eq i64 %i.cz, %n.vec319
  br i1 %cmp.n330, label %.lr.ph234, label %scalar.ph317.preheader

scalar.ph317.preheader:                           ; preds = %vector.memcheck, %.lr.ph231, %middle.block329
  %indvars.iv283.ph = phi i64 [ %indvars.iv281, %vector.memcheck ], [ %indvars.iv281, %.lr.ph231 ], [ %i.fo, %middle.block329 ]
  %i.fx = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fz = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.ga = insertelement <2 x double> %i.fz, double %i.fn, i64 1
  br label %scalar.ph317

bb.k:                                             ; preds = %.lr.ph228, %bb.k
  %indvars.iv276 = phi i64 [ %indvars.iv274, %.lr.ph228 ], [ %indvars.iv.next277, %bb.k ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv276 ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !46 ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv276
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !279
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv281 ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !46 ; 3 uses
  %i.gh = fneg double %i.gg
  %i.gi = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.gc, i64 1
  %i.gk = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.gg, i64 1
  %i.gm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.et, <2 x double> %i.gl)
  %i.gn = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.go = insertelement <2 x double> %i.gn, double %i.gc, i64 1
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %i.gm, <2 x double> %i.go) ; 2 uses
  %i.gq = extractelement <2 x double> %i.gp, i64 1
  store double %i.gq, ptr %i.gb, align 8, !tbaa !46
  %i.gr = extractelement <2 x double> %i.gp, i64 0
  store double %i.gr, ptr %i.gf, align 8, !tbaa !46
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %indvars.iv281
  br i1 %exitcond280.not, label %.preheader196, label %bb.k, !llvm.loop !780

.lr.ph234:                                        ; preds = %scalar.ph317, %middle.block329, %.preheader196..lr.ph234_crit_edge
  %.pre-phi = phi double [ %.pre, %.preheader196..lr.ph234_crit_edge ], [ %i.fn, %middle.block329 ], [ %i.fn, %scalar.ph317 ]
  %i.gs = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.gt = insertelement <2 x double> %i.gs, double %.pre-phi, i64 1
  %i.gu = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.l

scalar.ph317:                                     ; preds = %scalar.ph317.preheader, %scalar.ph317
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %scalar.ph317 ], [ %indvars.iv283.ph, %scalar.ph317.preheader ]
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 4 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next284 ; 2 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !46 ; 3 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next284 ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !46 ; 3 uses
  %i.ha = fneg double %i.gz
  %i.hb = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hc = insertelement <2 x double> %i.hb, double %i.gx, i64 1
  %i.hd = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.he = insertelement <2 x double> %i.hd, double %i.gz, i64 1
  %i.hf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.fy, <2 x double> %i.he)
  %i.hg = insertelement <2 x double> poison, double %i.gz, i64 0
  %i.hh = insertelement <2 x double> %i.hg, double %i.gx, i64 1
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %i.hf, <2 x double> %i.hh) ; 2 uses
  %i.hj = extractelement <2 x double> %i.hi, i64 1
  store double %i.hj, ptr %i.gw, align 8, !tbaa !46
  %i.hk = extractelement <2 x double> %i.hi, i64 0
  store double %i.hk, ptr %i.gy, align 8, !tbaa !46
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count299
  br i1 %exitcond287.not, label %.lr.ph234, label %scalar.ph317, !llvm.loop !781

bb.l:                                             ; preds = %.lr.ph234, %bb.l
  %indvars.iv288 = phi i64 [ 1, %.lr.ph234 ], [ %indvars.iv.next289, %bb.l ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv288
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !279 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv296 ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !46 ; 3 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv281 ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !46 ; 3 uses
  %i.hr = fneg double %i.hq
  %i.hs = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.ht = insertelement <2 x double> %i.hs, double %i.ho, i64 1
  %i.hu = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hv = insertelement <2 x double> %i.hu, double %i.hq, i64 1
  %i.hw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.gv, <2 x double> %i.hv)
  %i.hx = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.ho, i64 1
  %i.hz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.hw, <2 x double> %i.hy) ; 2 uses
  %i.ia = extractelement <2 x double> %i.hz, i64 1
  store double %i.ia, ptr %i.hn, align 8, !tbaa !46
  %i.ib = extractelement <2 x double> %i.hz, i64 0
  store double %i.ib, ptr %i.hp, align 8, !tbaa !46
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count294
  br i1 %exitcond292.not, label %.loopexit, label %bb.l, !llvm.loop !782

.loopexit:                                        ; preds = %bb.l, %bb.c, %bb.d
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next282, %wide.trip.count294
  %indvar.next312 = add i64 %indvar311, 1
  br i1 %exitcond295.not, label %.loopexit198, label %bb.b, !llvm.loop !783

.lr.ph246:                                        ; preds = %middle.block, %.lr.ph246
  %indvars.iv302 = phi i64 [ %indvars.iv.next303, %.lr.ph246 ], [ %i.as, %middle.block ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv302 ; 2 uses
  %i.id = load double, ptr %i.ic, align 8, !tbaa !46
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv302 ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !46
  %i.ig = fadd double %i.id, %i.if                ; 2 uses
  store double %i.ig, ptr %i.ie, align 8, !tbaa !46
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv302
  store double %i.ig, ptr %i.ih, align 8, !tbaa !46
  store double 0.000000e+00, ptr %i.ic, align 8, !tbaa !46
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %._crit_edge247, label %.lr.ph246, !llvm.loop !784

._crit_edge247:                                   ; preds = %.lr.ph246, %middle.block, %.preheader200
  %i.ii = add nuw nsw i32 %.0171248, 1            ; 2 uses
  %exitcond307.not = icmp eq i32 %i.ii, 51
  br i1 %exitcond307.not, label %._crit_edge220.thread, label %.preheader201, !llvm.loop !785

._crit_edge220.thread:                            ; preds = %._crit_edge247, %._crit_edge220, %.preheader201
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #43
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl6ROTATEEPPdiiiidd(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !279
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !46 ; 3 uses
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !279
  %i.j = sext i32 %4 to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !46 ; 3 uses
  %i.m = fneg double %6
  %i.n = fneg double %i.l
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.f, i64 1
  %i.q = insertelement <2 x double> poison, double %5, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = insertelement <2 x double> poison, double %i.f, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.l, i64 1
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.r, <2 x double> %i.t)
  %i.v = insertelement <2 x double> poison, double %6, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.m, i64 1
  %i.x = insertelement <2 x double> poison, double %i.l, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.f, i64 1
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.u, <2 x double> %i.y) ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 1
  store double %i.aa, ptr %i.e, align 8, !tbaa !46
  %i.ab = extractelement <2 x double> %i.z, i64 0
  store double %i.ab, ptr %i.k, align 8, !tbaa !46
  ret void
}

declare void @_ZN2cv5splitERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl14InitColorEDLibEv() local_unnamed_addr #33 align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN2cv8ximgproc15EdgeDrawingImpl15LUT_InitializedE, align 1, !tbaa !98, !range !81, !noundef !82
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.o, label %.preheader21

.preheader21:                                     ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.g ], [ 0, %bb.a ] ; 5 uses
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = uitofp nneg i32 %i.c to double
  %i.e = fmul nnan double %i.d, f0x3E90000000000000 ; 3 uses
  %i.f = fcmp ult double %i.e, 4.045000e-02
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader21
  %i.g = fadd double %i.e, 5.500000e-02
  %i.h = fdiv double %i.g, 1.055000e+00
  %i.i = tail call double @pow(double noundef %i.h, double noundef 2.400000e+00) #42
  br label %bb.d

bb.c:                                             ; preds = %.preheader21
  %i.j = fdiv double %i.e, 1.292000e+01
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi double [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZN2cv8ximgproc15EdgeDrawingImpl4LUT1E, i64 %indvars.iv
  store double %.sink, ptr %i.k, align 16, !tbaa !46
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 4194304
  br i1 %exitcond.not, label %.preheader, label %.preheader21.1

.preheader21.1:                                   ; preds = %bb.d
  %i.l = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.m = uitofp nneg i32 %i.l to double
  %i.n = fmul nnan double %i.m, f0x3E90000000000000 ; 3 uses
  %i.o = fcmp ult double %i.n, 4.045000e-02
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader21.1
  %i.p = fadd double %i.n, 5.500000e-02
  %i.q = fdiv double %i.p, 1.055000e+00
  %i.r = tail call double @pow(double noundef %i.q, double noundef 2.400000e+00) #42
  br label %bb.g

bb.f:                                             ; preds = %.preheader21.1
  %i.s = fdiv double %i.n, 1.292000e+01
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.1 = phi double [ %i.s, %bb.f ], [ %i.r, %bb.e ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZN2cv8ximgproc15EdgeDrawingImpl4LUT1E, i64 %indvars.iv.next
  store double %.sink.1, ptr %i.t, align 8, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %.preheader21

bb.h:                                             ; preds = %bb.k
  store i8 1, ptr @_ZN2cv8ximgproc15EdgeDrawingImpl15LUT_InitializedE, align 1, !tbaa !98
  br label %bb.o

.preheader:                                       ; preds = %bb.d, %bb.n
  %indvars.iv25 = phi i64 [ %indvars.iv.next26.1, %bb.n ], [ 0, %bb.d ] ; 5 uses
  %i.u = trunc nuw nsw i64 %indvars.iv25 to i32
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = fmul nnan double %i.v, f0x3E90000000000000 ; 3 uses
  %i.x = fcmp ogt double %i.w, 8.856000e-03
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.y = tail call double @pow(double noundef %i.w, double noundef f0x3FD5555555555555) #42
  br label %bb.k

bb.j:                                             ; preds = %.preheader
  %i.z = tail call double @llvm.fmuladd.f64(double %i.w, double f0x401F25E353F7CED9, double f0x3FC1A7B9611A7B96)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink29 = phi double [ %i.y, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZN2cv8ximgproc15EdgeDrawingImpl4LUT2E, i64 %indvars.iv25
  store double %.sink29, ptr %i.aa, align 16, !tbaa !46
  %indvars.iv.next26 = or disjoint i64 %indvars.iv25, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv25, 4194304
  br i1 %exitcond28.not, label %bb.h, label %.preheader.1

.preheader.1:                                     ; preds = %bb.k
  %i.ab = trunc nuw nsw i64 %indvars.iv.next26 to i32
  %i.ac = uitofp nneg i32 %i.ab to double
  %i.ad = fmul nnan double %i.ac, f0x3E90000000000000 ; 3 uses
  %i.ae = fcmp ogt double %i.ad, 8.856000e-03
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.1
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ad, double f0x401F25E353F7CED9, double f0x3FC1A7B9611A7B96)
  br label %bb.n

bb.m:                                             ; preds = %.preheader.1
  %i.ag = tail call double @pow(double noundef %i.ad, double noundef f0x3FD5555555555555) #42
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink29.1 = phi double [ %i.ag, %bb.m ], [ %i.af, %bb.l ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @_ZN2cv8ximgproc15EdgeDrawingImpl4LUT2E, i64 %indvars.iv.next26
  store double %.sink29.1, ptr %i.ah, align 8, !tbaa !46
  %indvars.iv.next26.1 = add nuw nsw i64 %indvars.iv25, 2
  br label %.preheader

bb.o:                                             ; preds = %bb.a, %bb.h
  ret void
}

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !201    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !203  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #42
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !10

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !201
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !202
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #43
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc19ComputeGradientBodyD0Ev(ptr noundef nonnull align 8 dereferenceable(641) %0) unnamed_addr #21 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc19ComputeGradientBodyE, i64 16), ptr %0, align 8, !tbaa !86
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #42, !inline_history !191
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #42, !inline_history !191
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #42, !inline_history !191
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(641) %0) #42, !inline_history !191
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 648) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv9Algorithm5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #34 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #42 ; 0 uses
  tail call void @_ZSt9terminatev() #45
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #35

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc11EdgeDrawingD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #45
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv9Algorithm5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm4readERKNS_8FileNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #36

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #8

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #37

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(2232) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2232) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(2232) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(2216) dereferenceable(2216) %i.a) #42, !inline_history !788
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(2232) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2232) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8ximgproc15EdgeDrawingImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(2232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !790  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !59
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #42
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #37

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #8

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #8

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), float noundef) local_unnamed_addr #8

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN2cv6Point_IiEESaIS5_EEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !149 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #43
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN2cv6Point_IiEESaIS5_EEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !5

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN2cv6Point_IiEESaIS5_EEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !153    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #44
  unreachable

_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #41 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !197
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !197
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !150
  store ptr %i.u, ptr %i.s, align 8, !tbaa !150
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !197, !alias.scope !798, !noalias !797
  store <2 x ptr> %i.v, ptr %.012.i.i.i, align 8, !tbaa !197, !alias.scope !797, !noalias !798
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !150, !alias.scope !798, !noalias !797
  store ptr %i.y, ptr %i.w, align 8, !tbaa !150, !alias.scope !797, !noalias !798
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !798, !noalias !797
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !27

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !197, !alias.scope !800, !noalias !799
  store <2 x ptr> %i.ac, ptr %.012.i.i.i18, align 8, !tbaa !197, !alias.scope !799, !noalias !800
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !150, !alias.scope !800, !noalias !799
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !150, !alias.scope !799, !noalias !800
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !800, !noalias !799
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !27

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !155
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #43
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !153
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !154
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !155
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEEPS7_ET0_T_SF_SE_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq ptr %0, %1
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.018 = phi ptr [ %i.s, %.loopexit ], [ %2, %bb.a ] ; 6 uses
  %.sroa.09.017 = phi ptr [ %i.r, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.017, align 8, !tbaa !149 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !188

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #44
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #41
          to label %.noexc8 unwind label %.loopexit12

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !149
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !162
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !150
  %i.m = load ptr, ptr %.sroa.09.017, align 8, !tbaa !197 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc8 ] ; 2 uses
  %i.o = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 4
  store i64 %i.o, ptr %.09.i.i.i.i.i.i, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc8 ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !162
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.r, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !801

.loopexit12:                                      ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit12
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit12 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.t = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #42 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.018)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #44
          to label %bb.h unwind label %bb.e

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.s, %.loopexit ]
  ret ptr %.0.lcssa

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.v

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #45
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IhEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !173
  %i.c = and i32 %i.b, -4096
  store i32 %i.c, ptr %0, align 8, !tbaa !173
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !173    ; 2 uses
  %i.e = and i32 %i.d, 4095
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.h = and i32 %i.d, 31
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !205
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.k, ptr noundef null)
  %i.l = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  resume { ptr, i32 } %i.m

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.o, align 8
  store i32 -2113863680, ptr %3, align 8, !tbaa !176
  store ptr %0, ptr %i.n, align 8, !tbaa !166
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 0, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #8

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_ItEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !173
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 2
  store i32 %i.d, ptr %0, align 8, !tbaa !173
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !173    ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !205
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863678, ptr %3, align 8, !tbaa !176
  store ptr %0, ptr %i.o, align 8, !tbaa !166
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 2, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

declare void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !219    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #44
  unreachable

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #41 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load <4 x float>, ptr %2, align 4, !tbaa !99
  store <4 x float> %i.r, ptr %i.q, align 4, !tbaa !99
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.s = load float, ptr %.01214.i.i.i.i.i, align 4, !tbaa !99
  store float %i.s, ptr %.015.i.i.i.i.i, align 4, !tbaa !99
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !99
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4
  store float %i.u, ptr %i.v, align 4, !tbaa !99
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  store float %i.x, ptr %i.y, align 4, !tbaa !99
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !99
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 12
  store float %i.aa, ptr %i.ab, align 4, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !802

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i29
  %.015.i.i.i.i.i30 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i29 ], [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %i.af = load <4 x float>, ptr %.01214.i.i.i.i.i31, align 4, !tbaa !99
  store <4 x float> %i.af, ptr %.015.i.i.i.i.i30, align 4, !tbaa !99
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 16 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !802

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ah, %.lr.ph.i.i.i.i.i29 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !220
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #43
  br label %_ZNSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !219
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8, !tbaa !218
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !153    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #44
  unreachable

_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #41 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !162  ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !149    ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775800
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i, !prof !188

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #44
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #41
          to label %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge unwind label %bb.f

_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !197
  %.pre45 = load ptr, ptr %i.r, align 8, !tbaa !197
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.s, %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ], [ %.pre45, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ] ; 2 uses
  %i.aa = phi ptr [ %i.t, %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ], [ %.pre, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ] ; 2 uses
  %i.ab = phi ptr [ null, %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.y, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ] ; 5 uses
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !149
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !162
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !150
  %.not7.i.i.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc26, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.ab, %.noexc26 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.aa, %.noexc26 ] ; 2 uses
  %i.af = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.af, ptr %.09.i.i.i.i.i, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.z
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc26
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %.noexc26 ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !162
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.p, %.loopexit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %i.ai = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !197, !alias.scope !810, !noalias !809
  store <2 x ptr> %i.ai, ptr %.012.i.i.i, align 8, !tbaa !197, !alias.scope !809, !noalias !810
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !150, !alias.scope !810, !noalias !809
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !150, !alias.scope !809, !noalias !810
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !810, !noalias !809
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !27

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.an, %.lr.ph.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.au, %.lr.ph.i.i.i28 ], [ %i.ao, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.at, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.ap = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !197, !alias.scope !812, !noalias !811
  store <2 x ptr> %i.ap, ptr %.012.i.i.i29, align 8, !tbaa !197, !alias.scope !811, !noalias !812
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !150, !alias.scope !812, !noalias !811
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !150, !alias.scope !811, !noalias !812
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !812, !noalias !811
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.at, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !27

_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ao, %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.au, %.lr.ph.i.i.i28 ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !155
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ay) #43
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !153
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !154
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.az, ptr %i.av, align 8, !tbaa !155
  ret void

bb.e:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  %i.bd = tail call ptr @__cxa_begin_catch(ptr %i.bc) #42 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #43
  invoke void @__cxa_rethrow() #44
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ba

bb.h:                                             ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #45
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 384307168202282325
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorISt6vectorIN2cv6Point_IiEESaIS3_EEE8allocateEmPKv.exit.i, !prof !188

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 768614336404564650
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #44
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #44
  unreachable

_ZNSt15__new_allocatorISt6vectorIN2cv6Point_IiEESaIS3_EEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = mul nuw nsw i64 %1, 24
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #41
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorISt6vectorIN2cv6Point_IiEESaIS3_EEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorISt6vectorIN2cv6Point_IiEESaIS3_EEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEEPS7_ET0_T_SF_SE_(ptr %2, ptr %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEEPS7_S7_ET0_T_SF_SE_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIN2cv6Point_IiEESaIS5_EES2_IS7_SaIS7_EEEEPS7_S7_ET0_T_SF_SE_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #42 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = mul nuw nsw i64 %1, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #43
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #44
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #45
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6Point_IiEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !149    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !150
  %i.i = load ptr, ptr %0, align 8, !tbaa !149    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.i, !prof !188

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #44
  unreachable

_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #41 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !149    ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !150
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #43
  br label %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !149
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !150
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !162
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 8
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !198

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 8
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.c, align 4
  store i64 %i.af, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.ac, 8
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !198

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq i64 %i.ac, 8
  br i1 %i.ah, label %bb.n, label %_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  %i.ai = load i64, ptr %i.c, align 4
  store i64 %i.ai, ptr %i.i, align 4
  br label %_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit:   ; preds = %bb.l, %bb.m, %bb.n
  %i.aj = load ptr, ptr %1, align 8, !tbaa !149
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !162 ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !149
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !162 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ak, %_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %i.ap, %_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %i.ar = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.ar, ptr %.011.i.i.i.i, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.aq
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !813

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN2cv6Point_IiEES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.au = load ptr, ptr %0, align 8, !tbaa !149
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !162
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN2cv6Point_IiEESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPSt6vectorIN2cv6Point_IiEESaIS3_EES6_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not18 = icmp eq ptr %0, %1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.020 = phi ptr [ %i.s, %.loopexit ], [ %2, %bb.a ] ; 6 uses
  %.01219 = phi ptr [ %i.r, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01219, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.c = load ptr, ptr %.01219, align 8, !tbaa !149 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.020, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !188

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #44
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #41
          to label %.noexc13 unwind label %.loopexit14

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.020, align 8, !tbaa !149
  %i.j = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !162
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.020, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !150
  %i.m = load ptr, ptr %.01219, align 8, !tbaa !197 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc13, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc13 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc13 ] ; 2 uses
  %i.o = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 4
  store i64 %i.o, ptr %.09.i.i.i.i.i.i, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc13
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc13 ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !162
  %i.r = getelementptr inbounds nuw i8, ptr %.01219, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.020, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.r, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !814

.loopexit14:                                      ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit14
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit14 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.t = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #42 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.020)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #44
          to label %bb.h unwind label %bb.e

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.s, %.loopexit ]
  ret ptr %.0.lcssa

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.v

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #45
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #38

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3VecIdLi6EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !276  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !277    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3VecIdLi6EEESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #44
  unreachable

_ZNKSt6vectorIN2cv3VecIdLi6EEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #41 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load <2 x double>, ptr %2, align 8, !tbaa !46
  store <2 x double> %i.r, ptr %i.q, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load <2 x double>, ptr %i.s, align 8, !tbaa !46
  store <2 x double> %i.u, ptr %i.t, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.x = load <2 x double>, ptr %i.v, align 8, !tbaa !46
  store <2 x double> %i.x, ptr %i.w, align 8, !tbaa !46
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi6EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2cv3VecIdLi6EEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2cv3VecIdLi6EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv3VecIdLi6EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.y = load double, ptr %.01214.i.i.i.i.i, align 8, !tbaa !46
  store double %i.y, ptr %.015.i.i.i.i.i, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  store double %i.aa, ptr %i.ab, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16
  store double %i.ad, ptr %i.ae, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 24
  store double %i.ag, ptr %i.ah, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 32
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 32
  store double %i.aj, ptr %i.ak, align 8, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 40
  %i.am = load double, ptr %i.al, align 8, !tbaa !46
  %i.an = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 40
  store double %i.am, ptr %i.an, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 48 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi6EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !815

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi6EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2cv3VecIdLi6EEESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2cv3VecIdLi6EEESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48 ; 2 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi6EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi6EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i29
  %.015.i.i.i.i.i30 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i29 ], [ %i.aq, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi6EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 4 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi6EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 4 uses
  %i.ar = load <2 x double>, ptr %.01214.i.i.i.i.i31, align 8, !tbaa !46
  store <2 x double> %i.ar, ptr %.015.i.i.i.i.i30, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 16
  %i.au = load <2 x double>, ptr %i.as, align 8, !tbaa !46
  store <2 x double> %i.au, ptr %i.at, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 32
  %i.ax = load <2 x double>, ptr %i.av, align 8, !tbaa !46
  store <2 x double> %i.ax, ptr %i.aw, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 48 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi6EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !815

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi6EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi6EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.aq, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi6EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.az, %.lr.ph.i.i.i.i.i29 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN2cv3VecIdLi6EEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi6EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !278
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #43
  br label %_ZNSt12_Vector_baseIN2cv3VecIdLi6EEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2cv3VecIdLi6EEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIdLi6EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !277
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8, !tbaa !276
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !278
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !305  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !309
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = ptrtoint ptr %i.b to i64                 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64                     ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.g, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %2 to i64                       ; 2 uses
  %i.m = sub nsw i64 %i.h, %i.l
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.b
  %i.p = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 63
  %i.s = lshr i64 %i.p, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.n, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.t, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.022.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.r, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.021.i.i.i.i.i = phi ptr [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.b, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.515.020.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.f, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %i.u = add i32 %.sroa.515.020.i.i.i.i.i, -1
  %i.v = icmp eq i32 %.sroa.515.020.i.i.i.i.i, 0  ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.v, i32 63, i32 %i.u ; 2 uses
  %spec.select19.idx.i.i.i.i.i = select i1 %i.v, i64 -8, i64 0
  %spec.select19.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.021.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i ; 2 uses
  %i.w = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = add i32 %.sroa.59.022.i.i.i.i.i, -1
  %i.z = icmp eq i32 %.sroa.59.022.i.i.i.i.i, 0   ; 2 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.z, i32 63, i32 %i.y ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.z, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.023.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %i.aa = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !62
  %i.ad = and i64 %i.x, %i.ac
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ae = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !62
  %i.af = or i64 %i.ae, %i.ab
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ag = xor i64 %i.ab, -1
  %i.ah = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !62
  %i.ai = and i64 %i.ah, %i.ag
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ %i.ai, %bb.d ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !62
  %i.aj = add nsw i64 %.024.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.ak, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !816

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.b
  %i.al = shl nuw i64 1, %i.l                     ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.am = load i64, ptr %1, align 8, !tbaa !62
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %1, align 8, !tbaa !62
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !62
  %i.ar = add i32 %i.f, 1
  store i32 %i.ar, ptr %i.e, align 8, !tbaa !306
  %i.as = icmp eq i32 %i.f, 63
  br i1 %i.as, label %bb.g, label %_ZNSt13_Bit_iteratorppEv.exit

bb.g:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %i.e, align 8, !tbaa !306
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.at, ptr %i.a, align 8, !tbaa !305
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.h:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %0, align 8, !tbaa !305
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.g, %i.av
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = zext i32 %i.f to i64
  %i.az = add nsw i64 %i.ax, %i.ay                ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775744
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #44
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.bb = add i64 %.sroa.speculated.i, %i.az      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775744)
  %i.be = add nuw nsw i64 %i.bd, 63
  %i.bf = select i1 %i.bc, i64 9223372036854775807, i64 %i.be ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1152921504606846968
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #41 ; 5 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !305   ; 4 uses
  %i.bk = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.j, label %bb.k, !prof !198

bb.j:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.bj, i64 %i.bm, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.l, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !62
  store i64 %i.bp, ptr %i.bi, align 8, !tbaa !62
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.l, %bb.k, %bb.j
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 %i.bm ; 3 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZNSt13_Bit_iteratorppEi.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.br = zext i32 %2 to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ch, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.br, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.bq, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.bs = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !62
  %i.bv = and i64 %i.bu, %i.bt
  %.not.i.i.i.i.i.i47 = icmp eq i64 %i.bv, 0
  %i.bw = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.bx = shl nuw i64 1, %i.bw                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.by = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !62
  %i.bz = or i64 %i.by, %i.bx
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ca = xor i64 %i.bx, -1
  %i.cb = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !62
  %i.cc = and i64 %i.cb, %i.ca
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.n, %bb.m
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.cc, %bb.n ], [ %i.bz, %bb.m ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !62
  %i.cd = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.ce = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.ce, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.ce, i32 0, i32 %i.cd
  %i.cf = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.cg = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.cg, i32 0, i32 %i.cf ; 4 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.cg, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 5 uses
  %i.ch = add nsw i64 %.020.i.i.i.i.i.i, -1
  %i.ci = icmp sgt i64 %.020.i.i.i.i.i.i, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !817

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %i.cj = add i32 %.sroa.55.1.i.i.i.i.i.i, 1
  %i.ck = icmp eq i32 %.sroa.55.1.i.i.i.i.i.i, 63
  br i1 %i.ck, label %bb.o, label %_ZNSt13_Bit_iteratorppEi.exit

bb.o:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i.i.i, i64 8
  br label %_ZNSt13_Bit_iteratorppEi.exit

_ZNSt13_Bit_iteratorppEi.exit:                    ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, %bb.o
  %.sroa.03.0.lcssa.i.i.i.i.i.i110 = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %bb.o ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ %i.bq, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.sroa.55.0.lcssa.i.i.i.i.i.i109 = phi i32 [ 63, %bb.o ], [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ]
  %.sroa.683.0 = phi i32 [ 0, %bb.o ], [ %i.cj, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ 1, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 2 uses
  %.sroa.082.0 = phi ptr [ %i.cl, %bb.o ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ %i.bq, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 2 uses
  %i.cm = zext nneg i32 %.sroa.55.0.lcssa.i.i.i.i.i.i109 to i64
  %i.cn = shl nuw i64 1, %i.cm                    ; 2 uses
  br i1 %3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.co = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !62
  %i.cp = or i64 %i.co, %i.cn
  br label %_ZNSt14_Bit_referenceaSEb.exit53

bb.q:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.cq = xor i64 %i.cn, -1
  %i.cr = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !62
  %i.cs = and i64 %i.cr, %i.cq
  br label %_ZNSt14_Bit_referenceaSEb.exit53

_ZNSt14_Bit_referenceaSEb.exit53:                 ; preds = %bb.p, %bb.q
  %storemerge111 = phi i64 [ %i.cs, %bb.q ], [ %i.cp, %bb.p ]
  store i64 %storemerge111, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !62
  %.sroa.0.0.copyload.i54 = load ptr, ptr %i.a, align 8
  %.sroa.2.0.copyload.i55 = load i32, ptr %i.e, align 8
  %i.ct = ptrtoint ptr %.sroa.0.0.copyload.i54 to i64
  %i.cu = sub i64 %i.ct, %i.bk
  %i.cv = shl nsw i64 %i.cu, 3
  %i.cw = zext i32 %.sroa.2.0.copyload.i55 to i64
  %i.cx = zext i32 %2 to i64
  %i.cy = sub nsw i64 %i.cw, %i.cx
  %i.cz = add i64 %i.cy, %i.cv                    ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt14_Bit_referenceaSEb.exit53, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66
  %.024.i.i.i.i.i62 = phi i64 [ %i.dq, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %i.cz, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i63 = phi ptr [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 4 uses
  %.sroa.59.022.i.i.i.i.i64 = phi i32 [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.516.021.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i69, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %2, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i68, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %1, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %i.db = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = zext nneg i32 %.sroa.59.022.i.i.i.i.i64 to i64
  %i.de = shl nuw i64 1, %i.dd                    ; 2 uses
  %i.df = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !62
  %i.dg = and i64 %i.df, %i.dc
  %.not.i.i.i.i.i.i65 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dh = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !62
  %i.di = or i64 %i.dh, %i.de
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dj = xor i64 %i.de, -1
  %i.dk = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !62
  %i.dl = and i64 %i.dk, %i.dj
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.di, %bb.r ], [ %i.dl, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !62
  %i.dm = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.dn = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.dn, i64 8, i64 0
  %spec.select.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i
  %spec.select19.i.i.i.i.i69 = select i1 %i.dn, i32 0, i32 %i.dm
  %i.do = add i32 %.sroa.59.022.i.i.i.i.i64, 1
  %i.dp = icmp eq i32 %.sroa.59.022.i.i.i.i.i64, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i70 = select i1 %i.dp, i32 0, i32 %i.do ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i71 = select i1 %i.dp, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i63, i64 %.sroa.07.1.idx.i.i.i.i.i71 ; 2 uses
  %i.dq = add nsw i64 %.024.i.i.i.i.i62, -1
  %i.dr = icmp sgt i64 %.024.i.i.i.i.i62, 1
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !818

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.59.0.lcssa.i.i.i.i.i58 = phi i32 [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.07.0.lcssa.i.i.i.i.i59 = phi ptr [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i73 = icmp eq ptr %i.bj, null
  br i1 %.not.i73, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !309 ; 2 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.bl                    ; 2 uses
  %i.dv = ashr exact i64 %i.du, 3
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dw
  tail call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.du) #43
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.dy = lshr i64 %i.bf, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dy
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !309
  store ptr %i.bi, ptr %0, align 8
  %.sroa.587.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.587.0..sroa_idx88, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i59, ptr %i.a, align 8
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i58, ptr %i.e, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #34 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #35 = { cold nofree noreturn }
attributes #36 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #37 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #41 = { builtin allocsize(0) }
attributes #42 = { nounwind }
attributes #43 = { builtin nounwind }
attributes #44 = { noreturn }
attributes #45 = { noreturn nounwind }

!llvm.module.flags = !{!28, !29}
!llvm.ident = !{!30}
!llvm.errno.tbaa = !{!35}

!0 = distinct !{!0, !45}
!1 = distinct !{!1, !45}
!2 = distinct !{!2, !45}
!3 = distinct !{!3, !45}
!4 = distinct !{!4, !45}
!5 = distinct !{!5, !45}
!6 = distinct !{!6, !45}
!7 = distinct !{!7, !45}
!8 = distinct !{!8, !45}
!9 = distinct !{!9, !45}
!10 = distinct !{!10, !45}
!11 = distinct !{!11, !45}
!12 = distinct !{!12, !45}
!13 = distinct !{!13, !45}
!14 = distinct !{!14, !45}
!15 = distinct !{!15, !45}
!16 = distinct !{!16, !45}
!17 = distinct !{!17, !45}
!18 = distinct !{!18, !45}
!19 = distinct !{!19, !45}
!20 = distinct !{!20, !45}
!21 = distinct !{!21, !45}
!22 = distinct !{!22, !45}
!23 = distinct !{!23, !45}
!24 = distinct !{!24, !45}
!25 = distinct !{!25, !45}
!26 = distinct !{!26, !45}
!27 = distinct !{!27, !45}
!28 = !{i32 8, !"PIC Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 2}
!30 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!31 = !{!"Simple C++ TBAA"}
!32 = !{!"omnipotent char", !31, i64 0}
!33 = !{!"int", !32, i64 0}
!34 = !{!"__libc_errno", !33, i64 0}
!35 = !{!34, !33, i64 0}
!36 = !{!"any pointer", !32, i64 0}
!37 = !{!"p1 int", !36, i64 0}
!38 = !{!"double", !32, i64 0}
!39 = !{!"_ZTS6NFALUT", !37, i64 0, !33, i64 8, !38, i64 16, !38, i64 24}
!40 = !{!39, !33, i64 8}
!41 = !{!39, !37, i64 0}
!42 = !{!39, !38, i64 16}
!43 = !{!39, !38, i64 24}
!44 = !{!33, !33, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!38, !38, i64 0}
!47 = !{!"_ZTS8AngleSet", !32, i64 0, !33, i64 8640, !33, i64 8644, !38, i64 8648}
!48 = !{!47, !33, i64 8644}
!49 = !{!"_ZTS11AngleSetArc", !38, i64 0, !38, i64 8, !33, i64 16}
!50 = !{!49, !38, i64 0}
!51 = !{!49, !38, i64 8}
!52 = !{!49, !33, i64 16}
!53 = !{!47, !33, i64 8640}
!54 = !{!"p1 omnipotent char", !36, i64 0}
!55 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !54, i64 0}
!56 = !{!"long", !32, i64 0}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !55, i64 0, !56, i64 8, !32, i64 16}
!58 = !{!57, !54, i64 0}
!59 = !{!32, !32, i64 0}
!60 = !{!47, !38, i64 8648}
!61 = !{!55, !54, i64 0}
!62 = !{!56, !56, i64 0}
!63 = !{!57, !56, i64 8}
!64 = !{!"p1 _ZTSN2cv12MatAllocatorE", !36, i64 0}
!65 = !{!"p1 _ZTSN2cv8UMatDataE", !36, i64 0}
!66 = !{!"_ZTSN2cv10DataLayoutE", !32, i64 0}
!67 = !{!"_ZTSN2cv8MatShapeE", !33, i64 0, !66, i64 4, !33, i64 8, !32, i64 12}
!68 = !{!"_ZTSN2cv7MatStepE", !32, i64 0}
!69 = !{!"_ZTSN2cv3MatE", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !64, i64 56, !65, i64 64, !67, i64 72, !68, i64 128}
!70 = !{!69, !33, i64 12}
!71 = !{!"_ZTSN2cv5RangeE", !33, i64 0, !33, i64 4}
end_hunk_0
begin_hunk_1_@llvm.fabs.v2f64
!546 = distinct !{!546, !45}
!547 = distinct !{!547, !45, !178, !179}
!548 = distinct !{!548, !45, !178}
!549 = distinct !{!549, !45, !178, !179}
!550 = distinct !{!550, !45}
!551 = distinct !{!551, !45, !178}
!552 = distinct !{!552, !45, !178, !179}
!553 = distinct !{!553, !45, !178}
!554 = distinct !{!554, !190}
!555 = distinct !{!555, !190}
!556 = distinct !{!556, !45}
!557 = distinct !{!557, !190}
!558 = distinct !{!558, !45}
!559 = distinct !{!559, !190}
!560 = distinct !{!560, !45}
!561 = distinct !{!561, !190}
!562 = distinct !{!562, !45}
!563 = distinct !{!563, !45}
!564 = distinct !{!564, !45}
!565 = distinct !{!565, !190}
!566 = distinct !{!566, !45}
!567 = distinct !{!567, !45}
!568 = !{!"_ZTSZN2cv8ximgproc15EdgeDrawingImpl9JoinArcs1EvE12CandidateArc", !33, i64 0, !33, i64 4, !38, i64 8}
!569 = !{!568, !38, i64 8}
!570 = !{!568, !33, i64 0}
!571 = !{!568, !33, i64 4}
!572 = distinct !{!572, !45}
!573 = distinct !{!573, !45}
!574 = distinct !{!574, !45}
!575 = distinct !{!575, !45}
!576 = !{!"_ZTSZN2cv8ximgproc15EdgeDrawingImpl9JoinArcs2EvE12CandidateArc", !33, i64 0, !33, i64 4, !38, i64 8}
!577 = !{!576, !38, i64 8}
!578 = !{!576, !33, i64 0}
!579 = !{!576, !33, i64 4}
!580 = distinct !{!580, !45}
!581 = distinct !{!581, !45}
!582 = distinct !{!582, !45}
!583 = distinct !{!583, !45}
!584 = !{!"_ZTSZN2cv8ximgproc15EdgeDrawingImpl9JoinArcs3EvE12CandidateArc", !33, i64 0, !33, i64 4, !38, i64 8}
!585 = !{!584, !38, i64 8}
!586 = !{!584, !33, i64 0}
!587 = !{!584, !33, i64 4}
!588 = distinct !{!588, !45}
!589 = distinct !{!589, !45}
!590 = distinct !{!590, !45}
!591 = !{!54, !54, i64 0}
!592 = distinct !{!592, !45}
!593 = distinct !{!593, !45}
!594 = distinct !{!594, !45}
!595 = distinct !{!595, !45}
!596 = !{!245, !38, i64 136}
!597 = !{!245, !38, i64 144}
!598 = distinct !{!598, !45}
!599 = distinct !{!599, !"LVerDomain"}
!600 = distinct !{!600, !599}
!601 = distinct !{!601, !599}
!602 = distinct !{!602, !599}
!603 = distinct !{!603, !599}
!604 = distinct !{!604, !45, !178, !179}
!605 = distinct !{!605, !45, !178}
!606 = distinct !{!606, !"LVerDomain"}
!607 = distinct !{!607, !606}
!608 = distinct !{!608, !606}
!609 = distinct !{!609, !606}
!610 = distinct !{!610, !606}
!611 = distinct !{!611, !45, !178, !179}
!612 = distinct !{!612, !45, !178}
!613 = distinct !{!613, !45, !178, !179}
!614 = distinct !{!614, !190}
!615 = distinct !{!615, !45, !178}
!616 = distinct !{!616, !45, !178, !179}
!617 = distinct !{!617, !190}
!618 = distinct !{!618, !45, !178}
!619 = distinct !{!619, !45, !178, !179}
!620 = distinct !{!620, !190}
!621 = distinct !{!621, !45}
!622 = distinct !{!622, !"LVerDomain"}
!623 = distinct !{!623, !622}
!624 = distinct !{!624, !622}
!625 = distinct !{!625, !622}
!626 = distinct !{!626, !622}
!627 = distinct !{!627, !45, !178, !179}
!628 = distinct !{!628, !45, !178}
!629 = distinct !{!629, !"LVerDomain"}
!630 = distinct !{!630, !629}
!631 = distinct !{!631, !629}
!632 = distinct !{!632, !629}
!633 = distinct !{!633, !629}
!634 = distinct !{!634, !629}
!635 = distinct !{!635, !629}
!636 = distinct !{!636, !629}
!637 = distinct !{!637, !629}
!638 = distinct !{!638, !629}
!639 = distinct !{!639, !629}
!640 = distinct !{!640, !45, !178, !179}
!641 = distinct !{!641, !45, !178}
!642 = distinct !{!642, !45, !178}
!643 = distinct !{!643, !"LVerDomain"}
!644 = distinct !{!644, !643}
!645 = distinct !{!645, !643}
!646 = distinct !{!646, !643}
!647 = distinct !{!647, !643}
!648 = distinct !{!648, !45, !178, !179}
!649 = distinct !{!649, !45, !178}
!650 = distinct !{!650, !"LVerDomain"}
!651 = distinct !{!651, !650}
!652 = distinct !{!652, !650}
!653 = distinct !{!653, !650}
!654 = distinct !{!654, !650}
!655 = distinct !{!655, !45, !178, !179}
!656 = distinct !{!656, !45, !178}
!657 = distinct !{!657, !"LVerDomain"}
!658 = distinct !{!658, !657}
!659 = distinct !{!659, !657}
!660 = distinct !{!660, !657}
!661 = distinct !{!661, !657}
!662 = distinct !{!662, !45, !178, !179}
!663 = distinct !{!663, !45, !178}
!664 = distinct !{!664, !"LVerDomain"}
!665 = distinct !{!665, !664}
!666 = distinct !{!666, !664}
!667 = distinct !{!667, !664}
!668 = distinct !{!668, !664}
!669 = distinct !{!669, !45, !178, !179}
!670 = distinct !{!670, !45, !178}
!671 = distinct !{!671, !45}
!672 = !{!600}
!673 = !{!601}
!674 = !{!600, !603, !602}
!675 = !{!603}
!676 = !{!602}
!677 = !{!607}
!678 = !{!608}
!679 = !{!607, !610, !609}
!680 = !{!610}
!681 = !{!609}
!682 = !{!623}
!683 = !{!624}
!684 = !{!625}
!685 = !{!626, !623, !624}
!686 = !{!626}
!687 = !{!623, !624}
!688 = !{!630}
!689 = !{!631}
!690 = !{!632}
!691 = !{!633}
!692 = !{!639, !638, !637, !630, !631, !632, !636, !635, !634}
!693 = !{!636}
!694 = !{!635}
!695 = !{!634}
!696 = !{!639}
!697 = !{!638, !637, !630, !631, !632, !636, !635, !634}
!698 = !{!638}
!699 = !{!637, !630, !631, !632, !636, !635, !634}
!700 = !{!637}
!701 = !{!630, !631, !632, !636, !635, !634}
!702 = !{!644}
!703 = !{!645}
!704 = !{!644, !647, !646}
!705 = !{!647}
!706 = !{!646}
!707 = !{!651}
!708 = !{!652}
!709 = !{!651, !654, !653}
!710 = !{!654}
!711 = !{!653}
!712 = !{!658}
!713 = !{!659}
!714 = !{!658, !661, !660}
!715 = !{!661}
!716 = !{!660}
!717 = !{!665}
!718 = !{!666}
!719 = !{!665, !668, !667}
!720 = !{!668}
!721 = !{!667}
!722 = distinct !{!722, !45, !178, !179}
!723 = distinct !{!723, !190}
!724 = distinct !{!724, !45, !178}
!725 = distinct !{!725, !45}
!726 = distinct !{!726, !45, !178, !179}
!727 = distinct !{!727, !190}
!728 = distinct !{!728, !45, !178}
!729 = distinct !{!729, !45}
!730 = distinct !{!730, !45}
!731 = distinct !{!731, !"LVerDomain"}
!732 = distinct !{!732, !731}
!733 = distinct !{!733, !731}
!734 = distinct !{!734, !45, !178, !179}
!735 = distinct !{!735, !45, !178}
!736 = distinct !{!736, !45, !178, !179}
!737 = distinct !{!737, !45, !179, !178}
!738 = distinct !{!738, !"LVerDomain"}
!739 = distinct !{!739, !738}
!740 = distinct !{!740, !738}
!741 = distinct !{!741, !45, !178, !179}
!742 = distinct !{!742, !45, !178}
!743 = distinct !{!743, !45}
!744 = distinct !{!744, !45}
!745 = distinct !{!745, !45, !178, !179}
!746 = distinct !{!746, !190}
!747 = distinct !{!747, !45, !178}
!748 = distinct !{!748, !45}
!749 = !{!732}
!750 = !{!733}
!751 = !{!739}
!752 = !{!740}
!753 = distinct !{!753, !45}
!754 = distinct !{!754, !45}
!755 = distinct !{!755, !190}
!756 = distinct !{!756, !45}
!757 = distinct !{!757, !190}
!758 = distinct !{!758, !190}
!759 = distinct !{!759, !45}
!760 = distinct !{!760, !45}
!761 = distinct !{!761, !45}
!762 = distinct !{!762, !45}
!763 = distinct !{!763, !45}
!764 = distinct !{!764, !45}
!765 = distinct !{!765, !45}
!766 = distinct !{!766, !190}
!767 = distinct !{!767, !45}
!768 = distinct !{!768, !190}
!769 = distinct !{!769, !45}
!770 = distinct !{!770, !45}
!771 = distinct !{!771, !190}
!772 = distinct !{!772, !45}
!773 = distinct !{!773, !45}
!774 = distinct !{!774, !45, !178, !179}
!775 = distinct !{!775, !45}
!776 = distinct !{!776, !"LVerDomain"}
!777 = distinct !{!777, !776}
!778 = distinct !{!778, !776}
!779 = distinct !{!779, !45, !178, !179}
!780 = distinct !{!780, !45}
!781 = distinct !{!781, !45, !178}
!782 = distinct !{!782, !45}
!783 = distinct !{!783, !45}
!784 = distinct !{!784, !45, !179, !178}
!785 = distinct !{!785, !45}
!786 = !{!777}
!787 = !{!778}
!788 = distinct !{null}
!789 = !{!"_ZTSSt9type_info", !54, i64 8}
!790 = !{!789, !54, i64 8}
!791 = distinct !{!791, !"_ZSt19__relocate_object_aISt6vectorIN2cv6Point_IiEESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_"}
!792 = distinct !{!792, !791, !"_ZSt19__relocate_object_aISt6vectorIN2cv6Point_IiEESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!793 = distinct !{!793, !791, !"_ZSt19__relocate_object_aISt6vectorIN2cv6Point_IiEESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!794 = distinct !{!794, !"_ZSt19__relocate_object_aISt6vectorIN2cv6Point_IiEESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_"}
!795 = distinct !{!795, !794, !"_ZSt19__relocate_object_aISt6vectorIN2cv6Point_IiEESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!796 = distinct !{!796, !794, !"_ZSt19__relocate_object_aISt6vectorIN2cv6Point_IiEESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!797 = !{!792}
!798 = !{!793}
!799 = !{!795}
!800 = !{!796}
!801 = distinct !{!801, !45}
!802 = distinct !{!802, !45}
!803 = distinct !{!803, !"_ZSt19__relocate_object_aISt6vectorIN2cv6Point_IiEESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_"}
!804 = distinct !{!804, !803, !"_ZSt19__relocate_object_aISt6vectorIN2cv6Point_IiEESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!805 = distinct !{!805, !803, !"_ZSt19__relocate_object_aISt6vectorIN2cv6Point_IiEESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!806 = distinct !{!806, !"_ZSt19__relocate_object_aISt6vectorIN2cv6Point_IiEESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_"}
!807 = distinct !{!807, !806, !"_ZSt19__relocate_object_aISt6vectorIN2cv6Point_IiEESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!808 = distinct !{!808, !806, !"_ZSt19__relocate_object_aISt6vectorIN2cv6Point_IiEESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!809 = !{!804}
!810 = !{!805}
!811 = !{!807}
!812 = !{!808}
!813 = distinct !{!813, !45}
!814 = distinct !{!814, !45}
!815 = distinct !{!815, !45}
!816 = distinct !{!816, !45}
!817 = distinct !{!817, !45}
!818 = distinct !{!818, !45}
end_hunk_1
