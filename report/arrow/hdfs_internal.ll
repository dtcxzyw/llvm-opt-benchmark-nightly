inline.NumInlined: 1811
inline.NumDeleted: 673
begin_hunk_0_@_ZN5arrow2io8internal14ConnectLibHdfsEPPNS1_11LibHdfsShimE:bb.a
.noexc412.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i
  %i.ta = load ptr, ptr %15, align 8, !tbaa !17, !noalias !217 ; 2 uses
  %i.tb = icmp eq ptr %i.ta, null
  br i1 %i.tb, label %bb.bc, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i

bb.bc:                                            ; preds = %.noexc412.i
  %i.tc = load ptr, ptr %27, align 16, !tbaa !257, !noalias !217
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18, !noalias !217
  %i.td = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.te, ptr %17, align 8, !tbaa !220, !noalias !217
  %i.tf = load ptr, ptr %i.td, align 8, !tbaa !223, !noalias !217 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 7 uses
  %i.th = icmp eq ptr %i.tf, %i.tg
  br i1 %i.th, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408.i

bb.bd:                                            ; preds = %bb.bc
  %i.ti = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !221, !noalias !217 ; 3 uses
  %i.tk = icmp ult i64 %i.tj, 16
  call void @llvm.assume(i1 %i.tk)
  %i.tl = add nuw nsw i64 %i.tj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.te, ptr noundef nonnull align 8 dereferenceable(1) %i.tg, i64 %i.tl, i1 false), !noalias !217
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408.i: ; preds = %bb.bc
  store ptr %i.tf, ptr %17, align 8, !tbaa !223, !noalias !217
  %i.tm = load i64, ptr %i.tg, align 8, !tbaa !222, !noalias !217
  store i64 %i.tm, ptr %i.te, align 8, !tbaa !222, !noalias !217
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.pre.i409.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !221, !noalias !217
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408.i, %bb.bd
  %i.tn = phi i64 [ %i.tj, %bb.bd ], [ %.pre.i409.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408.i ]
  %i.to = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.tp = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.tn, ptr %i.tp, align 8, !tbaa !221, !noalias !217
  store ptr %i.tg, ptr %i.td, align 8, !tbaa !223, !noalias !217
  store i64 0, ptr %i.to, align 8, !tbaa !221, !noalias !217
  store i8 0, ptr %i.tg, align 8, !tbaa !222, !noalias !217
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %17)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.tq = invoke ptr @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr %i.tc, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE7emplaceIJS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS7_IPKS2_S4_EEDpOT_.exit.i.i unwind label %bb.bg ; 0 uses

_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE7emplaceIJS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS7_IPKS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.be
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #18
  %i.tr = load ptr, ptr %17, align 8, !tbaa !223, !noalias !217 ; 2 uses
  %i.ts = icmp eq ptr %i.tr, %i.te
  br i1 %i.ts, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE7emplaceIJS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS7_IPKS2_S4_EEDpOT_.exit.i.i
  %i.tt = load i64, ptr %i.te, align 8, !tbaa !222, !noalias !217
  %i.tu = add i64 %i.tt, 1
  call void @_ZdlPvm(ptr noundef %i.tr, i64 noundef %i.tu) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.tv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.tw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #18
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn.i.i = phi { ptr, i32 } [ %i.tw, %bb.bg ], [ %i.tv, %bb.bf ]
  %i.tx = load ptr, ptr %17, align 8, !tbaa !223, !noalias !217 ; 2 uses
  %i.ty = icmp eq ptr %i.tx, %i.te
  br i1 %i.ty, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i: ; preds = %bb.bh
  %i.tz = load i64, ptr %i.te, align 8, !tbaa !222, !noalias !217
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ua) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !217
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !217
  br label %.body413.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE7emplaceIJS2_EEEN9__gnu_cxx17__normal_iteratorIPS2_S4_EENS7_IPKS2_S4_EEDpOT_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !217
  %.pr.i410.i = load ptr, ptr %15, align 8, !tbaa !17, !noalias !217 ; 2 uses
  %i.ub = icmp eq ptr %.pr.i410.i, null
  br i1 %i.ub, label %bb.bi, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i, !prof !280

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.uc = load ptr, ptr %i.td, align 8, !tbaa !223, !noalias !217 ; 2 uses
  %i.ud = icmp eq ptr %i.uc, %i.tg
  br i1 %i.ud, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i: ; preds = %bb.bi
  %i.ue = load i64, ptr %i.tg, align 8, !tbaa !222, !noalias !217
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.uc, i64 noundef %i.uf) #21
  %.pr.pre.i.i.i = load ptr, ptr %15, align 8, !tbaa !17, !noalias !217 ; 2 uses
  %.not.i.i.i411.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not.i.i.i411.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i, !prof !280

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %.noexc412.i
  %i.ug = phi ptr [ %.pr.pre.i.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i ], [ %.pr.i410.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ], [ %i.ta, %.noexc412.i ] ; 5 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 1
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !22, !range !35, !noundef !36
  %i.uj = trunc nuw i8 %i.ui to i1
  br i1 %i.uj, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 48
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !281 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ul, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8 ; 4 uses
  %i.un = load atomic i64, ptr %i.um acquire, align 8 ; 2 uses
  %i.uo = icmp eq i64 %i.un, 4294967297
  %i.up = trunc i64 %i.un to i32                  ; 2 uses
  br i1 %i.uo, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.um, align 8, !tbaa !282
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ul, i64 12
  store i32 0, ptr %i.uq, align 4, !tbaa !284
  %i.ur = load ptr, ptr %i.ul, align 8, !tbaa !285
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %i.ut = load ptr, ptr %i.us, align 8
  call void %i.ut(ptr noundef nonnull align 8 dereferenceable(16) %i.ul) #18, !inline_history !287
  %i.uu = load ptr, ptr %i.ul, align 8, !tbaa !285
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  %i.uw = load ptr, ptr %i.uv, align 8
  call void %i.uw(ptr noundef nonnull align 8 dereferenceable(16) %i.ul) #18, !inline_history !287
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.ux = load i8, ptr @__libc_single_threaded, align 1, !tbaa !222, !noalias !217
  %.not.i.i.i.i.i480.i = icmp eq i8 %i.ux, 0
  br i1 %.not.i.i.i.i.i480.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.uy = add nsw i32 %i.up, -1
  store i32 %i.uy, ptr %i.um, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.uz = atomicrmw volatile add ptr %i.um, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.up, %bb.bn ], [ %i.uz, %bb.bo ]
  %i.va = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.va, label %bb.bp, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !288

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ul) #18
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bl, %bb.bj
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !223 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ug, i64 24 ; 2 uses
  %i.ve = icmp eq ptr %i.vc, %i.vd
  br i1 %i.ve, label %_ZN5arrow6Status5StateD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.vf = load i64, ptr %i.vd, align 8, !tbaa !222
  %i.vg = add i64 %i.vf, 1
  call void @_ZdlPvm(ptr noundef %i.vc, i64 noundef %i.vg) #21
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i

_ZN5arrow6Status5StateD2Ev.exit.i.i:              ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ug, i64 noundef 56) #21
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i: ; preds = %bb.bi, %_ZN5arrow6Status5StateD2Ev.exit.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !217
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !217
  %i.vh = load ptr, ptr %27, align 16, !tbaa !257, !noalias !217 ; 2 uses
  %i.vi = load ptr, ptr %i.mg, align 8, !tbaa !257, !noalias !217 ; 2 uses
  %i.vj = icmp eq ptr %i.vh, %i.vi
  br i1 %i.vj, label %.critedge153.i, label %.lr.ph546.i

