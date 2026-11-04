Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCPackIFWPackage?download=true
inline.NumInlined: 2154
inline.NumDeleted: 704
begin_hunk_0_@_ZN17cmCPackIFWPackage19ConfigureFromPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.nc = load <2 x i64>, ptr %i.mb, align 8, !tbaa !20
  store <2 x i64> %i.nc, ptr %i.d, align 8, !tbaa !20
  %.not.i246 = icmp eq ptr %i.mq, null
  br i1 %.not.i246, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i245
  store ptr %i.mq, ptr %11, align 8, !tbaa !21
  store i64 %i.nb, ptr %i.ma, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit251

bb.cp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i245, %.thread.i250
  store ptr %i.ma, ptr %11, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i247, %bb.co, %bb.cp
  %i.nd = phi ptr [ %i.mq, %bb.co ], [ %i.ma, %bb.cp ], [ %.pre.i248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i247 ]
  store i64 0, ptr %i.mb, align 8, !tbaa !19
  store i8 0, ptr %i.nd, align 1, !tbaa !20
  %i.ne = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.nf = icmp eq ptr %i.ne, %i.ma
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit251
  %i.ng = load i64, ptr %i.ma, align 8, !tbaa !20
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.nh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ni = invoke ptr @_ZNK16cmCPackIFWCommon9GetOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cq unwind label %bb.gy     ; 2 uses

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  %.not692 = icmp eq ptr %i.ni, null
  br i1 %.not692, label %_ZN6cmList6appendB5cxx11E7cmValueNS_14ExpandElementsENS_13EmptyElementsE.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !65
  %i.nl = invoke ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EERSC_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.nk, ptr noundef nonnull align 8 dereferenceable(32) %i.ni, i32 noundef 1, i32 noundef 0)
          to label %_ZN6cmList6appendB5cxx11E7cmValueNS_14ExpandElementsENS_13EmptyElementsE.exit unwind label %bb.gy ; 0 uses

.body241:                                         ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ia

_ZN6cmList6appendB5cxx11E7cmValueNS_14ExpandElementsENS_13EmptyElementsE.exit: ; preds = %bb.cr, %bb.cq
  %i.nm = load ptr, ptr %9, align 8, !tbaa !65    ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !65 ; 2 uses
  %.not693700 = icmp eq ptr %i.nm, %i.no
  br i1 %.not693700, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6cmList6appendB5cxx11E7cmValueNS_14ExpandElementsENS_13EmptyElementsE.exit
  %i.np = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.nr = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.cu

._crit_edge:                                      ; preds = %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit, %_ZN6cmList6appendB5cxx11E7cmValueNS_14ExpandElementsENS_13EmptyElementsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.ny = load ptr, ptr %1, align 8, !tbaa !21, !noalias !305
  %i.nz = load i64, ptr %i.f, align 8, !tbaa !19, !noalias !305 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 10 uses
  store ptr %i.oa, ptr %13, align 8, !tbaa !18, !alias.scope !306
  %i.ob = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 8 uses
  store i64 0, ptr %i.ob, align 8, !tbaa !19, !alias.scope !306
  store i8 0, ptr %i.oa, align 8, !tbaa !20, !alias.scope !306
  %i.oc = add i64 %i.nz, 14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.oc)
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %._crit_edge
  %i.od = load i64, ptr %i.ob, align 8, !tbaa !19, !alias.scope !306
  %i.oe = sub i64 4611686018427387903, %i.od
  %i.of = icmp ult i64 %i.oe, %i.nz
  br i1 %i.of, label %.invoke.i.i263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i260: ; preds = %bb.cs
  %i.og = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.ny, i64 noundef %i.nz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i261 unwind label %bb.ct ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i261: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i260
  %i.oh = load i64, ptr %i.ob, align 8, !tbaa !19, !alias.scope !306
  %i.oi = add i64 %i.oh, -4611686018427387890
  %i.oj = icmp ult i64 %i.oi, 14
  br i1 %i.oj, label %.invoke.i.i263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i262

.invoke.i.i263:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i261, %bb.cs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #24
          to label %.cont.i.i264 unwind label %bb.ct

.cont.i.i264:                                     ; preds = %.invoke.i.i263
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i261
  %i.ok = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.44, i64 noundef 14)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit267 unwind label %bb.ct ; 0 uses

bb.ct:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i262, %.invoke.i.i263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i260, %._crit_edge
  %i.ol = landingpad { ptr, i32 }
          cleanup
  %i.om = load ptr, ptr %13, align 8, !tbaa !21, !alias.scope !306 ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.oa
  br i1 %i.on, label %.body265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i257: ; preds = %bb.ct
  %i.oo = load i64, ptr %i.oa, align 8, !tbaa !20, !alias.scope !306
  %i.op = add i64 %i.oo, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.op) #23
  br label %.body265

bb.cu:                                            ; preds = %.lr.ph, %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit
  %.sroa.0662.0701 = phi ptr [ %i.nm, %.lr.ph ], [ %i.rq, %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN17cmCPackIFWPackage16DependenceStructC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0662.0701)
          to label %bb.cv unwind label %bb.da

bb.cv:                                            ; preds = %bb.cu
  %i.oq = load ptr, ptr %0, align 8, !tbaa !63    ; 6 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 1832
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 1848
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !31 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 1840 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ot, null
  br i1 %.not10.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit270, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cv
  %i.ov = load i64, ptr %i.np, align 8, !tbaa !19 ; 4 uses
  %i.ow = load ptr, ptr %12, align 8              ; 2 uses
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ot, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.ou, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ox = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ov, i64 %i.oy) ; 2 uses
  %i.oz = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.oz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.cw
  %i.pa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !21
  %i.pc = call i32 @memcmp(ptr noundef %i.pb, ptr noundef %i.ow, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i268 = icmp eq i32 %i.pc, 0
  br i1 %.not.i.i.i.i.i.i268, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.cw
  %i.pd = sub i64 %i.oy, %i.ov
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.pd, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.pc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.pe = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.pe, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.pe, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17cmCPackIFWPackageESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.cw, !llvm.loop !262

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17cmCPackIFWPackageESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.pf = icmp eq ptr %.19.i.i.i, %i.ou
  br i1 %i.pf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit270, label %bb.cx

bb.cx:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17cmCPackIFWPackageESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ph, i64 %i.ov) ; 2 uses
  %i.pi = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.pi, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.cx
  %i.pj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !21
  %i.pl = call i32 @memcmp(ptr noundef %i.ow, ptr noundef %i.pk, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.pl, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmCPackIFWPackageSt4lessIS5_ESaISt4pairIKS5_S6_EEE5countERSA_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.cx
  %i.pm = sub i64 %i.ov, %i.ph
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.pm, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmCPackIFWPackageSt4lessIS5_ESaISt4pairIKS5_S6_EEE5countERSA_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmCPackIFWPackageSt4lessIS5_ESaISt4pairIKS5_S6_EEE5countERSA_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.pl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %25 = icmp sgt i32 %.0.i.i.i.i.i, -1
  br i1 %25, label %bb.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit270

bb.cy:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmCPackIFWPackageSt4lessIS5_ESaISt4pairIKS5_S6_EEE5countERSA_.exit
  %i.pn = invoke noundef nonnull align 8 dereferenceable(768) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmCPackIFWPackageSt4lessIS5_ESaISt4pairIKS5_S6_EEEixERSA_(ptr noundef nonnull align 8 dereferenceable(48) %i.or, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.cz unwind label %bb.dj

bb.cz:                                            ; preds = %bb.cy
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 168
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.po)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit270_crit_edge unwind label %bb.dj

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit270_crit_edge: ; preds = %bb.cz
  %.pre = load ptr, ptr %0, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit270

bb.da:                                            ; preds = %bb.cu
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit270: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit270_crit_edge, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17cmCPackIFWPackageESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.cv, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmCPackIFWPackageSt4lessIS5_ESaISt4pairIKS5_S6_EEE5countERSA_.exit
  %i.pq = phi ptr [ %.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit270_crit_edge ], [ %i.oq, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17cmCPackIFWPackageESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %i.oq, %bb.cv ], [ %i.oq, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmCPackIFWPackageSt4lessIS5_ESaISt4pairIKS5_S6_EEE5countERSA_.exit ] ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 2024
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 2040
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !31 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 2032 ; 2 uses
  %.not10.i.i.i271 = icmp eq ptr %i.pt, null
  br i1 %.not10.i.i.i271, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmCPackIFWPackage16DependenceStructESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit, label %.lr.ph.i.i.i272

.lr.ph.i.i.i272:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit270
  %i.pv = load i64, ptr %i.np, align 8, !tbaa !19 ; 4 uses
  %i.pw = load ptr, ptr %12, align 8              ; 2 uses
  br label %bb.db

bb.db:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i278, %.lr.ph.i.i.i272
  %.012.i.i.i273 = phi ptr [ %i.pt, %.lr.ph.i.i.i272 ], [ %.1.i.i.i283, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i278 ] ; 4 uses
  %.0811.i.i.i274 = phi ptr [ %i.pu, %.lr.ph.i.i.i272 ], [ %.19.i.i.i280, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i278 ]
  %i.px = getelementptr inbounds nuw i8, ptr %.012.i.i.i273, i64 40
  %i.py = load i64, ptr %i.px, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i275 = call i64 @llvm.umin.i64(i64 %i.pv, i64 %i.py) ; 2 uses
  %i.pz = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i275, 0
  br i1 %i.pz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i295, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i276

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i276: ; preds = %bb.db
  %i.qa = getelementptr inbounds nuw i8, ptr %.012.i.i.i273, i64 32
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !21
  %i.qc = call i32 @memcmp(ptr noundef %i.qb, ptr noundef %i.pw, i64 noundef %.sroa.speculated.i.i.i.i.i.i275) #22 ; 2 uses
  %.not.i.i.i.i.i.i277 = icmp eq i32 %i.qc, 0
  br i1 %.not.i.i.i.i.i.i277, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i295, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i278

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i295: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i276, %bb.db
  %i.qd = sub i64 %i.py, %i.pv
  %spec.select7.i.i.i.i.i.i.i296 = call i64 @llvm.smax.i64(i64 %i.qd, i64 -2147483648)
  %.08.i.i.i.i.i.i.i297 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i296, i64 2147483647)
  %.0.i6.i.i.i.i.i.i298 = trunc nsw i64 %.08.i.i.i.i.i.i.i297 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i278

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i278: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i295, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i276
  %.0.i.i.i.i.i.i279 = phi i32 [ %i.qc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i276 ], [ %.0.i6.i.i.i.i.i.i298, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i295 ]
  %i.qe = icmp slt i32 %.0.i.i.i.i.i.i279, 0      ; 2 uses
  %.19.i.i.i280 = select i1 %i.qe, ptr %.0811.i.i.i274, ptr %.012.i.i.i273 ; 4 uses
  %.1.in.v.i.i.i281 = select i1 %i.qe, i64 24, i64 16
  %.1.in.i.i.i282 = getelementptr inbounds nuw i8, ptr %.012.i.i.i273, i64 %.1.in.v.i.i.i281
  %.1.i.i.i283 = load ptr, ptr %.1.in.i.i.i282, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i284 = icmp eq ptr %.1.i.i.i283, null
  br i1 %.not.i.i.i284, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N17cmCPackIFWPackage16DependenceStructEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.db, !llvm.loop !263

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N17cmCPackIFWPackage16DependenceStructEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i278
  %i.qf = icmp eq ptr %.19.i.i.i280, %i.pu
  br i1 %i.qf, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmCPackIFWPackage16DependenceStructESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N17cmCPackIFWPackage16DependenceStructEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.qg = getelementptr inbounds nuw i8, ptr %.19.i.i.i280, i64 40
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated.i.i.i.i.i285 = call i64 @llvm.umin.i64(i64 %i.qh, i64 %i.pv) ; 2 uses
  %i.qi = icmp eq i64 %.sroa.speculated.i.i.i.i.i285, 0
  br i1 %i.qi, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i291, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i286

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i286: ; preds = %bb.dc
  %i.qj = getelementptr inbounds nuw i8, ptr %.19.i.i.i280, i64 32
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !21
  %i.ql = call i32 @memcmp(ptr noundef %i.pw, ptr noundef %i.qk, i64 noundef %.sroa.speculated.i.i.i.i.i285) #22 ; 2 uses
  %.not.i.i.i.i.i287 = icmp eq i32 %i.ql, 0
  br i1 %.not.i.i.i.i.i287, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i291, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i288

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i291: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i286, %bb.dc
  %i.qm = sub i64 %i.pv, %i.qh
  %spec.select7.i.i.i.i.i.i292 = call i64 @llvm.smax.i64(i64 %i.qm, i64 -2147483648)
  %.08.i.i.i.i.i.i293 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i292, i64 2147483647)
  %.0.i6.i.i.i.i.i294 = trunc nsw i64 %.08.i.i.i.i.i.i293 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i288

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i288: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i291, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i286
  %.0.i.i.i.i.i289 = phi i32 [ %i.ql, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i286 ], [ %.0.i6.i.i.i.i.i294, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i291 ]
  %26 = icmp sgt i32 %.0.i.i.i.i.i289, -1
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmCPackIFWPackage16DependenceStructESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmCPackIFWPackage16DependenceStructESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i288, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N17cmCPackIFWPackage16DependenceStructEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit270
  %.sroa.0.0.i.i290 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit270 ], [ false, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N17cmCPackIFWPackage16DependenceStructEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %26, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i288 ]
  %i.qn = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmCPackIFWPackage16DependenceStructESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.pr, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.dd unwind label %bb.dj     ; 7 uses

