Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/type?download=true
inline.NumInlined: 11708
inline.NumDeleted: 4272
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_110MergeTypesESt10shared_ptrINS_8DataTypeEES3_RKNS_5Field12MergeOptionsE:bb.a

bb.fx:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit39
  %i.rc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %64) #36
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %63) #36
  br label %bb.ma

bb.fy:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46
  %i.rd = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !103, !noalias !1176 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !120, !noalias !1176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rd, i8 0, i64 16, i1 false)
  store ptr %i.re, ptr %61, align 8, !tbaa !191
  %i.rh = load ptr, ptr %i.pc, align 8, !tbaa !120 ; 8 uses
  store ptr %i.rg, ptr %i.pc, align 8, !tbaa !120
  %.not.i.i.i.i47 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i.i47, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8 ; 4 uses
  %i.rj = load atomic i64, ptr %i.ri acquire, align 8 ; 2 uses
  %i.rk = icmp eq i64 %i.rj, 4294967297
  %i.rl = trunc i64 %i.rj to i32                  ; 2 uses
  br i1 %i.rk, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  store i32 0, ptr %i.ri, align 8, !tbaa !123
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rh, i64 12
  store i32 0, ptr %i.rm, align 4, !tbaa !124
  %i.rn = load ptr, ptr %i.rh, align 8, !tbaa !97
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8
  call void %i.rp(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #36, !inline_history !5
  %i.rq = load ptr, ptr %i.rh, align 8, !tbaa !97
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8
  call void %i.rs(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #36, !inline_history !5
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52thread-pre-split

bb.gb:                                            ; preds = %bb.fz
  %i.rt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i.i.i = icmp eq i8 %i.rt, 0
  br i1 %.not.i.i.i.i.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ru = add nsw i32 %i.rl, -1
  store i32 %i.ru, ptr %i.ri, align 8, !tbaa !121
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.gd:                                            ; preds = %bb.gb
  %i.rv = atomicrmw volatile add ptr %i.ri, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.gd, %bb.gc
  %.0.i.i.i.i.i.i = phi i32 [ %i.rl, %bb.gc ], [ %i.rv, %bb.gd ]
  %i.rw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.rw, label %bb.ge, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52thread-pre-split, !prof !127

bb.ge:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #36
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52thread-pre-split

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52thread-pre-split: ; preds = %bb.ga, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ge
  %.pr182 = load ptr, ptr %61, align 8, !tbaa !103
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52thread-pre-split, %bb.fy
  %i.rx = phi ptr [ %.pr182, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52thread-pre-split ], [ %i.re, %bb.fy ] ; 2 uses
  %.not193 = icmp eq ptr %i.rx, null
  br i1 %.not193, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52
  store ptr null, ptr %0, align 8, !tbaa !92
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.rx, ptr %i.ry, align 8, !tbaa !103
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sa = load ptr, ptr %i.pc, align 8, !tbaa !120
  store ptr null, ptr %i.pc, align 8, !tbaa !120
  store ptr %i.sa, ptr %i.rz, align 8, !tbaa !120
  store ptr null, ptr %61, align 8, !tbaa !103
  br label %bb.lr

bb.gg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #36
  %i.sb = getelementptr inbounds nuw i8, ptr %3, i64 7
  %.val35 = load i8, ptr %i.sb, align 1, !tbaa !150, !range !142, !noundef !143
  call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %i.sc = trunc nuw i8 %.val35 to i1
  br i1 %i.sc, label %bb.gh, label %.thread11.i

bb.gh:                                            ; preds = %bb.gg
  %i.sd = load ptr, ptr %2, align 8, !tbaa !103, !noalias !1177 ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 40
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !119, !noalias !1177 ; 4 uses
  %i.sg = icmp eq i32 %i.sf, 15
  %i.sh = load ptr, ptr %1, align 8, !tbaa !103, !noalias !1177 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 40
  %i.sj = load i32, ptr %i.si, align 8, !tbaa !119, !noalias !1177 ; 6 uses
  br i1 %i.sg, label %bb.gi, label %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i

bb.gi:                                            ; preds = %bb.gh
  switch i32 %i.sj, label %.thread.i [
    i32 14, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i56
    i32 35, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i56
    i32 13, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i56
    i32 34, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i56
    i32 15, label %.thread13.i
  ]

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i56: ; preds = %bb.gi, %bb.gi, %bb.gi, %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #36, !noalias !1177
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_110MakeBinaryERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %40, i32 %i.sj)
          to label %.noexc unwind label %bb.hd

.noexc:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i56
  store ptr null, ptr %65, align 8, !tbaa !92, !alias.scope !1177
  %i.sk = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.sl = load <2 x ptr>, ptr %40, align 16, !tbaa !136, !noalias !1177
  store <2 x ptr> %i.sl, ptr %i.sk, align 8, !tbaa !136, !alias.scope !1177
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #36, !noalias !1177
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i: ; preds = %bb.gh
  %i.sm = icmp eq i32 %i.sj, 15
  br i1 %i.sm, label %bb.gj, label %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit33.i

bb.gj:                                            ; preds = %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i
  switch i32 %i.sf, label %.thread11.i [
    i32 14, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i
    i32 35, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i
    i32 13, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i
    i32 34, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i
  ]

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i: ; preds = %bb.gj, %bb.gj, %bb.gj, %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #36, !noalias !1177
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_110MakeBinaryERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %41, i32 %i.sf)
          to label %.noexc57 unwind label %bb.hd

