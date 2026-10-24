Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/type?download=true
inline.NumInlined: 11292
inline.NumDeleted: 4276
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_110MergeTypesESt10shared_ptrINS_8DataTypeEES3_RKNS_5Field12MergeOptionsE:bb.a

bb.go:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit38
  %i.th = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %65) #38
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %64) #38
  br label %bb.mv

bb.gp:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit45
  %i.ti = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !135, !noalias !1228 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !151, !noalias !1228
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ti, i8 0, i64 16, i1 false)
  store ptr %i.tj, ptr %62, align 8, !tbaa !214
  %i.tm = load ptr, ptr %i.rh, align 8, !tbaa !151 ; 8 uses
  store ptr %i.tl, ptr %i.rh, align 8, !tbaa !151
  %.not.i.i.i.i46 = icmp eq ptr %i.tm, null
  br i1 %.not.i.i.i.i46, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8 ; 4 uses
  %i.to = load atomic i64, ptr %i.tn acquire, align 8 ; 2 uses
  %i.tp = icmp eq i64 %i.to, 4294967297
  %i.tq = trunc i64 %i.to to i32                  ; 2 uses
  br i1 %i.tp, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  store i32 0, ptr %i.tn, align 8, !tbaa !153
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tm, i64 12
  store i32 0, ptr %i.tr, align 4, !tbaa !154
  %i.ts = load ptr, ptr %i.tm, align 8, !tbaa !131
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8
  call void %i.tu(ptr noundef nonnull align 8 dereferenceable(16) %i.tm) #38, !inline_history !5
  %i.tv = load ptr, ptr %i.tm, align 8, !tbaa !131
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 24
  %i.tx = load ptr, ptr %i.tw, align 8
  call void %i.tx(ptr noundef nonnull align 8 dereferenceable(16) %i.tm) #38, !inline_history !5
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51thread-pre-split

bb.gs:                                            ; preds = %bb.gq
  %i.ty = load i8, ptr @__libc_single_threaded, align 1, !tbaa !113
  %.not.i.i.i.i.i = icmp eq i8 %i.ty, 0
  br i1 %.not.i.i.i.i.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.tz = add nsw i32 %i.tq, -1
  store i32 %i.tz, ptr %i.tn, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.gu:                                            ; preds = %bb.gs
  %i.ua = atomicrmw volatile add ptr %i.tn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.gu, %bb.gt
  %.0.i.i.i.i.i.i = phi i32 [ %i.tq, %bb.gt ], [ %i.ua, %bb.gu ]
  %i.ub = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ub, label %bb.gv, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51thread-pre-split, !prof !132

bb.gv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tm) #38
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51thread-pre-split

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51thread-pre-split: ; preds = %bb.gr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.gv
  %.pr181 = load ptr, ptr %62, align 8, !tbaa !135
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51thread-pre-split, %bb.gp
  %i.uc = phi ptr [ %.pr181, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51thread-pre-split ], [ %i.tj, %bb.gp ] ; 2 uses
  %.not192 = icmp eq ptr %i.uc, null
  br i1 %.not192, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51
  store ptr null, ptr %0, align 8, !tbaa !116
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.uc, ptr %i.ud, align 8, !tbaa !135
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.uf = load ptr, ptr %i.rh, align 8, !tbaa !151
  store ptr null, ptr %i.rh, align 8, !tbaa !151
  store ptr %i.uf, ptr %i.ue, align 8, !tbaa !151
  store ptr null, ptr %62, align 8, !tbaa !135
  br label %bb.ml

bb.gx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #38
  %i.ug = getelementptr inbounds nuw i8, ptr %3, i64 7
  %.val35 = load i8, ptr %i.ug, align 1, !tbaa !177, !range !128, !noundef !129
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.uh = trunc nuw i8 %.val35 to i1
  br i1 %i.uh, label %bb.gy, label %.thread11.i

bb.gy:                                            ; preds = %bb.gx
  %i.ui = load ptr, ptr %2, align 8, !tbaa !135, !noalias !1229 ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 40
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !150, !noalias !1229 ; 4 uses
  %i.ul = icmp eq i32 %i.uk, 15
  %i.um = load ptr, ptr %1, align 8, !tbaa !135, !noalias !1229 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 40
  %i.uo = load i32, ptr %i.un, align 8, !tbaa !150, !noalias !1229 ; 6 uses
  br i1 %i.ul, label %bb.gz, label %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i