bb.dd:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmCPackIFWPackage16DependenceStructESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit
  br i1 %.sroa.0.0.i.i290, label %_ZN17cmCPackIFWPackage16DependenceStructaSERKS0_.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %i.qn, ptr noundef nonnull align 8 dereferenceable(72) %12)
          to label %.noexc299 unwind label %bb.dj

.noexc299:                                        ; preds = %bb.de
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 32
  %i.qp = load i32, ptr %i.nq, align 8, !tbaa !17
  store i32 %i.qp, ptr %i.qo, align 8, !tbaa !17
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.qq, ptr noundef nonnull align 8 dereferenceable(32) %i.nr)
          to label %_ZN17cmCPackIFWPackage16DependenceStructaSERKS0_.exit unwind label %bb.dj

_ZN17cmCPackIFWPackage16DependenceStructaSERKS0_.exit: ; preds = %.noexc299, %bb.dd
  %.02022.i.i.i = load ptr, ptr %i.ns, align 8, !tbaa !64 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i301

.lr.ph.i.i.i301:                                  ; preds = %_ZN17cmCPackIFWPackage16DependenceStructaSERKS0_.exit, %.lr.ph.i.i.i301
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i301 ], [ %.02022.i.i.i, %_ZN17cmCPackIFWPackage16DependenceStructaSERKS0_.exit ] ; 4 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !120 ; 2 uses
  %i.qt = icmp ult ptr %i.qn, %i.qs               ; 2 uses
  %.in.v.i.i.i = select i1 %i.qt, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i302 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i302, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i301, !llvm.loop !264

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i301
  br i1 %i.qt, label %._crit_edge.thread.i.i.i, label %bb.dg

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZN17cmCPackIFWPackage16DependenceStructaSERKS0_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.nt, %_ZN17cmCPackIFWPackage16DependenceStructaSERKS0_.exit ] ; 4 uses
  %i.qu = load ptr, ptr %i.nu, align 8, !tbaa !32
  %i.qv = icmp eq ptr %.019.lcssa29.i.i.i, %i.qu
  br i1 %i.qv, label %select.unfold.i.i, label %bb.df

bb.df:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.qw = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #26
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.qw, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !120
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %._crit_edge.i.i.i
  %i.qx = phi ptr [ %.pre.i.i, %bb.df ], [ %i.qs, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.df ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.qy = icmp ult ptr %i.qx, %i.qn
  br i1 %i.qy, label %select.unfold.i.i, label %bb.di

select.unfold.i.i:                                ; preds = %bb.dg, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.dg ] ; 3 uses
  %i.qz = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.nt
  br i1 %i.qz, label %_ZNSt8_Rb_treeIPN17cmCPackIFWPackage16DependenceStructES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i, label %bb.dh

bb.dh:                                            ; preds = %select.unfold.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !120
  %i.rc = icmp ult ptr %i.qn, %i.rb
  br label %_ZNSt8_Rb_treeIPN17cmCPackIFWPackage16DependenceStructES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPN17cmCPackIFWPackage16DependenceStructES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i: ; preds = %bb.dh, %select.unfold.i.i
  %i.rd = phi i1 [ %i.rc, %bb.dh ], [ true, %select.unfold.i.i ]
  %i.re = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc303 unwind label %bb.dj ; 2 uses

.noexc303:                                        ; preds = %_ZNSt8_Rb_treeIPN17cmCPackIFWPackage16DependenceStructES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  store ptr %i.qn, ptr %i.rf, align 8, !tbaa !120
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.rd, ptr noundef nonnull %i.re, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.nt) #22
  %i.rg = load i64, ptr %i.nv, align 8, !tbaa !34
  %i.rh = add i64 %i.rg, 1
  store i64 %i.rh, ptr %i.nv, align 8, !tbaa !34
  br label %bb.di

bb.di:                                            ; preds = %.noexc303, %bb.dg
  %i.ri = load ptr, ptr %i.nr, align 8, !tbaa !21 ; 2 uses
  %i.rj = icmp eq ptr %i.ri, %i.nw
  br i1 %i.rj, label %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i304: ; preds = %bb.di
  %i.rk = load i64, ptr %i.nw, align 8, !tbaa !20
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rl) #23
  br label %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i

_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i304
  %i.rm = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.rn = icmp eq ptr %i.rm, %i.nx
  br i1 %i.rn, label %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i
  %i.ro = load i64, ptr %i.nx, align 8, !tbaa !20
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rp) #23
  br label %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit

_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit: ; preds = %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.0662.0701, i64 32 ; 2 uses
  %.not693 = icmp eq ptr %i.rq, %i.no
  br i1 %.not693, label %._crit_edge, label %bb.cu

bb.dj:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmCPackIFWPackage16DependenceStructESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit, %bb.cy, %bb.cz, %bb.de, %.noexc299, %_ZNSt8_Rb_treeIPN17cmCPackIFWPackage16DependenceStructES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i
  %i.rr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17cmCPackIFWPackage16DependenceStructD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %12) #22
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.da
  %.pn69.pn.pn.pn = phi { ptr, i32 } [ %i.rr, %bb.dj ], [ %i.pp, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ia

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit267: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i262
  %i.rs = load ptr, ptr %2, align 8, !tbaa !21    ; 6 uses
  %i.rt = icmp eq ptr %i.rs, %i.c
  %i.ru = load ptr, ptr %13, align 8, !tbaa !21   ; 5 uses
  %i.rv = icmp eq ptr %i.ru, %i.oa                ; 2 uses
  br i1 %i.rt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i311: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit267
  br i1 %i.rv, label %bb.dl, label %.thread.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i306: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit267
  br i1 %i.rv, label %bb.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i307

bb.dl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i311
  %i.rw = load i64, ptr %i.ob, align 8, !tbaa !19 ; 3 uses
  %i.rx = icmp ult i64 %i.rw, 16
  call void @llvm.assume(i1 %i.rx)
  switch i64 %i.rw, label %bb.dn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i309
    i64 1, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.ry = load i8, ptr %i.ru, align 1, !tbaa !20
  store i8 %i.ry, ptr %i.rs, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i309

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rs, ptr align 1 %i.ru, i64 %i.rw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i309: ; preds = %bb.dn, %bb.dm, %bb.dl
  %i.rz = load i64, ptr %i.ob, align 8, !tbaa !19 ; 2 uses
  store i64 %i.rz, ptr %i.d, align 8, !tbaa !19
  %i.sa = load ptr, ptr %2, align 8, !tbaa !21
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.rz
  store i8 0, ptr %i.sb, align 1, !tbaa !20
  %.pre.i310 = load ptr, ptr %13, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit313

.thread.i312:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i311
  store ptr %i.ru, ptr %2, align 8, !tbaa !21
  %i.sc = load <2 x i64>, ptr %i.ob, align 8, !tbaa !20
  store <2 x i64> %i.sc, ptr %i.d, align 8, !tbaa !20
  br label %bb.dp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i307: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i306
  %i.sd = load i64, ptr %i.c, align 8, !tbaa !20
  store ptr %i.ru, ptr %2, align 8, !tbaa !21
  %i.se = load <2 x i64>, ptr %i.ob, align 8, !tbaa !20
  store <2 x i64> %i.se, ptr %i.d, align 8, !tbaa !20
  %.not.i308 = icmp eq ptr %i.rs, null
  br i1 %.not.i308, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i307
  store ptr %i.rs, ptr %13, align 8, !tbaa !21
  store i64 %i.sd, ptr %i.oa, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit313

bb.dp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i307, %.thread.i312
  store ptr %i.oa, ptr %13, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit313

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit313: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i309, %bb.do, %bb.dp
  %i.sf = phi ptr [ %i.rs, %bb.do ], [ %i.oa, %bb.dp ], [ %.pre.i310, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i309 ]
  store i64 0, ptr %i.ob, align 8, !tbaa !19
  store i8 0, ptr %i.sf, align 1, !tbaa !20
  %i.sg = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.oa
  br i1 %i.sh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit313
  %i.si = load i64, ptr %i.oa, align 8, !tbaa !20
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sg, i64 noundef %i.sj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.sk = invoke noundef zeroext i1 @_ZNK16cmCPackIFWCommon12IsSetToEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dq unwind label %bb.gy

bb.dq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316
  br i1 %i.sk, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
end_hunk_0
begin_hunk_1_@_ZN17cmCPackIFWPackage19ConfigureFromPrefixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.dx:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tc, ptr align 1 %i.sw, i64 %i.sy, i1 false)
  br label %.lr.ph55.i.i.i.i.i.i

.lr.ph55.i.i.i.i.i.i:                             ; preds = %bb.dx, %bb.dw, %._crit_edge.i.i
  %i.te = load i64, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.te, ptr %i.tf, align 8, !tbaa !19
  %i.tg = load ptr, ptr %15, align 8, !tbaa !21
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.te
  store i8 0, ptr %i.th, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ti = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.tj = invoke ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EERSC_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 1, i32 noundef 0)
          to label %.noexc.i319 unwind label %.body320 ; 0 uses

.noexc.i319:                                      ; preds = %.lr.ph55.i.i.i.i.i.i
  %i.tk = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.tm = icmp eq ptr %i.tk, %i.tl
  br i1 %i.tm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

.body320:                                         ; preds = %.lr.ph55.i.i.i.i.i.i
  %i.tn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #22
  %i.to = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.tq = icmp eq ptr %i.to, %i.tp
  br i1 %i.tq, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %.noexc.i319
  %i.tr = load i64, ptr %i.tl, align 8, !tbaa !20
  %i.ts = add i64 %i.tr, 1
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.ts) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %.noexc.i319, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.tt = load ptr, ptr %14, align 8, !tbaa !65   ; 3 uses
  %i.tu = load ptr, ptr %i.ti, align 8, !tbaa !65 ; 2 uses
  %.not695702 = icmp eq ptr %i.tt, %i.tu
  br i1 %.not695702, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i330, label %.lr.ph705

.lr.ph705:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324
  %i.tv = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.tx = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  br label %bb.ea

._crit_edge706:                                   ; preds = %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit430
  %.pre711 = load ptr, ptr %14, align 8, !tbaa !60 ; 3 uses
  %.pre712 = load ptr, ptr %i.ti, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre711, %.pre712
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i330, label %.lr.ph.i.i.i.i325

.lr.ph.i.i.i.i325:                                ; preds = %._crit_edge706, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i328
  %.05.i.i.i.i326 = phi ptr [ %i.uj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i328 ], [ %.pre711, %._crit_edge706 ] ; 3 uses
  %i.ue = load ptr, ptr %.05.i.i.i.i326, align 8, !tbaa !21 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i326, i64 16 ; 2 uses
  %i.ug = icmp eq ptr %i.ue, %i.uf
  br i1 %i.ug, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i327: ; preds = %.lr.ph.i.i.i.i325
  %i.uh = load i64, ptr %i.uf, align 8, !tbaa !20
  %i.ui = add i64 %i.uh, 1
  call void @_ZdlPvm(ptr noundef %i.ue, i64 noundef %i.ui) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i328

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i328: ; preds = %.lr.ph.i.i.i.i325, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i327
  %i.uj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i326, i64 32 ; 2 uses
  %.not.i.i.i.i329 = icmp eq ptr %i.uj, %.pre712
  br i1 %.not.i.i.i.i329, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i325, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i328
  %.pr.i.i = load ptr, ptr %14, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i330

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i330: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge706
  %i.uk = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %.pre711, %._crit_edge706 ], [ %i.tt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.uk, null
  br i1 %.not.i.i1.i.i, label %_ZN6cmListD2Ev.exit, label %bb.dy

bb.dy:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i330
  %i.ul = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !121
  %i.un = ptrtoint ptr %i.um to i64
  %i.uo = ptrtoint ptr %i.uk to i64
  %i.up = sub i64 %i.un, %i.uo
  call void @_ZdlPvm(ptr noundef nonnull %i.uk, i64 noundef %i.up) #23
  br label %_ZN6cmListD2Ev.exit

_ZN6cmListD2Ev.exit:                              ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i330, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.es

bb.dz:                                            ; preds = %.noexc.i
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %.body320
  %i.ur = load i64, ptr %i.tp, align 8, !tbaa !20
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.to, i64 noundef %i.us) #23
  br label %.loopexit

