inline.NumInlined: 1790
inline.NumDeleted: 565
begin_hunk_0_@_ZN4llvh3sys2fs17getMainExecutableB5cxx11EPKcPv:bb.a
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !170

bb.v:                                             ; preds = %_ZN4llvh3sys2fsL8test_dirEPcPKcS4_.exit32.i
  call void @free(ptr noundef %i.bq) #30
  br label %_ZN4llvh3sys2fsL11getprogpathEPcPKc.exit.thread13

._crit_edge.i:                                    ; preds = %.backedge.i, %.preheader.i
  call void @free(ptr noundef %i.bq) #30
  br label %.critedge.sink.split

_ZN4llvh3sys2fsL11getprogpathEPcPKc.exit.thread18: ; preds = %bb.r, %_ZN4llvh3sys2fsL8test_dirEPcPKcS4_.exit27.thread.i, %_ZN4llvh3sys2fsL8test_dirEPcPKcS4_.exit27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %.critedge.sink.split

_ZN4llvh3sys2fsL11getprogpathEPcPKc.exit:         ; preds = %_ZN4llvh3sys2fsL8test_dirEPcPKcS4_.exit27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %_ZN4llvh3sys2fsL11getprogpathEPcPKc.exit.thread13

_ZN4llvh3sys2fsL11getprogpathEPcPKc.exit.thread13: ; preds = %_ZN4llvh3sys2fsL8test_dirEPcPKcS4_.exit.i, %bb.v, %_ZN4llvh3sys2fsL11getprogpathEPcPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bx, ptr %0, align 8, !tbaa !71
  %i.by = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.by, ptr %i.a, align 8, !tbaa !10
  %i.bz = icmp ugt i64 %i.by, 15
  br i1 %i.bz, label %bb.w, label %._crit_edge.i.i5

bb.w:                                             ; preds = %_ZN4llvh3sys2fsL11getprogpathEPcPKc.exit.thread13
  %i.ca = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #30 ; 2 uses
  store ptr %i.ca, ptr %0, align 8, !tbaa !44
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !10
  store i64 %i.cb, ptr %i.bx, align 8, !tbaa !12
  br label %._crit_edge.i.i5

._crit_edge.i.i5:                                 ; preds = %bb.w, %_ZN4llvh3sys2fsL11getprogpathEPcPKc.exit.thread13
  %i.cc = phi ptr [ %i.ca, %bb.w ], [ %i.bx, %_ZN4llvh3sys2fsL11getprogpathEPcPKc.exit.thread13 ] ; 2 uses
  switch i64 %i.by, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.x:                                             ; preds = %._crit_edge.i.i5
  %i.cd = load i8, ptr %i.i, align 16, !tbaa !12
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.y:                                             ; preds = %._crit_edge.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr nonnull align 16 %i.i, i64 %i.by, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i5, %bb.x, %bb.y
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !47
  %i.cg = load ptr, ptr %0, align 8, !tbaa !44
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 0, ptr %i.ch, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.z

.critedge.sink.split:                             ; preds = %_ZN4llvh3sys2fsL8test_dirEPcPKcS4_.exit.i, %_ZN4llvh3sys2fsL8test_dirEPcPKcS4_.exit.thread.i, %._crit_edge.i, %bb.t, %bb.u, %_ZN4llvh3sys2fsL11getprogpathEPcPKc.exit.thread18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ci, ptr %0, align 8, !tbaa !71
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cj, align 8, !tbaa !47
  store i8 0, ptr %i.ci, align 8, !tbaa !12
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZNK4llvh3sys2fs17basic_file_status19getLastAccessedTimeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !171
  %i.b = mul nsw i64 %i.a, 1000000000
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZNK4llvh3sys2fs17basic_file_status23getLastModificationTimeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !172
  %i.c = mul nsw i64 %i.b, 1000000000
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK4llvh3sys2fs11file_status12getLinkCountEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !173
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs10disk_spaceERKNS_5TwineE(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr.28") align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(18) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.statfs, align 8             ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(18) %1) #30
  %i.a = load ptr, ptr %3, align 8, !tbaa !44
  %i.b = call i32 @statfs(ptr noundef %i.a, ptr noundef nonnull %2) #30
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !12
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.h = tail call ptr @__errno_location() #31
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = or i8 %i.l, 1
  store i8 %i.m, ptr %i.k, align 8
  store i32 %i.i, ptr %0, align 8, !tbaa !3
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !174  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !177
  %i.r = mul i64 %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !178
  %i.u = mul i64 %i.t, %i.o
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !179
  %i.x = mul i64 %i.w, %i.o
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, -2
  store i8 %i.aa, ptr %i.y, align 8
  store i64 %i.r, ptr %0, align 8, !tbaa !10
  %i.ab = inttoptr i64 %i.u to ptr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.ab, %bb.c ], [ %i.j, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ac, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: nounwind
declare i32 @statfs(ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs12current_pathERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(16) initializes((8, 12)) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %2 = alloca %struct.stat, align 8               ; 5 uses
  %3 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %4 = alloca %struct.stat, align 8               ; 5 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !38
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.8) #30 ; 7 uses
  %.not = icmp eq ptr %i.b, null
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.d, align 1, !tbaa !43
  %i.e = load i8, ptr %i.b, align 1, !tbaa !12
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZN4llvh5TwineC2EPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %5, align 8, !tbaa !12
  br label %_ZN4llvh5TwineC2EPKc.exit

_ZN4llvh5TwineC2EPKc.exit:                        ; preds = %bb.b, %bb.c
  %storemerge.i = phi i8 [ 3, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge.i, ptr %i.c, align 8, !tbaa !40
  %i.f = call noundef zeroext i1 @_ZN4llvh3sys4path11is_absoluteERKNS_5TwineENS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 2)
  br i1 %i.f, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN4llvh5TwineC2EPKc.exit
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.h, align 1, !tbaa !43
  %i.i = load i8, ptr %i.b, align 1, !tbaa !12
  %.not.i17 = icmp eq i8 %i.i, 0
  br i1 %.not.i17, label %_ZN4llvh5TwineC2EPKc.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.b, ptr %6, align 8, !tbaa !12
  br label %_ZN4llvh5TwineC2EPKc.exit19

_ZN4llvh5TwineC2EPKc.exit19:                      ; preds = %bb.d, %bb.e
  %storemerge.i18 = phi i8 [ 3, %bb.e ], [ 1, %bb.d ]
  store i8 %storemerge.i18, ptr %i.g, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 128, ptr %i.l, align 4, !tbaa !39
  %i.m = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %6, ptr noundef nonnull align 8 dereferenceable(16) %3) #30
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.o = call noundef i32 @stat(ptr noundef %i.n, ptr noundef nonnull %4) #30, !callees !106, !inline_history !107
  %.not.i25 = icmp eq i32 %i.o, 0
  br i1 %.not.i25, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh5TwineC2EPKc.exit19
  %i.p = tail call ptr @__errno_location() #31
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = icmp eq i32 %i.q, 0
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL11typeForModeEj.exit.i:           ; preds = %_ZN4llvh5TwineC2EPKc.exit19
  %i.s = load i64, ptr %4, align 8, !tbaa !180
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !181
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.f, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i
  %.sroa.2268.0 = phi i64 [ %i.u, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.f ]
  %.sroa.1666.0 = phi i64 [ %i.s, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.f ]
  %.sroa.025.0.i = phi i1 [ true, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.v = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.v) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.sroa.025.0.i, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 1, ptr %i.y, align 1, !tbaa !43
  store ptr @.str.2, ptr %7, align 8, !tbaa !12
  store i8 3, ptr %i.x, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.z, ptr %1, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 128, ptr %i.ab, align 4, !tbaa !39
  %i.ac = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %7, ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ae = call noundef i32 @stat(ptr noundef %i.ad, ptr noundef nonnull %2) #30, !callees !106, !inline_history !107
  %.not.i28 = icmp eq i32 %i.ae, 0
  br i1 %.not.i28, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i38, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = tail call ptr @__errno_location() #31
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = icmp eq i32 %i.ag, 0
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit49

