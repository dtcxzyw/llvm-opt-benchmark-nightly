inline.NumInlined: 1041
inline.NumDeleted: 583
begin_hunk_0_@_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE:_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  %i.pa = add i32 %i.oz, 1
  store i32 %i.pa, ptr %i.bd, align 8, !tbaa !204, !noalias !201
  %i.pb = load ptr, ptr %.0.i.i, align 8, !tbaa !74, !noalias !201
  %i.pc = icmp eq ptr %i.pb, inttoptr (i64 -8 to ptr)
  %i.pd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 8, !noalias !201
  %i.pf = icmp eq i32 %i.pe, -1
  %i.pg = select i1 %i.pc, i1 %i.pf, i1 false
  br i1 %i.pg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E20InsertIntoBucketImplIS7_EEPSO_RKS7_RKT_SS_.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ph = load i32, ptr %i.be, align 4, !tbaa !206, !noalias !201
  %i.pi = add i32 %i.ph, -1
  store i32 %i.pi, ptr %i.be, align 4, !tbaa !206, !noalias !201
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E20InsertIntoBucketImplIS7_EEPSO_RKS7_RKT_SS_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E20InsertIntoBucketImplIS7_EEPSO_RKS7_RKT_SS_.exit.i: ; preds = %bb.be, %bb.bd
  %i.pj = load ptr, ptr %4, align 8, !tbaa !74, !noalias !201
  store ptr %i.pj, ptr %.0.i.i, align 8, !tbaa !74, !noalias !201
  %i.pk = load i32, ptr %i.ap, align 8, !tbaa !77, !noalias !201
  store i32 %i.pk, ptr %i.pd, align 8, !tbaa !77, !noalias !201
  %i.pl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pl, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.036.i.i, i64 12, i1 false), !noalias !207
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 28
  store i32 %.sroa.537.0.copyload41.i.i, ptr %.sroa.537.0..sroa_idx.i.i, align 4, !noalias !207
  %.sroa.642.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store i32 %.sroa.642.0.copyload46.i.i, ptr %.sroa.642.0..sroa_idx.i.i, align 8, !noalias !207
  %.sroa.747.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.747.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.747.i.i, i64 12, i1 false), !noalias !207
  %.sroa.750.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store i8 %.sroa.750.0.copyload54.i.i, ptr %.sroa.750.0..sroa_idx.i.i, align 8, !noalias !207
  %.sroa.855.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.855.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.855.i.i, i64 7, i1 false), !noalias !207
  %.sroa.858.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  store i64 %.sroa.053.1.i.i.i, ptr %.sroa.858.0..sroa_idx.i.i, align 8, !noalias !207
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  store ptr %.sroa.555.1.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !207
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72
  store i8 %.sroa.658.1.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !207
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, i64 7, i1 false), !noalias !207
  %.sroa.1266.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 80
  store i64 %i.il, ptr %.sroa.1266.0..sroa_idx.i.i, align 8, !noalias !207
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 88
  store ptr %i.ij, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !207
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i: ; preds = %bb.az, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E20InsertIntoBucketImplIS7_EEPSO_RKS7_RKT_SS_.exit.i, %bb.ax
  %i.pm = load i8, ptr %i.au, align 8, !tbaa !180, !range !182, !noalias !71, !noundef !185
  %i.pn = trunc nuw i8 %i.pm to i1
  store i8 0, ptr %i.au, align 8, !tbaa !180, !noalias !71
  br i1 %i.pn, label %bb.bf, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

bb.bf:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i
  %i.po = load ptr, ptr %7, align 8, !tbaa !156, !noalias !71 ; 2 uses
  %i.pp = icmp eq ptr %i.po, %i.aw
  br i1 %i.pp, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bf
  %i.pq = load i64, ptr %i.aw, align 8, !tbaa !70, !noalias !71
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.pr) #15, !noalias !71
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E11try_emplaceIJRSJ_EEES2_INS_16DenseMapIteratorIS7_SJ_SL_SO_Lb0EEEbERKS7_DpOT_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12, !noalias !71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12, !noalias !71
  %i.ps = load ptr, ptr %5, align 8, !tbaa !156, !noalias !71 ; 2 uses
  %i.pt = icmp eq ptr %i.ps, %i.ar
  br i1 %i.pt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i
  %i.pu = load i64, ptr %i.ar, align 8, !tbaa !70, !noalias !71
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.ps, i64 noundef %i.pv) #15, !noalias !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12, !noalias !71
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE.exit.i.i