.loopexit:                                        ; preds = %.body320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332, %bb.dz
  %.pn = phi { ptr, i32 } [ %i.uq, %bb.dz ], [ %i.tn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332 ], [ %i.tn, %.body320 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.er

bb.ea:                                            ; preds = %.lr.ph705, %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit430
  %.sroa.0653.0703 = phi ptr [ %i.tt, %.lr.ph705 ], [ %i.xt, %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit430 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_ZN17cmCPackIFWPackage16DependenceStructC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0653.0703)
          to label %bb.eb unwind label %bb.eg

bb.eb:                                            ; preds = %bb.ea
  %i.ut = load ptr, ptr %0, align 8, !tbaa !63    ; 6 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 1832
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 1848
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !31 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 1840 ; 2 uses
  %.not10.i.i.i335 = icmp eq ptr %i.uw, null
  br i1 %.not10.i.i.i335, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit366, label %.lr.ph.i.i.i336

.lr.ph.i.i.i336:                                  ; preds = %bb.eb
  %i.uy = load i64, ptr %i.tv, align 8, !tbaa !19 ; 4 uses
  %i.uz = load ptr, ptr %16, align 8              ; 2 uses
  br label %bb.ec

bb.ec:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i342, %.lr.ph.i.i.i336
  %.012.i.i.i337 = phi ptr [ %i.uw, %.lr.ph.i.i.i336 ], [ %.1.i.i.i347, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i342 ] ; 4 uses
  %.0811.i.i.i338 = phi ptr [ %i.ux, %.lr.ph.i.i.i336 ], [ %.19.i.i.i344, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i342 ]
  %i.va = getelementptr inbounds nuw i8, ptr %.012.i.i.i337, i64 40
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i339 = call i64 @llvm.umin.i64(i64 %i.uy, i64 %i.vb) ; 2 uses
  %i.vc = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i339, 0
  br i1 %i.vc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i360, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i340

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i340: ; preds = %bb.ec
  %i.vd = getelementptr inbounds nuw i8, ptr %.012.i.i.i337, i64 32
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !21
  %i.vf = call i32 @memcmp(ptr noundef %i.ve, ptr noundef %i.uz, i64 noundef %.sroa.speculated.i.i.i.i.i.i339) #22 ; 2 uses
  %.not.i.i.i.i.i.i341 = icmp eq i32 %i.vf, 0
  br i1 %.not.i.i.i.i.i.i341, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i360, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i342

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i360: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i340, %bb.ec
  %i.vg = sub i64 %i.vb, %i.uy
  %spec.select7.i.i.i.i.i.i.i361 = call i64 @llvm.smax.i64(i64 %i.vg, i64 -2147483648)
  %.08.i.i.i.i.i.i.i362 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i361, i64 2147483647)
  %.0.i6.i.i.i.i.i.i363 = trunc nsw i64 %.08.i.i.i.i.i.i.i362 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i342

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i342: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i360, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i340
  %.0.i.i.i.i.i.i343 = phi i32 [ %i.vf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i340 ], [ %.0.i6.i.i.i.i.i.i363, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i360 ]
  %i.vh = icmp slt i32 %.0.i.i.i.i.i.i343, 0      ; 2 uses
  %.19.i.i.i344 = select i1 %i.vh, ptr %.0811.i.i.i338, ptr %.012.i.i.i337 ; 4 uses
  %.1.in.v.i.i.i345 = select i1 %i.vh, i64 24, i64 16
  %.1.in.i.i.i346 = getelementptr inbounds nuw i8, ptr %.012.i.i.i337, i64 %.1.in.v.i.i.i345
  %.1.i.i.i347 = load ptr, ptr %.1.in.i.i.i346, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i348 = icmp eq ptr %.1.i.i.i347, null
  br i1 %.not.i.i.i348, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17cmCPackIFWPackageESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i349, label %bb.ec, !llvm.loop !262

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17cmCPackIFWPackageESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i349: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i342
  %i.vi = icmp eq ptr %.19.i.i.i344, %i.ux
  br i1 %i.vi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit366, label %bb.ed

bb.ed:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17cmCPackIFWPackageESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i349
  %i.vj = getelementptr inbounds nuw i8, ptr %.19.i.i.i344, i64 40
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated.i.i.i.i.i350 = call i64 @llvm.umin.i64(i64 %i.vk, i64 %i.uy) ; 2 uses
  %i.vl = icmp eq i64 %.sroa.speculated.i.i.i.i.i350, 0
  br i1 %i.vl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i356, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i351

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i351: ; preds = %bb.ed
  %i.vm = getelementptr inbounds nuw i8, ptr %.19.i.i.i344, i64 32
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !21
  %i.vo = call i32 @memcmp(ptr noundef %i.uz, ptr noundef %i.vn, i64 noundef %.sroa.speculated.i.i.i.i.i350) #22 ; 2 uses
  %.not.i.i.i.i.i352 = icmp eq i32 %i.vo, 0
  br i1 %.not.i.i.i.i.i352, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i356, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmCPackIFWPackageSt4lessIS5_ESaISt4pairIKS5_S6_EEE5countERSA_.exit364

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i356: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i351, %bb.ed
  %i.vp = sub i64 %i.uy, %i.vk
  %spec.select7.i.i.i.i.i.i357 = call i64 @llvm.smax.i64(i64 %i.vp, i64 -2147483648)
  %.08.i.i.i.i.i.i358 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i357, i64 2147483647)
  %.0.i6.i.i.i.i.i359 = trunc nsw i64 %.08.i.i.i.i.i.i358 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmCPackIFWPackageSt4lessIS5_ESaISt4pairIKS5_S6_EEE5countERSA_.exit364

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmCPackIFWPackageSt4lessIS5_ESaISt4pairIKS5_S6_EEE5countERSA_.exit364: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i351, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i356
  %.0.i.i.i.i.i354 = phi i32 [ %i.vo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i351 ], [ %.0.i6.i.i.i.i.i359, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i356 ]
  %27 = icmp sgt i32 %.0.i.i.i.i.i354, -1
  br i1 %27, label %bb.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit366

bb.ee:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmCPackIFWPackageSt4lessIS5_ESaISt4pairIKS5_S6_EEE5countERSA_.exit364
  %i.vq = invoke noundef nonnull align 8 dereferenceable(768) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmCPackIFWPackageSt4lessIS5_ESaISt4pairIKS5_S6_EEEixERSA_(ptr noundef nonnull align 8 dereferenceable(48) %i.uu, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.ef unwind label %bb.ep

bb.ef:                                            ; preds = %bb.ee
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 168
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.vr)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit366_crit_edge unwind label %bb.ep

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit366_crit_edge: ; preds = %bb.ef
  %.pre710 = load ptr, ptr %0, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit366

bb.eg:                                            ; preds = %bb.ea
  %i.vs = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit366: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit366_crit_edge, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17cmCPackIFWPackageESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i349, %bb.eb, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmCPackIFWPackageSt4lessIS5_ESaISt4pairIKS5_S6_EEE5countERSA_.exit364
  %i.vt = phi ptr [ %.pre710, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit366_crit_edge ], [ %i.ut, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_17cmCPackIFWPackageESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i349 ], [ %i.ut, %bb.eb ], [ %i.ut, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmCPackIFWPackageSt4lessIS5_ESaISt4pairIKS5_S6_EEE5countERSA_.exit364 ] ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 2024
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 2040
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !31 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 2032 ; 2 uses
  %.not10.i.i.i367 = icmp eq ptr %i.vw, null
  br i1 %.not10.i.i.i367, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmCPackIFWPackage16DependenceStructESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit396, label %.lr.ph.i.i.i368

.lr.ph.i.i.i368:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit366
  %i.vy = load i64, ptr %i.tv, align 8, !tbaa !19 ; 4 uses
  %i.vz = load ptr, ptr %16, align 8              ; 2 uses
  br label %bb.eh

bb.eh:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i374, %.lr.ph.i.i.i368
  %.012.i.i.i369 = phi ptr [ %i.vw, %.lr.ph.i.i.i368 ], [ %.1.i.i.i379, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i374 ] ; 4 uses
  %.0811.i.i.i370 = phi ptr [ %i.vx, %.lr.ph.i.i.i368 ], [ %.19.i.i.i376, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i374 ]
  %i.wa = getelementptr inbounds nuw i8, ptr %.012.i.i.i369, i64 40
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i371 = call i64 @llvm.umin.i64(i64 %i.vy, i64 %i.wb) ; 2 uses
  %i.wc = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i371, 0
  br i1 %i.wc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i392, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i372

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i372: ; preds = %bb.eh
  %i.wd = getelementptr inbounds nuw i8, ptr %.012.i.i.i369, i64 32
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !21
  %i.wf = call i32 @memcmp(ptr noundef %i.we, ptr noundef %i.vz, i64 noundef %.sroa.speculated.i.i.i.i.i.i371) #22 ; 2 uses
  %.not.i.i.i.i.i.i373 = icmp eq i32 %i.wf, 0
  br i1 %.not.i.i.i.i.i.i373, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i392, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i374

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i392: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i372, %bb.eh
  %i.wg = sub i64 %i.wb, %i.vy
  %spec.select7.i.i.i.i.i.i.i393 = call i64 @llvm.smax.i64(i64 %i.wg, i64 -2147483648)
  %.08.i.i.i.i.i.i.i394 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i393, i64 2147483647)
  %.0.i6.i.i.i.i.i.i395 = trunc nsw i64 %.08.i.i.i.i.i.i.i394 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i374

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i374: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i392, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i372
  %.0.i.i.i.i.i.i375 = phi i32 [ %i.wf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i372 ], [ %.0.i6.i.i.i.i.i.i395, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i392 ]
  %i.wh = icmp slt i32 %.0.i.i.i.i.i.i375, 0      ; 2 uses
  %.19.i.i.i376 = select i1 %i.wh, ptr %.0811.i.i.i370, ptr %.012.i.i.i369 ; 4 uses
  %.1.in.v.i.i.i377 = select i1 %i.wh, i64 24, i64 16
  %.1.in.i.i.i378 = getelementptr inbounds nuw i8, ptr %.012.i.i.i369, i64 %.1.in.v.i.i.i377
  %.1.i.i.i379 = load ptr, ptr %.1.in.i.i.i378, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i380 = icmp eq ptr %.1.i.i.i379, null
  br i1 %.not.i.i.i380, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N17cmCPackIFWPackage16DependenceStructEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i381, label %bb.eh, !llvm.loop !263

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N17cmCPackIFWPackage16DependenceStructEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i381: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i374
  %i.wi = icmp eq ptr %.19.i.i.i376, %i.vx
  br i1 %i.wi, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmCPackIFWPackage16DependenceStructESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit396, label %bb.ei

bb.ei:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N17cmCPackIFWPackage16DependenceStructEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i381
  %i.wj = getelementptr inbounds nuw i8, ptr %.19.i.i.i376, i64 40
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated.i.i.i.i.i382 = call i64 @llvm.umin.i64(i64 %i.wk, i64 %i.vy) ; 2 uses
  %i.wl = icmp eq i64 %.sroa.speculated.i.i.i.i.i382, 0
  br i1 %i.wl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i388, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i383

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i383: ; preds = %bb.ei
  %i.wm = getelementptr inbounds nuw i8, ptr %.19.i.i.i376, i64 32
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !21
  %i.wo = call i32 @memcmp(ptr noundef %i.vz, ptr noundef %i.wn, i64 noundef %.sroa.speculated.i.i.i.i.i382) #22 ; 2 uses
  %.not.i.i.i.i.i384 = icmp eq i32 %i.wo, 0
  br i1 %.not.i.i.i.i.i384, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i388, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i385

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i388: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i383, %bb.ei
  %i.wp = sub i64 %i.vy, %i.wk
  %spec.select7.i.i.i.i.i.i389 = call i64 @llvm.smax.i64(i64 %i.wp, i64 -2147483648)
  %.08.i.i.i.i.i.i390 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i389, i64 2147483647)
  %.0.i6.i.i.i.i.i391 = trunc nsw i64 %.08.i.i.i.i.i.i390 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i385

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i385: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i388, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i383
  %.0.i.i.i.i.i386 = phi i32 [ %i.wo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i383 ], [ %.0.i6.i.i.i.i.i391, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i388 ]
  %28 = icmp sgt i32 %.0.i.i.i.i.i386, -1
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmCPackIFWPackage16DependenceStructESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit396

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmCPackIFWPackage16DependenceStructESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit396: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i385, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N17cmCPackIFWPackage16DependenceStructEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i381, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit366
  %.sroa.0.0.i.i387 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit366 ], [ false, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N17cmCPackIFWPackage16DependenceStructEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i381 ], [ %28, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i385 ]
  %i.wq = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmCPackIFWPackage16DependenceStructESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.vu, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.ej unwind label %bb.ep     ; 7 uses

bb.ej:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmCPackIFWPackage16DependenceStructESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit396
  br i1 %.sroa.0.0.i.i387, label %_ZN17cmCPackIFWPackage16DependenceStructaSERKS0_.exit399, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %i.wq, ptr noundef nonnull align 8 dereferenceable(72) %16)
          to label %.noexc397 unwind label %bb.ep

.noexc397:                                        ; preds = %bb.ek
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 32
  %i.ws = load i32, ptr %i.tw, align 8, !tbaa !17
  store i32 %i.ws, ptr %i.wr, align 8, !tbaa !17
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wq, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.wt, ptr noundef nonnull align 8 dereferenceable(32) %i.tx)
          to label %_ZN17cmCPackIFWPackage16DependenceStructaSERKS0_.exit399 unwind label %bb.ep

_ZN17cmCPackIFWPackage16DependenceStructaSERKS0_.exit399: ; preds = %.noexc397, %bb.ej
  %.02022.i.i.i400 = load ptr, ptr %i.ty, align 8, !tbaa !64 ; 2 uses
  %.not23.i.i.i401 = icmp eq ptr %.02022.i.i.i400, null
  br i1 %.not23.i.i.i401, label %._crit_edge.thread.i.i.i418, label %.lr.ph.i.i.i402

.lr.ph.i.i.i402:                                  ; preds = %_ZN17cmCPackIFWPackage16DependenceStructaSERKS0_.exit399, %.lr.ph.i.i.i402
  %.02024.i.i.i403 = phi ptr [ %.020.i.i.i406, %.lr.ph.i.i.i402 ], [ %.02022.i.i.i400, %_ZN17cmCPackIFWPackage16DependenceStructaSERKS0_.exit399 ] ; 4 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.02024.i.i.i403, i64 32
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !120 ; 2 uses
  %i.ww = icmp ult ptr %i.wq, %i.wv               ; 2 uses
  %.in.v.i.i.i404 = select i1 %i.ww, i64 16, i64 24
  %.in.i.i.i405 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i403, i64 %.in.v.i.i.i404
  %.020.i.i.i406 = load ptr, ptr %.in.i.i.i405, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i407 = icmp eq ptr %.020.i.i.i406, null
  br i1 %.not.i.i.i407, label %._crit_edge.i.i.i408, label %.lr.ph.i.i.i402, !llvm.loop !264

._crit_edge.i.i.i408:                             ; preds = %.lr.ph.i.i.i402
  br i1 %i.ww, label %._crit_edge.thread.i.i.i418, label %bb.em

