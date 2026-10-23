Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_utilities?download=true
inline.NumInlined: 3058
inline.NumDeleted: 873
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN13TestUtilities18testIsBlockInSightEv:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs
  store i48 %.sroa.03.0.insert.insert.i.i51, ptr %i.cb, align 2, !tbaa !53, !noalias !144
  %.not10.i.i.i.i.i.i.i64 = icmp eq ptr %i.be, %i.bf
  br i1 %.not10.i.i.i.i.i.i.i64, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i69, label %.lr.ph.i.i.i.i.i.i.i65

.lr.ph.i.i.i.i.i.i.i65:                           ; preds = %.noexc6.i63, %.lr.ph.i.i.i.i.i.i.i65
  %.012.i.i.i.i.i.i.i66 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i65 ], [ %i.ca, %.noexc6.i63 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i67 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i65 ], [ %i.be, %.noexc6.i63 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i.i.i.i66, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i.i.i.i67, i64 6, i1 false), !tbaa.struct !147, !alias.scope !150, !noalias !144
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i67, i64 6 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i66, i64 6 ; 2 uses
  %.not.i.i.i.i.i.i.i68 = icmp eq ptr %i.cc, %i.bf
  br i1 %.not.i.i.i.i.i.i.i68, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i69, label %.lr.ph.i.i.i.i.i.i.i65, !llvm.loop !135

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i69: ; preds = %.lr.ph.i.i.i.i.i.i.i65, %.noexc6.i63
  %.0.lcssa.i.i.i.i.i.i.i70 = phi ptr [ %i.ca, %.noexc6.i63 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i65 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i70, i64 6 ; 2 uses
  %.not.i23.i.i.i.i71 = icmp eq ptr %i.be, null
  br i1 %.not.i23.i.i.i.i71, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i72, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i69
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bs) #30, !noalias !144
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i72

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i72: ; preds = %bb.o, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i69
  store ptr %i.ca, ptr %2, align 8, !tbaa !56, !alias.scope !144
  store ptr %i.ce, ptr %i.d, align 8, !tbaa !146, !alias.scope !144
  %i.cf = getelementptr inbounds nuw [6 x i8], ptr %i.ca, i64 %i.by ; 2 uses
  store ptr %i.cf, ptr %i.e, align 8, !tbaa !149, !alias.scope !144
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53: ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i72, %bb.m
  %i.cg = phi ptr [ %i.ca, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i72 ], [ %i.be, %bb.m ] ; 5 uses
  %i.ch = phi ptr [ %i.cf, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i72 ], [ %i.bf, %bb.m ] ; 3 uses
  %i.ci = phi ptr [ %i.ce, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i72 ], [ %i.bp, %bb.m ]
  %.sroa.09.020.i41.add = add nuw nsw i64 %.sroa.09.020.i41.idx, 6 ; 2 uses
  %.not.i54 = icmp eq i64 %.sroa.09.020.i41.add, 48
  br i1 %.not.i54, label %"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_2St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit", label %bb.l, !llvm.loop !141

.loopexit.split-lp.i74.loopexit.loopexit:         ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i55
  %lpad.loopexit141 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i74

.loopexit.split-lp.i74.loopexit.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i55.1
  %lpad.loopexit.split-lp142 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i74

.loopexit.split-lp.i74.loopexit.split-lp:         ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i74

.loopexit.split-lp.i74:                           ; preds = %.loopexit.split-lp.i74.loopexit.loopexit, %.loopexit.split-lp.i74.loopexit.loopexit.split-lp, %.loopexit.split-lp.i74.loopexit.split-lp
  %i.cj = phi ptr [ %.lcssa130, %.loopexit.split-lp.i74.loopexit.split-lp ], [ %i.be, %.loopexit.split-lp.i74.loopexit.loopexit ], [ %i.co, %.loopexit.split-lp.i74.loopexit.loopexit.split-lp ] ; 2 uses
  %i.ck = phi i64 [ 9223372036854775806, %.loopexit.split-lp.i74.loopexit.split-lp ], [ %i.bs, %.loopexit.split-lp.i74.loopexit.loopexit ], [ %i.db, %.loopexit.split-lp.i74.loopexit.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i74.loopexit.split-lp ], [ %lpad.loopexit141, %.loopexit.split-lp.i74.loopexit.loopexit ], [ %lpad.loopexit.split-lp142, %.loopexit.split-lp.i74.loopexit.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i61, label %.body77, label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i74
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.ck) #30, !noalias !144
  br label %.body77

