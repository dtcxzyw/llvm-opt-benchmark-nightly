inline.NumInlined: 1207
inline.NumDeleted: 497
begin_hunk_0_@_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl4StatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14FileStatisticsE:bb.a
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %bb.c
  %i.r = load ptr, ptr %1, align 8, !tbaa !236, !noalias !307
  invoke void @_ZN5arrow2io8internal11LibHdfsShim12FreeFileInfoEP12hdfsFileInfoi(ptr noundef nonnull align 8 dereferenceable(312) %i.r, ptr noundef nonnull %i.n, i32 noundef 1)
          to label %_ZN5arrow6StatusD2Ev.exit.thread unwind label %bb.d

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b
  %.pr = load ptr, ptr %5, align 8, !tbaa !58     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.s = icmp eq ptr %.pr, null
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit17, label %.critedge

bb.d:                                             ; preds = %.noexc12, %bb.c, %bb.b, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN5arrow2io12HdfsPathInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(132) dereferenceable(132) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.t

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.v = load i64, ptr %i.u, align 8, !tbaa !313
  store i64 %i.v, ptr %3, align 8, !tbaa !316
  %i.w = load i32, ptr %4, align 8, !tbaa !318
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.w, ptr %i.x, align 8, !tbaa !319
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !320
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit17
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.h
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !29
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !40  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !29
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.b
  br i1 %i.ah, label %_ZN5arrow2io12HdfsPathInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !29
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #27
  br label %_ZN5arrow2io12HdfsPathInfoD2Ev.exit

_ZN5arrow2io12HdfsPathInfoD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem11GetCapacityEPl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !236, !noalias !323
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !239, !noalias !323
  %i.f = tail call noundef i64 @_ZN5arrow2io8internal11LibHdfsShim11GetCapacityEP13hdfs_internal(ptr noundef nonnull align 8 dereferenceable(312) %i.c, ptr noundef %i.e), !noalias !323 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__errno_location() #28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !323
  tail call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA6_KcRA12_S2_RA8_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, ptr noundef nonnull align 1 dereferenceable(8) @.str.4)
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetCapacityEPl.exit

bb.c:                                             ; preds = %bb.a
  store i64 %i.f, ptr %2, align 8, !tbaa !101, !noalias !323
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !326
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetCapacityEPl.exit

_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetCapacityEPl.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem7GetUsedEPl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !236, !noalias !329
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !239, !noalias !329
  %i.f = tail call noundef i64 @_ZN5arrow2io8internal11LibHdfsShim7GetUsedEP13hdfs_internal(ptr noundef nonnull align 8 dereferenceable(312) %i.c, ptr noundef %i.e), !noalias !329 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__errno_location() #28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !329
  tail call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA6_KcRA8_S2_S6_EEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, ptr noundef nonnull align 1 dereferenceable(8) @.str.26, ptr noundef nonnull align 1 dereferenceable(8) @.str.4)
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl7GetUsedEPl.exit

bb.c:                                             ; preds = %bb.a
  store i64 %i.f, ptr %2, align 8, !tbaa !101, !noalias !329
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !332
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl7GetUsedEPl.exit

_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl7GetUsedEPl.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !240  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !335
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236, !noalias !335
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !239, !noalias !335
  %i.g = call noundef ptr @_ZN5arrow2io8internal11LibHdfsShim19GetWorkingDirectoryEP13hdfs_internalPcm(ptr noundef nonnull align 8 dereferenceable(312) %i.d, ptr noundef %i.f, ptr noundef nonnull %i.a, i64 noundef 2047), !noalias !335
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__errno_location() #28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !335
  call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA32_KcEEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.j, ptr noundef nonnull align 1 dereferenceable(32) @.str.27)
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27, !noalias !335
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #26, !noalias !335
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.l, ptr noundef nonnull %i.a, i64 noundef %i.m), !noalias !335 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !338
  br label %_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !335
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem11GetChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS7_SaIS7_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  tail call void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS8_SaIS8_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS8_SaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 12 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_12HdfsPathInfoESaISC_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %4)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !58     ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.b = icmp eq ptr %i.a, null
  %.pre28 = load ptr, ptr %4, align 8, !tbaa !341 ; 4 uses
  br i1 %i.b, label %_ZN5arrow6StatusD2Ev.exit19, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.k