._crit_edge.thread.i.i.i418:                      ; preds = %._crit_edge.i.i.i408, %_ZN17cmCPackIFWPackage16DependenceStructaSERKS0_.exit399
  %.019.lcssa29.i.i.i419 = phi ptr [ %.02024.i.i.i403, %._crit_edge.i.i.i408 ], [ %i.tz, %_ZN17cmCPackIFWPackage16DependenceStructaSERKS0_.exit399 ] ; 4 uses
  %i.wx = load ptr, ptr %i.ua, align 8, !tbaa !32
  %i.wy = icmp eq ptr %.019.lcssa29.i.i.i419, %i.wx
  br i1 %i.wy, label %select.unfold.i.i415, label %bb.el

bb.el:                                            ; preds = %._crit_edge.thread.i.i.i418
  %i.wz = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i419) #26
  %.phi.trans.insert.i.i420 = getelementptr inbounds nuw i8, ptr %i.wz, i64 32
  %.pre.i.i421 = load ptr, ptr %.phi.trans.insert.i.i420, align 8, !tbaa !120
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %._crit_edge.i.i.i408
  %i.xa = phi ptr [ %.pre.i.i421, %bb.el ], [ %i.wv, %._crit_edge.i.i.i408 ]
  %.019.lcssa28.i.i.i409 = phi ptr [ %.019.lcssa29.i.i.i419, %bb.el ], [ %.02024.i.i.i403, %._crit_edge.i.i.i408 ]
  %i.xb = icmp ult ptr %i.xa, %i.wq
  br i1 %i.xb, label %select.unfold.i.i415, label %bb.eo

select.unfold.i.i415:                             ; preds = %bb.em, %._crit_edge.thread.i.i.i418
  %.sroa.4.0.i.ph.i.i416 = phi ptr [ %.019.lcssa29.i.i.i419, %._crit_edge.thread.i.i.i418 ], [ %.019.lcssa28.i.i.i409, %bb.em ] ; 3 uses
  %i.xc = icmp eq ptr %.sroa.4.0.i.ph.i.i416, %i.tz
  br i1 %i.xc, label %_ZNSt8_Rb_treeIPN17cmCPackIFWPackage16DependenceStructES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i417, label %bb.en

bb.en:                                            ; preds = %select.unfold.i.i415
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i416, i64 32
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !120
  %i.xf = icmp ult ptr %i.wq, %i.xe
  br label %_ZNSt8_Rb_treeIPN17cmCPackIFWPackage16DependenceStructES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i417

_ZNSt8_Rb_treeIPN17cmCPackIFWPackage16DependenceStructES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i417: ; preds = %bb.en, %select.unfold.i.i415
  %i.xg = phi i1 [ %i.xf, %bb.en ], [ true, %select.unfold.i.i415 ]
  %i.xh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %.noexc423 unwind label %bb.ep ; 2 uses

.noexc423:                                        ; preds = %_ZNSt8_Rb_treeIPN17cmCPackIFWPackage16DependenceStructES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i417
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 32
  store ptr %i.wq, ptr %i.xi, align 8, !tbaa !120
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.xg, ptr noundef nonnull %i.xh, ptr noundef nonnull %.sroa.4.0.i.ph.i.i416, ptr noundef nonnull align 8 dereferenceable(32) %i.tz) #22
  %i.xj = load i64, ptr %i.ub, align 8, !tbaa !34
  %i.xk = add i64 %i.xj, 1
  store i64 %i.xk, ptr %i.ub, align 8, !tbaa !34
  br label %bb.eo

bb.eo:                                            ; preds = %.noexc423, %bb.em
  %i.xl = load ptr, ptr %i.tx, align 8, !tbaa !21 ; 2 uses
  %i.xm = icmp eq ptr %i.xl, %i.uc
  br i1 %i.xm, label %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i426, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i425

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i425: ; preds = %bb.eo
  %i.xn = load i64, ptr %i.uc, align 8, !tbaa !20
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %i.xl, i64 noundef %i.xo) #23
  br label %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i426

_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i426: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i425
  %i.xp = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.xq = icmp eq ptr %i.xp, %i.ud
  br i1 %i.xq, label %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i427

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i427: ; preds = %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i426
  %i.xr = load i64, ptr %i.ud, align 8, !tbaa !20
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xs) #23
  br label %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit430

_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit430: ; preds = %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i426, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i427
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.xt = getelementptr inbounds nuw i8, ptr %.sroa.0653.0703, i64 32 ; 2 uses
  %.not695 = icmp eq ptr %i.xt, %i.tu
  br i1 %.not695, label %._crit_edge706, label %bb.ea

bb.ep:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17cmCPackIFWPackage16DependenceStructESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit396, %bb.ee, %bb.ef, %bb.ek, %.noexc397, %_ZNSt8_Rb_treeIPN17cmCPackIFWPackage16DependenceStructES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i417
  %i.xu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17cmCPackIFWPackage16DependenceStructD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %16) #22
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eg
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %i.xu, %bb.ep ], [ %i.vs, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #22
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.loopexit
  %.pn57.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn.pn, %bb.eq ], [ %.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ia

bb.es:                                            ; preds = %bb.du, %_ZN6cmListD2Ev.exit, %_ZNSt3setIPN17cmCPackIFWPackage16DependenceStructESt4lessIS2_ESaIS2_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.xv = load ptr, ptr %1, align 8, !tbaa !21, !noalias !307
  %i.xw = load i64, ptr %i.f, align 8, !tbaa !19, !noalias !307 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 10 uses
  store ptr %i.xx, ptr %17, align 8, !tbaa !18, !alias.scope !308
  %i.xy = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 8 uses
  store i64 0, ptr %i.xy, align 8, !tbaa !19, !alias.scope !308
  store i8 0, ptr %i.xx, align 8, !tbaa !20, !alias.scope !308
  %i.xz = add i64 %i.xw, 7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.xz)
          to label %bb.et unwind label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.ya = load i64, ptr %i.xy, align 8, !tbaa !19, !alias.scope !308
  %i.yb = sub i64 4611686018427387903, %i.ya
  %i.yc = icmp ult i64 %i.yb, %i.xw
  br i1 %i.yc, label %.invoke.i.i437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i434: ; preds = %bb.et
  %i.yd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %i.xv, i64 noundef %i.xw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i435 unwind label %bb.eu ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i435: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i434
  %i.ye = load i64, ptr %i.xy, align 8, !tbaa !19, !alias.scope !308
  %i.yf = add i64 %i.ye, -4611686018427387897
  %i.yg = icmp ult i64 %i.yf, 7
  br i1 %i.yg, label %.invoke.i.i437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i436

.invoke.i.i437:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i435, %bb.et
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #24
          to label %.cont.i.i438 unwind label %bb.eu

.cont.i.i438:                                     ; preds = %.invoke.i.i437
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i435
  %i.yh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.45, i64 noundef 7)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit441 unwind label %bb.eu ; 0 uses

bb.eu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i436, %.invoke.i.i437, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i434, %bb.es
  %i.yi = landingpad { ptr, i32 }
          cleanup
  %i.yj = load ptr, ptr %17, align 8, !tbaa !21, !alias.scope !308 ; 2 uses
  %i.yk = icmp eq ptr %i.yj, %i.xx
  br i1 %i.yk, label %.body439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i431

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i431: ; preds = %bb.eu
  %i.yl = load i64, ptr %i.xx, align 8, !tbaa !20, !alias.scope !308
  %i.ym = add i64 %i.yl, 1
  call void @_ZdlPvm(ptr noundef %i.yj, i64 noundef %i.ym) #23
  br label %.body439

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit441: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i436
  %i.yn = load ptr, ptr %2, align 8, !tbaa !21    ; 6 uses
  %i.yo = icmp eq ptr %i.yn, %i.c
  %i.yp = load ptr, ptr %17, align 8, !tbaa !21   ; 5 uses
  %i.yq = icmp eq ptr %i.yp, %i.xx                ; 2 uses
  br i1 %i.yo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i447, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i442

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i447: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit441
  br i1 %i.yq, label %bb.ev, label %.thread.i448

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i442: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit441
  br i1 %i.yq, label %bb.ev, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i443

bb.ev:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i442, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i447
  %i.yr = load i64, ptr %i.xy, align 8, !tbaa !19 ; 3 uses
  %i.ys = icmp ult i64 %i.yr, 16
  call void @llvm.assume(i1 %i.ys)
  switch i64 %i.yr, label %bb.ex [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i445
    i64 1, label %bb.ew
  ]

bb.ew:                                            ; preds = %bb.ev
  %i.yt = load i8, ptr %i.yp, align 1, !tbaa !20
  store i8 %i.yt, ptr %i.yn, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i445
end_hunk_1
begin_hunk_2_@_ZN17cmCPackIFWPackage19GeneratePackageFileEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651: ; preds = %_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit648, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #22
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.01114.01297, i64 32 ; 2 uses
  %.not1155 = icmp eq ptr %i.xc, %i.ts
  br i1 %.not1155, label %._crit_edge1298, label %._crit_edge.i.i638

bb.da:                                            ; preds = %.noexc646, %.noexc645, %.noexc644, %.noexc643, %.noexc642, %._crit_edge.i.i638
  %i.xd = landingpad { ptr, i32 }
          cleanup
  %i.xe = load ptr, ptr %76, align 8, !tbaa !21   ; 2 uses
  %i.xf = icmp eq ptr %i.xe, %i.wn
  br i1 %i.xf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652: ; preds = %bb.da
  %i.xg = load i64, ptr %i.wn, align 8, !tbaa !20
  %i.xh = add i64 %i.xg, 1
  call void @_ZdlPvm(ptr noundef %i.xe, i64 noundef %i.xh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #22
  br label %bb.ie

._crit_edge1295.thread:                           ; preds = %bb.cn, %._crit_edge1298
  %i.xi = load ptr, ptr %0, align 8, !tbaa !63    ; 2 uses
  %.not188 = icmp eq ptr %i.xi, null
  br i1 %.not188, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %._crit_edge1295.thread
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 2240
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !19
  %i.xl = icmp eq i64 %i.xk, 0
  br i1 %i.xl, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.xm = invoke noundef zeroext i1 @_ZNK16cmCPackIFWCommon13IsVersionLessEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.70)
          to label %bb.dd unwind label %bb.de

bb.dd:                                            ; preds = %bb.dc, %bb.db, %._crit_edge1295.thread
  %i.xn = phi i1 [ false, %bb.db ], [ false, %._crit_edge1295.thread ], [ %i.xm, %bb.dc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #22
  %i.xo = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 5 uses
  store i32 0, ptr %i.xo, align 8, !tbaa !30
  %i.xp = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  store ptr null, ptr %i.xp, align 8, !tbaa !31
  %i.xq = getelementptr inbounds nuw i8, ptr %77, i64 24 ; 2 uses
  store ptr %i.xo, ptr %i.xq, align 8, !tbaa !32
  %i.xr = getelementptr inbounds nuw i8, ptr %77, i64 32
  store ptr %i.xo, ptr %i.xr, align 8, !tbaa !33
  %i.xs = getelementptr inbounds nuw i8, ptr %77, i64 40 ; 2 uses
  store i64 0, ptr %i.xs, align 8, !tbaa !34
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !32 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %.not11561299 = icmp eq ptr %i.xu, %i.xv
  br i1 %.not11561299, label %._crit_edge1303, label %.lr.ph1302

._crit_edge1303:                                  ; preds = %bb.dg, %bb.dd
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !32 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %.not11571304 = icmp eq ptr %i.xx, %i.xy
  br i1 %.not11571304, label %._crit_edge1308, label %.lr.ph1307

.lr.ph1307:                                       ; preds = %._crit_edge1303
  %i.xz = getelementptr inbounds nuw i8, ptr %78, i64 40
  %i.ya = getelementptr inbounds nuw i8, ptr %78, i64 56 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 2 uses
  br label %bb.di

bb.de:                                            ; preds = %._crit_edge1298, %bb.dc
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

.lr.ph1302:                                       ; preds = %bb.dd, %bb.dg
  %.sroa.01109.01300 = phi ptr [ %i.yj, %bb.dg ], [ %i.xu, %bb.dd ] ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.01109.01300, i64 32
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !120 ; 2 uses
  %i.yf = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN17cmCPackIFWPackage16DependenceStructES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %77, ptr noundef nonnull align 8 dereferenceable(72) %i.ye)
          to label %.noexc655 unwind label %bb.dh ; 2 uses

.noexc655:                                        ; preds = %.lr.ph1302
  %i.yg = extractvalue { ptr, ptr } %i.yf, 1      ; 2 uses
  %.not.i.i = icmp eq ptr %i.yg, null
  br i1 %.not.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.noexc655
  %i.yh = extractvalue { ptr, ptr } %i.yf, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr %77, ptr %23, align 8, !tbaa !533
  %i.yi = invoke ptr @_ZNSt8_Rb_treeIN17cmCPackIFWPackage16DependenceStructES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %77, ptr noundef %i.yh, ptr noundef nonnull %i.yg, ptr noundef nonnull align 8 dereferenceable(72) %i.ye, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %.noexc656 unwind label %bb.dh ; 0 uses

.noexc656:                                        ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.dg

bb.dg:                                            ; preds = %.noexc656, %.noexc655
  %i.yj = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01109.01300) #26 ; 2 uses
  %.not1156 = icmp eq ptr %i.yj, %i.xv
  br i1 %.not1156, label %._crit_edge1303, label %.lr.ph1302

bb.dh:                                            ; preds = %bb.df, %.lr.ph1302
  %i.yk = landingpad { ptr, i32 }
          cleanup
  br label %bb.id

._crit_edge1308:                                  ; preds = %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit, %._crit_edge1303
  %i.yl = load i64, ptr %i.xs, align 8, !tbaa !34
  %i.ym = icmp eq i64 %i.yl, 0
  br i1 %i.ym, label %bb.ek, label %bb.dp

