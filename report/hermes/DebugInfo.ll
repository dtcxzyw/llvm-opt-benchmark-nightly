inline.NumInlined: 835
inline.NumDeleted: 375
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK6hermes3hbc9DebugInfo21getLocationForAddressEjj:bb.a
  store i32 %i.k, ptr %i.l, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.m = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.i, ptr noundef nonnull %i.b) #14
  %i.n = add i32 %i.m, %i.i                       ; 2 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %i.p, ptr %i.q, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.r = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.n, ptr noundef nonnull %i.a) #14
  %i.s = add i32 %i.r, %i.n                       ; 2 uses
  store i32 %i.s, ptr %i.e, align 8, !tbaa !75
  %i.t = load i64, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %i.u, ptr %i.v, align 8, !tbaa !76
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.7.sroa.0.0.copyload = load <6 x i32>, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call fastcc void @_ZN12_GLOBAL__N_129FunctionDebugInfoDeserializer4nextEv(ptr dead_on_unwind noalias writable align 4 %5, ptr noundef nonnull align 8 dereferenceable(56) %4)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !77, !range !11, !noundef !12
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = load i32, ptr %5, align 4
  %i.aa = icmp ule i32 %i.z, %3
  %or.cond.not33 = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond.not33, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.7.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0834 = phi i32 [ %i.s, %.lr.ph ], [ %.val, %bb.b ]
  %.sroa.7.sroa.0.0.copyload54 = load <6 x i32>, ptr %.sroa.7.0..sroa_idx21, align 4
  %.val = load i32, ptr %i.e, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call fastcc void @_ZN12_GLOBAL__N_129FunctionDebugInfoDeserializer4nextEv(ptr dead_on_unwind noalias writable align 4 %5, ptr noundef nonnull align 8 dereferenceable(56) %4)
  %i.ab = load i8, ptr %i.w, align 4, !tbaa !77, !range !11, !noundef !12
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = load i32, ptr %5, align 4
  %i.ae = icmp ule i32 %i.ad, %3
  %or.cond.not = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.7.sroa.0.0 = phi <6 x i32> [ %.sroa.7.sroa.0.0.copyload, %bb.a ], [ %.sroa.7.sroa.0.0.copyload54, %bb.b ]
  %.010.lcssa = phi i32 [ %2, %bb.a ], [ %.0834, %bb.b ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !64 ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !65 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.ag to i64
  %i.ak = load i32, ptr %i.aj, align 1, !tbaa !66
  %.not.peel.i = icmp ugt i32 %i.ak, %.010.lcssa
  br i1 %.not.peel.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 2 uses
  %exitcond.peel.not.i = icmp eq i32 %i.ag, 1
  br i1 %exitcond.peel.not.i, label %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !66
  %.not.i35 = icmp ugt i32 %i.ao, %.010.lcssa
  br i1 %.not.i35, label %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %.peel.next.i.preheader
  %exitcond.not.i48 = icmp eq i32 %i.ag, 2
  br i1 %exitcond.not.i48, label %._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge, label %.peel.next.i.lr.ph, !llvm.loop !68

.peel.next.i.lr.ph:                               ; preds = %.lr.ph37.preheader
  br label %.peel.next.i, !llvm.loop !68

.peel.next.i:                                     ; preds = %.peel.next.i.lr.ph, %.lr.ph37
  %indvars.iv.next.i49 = phi i64 [ 2, %.peel.next.i.lr.ph ], [ %indvars.iv.next.i, %.lr.ph37 ] ; 2 uses
  %i.ap = phi ptr [ %i.an, %.peel.next.i.lr.ph ], [ %i.aq, %.lr.ph37 ]
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %indvars.iv.next.i49 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !66
  %.not.i = icmp ugt i32 %i.ar, %.010.lcssa
  br i1 %.not.i, label %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.sink.split, label %.lr.ph37, !llvm.loop !68

.lr.ph37:                                         ; preds = %.peel.next.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i49, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph37.._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge_crit_edge, label %.peel.next.i, !llvm.loop !68

.lr.ph37.._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph37
  br label %._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge, !llvm.loop !68

._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge: ; preds = %.lr.ph37.._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge_crit_edge, %.lr.ph37.preheader
  %.lcssa = phi ptr [ %i.aq, %.lr.ph37.._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge_crit_edge ], [ %i.an, %.lr.ph37.preheader ]
  br label %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.sink.split, !llvm.loop !68

_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.sink.split: ; preds = %.peel.next.i, %._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge
  %i.as = phi ptr [ %.lcssa, %._ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.loopexit_crit_edge ], [ %i.ap, %.peel.next.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  br label %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit

_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit: ; preds = %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.sink.split, %bb.c, %.peel.next.i.preheader
  %.sroa.06.0.lcssa.ph.i = phi i32 [ %i.am, %bb.c ], [ %i.am, %.peel.next.i.preheader ], [ %i.au, %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit.sink.split ]
  store i32 %3, ptr %0, align 4, !tbaa !3
  %.sroa.616.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.06.0.lcssa.ph.i, ptr %.sroa.616.0..sroa_idx19, align 4, !tbaa !3
  %.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <6 x i32> %.sroa.7.sroa.0.0, ptr %.sroa.7.0..sroa_idx22, align 4
  br label %bb.d

.critedge:                                        ; preds = %.lr.ph.i, %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %0, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.av, align 4, !tbaa !70
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit, %.critedge
  %.sink = phi i8 [ 1, %_ZNK6hermes3hbc9DebugInfo21getFilenameForAddressEj.exit ], [ 0, %.critedge ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.aw, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_129FunctionDebugInfoDeserializer4nextEv(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 33)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !28
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 13 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !75
  %i.i = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i32 noundef %i.h, ptr noundef nonnull %i.f) #14
  %i.j = load i32, ptr %i.g, align 8, !tbaa !75
  %i.k = add i32 %i.j, %i.i                       ; 2 uses
  store i32 %i.k, ptr %i.g, align 8, !tbaa !75
  %i.l = load i64, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %0, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.n, align 4, !tbaa !70
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %.sroa.0.0.copyload.i10 = load ptr, ptr %1, align 8, !tbaa !28
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.o = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload.i10, i64 %.sroa.2.0.copyload.i12, i32 noundef %i.k, ptr noundef nonnull %i.e) #14
  %i.p = load i32, ptr %i.g, align 8, !tbaa !75
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  store i32 %i.q, ptr %i.g, align 8, !tbaa !75
  %i.r = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %.sroa.0.0.copyload.i13 = load ptr, ptr %1, align 8, !tbaa !28
  %.sroa.2.0.copyload.i15 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.s = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload.i13, i64 %.sroa.2.0.copyload.i15, i32 noundef %i.q, ptr noundef nonnull %i.d) #14
  %i.t = load i32, ptr %i.g, align 8, !tbaa !75
  %i.u = add i32 %i.t, %i.s                       ; 2 uses
  store i32 %i.u, ptr %i.g, align 8, !tbaa !75
  %i.v = load i64, ptr %i.d, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %.sroa.0.0.copyload.i16 = load ptr, ptr %1, align 8, !tbaa !28
  %.sroa.2.0.copyload.i18 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.w = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload.i16, i64 %.sroa.2.0.copyload.i18, i32 noundef %i.u, ptr noundef nonnull %i.c) #14
  %i.x = load i32, ptr %i.g, align 8, !tbaa !75
  %i.y = add i32 %i.x, %i.w                       ; 2 uses
  store i32 %i.y, ptr %i.g, align 8, !tbaa !75
  %i.z = load i64, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %.sroa.0.0.copyload.i19 = load ptr, ptr %1, align 8, !tbaa !28
  %.sroa.2.0.copyload.i21 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.aa = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload.i19, i64 %.sroa.2.0.copyload.i21, i32 noundef %i.y, ptr noundef nonnull %i.b) #14
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !75
  %i.ac = add i32 %i.ab, %i.aa                    ; 2 uses
  store i32 %i.ac, ptr %i.g, align 8, !tbaa !75
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %2 = and i64 %i.r, 1
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.sroa.0.0.copyload.i22 = load ptr, ptr %1, align 8, !tbaa !28
  %.sroa.2.0.copyload.i24 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !20
  %i.ae = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload.i22, i64 %.sroa.2.0.copyload.i24, i32 noundef %i.ac, ptr noundef nonnull %i.a) #14
  %i.af = load i32, ptr %i.g, align 8, !tbaa !75
  %i.ag = add i32 %i.af, %i.ae
  store i32 %i.ag, ptr %i.g, align 8, !tbaa !75
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ai = trunc i64 %i.ah to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.ai, %bb.d ], [ 0, %bb.c ]
  %i.aj = lshr i64 %i.r, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !79
  %i.am = trunc i64 %i.l to i32
  %i.an = add i32 %i.al, %i.am
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !79
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !74
  %i.aq = trunc i64 %i.aj to i32
  %i.ar = add i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !74
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !76
  %i.au = trunc i64 %i.v to i32
  %i.av = add i32 %i.at, %i.au
  store i32 %i.av, ptr %i.as, align 8, !tbaa !76
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !80
  %i.ay = add i32 %i.ax, %.0
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !80
  %i.az = trunc i64 %i.z to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !81
  %i.bb = trunc i64 %i.ad to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !tbaa.struct !83
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sink = phi i8 [ 1, %bb.e ], [ 0, %bb.b ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.bd, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc9DebugInfo21getAddressForLocationEjjNS_8OptValueIjEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.hermes::OptValue.11") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i32 noundef %2, i32 noundef %3, i64 %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 8 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %.sroa.093.0.extract.trunc = trunc i64 %4 to i32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !64   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx = mul nuw nsw i64 %i.n, 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not192 = icmp eq i32 %i.m, 0
  br i1 %.not192, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = load i32, ptr %i.p, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.0196 = phi i32 [ 0, %.lr.ph ], [ %.2.ph, %bb.e ] ; 2 uses
  %.031195 = phi i32 [ 0, %.lr.ph ], [ %.233.ph, %bb.e ]
  %.035194 = phi i8 [ 0, %.lr.ph ], [ %.237.ph, %bb.e ]
  %.039193 = phi ptr [ %i.k, %.lr.ph ], [ %i.x, %bb.e ] ; 4 uses
  %i.r = trunc nuw i8 %.035194 to i1
  br i1 %i.r, label %.thread104, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.039193, i64 4
  %i.t = load i32, ptr %i.s, align 1, !tbaa !84
  %i.u = icmp eq i32 %i.t, %2
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %.039193, align 1, !tbaa !66
  br label %bb.e

.thread104:                                       ; preds = %bb.b
  %i.w = load i32, ptr %.039193, align 1, !tbaa !66
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.237.ph = phi i8 [ 0, %bb.c ], [ 1, %bb.d ]    ; 2 uses
  %.233.ph = phi i32 [ %.031195, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %.2.ph = phi i32 [ %.0196, %bb.c ], [ %i.v, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.039193, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.o
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.e
  %i.y = trunc nuw i8 %.237.ph to i1
  br i1 %i.y, label %bb.f, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %bb.q

bb.f:                                             ; preds = %.thread104, %._crit_edge
  %.0188 = phi i32 [ %.0196, %.thread104 ], [ %.2.ph, %._crit_edge ] ; 2 uses
  %.334108 = phi i32 [ %i.w, %.thread104 ], [ %.233.ph, %._crit_edge ] ; 2 uses
  %i.z = icmp ult i32 %.0188, %.334108
  br i1 %i.z, label %.lr.ph219, label %._crit_edge220.thread

.lr.ph219:                                        ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ab = and i64 %4, 4294967296
  %.not173 = icmp eq i64 %i.ab, 0
  br label %bb.g

.loopexit:                                        ; preds = %bb.o, %bb.g
  %.sroa.087.1.lcssa = phi i32 [ %.sroa.087.0213, %bb.g ], [ %.sroa.087.2, %bb.o ] ; 2 uses
  %.sroa.588.1.lcssa = phi i32 [ %.sroa.588.0214, %bb.g ], [ %.sroa.588.2, %bb.o ] ; 3 uses
  %.sroa.990.1.lcssa = phi i32 [ %.sroa.990.0215, %bb.g ], [ %.sroa.990.2, %bb.o ] ; 2 uses
  %.sroa.1191.1.lcssa = phi i32 [ %.sroa.1191.0216, %bb.g ], [ %.sroa.1191.2, %bb.o ] ; 2 uses
  %.lcssa = phi i32 [ %i.ao, %bb.g ], [ %i.bv, %bb.o ] ; 2 uses
  %i.ac = icmp ult i32 %.lcssa, %.334108
  br i1 %i.ac, label %bb.g, label %._crit_edge220, !llvm.loop !85

bb.g:                                             ; preds = %.lr.ph219, %.loopexit
  %.040217 = phi i32 [ %.0188, %.lr.ph219 ], [ %.lcssa, %.loopexit ] ; 2 uses
  %.sroa.1191.0216 = phi i32 [ 0, %.lr.ph219 ], [ %.sroa.1191.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.990.0215 = phi i32 [ 0, %.lr.ph219 ], [ %.sroa.990.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.588.0214 = phi i32 [ -1, %.lr.ph219 ], [ %.sroa.588.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.087.0213 = phi i32 [ 0, %.lr.ph219 ], [ %.sroa.087.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.aa, align 8, !tbaa !28 ; 10 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !20 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.ad = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %.040217, ptr noundef nonnull %i.i) #14
  %i.ae = add i32 %i.ad, %.040217                 ; 2 uses
  %i.af = load i64, ptr %i.i, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.ah = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.ae, ptr noundef nonnull %i.h) #14
  %i.ai = add i32 %i.ah, %i.ae                    ; 2 uses
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.ak = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.ai, ptr noundef nonnull %i.g) #14
  %i.al = add i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = load i64, ptr %i.g, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14, !noalias !86
  %i.an = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.al, ptr noundef nonnull %i.f) #14, !noalias !86
  %i.ao = add i32 %i.an, %i.al                    ; 2 uses
  %i.ap = load i64, ptr %i.f, align 8, !tbaa !20, !noalias !86 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !86
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %.loopexit, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %bb.g
  %i.ar = trunc i64 %i.am to i32
  %i.as = trunc i64 %i.aj to i32
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader, %bb.o
  %i.at = phi i64 [ %i.bw, %bb.o ], [ %i.ap, %.lr.ph207.preheader ]
  %i.au = phi i32 [ %i.bv, %bb.o ], [ %i.ao, %.lr.ph207.preheader ] ; 2 uses
  %.sroa.1191.1205 = phi i32 [ %.sroa.1191.2, %bb.o ], [ %.sroa.1191.0216, %.lr.ph207.preheader ] ; 5 uses
  %.sroa.990.1204 = phi i32 [ %.sroa.990.2, %bb.o ], [ %.sroa.990.0215, %.lr.ph207.preheader ] ; 3 uses
  %.sroa.588.1203 = phi i32 [ %.sroa.588.2, %bb.o ], [ %.sroa.588.0214, %.lr.ph207.preheader ] ; 4 uses
  %.sroa.087.1202 = phi i32 [ %.sroa.087.2, %bb.o ], [ %.sroa.087.0213, %.lr.ph207.preheader ] ; 3 uses
  %.sroa.44.0201 = phi i32 [ %i.bj, %bb.o ], [ 0, %.lr.ph207.preheader ]
  %.sroa.49.0200 = phi i32 [ %i.bl, %bb.o ], [ %i.as, %.lr.ph207.preheader ]
  %.sroa.53.0199 = phi i32 [ %i.bn, %bb.o ], [ %i.ar, %.lr.ph207.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14, !noalias !89
  %i.av = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.au, ptr noundef nonnull %i.e) #14, !noalias !89
  %i.aw = add i32 %i.av, %i.au                    ; 2 uses
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !20, !noalias !89 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14, !noalias !89
  %i.ay = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.aw, ptr noundef nonnull %i.d) #14, !noalias !89
  %i.az = add i32 %i.ay, %i.aw                    ; 2 uses
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !20, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14, !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14, !noalias !89
  %i.bb = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.az, ptr noundef nonnull %i.c) #14, !noalias !89
  %i.bc = add i32 %i.bb, %i.az                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14, !noalias !89
  %i.bd = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.bc, ptr noundef nonnull %i.b) #14, !noalias !89
  %i.be = add i32 %i.bd, %i.bc                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !89
  %5 = and i64 %i.ax, 1
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14, !noalias !89
  %i.bf = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.be, ptr noundef nonnull %i.a) #14, !noalias !89
  %i.bg = add i32 %i.bf, %i.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !89
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph207, %bb.h
  %.sroa.20.1 = phi i32 [ %i.be, %.lr.ph207 ], [ %i.bg, %bb.h ] ; 2 uses
  %i.bh = lshr i64 %i.ax, 1
  %i.bi = trunc i64 %i.at to i32
  %i.bj = add i32 %.sroa.44.0201, %i.bi           ; 3 uses
  %i.bk = trunc i64 %i.bh to i32
  %i.bl = add i32 %.sroa.49.0200, %i.bk           ; 2 uses
  %i.bm = trunc i64 %i.ba to i32
  %i.bn = add i32 %.sroa.53.0199, %i.bm           ; 6 uses
  %i.bo = icmp eq i32 %i.bl, %3
  br i1 %i.bo, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bp = icmp eq i32 %i.bn, %.sroa.093.0.extract.trunc
  %or.cond172 = select i1 %.not173, i1 true, i1 %i.bp
  br i1 %or.cond172, label %.thread163, label %bb.k