bb.gz:                                            ; preds = %bb.gy
  switch i32 %i.uo, label %.thread.i [
    i32 14, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i55
    i32 35, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i55
    i32 13, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i55
    i32 34, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i55
    i32 15, label %.thread13.i
  ]

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i55: ; preds = %bb.gz, %bb.gz, %bb.gz, %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #38, !noalias !1229
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_110MakeBinaryERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %40, i32 %i.uo)
          to label %.noexc unwind label %bb.hu

.noexc:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i55
  store ptr null, ptr %66, align 8, !tbaa !116, !alias.scope !1229
  %i.up = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.uq = load <2 x ptr>, ptr %40, align 16, !tbaa !166, !noalias !1229
  store <2 x ptr> %i.uq, ptr %i.up, align 8, !tbaa !166, !alias.scope !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #38, !noalias !1229
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i: ; preds = %bb.gy
  %i.ur = icmp eq i32 %i.uo, 15
  br i1 %i.ur, label %bb.ha, label %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit33.i

bb.ha:                                            ; preds = %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i
  switch i32 %i.uk, label %.thread11.i [
    i32 14, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i
    i32 35, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i
    i32 13, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i
    i32 34, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i
  ]

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i: ; preds = %bb.ha, %bb.ha, %bb.ha, %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #38, !noalias !1229
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_110MakeBinaryERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %41, i32 %i.uk)
          to label %.noexc56 unwind label %bb.hu

.noexc56:                                         ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i
  store ptr null, ptr %66, align 8, !tbaa !116, !alias.scope !1229
  %i.us = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.ut = load <2 x ptr>, ptr %41, align 16, !tbaa !166, !noalias !1229
  store <2 x ptr> %i.ut, ptr %i.us, align 8, !tbaa !166, !alias.scope !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38, !noalias !1229
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

.thread13.i:                                      ; preds = %bb.gz
  %i.uu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6binaryEv()
          to label %.noexc57 unwind label %bb.hu  ; 0 uses

.noexc57:                                         ; preds = %.thread13.i
  store ptr null, ptr %66, align 8, !tbaa !116, !alias.scope !1229
  %i.uv = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.uw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow6binaryEvE6result, i64 8), align 8, !tbaa !151, !noalias !1229 ; 2 uses
  %i.ux = load <2 x ptr>, ptr @_ZZN5arrow6binaryEvE6result, align 16, !tbaa !166, !noalias !1229
  store <2 x ptr> %i.ux, ptr %i.uv, align 8, !tbaa !166, !alias.scope !1229
  %.not.i.i.i.i.i.i.i53 = icmp eq ptr %i.uw, null
  br i1 %.not.i.i.i.i.i.i.i53, label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split, label %bb.hb

bb.hb:                                            ; preds = %.noexc57
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 8 ; 3 uses
  %i.uz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !113, !noalias !1229
  %.not.i.i.i.i.i.i.i.i54 = icmp eq i8 %i.uz, 0
  br i1 %.not.i.i.i.i.i.i.i.i54, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.va = load i32, ptr %i.uy, align 4, !tbaa !81, !noalias !1229
  %i.vb = add nsw i32 %i.va, 1
  store i32 %i.vb, ptr %i.uy, align 4, !tbaa !81, !noalias !1229
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.hd:                                            ; preds = %bb.hb
  %i.vc = atomicrmw volatile add ptr %i.uy, i32 1 acq_rel, align 4, !noalias !1229 ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit33.i: ; preds = %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i
  %i.vd = and i32 %i.uk, -2
  %switch22.i = icmp eq i32 %i.vd, 34
  %.off.i = add i32 %i.uo, -13
  %switch.i = icmp ult i32 %.off.i, 2
  %or.cond.i52.a = select i1 %switch22.i, i1 %switch.i, i1 false
  br i1 %or.cond.i52.a, label %bb.he, label %.thread.i

bb.he:                                            ; preds = %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit33.i
  store ptr %i.ui, ptr %1, align 8, !tbaa !214, !noalias !1229
  store ptr %i.um, ptr %2, align 8, !tbaa !214, !noalias !1229
  %i.ve = load ptr, ptr %i.rr, align 8, !tbaa !151, !noalias !1229
  %i.vf = load ptr, ptr %i.rj, align 8, !tbaa !151, !noalias !1229
  store ptr %i.vf, ptr %i.rr, align 8, !tbaa !151, !noalias !1229
  store ptr %i.ve, ptr %i.rj, align 8, !tbaa !151, !noalias !1229
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !135, !noalias !1229
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %.pre14.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !150, !noalias !1229
  br label %.thread.i