.lr.ph546.i:                                      ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i
  %i.vk = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.vn = load ptr, ptr %28, align 16, !tbaa !257, !noalias !217
  %i.vo = load ptr, ptr %i.sw, align 8, !tbaa !257, !noalias !217
  %i.vp = icmp eq ptr %i.vn, %i.vo
  br i1 %i.vp, label %.critedge153.i, label %.lr.ph546.split.i

.lr.ph546.split.i:                                ; preds = %.lr.ph546.i, %.critedge.i
  %.sroa.0494.0545.i = phi ptr [ %i.xk, %.critedge.i ], [ %i.vh, %.lr.ph546.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0494.0545.i) ]
  %i.vq = load ptr, ptr %28, align 16, !tbaa !257, !noalias !217 ; 2 uses
  %i.vr = load ptr, ptr %i.sw, align 8, !tbaa !257, !noalias !217 ; 2 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %.critedge.i, label %.lr.ph.i

bb.bq:                                            ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit.i
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.0490.0544.i, i64 8 ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.vr
  br i1 %i.vu, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph546.split.i, %bb.bq
  %.sroa.0490.0544.i = phi ptr [ %i.vt, %bb.bq ], [ %i.vq, %.lr.ph546.split.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0490.0544.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18, !noalias !217
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18, !noalias !217
  invoke void @_ZNK5arrow8internal16PlatformFilename4JoinERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::internal::PlatformFilename") align 8 %41, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0494.0545.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0490.0544.i)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %.lr.ph.i
  %i.vv = load ptr, ptr %29, align 8, !tbaa !223, !noalias !217
  %i.vw = load i64, ptr %i.c, align 8, !tbaa !221, !noalias !217
  invoke void @_ZNK5arrow8internal16PlatformFilename4JoinESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.16") align 8 %40, ptr noundef nonnull align 8 dereferenceable(8) %41, i64 %i.vw, ptr %i.vv)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %bb.br
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18, !noalias !217
  %i.vx = load ptr, ptr %40, align 8, !tbaa !17, !noalias !217
  %i.vy = icmp eq ptr %i.vx, null                 ; 2 uses
  br i1 %i.vy, label %bb.bx, label %bb.bt, !prof !20

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %40) #18
  br label %bb.ca

bb.bu:                                            ; preds = %.lr.ph.i
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %bb.br
  %i.wa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #18
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pn141.i = phi { ptr, i32 } [ %i.wa, %bb.bv ], [ %i.vz, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18, !noalias !217
  br label %.body413.i

bb.bx:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18, !noalias !217
  invoke void @_ZN5arrow8internal16PlatformFilenameC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.vk)
          to label %_ZNO5arrow6ResultINS_8internal16PlatformFilenameEE11ValueUnsafeEv.exit.i unwind label %bb.ci

_ZNO5arrow6ResultINS_8internal16PlatformFilenameEE11ValueUnsafeEv.exit.i: ; preds = %bb.bx
  %i.wb = load ptr, ptr %i.vl, align 8, !tbaa !259, !noalias !217 ; 3 uses
  %i.wc = load ptr, ptr %i.vm, align 16, !tbaa !249, !noalias !217
  %.not.i.i.i = icmp eq ptr %i.wb, %i.wc
  br i1 %.not.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZNO5arrow6ResultINS_8internal16PlatformFilenameEE11ValueUnsafeEv.exit.i
  invoke void @_ZN5arrow8internal16PlatformFilenameC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.wb, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %.noexc416.i unwind label %bb.cj

.noexc416.i:                                      ; preds = %bb.by
  %i.wd = load ptr, ptr %i.vl, align 8, !tbaa !259, !noalias !217
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  store ptr %i.we, ptr %i.vl, align 8, !tbaa !259, !noalias !217
  br label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE9push_backEOS2_.exit.i

bb.bz:                                            ; preds = %_ZNO5arrow6ResultINS_8internal16PlatformFilenameEE11ValueUnsafeEv.exit.i
  invoke void @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr %i.wb, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE9push_backEOS2_.exit.i unwind label %bb.cj

_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE9push_backEOS2_.exit.i: ; preds = %bb.bz, %.noexc416.i
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18, !noalias !217
  br label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE9push_backEOS2_.exit.i, %bb.bt
  %i.wf = load ptr, ptr %40, align 8, !tbaa !17, !noalias !217 ; 2 uses
  %i.wg = icmp eq ptr %i.wf, null
  br i1 %i.wg, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i, !prof !20

_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i: ; preds = %bb.ca
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.vk) #18
  %.pr.i418.i = load ptr, ptr %40, align 8, !tbaa !17, !noalias !217 ; 2 uses
  %.not.i.i419.i = icmp eq ptr %.pr.i418.i, null
  br i1 %.not.i.i419.i, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit.i, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i, !prof !280

_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i, %bb.ca
  %i.wh = phi ptr [ %.pr.i418.i, %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i ], [ %i.wf, %bb.ca ] ; 5 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 1
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !22, !range !35, !noundef !36
  %i.wk = trunc nuw i8 %i.wj to i1
  br i1 %i.wk, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit.i, label %bb.cb