.thread163:                                       ; preds = %bb.j
  store i32 %i.ag, ptr %0, align 4, !tbaa !3
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bj, ptr %.sroa.454.0..sroa_idx, align 4, !tbaa !3
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %.sroa.555.0..sroa_idx, align 4, !tbaa !3
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bn, ptr %.sroa.656.0..sroa_idx, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.bq, align 4, !tbaa !91
  br label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.br = icmp eq i32 %.sroa.588.1203, -1
  br i1 %i.br, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not48 = icmp ugt i32 %i.bn, %.sroa.093.0.extract.trunc
  br i1 %.not48, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = icmp ugt i32 %.sroa.1191.1205, %.sroa.093.0.extract.trunc
  %i.bt = icmp ugt i32 %i.bn, %.sroa.1191.1205
  %or.cond = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.k
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n, %bb.i
  %.sroa.087.2 = phi i32 [ %.sroa.087.1202, %bb.i ], [ %i.ag, %bb.n ], [ %.sroa.087.1202, %bb.l ], [ %.sroa.087.1202, %bb.m ] ; 2 uses
  %.sroa.588.2 = phi i32 [ %.sroa.588.1203, %bb.i ], [ %i.bj, %bb.n ], [ %.sroa.588.1203, %bb.l ], [ %.sroa.588.1203, %bb.m ] ; 2 uses
  %.sroa.990.2 = phi i32 [ %.sroa.990.1204, %bb.i ], [ %3, %bb.n ], [ %.sroa.990.1204, %bb.l ], [ %.sroa.990.1204, %bb.m ] ; 2 uses
  %.sroa.1191.2 = phi i32 [ %.sroa.1191.1205, %bb.i ], [ %i.bn, %bb.n ], [ %.sroa.1191.1205, %bb.l ], [ %.sroa.1191.1205, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14, !noalias !94
  %i.bu = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %.sroa.20.1, ptr noundef nonnull %i.f) #14, !noalias !94
  %i.bv = add i32 %i.bu, %.sroa.20.1              ; 2 uses
  %i.bw = load i64, ptr %i.f, align 8, !tbaa !20, !noalias !94 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !94
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %.loopexit, label %.lr.ph207