.thread.i:                                        ; preds = %bb.he, %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit33.i, %bb.gz
  %i.vg = phi ptr [ %i.ui, %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit33.i ], [ %i.ui, %bb.gz ], [ %i.um, %bb.he ] ; 2 uses
  %i.vh = phi i32 [ %i.uo, %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit33.i ], [ %i.uo, %bb.gz ], [ %.pre14.i, %bb.he ] ; 8 uses
  %switch.selectcmp.case2.i.i = icmp eq i32 %i.vh, 34
  switch i32 %i.vh, label %bb.hg [
    i32 34, label %bb.hf
    i32 13, label %bb.hf
  ]

bb.hf:                                            ; preds = %.thread.i, %.thread.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 40
  %i.vj = load i32, ptr %i.vi, align 8, !tbaa !150, !noalias !1229 ; 4 uses
  switch i32 %i.vj, label %69 [
    i32 35, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.i
    i32 14, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.i
  ]

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.i: ; preds = %bb.hf, %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #38, !noalias !1229
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_110MakeBinaryERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %42, i32 %i.vh)
          to label %.noexc58 unwind label %bb.hu

.noexc58:                                         ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.i
  store ptr null, ptr %66, align 8, !tbaa !116, !alias.scope !1229
  %i.vk = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.vl = load <2 x ptr>, ptr %42, align 16, !tbaa !166, !noalias !1229
  store <2 x ptr> %i.vl, ptr %i.vk, align 8, !tbaa !166, !alias.scope !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38, !noalias !1229
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

69:                                               ; preds = %bb.hf
  switch i32 %i.vh, label %bb.hj [
    i32 14, label %bb.hh
    i32 13, label %bb.hi
  ]

bb.hg:                                            ; preds = %.thread.i
  %switch.selectcmp.case1.i479.i = icmp eq i32 %i.vh, 14 ; 2 uses
  %switch.selectcmp.case2.i4810.i = icmp eq i32 %i.vh, 35 ; 2 uses
  switch i32 %i.vh, label %.thread11.i [
    i32 35, label %bb.hh
    i32 14, label %bb.hh
  ]

bb.hh:                                            ; preds = %bb.hg, %bb.hg, %69
  %switch.selectcmp.case2.i4817.i = phi i1 [ %switch.selectcmp.case2.i4810.i, %bb.hg ], [ false, %69 ], [ %switch.selectcmp.case2.i4810.i, %bb.hg ]
  %switch.selectcmp.case1.i4714.i = phi i1 [ %switch.selectcmp.case1.i479.i, %bb.hg ], [ true, %69 ], [ %switch.selectcmp.case1.i479.i, %bb.hg ]
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vg, i64 40
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !150, !noalias !1229 ; 2 uses
  switch i32 %i.vn, label %bb.ho [
    i32 34, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i
    i32 13, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i
  ]

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i: ; preds = %bb.hh, %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #38, !noalias !1229
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_110MakeBinaryERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %43, i32 %i.vh)
          to label %.noexc59 unwind label %bb.hu

.noexc59:                                         ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i
  store ptr null, ptr %66, align 8, !tbaa !116, !alias.scope !1229
  %i.vo = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.vp = load <2 x ptr>, ptr %43, align 16, !tbaa !166, !noalias !1229
  store <2 x ptr> %i.vp, ptr %i.vo, align 8, !tbaa !166, !alias.scope !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38, !noalias !1229
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.hi:                                            ; preds = %69
  %i.vq = icmp eq i32 %i.vj, 34
  br i1 %i.vq, label %bb.hk, label %.thread11.i

bb.hj:                                            ; preds = %69
  %i.vr = icmp eq i32 %i.vj, 13
  %or.cond.i52 = and i1 %switch.selectcmp.case2.i.i, %i.vr
  br i1 %or.cond.i52, label %bb.hk, label %bb.ho

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.vs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow10large_utf8Ev()
          to label %.noexc60 unwind label %bb.hu  ; 0 uses

