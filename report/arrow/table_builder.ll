inline.NumInlined: 632
inline.NumDeleted: 362
begin_hunk_0_@_ZNK5arrow18TypedChunkLocationItEeqES1_:bb.a
  %i.a = load i16, ptr %0, align 2, !tbaa !20
  %i.b = trunc i32 %1 to i16
  %i.c = icmp eq i16 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i32 %1, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i32 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIjEC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIjEC5Ejj) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIjEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIlEC2Ell(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIlEC5Ell) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIlEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !26
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationImEC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationImEC5Emm) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationImEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZN5arrow18RecordBatchBuilderC2ERKSt10shared_ptrINS_6SchemaEEPNS_10MemoryPoolEl(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(80) initializes((0, 80)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !37
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !37
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.i, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.j, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow18RecordBatchBuilder4MakeERKSt10shared_ptrINS_6SchemaEEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN5arrow18RecordBatchBuilder4MakeERKSt10shared_ptrINS_6SchemaEEPNS_10MemoryPoolEl(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef 32)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow18RecordBatchBuilder4MakeERKSt10shared_ptrINS_6SchemaEEPNS_10MemoryPoolEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #20 ; 9 uses
  invoke void @_ZN5arrow18RecordBatchBuilderC1ERKSt10shared_ptrINS_6SchemaEEPNS_10MemoryPoolEl(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %5, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZN5arrow18RecordBatchBuilder14CreateBuildersEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %.thread45

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b
  %i.b = load ptr, ptr %7, align 8, !tbaa !59     ; 2 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit25, label %bb.c, !prof !62

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_18RecordBatchBuilderESt14default_deleteIS2_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %i.d = load ptr, ptr %6, align 8, !tbaa !59     ; 2 uses
  %.not.i20 = icmp eq ptr %i.d, null
  br i1 %.not.i20, label %_ZN5arrow6StatusD2Ev.exit21, label %bb.d, !prof !62

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !63, !range !73, !noundef !74
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit21, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  br label %_ZN5arrow6StatusD2Ev.exit21

_ZN5arrow6StatusD2Ev.exit21:                      ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #21
  br label %_ZNSt10unique_ptrIN5arrow18RecordBatchBuilderESt14default_deleteIS1_EED2Ev.exit39

.thread45:                                        ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.n

_ZN5arrow6StatusD2Ev.exit25:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !75, !noalias !76
  %i.k = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit25
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.noexc28, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc28 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !76
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !79, !noalias !76
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !76 ; 5 uses
  %i.r = load i64, ptr %i.n, align 8, !tbaa !39, !noalias !76
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.t = load i64, ptr %i.s, align 8, !tbaa !82, !noalias !94 ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !97, !noalias !94
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !94
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(144) %i.q)
          to label %.noexc26 unwind label %.loopexit, !inline_history !99

.noexc26:                                         ; preds = %bb.g
  %i.y = add nsw i64 %i.x, %i.r                   ; 2 uses
  %.not.i.i = icmp sgt i64 %i.y, %i.t
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %.noexc26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !76
  br label %_ZN5arrow6StatusD2Ev.exit14.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.noexc26
  %i.z = shl nsw i64 %i.t, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.y, i64 %i.z)
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !97, !noalias !94
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !94
  invoke void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %i.q, i64 noundef %.sroa.speculated.i.i.i)
          to label %.noexc27 unwind label %.loopexit, !inline_history !99

.noexc27:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !59, !noalias !76 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !76
  %i.ad = icmp eq ptr %.pr.i, null
  br i1 %i.ad, label %_ZN5arrow6StatusD2Ev.exit14.i, label %bb.h

_ZN5arrow6StatusD2Ev.exit14.i:                    ; preds = %.noexc27, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !75, !noalias !76
  %i.af = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %.noexc28 unwind label %.loopexit

.noexc28:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit14.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next.i, %i.ag
  br i1 %i.ah, label %bb.g, label %.thread, !llvm.loop !100

bb.h:                                             ; preds = %.noexc27
  store ptr %.pr.i, ptr %8, align 8, !tbaa !59
  call void @_ZN5arrow6ResultISt10unique_ptrINS_18RecordBatchBuilderESt14default_deleteIS2_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #19
  %i.ai = load ptr, ptr %8, align 8, !tbaa !59    ; 2 uses
  %.not.i31 = icmp eq ptr %i.ai, null
  br i1 %.not.i31, label %_ZN5arrow6StatusD2Ev.exit32, label %bb.i, !prof !62

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !63, !range !73, !noundef !74
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN5arrow6StatusD2Ev.exit32, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #19
  br label %_ZN5arrow6StatusD2Ev.exit32

_ZN5arrow6StatusD2Ev.exit32:                      ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.k

.loopexit:                                        ; preds = %bb.g, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit14.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %_ZN5arrow6StatusD2Ev.exit25
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.thread:                                          ; preds = %.noexc28, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  store ptr null, ptr %0, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %5, align 8, !tbaa !57
  store i64 %i.an, ptr %i.am, align 8, !tbaa !57
  br label %_ZNSt10unique_ptrIN5arrow18RecordBatchBuilderESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit32, %_ZN5arrow6StatusD2Ev.exit21
  %.pr = load ptr, ptr %5, align 8, !tbaa !57     ; 2 uses
  %.not.i37 = icmp eq ptr %.pr, null
  br i1 %.not.i37, label %_ZNSt10unique_ptrIN5arrow18RecordBatchBuilderESt14default_deleteIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNKSt14default_deleteIN5arrow18RecordBatchBuilderEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %.pr)
  br label %_ZNSt10unique_ptrIN5arrow18RecordBatchBuilderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow18RecordBatchBuilderESt14default_deleteIS1_EED2Ev.exit: ; preds = %.thread, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %.pre = load ptr, ptr %5, align 8, !tbaa !57    ; 2 uses
  %.not.i38 = icmp eq ptr %.pre, null
  br i1 %.not.i38, label %_ZNSt10unique_ptrIN5arrow18RecordBatchBuilderESt14default_deleteIS1_EED2Ev.exit39, label %bb.n