.noexc57:                                         ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i
  store ptr null, ptr %65, align 8, !tbaa !92, !alias.scope !1177
  %i.sn = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.so = load <2 x ptr>, ptr %41, align 16, !tbaa !136, !noalias !1177
  store <2 x ptr> %i.so, ptr %i.sn, align 8, !tbaa !136, !alias.scope !1177
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #36, !noalias !1177
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

.thread13.i:                                      ; preds = %bb.gi
  %i.sp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6binaryEv()
          to label %.noexc58 unwind label %bb.hd  ; 0 uses

.noexc58:                                         ; preds = %.thread13.i
  store ptr null, ptr %65, align 8, !tbaa !92, !alias.scope !1177
  %i.sq = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.sr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow6binaryEvE6result, i64 8), align 8, !tbaa !120, !noalias !1177 ; 2 uses
  %i.ss = load <2 x ptr>, ptr @_ZZN5arrow6binaryEvE6result, align 16, !tbaa !136, !noalias !1177
  store <2 x ptr> %i.ss, ptr %i.sq, align 8, !tbaa !136, !alias.scope !1177
  %.not.i.i.i.i.i.i.i54 = icmp eq ptr %i.sr, null
  br i1 %.not.i.i.i.i.i.i.i54, label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split, label %bb.gk

bb.gk:                                            ; preds = %.noexc58
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 8 ; 3 uses
  %i.su = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89, !noalias !1177
  %.not.i.i.i.i.i.i.i.i55 = icmp eq i8 %i.su, 0
  br i1 %.not.i.i.i.i.i.i.i.i55, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.sv = load i32, ptr %i.st, align 4, !tbaa !121, !noalias !1177
  %i.sw = add nsw i32 %i.sv, 1
  store i32 %i.sw, ptr %i.st, align 4, !tbaa !121, !noalias !1177
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.gm:                                            ; preds = %bb.gk
  %i.sx = atomicrmw volatile add ptr %i.st, i32 1 acq_rel, align 4, !noalias !1177 ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit33.i: ; preds = %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i
  %i.sy = and i32 %i.sf, -2
  %switch22.i = icmp eq i32 %i.sy, 34
  %.off.i = add i32 %i.sj, -13
  %switch.i = icmp ult i32 %.off.i, 2
  %or.cond.i53.a = select i1 %switch22.i, i1 %switch.i, i1 false
  br i1 %or.cond.i53.a, label %bb.gn, label %.thread.i