bb.di:                                            ; preds = %.lr.ph1307, %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit
  %.sroa.01105.01305 = phi ptr [ %i.xx, %.lr.ph1307 ], [ %i.zc, %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit ] ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.sroa.01105.01305, i64 32
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #22
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 168
  invoke void @_ZN17cmCPackIFWPackage16DependenceStructC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %78, ptr noundef nonnull align 8 dereferenceable(32) %i.yp)
          to label %bb.dj unwind label %bb.dm

bb.dj:                                            ; preds = %bb.di
  %i.yq = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN17cmCPackIFWPackage16DependenceStructES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %77, ptr noundef nonnull align 8 dereferenceable(72) %78)
          to label %.noexc662 unwind label %bb.dn ; 2 uses

.noexc662:                                        ; preds = %bb.dj
  %i.yr = extractvalue { ptr, ptr } %i.yq, 1      ; 2 uses
  %.not.i.i657 = icmp eq ptr %i.yr, null
  br i1 %.not.i.i657, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.noexc662
  %i.ys = extractvalue { ptr, ptr } %i.yq, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr %77, ptr %22, align 8, !tbaa !533
  %i.yt = invoke ptr @_ZNSt8_Rb_treeIN17cmCPackIFWPackage16DependenceStructES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %77, ptr noundef %i.ys, ptr noundef nonnull %i.yr, ptr noundef nonnull align 8 dereferenceable(72) %78, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %.noexc663 unwind label %bb.dn ; 0 uses

.noexc663:                                        ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.dl

bb.dl:                                            ; preds = %.noexc663, %.noexc662
  %i.yu = load ptr, ptr %i.xz, align 8, !tbaa !21 ; 2 uses
  %i.yv = icmp eq ptr %i.yu, %i.ya
  br i1 %i.yv, label %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i664

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i664: ; preds = %bb.dl
  %i.yw = load i64, ptr %i.ya, align 8, !tbaa !20
  %i.yx = add i64 %i.yw, 1
  call void @_ZdlPvm(ptr noundef %i.yu, i64 noundef %i.yx) #23
  br label %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i

_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i664
  %i.yy = load ptr, ptr %78, align 8, !tbaa !21   ; 2 uses
  %i.yz = icmp eq ptr %i.yy, %i.yb
  br i1 %i.yz, label %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i
  %i.za = load i64, ptr %i.yb, align 8, !tbaa !20
  %i.zb = add i64 %i.za, 1
  call void @_ZdlPvm(ptr noundef %i.yy, i64 noundef %i.zb) #23
  br label %_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit

_ZN17cmCPackIFWPackage16DependenceStructD2Ev.exit: ; preds = %_ZN17cmCPackIFWPackage13CompareStructD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #22
  %i.zc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01105.01305) #26 ; 2 uses
  %.not1157 = icmp eq ptr %i.zc, %i.xy
  br i1 %.not1157, label %._crit_edge1308, label %bb.di

bb.dm:                                            ; preds = %bb.di
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dn:                                            ; preds = %bb.dk, %bb.dj
  %i.ze = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17cmCPackIFWPackage16DependenceStructD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %78) #22
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.pn247 = phi { ptr, i32 } [ %i.ze, %bb.dn ], [ %i.zd, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #22
  br label %bb.id

bb.dp:                                            ; preds = %._crit_edge1308
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %79)
          to label %bb.dq unwind label %bb.dy

bb.dq:                                            ; preds = %bb.dp
  %i.zf = load ptr, ptr %i.xq, align 8, !tbaa !32 ; 3 uses
  br i1 %i.xn, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 32
  %i.zh = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.zg, i8 noundef signext 45, i64 noundef 0) #22
  %i.zi = icmp ne i64 %i.zh, -1
  %108 = zext i1 %i.zi to i8
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %109 = phi i8 [ 0, %bb.dq ], [ %108, %bb.dr ]   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #22
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zf, i64 32
  invoke void @_ZNK17cmCPackIFWPackage16DependenceStruct15NameWithCompareB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %80, ptr noundef nonnull align 8 dereferenceable(72) %i.zj)
          to label %bb.dt unwind label %bb.dz

bb.dt:                                            ; preds = %bb.ds
  %i.zk = load ptr, ptr %80, align 8, !tbaa !21
  %i.zl = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !19
  %i.zn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef %i.zk, i64 noundef %i.zm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ea ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.dt
  %i.zo = load ptr, ptr %80, align 8, !tbaa !21   ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.zq = icmp eq ptr %i.zo, %i.zp
  br i1 %i.zq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.zr = load i64, ptr %i.zp, align 8, !tbaa !20
  %i.zs = add i64 %i.zr, 1
  call void @_ZdlPvm(ptr noundef %i.zo, i64 noundef %i.zs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #22
  %i.zt = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.zf) #26 ; 2 uses
  %.not11581309 = icmp eq ptr %i.zt, %i.xo
  br i1 %.not11581309, label %._crit_edge.i.i682, label %.lr.ph1312

.lr.ph1312:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669
  %i.zu = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.zv = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 4 uses
  %110 = trunc nuw i8 %109 to i1
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph1312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675
  %.01541311 = phi i1 [ %110, %.lr.ph1312 ], [ %i.aaa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675 ] ; 2 uses
  %.sroa.01097.01310 = phi ptr [ %i.zt, %.lr.ph1312 ], [ %i.aak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675 ] ; 3 uses
  br i1 %i.xn, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.01097.01310, i64 32
  %i.zx = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.zw, i8 noundef signext 45, i64 noundef 0) #22
  %i.zy = icmp ne i64 %i.zx, -1
  %i.zz = or i1 %.01541311, %i.zy
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.aaa = phi i1 [ %.01541311, %bb.du ], [ %i.zz, %bb.dv ] ; 2 uses
  %i.aab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.eb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #22
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.01097.01310, i64 32
  invoke void @_ZNK17cmCPackIFWPackage16DependenceStruct15NameWithCompareB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %81, ptr noundef nonnull align 8 dereferenceable(72) %i.aac)
          to label %bb.dx unwind label %bb.ec

bb.dx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aad = load ptr, ptr %81, align 8, !tbaa !21
  %i.aae = load i64, ptr %i.zu, align 8, !tbaa !19
  %i.aaf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef %i.aad, i64 noundef %i.aae)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit672 unwind label %bb.ed ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit672: ; preds = %bb.dx
  %i.aag = load ptr, ptr %81, align 8, !tbaa !21  ; 2 uses
  %i.aah = icmp eq ptr %i.aag, %i.zv
  br i1 %i.aah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit672
  %i.aai = load i64, ptr %i.zv, align 8, !tbaa !20
  %i.aaj = add i64 %i.aai, 1
  call void @_ZdlPvm(ptr noundef %i.aag, i64 noundef %i.aaj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit672, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #22
  %i.aak = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01097.01310) #26 ; 2 uses
  %.not1158 = icmp eq ptr %i.aak, %i.xo
  br i1 %.not1158, label %._crit_edge.i.i682.loopexit, label %bb.du, !llvm.loop !455

bb.dy:                                            ; preds = %bb.dp
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.dz:                                            ; preds = %bb.ds
  %i.aam = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678

bb.ea:                                            ; preds = %bb.dt
  %i.aan = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aao = load ptr, ptr %80, align 8, !tbaa !21  ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.aaq = icmp eq ptr %i.aao, %i.aap
  br i1 %i.aaq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676: ; preds = %bb.ea
  %i.aar = load i64, ptr %i.aap, align 8, !tbaa !20
  %i.aas = add i64 %i.aar, 1
  call void @_ZdlPvm(ptr noundef %i.aao, i64 noundef %i.aas) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676, %bb.dz
  %.pn189 = phi { ptr, i32 } [ %i.aam, %bb.dz ], [ %i.aan, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676 ], [ %i.aan, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #22
  br label %bb.ei

bb.eb:                                            ; preds = %bb.dw
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ec:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aau = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681

bb.ed:                                            ; preds = %bb.dx
  %i.aav = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aaw = load ptr, ptr %81, align 8, !tbaa !21  ; 2 uses
  %i.aax = icmp eq ptr %i.aaw, %i.zv
  br i1 %i.aax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679: ; preds = %bb.ed
  %i.aay = load i64, ptr %i.zv, align 8, !tbaa !20
  %i.aaz = add i64 %i.aay, 1
  call void @_ZdlPvm(ptr noundef %i.aaw, i64 noundef %i.aaz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679, %bb.ec
  %.pn194 = phi { ptr, i32 } [ %i.aau, %bb.ec ], [ %i.aav, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679 ], [ %i.aav, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #22
  br label %bb.ei

._crit_edge.i.i682.loopexit:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675
  %111 = zext i1 %i.aaa to i8
  br label %._crit_edge.i.i682

._crit_edge.i.i682:                               ; preds = %._crit_edge.i.i682.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669
  %.0154.lcssa = phi i8 [ %109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669 ], [ %111, %._crit_edge.i.i682.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #22
  %i.aba = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 6 uses
  store ptr %i.aba, ptr %82, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aba, ptr noundef nonnull align 1 dereferenceable(12) @.str.72, i64 12, i1 false)
  %i.abb = getelementptr inbounds nuw i8, ptr %82, i64 8
  store i64 12, ptr %i.abb, align 8, !tbaa !19
  %i.abc = getelementptr inbounds nuw i8, ptr %82, i64 28
  store i8 0, ptr %i.abc, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.abd = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 7 uses
  store ptr %i.abd, ptr %83, align 8, !tbaa !18, !alias.scope !536
  %i.abe = getelementptr inbounds nuw i8, ptr %83, i64 8
  store i64 0, ptr %i.abe, align 8, !tbaa !19, !alias.scope !536
  store i8 0, ptr %i.abd, align 8, !tbaa !20, !alias.scope !536
  %i.abf = getelementptr inbounds nuw i8, ptr %79, i64 48
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !117, !noalias !536 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.abg, null
  %i.abh = getelementptr inbounds nuw i8, ptr %79, i64 32
  %i.abi = load ptr, ptr %i.abh, align 8, !noalias !536 ; 2 uses
  %i.abj = icmp ugt ptr %i.abg, %i.abi
  %.08.i.i.i = select i1 %i.abj, ptr %i.abg, ptr %i.abi ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i686 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i686, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %._crit_edge.i.i682
  %i.abk = getelementptr inbounds nuw i8, ptr %79, i64 40
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !118, !noalias !536 ; 2 uses
  %i.abm = ptrtoint ptr %.08.i.i.i to i64
  %i.abn = ptrtoint ptr %i.abl to i64
  %i.abo = sub i64 %i.abm, %i.abn
  %i.abp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %83, i64 noundef 0, i64 noundef 0, ptr noundef %i.abl, i64 noundef %i.abo)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ef ; 0 uses

bb.ef:                                            ; preds = %bb.eg, %bb.ee
  %i.abq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abr = load ptr, ptr %83, align 8, !tbaa !21, !alias.scope !536 ; 2 uses
  %i.abs = icmp eq ptr %i.abr, %i.abd
  br i1 %i.abs, label %.body689, label %.body689.sink.split

bb.eg:                                            ; preds = %._crit_edge.i.i682
  %i.abt = getelementptr inbounds nuw i8, ptr %79, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull align 8 dereferenceable(32) %i.abt)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ef

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.eg, %bb.ee
  invoke void @_ZN11cmXMLWriter12StartElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(83) %50, ptr noundef nonnull align 8 dereferenceable(32) %82)
          to label %.noexc691 unwind label %bb.eh

.noexc691:                                        ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZN11cmXMLWriter10PreContentEv(ptr noundef nonnull align 8 dereferenceable(83) %50)
          to label %.noexc692 unwind label %bb.eh

.noexc692:                                        ; preds = %.noexc691
  %i.abu = load ptr, ptr %50, align 8, !tbaa !131, !nonnull !132, !align !133
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22, !noalias !537
  invoke void @_ZN9cmXMLSafeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %20, ptr noundef nonnull align 8 dereferenceable(32) %83)
          to label %.noexc693 unwind label %bb.eh

.noexc693:                                        ; preds = %.noexc692
  %i.abv = invoke noundef nonnull align 8 dereferenceable(17) ptr @_ZN9cmXMLSafe6QuotesEb(ptr noundef nonnull align 8 dereferenceable(17) %20, i1 noundef zeroext false)
          to label %.noexc694 unwind label %bb.eh

.noexc694:                                        ; preds = %.noexc693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %i.abv, i64 24, i1 false), !tbaa.struct !512
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22, !noalias !537
  %i.abw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK9cmXMLSafe(ptr noundef nonnull align 8 dereferenceable(8) %i.abu, ptr noundef nonnull align 8 dereferenceable(17) %21)
          to label %.noexc695 unwind label %bb.eh ; 0 uses

.noexc695:                                        ; preds = %.noexc694
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  invoke void @_ZN11cmXMLWriter10EndElementEv(ptr noundef nonnull align 8 dereferenceable(83) %50)
          to label %_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit697 unwind label %bb.eh