._crit_edge220:                                   ; preds = %.loopexit
  %i.by = icmp eq i32 %.sroa.588.1.lcssa, -1
  br i1 %i.by, label %._crit_edge220.thread, label %bb.p

._crit_edge220.thread:                            ; preds = %bb.f, %._crit_edge220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge220
  store i32 %.sroa.087.1.lcssa, ptr %0, align 4, !tbaa !3
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.588.1.lcssa, ptr %.sroa.588.0..sroa_idx, align 4, !tbaa !3
  %.sroa.990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.990.1.lcssa, ptr %.sroa.990.0..sroa_idx, align 4, !tbaa !3
  %.sroa.1191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.1191.1.lcssa, ptr %.sroa.1191.0..sroa_idx, align 4, !tbaa !3
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.bz, align 4, !tbaa !91
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge220.thread, %bb.p, %.thread163, %._crit_edge.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc9DebugInfo22getTextifiedCalleeUTF8Ejj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.hermes::OptValue.13") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !96   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !44
  %i.k = sub i32 %i.j, %i.g
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.o = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.n, i64 %i.l, i32 noundef %2, ptr noundef nonnull %i.c) #14
  %i.p = load i64, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.q = add nsw i64 %i.p, -1
  store i64 %i.q, ptr %i.c, align 8, !tbaa !20
  %.not30 = icmp eq i64 %i.p, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = add i32 %i.o, %2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.t = zext i32 %3 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01931 = phi i32 [ %i.r, %.lr.ph ], [ %i.x, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.u = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.n, i64 %i.l, i32 noundef %.01931, ptr noundef nonnull %i.d) #14
  %i.v = add i32 %i.u, %.01931                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.w = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.n, i64 %i.l, i32 noundef %i.v, ptr noundef nonnull %i.b) #14
  %i.x = add i32 %i.w, %i.v
  %i.y = load i64, ptr %i.b, align 8, !tbaa !20
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !44
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !62
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ag = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.af, i64 %i.ad, i32 noundef %i.z, ptr noundef nonnull %i.a) #14
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !20  ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.t
  br i1 %i.aj, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.ak = add i32 %i.ag, %i.z
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.al
  store ptr %i.am, ptr %0, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.an, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ao = icmp sgt i64 %i.ai, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br i1 %i.ao, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.aq = add nsw i64 %i.ap, -1
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc9DebugInfo18getScopeDescriptorEj(ptr dead_on_unwind noalias writable sret(%"struct.hermes::hbc::DebugScopeDescriptor") align 8 initializes((0, 5)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !99   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96
  %i.l = sub i32 %i.k, %i.h
  %i.m = zext i32 %i.l to i64                     ; 4 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.p = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %2, ptr noundef nonnull %i.c) #14
  %i.q = add i32 %i.p, %2                         ; 2 uses
  %i.r = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %i.q, ptr noundef nonnull %i.d) #14
  %i.s = add i32 %i.q, %i.r                       ; 2 uses
  %i.t = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.o, i64 %i.m, i32 noundef %i.s, ptr noundef nonnull %i.e) #14
  %i.u = add i32 %i.s, %i.t
  %i.v = load i64, ptr %i.e, align 8, !tbaa !20   ; 4 uses
  store i32 0, ptr %0, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i8 0, ptr %i.w, align 4, !tbaa !102
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !65
end_hunk_0
begin_hunk_1_@_ZNK6hermes3hbc9DebugInfo26disassembleFilesAndOffsetsERN4llvh11raw_ostreamE:bb.a
  store ptr %i.cn, ptr %i.l, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit49