.noexc60:                                         ; preds = %bb.hk
  store ptr null, ptr %66, align 8, !tbaa !116, !alias.scope !1229
  %i.vt = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.vu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow10large_utf8EvE6result, i64 8), align 8, !tbaa !151, !noalias !1229 ; 2 uses
  %i.vv = load <2 x ptr>, ptr @_ZZN5arrow10large_utf8EvE6result, align 16, !tbaa !166, !noalias !1229
  store <2 x ptr> %i.vv, ptr %i.vt, align 8, !tbaa !166, !alias.scope !1229
  %.not.i.i.i.i.i.i58.i = icmp eq ptr %i.vu, null
  br i1 %.not.i.i.i.i.i.i58.i, label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split, label %bb.hl

bb.hl:                                            ; preds = %.noexc60
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 8 ; 3 uses
  %i.vx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !113, !noalias !1229
  %.not.i.i.i.i.i.i.i59.i = icmp eq i8 %i.vx, 0
  br i1 %.not.i.i.i.i.i.i.i59.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.vy = load i32, ptr %i.vw, align 4, !tbaa !81, !noalias !1229
  %i.vz = add nsw i32 %i.vy, 1
  store i32 %i.vz, ptr %i.vw, align 4, !tbaa !81, !noalias !1229
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.hn:                                            ; preds = %bb.hl
  %i.wa = atomicrmw volatile add ptr %i.vw, i32 1 acq_rel, align 4, !noalias !1229 ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.ho:                                            ; preds = %bb.hh, %bb.hj
  %switch.selectcmp.case1.i4712.i194 = phi i1 [ false, %bb.hj ], [ %switch.selectcmp.case1.i4714.i, %bb.hh ]
  %switch.selectcmp.case2.i4815.i193 = phi i1 [ false, %bb.hj ], [ %switch.selectcmp.case2.i4817.i, %bb.hh ]
  %70 = phi i32 [ %i.vj, %bb.hj ], [ %i.vn, %bb.hh ] ; 2 uses
  %71 = icmp eq i32 %70, 35
  %or.cond40.i = and i1 %switch.selectcmp.case1.i4712.i194, %71
  %i.wb = icmp eq i32 %70, 14
  %or.cond41.i = and i1 %switch.selectcmp.case2.i4815.i193, %i.wb
  %or.cond45.i = or i1 %or.cond40.i, %or.cond41.i
  br i1 %or.cond45.i, label %bb.hp, label %.thread11.i

bb.hp:                                            ; preds = %bb.ho
  %i.wc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow12large_binaryEv()
          to label %.noexc61 unwind label %bb.hu  ; 0 uses

.noexc61:                                         ; preds = %bb.hp
  store ptr null, ptr %66, align 8, !tbaa !116, !alias.scope !1229
  %i.wd = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.we = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12large_binaryEvE6result, i64 8), align 8, !tbaa !151, !noalias !1229 ; 2 uses
  %i.wf = load <2 x ptr>, ptr @_ZZN5arrow12large_binaryEvE6result, align 16, !tbaa !166, !noalias !1229
  store <2 x ptr> %i.wf, ptr %i.wd, align 8, !tbaa !166, !alias.scope !1229
  %.not.i.i.i.i.i.i61.i = icmp eq ptr %i.we, null
  br i1 %.not.i.i.i.i.i.i61.i, label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split, label %bb.hq

bb.hq:                                            ; preds = %.noexc61
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 8 ; 3 uses
  %i.wh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !113, !noalias !1229
  %.not.i.i.i.i.i.i.i62.i = icmp eq i8 %i.wh, 0
  br i1 %.not.i.i.i.i.i.i.i62.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.wi = load i32, ptr %i.wg, align 4, !tbaa !81, !noalias !1229
  %i.wj = add nsw i32 %i.wi, 1
  store i32 %i.wj, ptr %i.wg, align 4, !tbaa !81, !noalias !1229
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.hs:                                            ; preds = %bb.hq
  %i.wk = atomicrmw volatile add ptr %i.wg, i32 1 acq_rel, align 4, !noalias !1229 ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

.thread11.i:                                      ; preds = %bb.ha, %bb.ho, %bb.hi, %bb.hg, %bb.gx
  store i64 0, ptr %66, align 8
  br label %bb.hv

