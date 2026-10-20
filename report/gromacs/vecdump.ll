Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/vecdump?download=true
inline.NumInlined: 68
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3gmx12_GLOBAL__N_125dumpFloatingPointArrayRefIfEENSt9enable_ifIXsr3stdE19is_floating_point_vIT_EEvE4typeEPNS_10TextWriterEPKcNS_8ArrayRefIKS3_EEb:bb.a

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx18dumpDoubleArrayRefEPNS_10TextWriterEPKcNS_8ArrayRefIKdEEb(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3, i1 noundef zeroext %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.gmx::ScopedIndenter", align 8 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN3gmx16checkIfAvailableEPNS_10TextWriterEPKcPKv(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.b, label %_ZN3gmx12_GLOBAL__N_125dumpFloatingPointArrayRefIdEENSt9enable_ifIXsr3stdE19is_floating_point_vIT_EEvE4typeEPNS_10TextWriterEPKcNS_8ArrayRefIKS3_EEb.exit

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %3 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 3                   ; 3 uses
  %i.f = trunc i64 %i.e to i32
  tail call void @_ZN3gmx17printTitleAndSizeEPNS_10TextWriterEPKci(ptr noundef %0, ptr noundef %1, i32 noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @_ZN3gmx14ScopedIndenterC1EPNS_10TextWriterEi(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %0, i32 noundef 3)
  %.not15.i = icmp eq ptr %3, %2
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  br i1 %4, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.c
  %indvars.iv19.i = phi i64 [ %indvars.iv.next20.i, %bb.c ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv19.i
  %i.h = load double, ptr %i.g, align 8, !tbaa !14
  %i.i = trunc nuw nsw i64 %indvars.iv19.i to i32
  invoke void (ptr, ptr, ...) @_ZN3gmx10TextWriter20writeStringFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef %i.i, double noundef %i.h)
          to label %bb.c unwind label %.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %.not.us.i = icmp eq i64 %i.e, %indvars.iv.next20.i
  br i1 %.not.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %bb.d, %bb.c, %bb.b
  call void @_ZN3gmx14ScopedIndenterD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %_ZN3gmx12_GLOBAL__N_125dumpFloatingPointArrayRefIdEENSt9enable_ifIXsr3stdE19is_floating_point_vIT_EEvE4typeEPNS_10TextWriterEPKcNS_8ArrayRefIKS3_EEb.exit

.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.split.us.i, %.lr.ph.split.i
  %lpad.loopexit.split-lp9 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx14ScopedIndenterD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %lpad.loopexit.split-lp9

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !14
  invoke void (ptr, ptr, ...) @_ZN3gmx10TextWriter20writeStringFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef -1, double noundef %i.k)
          to label %bb.d unwind label %.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %i.e, %indvars.iv.next.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !17

_ZN3gmx12_GLOBAL__N_125dumpFloatingPointArrayRefIdEENSt9enable_ifIXsr3stdE19is_floating_point_vIT_EEvE4typeEPNS_10TextWriterEPKcNS_8ArrayRefIKS3_EEb.exit: ; preds = %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16dumpRealArrayRefEPNS_10TextWriterEPKcNS_8ArrayRefIKfEEb(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  tail call fastcc void @_ZN3gmx12_GLOBAL__N_125dumpFloatingPointArrayRefIfEENSt9enable_ifIXsr3stdE19is_floating_point_vIT_EEvE4typeEPNS_10TextWriterEPKcNS_8ArrayRefIKS3_EEb(ptr noundef %0, ptr noundef %1, ptr %2, ptr %i.d, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16dumpRvecArrayRefEPNS_10TextWriterEPKcNS_8ArrayRefIKNS_11BasicVectorIfEEEE(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.gmx::ScopedIndenter", align 8 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN3gmx16checkIfAvailableEPNS_10TextWriterEPKcPKv(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.2) #8
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  %i.c = select i1 %.not, i32 12, i32 15          ; 3 uses
  %i.d = select i1 %.not, i32 5, i32 8            ; 3 uses
  %i.e = ptrtoint ptr %3 to i64
  %i.f = ptrtoint ptr %2 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 12                  ; 2 uses
  tail call void (ptr, ptr, ...) @_ZN3gmx10TextWriter20writeStringFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, ptr noundef %1, i64 noundef %i.h, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @_ZN3gmx14ScopedIndenterC1EPNS_10TextWriterEi(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull %0, i32 noundef 3)
  %i.i = icmp sgt i64 %i.g, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @_ZN3gmx14ScopedIndenterD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx14ScopedIndenterD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  resume { ptr, i32 } %i.j

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = fpext float %i.l to double
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load <2 x float>, ptr %i.n, align 4, !tbaa !12
  %i.p = fpext <2 x float> %i.o to <2 x double>   ; 2 uses
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = extractelement <2 x double> %i.p, i64 0
  %i.s = extractelement <2 x double> %i.p, i64 1
  invoke void (ptr, ptr, ...) @_ZN3gmx10TextWriter20writeStringFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, ptr noundef %1, i32 noundef %i.q, i32 noundef %i.c, i32 noundef %i.d, double noundef %i.m, i32 noundef %i.c, i32 noundef %i.d, double noundef %i.r, i32 noundef %i.c, i32 noundef %i.d, double noundef %i.s)
          to label %bb.d unwind label %bb.c

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

bb.e:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z7pr_ivecP8_IO_FILEiPKcPKiib(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_Z9availableP8_IO_FILEPKviPKc(ptr noundef %0, ptr noundef %3, i32 noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_Z10pr_title_nP8_IO_FILEiPKci(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4) ; 2 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %wide.trip.count24 = zext nneg i32 %4 to i64    ; 2 uses
  br i1 %5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.d = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.b) ; 0 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv21
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %i.g = trunc nuw nsw i64 %indvars.iv21 to i32
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %2, i32 noundef %i.g, i32 noundef %i.f) #8 ; 0 uses
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count24
  br i1 %exitcond25.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !19

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.i = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.b) ; 0 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %2, i32 noundef -1, i32 noundef %i.k) #8 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count24
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !19

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_Z9availableP8_IO_FILEPKviPKc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z10pr_title_nP8_IO_FILEiPKci(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z13pr_ivec_blockP8_IO_FILEiPKcPKiib(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_Z9availableP8_IO_FILEPKviPKc(ptr noundef %0, ptr noundef %3, i32 noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.b, label %.loopexit46

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_Z10pr_title_nP8_IO_FILEiPKci(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4) ; 4 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.preheader45.lr.ph, label %.loopexit46

.preheader45.lr.ph:                               ; preds = %bb.b
  %i.d = zext nneg i32 %4 to i64                  ; 4 uses
  br i1 %5, label %.preheader45.us, label %.preheader45

.preheader45.us:                                  ; preds = %.preheader45.lr.ph, %.loopexit.us
  %.04349.us = phi i32 [ %.2.us, %.loopexit.us ], [ 0, %.preheader45.lr.ph ] ; 7 uses
  %i.e = zext nneg i32 %.04349.us to i64          ; 4 uses
  %i.f = add nuw nsw i32 %.04349.us, 1
  %smax58 = tail call i32 @llvm.smax.i32(i32 %4, i32 %i.f) ; 3 uses
  %i.g = add nsw i32 %smax58, -1                  ; 2 uses
  %indvars.iv.next5783 = add nuw nsw i64 %i.e, 1  ; 2 uses
  %i.h = icmp samesign ult i64 %indvars.iv.next5783, %i.d
  br i1 %i.h, label %.lr.ph86, label %.critedge.us

bb.c:                                             ; preds = %.lr.ph86
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv.next5785, 1 ; 2 uses
  %i.i = icmp samesign ult i64 %indvars.iv.next57, %i.d
  br i1 %i.i, label %.lr.ph86, label %.critedge.us, !llvm.loop !20

.lr.ph86:                                         ; preds = %.preheader45.us, %bb.c
  %indvars.iv.next5785 = phi i64 [ %indvars.iv.next57, %bb.c ], [ %indvars.iv.next5783, %.preheader45.us ] ; 4 uses
  %indvars.iv5684 = phi i64 [ %indvars.iv.next5785, %bb.c ], [ %i.e, %.preheader45.us ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next5785
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv5684
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  %i.n = add nsw i32 %i.m, 1
  %i.o = icmp eq i32 %i.k, %i.n
  br i1 %i.o, label %bb.c, label %.critedge.us.split.loop.exit, !llvm.loop !20

.critedge.us.split.loop.exit:                     ; preds = %.lr.ph86
  %i.p = trunc nuw nsw i64 %indvars.iv5684 to i32
  %i.q = trunc nuw nsw i64 %indvars.iv.next5785 to i32
  br label %.critedge.us

.critedge.us:                                     ; preds = %bb.c, %.preheader45.us, %.critedge.us.split.loop.exit
  %.0.in.us.lcssa = phi i32 [ %i.p, %.critedge.us.split.loop.exit ], [ %i.g, %.preheader45.us ], [ %i.g, %bb.c ] ; 3 uses
  %.0.us.lcssa = phi i32 [ %i.q, %.critedge.us.split.loop.exit ], [ %smax58, %.preheader45.us ], [ %smax58, %bb.c ] ; 3 uses
  %i.r = sub nsw i32 %.0.us.lcssa, %.04349.us
  %i.s = icmp slt i32 %i.r, 3
  br i1 %i.s, label %.preheader.us, label %bb.d

bb.d:                                             ; preds = %.critedge.us
  %i.t = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.b) ; 0 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.e
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9
  %i.w = zext nneg i32 %.0.in.us.lcssa to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !9
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %2, i32 noundef %.04349.us, i32 noundef %.0.in.us.lcssa, i32 noundef %i.v, i32 noundef %i.y) #8 ; 0 uses
  br label %.loopexit.us

.preheader.us:                                    ; preds = %.critedge.us
  %6 = icmp slt i32 %.04349.us, %.0.us.lcssa
  br i1 %6, label %.lr.ph.us.preheader, label %.loopexit.us

.lr.ph.us.preheader:                              ; preds = %.preheader.us
  %smax63 = tail call i32 @llvm.smax.i32(i32 %.04349.us, i32 %.0.in.us.lcssa)
  %i.aa = add nuw nsw i32 %smax63, 1              ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %indvars.iv60 = phi i64 [ %i.e, %.lr.ph.us.preheader ], [ %indvars.iv.next61, %.lr.ph.us ] ; 3 uses
  %i.ab = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.b) ; 0 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv60
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.ae = trunc nsw i64 %indvars.iv60 to i32
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %2, i32 noundef %i.ae, i32 noundef %i.ad) #8 ; 0 uses
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %lftr.wideiv63 = trunc i64 %indvars.iv.next61 to i32
  %exitcond64.not = icmp eq i32 %i.aa, %lftr.wideiv63
  br i1 %exitcond64.not, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !21

.loopexit.us:                                     ; preds = %.lr.ph.us, %.preheader.us, %bb.d
  %.2.us = phi i32 [ %.0.us.lcssa, %bb.d ], [ %.04349.us, %.preheader.us ], [ %i.aa, %.lr.ph.us ] ; 2 uses
  %i.ag = icmp slt i32 %.2.us, %4
  br i1 %i.ag, label %.preheader45.us, label %.loopexit46, !llvm.loop !22

.preheader45:                                     ; preds = %.preheader45.lr.ph, %.loopexit
  %.04349 = phi i32 [ %.2, %.loopexit ], [ 0, %.preheader45.lr.ph ] ; 6 uses
  %i.ah = zext nneg i32 %.04349 to i64            ; 4 uses
  %i.ai = add nuw nsw i32 %.04349, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 %i.ai) ; 3 uses
  %i.aj = add nsw i32 %smax, -1                   ; 2 uses
  %indvars.iv.next79 = add nuw nsw i64 %i.ah, 1   ; 2 uses
  %i.ak = icmp samesign ult i64 %indvars.iv.next79, %i.d
  br i1 %i.ak, label %.lr.ph82, label %.critedge