_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i, %bb.m
  %.sroa.537.0.i.i = phi i32 [ %.sroa.537.0.copyload39.i.i, %bb.m ], [ %.sroa.537.0.copyload41.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.642.0.i.i = phi i32 [ %.sroa.642.0.copyload44.i.i, %bb.m ], [ %.sroa.642.0.copyload46.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ] ; 2 uses
  %.sroa.750.0.i.i = phi i8 [ %.sroa.750.0.copyload52.i.i, %bb.m ], [ %.sroa.750.0.copyload54.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.858.0.i.i = phi i64 [ %.sroa.858.0.copyload60.i.i, %bb.m ], [ %.sroa.053.1.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.10.0.i.i = phi ptr [ %.sroa.10.0.copyload62.i.i, %bb.m ], [ %.sroa.555.1.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.11.0.i.i = phi i8 [ %.sroa.11.0.copyload64.i.i, %bb.m ], [ %.sroa.658.1.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.1266.0.i.i = phi i64 [ %.sroa.1266.0.copyload68.i.i, %bb.m ], [ %i.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ] ; 2 uses
  %.sroa.14.0.i.i = phi ptr [ %.sroa.14.0.copyload70.i.i, %bb.m ], [ %i.ij, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ]
  %.sroa.537.0.fr.i.i = freeze i32 %.sroa.537.0.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12, !noalias !71
  %i.pw = getelementptr inbounds nuw i8, ptr %i.cy, i64 136
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !208, !noalias !67
  %i.py = trunc nuw i8 %.sroa.750.0.i.i to i1
  br i1 %i.py, label %bb.bg, label %.thread.i.i

.thread.i.i:                                      ; preds = %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, i64 7, i1 false), !noalias !67
  br label %bb.bk

bb.bg:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE.exit.i.i
  %.not.not.i.i = icmp eq i32 %.sroa.537.0.fr.i.i, 0 ; 2 uses
  %.not17.i.i = icmp eq i32 %.sroa.642.0.i.i, 0
  br i1 %.not17.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.pz = zext i32 %.sroa.642.0.i.i to i64
  %i.qa = or disjoint i64 %i.pz, 4294967296       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, i64 7, i1 false), !noalias !67
  br i1 %.not.not.i.i, label %bb.bk, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.6.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i.i, i64 7, i1 false), !noalias !67
  br i1 %.not.not.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sroa.431.1108.i.i = phi i64 [ %i.qa, %bb.bh ], [ 0, %bb.bi ]
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %.thread.i.i
  %.sroa.431.1105.i.i = phi i64 [ %.sroa.431.1108.i.i, %bb.bj ], [ 0, %bb.bi ], [ 0, %.thread.i.i ], [ %i.qa, %bb.bh ]
  %i.qb = phi i64 [ 4294967296, %bb.bj ], [ 0, %bb.bi ], [ 0, %.thread.i.i ], [ 0, %bb.bh ]
  %.sroa.033.0.insert.ext.i.i = zext i32 %.sroa.537.0.fr.i.i to i64
  %.sroa.033.0.insert.insert.i.i = or disjoint i64 %i.qb, %.sroa.033.0.insert.ext.i.i
  %.sroa.053.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.1266.0.i.i to i32
  %.sroa.053.sroa.8.0.extract.shift.i = lshr i64 %.sroa.1266.0.i.i, 32
  %.sroa.053.sroa.8.0.extract.trunc.i = trunc nuw i64 %.sroa.053.sroa.8.0.extract.shift.i to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.6.i.i, i64 7, i1 false), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.036.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.747.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.855.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i

bb.bl:                                            ; preds = %.lr.ph.i
  unreachable

_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i: ; preds = %bb.bk, %bb.i, %bb.h, %bb.g
  %.sroa.053.sroa.8.2.i = phi i32 [ %.sroa.053.sroa.8.1129.i, %bb.g ], [ %.sroa.053.sroa.8.0.extract.trunc85.i, %bb.h ], [ %.sroa.053.sroa.8.0.extract.trunc83.i, %bb.i ], [ %.sroa.053.sroa.8.0.extract.trunc.i, %bb.bk ] ; 4 uses
  %.sroa.053.sroa.0.0.i = phi i32 [ %i.cr, %bb.g ], [ %.sroa.053.sroa.0.0.extract.trunc78.i, %bb.h ], [ %.sroa.053.sroa.0.0.extract.trunc77.i, %bb.i ], [ %.sroa.053.sroa.0.0.extract.trunc.i, %bb.bk ] ; 2 uses
  %.sroa.18.0.i = phi i8 [ 0, %bb.g ], [ 1, %bb.h ], [ 2, %bb.i ], [ 3, %bb.bk ] ; 2 uses
  %.sroa.17.2.i = phi i64 [ %.sroa.17.1130.i, %bb.g ], [ %.sroa.17.1130.i, %bb.h ], [ %.sroa.17.1130.i, %bb.i ], [ %.sroa.431.1105.i.i, %bb.bk ] ; 4 uses
  %.sroa.16.2.i = phi i64 [ %.sroa.16.1131.i, %bb.g ], [ %.sroa.16.1131.i, %bb.h ], [ %.sroa.16.1131.i, %bb.i ], [ %.sroa.033.0.insert.insert.i.i, %bb.bk ] ; 4 uses
  %.sroa.14.2.i = phi i8 [ %.sroa.14.1132.i, %bb.g ], [ %.sroa.14.1132.i, %bb.h ], [ %.sroa.14.1132.i, %bb.i ], [ %.sroa.11.0.i.i, %bb.bk ] ; 4 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.1133.i, %bb.g ], [ %.sroa.13.1133.i, %bb.h ], [ %.sroa.13.1133.i, %bb.i ], [ %.sroa.10.0.i.i, %bb.bk ] ; 4 uses
  %.sroa.1262.2.i = phi i64 [ %.sroa.1262.1134.i, %bb.g ], [ %.sroa.1262.1134.i, %bb.h ], [ %.sroa.1262.1134.i, %bb.i ], [ %.sroa.858.0.i.i, %bb.bk ] ; 4 uses
  %.sroa.11.2.i = phi i32 [ %.sroa.11.1135.i, %bb.g ], [ %.sroa.11.1135.i, %bb.h ], [ %.sroa.11.1135.i, %bb.i ], [ %i.px, %bb.bk ] ; 4 uses
  %.sroa.855.2.i = phi ptr [ %.sroa.855.1136.i, %bb.g ], [ %i.cu, %bb.h ], [ %i.cx, %bb.i ], [ %.sroa.14.0.i.i, %bb.bk ] ; 4 uses
  %i.qc = load ptr, ptr %i.ao, align 8, !tbaa !56, !noalias !12 ; 14 uses
  %i.qd = load ptr, ptr %i.an, align 8, !tbaa !57, !noalias !12
  %.not.i.i.i = icmp eq ptr %i.qc, %i.qd
  br i1 %.not.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i
  %.sroa.053.sroa.8.0.insert.ext.i = zext i32 %.sroa.053.sroa.8.2.i to i64
  %.sroa.053.sroa.8.0.insert.shift.i = shl nuw i64 %.sroa.053.sroa.8.0.insert.ext.i, 32
  %.sroa.053.sroa.0.0.insert.ext.i = zext i32 %.sroa.053.sroa.0.0.i to i64
  %.sroa.053.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.053.sroa.8.0.insert.shift.i, %.sroa.053.sroa.0.0.insert.ext.i
  store i64 %.sroa.053.sroa.0.0.insert.insert.i, ptr %i.qc, align 8, !noalias !12
  %.sroa.855.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store ptr %.sroa.855.2.i, ptr %.sroa.855.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  store i32 %.sroa.11.2.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.1262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  store i64 %.sroa.1262.2.i, ptr %.sroa.1262.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 32
  store ptr %.sroa.13.2.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 40
  store i8 %.sroa.14.2.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.i, i64 7, i1 false), !noalias !12
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 48
  store i64 %.sroa.16.2.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 56
  store i64 %.sroa.17.2.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !12
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 64
  store i8 %.sroa.18.0.i, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !12
  %i.qe = load ptr, ptr %i.ao, align 8, !tbaa !56, !noalias !12
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 72 ; 2 uses
  store ptr %i.qf, ptr %i.ao, align 8, !tbaa !56, !noalias !12
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i