_ZN4llvh11raw_ostreamlsEPKc.exit49:               ; preds = %bb.p, %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !99 ; 3 uses
  %i.cr = zext i32 %i.cq to i64                   ; 10 uses
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !63 ; 10 uses
  %.not180 = icmp eq i32 %i.cq, 0
  br i1 %.not180, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit49
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 22
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph177, %_ZN4llvh11raw_ostreamlsEPKc.exit92
  %i.dd = phi i64 [ 0, %.lr.ph177 ], [ %i.kk, %_ZN4llvh11raw_ostreamlsEPKc.exit92 ]
  %.028176 = phi i32 [ 0, %.lr.ph177 ], [ %.lcssa199, %_ZN4llvh11raw_ostreamlsEPKc.exit92 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.de = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.cs, i64 %i.cr, i32 noundef %.028176, ptr noundef nonnull %i.i) #14
  %i.df = add i32 %i.de, %.028176                 ; 2 uses
  %i.dg = load i64, ptr %i.i, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.dh = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.cs, i64 %i.cr, i32 noundef %i.df, ptr noundef nonnull %i.h) #14
  %i.di = add i32 %i.dh, %i.df                    ; 2 uses
  %i.dj = load i64, ptr %i.h, align 8, !tbaa !20  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  %i.dk = trunc i64 %i.dj to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.dl = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.cs, i64 %i.cr, i32 noundef %i.di, ptr noundef nonnull %i.g) #14
  %i.dm = add i32 %i.dl, %i.di                    ; 2 uses
  %i.dn = load i64, ptr %i.g, align 8, !tbaa !20  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  %i.do = trunc i64 %i.dn to i32
  %i.dp = load ptr, ptr %i.j, align 8, !tbaa !106
  %i.dq = load ptr, ptr %i.l, align 8, !tbaa !109 ; 2 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = icmp ult i64 %i.dt, 2
  br i1 %i.du, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dv = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.1, i64 noundef 2) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit52