bb.cb:                                            ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wh, i64 48
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !281 ; 8 uses
  %.not.i.i.i.i481.i = icmp eq ptr %i.wm, null
  br i1 %.not.i.i.i.i481.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i485.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8 ; 4 uses
  %i.wo = load atomic i64, ptr %i.wn acquire, align 8 ; 2 uses
  %i.wp = icmp eq i64 %i.wo, 4294967297
  %i.wq = trunc i64 %i.wo to i32                  ; 2 uses
  br i1 %i.wp, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %i.wn, align 8, !tbaa !282
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wm, i64 12
  store i32 0, ptr %i.wr, align 4, !tbaa !284
  %i.ws = load ptr, ptr %i.wm, align 8, !tbaa !285
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  %i.wu = load ptr, ptr %i.wt, align 8
  call void %i.wu(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #18, !inline_history !287
  %i.wv = load ptr, ptr %i.wm, align 8, !tbaa !285
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  %i.wx = load ptr, ptr %i.ww, align 8
  call void %i.wx(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #18, !inline_history !287
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i485.i

bb.ce:                                            ; preds = %bb.cc
  %i.wy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !222, !noalias !217
  %.not.i.i.i.i.i482.i = icmp eq i8 %i.wy, 0
  br i1 %.not.i.i.i.i.i482.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.wz = add nsw i32 %i.wq, -1
  store i32 %i.wz, ptr %i.wn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i483.i

bb.cg:                                            ; preds = %bb.ce
  %i.xa = atomicrmw volatile add ptr %i.wn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i483.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i483.i: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i.i.i484.i = phi i32 [ %i.wq, %bb.cf ], [ %i.xa, %bb.cg ]
  %i.xb = icmp eq i32 %.0.i.i.i.i.i.i484.i, 1
  br i1 %i.xb, label %bb.ch, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i485.i, !prof !288

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i483.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #18
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i485.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i485.i: ; preds = %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i483.i, %bb.cd, %bb.cb
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !223 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wh, i64 24 ; 2 uses
  %i.xf = icmp eq ptr %i.xd, %i.xe
  br i1 %i.xf, label %_ZN5arrow6Status5StateD2Ev.exit.i487.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i486.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i486.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i485.i
  %i.xg = load i64, ptr %i.xe, align 8, !tbaa !222
  %i.xh = add i64 %i.xg, 1
  call void @_ZdlPvm(ptr noundef %i.xd, i64 noundef %i.xh) #21
  br label %_ZN5arrow6Status5StateD2Ev.exit.i487.i

_ZN5arrow6Status5StateD2Ev.exit.i487.i:           ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i485.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i486.i
  call void @_ZdlPvm(ptr noundef nonnull %i.wh, i64 noundef 56) #21
  br label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit.i

_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit.i: ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i487.i, %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18, !noalias !217
  br i1 %i.vy, label %bb.bq, label %.loopexit540.i

bb.ci:                                            ; preds = %bb.bx
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.bz, %bb.by
  %i.xj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #18
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn143.i = phi { ptr, i32 } [ %i.xj, %bb.cj ], [ %i.xi, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18, !noalias !217
  call void @_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %40) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18, !noalias !217
  br label %.body413.i

.critedge.i:                                      ; preds = %bb.bq, %.lr.ph546.split.i
  %i.xk = getelementptr inbounds nuw i8, ptr %.sroa.0494.0545.i, i64 8 ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.vi
  br i1 %i.xl, label %.critedge153.i, label %.lr.ph546.split.i, !llvm.loop !289

.critedge153.i:                                   ; preds = %.critedge.i, %.lr.ph546.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i
  store ptr null, ptr %43, align 8, !tbaa !17, !alias.scope !217
  %i.xm = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.xn = load <2 x ptr>, ptr %26, align 16, !tbaa !257, !noalias !217
  store <2 x ptr> %i.xn, ptr %i.xm, align 8, !tbaa !257, !alias.scope !217
  %i.xo = getelementptr inbounds nuw i8, ptr %43, i64 24
  %i.xp = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.xq = load ptr, ptr %i.xp, align 16, !tbaa !249, !noalias !217
  store ptr %i.xq, ptr %i.xo, align 8, !tbaa !249, !alias.scope !217
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %26, i8 0, i64 24, i1 false), !noalias !217
  br label %.loopexit540.i

.loopexit540.i:                                   ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit.i, %.critedge153.i, %bb.ay
  %i.xr = load ptr, ptr %35, align 8, !tbaa !17, !noalias !217 ; 2 uses
  %i.xs = icmp eq ptr %i.xr, null
  br i1 %i.xs, label %bb.cl, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i.i, !prof !20

bb.cl:                                            ; preds = %.loopexit540.i
  %i.xt = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !258, !noalias !217 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow2io8internal14ConnectLibHdfsEPPNS1_11LibHdfsShimE:bb.a
  %i.ahc = load atomic i64, ptr %i.ahb acquire, align 8 ; 2 uses
  %i.ahd = icmp eq i64 %i.ahc, 4294967297
  %i.ahe = trunc i64 %i.ahc to i32                ; 2 uses
  br i1 %i.ahd, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i32 0, ptr %i.ahb, align 8, !tbaa !282
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.aha, i64 12
  store i32 0, ptr %i.ahf, align 4, !tbaa !284
  %i.ahg = load ptr, ptr %i.aha, align 8, !tbaa !285
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16
  %i.ahi = load ptr, ptr %i.ahh, align 8
  call void %i.ahi(ptr noundef nonnull align 8 dereferenceable(16) %i.aha) #18, !inline_history !319
  %i.ahj = load ptr, ptr %i.aha, align 8, !tbaa !285
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 24
  %i.ahl = load ptr, ptr %i.ahk, align 8
  call void %i.ahl(ptr noundef nonnull align 8 dereferenceable(16) %i.aha) #18, !inline_history !319
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i103

bb.en:                                            ; preds = %bb.el
  %i.ahm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !222, !noalias !308
  %.not.i.i.i.i.i.i100 = icmp eq i8 %i.ahm, 0
  br i1 %.not.i.i.i.i.i.i100, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ahn = add nsw i32 %i.ahe, -1
  store i32 %i.ahn, ptr %i.ahb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i101

bb.ep:                                            ; preds = %bb.en
  %i.aho = atomicrmw volatile add ptr %i.ahb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i101

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i101: ; preds = %bb.ep, %bb.eo
  %.0.i.i.i.i.i.i.i102 = phi i32 [ %i.ahe, %bb.eo ], [ %i.aho, %bb.ep ]
  %i.ahp = icmp eq i32 %.0.i.i.i.i.i.i.i102, 1
  br i1 %i.ahp, label %bb.eq, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i103, !prof !288

bb.eq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i101
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aha) #18
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i103

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i103: ; preds = %bb.eq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i101, %bb.em, %bb.ek
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !223 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.agv, i64 24 ; 2 uses
  %i.aht = icmp eq ptr %i.ahr, %i.ahs
  br i1 %i.aht, label %_ZN5arrow6Status5StateD2Ev.exit.i.i105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i103
  %i.ahu = load i64, ptr %i.ahs, align 8, !tbaa !222
  %i.ahv = add i64 %i.ahu, 1
  call void @_ZdlPvm(ptr noundef %i.ahr, i64 noundef %i.ahv) #21
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i105

_ZN5arrow6Status5StateD2Ev.exit.i.i105:           ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104
  call void @_ZdlPvm(ptr noundef nonnull %i.agv, i64 noundef 56) #21
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i123

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i123: ; preds = %bb.ej, %_ZN5arrow6Status5StateD2Ev.exit.i.i105, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i98, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !308
  invoke void @_ZN5arrow8internal15GetEnvVarNativeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.20") align 8 %2, i64 17, ptr nonnull @.str.86)
          to label %.noexc73.i unwind label %bb.fd

.noexc73.i:                                       ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i123
  %i.ahw = load ptr, ptr %2, align 8, !tbaa !17, !noalias !308 ; 2 uses
  %i.ahx = icmp eq ptr %i.ahw, null
  br i1 %i.ahx, label %bb.er, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i67.i

bb.er:                                            ; preds = %.noexc73.i
  %i.ahy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ahz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.ahy)
          to label %bb.et unwind label %bb.es     ; 0 uses

bb.es:                                            ; preds = %bb.er
  %i.aia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !308
  br label %.body65.i

bb.et:                                            ; preds = %bb.er
  %.pr.i68.i = load ptr, ptr %2, align 8, !tbaa !17, !noalias !308 ; 2 uses
  %i.aib = icmp eq ptr %.pr.i68.i, null
  br i1 %i.aib, label %bb.eu, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i67.i, !prof !280

bb.eu:                                            ; preds = %bb.et
  %i.aic = load ptr, ptr %i.ahy, align 8, !tbaa !223, !noalias !308 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.aie = icmp eq ptr %i.aic, %i.aid
  br i1 %i.aie, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i72.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i69.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i69.i: ; preds = %bb.eu
  %i.aif = load i64, ptr %i.aid, align 8, !tbaa !222, !noalias !308
  %i.aig = add i64 %i.aif, 1
  call void @_ZdlPvm(ptr noundef %i.aic, i64 noundef %i.aig) #21
  %.pr.pre.i.i70.i = load ptr, ptr %2, align 8, !tbaa !17, !noalias !308 ; 2 uses
  %.not.i.i.i71.i = icmp eq ptr %.pr.pre.i.i70.i, null
  br i1 %.not.i.i.i71.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i72.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i67.i, !prof !280

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i67.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i69.i, %bb.et, %.noexc73.i
  %i.aih = phi ptr [ %.pr.pre.i.i70.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i69.i ], [ %.pr.i68.i, %bb.et ], [ %i.ahw, %.noexc73.i ] ; 5 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 1
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !22, !range !35, !noundef !36
  %i.aik = trunc nuw i8 %i.aij to i1
  br i1 %i.aik, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i72.i, label %bb.ev