_ZN4llvh3sys2fsL11typeForModeEj.exit.i38:         ; preds = %bb.h
  %i.ai = load i64, ptr %2, align 8, !tbaa !180
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !181
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit49

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit49: ; preds = %bb.i, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i38
  %.sroa.16.0 = phi i64 [ %i.ai, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i38 ], [ 0, %bb.i ]
  %.sroa.22.0 = phi i64 [ %i.ak, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i38 ], [ 0, %bb.i ]
  %.sroa.025.0.i31 = phi i1 [ true, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i38 ], [ %i.ah, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.al = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.z
  br i1 %i.am, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit21, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit49
  call void @free(ptr noundef %i.al) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit21

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit21: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit49, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.sroa.025.0.i31, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit21
  %i.an = icmp eq i64 %.sroa.1666.0, %.sroa.16.0
  %i.ao = icmp eq i64 %.sroa.2268.0, %.sroa.22.0
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.ap, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #29 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !39
  %i.at = zext i32 %i.as to i64
  %i.au = load i32, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = sub nsw i64 %i.at, %i.av
  %i.ax = icmp ugt i64 %i.aq, %i.aw
  br i1 %i.ax, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.ay = add i64 %i.aq, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.az, i64 noundef %i.ay, i64 noundef 1) #30
  %.pre7.pre.i = load i32, ptr %i.a, align 8, !tbaa !38
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %.not.i.i = icmp samesign eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit, label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.pre7.i84 = phi i32 [ %.pre7.pre.i, %.thread ], [ %i.au, %bb.m ]
  %i.ba = load ptr, ptr %0, align 8, !tbaa !36
  %i.bb = zext i32 %.pre7.i84 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr nonnull align 1 %i.b, i64 %i.aq, i1 false)
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !38
  br label %_ZN4llvh15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit

_ZN4llvh15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit: ; preds = %bb.m, %bb.n
  %i.bd = phi i32 [ %i.au, %bb.m ], [ %.pre.i, %bb.n ]
  %i.be = trunc i64 %i.aq to i32
  %i.bf = add i32 %i.bd, %i.be
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !38
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.u

.critedge:                                        ; preds = %bb.a, %_ZN4llvh5TwineC2EPKc.exit, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !39 ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 4096
  br i1 %i.bj, label %bb.p, label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.bk, i64 noundef 4096, i64 noundef 1) #30
  %.pre = load i32, ptr %i.bh, align 4, !tbaa !39
  br label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

_ZN4llvh15SmallVectorImplIcE7reserveEm.exit:      ; preds = %bb.o, %bb.p
  %i.bl = phi i32 [ %i.bi, %bb.o ], [ %.pre, %bb.p ]
  %i.bm = load ptr, ptr %0, align 8, !tbaa !36
  %i.bn = zext i32 %i.bl to i64
  %i.bo = call ptr @getcwd(ptr noundef %i.bm, i64 noundef %i.bn) #30
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit
  %i.bq = tail call ptr @__errno_location() #31
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit24
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !3  ; 2 uses
  %.not16 = icmp eq i32 %i.bs, 12
  br i1 %.not16, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bu = load i32, ptr %i.bh, align 4, !tbaa !39 ; 2 uses
  %.not73 = icmp eq i32 %i.bu, 0
  br i1 %.not73, label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit24, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = zext i32 %i.bu to i64
end_hunk_0