bb.gn:                                            ; preds = %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit33.i
  store ptr %i.sd, ptr %1, align 8, !tbaa !191, !noalias !1177
  store ptr %i.sh, ptr %2, align 8, !tbaa !191, !noalias !1177
  %i.sz = load ptr, ptr %i.pm, align 8, !tbaa !120, !noalias !1177
  %i.ta = load ptr, ptr %i.pe, align 8, !tbaa !120, !noalias !1177
  store ptr %i.ta, ptr %i.pm, align 8, !tbaa !120, !noalias !1177
  store ptr %i.sz, ptr %i.pe, align 8, !tbaa !120, !noalias !1177
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !103, !noalias !1177
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %.pre14.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !119, !noalias !1177
  br label %.thread.i

.thread.i:                                        ; preds = %bb.gn, %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit33.i, %bb.gi
  %i.tb = phi ptr [ %i.sd, %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit33.i ], [ %i.sd, %bb.gi ], [ %i.sh, %bb.gn ] ; 2 uses
  %i.tc = phi i32 [ %i.sj, %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit33.i ], [ %i.sj, %bb.gi ], [ %.pre14.i, %bb.gn ] ; 5 uses
  switch i32 %i.tc, label %.thread11.i [
    i32 34, label %bb.go
    i32 13, label %bb.go
    i32 35, label %bb.gq
    i32 14, label %bb.gq
  ]

bb.go:                                            ; preds = %.thread.i, %.thread.i
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 40
  %i.te = load i32, ptr %i.td, align 8, !tbaa !119, !noalias !1177 ; 3 uses
  switch i32 %i.te, label %bb.gp [
    i32 35, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.i
    i32 14, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.i
  ]

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.i: ; preds = %bb.go, %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #36, !noalias !1177
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_110MakeBinaryERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %42, i32 %i.tc)
          to label %.noexc59 unwind label %bb.hd

.noexc59:                                         ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.i
  store ptr null, ptr %65, align 8, !tbaa !92, !alias.scope !1177
  %i.tf = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.tg = load <2 x ptr>, ptr %42, align 16, !tbaa !136, !noalias !1177
  store <2 x ptr> %i.tg, ptr %i.tf, align 8, !tbaa !136, !alias.scope !1177
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #36, !noalias !1177
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.gp:                                            ; preds = %bb.go
  switch i32 %i.tc, label %.thread11.i [
    i32 34, label %bb.gs
    i32 14, label %bb.gq
    i32 13, label %bb.gr
  ]

bb.gq:                                            ; preds = %bb.gp, %.thread.i, %.thread.i
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 40
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !119, !noalias !1177 ; 3 uses
  switch i32 %i.ti, label %.thread7.i [
    i32 34, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i
    i32 13, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i
  ]

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i: ; preds = %bb.gq, %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #36, !noalias !1177
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_110MakeBinaryERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %43, i32 %i.tc)
          to label %.noexc60 unwind label %bb.hd

.noexc60:                                         ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i
  store ptr null, ptr %65, align 8, !tbaa !92, !alias.scope !1177
  %i.tj = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.tk = load <2 x ptr>, ptr %43, align 16, !tbaa !136, !noalias !1177
  store <2 x ptr> %i.tk, ptr %i.tj, align 8, !tbaa !136, !alias.scope !1177
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #36, !noalias !1177
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.gr:                                            ; preds = %bb.gp
  %i.tl = icmp eq i32 %i.te, 34
  br i1 %i.tl, label %bb.gt, label %.thread11.i

.thread7.i:                                       ; preds = %bb.gq
  switch i32 %i.tc, label %.thread11.i [
    i32 35, label %bb.gx
    i32 14, label %68
  ]

bb.gs:                                            ; preds = %bb.gp
  %i.tm = icmp eq i32 %i.te, 13
  br i1 %i.tm, label %bb.gt, label %.thread11.i

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.tn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow10large_utf8Ev()
          to label %.noexc61 unwind label %bb.hd  ; 0 uses

.noexc61:                                         ; preds = %bb.gt
  store ptr null, ptr %65, align 8, !tbaa !92, !alias.scope !1177
  %i.to = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.tp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow10large_utf8EvE6result, i64 8), align 8, !tbaa !120, !noalias !1177 ; 2 uses
  %i.tq = load <2 x ptr>, ptr @_ZZN5arrow10large_utf8EvE6result, align 16, !tbaa !136, !noalias !1177
  store <2 x ptr> %i.tq, ptr %i.to, align 8, !tbaa !136, !alias.scope !1177
  %.not.i.i.i.i.i.i58.i = icmp eq ptr %i.tp, null
  br i1 %.not.i.i.i.i.i.i58.i, label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split, label %bb.gu

