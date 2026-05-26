inline.NumInlined: 1114
inline.NumDeleted: 490
begin_hunk_0_@_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl4StatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14FileStatisticsE:bb.a
  %i.r = load ptr, ptr %1, align 8, !tbaa !292, !noalias !370
  invoke void @_ZN5arrow2io8internal11LibHdfsShim12FreeFileInfoEP12hdfsFileInfoi(ptr noundef nonnull align 8 dereferenceable(312) %i.r, ptr noundef nonnull %i.n, i32 noundef 1)
          to label %_ZN5arrow6StatusD2Ev.exit.thread unwind label %bb.d

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN5arrow6StatusD2Ev.exit12

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b
  %.pr = load ptr, ptr %5, align 8, !tbaa !58, !noalias !376 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  store ptr %.pr, ptr %0, align 8, !tbaa !58, !alias.scope !376
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.s = icmp eq ptr %.pr, null
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit12, label %.critedge

bb.d:                                             ; preds = %.noexc9, %bb.c, %bb.b, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN5arrow2io12HdfsPathInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(132) dereferenceable(132) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.t

_ZN5arrow6StatusD2Ev.exit12:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.v = load i64, ptr %i.u, align 8, !tbaa !379
  store i64 %i.v, ptr %3, align 8, !tbaa !382
  %i.w = load i32, ptr %4, align 8, !tbaa !384
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.w, ptr %i.x, align 8, !tbaa !385
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !386
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit12
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.h
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !29
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !40  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !29
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.b
  br i1 %i.ah, label %_ZN5arrow2io12HdfsPathInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !29
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #26
  br label %_ZN5arrow2io12HdfsPathInfoD2Ev.exit

_ZN5arrow2io12HdfsPathInfoD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem11GetCapacityEPl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !292, !noalias !389
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !295, !noalias !389
  %i.f = tail call noundef i64 @_ZN5arrow2io8internal11LibHdfsShim11GetCapacityEP13hdfs_internal(ptr noundef nonnull align 8 dereferenceable(312) %i.c, ptr noundef %i.e), !noalias !389 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__errno_location() #27
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !389
  tail call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA6_KcRA12_S2_RA8_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(12) @.str.22, ptr noundef nonnull align 1 dereferenceable(8) @.str.4)
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetCapacityEPl.exit

bb.c:                                             ; preds = %bb.a
  store i64 %i.f, ptr %2, align 8, !tbaa !63, !noalias !389
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !392
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetCapacityEPl.exit

_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetCapacityEPl.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem7GetUsedEPl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !292, !noalias !395
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !295, !noalias !395
  %i.f = tail call noundef i64 @_ZN5arrow2io8internal11LibHdfsShim7GetUsedEP13hdfs_internal(ptr noundef nonnull align 8 dereferenceable(312) %i.c, ptr noundef %i.e), !noalias !395 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__errno_location() #27
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !395
  tail call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA6_KcRA8_S2_S6_EEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(8) @.str.23, ptr noundef nonnull align 1 dereferenceable(8) @.str.4)
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl7GetUsedEPl.exit

bb.c:                                             ; preds = %bb.a
  store i64 %i.f, ptr %2, align 8, !tbaa !63, !noalias !395
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !398
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl7GetUsedEPl.exit

_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl7GetUsedEPl.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !296  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !401
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !292, !noalias !401
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !295, !noalias !401
  %i.g = call noundef ptr @_ZN5arrow2io8internal11LibHdfsShim19GetWorkingDirectoryEP13hdfs_internalPcm(ptr noundef nonnull align 8 dereferenceable(312) %i.d, ptr noundef %i.f, ptr noundef nonnull %i.a, i64 noundef 2047), !noalias !401
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__errno_location() #27
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !401
  call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA32_KcEEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.j, ptr noundef nonnull align 1 dereferenceable(32) @.str.24)
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27, !noalias !401
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25, !noalias !401
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.l, ptr noundef nonnull %i.a, i64 noundef %i.m), !noalias !401 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !404
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !401
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem11GetChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS7_SaIS7_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296
  tail call void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS8_SaIS8_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS8_SaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::vector", align 8       ; 12 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_12HdfsPathInfoESaISC_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %4)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.b = load ptr, ptr %5, align 8, !tbaa !58, !noalias !407 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !58, !alias.scope !407
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.c = icmp eq ptr %i.b, null
  %.pre22 = load ptr, ptr %4, align 8, !tbaa !410 ; 4 uses
  br i1 %i.c, label %_ZN5arrow6StatusD2Ev.exit14, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.j

