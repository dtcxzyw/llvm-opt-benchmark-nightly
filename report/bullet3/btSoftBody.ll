Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_:bb.a
bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge25, label %bb.c, !llvm.loop !8

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !316  ; 2 uses
  %i.h = icmp eq ptr %i.g, %1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, %2
  %or.cond = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond, label %.critedge25, label %.critedge

.critedge:                                        ; preds = %bb.c
  %i.l = icmp eq ptr %i.g, %2
  %i.m = icmp eq ptr %i.j, %1
  %or.cond23 = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond23, label %.critedge25, label %bb.b

.critedge25:                                      ; preds = %.critedge, %bb.c, %bb.b, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %.critedge ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK10btSoftBody9checkFaceEiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 3 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [256 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [256 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr inbounds [256 x i8], ptr %i.b, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.j = load i32, ptr %i.i, align 4, !tbaa !183  ; 2 uses
  %.not2832 = icmp sgt i32 %i.j, 0
  br i1 %.not2832, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !182
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !611

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [144 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !316  ; 3 uses
  %i.p = icmp eq ptr %i.o, %i.d
  %i.q = icmp eq ptr %i.o, %i.f
  %or.cond = or i1 %i.p, %i.q
  %i.r = icmp eq ptr %i.o, %i.h
  %or.cond29 = or i1 %i.r, %or.cond
  br i1 %or.cond29, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !316  ; 3 uses
  %i.u = icmp eq ptr %i.t, %i.d
  %i.v = icmp eq ptr %i.t, %i.f
  %or.cond.1 = or i1 %i.u, %i.v
  %i.w = icmp eq ptr %i.t, %i.h
  %or.cond29.1 = or i1 %i.w, %or.cond.1
  br i1 %or.cond29.1, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !316  ; 3 uses
  %i.z = icmp eq ptr %i.y, %i.d
  %i.aa = icmp eq ptr %i.y, %i.f
  %or.cond.2 = or i1 %i.z, %i.aa
  %i.ab = icmp eq ptr %i.y, %i.h
  %or.cond29.2 = or i1 %i.ab, %or.cond.2
  br i1 %or.cond29.2, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.e, %bb.a
  %.not28.lcssa = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ false, %bb.b ]
  ret i1 %.not28.lcssa
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3RK9btVector4PNS_4NodeES9_S9_S9_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2064) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.6 = alloca [4 x float], align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !260
  %i.a = load <4 x float>, ptr %3, align 4, !tbaa !253
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 900 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !167  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !168
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE9push_backERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.c, 0
  %i.g = shl nsw i32 %i.c, 1
  %i.h = select i1 %.not.i.i, i32 1, i32 %i.g     ; 4 uses
  %i.i = icmp slt i32 %i.c, %i.h
  br i1 %i.i, label %bb.c, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sext i32 %i.h to i64
  %i.k = mul nsw i64 %i.j, 88
  %i.l = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.k, i32 noundef 16)
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !167
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.m = phi i32 [ %.pre.i, %bb.d ], [ %i.c, %bb.c ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.l, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.e ]
  %i.q = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !166
  %i.s = getelementptr inbounds nuw [88 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull align 8 dereferenceable(88) %i.s, i64 88, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !166
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.t, ptr noundef nonnull align 8 dereferenceable(88) %i.v, i64 88, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !612

_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod23 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.w = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !166
  %i.y = getelementptr inbounds nuw [88 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.y, i64 88, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !166 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !165, !range !262, !noundef !263
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i: ; preds = %bb.g, %bb.f, %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i8 1, ptr %i.ae, align 8, !tbaa !165
  store ptr %.0.i.i.i, ptr %i.z, align 8, !tbaa !166
  store i32 %i.h, ptr %i.d, align 8, !tbaa !168
  %.pre2.i = load i32, ptr %i.b, align 4, !tbaa !167
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE9push_backERKS1_.exit: ; preds = %bb.a, %bb.b, %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i
  %i.af = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i ], [ %i.c, %bb.b ], [ %i.c, %bb.a ]
  %8 = insertelement <4 x ptr> poison, ptr %5, i64 0
  %9 = insertelement <4 x ptr> %8, ptr %4, i64 1
  %10 = insertelement <4 x ptr> %9, ptr %6, i64 2
  %11 = insertelement <4 x ptr> %10, ptr %7, i64 3
  %12 = icmp ne <4 x ptr> %11, splat (ptr null)
  %13 = bitcast <4 x i1> %12 to i4
  %14 = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %13)
  %i.ag = zext nneg i4 %14 to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !166
  %i.aj = sext i32 %i.af to i64
  %i.ak = getelementptr inbounds [88 x i8], ptr %i.ai, i64 %i.aj ; 10 uses
  store ptr null, ptr %i.ak, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i32 %i.ag, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i32 0, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.1318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %4, ptr %.sroa.1318.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store ptr %5, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store ptr %6, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store ptr %7, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store <4 x float> %i.a, ptr %.sroa.17.0..sroa_idx, align 8
  %i.al = load i32, ptr %i.b, align 4, !tbaa !167
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.b, align 4, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3PNS_4NodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2064) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.btVector4, align 16          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16, !tbaa !253
  call void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3RK9btVector4PNS_4NodeES9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3PNS_4LinkE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2064) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.btVector4, align 16          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16, !tbaa !253
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !316
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !316
  call void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3RK9btVector4PNS_4NodeES9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %i.b, ptr noundef %i.d, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3PNS_4FaceE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2064) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.btVector4, align 16          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store <4 x float> <float f0x3EAAAAAB, float f0x3EAAAAAB, float f0x3EAAAAAB, float 0.000000e+00>, ptr %4, align 16, !tbaa !253
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !316
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !316
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !316
  call void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3RK9btVector4PNS_4NodeES9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody10appendNodeERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %struct.btDbvtAabbMm, align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !172
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 932 ; 8 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !171
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10btSoftBody17pointersToIndicesEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  %i.f = load i32, ptr %i.c, align 4, !tbaa !171
  %i.g = shl nsw i32 %i.f, 1                      ; 2 uses
  %i.h = or disjoint i32 %i.g, 1                  ; 2 uses
  %i.i = load i32, ptr %i.a, align 8, !tbaa !172
  %.not = icmp sgt i32 %i.i, %i.g
  br i1 %.not, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE7reserveEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sext i32 %i.h to i64
  %i.k = shl nsw i64 %i.j, 8
  %i.l = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.k, i32 noundef 16) ; 2 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !171  ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 944
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw [256 x i8], ptr %i.l, i64 %indvars.iv.i.i ; 8 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !170
  %i.r = getelementptr inbounds nuw [256 x i8], ptr %i.q, i64 %indvars.iv.i.i ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(252) %i.p, ptr noundef nonnull align 8 dereferenceable(252) %i.r, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(140) %i.s, ptr noundef nonnull align 8 dereferenceable(140) %i.t, i64 140, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 156
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.u, ptr noundef nonnull align 4 dereferenceable(48) %i.v, i64 16, i1 false), !tbaa.struct !260
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 172
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !260
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 188
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 188
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !260
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 204
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.aa, ptr noundef nonnull align 4 dereferenceable(48) %i.ab, i64 16, i1 false), !tbaa.struct !260
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 220
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 220
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !260
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 236
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 236
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !260
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i, label %bb.d, !llvm.loop !0