bb.t:                                             ; preds = %bb.r
  store i16 8224, ptr %i.dq, align 1
  %i.dw = load ptr, ptr %i.l, align 8, !tbaa !109
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  store ptr %i.dx, ptr %i.l, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit52

_ZN4llvh11raw_ostreamlsEPKc.exit52:               ; preds = %bb.s, %bb.t
  %.0.i.i51 = phi ptr [ %i.dv, %bb.s ], [ %1, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i64 %i.dd, ptr %3, align 8, !tbaa !123, !alias.scope !134
  store i64 0, ptr %i.ct, align 8, !tbaa !128, !alias.scope !134
  store i32 6, ptr %i.cu, align 8, !tbaa !129, !alias.scope !134
  store i8 1, ptr %i.cv, align 4, !tbaa !130, !alias.scope !134
  store i8 0, ptr %i.cw, align 1, !tbaa !131, !alias.scope !134
  store i8 1, ptr %i.cx, align 2, !tbaa !132, !alias.scope !134
  %i.dy = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i51, ptr noundef nonnull align 8 dereferenceable(23) %3) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.dz = load ptr, ptr %i.j, align 8, !tbaa !106
  %i.ea = load ptr, ptr %i.l, align 8, !tbaa !109 ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = icmp ult i64 %i.ed, 15
  br i1 %i.ee, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit52
  %i.ef = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.9, i64 noundef 15) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit55