bb.n:                                             ; preds = %.thread45, %bb.m
  %.pn14.pn48 = phi { ptr, i32 } [ %i.i, %.thread45 ], [ %lpad.phi, %bb.m ]
  %i.ao = phi ptr [ %i.a, %.thread45 ], [ %.pre, %bb.m ]
  call void @_ZNKSt14default_deleteIN5arrow18RecordBatchBuilderEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.ao)
  br label %_ZNSt10unique_ptrIN5arrow18RecordBatchBuilderESt14default_deleteIS1_EED2Ev.exit39

_ZNSt10unique_ptrIN5arrow18RecordBatchBuilderESt14default_deleteIS1_EED2Ev.exit39: ; preds = %bb.n, %bb.m, %bb.f
  %.pn14.pn.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %lpad.phi, %bb.m ], [ %.pn14.pn48, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn14.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow18RecordBatchBuilder14CreateBuildersEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !75
  %i.c = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.d = sext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102  ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw nsw i64 %i.d, %i.k
  tail call void @_ZNSt6vectorISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.m)
  br label %_ZNSt6vectorISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, %i.d
  br i1 %i.n, label %bb.d, label %_ZNSt6vectorISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.d ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.p) #19, !inline_history !104
  br label %_ZSt8_DestroyISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow12ArrayBuilderEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !105

_ZSt8_DestroyIPSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.o, ptr %i.e, align 8, !tbaa !102
  br label %_ZNSt6vectorISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit

_ZNSt6vectorISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !75
  %i.w = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.v)
  %i.x = sext i32 %i.w to i64                     ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !106  ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !79  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3                 ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.x
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit
  %i.ag = sub nuw nsw i64 %i.x, %i.ae
  tail call void @_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.ag)
  br label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE6resizeEm.exit
  %i.ah = icmp ugt i64 %i.ae, %i.x
  br i1 %i.ah, label %bb.g, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.x ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.z, %i.ai
  br i1 %.not.i.i13, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.g
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !106
  br label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.aj = load ptr, ptr %1, align 8, !tbaa !75
  %i.ak = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN5arrow6StatusD2Ev.exit.lr.ph, label %.critedge

_ZN5arrow6StatusD2Ev.exit.lr.ph:                  ; preds = %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit.lr.ph, %_ZN5arrow6StatusD2Ev.exit17
  %indvars.iv = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %indvars.iv.next, %_ZN5arrow6StatusD2Ev.exit17 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !56
  %i.ao = load ptr, ptr %1, align 8, !tbaa !75
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32
  %i.aq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i32 noundef %i.ap)
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !107
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  call void @_ZN5arrow11MakeBuilderEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEEPSt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS8_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.au)
  %i.av = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN5arrow6StatusD2Ev.exit17, label %.critedge

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !80
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !79
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !75
  %i.bd = call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bc)
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge, !llvm.loop !110

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit17, %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit
  %storemerge = phi ptr [ null, %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit ], [ %i.av, %_ZN5arrow6StatusD2Ev.exit ], [ null, %_ZN5arrow6StatusD2Ev.exit17 ]
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_18RecordBatchBuilderESt14default_deleteIS2_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.61", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !59
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !59
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !111

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !112    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !38
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !112    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !38
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.m = load ptr, ptr %3, align 8, !tbaa !112    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !38
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow18RecordBatchBuilder12InitBuildersEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !75
  %i.b = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit14
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5arrow6StatusD2Ev.exit14 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80   ; 5 uses
  %i.i = load i64, ptr %i.e, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.k = load i64, ptr %i.j, align 8, !tbaa !82, !noalias !113 ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !97, !noalias !113
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !113
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(144) %i.h), !noalias !113, !inline_history !116
  %i.p = add nsw i64 %i.o, %i.i                   ; 2 uses
  %.not.i = icmp sgt i64 %i.p, %i.k
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZN5arrow6StatusD2Ev.exit14

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b
  %i.q = shl nsw i64 %i.k, 1
  %.sroa.speculated.i.i = call noundef i64 @llvm.smax.i64(i64 %i.p, i64 %i.q)
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !97, !noalias !113
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !113
  call void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(144) %i.h, i64 noundef %.sroa.speculated.i.i), !inline_history !116
  %.pr = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.u = icmp eq ptr %.pr, null
  br i1 %i.u, label %_ZN5arrow6StatusD2Ev.exit14, label %.critedge