bb.gu:                                            ; preds = %.noexc61
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 8 ; 3 uses
  %i.ts = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89, !noalias !1177
  %.not.i.i.i.i.i.i.i59.i = icmp eq i8 %i.ts, 0
  br i1 %.not.i.i.i.i.i.i.i59.i, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.tt = load i32, ptr %i.tr, align 4, !tbaa !121, !noalias !1177
  %i.tu = add nsw i32 %i.tt, 1
  store i32 %i.tu, ptr %i.tr, align 4, !tbaa !121, !noalias !1177
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.gw:                                            ; preds = %bb.gu
  %i.tv = atomicrmw volatile add ptr %i.tr, i32 1 acq_rel, align 4, !noalias !1177 ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

68:                                               ; preds = %.thread7.i
  %69 = icmp eq i32 %i.ti, 35
  br i1 %69, label %bb.gy, label %.thread11.i

bb.gx:                                            ; preds = %.thread7.i
  %i.tw = icmp eq i32 %i.ti, 14
  br i1 %i.tw, label %bb.gy, label %.thread11.i

bb.gy:                                            ; preds = %bb.gx, %68
  %i.tx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow12large_binaryEv()
          to label %.noexc62 unwind label %bb.hd  ; 0 uses

.noexc62:                                         ; preds = %bb.gy
  store ptr null, ptr %65, align 8, !tbaa !92, !alias.scope !1177
  %i.ty = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.tz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow12large_binaryEvE6result, i64 8), align 8, !tbaa !120, !noalias !1177 ; 2 uses
  %i.ua = load <2 x ptr>, ptr @_ZZN5arrow12large_binaryEvE6result, align 16, !tbaa !136, !noalias !1177
  store <2 x ptr> %i.ua, ptr %i.ty, align 8, !tbaa !136, !alias.scope !1177
  %.not.i.i.i.i.i.i61.i = icmp eq ptr %i.tz, null
  br i1 %.not.i.i.i.i.i.i61.i, label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split, label %bb.gz

bb.gz:                                            ; preds = %.noexc62
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 8 ; 3 uses
  %i.uc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89, !noalias !1177
  %.not.i.i.i.i.i.i.i62.i = icmp eq i8 %i.uc, 0
  br i1 %.not.i.i.i.i.i.i.i62.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ud = load i32, ptr %i.ub, align 4, !tbaa !121, !noalias !1177
  %i.ue = add nsw i32 %i.ud, 1
  store i32 %i.ue, ptr %i.ub, align 4, !tbaa !121, !noalias !1177
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

bb.hb:                                            ; preds = %bb.gz
  %i.uf = atomicrmw volatile add ptr %i.ub, i32 1 acq_rel, align 4, !noalias !1177 ; 0 uses
  br label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split

.thread11.i:                                      ; preds = %bb.gj, %bb.gx, %68, %bb.gs, %.thread7.i, %bb.gr, %bb.gp, %.thread.i, %bb.gg
  store i64 0, ptr %65, align 8
  br label %bb.he

_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split: ; preds = %.noexc, %.noexc57, %.noexc58, %bb.gl, %bb.gm, %.noexc59, %.noexc60, %.noexc61, %bb.gv, %bb.gw, %.noexc62, %bb.ha, %bb.hb
  %.pr183 = load ptr, ptr %65, align 8, !tbaa !92
  %i.ug = icmp eq ptr %.pr183, null
  br i1 %i.ug, label %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge, label %bb.hc, !prof !93

_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge: ; preds = %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split
  %.phi.trans.insert202 = getelementptr inbounds nuw i8, ptr %65, i64 8
  %.pre203 = load ptr, ptr %.phi.trans.insert202, align 8, !tbaa !103, !noalias !1178
  %.phi.trans.insert204 = getelementptr inbounds nuw i8, ptr %65, i64 16
  %.pre205 = load ptr, ptr %.phi.trans.insert204, align 8, !tbaa !120, !noalias !1178
  br label %bb.he