"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_2St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit": ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53
  invoke fastcc void @"_ZZN13TestUtilities18testIsBlockInSightEvENK3$_0clERKSt6vectorIN4core8vector3dIsEESaIS4_EE"(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_2St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit"
  %.not.i.i.i79 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit81, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = ptrtoint ptr %i.cg to i64
  %i.cn = sub i64 %i.cl, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cn) #30
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit81

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit81: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !151
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53.1, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit81
  %i.co = phi ptr [ null, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit81 ], [ %i.dp, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53.1 ] ; 8 uses
  %i.cp = phi ptr [ null, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit81 ], [ %i.dq, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53.1 ] ; 5 uses
  %i.cq = phi ptr [ null, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit81 ], [ %i.dr, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53.1 ] ; 3 uses
  %.sroa.09.020.i41.idx.1 = phi i64 [ 0, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit81 ], [ %.sroa.09.020.i41.add.1, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53.1 ] ; 2 uses
  %.sroa.09.020.i41.ptr.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.020.i41.idx.1
  %.sroa.02.0.copyload.i42.1 = load i48, ptr %.sroa.09.020.i41.ptr.1, align 2, !tbaa !53, !noalias !151 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i44.1 = trunc i48 %.sroa.02.0.copyload.i42.1 to i16
  %.sroa.54.0.extract.shift.i.i.1 = lshr i48 %.sroa.02.0.copyload.i42.1, 16
  %.sroa.54.0.extract.trunc.i.i.1 = trunc i48 %.sroa.54.0.extract.shift.i.i.1 to i16
  %.sroa.85.0.extract.shift.i.i.1 = and i48 %.sroa.02.0.copyload.i42.1, -4294967296
  %i.cr = sitofp i16 %.sroa.03.0.extract.trunc.i.i44.1 to double ; 2 uses
  %i.cs = sitofp i16 %.sroa.54.0.extract.trunc.i.i.1 to double ; 2 uses
  %i.ct = tail call nsz double @llvm.fmuladd.f64(double %i.cr, double f0xBCAA79394C9E8A0A, double %i.cs)
  %i.cu = fptosi double %i.ct to i16
  %i.cv = fmul nnan nsz double %i.cs, f0xBCAA79394C9E8A0A
  %i.cw = fsub nsz double %i.cv, %i.cr
  %i.cx = fptosi double %i.cw to i16
  %.sroa.54.0.insert.ext.i.i48.1 = zext i16 %i.cx to i48
  %.sroa.54.0.insert.shift.i.i.1 = shl nuw nsw i48 %.sroa.54.0.insert.ext.i.i48.1, 16
  %.sroa.54.0.insert.insert.i.i49.1 = or disjoint i48 %.sroa.54.0.insert.shift.i.i.1, %.sroa.85.0.extract.shift.i.i.1
  %.sroa.03.0.insert.ext.i.i50.1 = zext i16 %i.cu to i48
  %.sroa.03.0.insert.insert.i.i51.1 = or disjoint i48 %.sroa.54.0.insert.insert.i.i49.1, %.sroa.03.0.insert.ext.i.i50.1 ; 2 uses
  %.not.i.i.i52.1 = icmp eq ptr %i.cq, %i.cp
  br i1 %.not.i.i.i52.1, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i48 %.sroa.03.0.insert.insert.i.i51.1, ptr %i.cq, align 2, !tbaa !53, !noalias !151
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 6 ; 2 uses
  store ptr %i.cy, ptr %i.d, align 8, !tbaa !146, !alias.scope !151
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53.1

bb.u:                                             ; preds = %bb.s
  %i.cz = ptrtoint ptr %i.cp to i64
  %i.da = ptrtoint ptr %i.co to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 5 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775806
  br i1 %i.dc, label %.loopexit, label %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i55.1

_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i55.1: ; preds = %bb.u
  %i.dd = sdiv exact i64 %i.db, 6                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i56.1 = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.de = add nsw i64 %.sroa.speculated.i.i.i.i.i56.1, %i.dd ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.de, i64 1537228672809129301)
  %i.dh = select i1 %i.df, i64 1537228672809129301, i64 %i.dg ; 3 uses
  %.not.i.i.i.i.i57.1 = icmp ne i64 %i.dh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i57.1)
  %i.di = mul nuw nsw i64 %i.dh, 6
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #35
          to label %.noexc6.i63.1 unwind label %.loopexit.split-lp.i74.loopexit.loopexit.split-lp, !noalias !151 ; 6 uses