_ZN5arrow6StatusD2Ev.exit14:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !75
  %i.w = call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.v)
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.b, label %.critedge, !llvm.loop !100

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit14, %bb.a
  %storemerge = phi ptr [ null, %bb.a ], [ %.pr, %_ZN5arrow6StatusD2Ev.exit ], [ null, %_ZN5arrow6StatusD2Ev.exit14 ]
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow18RecordBatchBuilder5FlushEb(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.16") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"class.std::vector.20", align 16   ; 16 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 11 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %8 = alloca %"class.std::vector.39", align 8    ; 14 uses
  %9 = alloca %"class.std::shared_ptr.56", align 16 ; 7 uses
  %10 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %11 = alloca %"class.std::shared_ptr.72", align 16 ; 7 uses
  %12 = alloca %"class.std::shared_ptr", align 8  ; 4 uses
  %13 = alloca %"class.std::vector.20", align 16  ; 7 uses
  %14 = alloca %"class.std::shared_ptr.75", align 8 ; 4 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !75
  %i.b = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit unwind label %bb.f ; 3 uses

_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit: ; preds = %bb.a
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = icmp slt i32 %i.b, 0
  br i1 %i.f, label %bb.c, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc139 unwind label %bb.f

.noexc139:                                        ; preds = %bb.c
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.b
  %i.g = shl nuw nsw i64 %i.c, 4                  ; 2 uses
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #20
          to label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit37.i unwind label %bb.f ; 4 uses

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit37.i: ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.g, i1 false)
  store ptr %i.h, ptr %4, align 16, !tbaa !117
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.c ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !120
  store ptr %i.i, ptr %i.e, align 16, !tbaa !121
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE6resizeEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE6resizeEm.exit: ; preds = %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit37.i
  %i.j = phi ptr [ %i.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit37.i ], [ null, %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit37.i ], [ null, %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !75
  %i.n = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit60.peel unwind label %.loopexit.split-lp152

_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit60.peel: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE6resizeEm.exit
  %.not44.peel = icmp sgt i32 %i.n, 0
  br i1 %.not44.peel, label %bb.d, label %.critedge56

bb.d:                                             ; preds = %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit60.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !80
  invoke void @_ZN5arrow12ArrayBuilder6FinishEPSt10shared_ptrINS_5ArrayEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.p, ptr noundef nonnull %i.k)
          to label %_ZN5arrow6StatusD2Ev.exit.peel unwind label %.loopexit.split-lp157

_ZN5arrow6StatusD2Ev.exit.peel:                   ; preds = %bb.d
  %i.q = load ptr, ptr %6, align 8, !tbaa !59     ; 2 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.peel.next, label %.loopexit161, !prof !62

.peel.next:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !125
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !128  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %.peel.next
  %i.x = phi ptr [ %i.k, %.peel.next ], [ %i.am, %bb.k ]
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !75
  %i.z = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit60 unwind label %.loopexit151

_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit60: ; preds = %bb.e
  %i.aa = sext i32 %i.z to i64
  %.not44 = icmp slt i64 %indvars.iv, %i.aa
  br i1 %.not44, label %bb.g, label %.critedge56

bb.f:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i, %bb.c, %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit151:                                     ; preds = %bb.e
  %lpad.loopexit153 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp152:                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE6resizeEm.exit
  %lpad.loopexit.split-lp154 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.g:                                             ; preds = %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit60
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !80
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv
  invoke void @_ZN5arrow12ArrayBuilder6FinishEPSt10shared_ptrINS_5ArrayEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.ae, ptr noundef nonnull %i.af)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %.loopexit156

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.g
  %i.ag = load ptr, ptr %6, align 8, !tbaa !59    ; 2 uses
  store ptr %i.ag, ptr %5, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %.loopexit161, !prof !62

.loopexit161:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.peel
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.ai = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %.not.i61 = icmp eq ptr %i.ai, null
  br i1 %.not.i61, label %_ZN5arrow6StatusD2Ev.exit62, label %bb.h, !prof !62

bb.h:                                             ; preds = %.loopexit161
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !63, !range !73, !noundef !74
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN5arrow6StatusD2Ev.exit62, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %_ZN5arrow6StatusD2Ev.exit62

_ZN5arrow6StatusD2Ev.exit62:                      ; preds = %.loopexit161, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.cq

.loopexit156:                                     ; preds = %bb.g
  %lpad.loopexit158 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp157:                            ; preds = %bb.d
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp157, %.loopexit156
  %lpad.phi160 = phi { ptr, i32 } [ %lpad.loopexit158, %.loopexit156 ], [ %lpad.loopexit.split-lp159, %.loopexit.split-lp157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.cy

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.am = load ptr, ptr %4, align 16, !tbaa !117  ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !122
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !125
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !128
  %.not41 = icmp eq i64 %i.as, %i.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not41, label %bb.e, label %.loopexit162, !llvm.loop !149

.loopexit162:                                     ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZN5arrow6Status8FromArgsIJRA50_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(50) @.str)
          to label %_ZN5arrow6Status7InvalidIJRA50_KcEEES0_DpOT_.exit unwind label %bb.n

_ZN5arrow6Status7InvalidIJRA50_KcEEES0_DpOT_.exit: ; preds = %.loopexit162
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  %i.at = load ptr, ptr %7, align 8, !tbaa !59    ; 2 uses
  %.not.i68 = icmp eq ptr %i.at, null
  br i1 %.not.i68, label %_ZN5arrow6StatusD2Ev.exit69, label %bb.l, !prof !62

bb.l:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA50_KcEEES0_DpOT_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !63, !range !73, !noundef !74
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN5arrow6StatusD2Ev.exit69, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  br label %_ZN5arrow6StatusD2Ev.exit69

_ZN5arrow6StatusD2Ev.exit69:                      ; preds = %_ZN5arrow6Status7InvalidIJRA50_KcEEES0_DpOT_.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.cq

bb.n:                                             ; preds = %.loopexit162
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.cy