bb.ev:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i67.i
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aih, i64 48
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !281 ; 8 uses
  %.not.i.i.i.i115.i = icmp eq ptr %i.aim, null
  br i1 %.not.i.i.i.i115.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i119.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 8 ; 4 uses
  %i.aio = load atomic i64, ptr %i.ain acquire, align 8 ; 2 uses
  %i.aip = icmp eq i64 %i.aio, 4294967297
  %i.aiq = trunc i64 %i.aio to i32                ; 2 uses
  br i1 %i.aip, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store i32 0, ptr %i.ain, align 8, !tbaa !282
  %i.air = getelementptr inbounds nuw i8, ptr %i.aim, i64 12
  store i32 0, ptr %i.air, align 4, !tbaa !284
  %i.ais = load ptr, ptr %i.aim, align 8, !tbaa !285
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 16
  %i.aiu = load ptr, ptr %i.ait, align 8
  call void %i.aiu(ptr noundef nonnull align 8 dereferenceable(16) %i.aim) #18, !inline_history !319
  %i.aiv = load ptr, ptr %i.aim, align 8, !tbaa !285
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 24
  %i.aix = load ptr, ptr %i.aiw, align 8
  call void %i.aix(ptr noundef nonnull align 8 dereferenceable(16) %i.aim) #18, !inline_history !319
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i119.i

bb.ey:                                            ; preds = %bb.ew
  %i.aiy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !222, !noalias !308
  %.not.i.i.i.i.i116.i = icmp eq i8 %i.aiy, 0
  br i1 %.not.i.i.i.i.i116.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aiz = add nsw i32 %i.aiq, -1
  store i32 %i.aiz, ptr %i.ain, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i117.i

bb.fa:                                            ; preds = %bb.ey
  %i.aja = atomicrmw volatile add ptr %i.ain, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i117.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i117.i: ; preds = %bb.fa, %bb.ez
  %.0.i.i.i.i.i.i118.i = phi i32 [ %i.aiq, %bb.ez ], [ %i.aja, %bb.fa ]
  %i.ajb = icmp eq i32 %.0.i.i.i.i.i.i118.i, 1
  br i1 %i.ajb, label %bb.fb, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i119.i, !prof !288

bb.fb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i117.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aim) #18
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i119.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i119.i: ; preds = %bb.fb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i117.i, %bb.ex, %bb.ev
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aih, i64 8
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !223 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aih, i64 24 ; 2 uses
  %i.ajf = icmp eq ptr %i.ajd, %i.aje
  br i1 %i.ajf, label %_ZN5arrow6Status5StateD2Ev.exit.i121.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i120.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i120.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i119.i
  %i.ajg = load i64, ptr %i.aje, align 8, !tbaa !222
  %i.ajh = add i64 %i.ajg, 1
  call void @_ZdlPvm(ptr noundef %i.ajd, i64 noundef %i.ajh) #21
  br label %_ZN5arrow6Status5StateD2Ev.exit.i121.i

_ZN5arrow6Status5StateD2Ev.exit.i121.i:           ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i119.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i120.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aih, i64 noundef 56) #21
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i72.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i72.i: ; preds = %bb.eu, %_ZN5arrow6Status5StateD2Ev.exit.i121.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i67.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i69.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !308
  %i.aji = load ptr, ptr %12, align 16, !tbaa !257, !noalias !308 ; 2 uses
  %i.ajj = load ptr, ptr %i.aec, align 8, !tbaa !257, !noalias !308 ; 2 uses
  %i.ajk = icmp eq ptr %i.aji, %i.ajj
  br i1 %i.ajk, label %.critedge.i111, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i72.i
  %i.ajl = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.fe

bb.fc:                                            ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit.i108
  %i.ajo = getelementptr inbounds nuw i8, ptr %.sroa.0124.0135.i, i64 8 ; 2 uses
  %i.ajp = icmp eq ptr %i.ajo, %i.ajj
  br i1 %i.ajp, label %.critedge.i111, label %bb.fe

bb.fd:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i123, %bb.dp
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  br label %.body65.i

bb.fe:                                            ; preds = %bb.fc, %.lr.ph.i106
  %.sroa.0124.0135.i = phi ptr [ %i.aji, %.lr.ph.i106 ], [ %i.ajo, %bb.fc ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0124.0135.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18, !noalias !308
  %i.ajr = load ptr, ptr %8, align 8, !tbaa !223, !noalias !308
  %i.ajs = load i64, ptr %i.acm, align 8, !tbaa !221, !noalias !308
  invoke void @_ZNK5arrow8internal16PlatformFilename4JoinESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.16") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0124.0135.i, i64 %i.ajs, ptr %i.ajr)
          to label %bb.ff unwind label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.ajt = load ptr, ptr %13, align 8, !tbaa !17, !noalias !308
  %i.aju = icmp eq ptr %i.ajt, null               ; 2 uses
  br i1 %i.aju, label %bb.fi, label %bb.fg, !prof !20

bb.fg:                                            ; preds = %bb.ff
  call void @_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(8) %13) #18
  br label %bb.fl

bb.fh:                                            ; preds = %bb.fe
  %i.ajv = landingpad { ptr, i32 }
          cleanup
  br label %.body65.i

bb.fi:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18, !noalias !308
  invoke void @_ZN5arrow8internal16PlatformFilenameC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.ajl)
          to label %_ZNO5arrow6ResultINS_8internal16PlatformFilenameEE11ValueUnsafeEv.exit.i113 unwind label %bb.fn

_ZNO5arrow6ResultINS_8internal16PlatformFilenameEE11ValueUnsafeEv.exit.i113: ; preds = %bb.fi
  %i.ajw = load ptr, ptr %i.ajm, align 8, !tbaa !259, !noalias !308 ; 3 uses
  %i.ajx = load ptr, ptr %i.ajn, align 16, !tbaa !249, !noalias !308
  %.not.i.i77.i = icmp eq ptr %i.ajw, %i.ajx
  br i1 %.not.i.i77.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %_ZNO5arrow6ResultINS_8internal16PlatformFilenameEE11ValueUnsafeEv.exit.i113
  invoke void @_ZN5arrow8internal16PlatformFilenameC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ajw, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc79.i unwind label %bb.fo

.noexc79.i:                                       ; preds = %bb.fj
  %i.ajy = load ptr, ptr %i.ajm, align 8, !tbaa !259, !noalias !308
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 8
  store ptr %i.ajz, ptr %i.ajm, align 8, !tbaa !259, !noalias !308
  br label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE9push_backEOS2_.exit.i114

bb.fk:                                            ; preds = %_ZNO5arrow6ResultINS_8internal16PlatformFilenameEE11ValueUnsafeEv.exit.i113
  invoke void @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ajw, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE9push_backEOS2_.exit.i114 unwind label %bb.fo