bb.bn:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i
  %i.qg = load ptr, ptr %12, align 8, !tbaa !53, !noalias !12 ; 5 uses
  %i.qh = ptrtoint ptr %i.qc to i64
  %i.qi = ptrtoint ptr %i.qg to i64
  %i.qj = sub i64 %i.qh, %i.qi                    ; 4 uses
  %i.qk = icmp eq i64 %i.qj, 9223372036854775800
  br i1 %i.qk, label %bb.bo, label %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14, !noalias !12
  unreachable

_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.bn
  %i.ql = sdiv exact i64 %i.qj, 72                ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ql, i64 1)
  %i.qm = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ql ; 2 uses
  %i.qn = call i64 @llvm.umin.i64(i64 %i.qm, i64 128102389400760775) ; 2 uses
  %.not.i.i.i.i36.i = icmp ne i64 %i.qm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i36.i)
  %i.qo = mul nuw nsw i64 %i.qn, 72
  %i.qp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qo) #13, !noalias !12 ; 5 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qj ; 10 uses
  %.sroa.053.sroa.8.0.insert.ext86.i = zext i32 %.sroa.053.sroa.8.2.i to i64
  %.sroa.053.sroa.8.0.insert.shift87.i = shl nuw i64 %.sroa.053.sroa.8.0.insert.ext86.i, 32
  %.sroa.053.sroa.0.0.insert.ext79.i = zext i32 %.sroa.053.sroa.0.0.i to i64
  %.sroa.053.sroa.0.0.insert.insert81.i = or disjoint i64 %.sroa.053.sroa.8.0.insert.shift87.i, %.sroa.053.sroa.0.0.insert.ext79.i
  store i64 %.sroa.053.sroa.0.0.insert.insert81.i, ptr %i.qq, align 8, !noalias !12
  %.sroa.855.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store ptr %.sroa.855.2.i, ptr %.sroa.855.0..sroa_idx56.i, align 8, !noalias !12
  %.sroa.11.0..sroa_idx58.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  store i32 %.sroa.11.2.i, ptr %.sroa.11.0..sroa_idx58.i, align 8, !noalias !12
  %.sroa.1262.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  store i64 %.sroa.1262.2.i, ptr %.sroa.1262.0..sroa_idx63.i, align 8, !noalias !12
  %.sroa.13.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 32
  store ptr %.sroa.13.2.i, ptr %.sroa.13.0..sroa_idx65.i, align 8, !noalias !12
  %.sroa.14.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 40
  store i8 %.sroa.14.2.i, ptr %.sroa.14.0..sroa_idx67.i, align 8, !noalias !12
  %.sroa.15.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.0..sroa_idx69.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.i, i64 7, i1 false), !noalias !12
  %.sroa.16.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 48
  store i64 %.sroa.16.2.i, ptr %.sroa.16.0..sroa_idx70.i, align 8, !noalias !12
  %.sroa.17.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 56
  store i64 %.sroa.17.2.i, ptr %.sroa.17.0..sroa_idx72.i, align 8, !noalias !12
  %.sroa.18.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 64
  store i8 %.sroa.18.0.i, ptr %.sroa.18.0..sroa_idx74.i, align 8, !noalias !12
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.qg, %i.qc
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.qs, %.lr.ph.i.i.i.i.i.i.i ], [ %i.qp, %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.qr, %.lr.ph.i.i.i.i.i.i.i ], [ %i.qg, %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i.i.i.i, i64 72, i1 false), !alias.scope !234, !noalias !12
  %i.qr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.qr, %i.qc
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !238