bb.hc:                                            ; preds = %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %65) #36
  br label %bb.lj

bb.hd:                                            ; preds = %bb.gy, %bb.gt, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit57.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit46.i, %.thread13.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit38.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i56
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %bb.lz

bb.he:                                            ; preds = %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge, %.thread11.i
  %i.ui = phi ptr [ %.pre205, %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge ], [ null, %.thread11.i ]
  %i.uj = phi ptr [ %.pre203, %_ZN5arrow12_GLOBAL__N_121MaybeMergeBinaryTypesERSt10shared_ptrINS_8DataTypeEES4_RKNS_5Field12MergeOptionsE.exitthread-pre-split._crit_edge ], [ null, %.thread11.i ] ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %65, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uk, i8 0, i64 16, i1 false)
  store ptr %i.uj, ptr %61, align 8, !tbaa !191
  %i.ul = load ptr, ptr %i.pc, align 8, !tbaa !120 ; 8 uses
  store ptr %i.ui, ptr %i.pc, align 8, !tbaa !120
  %.not.i.i.i.i63 = icmp eq ptr %i.ul, null
  br i1 %.not.i.i.i.i63, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8 ; 4 uses
  %i.un = load atomic i64, ptr %i.um acquire, align 8 ; 2 uses
  %i.uo = icmp eq i64 %i.un, 4294967297
  %i.up = trunc i64 %i.un to i32                  ; 2 uses
  br i1 %i.uo, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  store i32 0, ptr %i.um, align 8, !tbaa !123
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ul, i64 12
  store i32 0, ptr %i.uq, align 4, !tbaa !124
  %i.ur = load ptr, ptr %i.ul, align 8, !tbaa !97
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %i.ut = load ptr, ptr %i.us, align 8
  call void %i.ut(ptr noundef nonnull align 8 dereferenceable(16) %i.ul) #36, !inline_history !5
  %i.uu = load ptr, ptr %i.ul, align 8, !tbaa !97
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  %i.uw = load ptr, ptr %i.uv, align 8
  call void %i.uw(ptr noundef nonnull align 8 dereferenceable(16) %i.ul) #36, !inline_history !5
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72thread-pre-split

bb.hh:                                            ; preds = %bb.hf
  %i.ux = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i.i.i64 = icmp eq i8 %i.ux, 0
  br i1 %.not.i.i.i.i.i64, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.uy = add nsw i32 %i.up, -1
  store i32 %i.uy, ptr %i.um, align 8, !tbaa !121
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i65

bb.hj:                                            ; preds = %bb.hh
  %i.uz = atomicrmw volatile add ptr %i.um, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i65

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i65: ; preds = %bb.hj, %bb.hi
  %.0.i.i.i.i.i.i66 = phi i32 [ %i.up, %bb.hi ], [ %i.uz, %bb.hj ]
  %i.va = icmp eq i32 %.0.i.i.i.i.i.i66, 1
  br i1 %i.va, label %bb.hk, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72thread-pre-split, !prof !127

bb.hk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i65
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ul) #36
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72thread-pre-split

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72thread-pre-split: ; preds = %bb.hg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i65, %bb.hk
  %.pr184 = load ptr, ptr %61, align 8, !tbaa !103
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72thread-pre-split, %bb.he
  %i.vb = phi ptr [ %.pr184, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72thread-pre-split ], [ %i.uj, %bb.he ] ; 2 uses
  %.not194 = icmp eq ptr %i.vb, null
  br i1 %.not194, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72
  store ptr null, ptr %0, align 8, !tbaa !92
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.vb, ptr %i.vc, align 8, !tbaa !103
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ve = load ptr, ptr %i.pc, align 8, !tbaa !120
  store ptr null, ptr %i.pc, align 8, !tbaa !120
  store ptr %i.ve, ptr %i.vd, align 8, !tbaa !120
  store ptr null, ptr %61, align 8, !tbaa !103
  br label %bb.lj