_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE9push_backEOS2_.exit.i114: ; preds = %bb.fk, %.noexc79.i
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18, !noalias !308
  br label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE9push_backEOS2_.exit.i114, %bb.fg
  %i.aka = load ptr, ptr %13, align 8, !tbaa !17, !noalias !308 ; 2 uses
  %i.akb = icmp eq ptr %i.aka, null
  br i1 %i.akb, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i112, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i107, !prof !20

_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i112: ; preds = %bb.fl
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ajl) #18
  %.pr.i81.i = load ptr, ptr %13, align 8, !tbaa !17, !noalias !308 ; 2 uses
  %.not.i.i82.i = icmp eq ptr %.pr.i81.i, null
  br i1 %.not.i.i82.i, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit.i108, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i107, !prof !280

_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i107: ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i112, %bb.fl
  %i.akc = phi ptr [ %.pr.i81.i, %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i112 ], [ %i.aka, %bb.fl ]
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 1
  %i.ake = load i8, ptr %i.akd, align 1, !tbaa !22, !range !35, !noundef !36
  %i.akf = trunc nuw i8 %i.ake to i1
  br i1 %i.akf, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit.i108, label %bb.fm

bb.fm:                                            ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i107
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #18
  br label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit.i108

_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit.i108: ; preds = %bb.fm, %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i107, %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !308
  br i1 %i.aju, label %bb.fc, label %.loopexit.i109

bb.fn:                                            ; preds = %bb.fi
  %i.akg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fk, %bb.fj
  %i.akh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #18
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.pn37.i = phi { ptr, i32 } [ %i.akh, %bb.fo ], [ %i.akg, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18, !noalias !308
  call void @_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !308
  br label %.body65.i

.critedge.i111:                                   ; preds = %bb.fc, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i72.i
  store ptr null, ptr %47, align 8, !tbaa !17, !alias.scope !308
  %i.aki = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.akj = load <2 x ptr>, ptr %7, align 16, !tbaa !257, !noalias !308
  store <2 x ptr> %i.akj, ptr %i.aki, align 8, !tbaa !257, !alias.scope !308
  %i.akk = getelementptr inbounds nuw i8, ptr %47, i64 24
  %i.akl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.akm = load ptr, ptr %i.akl, align 16, !tbaa !249, !noalias !308
  store ptr %i.akm, ptr %i.akk, align 8, !tbaa !249, !alias.scope !308
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !308
  br label %.loopexit.i109

.loopexit.i109:                                   ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit.i108, %.critedge.i111
  %i.akn = load ptr, ptr %12, align 16, !tbaa !258, !noalias !308 ; 3 uses
  %i.ako = load ptr, ptr %i.aec, align 8, !tbaa !259, !noalias !308 ; 2 uses
  %.not4.i.i.i83.i = icmp eq ptr %i.akn, %i.ako
  br i1 %.not4.i.i.i83.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i84.i

.lr.ph.i.i.i84.i:                                 ; preds = %.loopexit.i109, %.lr.ph.i.i.i84.i
  %.05.i.i.i85.i = phi ptr [ %i.akp, %.lr.ph.i.i.i84.i ], [ %i.akn, %.loopexit.i109 ] ; 2 uses
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i85.i) #18
  %i.akp = getelementptr inbounds nuw i8, ptr %.05.i.i.i85.i, i64 8 ; 2 uses
  %.not.i.i.i86.i = icmp eq ptr %i.akp, %i.ako
  br i1 %.not.i.i.i86.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i84.i, !llvm.loop !260

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i84.i
  %.pr.i87.i = load ptr, ptr %12, align 16, !tbaa !258, !noalias !308
  br label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %.loopexit.i109
  %i.akq = phi ptr [ %.pr.i87.i, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.akn, %.loopexit.i109 ] ; 3 uses
  %.not.i.i1.i88.i = icmp eq ptr %i.akq, null
  br i1 %.not.i.i1.i88.i, label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit.i110, label %bb.fq

bb.fq:                                            ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.akr = load ptr, ptr %i.aee, align 16, !tbaa !249, !noalias !308
  %i.aks = ptrtoint ptr %i.akr to i64
  %i.akt = ptrtoint ptr %i.akq to i64
  %i.aku = sub i64 %i.aks, %i.akt
  call void @_ZdlPvm(ptr noundef nonnull %i.akq, i64 noundef %i.aku) #21
  br label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit.i110

_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit.i110: ; preds = %bb.fq, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !308
  br label %bb.fr

.body65.i:                                        ; preds = %bb.fp, %bb.fh, %bb.fd, %bb.es, %bb.ei
  %.pn37.pn.pn.i = phi { ptr, i32 } [ %i.aia, %bb.es ], [ %.pn9.i.i, %bb.ei ], [ %i.ajq, %bb.fd ], [ %.pn37.i, %bb.fp ], [ %i.ajv, %bb.fh ]
  call void @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !308
  call void @_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !308
  br label %bb.fw

bb.fr:                                            ; preds = %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit.i110, %bb.dn
  %i.akv = load ptr, ptr %9, align 8, !tbaa !17, !noalias !308 ; 2 uses
  %i.akw = icmp eq ptr %i.akv, null
  br i1 %i.akw, label %bb.fs, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i.i87, !prof !20

bb.fs:                                            ; preds = %bb.fr
  %i.akx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !258, !noalias !308 ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !259, !noalias !308 ; 2 uses
  %.not4.i.i.i.i.i.i.i89 = icmp eq ptr %i.aky, %i.ala
  br i1 %.not4.i.i.i.i.i.i.i89, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i95, label %.lr.ph.i.i.i.i.i.i.i90

.lr.ph.i.i.i.i.i.i.i90:                           ; preds = %bb.fs, %.lr.ph.i.i.i.i.i.i.i90
  %.05.i.i.i.i.i.i.i91 = phi ptr [ %i.alb, %.lr.ph.i.i.i.i.i.i.i90 ], [ %i.aky, %bb.fs ] ; 2 uses
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i91) #18
  %i.alb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i91, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i92 = icmp eq ptr %i.alb, %i.ala
  br i1 %.not.i.i.i.i.i.i.i92, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i93, label %.lr.ph.i.i.i.i.i.i.i90, !llvm.loop !260

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i93: ; preds = %.lr.ph.i.i.i.i.i.i.i90
  %.pr.i.i.i.i.i94 = load ptr, ptr %i.akx, align 8, !tbaa !258, !noalias !308
  br label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i95

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i95: ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i93, %bb.fs
  %i.alc = phi ptr [ %.pr.i.i.i.i.i94, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i93 ], [ %i.aky, %bb.fs ] ; 3 uses
  %.not.i.i1.i.i.i.i.i96 = icmp eq ptr %i.alc, null
  br i1 %.not.i.i1.i.i.i.i.i96, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i.i97, label %bb.ft

bb.ft:                                            ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i95
  %i.ald = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !249, !noalias !308
  %i.alf = ptrtoint ptr %i.ale to i64
  %i.alg = ptrtoint ptr %i.alc to i64
  %i.alh = sub i64 %i.alf, %i.alg
  call void @_ZdlPvm(ptr noundef nonnull %i.alc, i64 noundef %i.alh) #21
  br label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i.i97

_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i.i97: ; preds = %bb.ft, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i95
  %.pr.i89.i = load ptr, ptr %9, align 8, !tbaa !17, !noalias !308 ; 2 uses
  %.not.i.i90.i = icmp eq ptr %.pr.i89.i, null
  br i1 %.not.i.i90.i, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit.i88, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i.i87, !prof !280