bb.v:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ea, ptr noundef nonnull align 1 dereferenceable(15) @.str.9, i64 15, i1 false)
  %i.eg = load ptr, ptr %i.l, align 8, !tbaa !109
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 15
  store ptr %i.eh, ptr %i.l, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit55

_ZN4llvh11raw_ostreamlsEPKc.exit55:               ; preds = %bb.u, %bb.v
  %.0.i.i54 = phi ptr [ %i.ef, %bb.u ], [ %1, %bb.v ]
  %i.ei = and i64 %i.dg, 4294967295
  %i.ej = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i54, i64 noundef %i.ei) #14 ; 0 uses
  %i.ek = load ptr, ptr %i.j, align 8, !tbaa !106
  %i.el = load ptr, ptr %i.l, align 8, !tbaa !109 ; 2 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = icmp ult i64 %i.eo, 17
  br i1 %i.ep, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit55
  %i.eq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.10, i64 noundef 17) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit58

bb.x:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.el, ptr noundef nonnull align 1 dereferenceable(17) @.str.10, i64 17, i1 false)
  %i.er = load ptr, ptr %i.l, align 8, !tbaa !109
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 17
  store ptr %i.es, ptr %i.l, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit58

_ZN4llvh11raw_ostreamlsEPKc.exit58:               ; preds = %bb.w, %bb.x
  %.0.i.i57 = phi ptr [ %i.eq, %bb.w ], [ %1, %bb.x ]
  %i.et = and i64 %i.dj, 4294967295
  %i.eu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i57, i64 noundef %i.et) #14 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !106
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !109 ; 2 uses
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = icmp ult i64 %i.fb, 5
  br i1 %i.fc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit58
  %i.fd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.eu, ptr noundef nonnull @.str.11, i64 noundef 5) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit61

bb.z:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ey, ptr noundef nonnull align 1 dereferenceable(5) @.str.11, i64 5, i1 false)
  %i.fe = load ptr, ptr %i.ex, align 8, !tbaa !109
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 5
  store ptr %i.ff, ptr %i.ex, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit61

_ZN4llvh11raw_ostreamlsEPKc.exit61:               ; preds = %bb.y, %bb.z
  %.0.i.i60 = phi ptr [ %i.fd, %bb.y ], [ %i.eu, %bb.z ]
  %i.fg = and i64 %i.dn, 4294967295
  %i.fh = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i60, i64 noundef %i.fg) #14 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !106
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 24 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !109 ; 2 uses
  %i.fm = icmp eq ptr %i.fj, %i.fl
  br i1 %i.fm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit61
  %i.fn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.fh, ptr noundef nonnull @.str.7, i64 noundef 1) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit64

bb.ab:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit61
  store i8 10, ptr %i.fl, align 1
  %i.fo = load ptr, ptr %i.fk, align 8, !tbaa !109
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  store ptr %i.fp, ptr %i.fk, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit64

_ZN4llvh11raw_ostreamlsEPKc.exit64:               ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14, !noalias !137
  %i.fq = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.cs, i64 %i.cr, i32 noundef %i.dm, ptr noundef nonnull %i.f) #14, !noalias !137
  %i.fr = add i32 %i.fq, %i.dm                    ; 2 uses
  %i.fs = load i64, ptr %i.f, align 8, !tbaa !20, !noalias !137 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !137
  %i.ft = icmp eq i64 %i.fs, -1
  br i1 %i.ft, label %._crit_edge174.thread, label %.lr.ph173