.critedge56:                                      ; preds = %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit60, %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit60.peel
  %.026.lcssa145 = phi i64 [ 0, %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit60.peel ], [ %i.w, %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit60 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.ay = load ptr, ptr %1, align 8, !tbaa !75
  %i.az = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow6Schema6fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %bb.o unwind label %bb.v       ; 3 uses

bb.o:                                             ; preds = %.critedge56
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !151 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !154 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i70 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i70, label %.noexc73, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = icmp ugt i64 %i.bf, 9223372036854775792
  br i1 %i.bg, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i, !prof !111

.noexc.i.i:                                       ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc72 unwind label %bb.v

.noexc72:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.p
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #20
          to label %.noexc73 unwind label %bb.v

.noexc73:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i, %bb.o
  %i.bi = phi ptr [ null, %bb.o ], [ %i.bh, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.bi, ptr %8, align 8, !tbaa !154
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !151
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !155
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !156 ; 2 uses
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !156 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc73, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.by, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.bi, %.noexc73 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.bx, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.bm, %.noexc73 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !33 ; 2 uses
  %i.br = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !37
  store <2 x ptr> %i.br, ptr %.08.i.i.i.i.i, align 8, !tbaa !37
  %.not.i.i.i.i.i.i.i.i.i71 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i71, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bw = atomicrmw volatile add ptr %i.bs, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r, %.lr.ph.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.bn
  br i1 %i.bz, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !157

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc73
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bi, %.noexc73 ], [ %i.by, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bj, align 8, !tbaa !151
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit, %bb.ao
  %indvars.iv163 = phi i64 [ 0, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2ERKS5_.exit ], [ %indvars.iv.next164, %bb.ao ] ; 6 uses
  %i.cb = load ptr, ptr %1, align 8, !tbaa !75
  %i.cc = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cb)
          to label %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit75 unwind label %bb.w

_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit75: ; preds = %bb.t
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv163, %i.cd
  br i1 %i.ce, label %bb.x, label %bb.u

bb.u:                                             ; preds = %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit75
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.cf = load ptr, ptr %1, align 8, !tbaa !75
  %i.cg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema8metadataEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cf)
          to label %bb.ap unwind label %bb.bq

bb.v:                                             ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow5FieldEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i, %.critedge56
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.w:                                             ; preds = %bb.t, %bb.x
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.x:                                             ; preds = %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit75
  %i.cj = load ptr, ptr %8, align 8, !tbaa !154
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %indvars.iv163
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !107
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !158
  %i.co = load ptr, ptr %4, align 16, !tbaa !117
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %indvars.iv163 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !122
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !125
  %i.ct = invoke noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKSt10shared_ptrIS0_Eb(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.w

bb.y:                                             ; preds = %bb.x
  br i1 %i.ct, label %bb.ao, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.cu = load ptr, ptr %8, align 8, !tbaa !154
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %indvars.iv163
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !107
  %i.cx = load ptr, ptr %i.cp, align 8, !tbaa !122
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !125
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.56") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.cz)
          to label %bb.aa unwind label %bb.an

bb.aa:                                            ; preds = %bb.z
  %i.da = load ptr, ptr %8, align 8, !tbaa !154
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %indvars.iv163 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load <2 x ptr>, ptr %9, align 16, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !33 ; 8 uses
  store <2 x ptr> %i.dd, ptr %i.db, align 8, !tbaa !37
  %.not.i.i.i.i76 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i76, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 4 uses
  %i.dg = load atomic i64, ptr %i.df acquire, align 8 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 4294967297
  %i.di = trunc i64 %i.dg to i32                  ; 2 uses
  br i1 %i.dh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.df, align 8, !tbaa !159
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 0, ptr %i.dj, align 4, !tbaa !161
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !97
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #19, !inline_history !162
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !97
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #19, !inline_history !162
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.dq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = add nsw i32 %i.di, -1
  store i32 %i.dr, ptr %i.df, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ds = atomicrmw volatile add ptr %i.df, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i = phi i32 [ %i.di, %bb.ae ], [ %i.ds, %bb.af ]
  %i.dt = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dt, label %bb.ag, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, !prof !111

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #19
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit:    ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ag
  %i.du = load ptr, ptr %i.ca, align 8, !tbaa !33 ; 8 uses
  %.not.i.i77 = icmp eq ptr %i.du, null
  br i1 %.not.i.i77, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.dv, align 8, !tbaa !159
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !161
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !97
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #19, !inline_history !163
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !97
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #19, !inline_history !163
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aj:                                            ; preds = %bb.ah
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i = phi i32 [ %i.dy, %bb.ak ], [ %i.ei, %bb.al ]
  %i.ej = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ej, label %bb.am, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !111

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #19
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ao

bb.an:                                            ; preds = %bb.z
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.co

bb.ao:                                            ; preds = %bb.y, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1
  br label %bb.t, !llvm.loop !164

bb.ap:                                            ; preds = %bb.u
  %i.el = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20
          to label %.noexc78 unwind label %bb.bq  ; 6 uses

.noexc78:                                         ; preds = %bb.ap
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i32 1, ptr %i.em, align 8, !tbaa !159, !noalias !165
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 1, ptr %i.en, align 4, !tbaa !161, !noalias !165
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.el, align 8, !tbaa !97, !noalias !165
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow6SchemaEJSt6vectorISt10shared_ptrINS0_5FieldEESaIS5_EERKS3_IKNS0_16KeyValueMetadataEEEEvPT_DpOT0_(ptr noundef nonnull %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.cg)
          to label %bb.aq unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !165

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6SchemaESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %.noexc78
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 48) #21, !noalias !165
  br label %.body