_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i.i87: ; preds = %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i.i97, %bb.fr
  %i.ali = phi ptr [ %.pr.i89.i, %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i.i97 ], [ %i.akv, %bb.fr ]
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 1
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !22, !range !35, !noundef !36
  %i.all = trunc nuw i8 %i.alk to i1
  br i1 %i.all, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit.i88, label %bb.fu

bb.fu:                                            ; preds = %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i.i87
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #18
end_hunk_1
begin_hunk_2_@_ZN5arrow2io8internal14ConnectLibHdfsEPPNS1_11LibHdfsShimE:bb.a
  %.pr.i181 = load ptr, ptr %43, align 8, !tbaa !17 ; 2 uses
  %.not.i.i182 = icmp eq ptr %.pr.i181, null
  br i1 %.not.i.i182, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit183, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i171, !prof !280

_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i171: ; preds = %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i180, %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit170
  %i.aox = phi ptr [ %.pr.i181, %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i180 ], [ %i.aon, %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit170 ]
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 1
  %i.aoz = load i8, ptr %i.aoy, align 1, !tbaa !22, !range !35, !noundef !36
  %i.apa = trunc nuw i8 %i.aoz to i1
  br i1 %i.apa, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit183, label %bb.gp

bb.gp:                                            ; preds = %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i171
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %43) #18
  br label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit183

_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit183: ; preds = %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i180, %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i171, %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  br i1 %i.amx, label %bb.gu, label %_ZN5arrow6Status7IOErrorIJRA37_KcEEES0_DpOT_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %_ZN5arrow6ResultIPvED2Ev.exit150
  %.pn42 = phi { ptr, i32 } [ %i.and, %_ZN5arrow6ResultIPvED2Ev.exit150 ], [ %i.amy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %i.amy, %bb.gc ]
  call void @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %48) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  br label %bb.gq

bb.gq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %bb.fz
  %.pn45 = phi { ptr, i32 } [ %i.amg, %bb.fz ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ]
  call void @_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %47) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  br label %.body129

.body129:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i, %bb.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.pn45.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.pn45, %bb.gq ], [ %.pn37.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i ]
  call void @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %44) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  br label %bb.gr

bb.gr:                                            ; preds = %.body129, %bb.da
  %.pn50 = phi { ptr, i32 } [ %i.abd, %bb.da ], [ %.pn45.pn.pn, %.body129 ]
  call void @_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  br label %.body

bb.gs:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.apb = load ptr, ptr @_ZN5arrow2io8internal12_GLOBAL__N_112libhdfs_shimE, align 8, !tbaa !7
  %i.apc = icmp eq ptr %i.apb, null
  br i1 %i.apc, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  invoke void @_ZN5arrow6Status8FromArgsIJRA37_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(37) @.str.28)
          to label %_ZN5arrow6Status7IOErrorIJRA37_KcEEES0_DpOT_.exit unwind label %bb.cz

bb.gu:                                            ; preds = %bb.gs, %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit183
  store ptr @_ZN5arrow2io8internal12_GLOBAL__N_112libhdfs_shimE, ptr %1, align 8, !tbaa !327
  invoke void @_ZN5arrow2io8internal11LibHdfsShim18GetRequiredSymbolsEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) @_ZN5arrow2io8internal12_GLOBAL__N_112libhdfs_shimE)
          to label %_ZN5arrow6Status7IOErrorIJRA37_KcEEES0_DpOT_.exit unwind label %bb.cz

.critedge56:                                      ; preds = %bb.cy
  call void @_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %43) #18
  br label %_ZN5arrow6Status7IOErrorIJRA37_KcEEES0_DpOT_.exit.sink.split

.critedge57:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.apd = load ptr, ptr %44, align 16, !tbaa !258 ; 3 uses
  %i.ape = load ptr, ptr %i.abf, align 8, !tbaa !259 ; 2 uses
  %.not4.i.i.i185 = icmp eq ptr %i.apd, %i.ape
  br i1 %.not4.i.i.i185, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i191, label %.lr.ph.i.i.i186

.lr.ph.i.i.i186:                                  ; preds = %.critedge57, %.lr.ph.i.i.i186
  %.05.i.i.i187 = phi ptr [ %i.apf, %.lr.ph.i.i.i186 ], [ %i.apd, %.critedge57 ] ; 2 uses
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i187) #18
  %i.apf = getelementptr inbounds nuw i8, ptr %.05.i.i.i187, i64 8 ; 2 uses
  %.not.i.i.i188 = icmp eq ptr %i.apf, %i.ape
  br i1 %.not.i.i.i188, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i189, label %.lr.ph.i.i.i186, !llvm.loop !260

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i189: ; preds = %.lr.ph.i.i.i186
  %.pr.i190 = load ptr, ptr %44, align 16, !tbaa !258
  br label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i191

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i191: ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i189, %.critedge57
  %i.apg = phi ptr [ %.pr.i190, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i189 ], [ %i.apd, %.critedge57 ] ; 3 uses
  %.not.i.i1.i192 = icmp eq ptr %i.apg, null
  br i1 %.not.i.i1.i192, label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit193, label %bb.gv

bb.gv:                                            ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i191
  %i.aph = load ptr, ptr %i.abi, align 16, !tbaa !249
  %i.api = ptrtoint ptr %i.aph to i64
  %i.apj = ptrtoint ptr %i.apg to i64
  %i.apk = sub i64 %i.api, %i.apj
  call void @_ZdlPvm(ptr noundef nonnull %i.apg, i64 noundef %i.apk) #21
  br label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit193

_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit193: ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i191, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  %i.apl = load ptr, ptr %43, align 8, !tbaa !17  ; 2 uses
  %i.apm = icmp eq ptr %i.apl, null
  br i1 %i.apm, label %bb.gw, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i194, !prof !20

bb.gw:                                            ; preds = %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit193
  %i.apn = load ptr, ptr %i.abe, align 8, !tbaa !258 ; 3 uses
  %i.apo = load ptr, ptr %i.abg, align 8, !tbaa !259 ; 2 uses
  %.not4.i.i.i.i.i.i195 = icmp eq ptr %i.apn, %i.apo
  br i1 %.not4.i.i.i.i.i.i195, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i201, label %.lr.ph.i.i.i.i.i.i196

.lr.ph.i.i.i.i.i.i196:                            ; preds = %bb.gw, %.lr.ph.i.i.i.i.i.i196
  %.05.i.i.i.i.i.i197 = phi ptr [ %i.app, %.lr.ph.i.i.i.i.i.i196 ], [ %i.apn, %bb.gw ] ; 2 uses
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i197) #18
  %i.app = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i197, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i198 = icmp eq ptr %i.app, %i.apo
  br i1 %.not.i.i.i.i.i.i198, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i199, label %.lr.ph.i.i.i.i.i.i196, !llvm.loop !260

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i199: ; preds = %.lr.ph.i.i.i.i.i.i196
  %.pr.i.i.i.i200 = load ptr, ptr %i.abe, align 8, !tbaa !258
  br label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i201

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i201: ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i199, %bb.gw
  %i.apq = phi ptr [ %.pr.i.i.i.i200, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i199 ], [ %i.apn, %bb.gw ] ; 3 uses
  %.not.i.i1.i.i.i.i202 = icmp eq ptr %i.apq, null
  br i1 %.not.i.i1.i.i.i.i202, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i203, label %bb.gx