_ZN5arrow6StatusD2Ev.exit14:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !413  ; 2 uses
  %.not20 = icmp eq ptr %.pre22, %i.f
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit14
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.pre.pre = load ptr, ptr %4, align 8, !tbaa !410
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5arrow6StatusD2Ev.exit14
  %.pre = phi ptr [ %.pre.pre, %._crit_edge.loopexit ], [ %.pre22, %_ZN5arrow6StatusD2Ev.exit14 ]
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !414
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.017.021 = phi ptr [ %.pre22, %.lr.ph ], [ %i.aa, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.021, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !417  ; 8 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !420
  %.not.i15 = icmp eq ptr %i.j, %i.k
  br i1 %.not.i15, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !24
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !40   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.017.021, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.o, ptr %i.a, align 8, !tbaa !63
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.q, ptr %i.j, align 8, !tbaa !40
  %i.r = load i64, ptr %i.a, align 8, !tbaa !63
  store i64 %i.r, ptr %i.l, align 8, !tbaa !29
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.d
  %i.s = phi ptr [ %i.q, %.noexc ], [ %i.l, %bb.d ] ; 2 uses
  switch i64 %i.o, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %i.m, align 1, !tbaa !29
  store i8 %i.t, ptr %i.s, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !27
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !417
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.z, ptr %i.g, align 8, !tbaa !417
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.g:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.h

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.017.021, i64 136 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.f
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c

bb.h:                                             ; preds = %bb.g, %.noexc.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  %i.ac = phi ptr [ %.pre22, %_ZN5arrow6StatusD2Ev.exit ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !421 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge, %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i ], [ %i.ac, %.critedge ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !29
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !29
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !40 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !29
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #26
  br label %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %i.ae
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !422

_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !410
  br label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %.critedge
  %i.ay = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %.critedge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !423
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #26
  br label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.j:                                             ; preds = %bb.h, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.d, %bb.b ]
  call void @_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_12HdfsPathInfoESaISB_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296
  tail call void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_12HdfsPathInfoESaISC_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_12HdfsPathInfoESaISC_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = tail call ptr @__errno_location() #27    ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.c = load ptr, ptr %1, align 8, !tbaa !292
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !295
  %i.f = load ptr, ptr %2, align 8, !tbaa !40
  %i.g = call noundef ptr @_ZN5arrow2io8internal11LibHdfsShim13ListDirectoryEP13hdfs_internalPKcPi(ptr noundef nonnull align 8 dereferenceable(312) %i.c, ptr noundef %i.e, ptr noundef %i.f, ptr noundef nonnull %i.a) ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  switch i32 %i.i, label %bb.e [
    i32 0, label %bb.d
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !292
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !295
  %i.l = load ptr, ptr %2, align 8, !tbaa !40
  %i.m = call noundef i32 @_ZN5arrow2io8internal11LibHdfsShim6ExistsEP13hdfs_internalPKc(ptr noundef nonnull align 8 dereferenceable(312) %i.j, ptr noundef %i.k, ptr noundef %i.l)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %._crit_edge20

._crit_edge20:                                    ; preds = %bb.c
  %.pre21 = load i32, ptr %i.b, align 4, !tbaa !3
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  store i32 0, ptr %i.a, align 4, !tbaa !3
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge20, %bb.b
  %i.o = phi i32 [ %.pre21, %._crit_edge20 ], [ %i.i, %bb.b ]
  call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA27_KcEEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.o, ptr noundef nonnull align 1 dereferenceable(27) @.str.26)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge19, %bb.d
  %i.p = phi i32 [ %.pre, %._crit_edge19 ], [ 0, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !421
  %i.s = load ptr, ptr %3, align 8, !tbaa !410
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 136                 ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = add nsw i32 %i.p, %i.x
  %i.z = sext i32 %i.y to i64
  call void @_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.z)
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %sext = shl i64 %i.w, 32
  %i.ac = ashr exact i64 %sext, 32
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.ai, %.lr.ph ]
  %i.ad = load ptr, ptr %1, align 8, !tbaa !292
  call void @_ZN5arrow2io8internal11LibHdfsShim12FreeFileInfoEP12hdfsFileInfoi(ptr noundef nonnull align 8 dereferenceable(312) %i.ad, ptr noundef %i.g, i32 noundef %.lcssa)
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !424
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %indvars.iv
  %i.af = load ptr, ptr %3, align 8, !tbaa !410
  %i.ag = getelementptr [136 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = getelementptr [136 x i8], ptr %i.ag, i64 %i.ac
  call fastcc void @_ZN5arrow2ioL11SetPathInfoEPK12hdfsFileInfoPNS0_12HdfsPathInfoE(ptr noundef %i.ae, ptr noundef nonnull %i.ah)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !427

bb.g:                                             ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPSt10shared_ptrINS0_16HdfsReadableFileEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.c = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5arrow2io18default_io_contextEv()
  tail call void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_9IOContextEPSt10shared_ptrINS0_16HdfsReadableFileEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_9IOContextEPSt10shared_ptrINS0_16HdfsReadableFileEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr.91", align 16 ; 7 uses
  %i.a = tail call ptr @__errno_location() #27    ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = load ptr, ptr %1, align 8, !tbaa !292
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !295
  %i.e = load ptr, ptr %2, align 8, !tbaa !40
  %i.f = tail call noundef ptr @_ZN5arrow2io8internal11LibHdfsShim8OpenFileEP13hdfs_internalPKciisi(ptr noundef nonnull align 8 dereferenceable(312) %i.b, ptr noundef %i.d, ptr noundef %i.e, i32 noundef 0, i32 noundef %3, i16 noundef signext 0, i32 noundef 0) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 4, !tbaa !3
  tail call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.h, ptr noundef nonnull align 1 dereferenceable(20) @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.12)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.i = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow2io13FileInterfaceE, i64 16), ptr %i.j, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 0, ptr %i.l, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow2io8ReadableE, i64 16), ptr %i.i, align 8, !tbaa !7
  invoke void @_ZN5arrow2io16RandomAccessFileC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16HdfsReadableFileE, i64 8))
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow2io16HdfsReadableFileE, i64 320), ptr %i.j, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-64, 152) (i8, ptr @_ZTVN5arrow2io16HdfsReadableFileE, i64 64), ptr %i.i, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow2io16HdfsReadableFileE, i64 232), ptr %i.m, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  store ptr null, ptr %i.n, align 8, !tbaa !9
  %i.o = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #24
          to label %bb.g unwind label %bb.f       ; 6 uses

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIN5arrow2io16HdfsReadableFile20HdfsReadableFileImplESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #25
  tail call void @_ZN5arrow2io16RandomAccessFileD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16HdfsReadableFileE, i64 8)) #25
  br label %.body

.body:                                            ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.j) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn.i

bb.g:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %4, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store ptr %i.s, ptr %i.o, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !27
  store i8 0, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i8 0, i64 40, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store ptr %i.r, ptr %i.v, align 8, !tbaa !30
  store ptr %i.o, ptr %i.n, align 8, !tbaa !39
  call void @_ZNSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EEC2IS2_vEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.i)
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load <2 x ptr>, ptr %6, align 16, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !305  ; 8 uses
  store <2 x ptr> %i.y, ptr %5, align 8, !tbaa !142
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aa, align 8, !tbaa !298
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !300
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !inline_history !428
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !inline_history !428
  br label %_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit

bb.j:                                             ; preds = %bb.h
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.k ], [ %i.an, %bb.l ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.m, label %_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit, !prof !307

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25
  br label %_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit

_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !305 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.aq, align 8, !tbaa !298
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !300
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #25, !inline_history !429
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #25, !inline_history !429
  br label %_ZNSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.q ], [ %i.bd, %bb.r ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !307

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #25
  br label %_ZNSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN5arrow4util13StringBuilderIJRA6_KcRA8_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.i
}