_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit697: ; preds = %.noexc695
  %i.abx = load ptr, ptr %83, align 8, !tbaa !21  ; 2 uses
  %i.aby = icmp eq ptr %i.abx, %i.abd
  br i1 %i.aby, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698: ; preds = %_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit697
  %i.abz = load i64, ptr %i.abd, align 8, !tbaa !20
  %i.aca = add i64 %i.abz, 1
  call void @_ZdlPvm(ptr noundef %i.abx, i64 noundef %i.aca) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700: ; preds = %_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit697, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #22
  %i.acb = load ptr, ptr %82, align 8, !tbaa !21  ; 2 uses
  %i.acc = icmp eq ptr %i.acb, %i.aba
  br i1 %i.acc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700
  %i.acd = load i64, ptr %i.aba, align 8, !tbaa !20
  %i.ace = add i64 %i.acd, 1
  call void @_ZdlPvm(ptr noundef %i.acb, i64 noundef %i.ace) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #22
  %i.acf = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.acf, ptr %79, align 8, !tbaa !73
  %i.acg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ach = getelementptr i8, ptr %i.acf, i64 -24
  %i.aci = load i64, ptr %i.ach, align 8
  %i.acj = getelementptr inbounds i8, ptr %79, i64 %i.aci
  store ptr %i.acg, ptr %i.acj, align 8, !tbaa !73
  %i.ack = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ack, align 8, !tbaa !73
  %i.acl = getelementptr inbounds nuw i8, ptr %79, i64 80
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !21 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %79, i64 96 ; 2 uses
  %i.aco = icmp eq ptr %i.acm, %i.acn
  br i1 %i.aco, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703
  %i.acp = load i64, ptr %i.acn, align 8, !tbaa !20
  %i.acq = add i64 %i.acp, 1
  call void @_ZdlPvm(ptr noundef %i.acm, i64 noundef %i.acq) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ack, align 8, !tbaa !73
  %i.acr = getelementptr inbounds nuw i8, ptr %79, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.acr) #22
  %i.acs = getelementptr inbounds nuw i8, ptr %79, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.acs) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #22
  br label %bb.ek

bb.eh:                                            ; preds = %.noexc695, %.noexc694, %.noexc693, %.noexc692, %.noexc691, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.act = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acu = load ptr, ptr %83, align 8, !tbaa !21  ; 2 uses
  %i.acv = icmp eq ptr %i.acu, %i.abd
  br i1 %i.acv, label %.body689, label %.body689.sink.split

.body689.sink.split:                              ; preds = %bb.eh, %bb.ef
  %.sink1769 = phi ptr [ %i.abr, %bb.ef ], [ %i.acu, %bb.eh ]
  %.pn191.ph = phi { ptr, i32 } [ %i.abq, %bb.ef ], [ %i.act, %bb.eh ]
  %i.acw = load i64, ptr %i.abd, align 8, !tbaa !20
  %i.acx = add i64 %i.acw, 1
  call void @_ZdlPvm(ptr noundef %.sink1769, i64 noundef %i.acx) #23
  br label %.body689

.body689:                                         ; preds = %.body689.sink.split, %bb.eh, %bb.ef
  %.pn191 = phi { ptr, i32 } [ %i.abq, %bb.ef ], [ %i.act, %bb.eh ], [ %.pn191.ph, %.body689.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #22
  %i.acy = load ptr, ptr %82, align 8, !tbaa !21  ; 2 uses
  %i.acz = icmp eq ptr %i.acy, %i.aba
  br i1 %i.acz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707: ; preds = %.body689
  %i.ada = load i64, ptr %i.aba, align 8, !tbaa !20
  %i.adb = add i64 %i.ada, 1
  call void @_ZdlPvm(ptr noundef %i.acy, i64 noundef %i.adb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709: ; preds = %.body689, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i707
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #22
  br label %bb.ei

bb.ei:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681, %bb.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678
  %.pn194.pn = phi { ptr, i32 } [ %.pn194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681 ], [ %i.aat, %bb.eb ], [ %.pn191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709 ], [ %.pn189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %79) #22
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.dy
  %.pn194.pn.pn = phi { ptr, i32 } [ %.pn194.pn, %bb.ei ], [ %i.aal, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #22
  br label %bb.id

bb.ek:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %._crit_edge1308
  %.1155 = phi i8 [ 0, %._crit_edge1308 ], [ %.0154.lcssa, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #22
  %i.adc = getelementptr inbounds nuw i8, ptr %84, i64 8 ; 5 uses
  store i32 0, ptr %i.adc, align 8, !tbaa !30
  %i.add = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 2 uses
  store ptr null, ptr %i.add, align 8, !tbaa !31
  %i.ade = getelementptr inbounds nuw i8, ptr %84, i64 24 ; 2 uses
  store ptr %i.adc, ptr %i.ade, align 8, !tbaa !32
  %i.adf = getelementptr inbounds nuw i8, ptr %84, i64 32
  store ptr %i.adc, ptr %i.adf, align 8, !tbaa !33
  %i.adg = getelementptr inbounds nuw i8, ptr %84, i64 40 ; 2 uses
  store i64 0, ptr %i.adg, align 8, !tbaa !34
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !32 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %.not11591313 = icmp eq ptr %i.adi, %i.adj
  br i1 %.not11591313, label %bb.fj, label %.lr.ph1316

._crit_edge1317:                                  ; preds = %bb.em
  %.pre1352 = load i64, ptr %i.adg, align 8, !tbaa !34
  %i.adk = icmp eq i64 %.pre1352, 0
  br i1 %i.adk, label %bb.fj, label %bb.eo

.lr.ph1316:                                       ; preds = %bb.ek, %bb.em
  %.sroa.01092.01314 = phi ptr [ %i.adr, %bb.em ], [ %i.adi, %bb.ek ] ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.sroa.01092.01314, i64 32
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !120 ; 2 uses
  %i.adn = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN17cmCPackIFWPackage16DependenceStructES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %84, ptr noundef nonnull align 8 dereferenceable(72) %i.adm)
          to label %.noexc715 unwind label %bb.en ; 2 uses

.noexc715:                                        ; preds = %.lr.ph1316
  %i.ado = extractvalue { ptr, ptr } %i.adn, 1    ; 2 uses
  %.not.i.i710 = icmp eq ptr %i.ado, null
  br i1 %.not.i.i710, label %bb.em, label %bb.el

bb.el:                                            ; preds = %.noexc715
  %i.adp = extractvalue { ptr, ptr } %i.adn, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr %84, ptr %19, align 8, !tbaa !533
  %i.adq = invoke ptr @_ZNSt8_Rb_treeIN17cmCPackIFWPackage16DependenceStructES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %84, ptr noundef %i.adp, ptr noundef nonnull %i.ado, ptr noundef nonnull align 8 dereferenceable(72) %i.adm, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %.noexc716 unwind label %bb.en ; 0 uses

.noexc716:                                        ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.em

bb.em:                                            ; preds = %.noexc716, %.noexc715
  %i.adr = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01092.01314) #26 ; 2 uses
  %.not1159 = icmp eq ptr %i.adr, %i.adj
  br i1 %.not1159, label %._crit_edge1317, label %.lr.ph1316

bb.en:                                            ; preds = %bb.el, %.lr.ph1316
  %i.ads = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

bb.eo:                                            ; preds = %._crit_edge1317
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %85)
          to label %bb.ep unwind label %bb.ex

bb.ep:                                            ; preds = %bb.eo
  %i.adt = load ptr, ptr %i.ade, align 8, !tbaa !32 ; 3 uses
  br i1 %i.xn, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 32
  %i.adv = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.adu, i8 noundef signext 45, i64 noundef 0) #22
  %i.adw = icmp ne i64 %i.adv, -1
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.adx = phi i1 [ false, %bb.ep ], [ %i.adw, %bb.eq ]
  %112 = trunc nuw i8 %.1155 to i1
  %113 = or i1 %i.adx, %112                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #22
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adt, i64 32
  invoke void @_ZNK17cmCPackIFWPackage16DependenceStruct15NameWithCompareB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %86, ptr noundef nonnull align 8 dereferenceable(72) %i.ady)
          to label %bb.es unwind label %bb.ey

bb.es:                                            ; preds = %bb.er
  %i.adz = load ptr, ptr %86, align 8, !tbaa !21
  %i.aea = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.aeb = load i64, ptr %i.aea, align 8, !tbaa !19
  %i.aec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %i.adz, i64 noundef %i.aeb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit719 unwind label %bb.ez ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit719: ; preds = %bb.es
  %i.aed = load ptr, ptr %86, align 8, !tbaa !21  ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.aef = icmp eq ptr %i.aed, %i.aee
  br i1 %i.aef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit719
  %i.aeg = load i64, ptr %i.aee, align 8, !tbaa !20
  %i.aeh = add i64 %i.aeg, 1
  call void @_ZdlPvm(ptr noundef %i.aed, i64 noundef %i.aeh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit719, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #22
  %i.aei = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.adt) #26 ; 2 uses
  %.not11601318 = icmp eq ptr %i.aei, %i.adc
  br i1 %.not11601318, label %._crit_edge.i.i736, label %.lr.ph1321

.lr.ph1321:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722
  %i.aej = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.aek = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 4 uses
  br label %bb.et

bb.et:                                            ; preds = %.lr.ph1321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729
  %.21561320 = phi i1 [ %113, %.lr.ph1321 ], [ %i.aep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729 ] ; 2 uses
  %.sroa.01084.01319 = phi ptr [ %i.aei, %.lr.ph1321 ], [ %i.aez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729 ] ; 3 uses
  br i1 %i.xn, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.ael = getelementptr inbounds nuw i8, ptr %.sroa.01084.01319, i64 32
  %i.aem = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ael, i8 noundef signext 45, i64 noundef 0) #22
  %i.aen = icmp ne i64 %i.aem, -1
  %i.aeo = or i1 %.21561320, %i.aen
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.aep = phi i1 [ %.21561320, %bb.et ], [ %i.aeo, %bb.eu ] ; 2 uses
  %i.aeq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit724 unwind label %bb.fa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit724: ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #22
  %i.aer = getelementptr inbounds nuw i8, ptr %.sroa.01084.01319, i64 32
  invoke void @_ZNK17cmCPackIFWPackage16DependenceStruct15NameWithCompareB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %87, ptr noundef nonnull align 8 dereferenceable(72) %i.aer)
          to label %bb.ew unwind label %bb.fb

bb.ew:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit724
  %i.aes = load ptr, ptr %87, align 8, !tbaa !21
  %i.aet = load i64, ptr %i.aej, align 8, !tbaa !19
  %i.aeu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %i.aes, i64 noundef %i.aet)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit726 unwind label %bb.fc ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit726: ; preds = %bb.ew
  %i.aev = load ptr, ptr %87, align 8, !tbaa !21  ; 2 uses
  %i.aew = icmp eq ptr %i.aev, %i.aek
  br i1 %i.aew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i727

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i727: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit726
  %i.aex = load i64, ptr %i.aek, align 8, !tbaa !20
  %i.aey = add i64 %i.aex, 1
  call void @_ZdlPvm(ptr noundef %i.aev, i64 noundef %i.aey) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit726, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i727
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #22
  %i.aez = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01084.01319) #26 ; 2 uses
  %.not1160 = icmp eq ptr %i.aez, %i.adc
  br i1 %.not1160, label %._crit_edge.i.i736, label %bb.et, !llvm.loop !462

bb.ex:                                            ; preds = %bb.eo
  %i.afa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.ey:                                            ; preds = %bb.er
  %i.afb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732

bb.ez:                                            ; preds = %bb.es
  %i.afc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afd = load ptr, ptr %86, align 8, !tbaa !21  ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.aff = icmp eq ptr %i.afd, %i.afe
  br i1 %i.aff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730: ; preds = %bb.ez
  %i.afg = load i64, ptr %i.afe, align 8, !tbaa !20
  %i.afh = add i64 %i.afg, 1
  call void @_ZdlPvm(ptr noundef %i.afd, i64 noundef %i.afh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730, %bb.ey
  %.pn198 = phi { ptr, i32 } [ %i.afb, %bb.ey ], [ %i.afc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730 ], [ %i.afc, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #22
  br label %bb.fh

bb.fa:                                            ; preds = %bb.ev
  %i.afi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit724
  %i.afj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735

bb.fc:                                            ; preds = %bb.ew
  %i.afk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afl = load ptr, ptr %87, align 8, !tbaa !21  ; 2 uses
  %i.afm = icmp eq ptr %i.afl, %i.aek
  br i1 %i.afm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733: ; preds = %bb.fc
  %i.afn = load i64, ptr %i.aek, align 8, !tbaa !20
  %i.afo = add i64 %i.afn, 1
  call void @_ZdlPvm(ptr noundef %i.afl, i64 noundef %i.afo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733, %bb.fb
  %.pn203 = phi { ptr, i32 } [ %i.afj, %bb.fb ], [ %i.afk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733 ], [ %i.afk, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #22
  br label %bb.fh

._crit_edge.i.i736:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722
  %.2156.lcssa = phi i1 [ %113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %i.aep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729 ]
  %.2156.le = zext i1 %.2156.lcssa to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #22
  %i.afp = getelementptr inbounds nuw i8, ptr %88, i64 16 ; 6 uses
  store ptr %i.afp, ptr %88, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.afp, ptr noundef nonnull align 1 dereferenceable(12) @.str.73, i64 12, i1 false)
  %i.afq = getelementptr inbounds nuw i8, ptr %88, i64 8
  store i64 12, ptr %i.afq, align 8, !tbaa !19
  %i.afr = getelementptr inbounds nuw i8, ptr %88, i64 28
  store i8 0, ptr %i.afr, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.afs = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 7 uses
  store ptr %i.afs, ptr %89, align 8, !tbaa !18, !alias.scope !540
  %i.aft = getelementptr inbounds nuw i8, ptr %89, i64 8
  store i64 0, ptr %i.aft, align 8, !tbaa !19, !alias.scope !540
  store i8 0, ptr %i.afs, align 8, !tbaa !20, !alias.scope !540
  %i.afu = getelementptr inbounds nuw i8, ptr %85, i64 48
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !117, !noalias !540 ; 3 uses
  %.not.i.not.i.i740 = icmp eq ptr %i.afv, null
  %i.afw = getelementptr inbounds nuw i8, ptr %85, i64 32
  %i.afx = load ptr, ptr %i.afw, align 8, !noalias !540 ; 2 uses
  %i.afy = icmp ugt ptr %i.afv, %i.afx
  %.08.i.i.i741 = select i1 %i.afy, ptr %i.afv, ptr %i.afx ; 2 uses
  %.not5.i.i742 = icmp eq ptr %.08.i.i.i741, null
  %.not.i.i743 = select i1 %.not.i.not.i.i740, i1 true, i1 %.not5.i.i742
  br i1 %.not.i.i743, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %._crit_edge.i.i736
  %i.afz = getelementptr inbounds nuw i8, ptr %85, i64 40
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !118, !noalias !540 ; 2 uses
  %i.agb = ptrtoint ptr %.08.i.i.i741 to i64
  %i.agc = ptrtoint ptr %i.aga to i64
  %i.agd = sub i64 %i.agb, %i.agc
  %i.age = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %89, i64 noundef 0, i64 noundef 0, ptr noundef %i.aga, i64 noundef %i.agd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit749 unwind label %bb.fe ; 0 uses

bb.fe:                                            ; preds = %bb.ff, %bb.fd
  %i.agf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agg = load ptr, ptr %89, align 8, !tbaa !21, !alias.scope !540 ; 2 uses
  %i.agh = icmp eq ptr %i.agg, %i.afs
  br i1 %i.agh, label %.body747, label %.body747.sink.split

bb.ff:                                            ; preds = %._crit_edge.i.i736
  %i.agi = getelementptr inbounds nuw i8, ptr %85, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull align 8 dereferenceable(32) %i.agi)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit749 unwind label %bb.fe

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit749: ; preds = %bb.ff, %bb.fd
  invoke void @_ZN11cmXMLWriter12StartElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(83) %50, ptr noundef nonnull align 8 dereferenceable(32) %88)
          to label %.noexc750 unwind label %bb.fg

.noexc750:                                        ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit749
  invoke void @_ZN11cmXMLWriter10PreContentEv(ptr noundef nonnull align 8 dereferenceable(83) %50)
          to label %.noexc751 unwind label %bb.fg

.noexc751:                                        ; preds = %.noexc750
  %i.agj = load ptr, ptr %50, align 8, !tbaa !131, !nonnull !132, !align !133
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22, !noalias !541
  invoke void @_ZN9cmXMLSafeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %17, ptr noundef nonnull align 8 dereferenceable(32) %89)
          to label %.noexc752 unwind label %bb.fg