_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split: ; preds = %.noexc, %.noexc56, %.noexc57, %bb.hc, %bb.hd, %.noexc58, %.noexc59, %.noexc60, %bb.hm, %bb.hn, %.noexc61, %bb.hr, %bb.hs
  %.pr182 = load ptr, ptr %66, align 8, !tbaa !116
  %i.wl = icmp eq ptr %.pr182, null
  br i1 %i.wl, label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge, label %bb.ht, !prof !117

_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge: ; preds = %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split
  %.phi.trans.insert201 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %.pre202 = load ptr, ptr %.phi.trans.insert201, align 8, !tbaa !135, !noalias !1230
  %.phi.trans.insert203 = getelementptr inbounds nuw i8, ptr %66, i64 16
  %.pre204 = load ptr, ptr %.phi.trans.insert203, align 8, !tbaa !151, !noalias !1230
  br label %bb.hv

bb.ht:                                            ; preds = %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %66) #38
  br label %bb.mc

bb.hu:                                            ; preds = %bb.hp, %bb.hk, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.i, %.thread13.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i55
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %bb.mu

bb.hv:                                            ; preds = %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge, %.thread11.i
  %i.wn = phi ptr [ %.pre204, %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge ], [ null, %.thread11.i ]
  %i.wo = phi ptr [ %.pre202, %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge ], [ null, %.thread11.i ] ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %66, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wp, i8 0, i64 16, i1 false)
  store ptr %i.wo, ptr %62, align 8, !tbaa !214
  %i.wq = load ptr, ptr %i.rh, align 8, !tbaa !151 ; 8 uses
  store ptr %i.wn, ptr %i.rh, align 8, !tbaa !151
  %.not.i.i.i.i62 = icmp eq ptr %i.wq, null
  br i1 %.not.i.i.i.i62, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 8 ; 4 uses
  %i.ws = load atomic i64, ptr %i.wr acquire, align 8 ; 2 uses
  %i.wt = icmp eq i64 %i.ws, 4294967297
  %i.wu = trunc i64 %i.ws to i32                  ; 2 uses
  br i1 %i.wt, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  store i32 0, ptr %i.wr, align 8, !tbaa !153
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wq, i64 12
  store i32 0, ptr %i.wv, align 4, !tbaa !154
  %i.ww = load ptr, ptr %i.wq, align 8, !tbaa !131
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  %i.wy = load ptr, ptr %i.wx, align 8
  call void %i.wy(ptr noundef nonnull align 8 dereferenceable(16) %i.wq) #38, !inline_history !5
  %i.wz = load ptr, ptr %i.wq, align 8, !tbaa !131
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 24
  %i.xb = load ptr, ptr %i.xa, align 8
  call void %i.xb(ptr noundef nonnull align 8 dereferenceable(16) %i.wq) #38, !inline_history !5
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71thread-pre-split

bb.hy:                                            ; preds = %bb.hw
  %i.xc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !113
  %.not.i.i.i.i.i63 = icmp eq i8 %i.xc, 0
  br i1 %.not.i.i.i.i.i63, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.xd = add nsw i32 %i.wu, -1
  store i32 %i.xd, ptr %i.wr, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64

bb.ia:                                            ; preds = %bb.hy
  %i.xe = atomicrmw volatile add ptr %i.wr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64: ; preds = %bb.ia, %bb.hz
  %.0.i.i.i.i.i.i65 = phi i32 [ %i.wu, %bb.hz ], [ %i.xe, %bb.ia ]
  %i.xf = icmp eq i32 %.0.i.i.i.i.i.i65, 1
  br i1 %i.xf, label %bb.ib, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71thread-pre-split, !prof !132

bb.ib:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wq) #38
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71thread-pre-split

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71thread-pre-split: ; preds = %bb.hx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64, %bb.ib
  %.pr183 = load ptr, ptr %62, align 8, !tbaa !135
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71thread-pre-split, %bb.hv
  %i.xg = phi ptr [ %.pr183, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71thread-pre-split ], [ %i.wo, %bb.hv ] ; 2 uses
  %.not193 = icmp eq ptr %i.xg, null
  br i1 %.not193, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71
  store ptr null, ptr %0, align 8, !tbaa !116
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.xg, ptr %i.xh, align 8, !tbaa !135
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xj = load ptr, ptr %i.rh, align 8, !tbaa !151
  store ptr null, ptr %i.rh, align 8, !tbaa !151
  store ptr %i.xj, ptr %i.xi, align 8, !tbaa !151
  store ptr null, ptr %62, align 8, !tbaa !135
  br label %bb.mc