.lr.ph173:                                        ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit64, %bb.aw
  %i.fu = phi i64 [ %i.jy, %bb.aw ], [ %i.fs, %_ZN4llvh11raw_ostreamlsEPKc.exit64 ]
  %i.fv = phi i32 [ %i.jx, %bb.aw ], [ %i.fr, %_ZN4llvh11raw_ostreamlsEPKc.exit64 ] ; 2 uses
  %.026172 = phi i32 [ %i.jv, %bb.aw ], [ 0, %_ZN4llvh11raw_ostreamlsEPKc.exit64 ]
  %.sroa.43.0171 = phi i32 [ %i.gm, %bb.aw ], [ 0, %_ZN4llvh11raw_ostreamlsEPKc.exit64 ]
  %.sroa.48.0170 = phi i32 [ %i.go, %bb.aw ], [ %i.dk, %_ZN4llvh11raw_ostreamlsEPKc.exit64 ]
  %.sroa.53.0169 = phi i32 [ %i.gq, %bb.aw ], [ %i.do, %_ZN4llvh11raw_ostreamlsEPKc.exit64 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14, !noalias !140
  %i.fw = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.cs, i64 %i.cr, i32 noundef %i.fv, ptr noundef nonnull %i.e) #14, !noalias !140
  %i.fx = add i32 %i.fw, %i.fv                    ; 2 uses
  %i.fy = load i64, ptr %i.e, align 8, !tbaa !20, !noalias !140 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14, !noalias !140
  %i.fz = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.cs, i64 %i.cr, i32 noundef %i.fx, ptr noundef nonnull %i.d) #14, !noalias !140
  %i.ga = add i32 %i.fz, %i.fx                    ; 2 uses
  %i.gb = load i64, ptr %i.d, align 8, !tbaa !20, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14, !noalias !140
  %i.gc = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.cs, i64 %i.cr, i32 noundef %i.ga, ptr noundef nonnull %i.c) #14, !noalias !140
  %i.gd = add i32 %i.gc, %i.ga                    ; 2 uses
  %i.ge = load i64, ptr %i.c, align 8, !tbaa !20, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14, !noalias !140
  %i.gf = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.cs, i64 %i.cr, i32 noundef %i.gd, ptr noundef nonnull %i.b) #14, !noalias !140
  %i.gg = add i32 %i.gf, %i.gd                    ; 3 uses
  %i.gh = load i64, ptr %i.b, align 8, !tbaa !20, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !140
  %6 = and i64 %i.fy, 1
  %.not.i65 = icmp eq i64 %6, 0
  br i1 %.not.i65, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14, !noalias !140
  %i.gi = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.cs, i64 %i.cr, i32 noundef %i.gg, ptr noundef nonnull %i.a) #14, !noalias !140
  %i.gj = add i32 %i.gi, %i.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !140
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph173, %bb.ac
  %.sroa.20.1 = phi i32 [ %i.gg, %.lr.ph173 ], [ %i.gj, %bb.ac ] ; 2 uses
  %i.gk = lshr i64 %i.fy, 1
  %i.gl = trunc i64 %i.fu to i32
  %i.gm = add i32 %.sroa.43.0171, %i.gl           ; 2 uses
  %i.gn = trunc i64 %i.gk to i32
  %i.go = add i32 %.sroa.48.0170, %i.gn           ; 2 uses
  %i.gp = trunc i64 %i.gb to i32
  %i.gq = add i32 %.sroa.53.0169, %i.gp           ; 2 uses
  %i.gr = load ptr, ptr %i.j, align 8, !tbaa !106
  %i.gs = load ptr, ptr %i.l, align 8, !tbaa !109 ; 2 uses
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = icmp ult i64 %i.gv, 7
  br i1 %i.gw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.12, i64 noundef 7) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.gs, ptr noundef nonnull align 1 dereferenceable(7) @.str.12, i64 7, i1 false)
  %i.gy = load ptr, ptr %i.l, align 8, !tbaa !109
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 7
  store ptr %i.gz, ptr %i.l, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

_ZN4llvh11raw_ostreamlsEPKc.exit68:               ; preds = %bb.ae, %bb.af
  %.0.i.i67 = phi ptr [ %i.gx, %bb.ae ], [ %1, %bb.af ]
  %i.ha = zext i32 %i.gm to i64
  %i.hb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i67, i64 noundef %i.ha) #14 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !106
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 24 ; 3 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !109 ; 2 uses
  %i.hg = ptrtoint ptr %i.hd to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = icmp ult i64 %i.hi, 7
  br i1 %i.hj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit68
  %i.hk = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.hb, ptr noundef nonnull @.str.13, i64 noundef 7) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit71

bb.ah:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.hf, ptr noundef nonnull align 1 dereferenceable(7) @.str.13, i64 7, i1 false)
  %i.hl = load ptr, ptr %i.he, align 8, !tbaa !109
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 7
  store ptr %i.hm, ptr %i.he, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit71

_ZN4llvh11raw_ostreamlsEPKc.exit71:               ; preds = %bb.ag, %bb.ah
  %.0.i.i70 = phi ptr [ %i.hk, %bb.ag ], [ %i.hb, %bb.ah ]
  %i.hn = zext i32 %i.go to i64
  %i.ho = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i70, i64 noundef %i.hn) #14 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !106
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 24 ; 3 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !109 ; 2 uses
  %i.ht = ptrtoint ptr %i.hq to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = icmp ult i64 %i.hv, 5
  br i1 %i.hw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit71
  %i.hx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ho, ptr noundef nonnull @.str.11, i64 noundef 5) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit74

bb.aj:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.hs, ptr noundef nonnull align 1 dereferenceable(5) @.str.11, i64 5, i1 false)
  %i.hy = load ptr, ptr %i.hr, align 8, !tbaa !109
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 5
  store ptr %i.hz, ptr %i.hr, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit74