.noexc752:                                        ; preds = %.noexc751
  %i.agk = invoke noundef nonnull align 8 dereferenceable(17) ptr @_ZN9cmXMLSafe6QuotesEb(ptr noundef nonnull align 8 dereferenceable(17) %17, i1 noundef zeroext false)
          to label %.noexc753 unwind label %bb.fg

.noexc753:                                        ; preds = %.noexc752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.agk, i64 24, i1 false), !tbaa.struct !512
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22, !noalias !541
  %i.agl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK9cmXMLSafe(ptr noundef nonnull align 8 dereferenceable(8) %i.agj, ptr noundef nonnull align 8 dereferenceable(17) %18)
          to label %.noexc754 unwind label %bb.fg ; 0 uses

.noexc754:                                        ; preds = %.noexc753
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  invoke void @_ZN11cmXMLWriter10EndElementEv(ptr noundef nonnull align 8 dereferenceable(83) %50)
          to label %_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit756 unwind label %bb.fg

_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit756: ; preds = %.noexc754
  %i.agm = load ptr, ptr %89, align 8, !tbaa !21  ; 2 uses
  %i.agn = icmp eq ptr %i.agm, %i.afs
  br i1 %i.agn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757: ; preds = %_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit756
  %i.ago = load i64, ptr %i.afs, align 8, !tbaa !20
  %i.agp = add i64 %i.ago, 1
  call void @_ZdlPvm(ptr noundef %i.agm, i64 noundef %i.agp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759: ; preds = %_ZN11cmXMLWriter7ElementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS6_RKT_.exit756, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #22
  %i.agq = load ptr, ptr %88, align 8, !tbaa !21  ; 2 uses
  %i.agr = icmp eq ptr %i.agq, %i.afp
  br i1 %i.agr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759
  %i.ags = load i64, ptr %i.afp, align 8, !tbaa !20
  %i.agt = add i64 %i.ags, 1
  call void @_ZdlPvm(ptr noundef %i.agq, i64 noundef %i.agt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #22
  %i.agu = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.agu, ptr %85, align 8, !tbaa !73
  %i.agv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.agw = getelementptr i8, ptr %i.agu, i64 -24
  %i.agx = load i64, ptr %i.agw, align 8
  %i.agy = getelementptr inbounds i8, ptr %85, i64 %i.agx
  store ptr %i.agv, ptr %i.agy, align 8, !tbaa !73
  %i.agz = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.agz, align 8, !tbaa !73
  %i.aha = getelementptr inbounds nuw i8, ptr %85, i64 80
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !21 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %85, i64 96 ; 2 uses
  %i.ahd = icmp eq ptr %i.ahb, %i.ahc
  br i1 %i.ahd, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit765, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i763

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i763: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762
  %i.ahe = load i64, ptr %i.ahc, align 8, !tbaa !20
  %i.ahf = add i64 %i.ahe, 1
  call void @_ZdlPvm(ptr noundef %i.ahb, i64 noundef %i.ahf) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit765

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit765: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i763
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.agz, align 8, !tbaa !73
  %i.ahg = getelementptr inbounds nuw i8, ptr %85, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ahg) #22
  %i.ahh = getelementptr inbounds nuw i8, ptr %85, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ahh) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #22
  br label %bb.fj

bb.fg:                                            ; preds = %.noexc754, %.noexc753, %.noexc752, %.noexc751, %.noexc750, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit749
  %i.ahi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahj = load ptr, ptr %89, align 8, !tbaa !21  ; 2 uses
  %i.ahk = icmp eq ptr %i.ahj, %i.afs
  br i1 %i.ahk, label %.body747, label %.body747.sink.split

.body747.sink.split:                              ; preds = %bb.fg, %bb.fe
  %.sink1772 = phi ptr [ %i.agg, %bb.fe ], [ %i.ahj, %bb.fg ]
  %.pn200.ph = phi { ptr, i32 } [ %i.agf, %bb.fe ], [ %i.ahi, %bb.fg ]
  %i.ahl = load i64, ptr %i.afs, align 8, !tbaa !20
  %i.ahm = add i64 %i.ahl, 1
  call void @_ZdlPvm(ptr noundef %.sink1772, i64 noundef %i.ahm) #23
  br label %.body747

.body747:                                         ; preds = %.body747.sink.split, %bb.fg, %bb.fe
  %.pn200 = phi { ptr, i32 } [ %i.agf, %bb.fe ], [ %i.ahi, %bb.fg ], [ %.pn200.ph, %.body747.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #22
  %i.ahn = load ptr, ptr %88, align 8, !tbaa !21  ; 2 uses
  %i.aho = icmp eq ptr %i.ahn, %i.afp
  br i1 %i.aho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769: ; preds = %.body747
  %i.ahp = load i64, ptr %i.afp, align 8, !tbaa !20
  %i.ahq = add i64 %i.ahp, 1
  call void @_ZdlPvm(ptr noundef %i.ahn, i64 noundef %i.ahq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771: ; preds = %.body747, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #22
  br label %bb.fh

bb.fh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735, %bb.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732
  %.pn203.pn = phi { ptr, i32 } [ %.pn203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit735 ], [ %i.afi, %bb.fa ], [ %.pn200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771 ], [ %.pn198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %85) #22
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.ex
  %.pn203.pn.pn = phi { ptr, i32 } [ %.pn203.pn, %bb.fh ], [ %i.afa, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #22
  br label %bb.ic

bb.fj:                                            ; preds = %bb.ek, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit765, %._crit_edge1317
  %.3157 = phi i8 [ %.1155, %._crit_edge1317 ], [ %.2156.le, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit765 ], [ %.1155, %bb.ek ]
  %114 = trunc nuw i8 %.3157 to i1
  br i1 %114, label %bb.fk, label %bb.fz

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %90)
          to label %bb.fl unwind label %bb.ft

bb.fl:                                            ; preds = %bb.fk
  %i.ahr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef nonnull @.str.74, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit773 unwind label %bb.fu ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit773: ; preds = %bb.fl
  %i.ahs = load ptr, ptr %i.iv, align 8, !tbaa !21
  %i.aht = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ahu = load i64, ptr %i.aht, align 8, !tbaa !19
  %i.ahv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef %i.ahs, i64 noundef %i.ahu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit775 unwind label %bb.fu ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit775: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit773
  %i.ahw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, ptr noundef nonnull @.str.75, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit777 unwind label %bb.fu ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit777: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit775
  %i.ahx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, ptr noundef nonnull @.str.76, i64 noundef 60)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit779 unwind label %bb.fu ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit779: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit777
  %i.ahy = load ptr, ptr %0, align 8, !tbaa !63   ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 2232
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !21
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahy, i64 2240
  %i.aic = load i64, ptr %i.aib, align 8, !tbaa !19
  %i.aid = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ahv, ptr noundef %i.aia, i64 noundef %i.aic)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit781 unwind label %bb.fu ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit781: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit779
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !73
  %i.aif = getelementptr i8, ptr %i.aie, i64 -24
  %i.aig = load i64, ptr %i.aif, align 8
  %i.aih = getelementptr inbounds i8, ptr %i.aid, i64 %i.aig
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 240
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !89 ; 6 uses
  %.not.i.i.i1061 = icmp eq ptr %i.aij, null
  br i1 %.not.i.i.i1061, label %bb.fm, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.fm:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit781
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc1062 unwind label %bb.fu

.noexc1062:                                       ; preds = %bb.fm
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit781
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 56
  %i.ail = load i8, ptr %i.aik, align 8, !tbaa !95
  %.not.i1.i.i = icmp eq i8 %i.ail, 0
  br i1 %.not.i1.i.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aij, i64 67
  %i.ain = load i8, ptr %i.aim, align 1, !tbaa !20
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.fo:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aij)
          to label %.noexc1063 unwind label %bb.fu

.noexc1063:                                       ; preds = %bb.fo
  %i.aio = load ptr, ptr %i.aij, align 8, !tbaa !73
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 48
  %i.aiq = load ptr, ptr %i.aip, align 8
  %i.air = invoke noundef signext i8 %i.aiq(ptr noundef nonnull align 8 dereferenceable(570) %i.aij, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.fu, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc1063, %bb.fn
  %.0.i.i.i = phi i8 [ %i.ain, %bb.fn ], [ %i.air, %.noexc1063 ]
  %i.ais = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aid, i8 noundef signext %.0.i.i.i)
          to label %.noexc1065 unwind label %bb.fu

.noexc1065:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ait = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ais)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.fu ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc1065
  %i.aiu = load ptr, ptr %0, align 8, !tbaa !63   ; 2 uses
  %.not207 = icmp eq ptr %i.aiu, null
  br i1 %.not207, label %bb.fw, label %bb.fp

bb.fp:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 336
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.aix = getelementptr inbounds nuw i8, ptr %91, i64 16 ; 7 uses
  store ptr %i.aix, ptr %91, align 8, !tbaa !18, !alias.scope !544
  %i.aiy = getelementptr inbounds nuw i8, ptr %91, i64 8
  store i64 0, ptr %i.aiy, align 8, !tbaa !19, !alias.scope !544
  store i8 0, ptr %i.aix, align 8, !tbaa !20, !alias.scope !544
  %i.aiz = getelementptr inbounds nuw i8, ptr %90, i64 48
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !117, !noalias !544 ; 3 uses
  %.not.i.not.i.i783 = icmp eq ptr %i.aja, null
  %i.ajb = getelementptr inbounds nuw i8, ptr %90, i64 32
  %i.ajc = load ptr, ptr %i.ajb, align 8, !noalias !544 ; 2 uses
  %i.ajd = icmp ugt ptr %i.aja, %i.ajc
  %.08.i.i.i784 = select i1 %i.ajd, ptr %i.aja, ptr %i.ajc ; 2 uses
  %.not5.i.i785 = icmp eq ptr %.08.i.i.i784, null
  %.not.i.i786 = select i1 %.not.i.not.i.i783, i1 true, i1 %.not5.i.i785
  br i1 %.not.i.i786, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aje = getelementptr inbounds nuw i8, ptr %90, i64 40
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !118, !noalias !544 ; 2 uses
  %i.ajg = ptrtoint ptr %.08.i.i.i784 to i64
  %i.ajh = ptrtoint ptr %i.ajf to i64
  %i.aji = sub i64 %i.ajg, %i.ajh
  %i.ajj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %91, i64 noundef 0, i64 noundef 0, ptr noundef %i.ajf, i64 noundef %i.aji)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit792 unwind label %bb.fr ; 0 uses

bb.fr:                                            ; preds = %bb.fs, %bb.fq
  %i.ajk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajl = load ptr, ptr %91, align 8, !tbaa !21, !alias.scope !544 ; 2 uses
  %i.ajm = icmp eq ptr %i.ajl, %i.aix
  br i1 %i.ajm, label %.body790, label %.body790.sink.split

bb.fs:                                            ; preds = %bb.fp
  %i.ajn = getelementptr inbounds nuw i8, ptr %90, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef nonnull align 8 dereferenceable(32) %i.ajn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit792 unwind label %bb.fr

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit792: ; preds = %bb.fs, %bb.fq
  %i.ajo = load ptr, ptr %91, align 8, !tbaa !21  ; 2 uses
  %i.ajp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ajo) #26
  invoke void @_ZN10cmCPackLog3LogEiPKciS1_m(ptr noundef nonnull align 8 dereferenceable(232) %i.aiw, i32 noundef 8, ptr noundef nonnull @.str.23, i32 noundef 693, ptr noundef nonnull %i.ajo, i64 noundef %i.ajp)
          to label %_ZN10cmCPackLog3LogEiPKciS1_.exit unwind label %bb.fv