_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i: ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !170 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.ah, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE10deallocateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !169, !range !262, !noundef !263
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE10deallocateEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ah)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE10deallocateEv.exit.i

_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE10deallocateEv.exit.i: ; preds = %bb.f, %bb.e, %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i8 1, ptr %i.al, align 8, !tbaa !169
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !170
  store i32 %i.h, ptr %i.a, align 8, !tbaa !172
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE7reserveEi.exit

_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE7reserveEi.exit: ; preds = %bb.b, %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE10deallocateEv.exit.i
  tail call void @_ZN10btSoftBody17indicesToPointersEPKi(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE7reserveEi.exit, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !258 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef float %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %i.an) ; 3 uses
  %i.as = load i32, ptr %i.c, align 4, !tbaa !171 ; 7 uses
  %i.at = load i32, ptr %i.a, align 8, !tbaa !172
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %i.as, 0
  %i.av = shl nsw i32 %i.as, 1
  %i.aw = select i1 %.not.i.i, i32 1, i32 %i.av   ; 4 uses
  %i.ax = icmp slt i32 %i.as, %i.aw
  br i1 %i.ax, label %bb.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE8allocateEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = sext i32 %i.aw to i64
  %i.az = shl nsw i64 %i.ay, 8
  %i.ba = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.az, i32 noundef 16)
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !171
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE8allocateEi.exit.i.i: ; preds = %bb.j, %bb.i
  %i.bb = phi i32 [ %.pre.i, %bb.j ], [ %i.as, %bb.i ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.ba, %bb.j ], [ null, %bb.i ] ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NodeEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEE8allocateEi.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 944
  %wide.trip.count.i.i.i = zext nneg i32 %i.bb to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.k ] ; 3 uses
  %i.be = getelementptr inbounds nuw [256 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i ; 8 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !170
  %i.bg = getelementptr inbounds nuw [256 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(252) %i.be, ptr noundef nonnull align 8 dereferenceable(252) %i.bg, i64 16, i1 false)
end_hunk_0
begin_hunk_1_@_ZN9btHashMapI9btHashPtriE10growTablesERKS0_:bb.a
  br i1 %i.bf, label %.lr.ph.i.i.i34, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i30

.lr.ph.i.i.i34:                                   ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i28
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %.0.i.i.i2963 = ptrtoaddr ptr %.0.i.i.i29 to i64
  %wide.trip.count.i.i.i35 = zext nneg i32 %i.be to i64 ; 5 uses
  %min.iters.check65 = icmp ult i32 %i.be, 8
  %i.bj = sub i64 %i.bi, %.0.i.i.i2963
  %diff.check67 = icmp ugt i64 %i.bj, -32
  %or.cond78 = select i1 %min.iters.check65, i1 true, i1 %diff.check67
  br i1 %or.cond78, label %scalar.ph64.preheader, label %vector.ph68

vector.ph68:                                      ; preds = %.lr.ph.i.i.i34
  %n.vec69 = and i64 %wide.trip.count.i.i.i35, 2147483640 ; 3 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next74, %vector.body70 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %index71 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index71 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load72 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !275
  %wide.load73 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !275
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <4 x i32> %wide.load72, ptr %i.bk, align 4, !tbaa !275
  store <4 x i32> %wide.load73, ptr %i.bn, align 4, !tbaa !275
  %index.next74 = add nuw i64 %index71, 8         ; 2 uses
  %i.bo = icmp eq i64 %index.next74, %n.vec69
  br i1 %i.bo, label %middle.block75, label %vector.body70, !llvm.loop !1520

middle.block75:                                   ; preds = %vector.body70
  %cmp.n76 = icmp eq i64 %n.vec69, %wide.trip.count.i.i.i35
  br i1 %cmp.n76, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32, label %scalar.ph64.preheader

scalar.ph64.preheader:                            ; preds = %.lr.ph.i.i.i34, %middle.block75
  %indvars.iv.i.i.i36.ph = phi i64 [ 0, %.lr.ph.i.i.i34 ], [ %n.vec69, %middle.block75 ] ; 3 uses
  %xtraiter79 = and i64 %wide.trip.count.i.i.i35, 3 ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %scalar.ph64.prol.loopexit, label %scalar.ph64.prol

scalar.ph64.prol:                                 ; preds = %scalar.ph64.preheader, %scalar.ph64.prol
  %indvars.iv.i.i.i36.prol = phi i64 [ %indvars.iv.next.i.i.i37.prol, %scalar.ph64.prol ], [ %indvars.iv.i.i.i36.ph, %scalar.ph64.preheader ] ; 3 uses
  %prol.iter81 = phi i64 [ %prol.iter81.next, %scalar.ph64.prol ], [ 0, %scalar.ph64.preheader ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.i.i.i36.prol
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i36.prol
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !275
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !275
  %indvars.iv.next.i.i.i37.prol = add nuw nsw i64 %indvars.iv.i.i.i36.prol, 1 ; 2 uses
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %scalar.ph64.prol.loopexit, label %scalar.ph64.prol, !llvm.loop !1521

scalar.ph64.prol.loopexit:                        ; preds = %scalar.ph64.prol, %scalar.ph64.preheader
  %indvars.iv.i.i.i36.unr = phi i64 [ %indvars.iv.i.i.i36.ph, %scalar.ph64.preheader ], [ %indvars.iv.next.i.i.i37.prol, %scalar.ph64.prol ]
  %i.bs = sub nsw i64 %indvars.iv.i.i.i36.ph, %wide.trip.count.i.i.i35
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32, label %scalar.ph64

scalar.ph64:                                      ; preds = %scalar.ph64.prol.loopexit, %scalar.ph64
  %indvars.iv.i.i.i36 = phi i64 [ %indvars.iv.next.i.i.i37.3, %scalar.ph64 ], [ %indvars.iv.i.i.i36.unr, %scalar.ph64.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.i.i.i36
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.i.i36
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !275
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !275
  %indvars.iv.next.i.i.i37 = add nuw nsw i64 %indvars.iv.i.i.i36, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.next.i.i.i37
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i37
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !275
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !275
  %indvars.iv.next.i.i.i37.1 = add nuw nsw i64 %indvars.iv.i.i.i36, 2 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.next.i.i.i37.1
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i37.1
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !275
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !275
  %indvars.iv.next.i.i.i37.2 = add nuw nsw i64 %indvars.iv.i.i.i36, 3 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i29, i64 %indvars.iv.next.i.i.i37.2
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.i37.2
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !275
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !275
  %indvars.iv.next.i.i.i37.3 = add nuw nsw i64 %indvars.iv.i.i.i36, 4 ; 2 uses
  %exitcond.not.i.i.i38.3 = icmp eq i64 %indvars.iv.next.i.i.i37.3, %wide.trip.count.i.i.i35
  br i1 %exitcond.not.i.i.i38.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32, label %scalar.ph64, !llvm.loop !1522

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i30: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i28
  %.not.i5.i.i31 = icmp eq ptr %i.bh, null
  br i1 %.not.i5.i.i31, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32: ; preds = %scalar.ph64.prol.loopexit, %scalar.ph64, %middle.block75, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i30
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !249, !range !262, !noundef !263
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bh)
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33: ; preds = %bb.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i32, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i30
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.cj, align 8, !tbaa !249
  store ptr %.0.i.i.i29, ptr %i.bg, align 8, !tbaa !250
  store i32 %i.b, ptr %i.ba, align 8, !tbaa !252
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %..lr.ph.i20_crit_edge, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33
  %i.ck = phi ptr [ %.pre52, %..lr.ph.i20_crit_edge ], [ %.0.i.i.i29, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i33 ]
  %i.cl = sext i32 %i.ay to i64
  %i.cm = shl nsw i64 %i.cl, 2                    ; 2 uses
  %scevgep47 = getelementptr i8, ptr %i.ck, i64 %i.cm
  %i.cn = sub nsw i64 %i.av, %i.cm
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep47, i8 0, i64 %i.cn, i1 false), !tbaa !275
  br label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit39

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit39:  ; preds = %.lr.ph.i20, %.lr.ph.i
  store i32 %i.b, ptr %i.ax, align 4, !tbaa !251
  %i.co = icmp sgt i32 %i.b, 0
  br i1 %i.co, label %.lr.ph44, label %.preheader

.lr.ph44:                                         ; preds = %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit39
  %i.cp = load ptr, ptr %i.as, align 8, !tbaa !250
  %i.cq = zext nneg i32 %i.b to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cp, i8 -1, i64 %i.cr, i1 false), !tbaa !275
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !250
  %i.cu = zext nneg i32 %i.b to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ct, i8 -1, i64 %i.cv, i1 false), !tbaa !275
  br label %.preheader