_ZN4llvh11raw_ostreamlsEPKc.exit74:               ; preds = %bb.ai, %bb.aj
  %.0.i.i73 = phi ptr [ %i.hx, %bb.ai ], [ %i.ho, %bb.aj ]
  %i.ia = zext i32 %i.gq to i64
  %i.ib = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i73, i64 noundef %i.ia) #14 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !106
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 24 ; 3 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !109 ; 2 uses
  %i.ig = ptrtoint ptr %i.id to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = icmp ult i64 %i.ii, 14
  br i1 %i.ij, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit74
  %i.ik = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ib, ptr noundef nonnull @.str.14, i64 noundef 14) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit77

bb.al:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.if, ptr noundef nonnull align 1 dereferenceable(14) @.str.14, i64 14, i1 false)
  %i.il = load ptr, ptr %i.ie, align 8, !tbaa !109
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 14
  store ptr %i.im, ptr %i.ie, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit77

_ZN4llvh11raw_ostreamlsEPKc.exit77:               ; preds = %bb.ak, %bb.al
  %.0.i.i76 = phi ptr [ %i.ik, %bb.ak ], [ %i.ib, %bb.al ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.in = and i64 %i.ge, 4294967295
  store i64 %i.in, ptr %4, align 8, !tbaa !123, !alias.scope !142
  store i64 0, ptr %i.cy, align 8, !tbaa !128, !alias.scope !142
  store i32 6, ptr %i.cz, align 8, !tbaa !129, !alias.scope !142
  store i8 1, ptr %i.da, align 4, !tbaa !130, !alias.scope !142
  store i8 0, ptr %i.db, align 1, !tbaa !131, !alias.scope !142
  store i8 1, ptr %i.dc, align 2, !tbaa !132, !alias.scope !142
  %i.io = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i76, ptr noundef nonnull align 8 dereferenceable(23) %4) #14 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !106
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 24 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !109 ; 2 uses
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = icmp ult i64 %i.iv, 5
  br i1 %i.iw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit77
  %i.ix = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.io, ptr noundef nonnull @.str.15, i64 noundef 5) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit80

bb.an:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.is, ptr noundef nonnull align 1 dereferenceable(5) @.str.15, i64 5, i1 false)
  %i.iy = load ptr, ptr %i.ir, align 8, !tbaa !109
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 5
  store ptr %i.iz, ptr %i.ir, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit80

_ZN4llvh11raw_ostreamlsEPKc.exit80:               ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.ja = and i64 %i.gh, 4294967295               ; 2 uses
  %.not = icmp eq i64 %i.ja, 4294967295
  %i.jb = load ptr, ptr %i.j, align 8, !tbaa !106 ; 2 uses
  %i.jc = load ptr, ptr %i.l, align 8, !tbaa !109 ; 4 uses
  br i1 %.not, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit80
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.je = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.16, i64 noundef 1) #14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit83

bb.aq:                                            ; preds = %bb.ao
  store i8 114, ptr %i.jc, align 1
  %i.jf = load ptr, ptr %i.l, align 8, !tbaa !109
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 1
  store ptr %i.jg, ptr %i.l, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit83

_ZN4llvh11raw_ostreamlsEPKc.exit83:               ; preds = %bb.ap, %bb.aq
  %.0.i.i82 = phi ptr [ %i.je, %bb.ap ], [ %1, %bb.aq ]
  %i.jh = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i82, i64 noundef %i.ja) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit86

bb.ar:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit80
  %i.ji = ptrtoint ptr %i.jb to i64
  %i.jj = ptrtoint ptr %i.jc to i64
  %i.jk = sub i64 %i.ji, %i.jj
  %i.jl = icmp ult i64 %i.jk, 4
  br i1 %i.jl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jm = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.17, i64 noundef 4) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit86

bb.at:                                            ; preds = %bb.ar
  store i32 1701736302, ptr %i.jc, align 1
  %i.jn = load ptr, ptr %i.l, align 8, !tbaa !109
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  store ptr %i.jo, ptr %i.l, align 8, !tbaa !109
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit86

_ZN4llvh11raw_ostreamlsEPKc.exit86:               ; preds = %bb.at, %bb.as, %_ZN4llvh11raw_ostreamlsEPKc.exit83
  %i.jp = load ptr, ptr %i.j, align 8, !tbaa !106
  %i.jq = load ptr, ptr %i.l, align 8, !tbaa !109 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit86
  %i.js = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.7, i64 noundef 1) #14 ; 0 uses
  br label %bb.aw

bb.av:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit86
  store i8 10, ptr %i.jq, align 1
  %i.jt = load ptr, ptr %i.l, align 8, !tbaa !109
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  store ptr %i.ju, ptr %i.l, align 8, !tbaa !109
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.jv = add i32 %.026172, 1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14, !noalias !145
  %i.jw = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %i.cs, i64 %i.cr, i32 noundef %.sroa.20.1, ptr noundef nonnull %i.f) #14, !noalias !145
  %i.jx = add i32 %i.jw, %.sroa.20.1              ; 3 uses
  %i.jy = load i64, ptr %i.f, align 8, !tbaa !20, !noalias !145 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !145
  %i.jz = icmp eq i64 %i.jy, -1
  br i1 %i.jz, label %._crit_edge174, label %.lr.ph173
end_hunk_1