bb.e:                                             ; preds = %.lr.ph82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next81, 1 ; 2 uses
  %i.al = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.al, label %.lr.ph82, label %.critedge, !llvm.loop !20

.lr.ph82:                                         ; preds = %.preheader45, %bb.e
  %indvars.iv.next81 = phi i64 [ %indvars.iv.next, %bb.e ], [ %indvars.iv.next79, %.preheader45 ] ; 4 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %bb.e ], [ %i.ah, %.preheader45 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next81
  %i.an = load i32, ptr %i.am, align 4, !tbaa !9
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv80
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !9
  %i.aq = add nsw i32 %i.ap, 1
  %i.ar = icmp eq i32 %i.an, %i.aq
  br i1 %i.ar, label %bb.e, label %.critedge.split.loop.exit68, !llvm.loop !20

.critedge.split.loop.exit68:                      ; preds = %.lr.ph82
  %i.as = trunc nuw nsw i64 %indvars.iv80 to i32
  %i.at = trunc nuw nsw i64 %indvars.iv.next81 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.preheader45, %.critedge.split.loop.exit68
  %.0.in.lcssa = phi i32 [ %i.as, %.critedge.split.loop.exit68 ], [ %i.aj, %.preheader45 ], [ %i.aj, %bb.e ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.at, %.critedge.split.loop.exit68 ], [ %smax, %.preheader45 ], [ %smax, %bb.e ] ; 3 uses
  %i.au = sub nsw i32 %.0.lcssa, %.04349
  %i.av = icmp slt i32 %i.au, 3
  br i1 %i.av, label %.preheader, label %bb.f

.preheader:                                       ; preds = %.critedge
  %7 = icmp slt i32 %.04349, %.0.lcssa
  br i1 %7, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %smax55 = tail call i32 @llvm.smax.i32(i32 %.04349, i32 %.0.in.lcssa)
  %i.aw = add nuw nsw i32 %smax55, 1              ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv53 = phi i64 [ %i.ah, %.lr.ph.preheader ], [ %indvars.iv.next54, %.lr.ph ] ; 2 uses
  %i.ax = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.b) ; 0 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv53
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !9
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %2, i32 noundef -1, i32 noundef %i.az) #8 ; 0 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next54 to i32
  %exitcond.not = icmp eq i32 %i.aw, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !21