bb.aq:                                            ; preds = %.noexc78
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr %i.eo, ptr %12, align 8, !tbaa !75
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr null, ptr %i.eq, align 8, !tbaa !33
  store ptr %i.el, ptr %i.er, align 8, !tbaa !33
  store ptr null, ptr %10, align 8, !tbaa !75
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.et = load <2 x ptr>, ptr %4, align 16, !tbaa !168
  store <2 x ptr> %i.et, ptr %13, align 16, !tbaa !168
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ew = load ptr, ptr %i.ev, align 16, !tbaa !121
  store ptr %i.ew, ptr %i.eu, align 16, !tbaa !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow11RecordBatch4MakeESt10shared_ptrINS_6SchemaEElSt6vectorIS1_INS_5ArrayEESaIS6_EES1_INS_6Device9SyncEventEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.72") align 8 %11, ptr noundef nonnull %12, i64 noundef %.026.lcssa145, ptr noundef nonnull %13, ptr noundef nonnull %14)
          to label %bb.ar unwind label %bb.br

bb.ar:                                            ; preds = %bb.aq
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !33 ; 8 uses
  %.not.i.i79 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i79, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 4 uses
  %i.fa = load atomic i64, ptr %i.ez acquire, align 8 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 4294967297
  %i.fc = trunc i64 %i.fa to i32                  ; 2 uses
  br i1 %i.fb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.ez, align 8, !tbaa !159
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 0, ptr %i.fd, align 4, !tbaa !161
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !97
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #19, !inline_history !169
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !97
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #19, !inline_history !169
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.au:                                            ; preds = %bb.as
  %i.fk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i80 = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i.i80, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fl = add nsw i32 %i.fc, -1
  store i32 %i.fl, ptr %i.ez, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81

bb.aw:                                            ; preds = %bb.au
  %i.fm = atomicrmw volatile add ptr %i.ez, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i82 = phi i32 [ %i.fc, %bb.av ], [ %i.fm, %bb.aw ]
  %i.fn = icmp eq i32 %.0.i.i.i.i82, 1
  br i1 %i.fn, label %bb.ax, label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !111

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #19
  br label %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ar, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81, %bb.ax
  %i.fo = load ptr, ptr %13, align 16, !tbaa !117 ; 3 uses
  %i.fp = load ptr, ptr %i.es, align 8, !tbaa !120 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fo, %i.fp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gh, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.fo, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !33 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 4 uses
  %i.ft = load atomic i64, ptr %i.fs acquire, align 8 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 4294967297
  %i.fv = trunc i64 %i.ft to i32                  ; 2 uses
  br i1 %i.fu, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.fs, align 8, !tbaa !159
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 0, ptr %i.fw, align 4, !tbaa !161
  %i.fx = load ptr, ptr %i.fr, align 8, !tbaa !97
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #19, !inline_history !170
  %i.ga = load ptr, ptr %i.fr, align 8, !tbaa !97
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #19, !inline_history !170
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.gd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i.i83 = icmp eq i8 %i.gd, 0
  br i1 %.not.i.i.i.i.i.i.i.i83, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ge = add nsw i32 %i.fv, -1
  store i32 %i.ge, ptr %i.fs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.gf = atomicrmw volatile add ptr %i.fs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fv, %bb.bb ], [ %i.gf, %bb.bc ]
  %i.gg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gg, label %bb.bd, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !111

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.az, %.lr.ph.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.gh, %i.fp
  br i1 %.not.i.i.i84, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !171

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 16, !tbaa !117
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gi = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.fo, %_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.gj = load ptr, ptr %i.eu, align 16, !tbaa !121
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.gk, %i.gl
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gm) #21
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.be
  %i.gn = load ptr, ptr %i.er, align 8, !tbaa !33 ; 8 uses
  %.not.i.i85 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i85, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 4 uses
  %i.gp = load atomic i64, ptr %i.go acquire, align 8 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 4294967297
  %i.gr = trunc i64 %i.gp to i32                  ; 2 uses
  br i1 %i.gq, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.go, align 8, !tbaa !159
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store i32 0, ptr %i.gs, align 4, !tbaa !161
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !97
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #19, !inline_history !172
  %i.gw = load ptr, ptr %i.gn, align 8, !tbaa !97
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #19, !inline_history !172
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bh:                                            ; preds = %bb.bf
  %i.gz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i86 = icmp eq i8 %i.gz, 0
  br i1 %.not.i.i.i86, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ha = add nsw i32 %i.gr, -1
  store i32 %i.ha, ptr %i.go, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i87

bb.bj:                                            ; preds = %bb.bh
  %i.hb = atomicrmw volatile add ptr %i.go, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i87

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i87: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i88 = phi i32 [ %i.gr, %bb.bi ], [ %i.hb, %bb.bj ]
  %i.hc = icmp eq i32 %.0.i.i.i.i88, 1
  br i1 %i.hc, label %bb.bk, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !111

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i87
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #19
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i87, %bb.bk
  br i1 %2, label %bb.bl, label %.thread

bb.bl:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.hd = load ptr, ptr %1, align 8, !tbaa !75, !noalias !173
  %i.he = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.hd)
          to label %.noexc91 unwind label %.loopexit.split-lp

.noexc91:                                         ; preds = %bb.bl
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph.i, label %_ZN5arrow6StatusD2Ev.exit102

.lr.ph.i:                                         ; preds = %.noexc91
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.bm

bb.bm:                                            ; preds = %.noexc94, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc94 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !173
  %i.hh = load ptr, ptr %i.l, align 8, !tbaa !79, !noalias !173
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.i
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !80, !noalias !173 ; 5 uses
  %i.hk = load i64, ptr %i.hg, align 8, !tbaa !39, !noalias !173
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 112
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !82, !noalias !176 ; 2 uses
  %i.hn = load ptr, ptr %i.hj, align 8, !tbaa !97, !noalias !176
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !noalias !176
  %i.hq = invoke noundef i64 %i.hp(ptr noundef nonnull align 8 dereferenceable(144) %i.hj)
          to label %.noexc92 unwind label %.loopexit, !inline_history !99