_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.qp, %_ZNKSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.qs, %.lr.ph.i.i.i.i.i.i.i ]
  %i.qt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.qg, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qg, i64 noundef %i.qj) #15, !noalias !12
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i: ; preds = %bb.bp, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i
  store ptr %i.qp, ptr %12, align 8, !tbaa !53, !noalias !12
  store ptr %i.qt, ptr %i.ao, align 8, !tbaa !56, !noalias !12
  %i.qu = getelementptr inbounds nuw [72 x i8], ptr %i.qp, i64 %i.qn
  store ptr %i.qu, ptr %i.an, align 8, !tbaa !57, !noalias !12
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i

_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i: ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i, %bb.bm
  %i.qv = phi ptr [ %i.qf, %bb.bm ], [ %i.qt, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.091.0128.i, i64 24 ; 2 uses
  %.not106.i = icmp eq ptr %i.qw, %i.bw
  br i1 %.not106.i, label %._crit_edge.i, label %.lr.ph.i

_ZN6hermes2vm12_GLOBAL__N_116ProfileGeneratorD2Ev.exit: ; preds = %bb.b, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i
  %i.qx = phi ptr [ %.pre29, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i ], [ null, %bb.b ]
  %i.qy = phi i64 [ %.pre, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i ], [ %i.ai, %bb.b ]
  %i.qz = phi ptr [ %.pre173.i, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i ], [ null, %bb.b ]
  %i.ra = phi <2 x ptr> [ %i.bg, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i ], [ splat (ptr null), %bb.b ]
  store ptr null, ptr %i.m, align 8, !tbaa !32, !noalias !12
  store <2 x ptr> %i.ra, ptr %0, align 8, !tbaa !43, !alias.scope !12
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.qz, ptr %i.rb, align 8, !tbaa !42, !alias.scope !12
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.qy, ptr %i.rc, align 8, !tbaa !32, !alias.scope !12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12, !noalias !12
  call void @_ZdlPv(ptr noundef %i.qx) #12
  %i.rd = load ptr, ptr %i.k, align 8, !tbaa !78
  call void @_ZdlPv(ptr noundef %i.rd) #12
  %i.re = load ptr, ptr %i.j, align 8, !tbaa !239
  call void @_ZdlPv(ptr noundef %i.re) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, ptr } @_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator21getNativeFunctionNameERKNS0_16SamplingProfiler10StackFrameE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.std::pair.103", align 8    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !239  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !242  ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !47     ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = mul i32 %i.h, 37
  %i.j = add i32 %i.e, -1                         ; 2 uses
  %.02744.i.i.i = and i32 %i.i, %i.j              ; 2 uses
  %i.k = zext i32 %.02744.i.i.i to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %i.n = icmp eq i64 %i.g, %i.m
  br i1 %i.n, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit, label %.lr.ph.i.i.i, !prof !82

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.u, %bb.c ], [ %i.m, %bb.b ]
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.c ], [ %.02744.i.i.i, %bb.b ]
  %.02546.i.i.i = phi i32 [ %i.q, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i, label %bb.c, !prof !83

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.q = add i32 %.02546.i.i.i, 1
  %i.r = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.r, %i.j                ; 2 uses
  %i.s = zext i32 %.027.i.i.i to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.s ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !47   ; 2 uses
  %i.v = icmp eq i64 %i.g, %i.u
  br i1 %i.v, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit, label %.lr.ph.i.i.i, !prof !84, !llvm.loop !243

_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.w = zext i32 %i.e to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.w
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit: ; preds = %bb.c, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i
  %.sink.i.i.ph.pn.i = phi ptr [ %i.x, %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E15LookupBucketForImEEbRKT_RPSA_.exit.i ], [ %i.l, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.y = zext i32 %i.e to i64
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.y
  %.not = icmp eq ptr %.sink.i.i.ph.pn.i, %i.z
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !244
  br label %bb.l

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapImSt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E4findERKm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ab = load ptr, ptr %0, align 8, !tbaa !245, !nonnull !185, !align !253
  call void @_ZNK6hermes2vm16SamplingProfiler21getNativeFunctionNameB5cxx11ERKNS1_10StackFrameE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !157
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -32
  %.not.i.i = icmp eq ptr %i.af, %i.ai
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !152
  %i.ak = load ptr, ptr %3, align 8, !tbaa !156   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !154 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.am, ptr %i.a, align 8, !tbaa !47
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #12 ; 2 uses
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !156
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.ap, ptr %i.aj, align 8, !tbaa !70
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.aq = phi ptr [ %i.ao, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  switch i64 %i.am, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ar = load i8, ptr %i.ak, align 1, !tbaa !70
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.ak, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i
  %i.as = load i64, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !154
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !156
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.ax, ptr %i.ae, align 8, !tbaa !31
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i

bb.j:                                             ; preds = %bb.e
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.ay = load ptr, ptr %i.ac, align 8, !tbaa !32 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !158, !noalias !254 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !28, !noalias !254
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.k, label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator11storeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.k:                                             ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !27, !noalias !254
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 512
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator11storeStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

end_hunk_0
begin_hunk_1_@_ZN4llvh8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISB_ENS2_8OptValueINS2_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SI_EEE4growEj:_ZN4llvh8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISB_ENS2_8OptValueINS2_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SI_EEE15allocateBucketsEj.exit
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8
  %.sroa.4.0..sroa_idx.i.prol = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 8
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.prol, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 96 ; 2 uses
  %prol.iter14.next = add i64 %prol.iter14, 1     ; 2 uses
  %prol.iter14.cmp.not = icmp eq i64 %prol.iter14.next, %xtraiter12
  br i1 %prol.iter14.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !334

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.u, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %i.ae = icmp ult i64 %i.aa, 672
  br i1 %i.ae, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 17 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.07.i, i64 104
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 192
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.07.i, i64 200
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.2, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 288
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.07.i, i64 296
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.3, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 384
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8
  %.sroa.4.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.07.i, i64 392
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.4, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 480
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.07.i, i64 488
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.5, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 576
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8
  %.sroa.4.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.07.i, i64 584
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.6, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 672
  store ptr inttoptr (i64 -8 to ptr), ptr %i.al, align 8
  %.sroa.4.0..sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.07.i, i64 680
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.7, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i, i64 768 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.am, %i.z
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !335

bb.b:                                             ; preds = %_ZN4llvh8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISB_ENS2_8OptValueINS2_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SI_EEE15allocateBucketsEj.exit
  %i.an = zext i32 %i.c to i64
  %.idx = mul nuw nsw i64 %i.an, 96
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !204
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !206
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !81  ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %.idx.i.i = mul nuw nsw i64 %i.as, 96           ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.au = add nsw i64 %.idx.i.i, -96              ; 2 uses
  %i.av = udiv i64 %i.au, 96
  %i.aw = add nuw nsw i64 %i.av, 1
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8
  %.sroa.4.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 8
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.i.prol, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 96 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !336

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.prol ]
  %i.ay = icmp ult i64 %i.au, 672
  br i1 %i.ay, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 17 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8
  %.sroa.4.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 104
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.i.1, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 192
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8
  %.sroa.4.0..sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 200
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.i.2, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 288
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8
  %.sroa.4.0..sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 296
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.i.3, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 384
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8
  %.sroa.4.0..sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 392
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.i.4, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 480
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8
  %.sroa.4.0..sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 488
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.i.5, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 576
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8
  %.sroa.4.0..sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 584
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.i.6, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 672
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bf, align 8
  %.sroa.4.0..sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 680
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i.i.7, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 768 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bg, %i.at
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !335

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not21.i = icmp eq i32 %i.c, 0
  br i1 %.not21.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E18moveFromOldBucketsEPSO_SR_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E9initEmptyEv.exit.i, %bb.e
  %.022.i = phi ptr [ %i.cd, %bb.e ], [ %i.d, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E9initEmptyEv.exit.i ] ; 8 uses
  %i.bh = load ptr, ptr %.022.i, align 8, !tbaa !74 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, inttoptr (i64 -8 to ptr)
  %i.bj = getelementptr inbounds nuw i8, ptr %.022.i, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp eq i32 %i.bk, -1
  %i.bm = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %i.bm, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i6
  %i.bn = icmp eq ptr %i.bh, inttoptr (i64 -16 to ptr)
  %i.bo = icmp eq i32 %i.bk, -2
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bq = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E15LookupBucketForIS7_EEbRKT_RPKSO_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %.022.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !205 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bs = load ptr, ptr %.022.i, align 8, !tbaa !337
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !74
  %i.bt = load i32, ptr %i.bj, align 8, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !77
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.022.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef nonnull align 8 dereferenceable(80) %i.bw, i64 36, i1 false), !tbaa.struct !198
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.by = getelementptr inbounds nuw i8, ptr %.022.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  %i.ca = getelementptr inbounds nuw i8, ptr %.022.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !244
  %i.cb = load i32, ptr %i.ap, align 8, !tbaa !204
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ap, align 8, !tbaa !204
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i6
  %i.cd = getelementptr inbounds nuw i8, ptr %.022.i, i64 96 ; 2 uses
  %.not.i7 = icmp eq ptr %i.cd, %i.ao
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E18moveFromOldBucketsEPSO_SR_.exit, label %.lr.ph.i6, !llvm.loop !338

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E18moveFromOldBucketsEPSO_SR_.exit: ; preds = %bb.e, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E9initEmptyEv.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #12
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS7_EENS_6detail12DenseMapPairIS7_SJ_EEEES7_SJ_SL_SO_E18moveFromOldBucketsEPSO_SR_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE17_M_realloc_insertIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !38     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNKSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %i.j, 40
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #13 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 4 uses
  %i.p = load i64, ptr %2, align 8, !tbaa !47
  %i.q = load i64, ptr %3, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load <2 x ptr>, ptr %4, align 8, !tbaa !339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i64 %i.p, ptr %i.o, align 8, !tbaa !58
  store i64 %i.q, ptr %i.t, align 8, !tbaa !63
  store <2 x ptr> %i.v, ptr %i.u, align 8, !tbaa !339
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.s, ptr %i.w, align 8, !tbaa !57
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.n, %_ZNKSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 16, i1 false), !alias.scope !345
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !339, !alias.scope !343, !noalias !340
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !339, !alias.scope !340, !noalias !343
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !57, !alias.scope !343, !noalias !340
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !57, !alias.scope !340, !noalias !343
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !alias.scope !343, !noalias !340
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !346