_ZN5arrow6StatusD2Ev.exit19:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !341  ; 2 uses
  %i.f = icmp eq ptr %.pre28, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit19
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.pre.pre = load ptr, ptr %4, align 8, !tbaa !343
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5arrow6StatusD2Ev.exit19
  %.pre = phi ptr [ %.pre.pre, %._crit_edge.loopexit ], [ %.pre28, %_ZN5arrow6StatusD2Ev.exit19 ]
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !345
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.024.027 = phi ptr [ %.pre28, %.lr.ph ], [ %i.aa, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.027, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !348  ; 6 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !351
  %.not.i20 = icmp eq ptr %i.j, %i.k
  br i1 %.not.i20, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !24
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !40   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.024.027, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27   ; 8 uses
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = icmp slt i64 %i.o, 0
  br i1 %i.q, label %.noexc.i.i.i, label %bb.f

.noexc.i.i.i:                                     ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = add nuw i64 %i.o, 1                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !69

.noexc6.i.i.i:                                    ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.f
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25
          to label %.noexc22 unwind label %.loopexit ; 2 uses

.noexc22:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.t, ptr %i.j, align 8, !tbaa !40
  store i64 %i.o, ptr %i.l, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc22, %bb.d
  %i.u = phi ptr [ %i.t, %.noexc22 ], [ %i.l, %bb.d ] ; 3 uses
  switch i64 %i.o, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = load i8, ptr %i.m, align 1, !tbaa !29
  store i8 %i.v, ptr %i.u, align 1, !tbaa !29
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.o, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o
  store i8 0, ptr %i.x, align 1, !tbaa !29
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !348
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.z, ptr %i.g, align 8, !tbaa !348
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.i:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.024.027, i64 136 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.e
  br i1 %i.ab, label %._crit_edge.loopexit, label %bb.c

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i, %.noexc6.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  %i.ac = phi ptr [ %.pre28, %_ZN5arrow6StatusD2Ev.exit ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !352 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge, %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i ], [ %i.ac, %.critedge ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !29
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !29
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !40 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !29
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #27
  br label %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %i.ae
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !353

_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !343
  br label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %.critedge
  %i.ay = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %.critedge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !354
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #27
  br label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.b
  %.pn14 = phi { ptr, i32 } [ %i.c, %bb.b ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn14
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_12HdfsPathInfoESaISB_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  tail call void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_12HdfsPathInfoESaISC_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_12HdfsPathInfoESaISC_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = tail call ptr @__errno_location() #28    ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.c = load ptr, ptr %1, align 8, !tbaa !236
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !239
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
  %i.j = load ptr, ptr %1, align 8, !tbaa !236
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !239
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
  call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA27_KcEEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.o, ptr noundef nonnull align 1 dereferenceable(27) @.str.29)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge19, %bb.d
  %i.p = phi i32 [ %.pre, %._crit_edge19 ], [ 0, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !352
  %i.s = load ptr, ptr %3, align 8, !tbaa !343
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
  %i.ad = load ptr, ptr %1, align 8, !tbaa !236
  call void @_ZN5arrow2io8internal11LibHdfsShim12FreeFileInfoEP12hdfsFileInfoi(ptr noundef nonnull align 8 dereferenceable(312) %i.ad, ptr noundef %i.g, i32 noundef %.lcssa)
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !355
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %indvars.iv
  %i.af = load ptr, ptr %3, align 8, !tbaa !343
  %i.ag = getelementptr [136 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = getelementptr [136 x i8], ptr %i.ag, i64 %i.ac
  call fastcc void @_ZN5arrow2ioL11SetPathInfoEPK12hdfsFileInfoPNS0_12HdfsPathInfoE(ptr noundef %i.ae, ptr noundef nonnull %i.ah)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !358

bb.g:                                             ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io16HadoopFileSystem12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPSt10shared_ptrINS0_16HdfsReadableFileEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  %i.c = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5arrow2io18default_io_contextEv()
  tail call void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_9IOContextEPSt10shared_ptrINS0_16HdfsReadableFileEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_9IOContextEPSt10shared_ptrINS0_16HdfsReadableFileEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr.124", align 16 ; 7 uses
  %i.a = tail call ptr @__errno_location() #28    ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = load ptr, ptr %1, align 8, !tbaa !236
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !239
  %i.e = load ptr, ptr %2, align 8, !tbaa !40
  %i.f = tail call noundef ptr @_ZN5arrow2io8internal11LibHdfsShim8OpenFileEP13hdfs_internalPKciisi(ptr noundef nonnull align 8 dereferenceable(312) %i.b, ptr noundef %i.d, ptr noundef %i.e, i32 noundef 0, i32 noundef %3, i16 noundef signext 0, i32 noundef 0) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 4, !tbaa !3
  tail call void @_ZN5arrow8internal16IOErrorFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.h, ptr noundef nonnull align 1 dereferenceable(20) @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.15)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.i = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25 ; 11 uses
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
  %i.o = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25
          to label %bb.g unwind label %bb.f       ; 6 uses

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIN5arrow2io16HdfsReadableFile20HdfsReadableFileImplESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #26
  tail call void @_ZN5arrow2io16RandomAccessFileD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16HdfsReadableFileE, i64 8)) #26
  br label %.body

.body:                                            ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  tail call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.j) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 64) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
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
  %i.y = load <2 x ptr>, ptr %6, align 16, !tbaa !129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !249  ; 8 uses
  store <2 x ptr> %i.y, ptr %5, align 8, !tbaa !129
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aa, align 8, !tbaa !242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !244
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #26, !inline_history !359
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #26, !inline_history !359
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
  br i1 %i.ao, label %bb.m, label %_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit, !prof !69

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #26
  br label %_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit

_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !249 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5arrow2io16HdfsReadableFileEEaSEOS3_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.aq, align 8, !tbaa !242
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !244
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #26, !inline_history !360
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #26, !inline_history !360
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
  br i1 %i.be, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #26
  br label %_ZNSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN5arrow8internal16IOErrorFromErrnoIJRA32_KcEEENS_6StatusEiDpOT_:bb.a
  %3 = alloca %"class.std::shared_ptr.35", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN5arrow8internal21StatusDetailFromErrnoEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.35") align 8 %3, i32 noundef %1), !noalias !501
  invoke void @_ZN5arrow6Status17FromDetailAndArgsIJRA32_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !249, !noalias !501 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow8internal15StatusFromErrnoIJRA32_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !242
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !244
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !504
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !504
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA32_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29, !noalias !501
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
  br i1 %i.q, label %bb.h, label %_ZN5arrow8internal15StatusFromErrnoIJRA32_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA32_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.i:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #26
  resume { ptr, i32 } %i.r