bb.hm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #36
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
  %i.vf = load ptr, ptr %1, align 8, !tbaa !103, !noalias !1179 ; 6 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 40
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !119, !noalias !1179 ; 2 uses
  switch i32 %i.vh, label %.thread188 [
    i32 32, label %bb.hn
    i32 25, label %.thread185
    i32 36, label %.thread185
    i32 30, label %._crit_edge213
    i32 26, label %._crit_edge209
  ]

._crit_edge213:                                   ; preds = %bb.hm
  %.pre214 = load ptr, ptr %2, align 8, !tbaa !103, !noalias !1179 ; 2 uses
  %.phi.trans.insert215 = getelementptr inbounds nuw i8, ptr %.pre214, i64 40
  %.pre216 = load i32, ptr %.phi.trans.insert215, align 8, !tbaa !119, !noalias !1179
  br label %bb.iv

._crit_edge209:                                   ; preds = %bb.hm
  %.pre210 = load ptr, ptr %2, align 8, !tbaa !103, !noalias !1179
  %.phi.trans.insert211 = getelementptr inbounds nuw i8, ptr %.pre210, i64 40
  %.pre212 = load i32, ptr %.phi.trans.insert211, align 8, !tbaa !119, !noalias !1179
  br label %bb.kn

bb.hn:                                            ; preds = %bb.hm
  %i.vi = load ptr, ptr %2, align 8, !tbaa !103, !noalias !1179 ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 40
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !119, !noalias !1179
  %i.vl = icmp eq i32 %i.vk, 32
  br i1 %i.vl, label %bb.ho, label %.thread185

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36, !noalias !1179
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vf, i64 48
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !192, !noalias !1179 ; 2 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !134, !noalias !1179
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36, !noalias !1179
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vi, i64 48
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !192, !noalias !1179
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !134, !noalias !1179
  %i.vs = load ptr, ptr %i.vn, align 8, !tbaa !134, !noalias !1179
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 24
  invoke void @_ZNK5arrow5Field8WithNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.20") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.vr, ptr noundef nonnull align 8 dereferenceable(32) %i.vt)
          to label %.noexc77 unwind label %bb.kr, !inline_history !1115

.noexc77:                                         ; preds = %bb.ho
  %i.vu = load ptr, ptr %7, align 8, !tbaa !134, !noalias !1179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %8, ptr noundef nonnull align 1 dereferenceable(12) %3, i64 12, i1 false), !noalias !1179
  invoke void @_ZNK5arrow5Field9MergeWithERKS0_NS0_12MergeOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(96) %i.vo, ptr noundef nonnull align 8 dereferenceable(96) %i.vu, ptr noundef nonnull align 1 %8)
          to label %bb.hp unwind label %bb.hr, !noalias !1179, !inline_history !1115

bb.hp:                                            ; preds = %.noexc77
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #36, !noalias !1179, !inline_history !1115
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !1179
  %i.vv = load ptr, ptr %6, align 8, !tbaa !92, !noalias !1179
  %i.vw = icmp eq ptr %i.vv, null
  br i1 %i.vw, label %bb.hs, label %bb.hq, !prof !93

bb.hq:                                            ; preds = %bb.hp
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef nonnull align 8 dereferenceable(8) %6) #36, !inline_history !1115
  br label %bb.ib

bb.hr:                                            ; preds = %.noexc77
  %i.vx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #36, !noalias !1179, !inline_history !1115
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !1179
  br label %.body

bb.hs:                                            ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !1179
  %i.vy = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !134, !noalias !1180 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !120, !noalias !1180 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vf, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vy, i8 0, i64 16, i1 false)
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !196, !noalias !1179 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vi, i64 72
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !196, !noalias !1179
  %i.wh = icmp eq i32 %i.we, %i.wg
  br i1 %i.wh, label %bb.ht, label %bb.hw

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36, !noalias !1179
  store ptr %i.vz, ptr %11, align 8, !tbaa !134, !noalias !1179
  %i.wi = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.wa, align 8, !tbaa !120, !noalias !1179
  store ptr %i.wc, ptr %i.wi, align 8, !tbaa !120, !noalias !1179
end_hunk_0