bb.f:                                             ; preds = %.critedge
  %i.bb = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.b) ; 0 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ah
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !9
  %i.be = zext nneg i32 %.0.in.lcssa to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !9
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %2, i32 noundef -1, i32 noundef -1, i32 noundef %i.bd, i32 noundef %i.bg) #8 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.f
  %.2 = phi i32 [ %.0.lcssa, %bb.f ], [ %.04349, %.preheader ], [ %i.aw, %.lr.ph ] ; 2 uses
  %i.bi = icmp slt i32 %.2, %4
  br i1 %i.bi, label %.preheader45, label %.loopexit46, !llvm.loop !22

.loopexit46:                                      ; preds = %.loopexit, %.loopexit.us, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z8pr_ivecsP8_IO_FILEiPKcPA3_Kiib(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_Z9availableP8_IO_FILEPKviPKc(ptr noundef %0, ptr noundef %3, i32 noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_Z12pr_title_nxnP8_IO_FILEiPKcii(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef 3) ; 2 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %wide.trip.count39 = zext nneg i32 %4 to i64    ; 2 uses
  br i1 %5, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph, %.lr.ph.split.us.preheader
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %.lr.ph.split.us.preheader ], [ 0, %.lr.ph ] ; 3 uses
  %i.d = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.b) ; 0 uses
  %i.e = trunc nuw nsw i64 %indvars.iv36 to i32
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %2, i32 noundef %i.e) #8 ; 0 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv36 ; 3 uses
  %.pre42 = load i32, ptr %i.g, align 4, !tbaa !9
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %.pre42) #8 ; 0 uses
  %fwrite26.us.1 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.j) #8 ; 0 uses
  %fwrite26.us.2 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.m) #8 ; 0 uses
  %fwrite.us = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %0) ; 0 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %.loopexit, label %.lr.ph.split.us.preheader, !llvm.loop !23