.noexc6.i63.1:                                    ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i55.1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.db
  store i48 %.sroa.03.0.insert.insert.i.i51.1, ptr %i.dk, align 2, !tbaa !53, !noalias !151
  %.not10.i.i.i.i.i.i.i64.1 = icmp eq ptr %i.co, %i.cp
  br i1 %.not10.i.i.i.i.i.i.i64.1, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i69.1, label %.lr.ph.i.i.i.i.i.i.i65.1

.lr.ph.i.i.i.i.i.i.i65.1:                         ; preds = %.noexc6.i63.1, %.lr.ph.i.i.i.i.i.i.i65.1
  %.012.i.i.i.i.i.i.i66.1 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i.i65.1 ], [ %i.dj, %.noexc6.i63.1 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i67.1 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i.i65.1 ], [ %i.co, %.noexc6.i63.1 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i.i.i.i66.1, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i.i.i.i67.1, i64 6, i1 false), !tbaa.struct !147, !alias.scope !150, !noalias !151
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i67.1, i64 6 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i66.1, i64 6 ; 2 uses
  %.not.i.i.i.i.i.i.i68.1 = icmp eq ptr %i.dl, %i.cp
  br i1 %.not.i.i.i.i.i.i.i68.1, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i69.1, label %.lr.ph.i.i.i.i.i.i.i65.1, !llvm.loop !135

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i69.1: ; preds = %.lr.ph.i.i.i.i.i.i.i65.1, %.noexc6.i63.1
  %.0.lcssa.i.i.i.i.i.i.i70.1 = phi ptr [ %i.dj, %.noexc6.i63.1 ], [ %i.dm, %.lr.ph.i.i.i.i.i.i.i65.1 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i70.1, i64 6 ; 2 uses
  %.not.i23.i.i.i.i71.1 = icmp eq ptr %i.co, null
  br i1 %.not.i23.i.i.i.i71.1, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i72.1, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i69.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.db) #30, !noalias !151
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i72.1

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i72.1: ; preds = %bb.v, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i69.1
  store ptr %i.dj, ptr %2, align 8, !tbaa !56, !alias.scope !151
  store ptr %i.dn, ptr %i.d, align 8, !tbaa !146, !alias.scope !151
  %i.do = getelementptr inbounds nuw [6 x i8], ptr %i.dj, i64 %i.dh ; 2 uses
  store ptr %i.do, ptr %i.e, align 8, !tbaa !149, !alias.scope !151
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53.1

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53.1: ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i72.1, %bb.t
  %i.dp = phi ptr [ %i.dj, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i72.1 ], [ %i.co, %bb.t ] ; 5 uses
  %i.dq = phi ptr [ %i.do, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i72.1 ], [ %i.cp, %bb.t ] ; 3 uses
  %i.dr = phi ptr [ %i.dn, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i72.1 ], [ %i.cy, %bb.t ]
  %.sroa.09.020.i41.add.1 = add nuw nsw i64 %.sroa.09.020.i41.idx.1, 6 ; 2 uses
  %.not.i54.1 = icmp eq i64 %.sroa.09.020.i41.add.1, 48
  br i1 %.not.i54.1, label %"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_2St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit.1", label %bb.s, !llvm.loop !141