bb.id:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  %i.xk = load ptr, ptr %1, align 8, !tbaa !135, !noalias !1231 ; 6 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 40
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !150, !noalias !1231 ; 2 uses
  switch i32 %i.xm, label %.thread187 [
    i32 32, label %bb.ie
    i32 25, label %.thread184
    i32 36, label %.thread184
    i32 30, label %._crit_edge212
    i32 26, label %._crit_edge208
  ]

._crit_edge212:                                   ; preds = %bb.id
  %.pre213 = load ptr, ptr %2, align 8, !tbaa !135, !noalias !1231 ; 2 uses
  %.phi.trans.insert214 = getelementptr inbounds nuw i8, ptr %.pre213, i64 40
  %.pre215 = load i32, ptr %.phi.trans.insert214, align 8, !tbaa !150, !noalias !1231
  br label %bb.jn

._crit_edge208:                                   ; preds = %bb.id
  %.pre209 = load ptr, ptr %2, align 8, !tbaa !135, !noalias !1231
  %.phi.trans.insert210 = getelementptr inbounds nuw i8, ptr %.pre209, i64 40
  %.pre211 = load i32, ptr %.phi.trans.insert210, align 8, !tbaa !150, !noalias !1231
  br label %bb.lf

bb.ie:                                            ; preds = %bb.id
  %i.xn = load ptr, ptr %2, align 8, !tbaa !135, !noalias !1231 ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 40
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !150, !noalias !1231
  %i.xq = icmp eq i32 %i.xp, 32
  br i1 %i.xq, label %bb.if, label %.thread184

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38, !noalias !1231
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xk, i64 48
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !215, !noalias !1231 ; 2 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !164, !noalias !1231
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38, !noalias !1231
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xn, i64 48
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !215, !noalias !1231
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !164, !noalias !1231
  %i.xx = load ptr, ptr %i.xs, align 8, !tbaa !164, !noalias !1231
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 24
  invoke void @_ZNK5arrow5Field8WithNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.xw, ptr noundef nonnull align 8 dereferenceable(32) %i.xy)
          to label %.noexc76 unwind label %bb.lj, !inline_history !1163

.noexc76:                                         ; preds = %bb.if
  %i.xz = load ptr, ptr %7, align 8, !tbaa !164, !noalias !1231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %8, ptr noundef nonnull align 1 dereferenceable(12) %3, i64 12, i1 false), !noalias !1231
  invoke void @_ZNK5arrow5Field9MergeWithERKS0_NS0_12MergeOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(96) %i.xt, ptr noundef nonnull align 8 dereferenceable(96) %i.xz, ptr noundef nonnull %8)
          to label %bb.ig unwind label %bb.ii, !noalias !1231, !inline_history !1163

bb.ig:                                            ; preds = %.noexc76
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #38, !noalias !1231, !inline_history !1163
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38, !noalias !1231
  %i.ya = load ptr, ptr %6, align 8, !tbaa !116, !noalias !1231
  %i.yb = icmp eq ptr %i.ya, null
  br i1 %i.yb, label %bb.ij, label %bb.ih, !prof !117

bb.ih:                                            ; preds = %bb.ig
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %67, ptr noundef nonnull align 8 dereferenceable(8) %6) #38, !inline_history !1163
  br label %bb.is

bb.ii:                                            ; preds = %.noexc76
  %i.yc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #38, !noalias !1231, !inline_history !1163
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38, !noalias !1231
  br label %.body

bb.ij:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38, !noalias !1231
  %i.yd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !164, !noalias !1232 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !151, !noalias !1232 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xk, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yd, i8 0, i64 16, i1 false)
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !219, !noalias !1231 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xn, i64 72
  %i.yl = load i32, ptr %i.yk, align 8, !tbaa !219, !noalias !1231
  %i.ym = icmp eq i32 %i.yj, %i.yl
  br i1 %i.ym, label %bb.ik, label %bb.in

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38, !noalias !1231
  store ptr %i.ye, ptr %11, align 8, !tbaa !164, !noalias !1231
  %i.yn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.yf, align 8, !tbaa !151, !noalias !1231
  store ptr %i.yh, ptr %i.yn, align 8, !tbaa !151, !noalias !1231
end_hunk_0