.lr.ph.split.preheader:                           ; preds = %.lr.ph, %.lr.ph.split.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.preheader ], [ 0, %.lr.ph ] ; 2 uses
  %i.o = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.b) ; 0 uses
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %2, i32 noundef -1) #8 ; 0 uses
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %.pre = load i32, ptr %i.q, align 4, !tbaa !9
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %.pre) #8 ; 0 uses
  %fwrite26.1 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !9
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.t) #8 ; 0 uses
  %fwrite26.2 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.w) #8 ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %0) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count39
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.preheader, !llvm.loop !23

.loopexit:                                        ; preds = %.lr.ph.split.preheader, %.lr.ph.split.us.preheader, %bb.b, %bb.a
  ret void
}

declare noundef i32 @_Z12pr_title_nxnP8_IO_FILEiPKcii(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z7pr_rvecP8_IO_FILEiPKcPKfib(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZL15printRealVectorIfEvP8_IO_FILEiPKcPKT_ib(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL15printRealVectorIfEvP8_IO_FILEiPKcPKT_ib(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_Z9availableP8_IO_FILEPKviPKc(ptr noundef %0, ptr noundef %3, i32 noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_Z10pr_title_nP8_IO_FILEiPKci(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4) ; 2 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %wide.trip.count24 = zext nneg i32 %4 to i64    ; 2 uses
  br i1 %5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.d = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.b) ; 0 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv21
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = fpext float %i.f to double
  %i.h = trunc nuw nsw i64 %indvars.iv21 to i32
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %2, i32 noundef %i.h, double noundef %i.g) #8 ; 0 uses
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count24
  br i1 %exitcond25.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !24

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.j = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.b) ; 0 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = fpext float %i.l to double
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %2, i32 noundef -1, double noundef %i.m) #8 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count24
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !24

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z7pr_fvecP8_IO_FILEiPKcPKfib(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZL15printRealVectorIfEvP8_IO_FILEiPKcPKT_ib(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z7pr_dvecP8_IO_FILEiPKcPKdib(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_Z9availableP8_IO_FILEPKviPKc(ptr noundef %0, ptr noundef %3, i32 noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.b, label %_ZL15printRealVectorIdEvP8_IO_FILEiPKcPKT_ib.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_Z10pr_title_nP8_IO_FILEiPKci(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4) ; 2 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZL15printRealVectorIdEvP8_IO_FILEiPKcPKT_ib.exit

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count24.i = zext nneg i32 %4 to i64  ; 2 uses
  br i1 %5, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %.lr.ph.split.us.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.d = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.b) ; 0 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv21.i
  %i.f = load double, ptr %i.e, align 8, !tbaa !14
  %i.g = trunc nuw nsw i64 %indvars.iv21.i to i32
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %2, i32 noundef %i.g, double noundef %i.f) #8 ; 0 uses
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next22.i, %wide.trip.count24.i
  br i1 %exitcond25.not.i, label %_ZL15printRealVectorIdEvP8_IO_FILEiPKcPKT_ib.exit, label %.lr.ph.split.us.i, !llvm.loop !25

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.split.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.i = tail call noundef i32 @_Z9pr_indentP8_IO_FILEi(ptr noundef %0, i32 noundef %i.b) ; 0 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !14
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %2, i32 noundef -1, double noundef %i.k) #8 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count24.i
  br i1 %exitcond.not.i, label %_ZL15printRealVectorIdEvP8_IO_FILEiPKcPKT_ib.exit, label %.lr.ph.split.i, !llvm.loop !25

_ZL15printRealVectorIdEvP8_IO_FILEiPKcPKT_ib.exit: ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z8pr_rvecsP8_IO_FILEiPKcPA3_Kfi(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.2) #8
  %.not = icmp eq ptr %i.a, null
  %.str.10..str.11 = select i1 %.not, ptr @.str.10, ptr @.str.11 ; 3 uses
  %i.b = tail call noundef zeroext i1 @_Z9availableP8_IO_FILEPKviPKc(ptr noundef %0, ptr noundef %3, i32 noundef %1, ptr noundef %2)
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
end_hunk_0