.noexc92:                                         ; preds = %bb.bm
  %i.hr = add nsw i64 %i.hq, %i.hk                ; 2 uses
  %.not.i.i89 = icmp sgt i64 %i.hr, %i.hm
  br i1 %.not.i.i89, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %.noexc92
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !173
  br label %_ZN5arrow6StatusD2Ev.exit14.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.noexc92
  %i.hs = shl nsw i64 %i.hm, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.hr, i64 %i.hs)
  %i.ht = load ptr, ptr %i.hj, align 8, !tbaa !97, !noalias !176
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !176
  invoke void %i.hv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.hj, i64 noundef %.sroa.speculated.i.i.i)
          to label %.noexc93 unwind label %.loopexit, !inline_history !99

.noexc93:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pr.i90 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !173 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !173
  %i.hw = icmp eq ptr %.pr.i90, null
  br i1 %i.hw, label %_ZN5arrow6StatusD2Ev.exit14.i, label %bb.bn

_ZN5arrow6StatusD2Ev.exit14.i:                    ; preds = %.noexc93, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.hx = load ptr, ptr %1, align 8, !tbaa !75, !noalias !173
  %i.hy = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.hx)
          to label %.noexc94 unwind label %.loopexit

.noexc94:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit14.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hz = sext i32 %i.hy to i64
  %i.ia = icmp slt i64 %indvars.iv.next.i, %i.hz
  br i1 %i.ia, label %bb.bm, label %_ZN5arrow6StatusD2Ev.exit102, !llvm.loop !100

bb.bn:                                            ; preds = %.noexc93
  store ptr %.pr.i90, ptr %15, align 8, !tbaa !59
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %15) #19
  %i.ib = load ptr, ptr %15, align 8, !tbaa !59   ; 2 uses
  %.not.i97 = icmp eq ptr %i.ib, null
  br i1 %.not.i97, label %bb.bt, label %bb.bo, !prof !62

bb.bo:                                            ; preds = %bb.bn
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !63, !range !73, !noundef !74
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #19
  br label %bb.bt

bb.bq:                                            ; preds = %bb.ap, %bb.u
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.br:                                            ; preds = %bb.aq
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #19
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #19
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #19
  br label %bb.cn

.loopexit:                                        ; preds = %bb.bm, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit14.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp:                               ; preds = %bb.bl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #19
  br label %bb.cn

_ZN5arrow6StatusD2Ev.exit102:                     ; preds = %.noexc94, %.noexc91
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %.thread

.thread:                                          ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit102
  store ptr null, ptr %0, align 8, !tbaa !59
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ii = load <2 x ptr>, ptr %11, align 16, !tbaa !37
  store <2 x ptr> %i.ii, ptr %i.ih, align 8, !tbaa !37
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bt:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !33 ; 8 uses
  %.not.i.i103 = icmp eq ptr %.pre, null
  br i1 %.not.i.i103, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ij = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.ik = load atomic i64, ptr %i.ij acquire, align 8 ; 2 uses
  %i.il = icmp eq i64 %i.ik, 4294967297
  %i.im = trunc i64 %i.ik to i32                  ; 2 uses
  br i1 %i.il, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.ij, align 8, !tbaa !159
  %i.in = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.in, align 4, !tbaa !161
  %i.io = load ptr, ptr %.pre, align 8, !tbaa !97
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #19, !inline_history !179
  %i.ir = load ptr, ptr %.pre, align 8, !tbaa !97
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #19, !inline_history !179
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bw:                                            ; preds = %bb.bu
  %i.iu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i104 = icmp eq i8 %i.iu, 0
  br i1 %.not.i.i.i104, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.iv = add nsw i32 %i.im, -1
  store i32 %i.iv, ptr %i.ij, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105

bb.by:                                            ; preds = %bb.bw
  %i.iw = atomicrmw volatile add ptr %i.ij, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i106 = phi i32 [ %i.im, %bb.bx ], [ %i.iw, %bb.by ]
  %i.ix = icmp eq i32 %.0.i.i.i.i106, 1
  br i1 %i.ix, label %bb.bz, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !111

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #19
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread, %bb.bt, %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.iy = load ptr, ptr %i.eq, align 8, !tbaa !33 ; 8 uses
  %.not.i.i107 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i107, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit111, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 4 uses
  %i.ja = load atomic i64, ptr %i.iz acquire, align 8 ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 4294967297
  %i.jc = trunc i64 %i.ja to i32                  ; 2 uses
  br i1 %i.jb, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.iz, align 8, !tbaa !159
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  store i32 0, ptr %i.jd, align 4, !tbaa !161
  %i.je = load ptr, ptr %i.iy, align 8, !tbaa !97
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iy) #19, !inline_history !172
  %i.jh = load ptr, ptr %i.iy, align 8, !tbaa !97
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(16) %i.iy) #19, !inline_history !172
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit111

bb.cc:                                            ; preds = %bb.ca
  %i.jk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i108 = icmp eq i8 %i.jk, 0
  br i1 %.not.i.i.i108, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jl = add nsw i32 %i.jc, -1
  store i32 %i.jl, ptr %i.iz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i109