declare noundef ptr @_ZN5arrow2io8internal11LibHdfsShim19GetWorkingDirectoryEP13hdfs_internalPcm(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal16IOErrorFromErrnoIJRA32_KcEEENS_6StatusEiDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(32) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN5arrow8internal21StatusDetailFromErrnoEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.36") align 8 %3, i32 noundef %1), !noalias !576
  invoke void @_ZN5arrow6Status17FromDetailAndArgsIJRA32_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !305, !noalias !576 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow8internal15StatusFromErrnoIJRA32_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !298
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !300
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !579
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !579
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA32_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29, !noalias !576
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZN5arrow8internal15StatusFromErrnoIJRA32_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, !prof !307

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA32_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.i:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #25
  resume { ptr, i32 } %i.r

_ZN5arrow8internal15StatusFromErrnoIJRA32_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status17FromDetailAndArgsIJRA32_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::shared_ptr.36", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !580
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4), !noalias !580
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !492, !noalias !580, !nonnull !54, !align !502
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(32) %3) #25, !noalias !580
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %3, i64 noundef %i.c)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA32_KcEEvRSoOT_.exit.i unwind label %bb.b, !noalias !580 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA32_KcEEvRSoOT_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN5arrow4util13StringBuilderIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3 ], [ %i.ad, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA32_KcEEvRSoOT_.exit.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !580
  br label %common.resume

_ZN5arrow4util13StringBuilderIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA32_KcEEvRSoOT_.exit.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !580
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <2 x ptr>, ptr %2, align 8, !tbaa !142
  store ptr null, ptr %i.f, align 8, !tbaa !305
  store <2 x ptr> %i.g, ptr %6, align 16, !tbaa !142
  store ptr null, ptr %2, align 8, !tbaa !487
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !305  ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !298
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !300
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #25, !inline_history !490
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #25, !inline_history !490
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !307

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #25
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.y = load ptr, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.j:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  %i.ae = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.j
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !29
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #26
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !410    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !421  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !29
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !29
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !29
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #26
  br label %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !422

_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !410
  br label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.w = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !423
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #26
  br label %_ZNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !417  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !583    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #29
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 4 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.p = shl nuw nsw i64 %i.m, 5
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !24
  %i.u = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.w, ptr %i.a, align 8, !tbaa !63
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.y, ptr %i.s, align 8, !tbaa !40
  %i.z = load i64, ptr %i.a, align 8, !tbaa !63
  store i64 %i.z, ptr %i.t, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.aa = phi ptr [ %i.y, %.noexc ], [ %i.t, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.w, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !29
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !27
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.r, %bb.f ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.f ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !24, !alias.scope !584, !noalias !587
  %i.ah = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !40, !alias.scope !587, !noalias !584 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !27, !alias.scope !587, !noalias !584 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false), !alias.scope !589
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ah, ptr %.012.i.i.i, align 8, !tbaa !40, !alias.scope !584, !noalias !587
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !29, !alias.scope !587, !noalias !584
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !29, !alias.scope !584, !noalias !587
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !27, !alias.scope !587, !noalias !584
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.ap = phi i64 [ %i.al, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !27, !alias.scope !584, !noalias !587
  store ptr %i.ai, ptr %.0911.i.i.i, align 8, !tbaa !40, !alias.scope !587, !noalias !584
  store i64 0, ptr %i.aq, align 8, !tbaa !27, !alias.scope !587, !noalias !584
  store i8 0, ptr %i.ai, align 8, !tbaa !29, !alias.scope !587, !noalias !584
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !590

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.r, %bb.f ], [ %i.at, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bi, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.au, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !24, !alias.scope !591, !noalias !594
  %i.aw = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !40, !alias.scope !594, !noalias !591 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.h:                                             ; preds = %.lr.ph.i.i.i27
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !27, !alias.scope !594, !noalias !591 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false), !alias.scope !596
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.aw, ptr %.012.i.i.i28, align 8, !tbaa !40, !alias.scope !591, !noalias !594
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !29, !alias.scope !594, !noalias !591
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !29, !alias.scope !591, !noalias !594
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !27, !alias.scope !594, !noalias !591
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.h
  %i.be = phi i64 [ %i.ba, %bb.h ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !27, !alias.scope !591, !noalias !594
  store ptr %i.ax, ptr %.0911.i.i.i29, align 8, !tbaa !40, !alias.scope !594, !noalias !591
  store i64 0, ptr %i.bf, align 8, !tbaa !27, !alias.scope !594, !noalias !591
  store i8 0, ptr %i.ax, align 8, !tbaa !29, !alias.scope !594, !noalias !591
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bh, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !590

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.au, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bi, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !420
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bm) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.i
  store ptr %i.r, ptr %0, align 8, !tbaa !583
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !417
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.m
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !420
  ret void

bb.j:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = call ptr @__cxa_begin_catch(ptr %i.bq) #25 ; 0 uses
  %i.bs = shl nuw nsw i64 %i.m, 5
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.bs) #26
  invoke void @__cxa_rethrow() #29
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bo