bb.gx:                                            ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i201
  %i.apr = load ptr, ptr %i.abj, align 8, !tbaa !249
  %i.aps = ptrtoint ptr %i.apr to i64
  %i.apt = ptrtoint ptr %i.apq to i64
  %i.apu = sub i64 %i.aps, %i.apt
  call void @_ZdlPvm(ptr noundef nonnull %i.apq, i64 noundef %i.apu) #21
  br label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i203

_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i203: ; preds = %bb.gx, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i201
  %.pr.i204 = load ptr, ptr %43, align 8, !tbaa !17 ; 2 uses
  %.not.i.i205 = icmp eq ptr %.pr.i204, null
  br i1 %.not.i.i205, label %_ZN5arrow6Status7IOErrorIJRA37_KcEEES0_DpOT_.exit.sink.split, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i194, !prof !280

_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i194: ; preds = %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i203, %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit193
  %i.apv = phi ptr [ %.pr.i204, %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i203 ], [ %i.apl, %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit193 ]
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 1
  %i.apx = load i8, ptr %i.apw, align 1, !tbaa !22, !range !35, !noundef !36
  %i.apy = trunc nuw i8 %i.apx to i1
  br i1 %i.apy, label %_ZN5arrow6Status7IOErrorIJRA37_KcEEES0_DpOT_.exit.sink.split, label %bb.gy

bb.gy:                                            ; preds = %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i194
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %43) #18
  br label %_ZN5arrow6Status7IOErrorIJRA37_KcEEES0_DpOT_.exit.sink.split

.critedge58:                                      ; preds = %bb.fy
  call void @_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %47) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  call void @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %44) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  call void @_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %43) #18
  br label %_ZN5arrow6Status7IOErrorIJRA37_KcEEES0_DpOT_.exit.sink.split

_ZN5arrow6Status7IOErrorIJRA37_KcEEES0_DpOT_.exit.sink.split: ; preds = %bb.gy, %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i194, %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i203, %.critedge56, %.critedge58
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  br label %_ZN5arrow6Status7IOErrorIJRA37_KcEEES0_DpOT_.exit

_ZN5arrow6Status7IOErrorIJRA37_KcEEES0_DpOT_.exit: ; preds = %_ZN5arrow6Status7IOErrorIJRA37_KcEEES0_DpOT_.exit.sink.split, %bb.gt, %bb.gu, %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit183
  %i.apz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5arrow2io8internal14ConnectLibHdfsEPPNS1_11LibHdfsShimEE4lock) #18 ; 0 uses
  ret void

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479.i, %bb.gr, %bb.cz
  %.pn53 = phi { ptr, i32 } [ %i.abc, %bb.cz ], [ %.pn50, %bb.gr ], [ %.pn143.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479.i ]
  %i.aqa = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5arrow2io8internal14ConnectLibHdfsEPPNS1_11LibHdfsShimEE4lock) #18 ; 0 uses
  resume { ptr, i32 } %.pn53
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow2io8internal12_GLOBAL__N_110try_dlopenERKSt6vectorINS_8internal16PlatformFilenameESaIS5_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %3 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.arrow::Result.2", align 8   ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !329
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.79, i64 noundef 15, ptr noundef %.0.val, i64 noundef %.8.val, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !329
  %i.a = load ptr, ptr %1, align 8, !tbaa !257    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.06, i64 8 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.01.06 = phi ptr [ %i.a, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.06) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZN5arrow8internal18LoadDynamicLibraryERKNS0_16PlatformFilenameE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.2") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01.06)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %5, align 8, !tbaa !17
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.loopexit4.loopexit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6ResultIPvED2Ev.exit29

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.s       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !223, !noalias !332
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !221, !noalias !332
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !332
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.80, i64 noundef 1, ptr noundef %i.q, i64 noundef %i.s, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !332
  %i.t = load ptr, ptr %6, align 8, !tbaa !223    ; 3 uses
  %i.u = load i64, ptr %i.e, align 8, !tbaa !221  ; 6 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !221  ; 5 uses
  %i.w = sub i64 9223372036854775807, %i.v
  %i.x = icmp ult i64 %i.w, %i.u
  br i1 %i.x, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #19
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %bb.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.h
  %i.y = add i64 %i.v, %i.u                       ; 3 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !223    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.g                  ; 2 uses
  br i1 %i.aa, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ab = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ac = load i64, ptr %i.g, align 8
  %i.ad = select i1 %i.aa, i64 15, i64 %i.ac
  %.not.i.i.i.i = icmp ugt i64 %i.y, %i.ad
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not8.i.i.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.u, 1
  br i1 %cond.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = load i8, ptr %i.t, align 1, !tbaa !222
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !222
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.v, i64 noundef 0, ptr noundef %i.t, i64 noundef %i.u)
          to label %bb.p unwind label %.loopexit

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.o
  store i64 %i.y, ptr %i.f, align 8, !tbaa !221
  %i.ag = load ptr, ptr %4, align 8, !tbaa !223
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store i8 0, ptr %i.ah, align 1, !tbaa !222
  %i.ai = load ptr, ptr %6, align 8, !tbaa !223   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.h
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !222
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.pre = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.b, label %bb.q, !prof !335

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !22, !range !35, !noundef !36
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.b, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  br label %bb.b

bb.s:                                             ; preds = %bb.g, %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26

.loopexit:                                        ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.aq = load ptr, ptr %6, align 8, !tbaa !223   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.h
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.t
  %i.as = load i64, ptr %i.h, align 8, !tbaa !222
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26: ; preds = %bb.t, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %lpad.phi, %bb.t ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.au = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.au, null
  br i1 %.not.i.i28, label %_ZN5arrow6ResultIPvED2Ev.exit29, label %bb.u, !prof !20

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !22, !range !35, !noundef !36
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZN5arrow6ResultIPvED2Ev.exit29, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  br label %_ZN5arrow6ResultIPvED2Ev.exit29