_ZN10cmCPackLog3LogEiPKciS1_.exit:                ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit792
  %i.ajq = load ptr, ptr %91, align 8, !tbaa !21  ; 2 uses
  %i.ajr = icmp eq ptr %i.ajq, %i.aix
  br i1 %i.ajr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794: ; preds = %_ZN10cmCPackLog3LogEiPKciS1_.exit
  %i.ajs = load i64, ptr %i.aix, align 8, !tbaa !20
  %i.ajt = add i64 %i.ajs, 1
  call void @_ZdlPvm(ptr noundef %i.ajq, i64 noundef %i.ajt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796: ; preds = %_ZN10cmCPackLog3LogEiPKciS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i794
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #22
  br label %bb.fw

bb.ft:                                            ; preds = %bb.fk
  %i.aju = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fu:                                            ; preds = %.noexc1065, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc1063, %bb.fo, %bb.fm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit779, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit777, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit775, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit773, %bb.fl
  %i.ajv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fv:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit792
  %i.ajw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajx = load ptr, ptr %91, align 8, !tbaa !21  ; 2 uses
  %i.ajy = icmp eq ptr %i.ajx, %i.aix
  br i1 %i.ajy, label %.body790, label %.body790.sink.split

.body790.sink.split:                              ; preds = %bb.fv, %bb.fr
  %.sink1775 = phi ptr [ %i.ajl, %bb.fr ], [ %i.ajx, %bb.fv ]
  %.pn208.ph = phi { ptr, i32 } [ %i.ajk, %bb.fr ], [ %i.ajw, %bb.fv ]
  %i.ajz = load i64, ptr %i.aix, align 8, !tbaa !20
  %i.aka = add i64 %i.ajz, 1
  call void @_ZdlPvm(ptr noundef %.sink1775, i64 noundef %i.aka) #23
  br label %.body790

.body790:                                         ; preds = %.body790.sink.split, %bb.fv, %bb.fr
  %.pn208 = phi { ptr, i32 } [ %i.ajk, %bb.fr ], [ %i.ajw, %bb.fv ], [ %.pn208.ph, %.body790.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #22
  br label %bb.fx

bb.fw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit796, %_ZNSolsEPFRSoS_E.exit
  %i.akb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.akb, ptr %90, align 8, !tbaa !73
  %i.akc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.akd = getelementptr i8, ptr %i.akb, i64 -24
  %i.ake = load i64, ptr %i.akd, align 8
  %i.akf = getelementptr inbounds i8, ptr %90, i64 %i.ake
  store ptr %i.akc, ptr %i.akf, align 8, !tbaa !73
  %i.akg = getelementptr inbounds nuw i8, ptr %90, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.akg, align 8, !tbaa !73
  %i.akh = getelementptr inbounds nuw i8, ptr %90, i64 80
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !21 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %90, i64 96 ; 2 uses
  %i.akk = icmp eq ptr %i.aki, %i.akj
  br i1 %i.akk, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit802, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i800

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i800: ; preds = %bb.fw
  %i.akl = load i64, ptr %i.akj, align 8, !tbaa !20
  %i.akm = add i64 %i.akl, 1
  call void @_ZdlPvm(ptr noundef %i.aki, i64 noundef %i.akm) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit802

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit802: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i800
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.akg, align 8, !tbaa !73
  %i.akn = getelementptr inbounds nuw i8, ptr %90, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.akn) #22
  %i.ako = getelementptr inbounds nuw i8, ptr %90, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ako) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #22
  br label %bb.fz

bb.fx:                                            ; preds = %.body790, %bb.fu
  %.pn208.pn = phi { ptr, i32 } [ %.pn208, %.body790 ], [ %i.ajv, %bb.fu ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %90) #22
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.ft
  %.pn208.pn.pn = phi { ptr, i32 } [ %.pn208.pn, %bb.fx ], [ %i.aju, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #22
  br label %bb.ic

bb.fz:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit802, %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #22
  %i.akp = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !61 ; 3 uses
  %i.aks = load ptr, ptr %i.akp, align 8, !tbaa !60 ; 3 uses
  %i.akt = ptrtoint ptr %i.akr to i64
  %i.aku = ptrtoint ptr %i.aks to i64
  %i.akv = sub i64 %i.akt, %i.aku                 ; 4 uses
  %.not.i.i.i.i803 = icmp eq ptr %i.akr, %i.aks
  br i1 %.not.i.i.i.i803, label %.noexc809, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.akw = icmp ugt i64 %i.akv, 9223372036854775776
  br i1 %i.akw, label %.noexc.i.i807, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804, !prof !523

.noexc.i.i807:                                    ; preds = %bb.ga
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc808 unwind label %bb.gd

.noexc808:                                        ; preds = %.noexc.i.i807
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804: ; preds = %bb.ga
  %i.akx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akv) #27
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804..noexc809_crit_edge unwind label %bb.gd

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804..noexc809_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804
  %.pre1353 = load ptr, ptr %i.akp, align 8, !tbaa !65
  %.pre1354 = load ptr, ptr %i.akq, align 8, !tbaa !65
  br label %.noexc809

.noexc809:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804..noexc809_crit_edge, %bb.fz
  %i.aky = phi ptr [ %i.akr, %bb.fz ], [ %.pre1354, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804..noexc809_crit_edge ]
  %i.akz = phi ptr [ %i.aks, %bb.fz ], [ %.pre1353, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804..noexc809_crit_edge ]
  %i.ala = phi ptr [ null, %bb.fz ], [ %i.akx, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804..noexc809_crit_edge ] ; 8 uses
  store ptr %i.ala, ptr %92, align 8, !tbaa !60
  %i.alb = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 3 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ala, i64 %i.akv
  %i.ald = getelementptr inbounds nuw i8, ptr %92, i64 16 ; 2 uses
  store ptr %i.alc, ptr %i.ald, align 8, !tbaa !121
  %i.ale = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.akz, ptr %i.aky, ptr noundef %i.ala)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit812 unwind label %bb.gb ; 3 uses

bb.gb:                                            ; preds = %.noexc809
  %i.alf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i805 = icmp eq ptr %i.ala, null
  br i1 %.not.i.i.i805, label %.body810, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.ala, i64 noundef %i.akv) #23
  br label %.body810

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit812: ; preds = %.noexc809
  store ptr %i.ale, ptr %i.alb, align 8, !tbaa !61
  %i.alg = ptrtoint ptr %i.ale to i64
  %i.alh = ptrtoint ptr %i.ala to i64
  %i.ali = sub i64 %i.alg, %i.alh
  %i.alj = icmp ugt i64 %i.ali, 32
  br i1 %i.alj, label %.lr.ph1324, label %._crit_edge1325

.lr.ph1324:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit812
  %i.alk = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 7 uses
  %i.all = getelementptr inbounds nuw i8, ptr %95, i64 8 ; 4 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.aln = getelementptr inbounds nuw i8, ptr %94, i64 16 ; 7 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.alp = getelementptr inbounds nuw i8, ptr %93, i64 16 ; 4 uses
  br label %bb.ge

._crit_edge1325:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit812
  %i.alq = phi ptr [ %i.ale, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit812 ], [ %i.anp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841 ] ; 2 uses
  %i.alr = phi ptr [ %i.ala, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit812 ], [ %i.and, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841 ] ; 3 uses
  %i.als = icmp eq ptr %i.alr, %i.alq
  br i1 %i.als, label %bb.gu, label %._crit_edge.i.i851

bb.gd:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i804, %.noexc.i.i807
  %i.alt = landingpad { ptr, i32 }
          cleanup
  br label %.body810

bb.ge:                                            ; preds = %.lr.ph1324, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841
  %i.alu = phi ptr [ %i.ala, %.lr.ph1324 ], [ %i.and, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841 ]
  %.01531323 = phi i64 [ 1, %.lr.ph1324 ], [ %i.ano, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #22
  %i.alv = getelementptr inbounds nuw [32 x i8], ptr %i.alu, i64 %.01531323
  invoke void @_ZN5cmsys11SystemTools15GetFilenameNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %93, ptr noundef nonnull align 8 dereferenceable(32) %i.alv)
          to label %bb.gf unwind label %bb.gl

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.alw = load ptr, ptr %i.c, align 8, !tbaa !21, !noalias !545
  %i.alx = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !545 ; 3 uses
  store ptr %i.alk, ptr %95, align 8, !tbaa !18, !alias.scope !546
  store i64 0, ptr %i.all, align 8, !tbaa !19, !alias.scope !546
  store i8 0, ptr %i.alk, align 8, !tbaa !20, !alias.scope !546
  %i.aly = add i64 %i.alx, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %95, i64 noundef %i.aly)
          to label %bb.gg unwind label %.loopexit.split-lp1169.loopexit.split-lp.loopexit.split-lp

bb.gg:                                            ; preds = %bb.gf
  %i.alz = load i64, ptr %i.all, align 8, !tbaa !19, !alias.scope !546
  %i.ama = sub i64 4611686018427387903, %i.alz
  %i.amb = icmp ult i64 %i.ama, %i.alx
  br i1 %i.amb, label %.invoke.i.i819, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i816

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i816: ; preds = %bb.gg
  %i.amc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef %i.alw, i64 noundef %i.alx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i817 unwind label %.loopexit.split-lp1169.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i817: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i816
  %i.amd = load i64, ptr %i.all, align 8, !tbaa !19, !alias.scope !546
  %i.ame = add i64 %i.amd, -4611686018427387898
  %i.amf = icmp ult i64 %i.ame, 6
  br i1 %i.amf, label %.invoke.i.i819, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i818

.invoke.i.i819:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i817, %bb.gg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #24
          to label %.cont.i.i820 unwind label %.loopexit.split-lp1169.loopexit.split-lp.loopexit.split-lp

.cont.i.i820:                                     ; preds = %.invoke.i.i819
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i818: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i817
  %i.amg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef nonnull @.str.64, i64 noundef 6)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit823 unwind label %.loopexit.split-lp1169.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp1169.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i818, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i816, %bb.gf, %.invoke.i.i819
  %lpad.loopexit.split-lp1790 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amh = load ptr, ptr %95, align 8, !tbaa !21, !alias.scope !546 ; 2 uses
  %i.ami = icmp eq ptr %i.amh, %i.alk
  br i1 %i.ami, label %.body821, label %.body821.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit823: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i818
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.amj = load i64, ptr %i.alm, align 8, !tbaa !19, !noalias !547 ; 2 uses
  %i.amk = load i64, ptr %i.all, align 8, !tbaa !19, !noalias !547
  %i.aml = sub i64 4611686018427387903, %i.amk
  %i.amm = icmp ult i64 %i.aml, %i.amj
  br i1 %i.amm, label %bb.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i824

bb.gh:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit823
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #24
          to label %.noexc828 unwind label %.loopexit.split-lp1174.loopexit.split-lp.loopexit.split-lp

.noexc828:                                        ; preds = %bb.gh
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i824: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit823
  %i.amn = load ptr, ptr %93, align 8, !tbaa !21, !noalias !547
  %i.amo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef %i.amn, i64 noundef %i.amj)
          to label %.noexc829 unwind label %.loopexit.split-lp1174.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc829:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i824
  store ptr %i.aln, ptr %94, align 8, !tbaa !18, !alias.scope !547
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !21 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amo, i64 16 ; 5 uses
  %i.amr = icmp eq ptr %i.amp, %i.amq
  br i1 %i.amr, label %bb.gi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825

bb.gi:                                            ; preds = %.noexc829
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  %i.amt = load i64, ptr %i.ams, align 8, !tbaa !19 ; 3 uses
  %i.amu = icmp ult i64 %i.amt, 16
  call void @llvm.assume(i1 %i.amu)
  %i.amv = add nuw nsw i64 %i.amt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aln, ptr noundef nonnull align 8 dereferenceable(1) %i.amq, i64 %i.amv, i1 false)
  br label %bb.gj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825: ; preds = %.noexc829
  store ptr %i.amp, ptr %94, align 8, !tbaa !21, !alias.scope !547
  %i.amw = load i64, ptr %i.amq, align 8, !tbaa !20
  store i64 %i.amw, ptr %i.aln, align 8, !tbaa !20, !alias.scope !547
  %.phi.trans.insert.i826 = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  %.pre.i827 = load i64, ptr %.phi.trans.insert.i826, align 8, !tbaa !19
  br label %bb.gj

bb.gj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825, %bb.gi
  %i.amx = phi i64 [ %i.amt, %bb.gi ], [ %.pre.i827, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i825 ]
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  store i64 %i.amx, ptr %i.alo, align 8, !tbaa !19, !alias.scope !547
  store ptr %i.amq, ptr %i.amo, align 8, !tbaa !21
  store i64 0, ptr %i.amy, align 8, !tbaa !19
  store i8 0, ptr %i.amq, align 8, !tbaa !20
  %i.amz = load ptr, ptr %95, align 8, !tbaa !21  ; 2 uses
  %i.ana = icmp eq ptr %i.amz, %i.alk
  br i1 %i.ana, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit833, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i831

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i831: ; preds = %bb.gj
  %i.anb = load i64, ptr %i.alk, align 8, !tbaa !20
  %i.anc = add i64 %i.anb, 1
  call void @_ZdlPvm(ptr noundef %i.amz, i64 noundef %i.anc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit833

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit833: ; preds = %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i831
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #22
  %i.and = load ptr, ptr %92, align 8, !tbaa !60  ; 4 uses
end_hunk_2
