begin_hunk_0_@main:bb.a
  %i.bm = load ptr, ptr %.sroa.31.0.i, align 8, !tbaa !17, !noalias !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !19
  call void %i.bo(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.31.0.i, i32 noundef %.sroa.0.0.i) #11, !inline_history !22
  %i.bp = load ptr, ptr %3, align 8, !tbaa !23
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !27
  %i.bs = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i35, ptr noundef %i.bp, i64 noundef %i.br) #11 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !11
end_hunk_0
begin_hunk_1_@main:bb.a
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit40

_ZN4llvh11raw_ostreamlsEPKc.exit40:               ; preds = %bb.o, %bb.p
  %i.cb = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit40
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !28
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_1
begin_hunk_2_@main:bb.a
  %.sroa.061.0.lcssa = phi ptr [ %i.cj, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.061.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.cl, ptr %4, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.cm, align 8, !tbaa !27
  store i8 0, ptr %i.cl, align 8, !tbaa !28
  %i.cn = load ptr, ptr %2, align 8, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !27
  %i.cq = ptrtoint ptr %.sroa.9.0.lcssa to i64
  %i.cr = ptrtoint ptr %.sroa.061.0.lcssa to i64  ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 4
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.cu, align 8, !tbaa !30
  %i.cv = call noundef i32 @_ZN4llvh3sys14ExecuteAndWaitENS_9StringRefENS_8ArrayRefIS1_EENS_8OptionalIS3_EENS2_INS4_IS1_EEEEjjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr %i.cn, i64 %i.cp, ptr %.sroa.061.0.lcssa, i64 %i.ct, ptr noundef nonnull byval(%"class.llvh::Optional") align 8 %5, ptr null, i64 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #11 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.w, label %bb.ab
end_hunk_2
begin_hunk_3_@main:bb.a
bb.t:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  store ptr %i.cy, ptr %.sroa.9.094, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.094, i64 8
  store i64 %i.da, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !35
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit

bb.u:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
end_hunk_3
begin_hunk_4_@main:bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd ; 2 uses
  store ptr %i.cy, ptr %i.dm, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 %i.da, ptr %.sroa.5.0..sroa_idx59, align 8, !tbaa !35
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.061.095, %.sroa.9.094
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i ], [ %i.dl, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.061.095, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !36, !alias.scope !37
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dn, %.sroa.9.094
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !41

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dl, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.do, %.lr.ph.i.i.i.i.i.i ]
end_hunk_4
begin_hunk_5_@main:bb.a
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ch
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

bb.w:                                             ; preds = %._crit_edge
  %i.dq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #11 ; 4 uses
end_hunk_5
begin_hunk_6_@main:bb.a

_ZN4llvh11raw_ostreamlsEPKc.exit46:               ; preds = %bb.x, %bb.y
  %.0.i.i45 = phi ptr [ %i.dz, %bb.x ], [ %i.dq, %bb.y ]
  %i.ec = load ptr, ptr %4, align 8, !tbaa !23
  %i.ed = load i64, ptr %i.cm, align 8, !tbaa !27
  %i.ee = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i45, ptr noundef %i.ec, i64 noundef %i.ed) #11 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !11
end_hunk_6
begin_hunk_7_@main:bb.a

bb.ac:                                            ; preds = %bb.ab, %_ZN4llvh11raw_ostreamlsEPKc.exit50
  %.0.shrunk = phi i1 [ %not..02089, %_ZN4llvh11raw_ostreamlsEPKc.exit50 ], [ %spec.select, %bb.ab ]
  %i.eo = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.cl
  br i1 %i.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.ac
  %i.eq = load i64, ptr %i.cl, align 8, !tbaa !28
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52
end_hunk_7
begin_hunk_8_@main:bb.a
  br i1 %i.ew, label %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit
  %i.ex = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ad
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !28
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #14
  br label %_ZN4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
end_hunk_8
begin_hunk_9_@llvm.umin.i64
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!21 = distinct !{!21, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!22 = distinct !{null}
!23 = !{!24, !9, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!24, !26, i64 8}
!28 = !{!6, !6, i64 0}
!29 = !{!25, !9, i64 0}
!30 = !{!31, !34, i64 16}
!31 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageINS_8ArrayRefINS_9StringRefEEELb1EEE", !32, i64 0, !34, i64 16}
!32 = !{!"_ZTSN4llvh21AlignedCharArrayUnionINS_8ArrayRefINS_9StringRefEEEcccccccccEE", !33, i64 0}
!33 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm16EEE", !6, i64 0}
!34 = !{!"bool", !6, i64 0}
!35 = !{!26, !26, i64 0}
!36 = !{i64 0, i64 8, !8, i64 8, i64 8, !35}
!37 = !{!38, !40}
!38 = distinct !{!38, !39, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!39 = distinct !{!39, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_"}
!40 = distinct !{!40, !39, !"_ZSt19__relocate_object_aIN4llvh9StringRefES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = distinct !{!43, !42}
end_hunk_9