_ZN5arrow6ResultIPvED2Ev.exit29:                  ; preds = %bb.v, %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26, %bb.e
  %.pn17.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i26 ], [ %.pn, %bb.u ], [ %.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.aa

.critedge:                                        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %.critedge
  call void @_ZN5arrow6ResultIPvEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  %i.ay = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.x, !prof !20

bb.x:                                             ; preds = %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22, !range !35, !noundef !36
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN5arrow6StatusD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.loopexit4

bb.z:                                             ; preds = %.critedge
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.aa

.loopexit4.loopexit:                              ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !17
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !13
  store ptr %i.bd, ptr %i.j, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.loopexit4

end_hunk_2
begin_hunk_3_@_ZN5arrow2io8internal11LibHdfsShim5UtimeEP13hdfs_internalPKcll:bb.a
  store ptr %i.l, ptr %i.a, align 8, !tbaa !13, !noalias !445
  br label %_ZN5arrow6StatusD2Ev.exit

bb.g:                                             ; preds = %_ZN5arrow8internal11GetSymbolAsIFiP13hdfs_internalPKcllEEENS_6ResultIPT_EEPvS5_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pr.i, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !22, !range !35, !noalias !445, !noundef !36
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow2io8internal12_GLOBAL__N_19SetSymbolILb0EFiP13hdfs_internalPKcllEEENS_6StatusEPvS7_PPT0_.exit

_ZN5arrow2io8internal12_GLOBAL__N_19SetSymbolILb0EFiP13hdfs_internalPKcllEEENS_6StatusEPvS7_PPT0_.exit: ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #18, !noalias !445
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.g, %bb.f, %_ZN5arrow2io8internal12_GLOBAL__N_19SetSymbolILb0EFiP13hdfs_internalPKcllEEENS_6StatusEPvS7_PPT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !445
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !451  ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %bb.h, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a, %_ZN5arrow6StatusD2Ev.exit
  %i.p = phi ptr [ %.pr, %_ZN5arrow6StatusD2Ev.exit ], [ %i.b, %bb.a ]
  %i.q = call noundef i32 %i.p(ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.0 = phi i32 [ %i.q, %_ZN5arrow6StatusD2Ev.exit.thread ], [ 0, %_ZN5arrow6StatusD2Ev.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !281  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !282
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !284
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !285
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !452
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !285
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !452
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !222
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !288

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !223  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !222
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #21
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #21
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !285
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !453
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !222
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !285
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !453
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow2io8internal12_GLOBAL__N_118MakeFilenameVectorERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 16      ; 12 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.arrow::Result.16", align 8  ; 11 uses
  %5 = alloca %"class.arrow::internal::PlatformFilename", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246
  %i.c = load ptr, ptr %1, align 8, !tbaa !242
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.g, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !246
  %i.i = load ptr, ptr %1, align 8, !tbaa !242    ; 2 uses
  %.not24.not = icmp eq ptr %i.h, %i.i
  br i1 %.not24.not, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit
  %i.k = add nuw i64 %.01725, 1                   ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !246
  %i.m = load ptr, ptr %1, align 8, !tbaa !242    ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5
  %.not = icmp ult i64 %i.k, %i.q
  br i1 %.not, label %bb.c, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.thread, !llvm.loop !454

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.r = phi ptr [ %i.i, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  %.01725 = phi i64 [ 0, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.01725 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !223
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !221
  invoke void @_ZN5arrow8internal16PlatformFilename10FromStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.16") align 8 %4, i64 %i.v, ptr %i.t)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %4, align 8, !tbaa !17
  %i.x = icmp eq ptr %i.w, null                   ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.e, !prof !20

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZN5arrow8internal16PlatformFilenameC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZNO5arrow6ResultINS_8internal16PlatformFilenameEE11ValueUnsafeEv.exit unwind label %bb.k

_ZNO5arrow6ResultINS_8internal16PlatformFilenameEE11ValueUnsafeEv.exit: ; preds = %bb.g
  %i.z = load ptr, ptr %2, align 16, !tbaa !258, !nonnull !36, !noundef !36
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.01725
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow8internal16PlatformFilenameaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.l       ; 0 uses

bb.h:                                             ; preds = %_ZNO5arrow6ResultINS_8internal16PlatformFilenameEE11ValueUnsafeEv.exit
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.ac = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i, !prof !20

_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i: ; preds = %bb.i
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #18
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i, !prof !280

_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i, %bb.i
  %i.ae = phi ptr [ %.pr.i, %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i ], [ %i.ac, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22, !range !35, !noundef !36
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  br label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit

_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit: ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %i.x, label %bb.b, label %.loopexit

bb.k:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZNO5arrow6ResultINS_8internal16PlatformFilenameEE11ValueUnsafeEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ai, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.y, %bb.f ]
  call void @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.thread: ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load <2 x ptr>, ptr %2, align 16, !tbaa !257
  store <2 x ptr> %i.al, ptr %i.ak, align 8, !tbaa !257
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !249
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !249
  br label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit

.loopexit:                                        ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit
  %.pre = load ptr, ptr %2, align 16, !tbaa !258  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre26 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !259 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre26
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.pre, %.loopexit ] ; 2 uses
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %.pre26
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !260

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i23 = load ptr, ptr %2, align 16, !tbaa !258
  br label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.aq = phi ptr [ %.pr.i23, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !249
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #21
  br label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !242    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !246  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !223 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !222
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !247

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !242
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !245
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #21
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !17
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !288

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !223    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !222
end_hunk_3
begin_hunk_4_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr %.pre, align 1, !tbaa !222
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !222
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %.pre, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, ptr noundef %.pre, i64 noundef %i.d)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.e, ptr %i.a, align 8, !tbaa !221
  %i.aj = load ptr, ptr %1, align 8, !tbaa !223
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.e
  store i8 0, ptr %i.ak, align 1, !tbaa !222
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !220
  %i.am = load ptr, ptr %1, align 8, !tbaa !223   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !221 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.am, ptr %0, align 8, !tbaa !223
  %i.ar = load i64, ptr %i.g, align 8, !tbaa !222
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !222
  %.pre15 = load i64, ptr %i.a, align 8, !tbaa !221
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.as = phi i64 [ %i.ao, %bb.n ], [ %.pre15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !221
  store ptr %i.g, ptr %1, align 8, !tbaa !223
  store i64 0, ptr %i.a, align 8, !tbaa !221
  store i8 0, ptr %i.g, align 8, !tbaa !222
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  ret void
}

declare void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !221  ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !223    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !20

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1, !tbaa !222
  store i8 %i.v, ptr %i.t, align 1, !tbaa !222
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !222
  store i8 %i.w, ptr %i.m, align 1, !tbaa !222
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !221
  %i.x = load ptr, ptr %0, align 8, !tbaa !223
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !222
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN5arrow8internal15GetEnvVarNativeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.arrow::Result.20") align 8, i64, ptr) local_unnamed_addr #7

declare void @_ZN5arrow8internal16PlatformFilenameC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !222
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !280

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit
  %i.i = phi ptr [ %.pr.pre, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !22, !range !35, !noundef !36
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !257    ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !259  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !249
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5arrow8internal16PlatformFilenameC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !259
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.e, align 8, !tbaa !259
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -8
  tail call void @_ZN5arrow8internal16PlatformFilenameC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !259  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.e, align 8, !tbaa !259
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.b
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %bb.d ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.p, %bb.d ]
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow8internal16PlatformFilenameaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.u) ; 0 uses
  %i.x = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.y = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_.exit, !llvm.loop !457

_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow8internal16PlatformFilenameaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  tail call void @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_insert_auxIS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEOT_.exit, %bb.e
  %i.ab = load ptr, ptr %0, align 8, !tbaa !258
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.d
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !259  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !258    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #19
  unreachable

_ZNKSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  invoke void @_ZN5arrow8internal16PlatformFilenameC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt16allocator_traitsISaIN5arrow8internal16PlatformFilenameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN5arrow8internal16PlatformFilenameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN5arrow8internal16PlatformFilenameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit, %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN5arrow8internal16PlatformFilenameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5arrow8internal16PlatformFilenameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !458

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #18 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #18
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !260

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #19
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #22
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN5arrow8internal16PlatformFilenameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN5arrow8internal16PlatformFilenameEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 8, %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.aa, %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 2 uses
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g

_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 8 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 8 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !458

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #18 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 8
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 2 uses
  tail call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i34) #18
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ae, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !260

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #19
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i36
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #22
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN5arrow8internal16PlatformFilenameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit43 ] ; 2 uses
  tail call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #18
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !260

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow8internal16PlatformFilenameES3_SaIS2_EET0_T_S6_S5_RT1_.exit43
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !249
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #21
  br label %_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5arrow8internal16PlatformFilenameESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameEEvT_S4_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !258
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !259
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !249
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  %i.aq = tail call ptr @__cxa_begin_catch(ptr %i.ap) #18 ; 0 uses
  br label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.ar = extractvalue { ptr, i32 } %i.x, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #18 ; 0 uses
  tail call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #18
  br label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit

end_hunk_4