_ZN5arrow8internal15StatusFromErrnoIJRA32_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status17FromDetailAndArgsIJRA32_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::shared_ptr.35", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !505
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4), !noalias !505
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421, !noalias !505, !nonnull !54, !align !431
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(32) %3) #26, !noalias !505
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %3, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !505 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3 ], [ %i.ae, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !505
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !505
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load <2 x ptr>, ptr %2, align 8, !tbaa !129
  store ptr null, ptr %i.g, align 8, !tbaa !249
  store <2 x ptr> %i.h, ptr %6, align 16, !tbaa !129
  store ptr null, ptr %2, align 8, !tbaa !418
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !249  ; 8 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.k, align 8, !tbaa !242
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !244
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #26, !inline_history !419
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #26, !inline_history !419
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.n, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.z = load ptr, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.l:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  %i.af = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.l
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !29
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !343    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !352  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !29
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !29
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !29
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #27
  br label %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !353

_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !343
  br label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.w = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !354
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !508    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #30
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !24
  %i.t = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27   ; 8 uses
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.x = icmp slt i64 %i.v, 0
  br i1 %i.x, label %.noexc.i.i, label %bb.e

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #30
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.y = add nuw i64 %i.v, 1                      ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !69

.noexc6.i.i:                                      ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc26 unwind label %bb.m

.noexc26:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #25
          to label %.noexc27 unwind label %bb.m   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.aa, ptr %i.r, align 8, !tbaa !40
  store i64 %i.v, ptr %i.s, align 8, !tbaa !29
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc27, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.ab = phi ptr [ %i.aa, %.noexc27 ], [ %i.s, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 3 uses
  switch i64 %i.v, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.t, align 1, !tbaa !29
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !29
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.v, ptr %i.ad, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  store i8 0, ptr %i.ae, align 1, !tbaa !29
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.h ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.h ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !24, !alias.scope !509, !noalias !512
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !40, !alias.scope !512, !noalias !509 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !27, !alias.scope !512, !noalias !509 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !514
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !40, !alias.scope !509, !noalias !512
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !29, !alias.scope !512, !noalias !509
  store i64 %i.an, ptr %i.af, align 8, !tbaa !29, !alias.scope !509, !noalias !512
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !27, !alias.scope !512, !noalias !509
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.i
  %i.ao = phi i64 [ %i.ak, %bb.i ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !27, !alias.scope !509, !noalias !512
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !40, !alias.scope !512, !noalias !509
  store i64 0, ptr %i.ap, align 8, !tbaa !27, !alias.scope !512, !noalias !509
  store i8 0, ptr %i.ah, align 8, !tbaa !29, !alias.scope !512, !noalias !509
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !515

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.h
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.h ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i31 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i30, align 8, !tbaa !24, !alias.scope !516, !noalias !519
  %i.av = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !40, !alias.scope !519, !noalias !516 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32

bb.j:                                             ; preds = %.lr.ph.i.i.i29
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !27, !alias.scope !519, !noalias !516 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !521
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.av, ptr %.012.i.i.i30, align 8, !tbaa !40, !alias.scope !516, !noalias !519
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !29, !alias.scope !519, !noalias !516
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !29, !alias.scope !516, !noalias !519
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !27, !alias.scope !519, !noalias !516
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32, %bb.j
  %i.bd = phi i64 [ %i.az, %bb.j ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !27, !alias.scope !516, !noalias !519
  store ptr %i.aw, ptr %.0911.i.i.i31, align 8, !tbaa !40, !alias.scope !519, !noalias !516
  store i64 0, ptr %i.be, align 8, !tbaa !27, !alias.scope !519, !noalias !516
  store i8 0, ptr %i.aw, align 8, !tbaa !29, !alias.scope !519, !noalias !516
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bg, %i.b
  br i1 %.not.i.i.i36, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !515

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !351
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bl) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, %bb.k
  store ptr %i.q, ptr %0, align 8, !tbaa !508
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8, !tbaa !348
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !351
  ret void

bb.l:                                             ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = tail call ptr @__cxa_begin_catch(ptr %i.bp) #26 ; 0 uses
  %i.br = shl nuw nsw i64 %i.l, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.br) #27
  invoke void @__cxa_rethrow() #30
          to label %bb.p unwind label %bb.l

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bn

bb.o:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  tail call void @__clang_call_terminate(ptr %i.bt) #29
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef ptr @_ZN5arrow2io8internal11LibHdfsShim13ListDirectoryEP13hdfs_internalPKcPi(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal16IOErrorFromErrnoIJRA27_KcEEENS_6StatusEiDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(27) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.35", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN5arrow8internal21StatusDetailFromErrnoEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.35") align 8 %3, i32 noundef %1), !noalias !522
  invoke void @_ZN5arrow6Status17FromDetailAndArgsIJRA27_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(27) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !249, !noalias !522 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow8internal15StatusFromErrnoIJRA27_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !242
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !244
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !525
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !525
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA27_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29, !noalias !522
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
  br i1 %i.q, label %bb.h, label %_ZN5arrow8internal15StatusFromErrnoIJRA27_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA27_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.i:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #26
  resume { ptr, i32 } %i.r

_ZN5arrow8internal15StatusFromErrnoIJRA27_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !343    ; 2 uses
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
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !29
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !29
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !353

_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN5arrow2io12HdfsPathInfoEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !352
  br label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %_ZSt8_DestroyIPN5arrow2io12HdfsPathInfoES2_EvT_S4_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status17FromDetailAndArgsIJRA27_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(27) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::shared_ptr.35", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !526
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4), !noalias !526
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421, !noalias !526, !nonnull !54, !align !431
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(27) %3) #26, !noalias !526
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(27) %3, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !526 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3 ], [ %i.ae, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !526
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !526
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load <2 x ptr>, ptr %2, align 8, !tbaa !129
  store ptr null, ptr %i.g, align 8, !tbaa !249
  store <2 x ptr> %i.h, ptr %6, align 16, !tbaa !129
  store ptr null, ptr %2, align 8, !tbaa !418
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !249  ; 8 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.k, align 8, !tbaa !242
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !244
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #26, !inline_history !419
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #26, !inline_history !419
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.n, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.z = load ptr, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.l:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  %i.af = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.l
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !29
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !343    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 136                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !354
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !529

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
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !531

_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ba, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !352
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.bb = icmp ult i64 %i.n, %1
  br i1 %i.bb, label %bb.d, label %_ZNKSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #30
  unreachable

_ZNKSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.bc = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 67818912035696880) ; 2 uses
  %i.be = mul nuw nsw i64 %i.bd, 136
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #25 ; 4 uses
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
  br i1 %prol.iter56.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !532

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
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !531