bb.m:                                             ; preds = %bb.j
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #28
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef ptr @_ZN5arrow2io8internal11LibHdfsShim13ListDirectoryEP13hdfs_internalPKcPi(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal16IOErrorFromErrnoIJRA27_KcEEENS_6StatusEiDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(27) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN5arrow8internal21StatusDetailFromErrnoEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.36") align 8 %3, i32 noundef %1), !noalias !597
  invoke void @_ZN5arrow6Status17FromDetailAndArgsIJRA27_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(27) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !305, !noalias !597 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow8internal15StatusFromErrnoIJRA27_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !298
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !300
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !600
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !600
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA27_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29, !noalias !597
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZN5arrow8internal15StatusFromErrnoIJRA27_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, !prof !307

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA27_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.i:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #25
  resume { ptr, i32 } %i.r

_ZN5arrow8internal15StatusFromErrnoIJRA27_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !410    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 136                 ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [136 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE15_M_erase_at_endEPS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !29
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !29
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #26
  br label %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !422

_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !421
  br label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status17FromDetailAndArgsIJRA27_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(27) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::shared_ptr.36", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !601
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4), !noalias !601
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !492, !noalias !601, !nonnull !54, !align !502
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(27) %3) #25, !noalias !601
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(27) %3, i64 noundef %i.c)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA27_KcEEvRSoOT_.exit.i unwind label %bb.b, !noalias !601 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA27_KcEEvRSoOT_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN5arrow4util13StringBuilderIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3 ], [ %i.ad, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA27_KcEEvRSoOT_.exit.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !601
  br label %common.resume

_ZN5arrow4util13StringBuilderIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA27_KcEEvRSoOT_.exit.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !601
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <2 x ptr>, ptr %2, align 8, !tbaa !142
  store ptr null, ptr %i.f, align 8, !tbaa !305
  store <2 x ptr> %i.g, ptr %6, align 16, !tbaa !142
  store ptr null, ptr %2, align 8, !tbaa !487
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !305  ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !298
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !300
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #25, !inline_history !490
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #25, !inline_history !490
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !307

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #25
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.y = load ptr, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.j:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  %i.ae = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.j
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !29
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !410    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 136                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !423
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 136                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 67818912035696881
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 67818912035696880, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 8 uses
  %.057.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.08.i.i.i.prol, i8 0, i64 136, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 24
  store ptr %i.q, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 56
  store ptr %i.s, ptr %i.r, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 88
  store ptr %i.u, ptr %i.t, align 8, !tbaa !24
  %i.v = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 136 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !604

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %i.x = icmp ult i64 %1, 4
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 29 uses
  %.057.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.08.i.i.i, i8 0, i64 136, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store ptr %i.z, ptr %i.y, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ae, i8 0, i64 136, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.al, i8 0, i64 136, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 280
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 296
  store ptr %i.an, ptr %i.am, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 312
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 328
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 344
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 360
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.as, i8 0, i64 136, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 416
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 432
  store ptr %i.au, ptr %i.at, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 448
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 464
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 480
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 496
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !24
  %i.az = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 544 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !606

_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ba, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !421
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.bb = icmp ult i64 %i.n, %1
  br i1 %i.bb, label %bb.d, label %_ZNKSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
  unreachable

_ZNKSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.bc = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 67818912035696880) ; 2 uses
  %i.be = mul nuw nsw i64 %i.bd, 136
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #24 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.f ; 3 uses
  %xtraiter54 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.bo, %.lr.ph.i.i.i30.prol ], [ %i.bg, %_ZNKSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %.057.i.i.i32.prol = phi i64 [ %i.bn, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter56 = phi i64 [ %prol.iter56.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE12_M_check_lenEmPKc.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.08.i.i.i31.prol, i8 0, i64 136, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 24
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 56
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 88
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !24
  %i.bn = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 136 ; 2 uses
  %prol.iter56.next = add i64 %prol.iter56, 1     ; 2 uses
  %prol.iter56.cmp.not = icmp eq i64 %prol.iter56.next, %xtraiter54
  br i1 %prol.iter56.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !607

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.bg, %_ZNKSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bo, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.bn, %.lr.ph.i.i.i30.prol ]
  %i.bp = icmp ult i64 %1, 4
  br i1 %i.bp, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.cs, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 29 uses
  %.057.i.i.i32 = phi i64 [ %i.cr, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.08.i.i.i31, i8 0, i64 136, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !24
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bw, i8 0, i64 136, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 144
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 160
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 176
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 192
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 208
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 224
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cd, i8 0, i64 136, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 280
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 296
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 312
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 328
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 344
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 360
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ck, i8 0, i64 136, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 416
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 432
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !24
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 448
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 464
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !24
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 480
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 496
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !24
  %i.cr = add i64 %.057.i.i.i32, -4               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 544
  %.not.i.i.i33.3 = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !606

_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.en, %_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.bf, %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 12 uses
  %.0911.i.i.i = phi ptr [ %i.em, %_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.ct = load i32, ptr %.0911.i.i.i, align 8, !tbaa !384, !alias.scope !611, !noalias !608
  store i32 %i.ct, ptr %.012.i.i.i, align 8, !tbaa !384, !alias.scope !608, !noalias !611
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !24, !alias.scope !608, !noalias !611
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !40, !alias.scope !611, !noalias !608 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !27, !alias.scope !611, !noalias !608 ; 3 uses
  %i.dc = icmp ult i64 %i.db, 16
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = add nuw nsw i64 %i.db, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cw, ptr noundef nonnull align 8 dereferenceable(1) %i.cy, i64 %i.dd, i1 false), !alias.scope !613
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i37
  store ptr %i.cx, ptr %i.cu, align 8, !tbaa !40, !alias.scope !608, !noalias !611
  %i.de = load i64, ptr %i.cy, align 8, !tbaa !29, !alias.scope !611, !noalias !608
  store i64 %i.de, ptr %i.cw, align 8, !tbaa !29, !alias.scope !608, !noalias !611
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !27, !alias.scope !611, !noalias !608
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.df = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.db, %bb.e ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.df, ptr %i.dh, align 8, !tbaa !27, !alias.scope !608, !noalias !611
  store ptr %i.cy, ptr %i.cv, align 8, !tbaa !40, !alias.scope !611, !noalias !608
  store i64 0, ptr %i.dg, align 8, !tbaa !27, !alias.scope !611, !noalias !608
  store i8 0, ptr %i.cy, align 8, !tbaa !29, !alias.scope !611, !noalias !608
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 3 uses
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !24, !alias.scope !608, !noalias !611
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !40, !alias.scope !611, !noalias !608 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 5 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !27, !alias.scope !611, !noalias !608 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 16
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i64 %i.dp, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dk, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.dr, i1 false), !alias.scope !613
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !40, !alias.scope !608, !noalias !611
  %i.ds = load i64, ptr %i.dm, align 8, !tbaa !29, !alias.scope !611, !noalias !608
  store i64 %i.ds, ptr %i.dk, align 8, !tbaa !29, !alias.scope !608, !noalias !611
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !27, !alias.scope !611, !noalias !608
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i, %bb.f
  %i.dt = phi i64 [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i ], [ %i.dp, %bb.f ]
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  store i64 %i.dt, ptr %i.dv, align 8, !tbaa !27, !alias.scope !608, !noalias !611
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !40, !alias.scope !611, !noalias !608
  store i64 0, ptr %i.du, align 8, !tbaa !27, !alias.scope !611, !noalias !608
  store i8 0, ptr %i.dm, align 8, !tbaa !29, !alias.scope !611, !noalias !608
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 3 uses
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !24, !alias.scope !608, !noalias !611
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !40, !alias.scope !611, !noalias !608 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 5 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !27, !alias.scope !611, !noalias !608 ; 3 uses
  %i.ee = icmp ult i64 %i.ed, 16
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = add nuw nsw i64 %i.ed, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dy, ptr noundef nonnull align 8 dereferenceable(1) %i.ea, i64 %i.ef, i1 false), !alias.scope !613
  br label %_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i
  store ptr %i.dz, ptr %i.dw, align 8, !tbaa !40, !alias.scope !608, !noalias !611
  %i.eg = load i64, ptr %i.ea, align 8, !tbaa !29, !alias.scope !611, !noalias !608
  store i64 %i.eg, ptr %i.dy, align 8, !tbaa !29, !alias.scope !608, !noalias !611
  %.phi.trans.insert7.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %.pre8.i.i.i.i = load i64, ptr %.phi.trans.insert7.i.i.i.i, align 8, !tbaa !27, !alias.scope !611, !noalias !608
  br label %_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i, %bb.g
  %i.eh = phi i64 [ %i.ed, %bb.g ], [ %.pre8.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  store i64 %i.eh, ptr %i.ej, align 8, !tbaa !27, !alias.scope !608, !noalias !611
  store ptr %i.ea, ptr %i.dx, align 8, !tbaa !40, !alias.scope !611, !noalias !608
  store i64 0, ptr %i.ei, align 8, !tbaa !27, !alias.scope !611, !noalias !608
  store i8 0, ptr %i.ea, align 8, !tbaa !29, !alias.scope !611, !noalias !608
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  %i.el = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ek, ptr noundef nonnull align 8 dereferenceable(28) %i.el, i64 28, i1 false), !alias.scope !613
  %i.em = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 136 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 136
  %.not.i.i.i38 = icmp eq ptr %i.em, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !614

_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.eo = load ptr, ptr %i.h, align 8, !tbaa !423
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub i64 %i.ep, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.eq) #26
  br label %_ZNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.h
  store ptr %i.bf, ptr %0, align 8, !tbaa !410
  %i.er = getelementptr inbounds nuw [136 x i8], ptr %i.bg, i64 %1
  store ptr %i.er, ptr %i.a, align 8, !tbaa !421
  %i.es = getelementptr inbounds nuw [136 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.es, ptr %i.h, align 8, !tbaa !423
  br label %bb.i

bb.i:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

declare noundef ptr @_ZN5arrow2io8internal11LibHdfsShim8OpenFileEP13hdfs_internalPKciisi(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal16IOErrorFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(9) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN5arrow8internal21StatusDetailFromErrnoEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.36") align 8 %5, i32 noundef %1), !noalias !615
  invoke void @_ZN5arrow6Status17FromDetailAndArgsIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(9) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !305, !noalias !615 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow8internal15StatusFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !298
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !300
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !618
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !618
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29, !noalias !615
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZN5arrow8internal15StatusFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, !prof !307

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.i:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  resume { ptr, i32 } %i.r

_ZN5arrow8internal15StatusFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status17FromDetailAndArgsIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(9) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::shared_ptr.36", align 16 ; 4 uses
  call void @_ZN5arrow4util13StringBuilderIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(9) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x ptr>, ptr %2, align 8, !tbaa !142
  store ptr null, ptr %i.a, align 8, !tbaa !305
  store <2 x ptr> %i.b, ptr %7, align 16, !tbaa !142
  store ptr null, ptr %2, align 8, !tbaa !487
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull %6, ptr noundef nonnull %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !305  ; 8 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !298
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !300
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !490
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !490
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !307

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.t = load ptr, ptr %6, align 8, !tbaa !40     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !29
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.i:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  %i.z = load ptr, ptr %6, align 8, !tbaa !40     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(9) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !492, !nonnull !54, !align !502 ; 3 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %1) #25
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(20) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.e, i64 noundef %i.g)
          to label %.noexc4 unwind label %bb.c    ; 0 uses