.preheader:                                       ; preds = %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit39, %.lr.ph44
  %i.cw = icmp sgt i32 %i.d, 0
  br i1 %i.cw, label %.lr.ph46, label %.loopexit

.lr.ph46:                                         ; preds = %.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !546
  %i.cz = load ptr, ptr %i.as, align 8, !tbaa !250
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !250
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph46, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !259
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !259
  %i.dg = add i32 %i.df, %i.dd                    ; 2 uses
  %i.dh = shl i32 %i.dg, 15
  %i.di = xor i32 %i.dh, -1
  %i.dj = add i32 %i.dg, %i.di                    ; 2 uses
  %i.dk = lshr i32 %i.dj, 10
  %i.dl = xor i32 %i.dk, %i.dj
  %i.dm = mul i32 %i.dl, 9                        ; 2 uses
  %i.dn = lshr i32 %i.dm, 6
  %i.do = xor i32 %i.dn, %i.dm                    ; 2 uses
  %i.dp = shl i32 %i.do, 11
  %i.dq = xor i32 %i.dp, -1
  %i.dr = add i32 %i.do, %i.dq                    ; 2 uses
  %i.ds = lshr i32 %i.dr, 16
  %i.dt = xor i32 %i.ds, %i.dr
  %i.du = load i32, ptr %i.a, align 8, !tbaa !252
  %i.dv = add nsw i32 %i.du, -1
  %i.dw = and i32 %i.dt, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !275
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !275
  %i.eb = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !275
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !1523