_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.en, %_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.bf, %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 12 uses
  %.0911.i.i.i = phi ptr [ %i.em, %_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.ct = load i32, ptr %.0911.i.i.i, align 8, !tbaa !318, !alias.scope !536, !noalias !533
  store i32 %i.ct, ptr %.012.i.i.i, align 8, !tbaa !318, !alias.scope !533, !noalias !536
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !24, !alias.scope !533, !noalias !536
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !40, !alias.scope !536, !noalias !533 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !27, !alias.scope !536, !noalias !533 ; 3 uses
  %i.dc = icmp ult i64 %i.db, 16
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = add nuw nsw i64 %i.db, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cw, ptr noundef nonnull align 8 dereferenceable(1) %i.cy, i64 %i.dd, i1 false), !alias.scope !538
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i37
  store ptr %i.cx, ptr %i.cu, align 8, !tbaa !40, !alias.scope !533, !noalias !536
  %i.de = load i64, ptr %i.cy, align 8, !tbaa !29, !alias.scope !536, !noalias !533
  store i64 %i.de, ptr %i.cw, align 8, !tbaa !29, !alias.scope !533, !noalias !536
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !27, !alias.scope !536, !noalias !533
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.df = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.db, %bb.e ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.df, ptr %i.dh, align 8, !tbaa !27, !alias.scope !533, !noalias !536
  store ptr %i.cy, ptr %i.cv, align 8, !tbaa !40, !alias.scope !536, !noalias !533
  store i64 0, ptr %i.dg, align 8, !tbaa !27, !alias.scope !536, !noalias !533
  store i8 0, ptr %i.cy, align 8, !tbaa !29, !alias.scope !536, !noalias !533
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 3 uses
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !24, !alias.scope !533, !noalias !536
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !40, !alias.scope !536, !noalias !533 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 5 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !27, !alias.scope !536, !noalias !533 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 16
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i64 %i.dp, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dk, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.dr, i1 false), !alias.scope !538
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !40, !alias.scope !533, !noalias !536
  %i.ds = load i64, ptr %i.dm, align 8, !tbaa !29, !alias.scope !536, !noalias !533
  store i64 %i.ds, ptr %i.dk, align 8, !tbaa !29, !alias.scope !533, !noalias !536
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !27, !alias.scope !536, !noalias !533
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i.i, %bb.f
  %i.dt = phi i64 [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i.i ], [ %i.dp, %bb.f ]
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  store i64 %i.dt, ptr %i.dv, align 8, !tbaa !27, !alias.scope !533, !noalias !536
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !40, !alias.scope !536, !noalias !533
  store i64 0, ptr %i.du, align 8, !tbaa !27, !alias.scope !536, !noalias !533
  store i8 0, ptr %i.dm, align 8, !tbaa !29, !alias.scope !536, !noalias !533
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 3 uses
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !24, !alias.scope !533, !noalias !536
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !40, !alias.scope !536, !noalias !533 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 5 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !27, !alias.scope !536, !noalias !533 ; 3 uses
  %i.ee = icmp ult i64 %i.ed, 16
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = add nuw nsw i64 %i.ed, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dy, ptr noundef nonnull align 8 dereferenceable(1) %i.ea, i64 %i.ef, i1 false), !alias.scope !538
  br label %_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i.i
  store ptr %i.dz, ptr %i.dw, align 8, !tbaa !40, !alias.scope !533, !noalias !536
  %i.eg = load i64, ptr %i.ea, align 8, !tbaa !29, !alias.scope !536, !noalias !533
  store i64 %i.eg, ptr %i.dy, align 8, !tbaa !29, !alias.scope !533, !noalias !536
  %.phi.trans.insert7.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %.pre8.i.i.i.i = load i64, ptr %.phi.trans.insert7.i.i.i.i, align 8, !tbaa !27, !alias.scope !536, !noalias !533
  br label %_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i.i, %bb.g
  %i.eh = phi i64 [ %i.ed, %bb.g ], [ %.pre8.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  store i64 %i.eh, ptr %i.ej, align 8, !tbaa !27, !alias.scope !533, !noalias !536
  store ptr %i.ea, ptr %i.dx, align 8, !tbaa !40, !alias.scope !536, !noalias !533
  store i64 0, ptr %i.ei, align 8, !tbaa !27, !alias.scope !536, !noalias !533
  store i8 0, ptr %i.ea, align 8, !tbaa !29, !alias.scope !536, !noalias !533
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  %i.el = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ek, ptr noundef nonnull align 8 dereferenceable(28) %i.el, i64 28, i1 false), !alias.scope !538
  %i.em = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 136 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 136
  %.not.i.i.i38 = icmp eq ptr %i.em, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !539

_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.eo = load ptr, ptr %i.h, align 8, !tbaa !354
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub i64 %i.ep, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.eq) #27
  br label %_ZNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN5arrow2io12HdfsPathInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.h
  store ptr %i.bf, ptr %0, align 8, !tbaa !343
  %i.er = getelementptr inbounds nuw [136 x i8], ptr %i.bg, i64 %1
  store ptr %i.er, ptr %i.a, align 8, !tbaa !352
  %i.es = getelementptr inbounds nuw [136 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.es, ptr %i.h, align 8, !tbaa !354
  br label %bb.i

bb.i:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow2io12HdfsPathInfoEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

declare noundef ptr @_ZN5arrow2io8internal11LibHdfsShim8OpenFileEP13hdfs_internalPKciisi(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal16IOErrorFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(9) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.35", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN5arrow8internal21StatusDetailFromErrnoEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.35") align 8 %5, i32 noundef %1), !noalias !540
  invoke void @_ZN5arrow6Status17FromDetailAndArgsIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(9) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !249, !noalias !540 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow8internal15StatusFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !242
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !244
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !543
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !543
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29, !noalias !540
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
  br i1 %i.q, label %bb.h, label %_ZN5arrow8internal15StatusFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.i:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  resume { ptr, i32 } %i.r

_ZN5arrow8internal15StatusFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status17FromDetailAndArgsIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(9) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::shared_ptr.35", align 16 ; 4 uses
  call void @_ZN5arrow8internal12JoinToStringIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(9) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x ptr>, ptr %2, align 8, !tbaa !129
  store ptr null, ptr %i.a, align 8, !tbaa !249
  store <2 x ptr> %i.b, ptr %7, align 16, !tbaa !129
  store ptr null, ptr %2, align 8, !tbaa !418
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull %6, ptr noundef nonnull %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !249  ; 8 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !242
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !244
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !419
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !419
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
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.t = load ptr, ptr %6, align 8, !tbaa !40     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !29
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.i:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #26
  %i.z = load ptr, ptr %6, align 8, !tbaa !40     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(9) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421, !nonnull !54, !align !431
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(20) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !421, !nonnull !54, !align !431
  %i.f = load ptr, ptr %2, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit unwind label %bb.d ; 0 uses