_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i19 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i19, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i20
  %.012.i.i.i21 = phi ptr [ %i.an, %.lr.ph.i.i.i20 ], [ %i.af, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  %.0911.i.i.i22 = phi ptr [ %i.am, %.lr.ph.i.i.i20 ], [ %1, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i21, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i22, i64 16, i1 false), !alias.scope !352
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 16 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !339, !alias.scope !350, !noalias !347
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !339, !alias.scope !347, !noalias !350
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57, !alias.scope !350, !noalias !347
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !57, !alias.scope !347, !noalias !350
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false), !alias.scope !350, !noalias !347
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 40 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25, label %.lr.ph.i.i.i20, !llvm.loop !346

_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25: ; preds = %.lr.ph.i.i.i20, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.af, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.an, %.lr.ph.i.i.i20 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #15
  br label %_ZNSt12_Vector_baseIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !38
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.j
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !42
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind allocsize(0) }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN6hermes2vm16SamplingProfilerE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTSSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE", !9, i64 0}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator8generateEv: argument 0"}
!14 = distinct !{!14, !"_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator8generateEv"}
!15 = !{!16, !13}
!16 = distinct !{!16, !17, !"_ZSt11make_uniqueISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!17 = distinct !{!17, !"_ZSt11make_uniqueISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!18 = !{!19, !22, i64 8}
!19 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !20, i64 0, !22, i64 8, !23, i64 16, !23, i64 48}
!20 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!21 = !{!"any p2 pointer", !9, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !24, i64 0, !24, i64 8, !24, i64 16, !20, i64 24}
!24 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!25 = !{!19, !20, i64 0}
!26 = !{!24, !24, i64 0}
!27 = !{!23, !20, i64 24}
!28 = !{!23, !24, i64 8}
!29 = !{!23, !24, i64 16}
!30 = !{!19, !24, i64 16}
!31 = !{!19, !24, i64 48}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTSSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !9, i64 0}
!34 = !{!35, !36, i64 8}
!35 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"p1 _ZTSN6hermes2vm16SamplingProfiler10StackTraceE", !9, i64 0}
!37 = !{!35, !36, i64 0}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 _ZTSN8facebook6hermes17sampling_profiler13ProfileSampleE", !9, i64 0}
!41 = !{!39, !40, i64 8}
!42 = !{!39, !40, i64 16}
!43 = !{!40, !40, i64 0}
!44 = !{!45, !46, i64 0}
!45 = !{!"_ZTSN4llvh8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S5_EEEE", !46, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!46 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEEEE", !9, i64 0}
!47 = !{!22, !22, i64 0}
!48 = !{!49, !50, i64 8}
!49 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"p1 _ZTSN6hermes2vm16SamplingProfiler10StackFrameE", !9, i64 0}
!51 = !{!49, !50, i64 0}
!52 = !{!50, !50, i64 0}
!53 = !{!54, !55, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!55 = !{!"p1 _ZTSSt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEE", !9, i64 0}
!56 = !{!54, !55, i64 8}
!57 = !{!54, !55, i64 16}
!58 = !{!59, !22, i64 0}
!59 = !{!"_ZTSN8facebook6hermes17sampling_profiler13ProfileSampleE", !22, i64 0, !22, i64 8, !60, i64 16}
!60 = !{!"_ZTSSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE", !61, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE12_Vector_implE", !54, i64 0}
!63 = !{!59, !22, i64 8}
!64 = !{!65, !66, i64 16}
!65 = !{!"_ZTSN6hermes2vm16SamplingProfiler10StackFrameE", !5, i64 0, !66, i64 16}
!66 = !{!"_ZTSN6hermes2vm16SamplingProfiler10StackFrame9FrameKindE", !5, i64 0}
!67 = !{!68, !13}
!68 = distinct !{!68, !69, !"_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE: argument 0"}
!69 = distinct !{!69, !"_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE"}
!70 = !{!5, !5, i64 0}
!71 = !{!72, !68, !13}
!72 = distinct !{!72, !73, !"_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE: argument 0"}
!73 = distinct !{!73, !"_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator20getJSFunctionDetailsERKNS0_16SamplingProfiler19JSFunctionFrameInfoE"}
!74 = !{!75, !76, i64 0}
!75 = !{!"_ZTSSt4pairIPN6hermes2vm13RuntimeModuleEjE", !76, i64 0, !4, i64 8}
!76 = !{!"p1 _ZTSN6hermes2vm13RuntimeModuleE", !9, i64 0}
!77 = !{!75, !4, i64 8}
!78 = !{!79, !80, i64 0}
!79 = !{!"_ZTSN4llvh8DenseMapISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISB_ENS2_8OptValueINS2_3hbc19DebugSourceLocationEEEEENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_SI_EEEE", !80, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!80 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairISt4pairIPN6hermes2vm13RuntimeModuleEjESt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEESt8optionalISC_ENS3_8OptValueINS3_3hbc19DebugSourceLocationEEEEEEE", !9, i64 0}
!81 = !{!79, !4, i64 16}
!82 = !{!"branch_weights", i32 1999, i32 1}
!83 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!84 = !{!"branch_weights", i32 1, i32 0}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!88, !76, i64 0}
!88 = !{!"_ZTSN6hermes2vm16SamplingProfiler19JSFunctionFrameInfoE", !76, i64 0, !4, i64 8, !4, i64 12}
!89 = !{!90, !91, i64 0}
!90 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc20BCProviderFromBufferELN9__gnu_cxx12_Lock_policyE2EE", !91, i64 0, !92, i64 8}
!91 = !{!"p1 _ZTSN6hermes3hbc20BCProviderFromBufferE", !9, i64 0}
!92 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !93, i64 0}
!93 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN6hermes2vm12_GLOBAL__N_117getJSFunctionNameB5cxx11EPNS_3hbc20BCProviderFromBufferEj: argument 0"}
!96 = distinct !{!96, !"_ZN6hermes2vm12_GLOBAL__N_117getJSFunctionNameB5cxx11EPNS_3hbc20BCProviderFromBufferEj"}
!97 = !{!98, !122, i64 296}
!98 = !{!"_ZTSN6hermes3hbc20BCProviderFromBufferE", !99, i64 0, !115, i64 280, !105, i64 288, !122, i64 296, !123, i64 304, !124, i64 312, !4, i64 328, !126, i64 336, !131, i64 352, !133, i64 360, !105, i64 368}
!99 = !{!"_ZTSN6hermes3hbc14BCProviderBaseE", !5, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !100, i64 24, !102, i64 40, !104, i64 56, !104, i64 72, !104, i64 88, !104, i64 104, !106, i64 120, !104, i64 136, !108, i64 152, !104, i64 168, !4, i64 184, !110, i64 192, !110, i64 208, !110, i64 224, !112, i64 240, !113, i64 248}
!100 = !{!"_ZTSN4llvh8ArrayRefIN6hermes10StringKind5EntryEEE", !101, i64 0, !22, i64 8}
!101 = !{!"p1 _ZTSN6hermes10StringKind5EntryE", !9, i64 0}
!102 = !{!"_ZTSN4llvh8ArrayRefIjEE", !103, i64 0, !22, i64 8}
!103 = !{!"p1 int", !9, i64 0}
!104 = !{!"_ZTSN4llvh8ArrayRefIhEE", !105, i64 0, !22, i64 8}
!105 = !{!"p1 omnipotent char", !9, i64 0}
!106 = !{!"_ZTSN4llvh8ArrayRefIN6hermes6bigint16BigIntTableEntryEEE", !107, i64 0, !22, i64 8}
!107 = !{!"p1 _ZTSN6hermes6bigint16BigIntTableEntryE", !9, i64 0}
!108 = !{!"_ZTSN4llvh8ArrayRefIN6hermes16RegExpTableEntryEEE", !109, i64 0, !22, i64 8}
!109 = !{!"p1 _ZTSN6hermes16RegExpTableEntryE", !9, i64 0}
!110 = !{!"_ZTSN4llvh8ArrayRefISt4pairIjjEEE", !111, i64 0, !22, i64 8}
!111 = !{!"p1 _ZTSSt4pairIjjE", !9, i64 0}
!112 = !{!"p1 _ZTSN6hermes3hbc9DebugInfoE", !9, i64 0}
!113 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !114, i64 0, !22, i64 8, !5, i64 16}
!114 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !105, i64 0}
!115 = !{!"_ZTSSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EE", !116, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_dataIKN6hermes6BufferESt14default_deleteIS2_ELb1ELb1EE", !117, i64 0}
!117 = !{!"_ZTSSt15__uniq_ptr_implIKN6hermes6BufferESt14default_deleteIS2_EE", !118, i64 0}
!118 = !{!"_ZTSSt5tupleIJPKN6hermes6BufferESt14default_deleteIS2_EEE", !119, i64 0}
!119 = !{!"_ZTSSt11_Tuple_implILm0EJPKN6hermes6BufferESt14default_deleteIS2_EEE", !120, i64 0}
!120 = !{!"_ZTSSt10_Head_baseILm0EPKN6hermes6BufferELb0EE", !121, i64 0}
!121 = !{!"p1 _ZTSN6hermes6BufferE", !9, i64 0}
!122 = !{!"p1 _ZTSN6hermes3hbc15SmallFuncHeaderE", !9, i64 0}
!123 = !{!"p1 _ZTSN6hermes3hbc21SmallStringTableEntryE", !9, i64 0}
!124 = !{!"_ZTSN4llvh8ArrayRefIN6hermes3hbc24OverflowStringTableEntryEEE", !125, i64 0, !22, i64 8}
!125 = !{!"p1 _ZTSN6hermes3hbc24OverflowStringTableEntryE", !9, i64 0}
!126 = !{!"_ZTSN4llvh8OptionalISt6threadEE", !127, i64 0}
!127 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageISt6threadLb0EEE", !128, i64 0, !130, i64 8}
!128 = !{!"_ZTSN4llvh21AlignedCharArrayUnionISt6threadcccccccccEE", !129, i64 0}
!129 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm8EEE", !5, i64 0}
!130 = !{!"bool", !5, i64 0}
!131 = !{!"_ZTSSt6atomicIbE", !132, i64 0}
!132 = !{!"_ZTSSt13__atomic_baseIbE", !130, i64 0}
!133 = !{!"_ZTSSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EE", !134, i64 0}
!134 = !{!"_ZTSSt15__uniq_ptr_dataIVN6hermes17PageAccessTrackerESt14default_deleteIS2_ELb1ELb1EE", !135, i64 0}
!135 = !{!"_ZTSSt15__uniq_ptr_implIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EE", !136, i64 0}
!136 = !{!"_ZTSSt5tupleIJPVN6hermes17PageAccessTrackerESt14default_deleteIS2_EEE", !137, i64 0}
!137 = !{!"_ZTSSt11_Tuple_implILm0EJPVN6hermes17PageAccessTrackerESt14default_deleteIS2_EEE", !138, i64 0}
!138 = !{!"_ZTSSt10_Head_baseILm0EPVN6hermes17PageAccessTrackerELb0EE", !139, i64 0}
!139 = !{!"p1 _ZTSN6hermes17PageAccessTrackerE", !9, i64 0}
!140 = !{!95, !72, !68, !13}
!141 = !{!98, !105, i64 288}
!142 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!143 = !{!144, !4, i64 12}
!144 = !{!"_ZTSN6hermes3hbc14FunctionHeaderE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !5, i64 28, !5, i64 29, !5, i64 30}
!145 = !{!146, !146, i64 0}
!146 = !{!"vtable pointer", !6, i64 0}
!147 = distinct !{null, null, null, null, null}
!148 = !{!105, !105, i64 0}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!151 = distinct !{!151, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!152 = !{!114, !105, i64 0}
!153 = !{!150, !95}
!154 = !{!113, !22, i64 8}
!155 = !{!150, !95, !72, !68, !13}
end_hunk_1