bb.ce:                                            ; preds = %bb.cc
  %i.jm = atomicrmw volatile add ptr %i.iz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i109

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i109: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i110 = phi i32 [ %i.jc, %bb.cd ], [ %i.jm, %bb.ce ]
  %i.jn = icmp eq i32 %.0.i.i.i.i110, 1
  br i1 %i.jn, label %bb.cf, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit111, !prof !111

end_hunk_0
begin_hunk_1_@_ZSt10_ConstructIN5arrow6SchemaEJSt6vectorISt10shared_ptrINS0_5FieldEESaIS5_EERKS3_IKNS0_16KeyValueMetadataEEEEvPT_DpOT0_:bb.a
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8, !tbaa !159
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !161
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !97
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #19, !inline_history !226
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !97
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #19, !inline_history !226
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i4 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !111

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #19
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ae = load ptr, ptr %3, align 16, !tbaa !154  ; 3 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !151 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i ], [ %i.ae, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ai, align 8, !tbaa !159
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !161
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !97
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #19, !inline_history !180
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !97
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #19, !inline_history !180
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.al, %bb.o ], [ %i.av, %bb.p ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.q, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, !prof !111

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.m, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ax, %i.af
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !181

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 16, !tbaa !154
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ay = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ae, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.az = load ptr, ptr %i.c, align 16, !tbaa !155
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #21
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %bb.r
  ret void

bb.s:                                             ; preds = %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEC2ERKS3_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  resume { ptr, i32 } %i.bd
}