"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_2St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit.1": ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53.1
  invoke fastcc void @"_ZZN13TestUtilities18testIsBlockInSightEvENK3$_0clERKSt6vectorIN4core8vector3dIsEESaIS4_EE"(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_2St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit.1"
  %.not.i.i.i79.1 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i79.1, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit81.1, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #30
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit81.1

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit81.1: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.dv = invoke noundef zeroext i1 @_Z14isBlockInSightN4core8vector3dIsEENS0_IfEES2_ffPf(i48 65535, <2 x float> <float -1.500000e+02, float 0.000000e+00>, float 0.000000e+00, <2 x float> <float 1.000000e+00, float 0.000000e+00>, float 0.000000e+00, float noundef f0x3FA0D97C, float noundef 3.200000e+02, ptr noundef null)
          to label %bb.aa unwind label %bb.ae

bb.y:                                             ; preds = %"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_2St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit.1", %"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_2St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit"
  %i.dw = phi ptr [ %i.dq, %"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_2St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit.1" ], [ %i.ch, %"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_2St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit" ]
  %i.dx = phi ptr [ %i.dp, %"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_2St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit.1" ], [ %i.cg, %"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_2St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit" ] ; 3 uses
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i82, label %.body77, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #30
  br label %.body77

.body77:                                          ; preds = %bb.z, %bb.y, %bb.p, %.loopexit.split-lp.i74
  %.pn26 = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp.i74 ], [ %i.dy, %bb.z ], [ %lpad.phi, %bb.p ], [ %i.dy, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit90

bb.aa:                                            ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit81.1
  br i1 %i.dv, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit87, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ec = tail call ptr @__cxa_allocate_exception(i64 72) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.409, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.ac unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ec, ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.33, i32 noundef 722)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_throw(ptr nonnull %i.ec, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.ah unwind label %bb.af

bb.ae:                                            ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit81.1
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ab
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eg = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !22
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.0, label %bb.ag, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.0, label %bb.ag, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit90

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn111 = phi { ptr, i32 } [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ec) #31
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit90

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit87: ; preds = %bb.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #30
  ret void

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit90: ; preds = %bb.ae, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body77, %.body32
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %.body32 ], [ %.pn26, %.body77 ], [ %.pn111, %bb.ag ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ed, %bb.ae ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #30
  resume { ptr, i32 } %.pn28.pn

bb.ah:                                            ; preds = %bb.ad
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN13TestUtilities18testIsBlockInSightEvENK3$_0clERKSt6vectorIN4core8vector3dIsEESaIS4_EE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %12 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 5 uses
  %i.b = load <2 x i16>, ptr %i.a, align 2, !tbaa !53
  %i.c = sitofp <2 x i16> %i.b to <2 x float>     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load i16, ptr %i.d, align 2, !tbaa !153
  %i.f = sitofp nsz i16 %i.e to float             ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.h = load <2 x i16>, ptr %i.g, align 2, !tbaa !53
  %i.i = sitofp <2 x i16> %i.h to <2 x float>     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.k = load i16, ptr %i.j, align 2, !tbaa !153
  %i.l = sitofp nsz i16 %i.k to float             ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.064.0.copyload = load i48, ptr %i.m, align 2, !tbaa !53
  %i.n = tail call noundef zeroext i1 @_Z14isBlockInSightN4core8vector3dIsEENS0_IfEES2_ffPf(i48 %.sroa.064.0.copyload, <2 x float> %i.c, float %i.f, <2 x float> %i.i, float %i.l, float noundef f0x3FA0D97C, float noundef 6.400000e+02, ptr noundef null)
  br i1 %i.n, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 72) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.463, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.o, ptr noundef nonnull align 8 %1, ptr noundef nonnull @.str.33, i32 noundef 688)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.ag unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0113 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.u = load i64, ptr %i.s, align 8, !tbaa !22
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %.0113, label %.sink.split, label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %.0113, label %.sink.split, label %bb.af

bb.f:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 18
  %.sroa.051.0.copyload = load i48, ptr %i.x, align 2, !tbaa !53
  %i.y = tail call noundef zeroext i1 @_Z14isBlockInSightN4core8vector3dIsEENS0_IfEES2_ffPf(i48 %.sroa.051.0.copyload, <2 x float> %i.c, float %i.f, <2 x float> %i.i, float %i.l, float noundef f0x3FA0D97C, float noundef 6.400000e+02, ptr noundef null)
  br i1 %i.y, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @__cxa_allocate_exception(i64 72) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.464, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.z, ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.33, i32 noundef 689)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.ag unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.thread: ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.sink.split

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0115 = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.j
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !22
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.0115, label %.sink.split, label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.0115, label %.sink.split, label %bb.af

bb.k:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %0, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.040.0.copyload = load i48, ptr %i.ai, align 2, !tbaa !53
  %i.aj = tail call noundef zeroext i1 @_Z14isBlockInSightN4core8vector3dIsEENS0_IfEES2_ffPf(i48 %.sroa.040.0.copyload, <2 x float> %i.c, float %i.f, <2 x float> %i.i, float %i.l, float noundef f0x3FA0D97C, float noundef 6.400000e+02, ptr noundef null)
  br i1 %i.aj, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
end_hunk_0