.noexc4:                                          ; preds = %.noexc
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!210 = distinct !{!210, !"_ZN5arrow2io15HdfsAnyFileImpl4SeekEl"}
!211 = !{!209, !206}
!212 = !{!213, !209, !206}
!213 = distinct !{!213, !214, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv: argument 0"}
!214 = distinct !{!214, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv"}
!215 = !{!216, !209, !206}
!216 = distinct !{!216, !217, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!217 = distinct !{!217, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!218 = !{!219, !209, !206}
!219 = distinct !{!219, !217, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!220 = !{!219}
!221 = !{!222, !209, !206}
!222 = distinct !{!222, !223, !"_ZN5arrow6Status2OKEv: argument 0"}
!223 = distinct !{!223, !"_ZN5arrow6Status2OKEv"}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv: argument 0"}
!226 = distinct !{!226, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv"}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!229 = distinct !{!229, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZNK5arrow2io16HdfsReadableFile4TellEv: argument 0"}
!232 = distinct !{!232, !"_ZNK5arrow2io16HdfsReadableFile4TellEv"}
!233 = !{!234, !235, i64 0}
!234 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow2io16HdfsOutputStream20HdfsOutputStreamImplELb0EE", !235, i64 0}
!235 = !{!"p1 _ZTSN5arrow2io16HdfsOutputStream20HdfsOutputStreamImplE", !12, i64 0}
!236 = !{!235, !235, i64 0}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl13FlushInternalEv: argument 0"}
!239 = distinct !{!239, !"_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl13FlushInternalEv"}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!242 = distinct !{!242, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!243 = !{!244}
!244 = distinct !{!244, !242, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!245 = !{!246}
!246 = distinct !{!246, !247, !"_ZN5arrow6Status2OKEv: argument 0"}
!247 = distinct !{!247, !"_ZN5arrow6Status2OKEv"}
!248 = !{ptr @_ZN5arrow2io16HdfsOutputStreamD1Ev}
!249 = !{ptr @_ZN5arrow2io16HdfsOutputStreamD0Ev, ptr @_ZN5arrow2io16HdfsOutputStreamD1Ev}
!250 = !{ptr @_ZN5arrow2io16HdfsOutputStreamD0Ev}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_ZN5arrow2io16HdfsOutputStream5CloseEv: argument 0"}
!253 = distinct !{!253, !"_ZN5arrow2io16HdfsOutputStream5CloseEv"}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv: argument 0"}
!256 = distinct !{!256, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv"}
!257 = !{!258}
!258 = distinct !{!258, !259, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!259 = distinct !{!259, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!260 = !{!261}
!261 = distinct !{!261, !259, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!262 = distinct !{!262, !263}
!263 = !{!"llvm.loop.mustprogress"}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZN5arrow6Status2OKEv: argument 0"}
!266 = distinct !{!266, !"_ZN5arrow6Status2OKEv"}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5FlushEv: argument 0"}
!269 = distinct !{!269, !"_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5FlushEv"}
!270 = !{!271, !268}
!271 = distinct !{!271, !272, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv: argument 0"}
!272 = distinct !{!272, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv"}
!273 = !{!274, !268}
!274 = distinct !{!274, !275, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!275 = distinct !{!275, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!276 = !{!277, !268}
!277 = distinct !{!277, !275, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!278 = !{!277}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl13FlushInternalEv: argument 0"}
!281 = distinct !{!281, !"_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl13FlushInternalEv"}
!282 = !{!280, !268}
!283 = !{!284, !280, !268}
!284 = distinct !{!284, !285, !"_ZN5arrow6Status2OKEv: argument 0"}
!285 = distinct !{!285, !"_ZN5arrow6Status2OKEv"}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZNK5arrow2io16HdfsOutputStream4TellEv: argument 0"}
!288 = distinct !{!288, !"_ZNK5arrow2io16HdfsOutputStream4TellEv"}
!289 = !{!290, !291, i64 0}
!290 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow2io16HadoopFileSystem20HadoopFileSystemImplELb0EE", !291, i64 0}
!291 = !{!"p1 _ZTSN5arrow2io16HadoopFileSystem20HadoopFileSystemImplE", !12, i64 0}
!292 = !{!293, !33, i64 0}
!293 = !{!"_ZTSN5arrow2io16HadoopFileSystem20HadoopFileSystemImplE", !33, i64 0, !28, i64 8, !28, i64 40, !4, i64 72, !28, i64 80, !36, i64 112}
!294 = !{!293, !4, i64 72}
!295 = !{!293, !36, i64 112}
!296 = !{!291, !291, i64 0}
!297 = distinct !{null, null, null, null}
!298 = !{!299, !4, i64 8}
!299 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!300 = !{!299, !4, i64 12}
!301 = !{!302, !303, i64 16}
!302 = !{!"_ZTSSt15_Sp_counted_ptrIPN5arrow2io16HadoopFileSystemELN9__gnu_cxx12_Lock_policyE2EE", !299, i64 0, !303, i64 16}
!303 = !{!"p1 _ZTSN5arrow2io16HadoopFileSystemE", !12, i64 0}
!304 = !{!303, !303, i64 0}
!305 = !{!22, !23, i64 0}
!306 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!307 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!308 = !{!309, !303, i64 0}
!309 = !{!"_ZTSSt12__shared_ptrIN5arrow2io16HadoopFileSystemELN9__gnu_cxx12_Lock_policyE2EE", !303, i64 0, !22, i64 8}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!312 = distinct !{!312, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!313 = !{!314}
!314 = distinct !{!314, !315, !"_ZN5arrow6Status2OKEv: argument 0"}
!315 = distinct !{!315, !"_ZN5arrow6Status2OKEv"}
!316 = !{!317}
!317 = distinct !{!317, !318, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!318 = distinct !{!318, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!319 = !{!320, !4, i64 32}
!320 = !{!"_ZTSN5arrow2io20HdfsConnectionConfigE", !28, i64 0, !4, i64 32, !28, i64 40, !28, i64 72, !321, i64 104}
!321 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !322, i64 0}
!322 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !323, i64 0, !17, i64 8, !325, i64 16, !17, i64 24, !327, i64 32, !326, i64 48}
!323 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !324, i64 0}
!324 = !{!"any p2 pointer", !12, i64 0}
!325 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !326, i64 0}
!326 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!327 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !328, i64 0, !17, i64 8}
!328 = !{!"float", !5, i64 0}
!329 = !{!325, !326, i64 0}
!330 = !{!331}
!331 = distinct !{!331, !332, !"_ZN5arrow6Status2OKEv: argument 0"}
!332 = distinct !{!332, !"_ZN5arrow6Status2OKEv"}
!333 = !{!334}
!334 = distinct !{!334, !335, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl13MakeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!335 = distinct !{!335, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl13MakeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!336 = !{!337, !334}
!337 = distinct !{!337, !338, !"_ZN5arrow6Status2OKEv: argument 0"}
!338 = distinct !{!338, !"_ZN5arrow6Status2OKEv"}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl6DeleteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb: argument 0"}
!341 = distinct !{!341, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl6DeleteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb"}
!342 = !{!343, !340}
!343 = distinct !{!343, !344, !"_ZN5arrow6Status2OKEv: argument 0"}
!344 = distinct !{!344, !"_ZN5arrow6Status2OKEv"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZN5arrow2io16HadoopFileSystem6DeleteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb: argument 0"}
!347 = distinct !{!347, !"_ZN5arrow2io16HadoopFileSystem6DeleteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb"}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl6DeleteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb: argument 0"}
!350 = distinct !{!350, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl6DeleteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb"}
!351 = !{!349, !346}
!352 = !{!353, !349, !346}
!353 = distinct !{!353, !354, !"_ZN5arrow6Status2OKEv: argument 0"}
!354 = distinct !{!354, !"_ZN5arrow6Status2OKEv"}
!355 = !{!356}
!356 = distinct !{!356, !357, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl10DisconnectEv: argument 0"}
!357 = distinct !{!357, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl10DisconnectEv"}
!358 = !{!359, !356}
!359 = distinct !{!359, !360, !"_ZN5arrow6Status2OKEv: argument 0"}
!360 = distinct !{!360, !"_ZN5arrow6Status2OKEv"}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetPathInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_12HdfsPathInfoE: argument 0"}
!363 = distinct !{!363, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetPathInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_12HdfsPathInfoE"}
!364 = !{!365, !362}
!365 = distinct !{!365, !366, !"_ZN5arrow2io12_GLOBAL__N_117GetPathInfoFailedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!366 = distinct !{!366, !"_ZN5arrow2io12_GLOBAL__N_117GetPathInfoFailedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!367 = !{!368, !362}
!368 = distinct !{!368, !369, !"_ZN5arrow6Status2OKEv: argument 0"}
!369 = distinct !{!369, !"_ZN5arrow6Status2OKEv"}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetPathInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_12HdfsPathInfoE: argument 0"}
!372 = distinct !{!372, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetPathInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_12HdfsPathInfoE"}
!373 = !{!374, !371}
!374 = distinct !{!374, !375, !"_ZN5arrow2io12_GLOBAL__N_117GetPathInfoFailedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!375 = distinct !{!375, !"_ZN5arrow2io12_GLOBAL__N_117GetPathInfoFailedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!376 = !{!377}
!377 = distinct !{!377, !378, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!378 = distinct !{!378, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!379 = !{!380, !17, i64 104}
!380 = !{!"_ZTSN5arrow2io12HdfsPathInfoE", !381, i64 0, !28, i64 8, !28, i64 40, !28, i64 72, !17, i64 104, !17, i64 112, !4, i64 120, !4, i64 124, !189, i64 128, !189, i64 130}
!381 = !{!"_ZTSN5arrow2io10ObjectType4typeE", !5, i64 0}
!382 = !{!383, !17, i64 0}
!383 = !{!"_ZTSN5arrow2io14FileStatisticsE", !17, i64 0, !381, i64 8}
!384 = !{!380, !381, i64 0}
!385 = !{!383, !381, i64 8}
!386 = !{!387}
!387 = distinct !{!387, !388, !"_ZN5arrow6Status2OKEv: argument 0"}
!388 = distinct !{!388, !"_ZN5arrow6Status2OKEv"}
!389 = !{!390}
!390 = distinct !{!390, !391, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetCapacityEPl: argument 0"}
!391 = distinct !{!391, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetCapacityEPl"}
!392 = !{!393, !390}
!393 = distinct !{!393, !394, !"_ZN5arrow6Status2OKEv: argument 0"}
!394 = distinct !{!394, !"_ZN5arrow6Status2OKEv"}
!395 = !{!396}
!396 = distinct !{!396, !397, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl7GetUsedEPl: argument 0"}
!397 = distinct !{!397, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl7GetUsedEPl"}
!398 = !{!399, !396}
!399 = distinct !{!399, !400, !"_ZN5arrow6Status2OKEv: argument 0"}
!400 = distinct !{!400, !"_ZN5arrow6Status2OKEv"}
!401 = !{!402}
!402 = distinct !{!402, !403, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!403 = distinct !{!403, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!404 = !{!405, !402}
!405 = distinct !{!405, !406, !"_ZN5arrow6Status2OKEv: argument 0"}
!406 = distinct !{!406, !"_ZN5arrow6Status2OKEv"}
!407 = !{!408}
!408 = distinct !{!408, !409, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!409 = distinct !{!409, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!410 = !{!411, !412, i64 0}
!411 = !{!"_ZTSNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EE17_Vector_impl_dataE", !412, i64 0, !412, i64 8, !412, i64 16}
!412 = !{!"p1 _ZTSN5arrow2io12HdfsPathInfoE", !12, i64 0}
!413 = !{!412, !412, i64 0}
!414 = !{!415}
!415 = distinct !{!415, !416, !"_ZN5arrow6Status2OKEv: argument 0"}
!416 = distinct !{!416, !"_ZN5arrow6Status2OKEv"}
!417 = !{!418, !419, i64 8}
!418 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !419, i64 0, !419, i64 8, !419, i64 16}
!419 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!420 = !{!418, !419, i64 16}
!421 = !{!411, !412, i64 8}
!422 = distinct !{!422, !263}
!423 = !{!411, !412, i64 16}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN5arrow6Status2OKEv: argument 0"}
!426 = distinct !{!426, !"_ZN5arrow6Status2OKEv"}
!427 = distinct !{!427, !263}
!428 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!429 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!430 = !{!431, !432, i64 0}
!431 = !{!"_ZTSSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EE", !432, i64 0, !22, i64 8}
!432 = !{!"p1 _ZTSN5arrow2io16HdfsReadableFileE", !12, i64 0}
!433 = !{!434}
!434 = distinct !{!434, !435, !"_ZN5arrow6Status2OKEv: argument 0"}
!435 = distinct !{!435, !"_ZN5arrow6Status2OKEv"}
!436 = !{!437}
!437 = distinct !{!437, !438, !"_ZN5arrow2io16HadoopFileSystem12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_9IOContextEPSt10shared_ptrINS0_16HdfsReadableFileEE: argument 0"}
!438 = distinct !{!438, !"_ZN5arrow2io16HadoopFileSystem12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_9IOContextEPSt10shared_ptrINS0_16HdfsReadableFileEE"}
!439 = !{!440}
!440 = distinct !{!440, !441, !"_ZN5arrow2io16HadoopFileSystem12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_9IOContextEPSt10shared_ptrINS0_16HdfsReadableFileEE: argument 0"}
!441 = distinct !{!441, !"_ZN5arrow2io16HadoopFileSystem12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_9IOContextEPSt10shared_ptrINS0_16HdfsReadableFileEE"}
!442 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!443 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!444 = !{!445, !446, i64 0}
!445 = !{!"_ZTSSt12__shared_ptrIN5arrow2io16HdfsOutputStreamELN9__gnu_cxx12_Lock_policyE2EE", !446, i64 0, !22, i64 8}
!446 = !{!"p1 _ZTSN5arrow2io16HdfsOutputStreamE", !12, i64 0}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZN5arrow6Status2OKEv: argument 0"}
!449 = distinct !{!449, !"_ZN5arrow6Status2OKEv"}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZN5arrow2io16HadoopFileSystem12OpenWritableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbislPSt10shared_ptrINS0_16HdfsOutputStreamEE: argument 0"}
!452 = distinct !{!452, !"_ZN5arrow2io16HadoopFileSystem12OpenWritableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbislPSt10shared_ptrINS0_16HdfsOutputStreamEE"}
!453 = !{!454}
!454 = distinct !{!454, !455, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl5ChmodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi: argument 0"}
!455 = distinct !{!455, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl5ChmodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi"}
!456 = !{!457, !454}
!457 = distinct !{!457, !458, !"_ZN5arrow6Status2OKEv: argument 0"}
!458 = distinct !{!458, !"_ZN5arrow6Status2OKEv"}
!459 = !{!460}
!460 = distinct !{!460, !461, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl5ChownERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSC_: argument 0"}
!461 = distinct !{!461, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl5ChownERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSC_"}
!462 = !{!463, !460}
!463 = distinct !{!463, !464, !"_ZN5arrow6Status2OKEv: argument 0"}
!464 = distinct !{!464, !"_ZN5arrow6Status2OKEv"}
!465 = !{!466}
!466 = distinct !{!466, !467, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl6RenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_: argument 0"}
!467 = distinct !{!467, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl6RenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_"}
!468 = !{!469, !466}
!469 = distinct !{!469, !470, !"_ZN5arrow6Status2OKEv: argument 0"}
!470 = distinct !{!470, !"_ZN5arrow6Status2OKEv"}
!471 = !{!472}
!472 = distinct !{!472, !473, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl4CopyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_: argument 0"}
!473 = distinct !{!473, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl4CopyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_"}
!474 = !{!475, !472}
!475 = distinct !{!475, !476, !"_ZN5arrow6Status2OKEv: argument 0"}
!476 = distinct !{!476, !"_ZN5arrow6Status2OKEv"}
!477 = !{!478}
!478 = distinct !{!478, !479, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl4MoveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_: argument 0"}
!479 = distinct !{!479, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl4MoveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_"}
!480 = !{!481, !478}
!481 = distinct !{!481, !482, !"_ZN5arrow6Status2OKEv: argument 0"}
!482 = distinct !{!482, !"_ZN5arrow6Status2OKEv"}
!483 = !{!484}
!484 = distinct !{!484, !485, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA10_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!485 = distinct !{!485, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA10_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!486 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!487 = !{!488, !489, i64 0}
!488 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !489, i64 0, !22, i64 8}
!489 = !{!"p1 _ZTSN5arrow12StatusDetailE", !12, i64 0}
!490 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!491 = distinct !{ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!492 = !{!493, !501, i64 8}
!493 = !{!"_ZTSN5arrow4util6detail19StringStreamWrapperE", !494, i64 0, !501, i64 8}
!494 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !495, i64 0}
!495 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !496, i64 0}
!496 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !497, i64 0}
!497 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !498, i64 0}
!498 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !499, i64 0}
!499 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !500, i64 0}
!500 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!501 = !{!"p1 _ZTSSo", !12, i64 0}
!502 = !{i64 8}
!503 = distinct !{null}
!504 = distinct !{null}
!505 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!506 = !{!507, !508, i64 0}
!507 = !{!"_ZTSN5arrow6Status5StateE", !508, i64 0, !28, i64 8, !509, i64 40}
!508 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!509 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !488, i64 0}
!510 = !{!511}
!511 = distinct !{!511, !512, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA5_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!512 = distinct !{!512, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA5_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!513 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!514 = !{!515}
!515 = distinct !{!515, !516, !"_ZN5arrow4util13StringBuilderIJRA30_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!516 = distinct !{!516, !"_ZN5arrow4util13StringBuilderIJRA30_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!517 = distinct !{null, null, null, null}
!518 = !{!128, !129, i64 0}
!519 = !{!520, !122, i64 0}
!520 = !{!"_ZTSNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !122, i64 0}
!521 = distinct !{null, null}
!522 = !{!523, !122, i64 16}
!523 = !{!"_ZTSSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !299, i64 0, !520, i64 16}
!524 = distinct !{null}
!525 = !{!526, !26, i64 8}
!526 = !{!"_ZTSSt9type_info", !26, i64 8}
!527 = !{!528}
!528 = distinct !{!528, !529, !"_ZN5arrow8internal15StatusFromErrnoIJRA26_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!529 = distinct !{!529, !"_ZN5arrow8internal15StatusFromErrnoIJRA26_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!530 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!531 = !{!532}
!532 = distinct !{!532, !533, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcS4_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!533 = distinct !{!533, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcS4_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!534 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!535 = !{!536}
!536 = distinct !{!536, !537, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA11_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!537 = distinct !{!537, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA11_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!538 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!539 = !{!540}
!540 = distinct !{!540, !541, !"_ZN5arrow4util13StringBuilderIJRA23_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!541 = distinct !{!541, !"_ZN5arrow4util13StringBuilderIJRA23_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!542 = !{!543}
!543 = distinct !{!543, !544, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA17_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!544 = distinct !{!544, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA17_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!545 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!546 = !{!547}
!547 = distinct !{!547, !548, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA7_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!548 = distinct !{!548, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA7_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!549 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!550 = !{!551}
!551 = distinct !{!551, !552, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA19_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!552 = distinct !{!552, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA19_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!553 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!554 = !{!187, !188, i64 0}
!555 = !{!187, !26, i64 8}
!556 = !{!187, !26, i64 48}
!557 = !{!187, !26, i64 56}
!558 = !{!187, !17, i64 72}
!559 = !{!380, !4, i64 124}
!560 = !{!187, !17, i64 16}
!561 = !{!380, !4, i64 120}
!562 = !{!187, !189, i64 32}
!563 = !{!380, !189, i64 128}
!564 = !{!187, !17, i64 40}
!565 = !{!380, !17, i64 112}
!566 = !{!187, !189, i64 64}
!567 = !{!380, !189, i64 130}
!568 = !{!569}
!569 = distinct !{!569, !570, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA12_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!570 = distinct !{!570, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA12_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!571 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!572 = !{!573}
!573 = distinct !{!573, !574, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA8_S2_S6_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!574 = distinct !{!574, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA8_S2_S6_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!575 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!576 = !{!577}
!577 = distinct !{!577, !578, !"_ZN5arrow8internal15StatusFromErrnoIJRA32_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!578 = distinct !{!578, !"_ZN5arrow8internal15StatusFromErrnoIJRA32_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!579 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!580 = !{!581}
!581 = distinct !{!581, !582, !"_ZN5arrow4util13StringBuilderIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!582 = distinct !{!582, !"_ZN5arrow4util13StringBuilderIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!583 = !{!418, !419, i64 0}
!584 = !{!585}
!585 = distinct !{!585, !586, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!586 = distinct !{!586, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!587 = !{!588}
!588 = distinct !{!588, !586, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!589 = !{!585, !588}
!590 = distinct !{!590, !263}
!591 = !{!592}
!592 = distinct !{!592, !593, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!593 = distinct !{!593, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!594 = !{!595}
!595 = distinct !{!595, !593, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!596 = !{!592, !595}
!597 = !{!598}
!598 = distinct !{!598, !599, !"_ZN5arrow8internal15StatusFromErrnoIJRA27_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!599 = distinct !{!599, !"_ZN5arrow8internal15StatusFromErrnoIJRA27_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!600 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!601 = !{!602}
!602 = distinct !{!602, !603, !"_ZN5arrow4util13StringBuilderIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!603 = distinct !{!603, !"_ZN5arrow4util13StringBuilderIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!604 = distinct !{!604, !605}
!605 = !{!"llvm.loop.unroll.disable"}
!606 = distinct !{!606, !263}
!607 = distinct !{!607, !605}
!608 = !{!609}
!609 = distinct !{!609, !610, !"_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!610 = distinct !{!610, !"_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_"}
!611 = !{!612}
!612 = distinct !{!612, !610, !"_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!613 = !{!609, !612}
!614 = distinct !{!614, !263}
!615 = !{!616}
!616 = distinct !{!616, !617, !"_ZN5arrow8internal15StatusFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!617 = distinct !{!617, !"_ZN5arrow8internal15StatusFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!618 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!619 = distinct !{null, null}
!620 = !{!621, !432, i64 16}
!621 = !{!"_ZTSSt15_Sp_counted_ptrIPN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EE", !299, i64 0, !432, i64 16}
!622 = !{!47, !23, i64 0}
!623 = !{!45, !46, i64 0}
end_hunk_2