declare void @_ZN5arrow6SchemaC1ESt6vectorISt10shared_ptrINS_5FieldEESaIS4_EES2_IKNS_16KeyValueMetadataEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !161
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !182
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !182
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !111

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN5arrow18TypedChunkLocationIiEE", !4, i64 0, !4, i64 4}
!9 = !{!8, !4, i64 4}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN5arrow18TypedChunkLocationIsEE", !12, i64 0, !12, i64 2}
!12 = !{!"short", !5, i64 0}
!13 = !{!11, !12, i64 2}
!14 = !{!15, !5, i64 0}
!15 = !{!"_ZTSN5arrow18TypedChunkLocationIaEE", !5, i64 0, !5, i64 1}
!16 = !{!15, !5, i64 1}
!17 = !{!18, !5, i64 0}
!18 = !{!"_ZTSN5arrow18TypedChunkLocationIhEE", !5, i64 0, !5, i64 1}
!19 = !{!18, !5, i64 1}
!20 = !{!21, !12, i64 0}
!21 = !{!"_ZTSN5arrow18TypedChunkLocationItEE", !12, i64 0, !12, i64 2}
!22 = !{!21, !12, i64 2}
!23 = !{!24, !4, i64 0}
!24 = !{!"_ZTSN5arrow18TypedChunkLocationIjEE", !4, i64 0, !4, i64 4}
!25 = !{!24, !4, i64 4}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN5arrow18TypedChunkLocationIlEE", !28, i64 0, !28, i64 8}
!28 = !{!"long", !5, i64 0}
!29 = !{!27, !28, i64 8}
!30 = !{!31, !28, i64 0}
!31 = !{!"_ZTSN5arrow18TypedChunkLocationImEE", !28, i64 0, !28, i64 8}
!32 = !{!31, !28, i64 8}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0}
!35 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0}
!36 = !{!"any pointer", !5, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!5, !5, i64 0}
!39 = !{!40, !28, i64 16}
!40 = !{!"_ZTSN5arrow18RecordBatchBuilderE", !41, i64 0, !28, i64 16, !44, i64 24, !45, i64 32, !50, i64 56}
!41 = !{!"_ZTSSt10shared_ptrIN5arrow6SchemaEE", !42, i64 0}
!42 = !{!"_ZTSSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0, !34, i64 8}
!43 = !{!"p1 _ZTSN5arrow6SchemaE", !36, i64 0}
!44 = !{!"p1 _ZTSN5arrow10MemoryPoolE", !36, i64 0}
!45 = !{!"_ZTSSt6vectorISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE", !46, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"p1 _ZTSSt10unique_ptrIN5arrow12ArrayBuilderESt14default_deleteIS1_EE", !36, i64 0}
!50 = !{!"_ZTSSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIPN5arrow12ArrayBuilderESaIS2_EE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIPN5arrow12ArrayBuilderESaIS2_EE12_Vector_implE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIPN5arrow12ArrayBuilderESaIS2_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!54 = !{!"p2 _ZTSN5arrow12ArrayBuilderE", !55, i64 0}
!55 = !{!"any p2 pointer", !36, i64 0}
!56 = !{!40, !44, i64 24}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 _ZTSN5arrow18RecordBatchBuilderE", !36, i64 0}
!59 = !{!60, !61, i64 0}
!60 = !{!"_ZTSN5arrow6StatusE", !61, i64 0}
!61 = !{!"p1 _ZTSN5arrow6Status5StateE", !36, i64 0}
!62 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!63 = !{!64, !66, i64 1}
!64 = !{!"_ZTSN5arrow6Status5StateE", !65, i64 0, !66, i64 1, !67, i64 8, !70, i64 40}
!65 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!66 = !{!"bool", !5, i64 0}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !68, i64 0, !28, i64 8, !5, i64 16}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !69, i64 0}
!69 = !{!"p1 omnipotent char", !36, i64 0}
!70 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !71, i64 0}
!71 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !72, i64 0, !34, i64 8}
!72 = !{!"p1 _ZTSN5arrow12StatusDetailE", !36, i64 0}
!73 = !{i8 0, i8 2}
!74 = !{}
!75 = !{!42, !43, i64 0}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN5arrow18RecordBatchBuilder12InitBuildersEv: argument 0"}
!78 = distinct !{!78, !"_ZN5arrow18RecordBatchBuilder12InitBuildersEv"}
!79 = !{!53, !54, i64 0}
!80 = !{!81, !81, i64 0}
!81 = !{!"p1 _ZTSN5arrow12ArrayBuilderE", !36, i64 0}
!82 = !{!83, !28, i64 112}
!83 = !{!"_ZTSN5arrow12ArrayBuilderE", !44, i64 8, !28, i64 16, !84, i64 24, !28, i64 96, !28, i64 104, !28, i64 112, !89, i64 120}
!84 = !{!"_ZTSN5arrow18TypedBufferBuilderIbvEE", !85, i64 0, !28, i64 56, !28, i64 64}
!85 = !{!"_ZTSN5arrow13BufferBuilderE", !86, i64 0, !44, i64 16, !69, i64 24, !28, i64 32, !28, i64 40, !28, i64 48}
!86 = !{!"_ZTSSt10shared_ptrIN5arrow15ResizableBufferEE", !87, i64 0}
!87 = !{!"_ZTSSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EE", !88, i64 0, !34, i64 8}
!88 = !{!"p1 _ZTSN5arrow15ResizableBufferE", !36, i64 0}
!89 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE", !90, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE", !91, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE12_Vector_implE", !92, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!93 = !{!"p1 _ZTSSt10shared_ptrIN5arrow12ArrayBuilderEE", !36, i64 0}
!94 = !{!95, !77}
!95 = distinct !{!95, !96, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!96 = distinct !{!96, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!97 = !{!98, !98, i64 0}
!98 = !{!"vtable pointer", !6, i64 0}
!99 = !{ptr @_ZN5arrow18RecordBatchBuilder12InitBuildersEv}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!48, !49, i64 8}
!103 = !{!48, !49, i64 0}
!104 = distinct !{null, null, null, null, null, null, null, null}
!105 = distinct !{!105, !101}
!106 = !{!53, !54, i64 8}
!107 = !{!108, !109, i64 0}
!108 = !{!"_ZTSSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EE", !109, i64 0, !34, i64 8}
!109 = !{!"p1 _ZTSN5arrow5FieldE", !36, i64 0}
!110 = distinct !{!110, !101}
!111 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!112 = !{!67, !69, i64 0}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!115 = distinct !{!115, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!116 = distinct !{null}
!117 = !{!118, !119, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!119 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5ArrayEE", !36, i64 0}
!120 = !{!118, !119, i64 8}
!121 = !{!118, !119, i64 16}
!122 = !{!123, !124, i64 0}
!123 = !{!"_ZTSSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EE", !124, i64 0, !34, i64 8}
!124 = !{!"p1 _ZTSN5arrow5ArrayE", !36, i64 0}
!125 = !{!126, !127, i64 0}
!126 = !{!"_ZTSSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EE", !127, i64 0, !34, i64 8}
!127 = !{!"p1 _ZTSN5arrow9ArrayDataE", !36, i64 0}
!128 = !{!129, !28, i64 16}
!129 = !{!"_ZTSN5arrow9ArrayDataE", !130, i64 0, !28, i64 16, !133, i64 24, !28, i64 32, !135, i64 40, !140, i64 64, !145, i64 88, !146, i64 104}
!130 = !{!"_ZTSSt10shared_ptrIN5arrow8DataTypeEE", !131, i64 0}
!131 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !132, i64 0, !34, i64 8}
!132 = !{!"p1 _ZTSN5arrow8DataTypeE", !36, i64 0}
!133 = !{!"_ZTSSt6atomicIlE", !134, i64 0}
!134 = !{!"_ZTSSt13__atomic_baseIlE", !28, i64 0}
!135 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE", !136, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE", !137, i64 0}
!137 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_Vector_implE", !138, i64 0}
!138 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_Vector_impl_dataE", !139, i64 0, !139, i64 8, !139, i64 16}
!139 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6BufferEE", !36, i64 0}
!140 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE", !141, i64 0}
!141 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE", !142, i64 0}
!142 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_Vector_implE", !143, i64 0}
!143 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_Vector_impl_dataE", !144, i64 0, !144, i64 8, !144, i64 16}
!144 = !{!"p1 _ZTSSt10shared_ptrIN5arrow9ArrayDataEE", !36, i64 0}
!145 = !{!"_ZTSSt10shared_ptrIN5arrow9ArrayDataEE", !126, i64 0}
!146 = !{!"_ZTSSt10shared_ptrIN5arrow15ArrayStatisticsEE", !147, i64 0}
!147 = !{!"_ZTSSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EE", !148, i64 0, !34, i64 8}
!148 = !{!"p1 _ZTSN5arrow15ArrayStatisticsE", !36, i64 0}
!149 = distinct !{!149, !101, !150}
!150 = !{!"llvm.loop.peeled.count", i32 1}
!151 = !{!152, !153, i64 8}
!152 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_Vector_impl_dataE", !153, i64 0, !153, i64 8, !153, i64 16}
!153 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5FieldEE", !36, i64 0}
!154 = !{!152, !153, i64 0}
!155 = !{!152, !153, i64 16}
!156 = !{!153, !153, i64 0}
!157 = distinct !{!157, !101}
!158 = !{!131, !132, i64 0}
!159 = !{!160, !4, i64 8}
!160 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!161 = !{!160, !4, i64 12}
!162 = distinct !{null, null, null, null, null}
!163 = distinct !{null, null, null}
!164 = distinct !{!164, !101}
!165 = !{!166}
end_hunk_1