end_hunk_1
begin_hunk_2_@llvm.umax.i64
!141 = distinct !{!141, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZNO5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!144 = distinct !{!144, !"_ZNO5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!147 = distinct !{!147, !"_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!148 = !{!146, !143}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN5arrow15ResizableBuffer6ResizeEl: argument 0"}
!151 = distinct !{!151, !"_ZN5arrow15ResizableBuffer6ResizeEl"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN5arrow2io16HdfsReadableFile4ReadEl: argument 0"}
!154 = distinct !{!154, !"_ZN5arrow2io16HdfsReadableFile4ReadEl"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv: argument 0"}
!157 = distinct !{!157, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN5arrow2io12_GLOBAL__N_117GetPathInfoFailedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!160 = distinct !{!160, !"_ZN5arrow2io12_GLOBAL__N_117GetPathInfoFailedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!161 = !{!162, !17, i64 24}
!162 = !{!"_ZTS12hdfsFileInfo", !163, i64 0, !26, i64 8, !17, i64 16, !17, i64 24, !164, i64 32, !17, i64 40, !26, i64 48, !26, i64 56, !164, i64 64, !17, i64 72}
!163 = !{!"_ZTS11tObjectKind", !5, i64 0}
!164 = !{!"short", !5, i64 0}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZN5arrow2io15HdfsAnyFileImpl4SeekEl: argument 0"}
!167 = distinct !{!167, !"_ZN5arrow2io15HdfsAnyFileImpl4SeekEl"}
!168 = !{!169, !166}
!169 = distinct !{!169, !170, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv: argument 0"}
!170 = distinct !{!170, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv"}
!171 = !{!172, !166}
!172 = distinct !{!172, !173, !"_ZN5arrow6Status2OKEv: argument 0"}
!173 = distinct !{!173, !"_ZN5arrow6Status2OKEv"}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZN5arrow2io16HdfsReadableFile4SeekEl: argument 0"}
!176 = distinct !{!176, !"_ZN5arrow2io16HdfsReadableFile4SeekEl"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZN5arrow2io15HdfsAnyFileImpl4SeekEl: argument 0"}
!179 = distinct !{!179, !"_ZN5arrow2io15HdfsAnyFileImpl4SeekEl"}
!180 = !{!178, !175}
!181 = !{!182, !178, !175}
!182 = distinct !{!182, !183, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv: argument 0"}
!183 = distinct !{!183, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv"}
!184 = !{!185, !178, !175}
!185 = distinct !{!185, !186, !"_ZN5arrow6Status2OKEv: argument 0"}
!186 = distinct !{!186, !"_ZN5arrow6Status2OKEv"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv: argument 0"}
!189 = distinct !{!189, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv"}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZNK5arrow2io16HdfsReadableFile4TellEv: argument 0"}
!192 = distinct !{!192, !"_ZNK5arrow2io16HdfsReadableFile4TellEv"}
!193 = !{!194, !195, i64 0}
!194 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow2io16HdfsOutputStream20HdfsOutputStreamImplELb0EE", !195, i64 0}
!195 = !{!"p1 _ZTSN5arrow2io16HdfsOutputStream20HdfsOutputStreamImplE", !12, i64 0}
!196 = !{!195, !195, i64 0}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl13FlushInternalEv: argument 0"}
!199 = distinct !{!199, !"_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl13FlushInternalEv"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZN5arrow6Status2OKEv: argument 0"}
!202 = distinct !{!202, !"_ZN5arrow6Status2OKEv"}
!203 = !{ptr @_ZN5arrow2io16HdfsOutputStreamD1Ev}
!204 = !{ptr @_ZN5arrow2io16HdfsOutputStreamD0Ev, ptr @_ZN5arrow2io16HdfsOutputStreamD1Ev}
!205 = !{ptr @_ZN5arrow2io16HdfsOutputStreamD0Ev}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZN5arrow2io16HdfsOutputStream5CloseEv: argument 0"}
!208 = distinct !{!208, !"_ZN5arrow2io16HdfsOutputStream5CloseEv"}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv: argument 0"}
!211 = distinct !{!211, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv"}
!212 = distinct !{!212, !213}
!213 = !{!"llvm.loop.mustprogress"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZN5arrow6Status2OKEv: argument 0"}
!216 = distinct !{!216, !"_ZN5arrow6Status2OKEv"}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5FlushEv: argument 0"}
!219 = distinct !{!219, !"_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5FlushEv"}
!220 = !{!221, !218}
!221 = distinct !{!221, !222, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv: argument 0"}
!222 = distinct !{!222, !"_ZN5arrow2io15HdfsAnyFileImpl11CheckClosedEv"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl13FlushInternalEv: argument 0"}
!225 = distinct !{!225, !"_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl13FlushInternalEv"}
!226 = !{!224, !218}
!227 = !{!228, !224, !218}
!228 = distinct !{!228, !229, !"_ZN5arrow6Status2OKEv: argument 0"}
!229 = distinct !{!229, !"_ZN5arrow6Status2OKEv"}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZNK5arrow2io16HdfsOutputStream4TellEv: argument 0"}
!232 = distinct !{!232, !"_ZNK5arrow2io16HdfsOutputStream4TellEv"}
!233 = !{!234, !235, i64 0}
!234 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow2io16HadoopFileSystem20HadoopFileSystemImplELb0EE", !235, i64 0}
!235 = !{!"p1 _ZTSN5arrow2io16HadoopFileSystem20HadoopFileSystemImplE", !12, i64 0}
!236 = !{!237, !33, i64 0}
!237 = !{!"_ZTSN5arrow2io16HadoopFileSystem20HadoopFileSystemImplE", !33, i64 0, !28, i64 8, !28, i64 40, !4, i64 72, !28, i64 80, !36, i64 112}
!238 = !{!237, !4, i64 72}
!239 = !{!237, !36, i64 112}
!240 = !{!235, !235, i64 0}
!241 = distinct !{null, null, null, null}
!242 = !{!243, !4, i64 8}
!243 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!244 = !{!243, !4, i64 12}
!245 = !{!246, !247, i64 16}
!246 = !{!"_ZTSSt15_Sp_counted_ptrIPN5arrow2io16HadoopFileSystemELN9__gnu_cxx12_Lock_policyE2EE", !243, i64 0, !247, i64 16}
!247 = !{!"p1 _ZTSN5arrow2io16HadoopFileSystemE", !12, i64 0}
!248 = !{!247, !247, i64 0}
!249 = !{!22, !23, i64 0}
!250 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!251 = !{!252, !247, i64 0}
!252 = !{!"_ZTSSt12__shared_ptrIN5arrow2io16HadoopFileSystemELN9__gnu_cxx12_Lock_policyE2EE", !247, i64 0, !22, i64 8}
!253 = !{!254}
!254 = distinct !{!254, !255, !"_ZN5arrow6Status2OKEv: argument 0"}
!255 = distinct !{!255, !"_ZN5arrow6Status2OKEv"}
!256 = !{!257, !4, i64 32}
!257 = !{!"_ZTSN5arrow2io20HdfsConnectionConfigE", !28, i64 0, !4, i64 32, !28, i64 40, !28, i64 72, !258, i64 104}
!258 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !259, i64 0}
!259 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !260, i64 0, !17, i64 8, !262, i64 16, !17, i64 24, !264, i64 32, !263, i64 48}
!260 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !261, i64 0}
!261 = !{!"any p2 pointer", !12, i64 0}
!262 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !263, i64 0}
!263 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!264 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !265, i64 0, !17, i64 8}
!265 = !{!"float", !5, i64 0}
!266 = !{!262, !263, i64 0}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZN5arrow6Status2OKEv: argument 0"}
!269 = distinct !{!269, !"_ZN5arrow6Status2OKEv"}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl13MakeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!272 = distinct !{!272, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl13MakeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!273 = !{!274, !271}
!274 = distinct !{!274, !275, !"_ZN5arrow6Status2OKEv: argument 0"}
!275 = distinct !{!275, !"_ZN5arrow6Status2OKEv"}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl6DeleteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb: argument 0"}
!278 = distinct !{!278, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl6DeleteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb"}
!279 = !{!280, !277}
!280 = distinct !{!280, !281, !"_ZN5arrow6Status2OKEv: argument 0"}
!281 = distinct !{!281, !"_ZN5arrow6Status2OKEv"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"_ZN5arrow2io16HadoopFileSystem6DeleteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb: argument 0"}
!284 = distinct !{!284, !"_ZN5arrow2io16HadoopFileSystem6DeleteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl6DeleteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb: argument 0"}
!287 = distinct !{!287, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl6DeleteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb"}
!288 = !{!286, !283}
!289 = !{!290, !286, !283}
!290 = distinct !{!290, !291, !"_ZN5arrow6Status2OKEv: argument 0"}
!291 = distinct !{!291, !"_ZN5arrow6Status2OKEv"}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl10DisconnectEv: argument 0"}
!294 = distinct !{!294, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl10DisconnectEv"}
!295 = !{!296, !293}
!296 = distinct !{!296, !297, !"_ZN5arrow6Status2OKEv: argument 0"}
!297 = distinct !{!297, !"_ZN5arrow6Status2OKEv"}
!298 = !{!299}
!299 = distinct !{!299, !300, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetPathInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_12HdfsPathInfoE: argument 0"}
!300 = distinct !{!300, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetPathInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_12HdfsPathInfoE"}
!301 = !{!302, !299}
!302 = distinct !{!302, !303, !"_ZN5arrow2io12_GLOBAL__N_117GetPathInfoFailedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!303 = distinct !{!303, !"_ZN5arrow2io12_GLOBAL__N_117GetPathInfoFailedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!304 = !{!305, !299}
!305 = distinct !{!305, !306, !"_ZN5arrow6Status2OKEv: argument 0"}
!306 = distinct !{!306, !"_ZN5arrow6Status2OKEv"}
!307 = !{!308}
!308 = distinct !{!308, !309, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetPathInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_12HdfsPathInfoE: argument 0"}
!309 = distinct !{!309, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetPathInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_12HdfsPathInfoE"}
!310 = !{!311, !308}
!311 = distinct !{!311, !312, !"_ZN5arrow2io12_GLOBAL__N_117GetPathInfoFailedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!312 = distinct !{!312, !"_ZN5arrow2io12_GLOBAL__N_117GetPathInfoFailedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!313 = !{!314, !17, i64 104}
!314 = !{!"_ZTSN5arrow2io12HdfsPathInfoE", !315, i64 0, !28, i64 8, !28, i64 40, !28, i64 72, !17, i64 104, !17, i64 112, !4, i64 120, !4, i64 124, !164, i64 128, !164, i64 130}
!315 = !{!"_ZTSN5arrow2io10ObjectType4typeE", !5, i64 0}
!316 = !{!317, !17, i64 0}
!317 = !{!"_ZTSN5arrow2io14FileStatisticsE", !17, i64 0, !315, i64 8}
!318 = !{!314, !315, i64 0}
!319 = !{!317, !315, i64 8}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZN5arrow6Status2OKEv: argument 0"}
!322 = distinct !{!322, !"_ZN5arrow6Status2OKEv"}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetCapacityEPl: argument 0"}
!325 = distinct !{!325, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetCapacityEPl"}
!326 = !{!327, !324}
!327 = distinct !{!327, !328, !"_ZN5arrow6Status2OKEv: argument 0"}
!328 = distinct !{!328, !"_ZN5arrow6Status2OKEv"}
!329 = !{!330}
!330 = distinct !{!330, !331, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl7GetUsedEPl: argument 0"}
!331 = distinct !{!331, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl7GetUsedEPl"}
!332 = !{!333, !330}
!333 = distinct !{!333, !334, !"_ZN5arrow6Status2OKEv: argument 0"}
!334 = distinct !{!334, !"_ZN5arrow6Status2OKEv"}
!335 = !{!336}
!336 = distinct !{!336, !337, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!337 = distinct !{!337, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl19GetWorkingDirectoryEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!338 = !{!339, !336}
!339 = distinct !{!339, !340, !"_ZN5arrow6Status2OKEv: argument 0"}
!340 = distinct !{!340, !"_ZN5arrow6Status2OKEv"}
!341 = !{!342, !342, i64 0}
!342 = !{!"p1 _ZTSN5arrow2io12HdfsPathInfoE", !12, i64 0}
!343 = !{!344, !342, i64 0}
!344 = !{!"_ZTSNSt12_Vector_baseIN5arrow2io12HdfsPathInfoESaIS2_EE17_Vector_impl_dataE", !342, i64 0, !342, i64 8, !342, i64 16}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZN5arrow6Status2OKEv: argument 0"}
!347 = distinct !{!347, !"_ZN5arrow6Status2OKEv"}
!348 = !{!349, !350, i64 8}
!349 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !350, i64 0, !350, i64 8, !350, i64 16}
!350 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!351 = !{!349, !350, i64 16}
!352 = !{!344, !342, i64 8}
!353 = distinct !{!353, !213}
!354 = !{!344, !342, i64 16}
!355 = !{!356}
!356 = distinct !{!356, !357, !"_ZN5arrow6Status2OKEv: argument 0"}
!357 = distinct !{!357, !"_ZN5arrow6Status2OKEv"}
!358 = distinct !{!358, !213}
!359 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!360 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!361 = !{!362, !363, i64 0}
!362 = !{!"_ZTSSt12__shared_ptrIN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EE", !363, i64 0, !22, i64 8}
!363 = !{!"p1 _ZTSN5arrow2io16HdfsReadableFileE", !12, i64 0}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_ZN5arrow6Status2OKEv: argument 0"}
!366 = distinct !{!366, !"_ZN5arrow6Status2OKEv"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_ZN5arrow2io16HadoopFileSystem12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_9IOContextEPSt10shared_ptrINS0_16HdfsReadableFileEE: argument 0"}
!369 = distinct !{!369, !"_ZN5arrow2io16HadoopFileSystem12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_9IOContextEPSt10shared_ptrINS0_16HdfsReadableFileEE"}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZN5arrow2io16HadoopFileSystem12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_9IOContextEPSt10shared_ptrINS0_16HdfsReadableFileEE: argument 0"}
!372 = distinct !{!372, !"_ZN5arrow2io16HadoopFileSystem12OpenReadableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_9IOContextEPSt10shared_ptrINS0_16HdfsReadableFileEE"}
!373 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!374 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!375 = !{!376, !377, i64 0}
!376 = !{!"_ZTSSt12__shared_ptrIN5arrow2io16HdfsOutputStreamELN9__gnu_cxx12_Lock_policyE2EE", !377, i64 0, !22, i64 8}
!377 = !{!"p1 _ZTSN5arrow2io16HdfsOutputStreamE", !12, i64 0}
!378 = !{!379}
!379 = distinct !{!379, !380, !"_ZN5arrow6Status2OKEv: argument 0"}
!380 = distinct !{!380, !"_ZN5arrow6Status2OKEv"}
!381 = !{!382}
!382 = distinct !{!382, !383, !"_ZN5arrow2io16HadoopFileSystem12OpenWritableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbislPSt10shared_ptrINS0_16HdfsOutputStreamEE: argument 0"}
!383 = distinct !{!383, !"_ZN5arrow2io16HadoopFileSystem12OpenWritableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbislPSt10shared_ptrINS0_16HdfsOutputStreamEE"}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl5ChmodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi: argument 0"}
!386 = distinct !{!386, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl5ChmodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi"}
!387 = !{!388, !385}
!388 = distinct !{!388, !389, !"_ZN5arrow6Status2OKEv: argument 0"}
!389 = distinct !{!389, !"_ZN5arrow6Status2OKEv"}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl5ChownERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSC_: argument 0"}
!392 = distinct !{!392, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl5ChownERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSC_"}
!393 = !{!394, !391}
!394 = distinct !{!394, !395, !"_ZN5arrow6Status2OKEv: argument 0"}
!395 = distinct !{!395, !"_ZN5arrow6Status2OKEv"}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl6RenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_: argument 0"}
!398 = distinct !{!398, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl6RenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_"}
!399 = !{!400, !397}
!400 = distinct !{!400, !401, !"_ZN5arrow6Status2OKEv: argument 0"}
!401 = distinct !{!401, !"_ZN5arrow6Status2OKEv"}
!402 = !{!403}
!403 = distinct !{!403, !404, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl4CopyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_: argument 0"}
!404 = distinct !{!404, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl4CopyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_"}
!405 = !{!406, !403}
!406 = distinct !{!406, !407, !"_ZN5arrow6Status2OKEv: argument 0"}
!407 = distinct !{!407, !"_ZN5arrow6Status2OKEv"}
!408 = !{!409}
!409 = distinct !{!409, !410, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl4MoveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_: argument 0"}
!410 = distinct !{!410, !"_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl4MoveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_"}
!411 = !{!412, !409}
!412 = distinct !{!412, !413, !"_ZN5arrow6Status2OKEv: argument 0"}
!413 = distinct !{!413, !"_ZN5arrow6Status2OKEv"}
!414 = !{!415}
!415 = distinct !{!415, !416, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA10_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!416 = distinct !{!416, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA10_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!417 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!418 = !{!67, !68, i64 0}
!419 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!420 = distinct !{ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!421 = !{!422, !430, i64 8}
!422 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !423, i64 0, !430, i64 8}
!423 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !424, i64 0}
!424 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !425, i64 0}
!425 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !426, i64 0}
!426 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !427, i64 0}
!427 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !428, i64 0}
!428 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !429, i64 0}
!429 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!430 = !{!"p1 _ZTSSo", !12, i64 0}
!431 = !{i64 8}
!432 = distinct !{null}
!433 = distinct !{null}
!434 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!435 = !{!436}
!436 = distinct !{!436, !437, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA5_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!437 = distinct !{!437, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA5_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!438 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!439 = !{!440}
!440 = distinct !{!440, !441, !"_ZN5arrow8internal12JoinToStringIJRA30_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!441 = distinct !{!441, !"_ZN5arrow8internal12JoinToStringIJRA30_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!442 = distinct !{null, null, null, null}
!443 = !{!118, !119, i64 0}
!444 = !{!445, !112, i64 0}
!445 = !{!"_ZTSNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !112, i64 0}
!446 = distinct !{null, null}
!447 = !{!448, !112, i64 16}
!448 = !{!"_ZTSSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !243, i64 0, !445, i64 16}
!449 = distinct !{null}
!450 = !{!451, !26, i64 8}
!451 = !{!"_ZTSSt9type_info", !26, i64 8}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZN5arrow8internal15StatusFromErrnoIJRA26_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!454 = distinct !{!454, !"_ZN5arrow8internal15StatusFromErrnoIJRA26_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!455 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcS4_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!458 = distinct !{!458, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcS4_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!459 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!460 = !{!461}
!461 = distinct !{!461, !462, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA11_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!462 = distinct !{!462, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA11_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!463 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!464 = !{!465}
!465 = distinct !{!465, !466, !"_ZN5arrow8internal12JoinToStringIJRA23_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!466 = distinct !{!466, !"_ZN5arrow8internal12JoinToStringIJRA23_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!467 = !{!468}
!468 = distinct !{!468, !469, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA17_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!469 = distinct !{!469, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA17_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!470 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!471 = !{!472}
!472 = distinct !{!472, !473, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA7_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!473 = distinct !{!473, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA7_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!474 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!475 = !{!476}
!476 = distinct !{!476, !477, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA19_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!477 = distinct !{!477, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA19_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!478 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!479 = !{!162, !163, i64 0}
!480 = !{!162, !26, i64 8}
!481 = !{!162, !26, i64 48}
!482 = !{!162, !26, i64 56}
!483 = !{!162, !17, i64 72}
!484 = !{!314, !4, i64 124}
!485 = !{!162, !17, i64 16}
!486 = !{!314, !4, i64 120}
!487 = !{!162, !164, i64 32}
!488 = !{!314, !164, i64 128}
!489 = !{!162, !17, i64 40}
!490 = !{!314, !17, i64 112}
!491 = !{!162, !164, i64 64}
!492 = !{!314, !164, i64 130}
!493 = !{!494}
!494 = distinct !{!494, !495, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA12_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!495 = distinct !{!495, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA12_S2_RA8_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!496 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!497 = !{!498}
!498 = distinct !{!498, !499, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA8_S2_S6_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!499 = distinct !{!499, !"_ZN5arrow8internal15StatusFromErrnoIJRA6_KcRA8_S2_S6_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!500 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!501 = !{!502}
!502 = distinct !{!502, !503, !"_ZN5arrow8internal15StatusFromErrnoIJRA32_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!503 = distinct !{!503, !"_ZN5arrow8internal15StatusFromErrnoIJRA32_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!504 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!505 = !{!506}
!506 = distinct !{!506, !507, !"_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!507 = distinct !{!507, !"_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!508 = !{!349, !350, i64 0}
!509 = !{!510}
!510 = distinct !{!510, !511, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!511 = distinct !{!511, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!512 = !{!513}
!513 = distinct !{!513, !511, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!514 = !{!510, !513}
!515 = distinct !{!515, !213}
!516 = !{!517}
!517 = distinct !{!517, !518, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!518 = distinct !{!518, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!519 = !{!520}
!520 = distinct !{!520, !518, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!521 = !{!517, !520}
!522 = !{!523}
!523 = distinct !{!523, !524, !"_ZN5arrow8internal15StatusFromErrnoIJRA27_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!524 = distinct !{!524, !"_ZN5arrow8internal15StatusFromErrnoIJRA27_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!525 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!526 = !{!527}
!527 = distinct !{!527, !528, !"_ZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!528 = distinct !{!528, !"_ZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!529 = distinct !{!529, !530}
!530 = !{!"llvm.loop.unroll.disable"}
!531 = distinct !{!531, !213}
!532 = distinct !{!532, !530}
!533 = !{!534}
!534 = distinct !{!534, !535, !"_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!535 = distinct !{!535, !"_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_"}
!536 = !{!537}
!537 = distinct !{!537, !535, !"_ZSt19__relocate_object_aIN5arrow2io12HdfsPathInfoES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!538 = !{!534, !537}
!539 = distinct !{!539, !213}
!540 = !{!541}
!541 = distinct !{!541, !542, !"_ZN5arrow8internal15StatusFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_: argument 0"}
!542 = distinct !{!542, !"_ZN5arrow8internal15StatusFromErrnoIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA9_S2_EEENS_6StatusEiNS_10StatusCodeEDpOT_"}
!543 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!544 = distinct !{null, null}
!545 = !{!546, !363, i64 16}
!546 = !{!"_ZTSSt15_Sp_counted_ptrIPN5arrow2io16HdfsReadableFileELN9__gnu_cxx12_Lock_policyE2EE", !243, i64 0, !363, i64 16}
!547 = !{!47, !23, i64 0}
!548 = !{!45, !46, i64 0}
!549 = distinct !{null, null, null, null, null}
!550 = distinct !{null, null}
!551 = !{!552, !377, i64 16}
!552 = !{!"_ZTSSt15_Sp_counted_ptrIPN5arrow2io16HdfsOutputStreamELN9__gnu_cxx12_Lock_policyE2EE", !243, i64 0, !377, i64 16}
!553 = distinct !{null, null, null, null, null}
end_hunk_2