.loopexit:                                        ; preds = %bb.j, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #20

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #40 = { nounwind }
attributes #41 = { noreturn nounwind }
attributes #42 = { builtin nounwind }
attributes #43 = { builtin allocsize(0) }

!llvm.module.flags = !{!31, !32, !33}
!llvm.ident = !{!34}
!llvm.errno.tbaa = !{!39}

!0 = distinct !{!0, !261}
!1 = distinct !{!1, !261}
!2 = distinct !{!2, !261}
!3 = distinct !{!3, !261}
!4 = distinct !{!4, !261}
!5 = distinct !{!5, !261}
!6 = distinct !{!6, !261}
!7 = distinct !{!7, !261}
!8 = distinct !{!8, !261}
!9 = distinct !{!9, !261}
!10 = distinct !{!10, !261}
!11 = distinct !{!11, !261}
!12 = distinct !{!12, !261}
!13 = distinct !{!13, !261}
!14 = distinct !{!14, !261}
!15 = distinct !{!15, !261}
!16 = distinct !{!16, !261}
!17 = distinct !{!17, !261}
!18 = distinct !{!18, !261}
!19 = distinct !{!19, !261}
!20 = distinct !{!20, !261}
!21 = distinct !{!21, !261}
!22 = distinct !{!22, !261}
!23 = distinct !{!23, !261}
!24 = distinct !{!24, !261}
!25 = distinct !{!25, !261}
!26 = distinct !{!26, !261}
!27 = distinct !{!27, !261}
!28 = distinct !{!28, !261}
!29 = distinct !{!29, !261}
!30 = distinct !{!30, !261}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!35 = !{!"Simple C++ TBAA"}
!36 = !{!"omnipotent char", !35, i64 0}
!37 = !{!"int", !36, i64 0}
!38 = !{!"__libc_errno", !37, i64 0}
!39 = !{!38, !37, i64 0}
!40 = !{!"vtable pointer", !35, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!43 = !{!"any pointer", !36, i64 0}
!44 = !{!"any p2 pointer", !43, i64 0}
!45 = !{!"p2 _ZTS17btCollisionObject", !44, i64 0}
!46 = !{!"bool", !36, i64 0}
!47 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !42, i64 0, !37, i64 4, !37, i64 8, !45, i64 16, !46, i64 24}
!48 = !{!47, !46, i64 24}
!49 = !{!47, !45, i64 16}
!50 = !{!47, !37, i64 4}
!51 = !{!47, !37, i64 8}
!52 = !{!"_ZTS11btMatrix3x3", !36, i64 0}
!53 = !{!"_ZTS9btVector3", !36, i64 0}
!54 = !{!"_ZTS11btTransform", !52, i64 0, !53, i64 48}
!55 = !{!"float", !36, i64 0}
!56 = !{!"p1 _ZTS17btBroadphaseProxy", !43, i64 0}
!57 = !{!"p1 _ZTS16btCollisionShape", !43, i64 0}
!58 = !{!"_ZTS17btCollisionObject", !54, i64 8, !54, i64 72, !53, i64 136, !53, i64 152, !53, i64 168, !37, i64 184, !55, i64 188, !56, i64 192, !57, i64 200, !43, i64 208, !57, i64 216, !37, i64 224, !37, i64 228, !37, i64 232, !37, i64 236, !37, i64 240, !55, i64 244, !55, i64 248, !55, i64 252, !55, i64 256, !55, i64 260, !55, i64 264, !55, i64 268, !37, i64 272, !43, i64 280, !37, i64 288, !37, i64 292, !37, i64 296, !55, i64 300, !55, i64 304, !55, i64 308, !37, i64 312, !47, i64 320, !37, i64 352, !53, i64 356}
!59 = !{!"p1 _ZTS16btSoftBodySolver", !43, i64 0}
!60 = !{!"_ZTSN10btSoftBody10eAeroModel1_E", !36, i64 0}
!61 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8eVSolver1_ELj16EE"}
!62 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8eVSolver1_EE", !61, i64 0, !37, i64 4, !37, i64 8, !43, i64 16, !46, i64 24}
!63 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8ePSolver1_ELj16EE"}
!64 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8ePSolver1_EE", !63, i64 0, !37, i64 4, !37, i64 8, !43, i64 16, !46, i64 24}
!65 = !{!"_ZTSN10btSoftBody6ConfigE", !60, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !55, i64 40, !55, i64 44, !55, i64 48, !55, i64 52, !55, i64 56, !55, i64 60, !55, i64 64, !55, i64 68, !55, i64 72, !55, i64 76, !55, i64 80, !37, i64 84, !37, i64 88, !37, i64 92, !37, i64 96, !37, i64 100, !62, i64 104, !64, i64 136, !64, i64 168, !55, i64 200, !55, i64 204}
!66 = !{!"_ZTSN10btSoftBody11SolverStateE", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16}
!67 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!68 = !{!"p1 _ZTS9btVector3", !43, i64 0}
!69 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !67, i64 0, !37, i64 4, !37, i64 8, !68, i64 16, !46, i64 24}
!70 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!71 = !{!"p1 float", !43, i64 0}
!72 = !{!"_ZTS20btAlignedObjectArrayIfE", !70, i64 0, !37, i64 4, !37, i64 8, !71, i64 16, !46, i64 24}
!73 = !{!"_ZTSN10btSoftBody4PoseE", !46, i64 0, !46, i64 1, !55, i64 4, !69, i64 8, !72, i64 40, !53, i64 72, !52, i64 88, !52, i64 136, !52, i64 184}
!74 = !{!"p1 _ZTS19btSoftBodyWorldInfo", !43, i64 0}
!75 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4NoteELj16EE"}
!76 = !{!"p1 _ZTSN10btSoftBody4NoteE", !43, i64 0}
!77 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4NoteEE", !75, i64 0, !37, i64 4, !37, i64 8, !76, i64 16, !46, i64 24}
!78 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4NodeELj16EE"}
!79 = !{!"p1 _ZTSN10btSoftBody4NodeE", !43, i64 0}
!80 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4NodeEE", !78, i64 0, !37, i64 4, !37, i64 8, !79, i64 16, !46, i64 24}
!81 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody10RenderNodeELj16EE"}
!82 = !{!"p1 _ZTSN10btSoftBody10RenderNodeE", !43, i64 0}
!83 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody10RenderNodeEE", !81, i64 0, !37, i64 4, !37, i64 8, !82, i64 16, !46, i64 24}
!84 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4LinkELj16EE"}
!85 = !{!"p1 _ZTSN10btSoftBody4LinkE", !43, i64 0}
!86 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4LinkEE", !84, i64 0, !37, i64 4, !37, i64 8, !85, i64 16, !46, i64 24}
!87 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody4FaceELj16EE"}
!88 = !{!"p1 _ZTSN10btSoftBody4FaceE", !43, i64 0}
!89 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody4FaceEE", !87, i64 0, !37, i64 4, !37, i64 8, !88, i64 16, !46, i64 24}
!90 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody10RenderFaceELj16EE"}
!91 = !{!"p1 _ZTSN10btSoftBody10RenderFaceE", !43, i64 0}
!92 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody10RenderFaceEE", !90, i64 0, !37, i64 4, !37, i64 8, !91, i64 16, !46, i64 24}
!93 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody5TetraELj16EE"}
!94 = !{!"p1 _ZTSN10btSoftBody5TetraE", !43, i64 0}
!95 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody5TetraEE", !93, i64 0, !37, i64 4, !37, i64 8, !94, i64 16, !46, i64 24}
!96 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody12TetraScratchELj16EE"}
!97 = !{!"p1 _ZTSN10btSoftBody12TetraScratchE", !43, i64 0}
!98 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody12TetraScratchEE", !96, i64 0, !37, i64 4, !37, i64 8, !97, i64 16, !46, i64 24}
!99 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody6AnchorELj16EE"}
!100 = !{!"p1 _ZTSN10btSoftBody6AnchorE", !43, i64 0}
!101 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody6AnchorEE", !99, i64 0, !37, i64 4, !37, i64 8, !100, i64 16, !46, i64 24}
!102 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody25DeformableNodeRigidAnchorELj16EE"}
!103 = !{!"p1 _ZTSN10btSoftBody25DeformableNodeRigidAnchorE", !43, i64 0}
!104 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE", !102, i64 0, !37, i64 4, !37, i64 8, !103, i64 16, !46, i64 24}
!105 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8RContactELj16EE"}
!106 = !{!"p1 _ZTSN10btSoftBody8RContactE", !43, i64 0}
!107 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8RContactEE", !105, i64 0, !37, i64 4, !37, i64 8, !106, i64 16, !46, i64 24}
!108 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody26DeformableNodeRigidContactELj16EE"}
!109 = !{!"p1 _ZTSN10btSoftBody26DeformableNodeRigidContactE", !43, i64 0}
!110 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody26DeformableNodeRigidContactEE", !108, i64 0, !37, i64 4, !37, i64 8, !109, i64 16, !46, i64 24}
!111 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody25DeformableFaceNodeContactELj16EE"}
!112 = !{!"p1 _ZTSN10btSoftBody25DeformableFaceNodeContactE", !43, i64 0}
!113 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody25DeformableFaceNodeContactEE", !111, i64 0, !37, i64 4, !37, i64 8, !112, i64 16, !46, i64 24}
!114 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody26DeformableFaceRigidContactELj16EE"}
!115 = !{!"p1 _ZTSN10btSoftBody26DeformableFaceRigidContactE", !43, i64 0}
!116 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody26DeformableFaceRigidContactEE", !114, i64 0, !37, i64 4, !37, i64 8, !115, i64 16, !46, i64 24}
!117 = !{!"_ZTS18btAlignedAllocatorIN10btSoftBody8SContactELj16EE"}
!118 = !{!"p1 _ZTSN10btSoftBody8SContactE", !43, i64 0}
!119 = !{!"_ZTS20btAlignedObjectArrayIN10btSoftBody8SContactEE", !117, i64 0, !37, i64 4, !37, i64 8, !118, i64 16, !46, i64 24}
!120 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody5JointELj16EE"}
!121 = !{!"p2 _ZTSN10btSoftBody5JointE", !44, i64 0}
!122 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody5JointEE", !120, i64 0, !37, i64 4, !37, i64 8, !121, i64 16, !46, i64 24}
!123 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody8MaterialELj16EE"}
!124 = !{!"p2 _ZTSN10btSoftBody8MaterialE", !44, i64 0}
!125 = !{!"_ZTS20btAlignedObjectArrayIPN10btSoftBody8MaterialEE", !123, i64 0, !37, i64 4, !37, i64 8, !124, i64 16, !46, i64 24}
!126 = !{!"p1 _ZTS10btDbvtNode", !43, i64 0}
!127 = !{!"_ZTS18btAlignedAllocatorIN6btDbvt6sStkNNELj16EE"}
!128 = !{!"p1 _ZTSN6btDbvt6sStkNNE", !43, i64 0}
!129 = !{!"_ZTS20btAlignedObjectArrayIN6btDbvt6sStkNNEE", !127, i64 0, !37, i64 4, !37, i64 8, !128, i64 16, !46, i64 24}
!130 = !{!"_ZTS6btDbvt", !126, i64 0, !126, i64 8, !37, i64 16, !37, i64 20, !37, i64 24, !129, i64 32}
!131 = !{!"p1 _ZTS11btDbvntNode", !43, i64 0}
!132 = !{!"_ZTS18btAlignedAllocatorIPN10btSoftBody7ClusterELj16EE"}
!133 = !{!"p2 _ZTSN10btSoftBody7ClusterE", !44, i64 0}
end_hunk_1
