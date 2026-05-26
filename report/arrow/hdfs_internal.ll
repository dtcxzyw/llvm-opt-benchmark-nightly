inline.NumInlined: 1811
inline.NumDeleted: 673
begin_hunk_0_@_ZN5arrow2io8internal14ConnectLibHdfsEPPNS1_11LibHdfsShimE:bb.a
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.i, %.preheader.preheader.i
  %i.sk = phi ptr [ %i.sl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.i ], [ %.1107752.i, %.preheader.preheader.i ] ; 2 uses
  %i.sl = getelementptr inbounds i8, ptr %i.sk, i64 -32 ; 3 uses
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !223, !noalias !217 ; 2 uses
  %i.sn = getelementptr inbounds i8, ptr %i.sk, i64 -16 ; 2 uses
  %i.so = icmp eq ptr %i.sm, %i.sn
  br i1 %i.so, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388.i: ; preds = %.preheader.i
  %i.sp = load i64, ptr %i.sn, align 8, !tbaa !222, !noalias !217
  %i.sq = add i64 %i.sp, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.i: ; preds = %.preheader.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388.i
  %i.sr = icmp eq ptr %i.sl, %37
  br i1 %i.sr, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385.i
  %.pn133.pn.pn.pn.pn754.i = phi { ptr, i32 } [ %.pn133.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385.i ], [ %.pn133.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387.i ], [ %.pn133.pn.pn.pn.pn753.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18, !noalias !217
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18, !noalias !217
  br label %bb.cv

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i, %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit406.i
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %.body413.i

_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit406.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378.i
  %i.st = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !249, !noalias !275
  %i.sw = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.sy = load <2 x ptr>, ptr %i.st, align 8, !tbaa !257, !noalias !275
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.st, i8 0, i64 24, i1 false), !noalias !275
  store <2 x ptr> %i.sy, ptr %28, align 16, !tbaa !257, !noalias !217
  store ptr %i.sv, ptr %i.sx, align 16, !tbaa !249, !noalias !217
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !221, !noalias !217
  %i.sz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef 0, i64 noundef %.pre.i, ptr noundef nonnull @.str.69, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i unwind label %bb.bb ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i: ; preds = %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EED2Ev.exit406.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !217
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18, !noalias !217
  invoke void @_ZN5arrow8internal15GetEnvVarNativeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.20") align 8 %15, i64 9, ptr nonnull @.str.70)
          to label %.noexc412.i unwind label %bb.bb

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
  %.sroa.0494.0545.i = phi ptr [ %i.xk, %.critedge.i ], [ %i.vh, %.lr.ph546.i ] ; 2 uses
  %i.vq = load ptr, ptr %28, align 16, !tbaa !257, !noalias !217 ; 2 uses
  %i.vr = load ptr, ptr %i.sw, align 8, !tbaa !257, !noalias !217 ; 2 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %.critedge.i, label %.lr.ph.i

bb.bq:                                            ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev.exit.i
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.0490.0544.i, i64 8 ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.vr
  br i1 %i.vu, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph546.split.i, %bb.bq
  %.sroa.0490.0544.i = phi ptr [ %i.vt, %bb.bq ], [ %i.vq, %.lr.ph546.split.i ] ; 2 uses
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
  %i.xv = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !259, !noalias !217 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.xu, %i.xw
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.cl, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.xx, %.lr.ph.i.i.i.i.i.i.i ], [ %i.xu, %bb.cl ] ; 2 uses
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #18
  %i.xx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.xx, %i.xw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !260

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.xt, align 8, !tbaa !258, !noalias !217
  br label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.cl
  %i.xy = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.xu, %bb.cl ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.xy, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i.i, label %bb.cm

bb.cm:                                            ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.xz = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !249, !noalias !217
  %i.yb = ptrtoint ptr %i.ya to i64
  %i.yc = ptrtoint ptr %i.xy to i64
  %i.yd = sub i64 %i.yb, %i.yc
  call void @_ZdlPvm(ptr noundef nonnull %i.xy, i64 noundef %i.yd) #21
  br label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i.i: ; preds = %bb.cm, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %.pr.i420.i = load ptr, ptr %35, align 8, !tbaa !17, !noalias !217 ; 2 uses
  %.not.i.i421.i = icmp eq ptr %.pr.i420.i, null
  br i1 %.not.i.i421.i, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit.i, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i.i, !prof !280

_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i.i, %.loopexit540.i
  %i.ye = phi ptr [ %.pr.i420.i, %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i.i ], [ %i.xr, %.loopexit540.i ]
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 1
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !22, !range !35, !noundef !36
  %i.yh = trunc nuw i8 %i.yg to i1
  br i1 %i.yh, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit.i, label %bb.cn

bb.cn:                                            ; preds = %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #18
  br label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit.i

_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit.i: ; preds = %bb.cn, %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18, !noalias !217
  br label %bb.co

.body413.i:                                       ; preds = %bb.ck, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i, %bb.bb
  %.pn143.pn.pn.i = phi { ptr, i32 } [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i.i ], [ %.pn141.i, %bb.bw ], [ %i.ss, %bb.bb ], [ %.pn143.i, %bb.ck ]
  call void @_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18, !noalias !217
  br label %bb.cv

bb.co:                                            ; preds = %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit.i, %bb.n
  %i.yi = load ptr, ptr %32, align 8, !tbaa !17, !noalias !217 ; 2 uses
  %i.yj = icmp eq ptr %i.yi, null
  br i1 %i.yj, label %bb.cp, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i422.i, !prof !20

bb.cp:                                            ; preds = %bb.co
  %i.yk = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !258, !noalias !217 ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !259, !noalias !217 ; 2 uses
  %.not4.i.i.i.i.i.i423.i = icmp eq ptr %i.yl, %i.yn
  br i1 %.not4.i.i.i.i.i.i423.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i429.i, label %.lr.ph.i.i.i.i.i.i424.i

.lr.ph.i.i.i.i.i.i424.i:                          ; preds = %bb.cp, %.lr.ph.i.i.i.i.i.i424.i
  %.05.i.i.i.i.i.i425.i = phi ptr [ %i.yo, %.lr.ph.i.i.i.i.i.i424.i ], [ %i.yl, %bb.cp ] ; 2 uses
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i425.i) #18
  %i.yo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i425.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i426.i = icmp eq ptr %i.yo, %i.yn
  br i1 %.not.i.i.i.i.i.i426.i, label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i427.i, label %.lr.ph.i.i.i.i.i.i424.i, !llvm.loop !260

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i427.i: ; preds = %.lr.ph.i.i.i.i.i.i424.i
  %.pr.i.i.i.i428.i = load ptr, ptr %i.yk, align 8, !tbaa !258, !noalias !217
  br label %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i429.i

_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i429.i: ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i427.i, %bb.cp
  %i.yp = phi ptr [ %.pr.i.i.i.i428.i, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i427.i ], [ %i.yl, %bb.cp ] ; 3 uses
  %.not.i.i1.i.i.i.i430.i = icmp eq ptr %i.yp, null
  br i1 %.not.i.i1.i.i.i.i430.i, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i431.i, label %bb.cq

bb.cq:                                            ; preds = %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i429.i
  %i.yq = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !249, !noalias !217
  %i.ys = ptrtoint ptr %i.yr to i64
  %i.yt = ptrtoint ptr %i.yp to i64
  %i.yu = sub i64 %i.ys, %i.yt
  call void @_ZdlPvm(ptr noundef nonnull %i.yp, i64 noundef %i.yu) #21
  br label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i431.i

_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i431.i: ; preds = %bb.cq, %_ZSt8_DestroyIPN5arrow8internal16PlatformFilenameES2_EvT_S4_RSaIT0_E.exit.i.i.i.i429.i
  %.pr.i432.i = load ptr, ptr %32, align 8, !tbaa !17, !noalias !217 ; 2 uses
  %.not.i.i433.i = icmp eq ptr %.pr.i432.i, null
  br i1 %.not.i.i433.i, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit434.i, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i422.i, !prof !280

_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i422.i: ; preds = %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i431.i, %bb.co
  %i.yv = phi ptr [ %.pr.i432.i, %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i431.i ], [ %i.yi, %bb.co ]
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 1
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !22, !range !35, !noundef !36
  %i.yy = trunc nuw i8 %i.yx to i1
  br i1 %i.yy, label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit434.i, label %bb.cr

bb.cr:                                            ; preds = %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i422.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %32) #18
  br label %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit434.i

_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit434.i: ; preds = %bb.cr, %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.thread.i422.i, %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEE7DestroyEv.exit.i431.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18, !noalias !217
  %i.yz = load ptr, ptr %31, align 8, !tbaa !223, !noalias !217 ; 2 uses
  %i.za = icmp eq ptr %i.yz, %i.g
  br i1 %i.za, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435.i: ; preds = %_ZN5arrow6ResultISt6vectorINS_8internal16PlatformFilenameESaIS3_EEED2Ev.exit434.i
  %i.zb = load i64, ptr %i.g, align 8, !tbaa !222, !noalias !217
  %i.zc = add i64 %i.zb, 1
  call void @_ZdlPvm(ptr noundef %i.yz, i64 noundef %i.zc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437.i
end_hunk_0
begin_hunk_1_@_ZN5arrow2io8internal14ConnectLibHdfsEPPNS1_11LibHdfsShimE:bb.a
  %i.adz = load i64, ptr %i.aco, align 8, !tbaa !222, !noalias !308
  %i.aea = add i64 %i.adz, 1
  call void @_ZdlPvm(ptr noundef %i.adx, i64 noundef %i.aea) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18, !noalias !308
  br label %bb.fw

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i86
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18, !noalias !308
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.aeb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.aed = load <2 x ptr>, ptr %i.aeb, align 8, !tbaa !257, !noalias !317
  store <2 x ptr> %i.aed, ptr %12, align 16, !tbaa !257, !alias.scope !318, !noalias !308
  %i.aee = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !249, !noalias !317
  store ptr %i.aeg, ptr %i.aee, align 16, !tbaa !249, !alias.scope !318, !noalias !308
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aeb, i8 0, i64 24, i1 false), !noalias !317
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !308
  invoke void @_ZN5arrow8internal15GetEnvVarNativeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.20") align 8 %3, i64 11, ptr nonnull @.str.84)
          to label %.noexc64.i unwind label %bb.fd

.noexc64.i:                                       ; preds = %bb.dp
  %i.aeh = load ptr, ptr %3, align 8, !tbaa !17, !noalias !308 ; 2 uses
  %i.aei = icmp eq ptr %i.aeh, null
  br i1 %i.aei, label %bb.dq, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i98

bb.dq:                                            ; preds = %.noexc64.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !308
  %i.aej = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.aek, ptr %6, align 8, !tbaa !220, !noalias !308
  %i.ael = load ptr, ptr %i.aej, align 8, !tbaa !223, !noalias !308 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  %i.aen = icmp eq ptr %i.ael, %i.aem
  br i1 %i.aen, label %bb.dr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i

bb.dr:                                            ; preds = %bb.dq
  %i.aeo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aep = load i64, ptr %i.aeo, align 8, !tbaa !221, !noalias !308 ; 3 uses
  %i.aeq = icmp ult i64 %i.aep, 16
  call void @llvm.assume(i1 %i.aeq)
  %i.aer = add nuw nsw i64 %i.aep, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aek, ptr noundef nonnull align 8 dereferenceable(1) %i.aem, i64 %i.aer, i1 false), !noalias !308
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i: ; preds = %bb.dq
  store ptr %i.ael, ptr %6, align 8, !tbaa !223, !noalias !308
  %i.aes = load i64, ptr %i.aem, align 8, !tbaa !222, !noalias !308
  store i64 %i.aes, ptr %i.aek, align 8, !tbaa !222, !noalias !308
  %.phi.trans.insert.i.i116 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i117 = load i64, ptr %.phi.trans.insert.i.i116, align 8, !tbaa !221, !noalias !308
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i118: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i, %bb.dr
  %i.aet = phi i64 [ %i.aep, %bb.dr ], [ %.pre.i.i117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i ]
  %i.aeu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aev = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aet, ptr %i.aev, align 8, !tbaa !221, !noalias !308
  store ptr %i.aem, ptr %i.aej, align 8, !tbaa !223, !noalias !308
  store i64 0, ptr %i.aeu, align 8, !tbaa !221, !noalias !308
  store i8 0, ptr %i.aem, align 8, !tbaa !222, !noalias !308
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %6)
          to label %bb.ds unwind label %bb.dx

bb.ds:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i118
  invoke void @_ZNK5arrow8internal16PlatformFilename4JoinESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.16") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 10, ptr nonnull @.str.85)
          to label %bb.dt unwind label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  %i.aew = load ptr, ptr %6, align 8, !tbaa !223, !noalias !308 ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.aek
  br i1 %i.aex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i120: ; preds = %bb.dt
  %i.aey = load i64, ptr %i.aek, align 8, !tbaa !222, !noalias !308
  %i.aez = add i64 %i.aey, 1
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.aez) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !308
  %i.afa = load ptr, ptr %4, align 8, !tbaa !17, !noalias !308 ; 2 uses
  %i.afb = icmp eq ptr %i.afa, null
  br i1 %i.afb, label %bb.du, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i.i

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.afc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.afd = load ptr, ptr %i.aec, align 8, !tbaa !259, !noalias !308 ; 3 uses
  %i.afe = load ptr, ptr %i.aee, align 16, !tbaa !249, !noalias !308
  %.not.i.i.i124 = icmp eq ptr %i.afd, %i.afe
  br i1 %.not.i.i.i124, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN5arrow8internal16PlatformFilenameC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.afd, ptr noundef nonnull align 8 dereferenceable(8) %i.afc)
          to label %.noexc12.i.i unwind label %bb.ea

.noexc12.i.i:                                     ; preds = %bb.dv
  %i.aff = load ptr, ptr %i.aec, align 8, !tbaa !259, !noalias !308
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  store ptr %i.afg, ptr %i.aec, align 8, !tbaa !259, !noalias !308
  br label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i

bb.dw:                                            ; preds = %bb.du
  invoke void @_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.afd, ptr noundef nonnull align 8 dereferenceable(8) %i.afc)
          to label %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i unwind label %bb.ea

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i118
  %i.afh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dy:                                            ; preds = %bb.ds
  %i.afi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.pn.i.i119 = phi { ptr, i32 } [ %i.afi, %bb.dy ], [ %i.afh, %bb.dx ]
  %i.afj = load ptr, ptr %6, align 8, !tbaa !223, !noalias !308 ; 2 uses
  %i.afk = icmp eq ptr %i.afj, %i.aek
  br i1 %i.afk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i: ; preds = %bb.dz
  %i.afl = load i64, ptr %i.aek, align 8, !tbaa !222, !noalias !308
  %i.afm = add i64 %i.afl, 1
  call void @_ZdlPvm(ptr noundef %i.afj, i64 noundef %i.afm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !308
  br label %bb.ei

bb.ea:                                            ; preds = %bb.dw, %bb.dv
  %i.afn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultINS_8internal16PlatformFilenameEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  br label %bb.ei

_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i: ; preds = %bb.dw, %.noexc12.i.i
  %.pr.i62.i = load ptr, ptr %4, align 8, !tbaa !17, !noalias !308 ; 2 uses
  %i.afo = icmp eq ptr %.pr.i62.i, null
  br i1 %i.afo, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i.i, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i.i, !prof !280

_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.afc) #18
  %.pr.i.i.i = load ptr, ptr %4, align 8, !tbaa !17, !noalias !308 ; 2 uses
  %.not.i.i.i63.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i63.i, label %_ZN5arrow6Status11DeleteStateEv.exit114.i, label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i.i, !prof !280

_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i.i, %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.afp = phi ptr [ %.pr.i.i.i, %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i.i ], [ %.pr.i62.i, %_ZNSt6vectorIN5arrow8internal16PlatformFilenameESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit.i.i ], [ %i.afa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 5 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 1
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !22, !range !35, !noundef !36
  %i.afs = trunc nuw i8 %i.afr to i1
  br i1 %i.afs, label %_ZN5arrow6Status11DeleteStateEv.exit114.i, label %bb.eb

bb.eb:                                            ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i.i
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afp, i64 48
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !281 ; 8 uses
  %.not.i.i.i.i106.i = icmp eq ptr %i.afu, null
  br i1 %.not.i.i.i.i106.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i110.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 8 ; 4 uses
  %i.afw = load atomic i64, ptr %i.afv acquire, align 8 ; 2 uses
  %i.afx = icmp eq i64 %i.afw, 4294967297
  %i.afy = trunc i64 %i.afw to i32                ; 2 uses
  br i1 %i.afx, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  store i32 0, ptr %i.afv, align 8, !tbaa !282
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afu, i64 12
  store i32 0, ptr %i.afz, align 4, !tbaa !284
  %i.aga = load ptr, ptr %i.afu, align 8, !tbaa !285
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %i.agc = load ptr, ptr %i.agb, align 8
  call void %i.agc(ptr noundef nonnull align 8 dereferenceable(16) %i.afu) #18, !inline_history !319
  %i.agd = load ptr, ptr %i.afu, align 8, !tbaa !285
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 24
  %i.agf = load ptr, ptr %i.age, align 8
  call void %i.agf(ptr noundef nonnull align 8 dereferenceable(16) %i.afu) #18, !inline_history !319
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i110.i

bb.ee:                                            ; preds = %bb.ec
  %i.agg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !222, !noalias !308
  %.not.i.i.i.i.i107.i = icmp eq i8 %i.agg, 0
  br i1 %.not.i.i.i.i.i107.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.agh = add nsw i32 %i.afy, -1
  store i32 %i.agh, ptr %i.afv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108.i

bb.eg:                                            ; preds = %bb.ee
  %i.agi = atomicrmw volatile add ptr %i.afv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108.i: ; preds = %bb.eg, %bb.ef
  %.0.i.i.i.i.i.i109.i = phi i32 [ %i.afy, %bb.ef ], [ %i.agi, %bb.eg ]
  %i.agj = icmp eq i32 %.0.i.i.i.i.i.i109.i, 1
  br i1 %i.agj, label %bb.eh, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i110.i, !prof !288

bb.eh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afu) #18
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i110.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i110.i: ; preds = %bb.eh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i108.i, %bb.ed, %bb.eb
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afp, i64 8
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !223 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afp, i64 24 ; 2 uses
  %i.agn = icmp eq ptr %i.agl, %i.agm
  br i1 %i.agn, label %_ZN5arrow6Status5StateD2Ev.exit.i112.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i111.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i111.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i110.i
  %i.ago = load i64, ptr %i.agm, align 8, !tbaa !222
  %i.agp = add i64 %i.ago, 1
  call void @_ZdlPvm(ptr noundef %i.agl, i64 noundef %i.agp) #21
  br label %_ZN5arrow6Status5StateD2Ev.exit.i112.i

_ZN5arrow6Status5StateD2Ev.exit.i112.i:           ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i110.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i111.i
  call void @_ZdlPvm(ptr noundef nonnull %i.afp, i64 noundef 56) #21
  br label %_ZN5arrow6Status11DeleteStateEv.exit114.i

bb.ei:                                            ; preds = %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.afn, %bb.ea ], [ %.pn.i.i119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !308
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !308
  br label %.body65.i

_ZN5arrow6Status11DeleteStateEv.exit114.i:        ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i112.i, %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.thread.i.i.i, %_ZN5arrow6ResultINS_8internal16PlatformFilenameEE7DestroyEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !308
  %.pr3.i.i = load ptr, ptr %3, align 8, !tbaa !17, !noalias !308 ; 2 uses
  %i.agq = icmp eq ptr %.pr3.i.i, null
  br i1 %i.agq, label %bb.ej, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i98, !prof !280

bb.ej:                                            ; preds = %_ZN5arrow6Status11DeleteStateEv.exit114.i
  %i.agr = load ptr, ptr %i.aej, align 8, !tbaa !223, !noalias !308 ; 2 uses
  %i.ags = icmp eq ptr %i.agr, %i.aem
  br i1 %i.ags, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i123, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i121

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i121: ; preds = %bb.ej
  %i.agt = load i64, ptr %i.aem, align 8, !tbaa !222, !noalias !308
  %i.agu = add i64 %i.agt, 1
  call void @_ZdlPvm(ptr noundef %i.agr, i64 noundef %i.agu) #21
  %.pr.pre.i.i.i122 = load ptr, ptr %3, align 8, !tbaa !17, !noalias !308 ; 2 uses
  %.not.i.i17.i.i = icmp eq ptr %.pr.pre.i.i.i122, null
  br i1 %.not.i.i17.i.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i123, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i98, !prof !280

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i98: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i121, %_ZN5arrow6Status11DeleteStateEv.exit114.i, %.noexc64.i
  %i.agv = phi ptr [ %.pr.pre.i.i.i122, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i.i121 ], [ %.pr3.i.i, %_ZN5arrow6Status11DeleteStateEv.exit114.i ], [ %i.aeh, %.noexc64.i ] ; 5 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 1
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !22, !range !35, !noundef !36
  %i.agy = trunc nuw i8 %i.agx to i1
  br i1 %i.agy, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread5.i.i.i123, label %bb.ek

bb.ek:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i.i98
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agv, i64 48
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !281 ; 8 uses
  %.not.i.i.i.i.i99 = icmp eq ptr %i.aha, null
  br i1 %.not.i.i.i.i.i99, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i103, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 8 ; 4 uses
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
  %.sroa.0124.0135.i = phi ptr [ %i.aji, %.lr.ph.i106 ], [ %i.ajo, %bb.fc ] ; 2 uses
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
end_hunk_1
begin_hunk_2_@_ZN5arrow2io8internal11LibHdfsShim19GetDefaultBlockSizeEP13hdfs_internal:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !437
  %i.k = icmp eq ptr %.pr.i, null
  br i1 %i.k, label %_ZN5arrow8internal11GetSymbolAsIFlP13hdfs_internalEEENS_6ResultIPT_EEPvPKc.exit._crit_edge.i, label %bb.g

_ZN5arrow8internal11GetSymbolAsIFlP13hdfs_internalEEENS_6ResultIPT_EEPvPKc.exit._crit_edge.i: ; preds = %_ZN5arrow8internal11GetSymbolAsIFlP13hdfs_internalEEENS_6ResultIPT_EEPvPKc.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !13, !noalias !434
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow8internal11GetSymbolAsIFlP13hdfs_internalEEENS_6ResultIPT_EEPvPKc.exit._crit_edge.i, %_ZN5arrow8internal11GetSymbolAsIFlP13hdfs_internalEEENS_6ResultIPT_EEPvPKc.exit.thread.i
  %i.l = phi ptr [ %.pre.i, %_ZN5arrow8internal11GetSymbolAsIFlP13hdfs_internalEEENS_6ResultIPT_EEPvPKc.exit._crit_edge.i ], [ %i.g, %_ZN5arrow8internal11GetSymbolAsIFlP13hdfs_internalEEENS_6ResultIPT_EEPvPKc.exit.thread.i ]
  store ptr %i.l, ptr %i.a, align 8, !tbaa !13, !noalias !434
  br label %_ZN5arrow6StatusD2Ev.exit

bb.g:                                             ; preds = %_ZN5arrow8internal11GetSymbolAsIFlP13hdfs_internalEEENS_6ResultIPT_EEPvPKc.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pr.i, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !22, !range !35, !noalias !434, !noundef !36
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow2io8internal12_GLOBAL__N_19SetSymbolILb0EFlP13hdfs_internalEEENS_6StatusEPvPKcPPT0_.exit

_ZN5arrow2io8internal12_GLOBAL__N_19SetSymbolILb0EFlP13hdfs_internalEEENS_6StatusEPvPKcPPT0_.exit: ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #18, !noalias !434
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.g, %bb.f, %_ZN5arrow2io8internal12_GLOBAL__N_19SetSymbolILb0EFlP13hdfs_internalEEENS_6StatusEPvPKcPPT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !434
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !440  ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %bb.h, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a, %_ZN5arrow6StatusD2Ev.exit
  %i.p = phi ptr [ %.pr, %_ZN5arrow6StatusD2Ev.exit ], [ %i.b, %bb.a ]
  %i.q = call noundef i64 %i.p(ptr noundef %1)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.0 = phi i64 [ %i.q, %_ZN5arrow6StatusD2Ev.exit.thread ], [ 0, %_ZN5arrow6StatusD2Ev.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5arrow2io8internal11LibHdfsShim11GetCapacityEP13hdfs_internal(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !441
  %i.c = tail call noundef i64 %i.b(ptr noundef %1)
  ret i64 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5arrow2io8internal11LibHdfsShim7GetUsedEP13hdfs_internal(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !442
  %i.c = tail call noundef i64 %i.b(ptr noundef %1)
  ret i64 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5arrow2io8internal11LibHdfsShim5ChownEP13hdfs_internalPKcS6_S6_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !443
  %i.c = tail call noundef i32 %i.b(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5arrow2io8internal11LibHdfsShim5ChmodEP13hdfs_internalPKcs(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !444
  %i.c = tail call noundef i32 %i.b(ptr noundef %1, ptr noundef %2, i16 noundef signext %3)
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5arrow2io8internal11LibHdfsShim5UtimeEP13hdfs_internalPKcll(ptr noundef nonnull align 8 captures(none) dereferenceable(312) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Result.2", align 8   ; 9 uses
  %6 = alloca %"class.arrow::Result.142", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !445
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !448
  call void @_ZN5arrow8internal9GetSymbolEPvPKc(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.2") align 8 %5, ptr noundef %i.c, ptr noundef nonnull @.str.40), !noalias !448
  %i.d = load ptr, ptr %5, align 8, !tbaa !17, !noalias !448
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN5arrow8internal11GetSymbolAsIFiP13hdfs_internalPKcllEEENS_6ResultIPT_EEPvS5_.exit.thread.i, label %bb.c, !prof !20

_ZN5arrow8internal11GetSymbolAsIFiP13hdfs_internalPKcllEEENS_6ResultIPT_EEPvS5_.exit.thread.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13, !noalias !448
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !448
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6ResultIPFiP13hdfs_internalPKcllEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #18, !noalias !445
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !17, !noalias !448 ; 2 uses
  %.not.i.i7.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i7.i.i, label %_ZN5arrow8internal11GetSymbolAsIFiP13hdfs_internalPKcllEEENS_6ResultIPT_EEPvS5_.exit.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !22, !range !35, !noalias !445, !noundef !36
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow8internal11GetSymbolAsIFiP13hdfs_internalPKcllEEENS_6ResultIPT_EEPvS5_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #18, !noalias !445
  br label %_ZN5arrow8internal11GetSymbolAsIFiP13hdfs_internalPKcllEEENS_6ResultIPT_EEPvS5_.exit.i

_ZN5arrow8internal11GetSymbolAsIFiP13hdfs_internalPKcllEEENS_6ResultIPT_EEPvS5_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !17, !noalias !445 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !448
  %i.k = icmp eq ptr %.pr.i, null
  br i1 %i.k, label %_ZN5arrow8internal11GetSymbolAsIFiP13hdfs_internalPKcllEEENS_6ResultIPT_EEPvS5_.exit._crit_edge.i, label %bb.g

_ZN5arrow8internal11GetSymbolAsIFiP13hdfs_internalPKcllEEENS_6ResultIPT_EEPvS5_.exit._crit_edge.i: ; preds = %_ZN5arrow8internal11GetSymbolAsIFiP13hdfs_internalPKcllEEENS_6ResultIPT_EEPvS5_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !13, !noalias !445
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow8internal11GetSymbolAsIFiP13hdfs_internalPKcllEEENS_6ResultIPT_EEPvS5_.exit._crit_edge.i, %_ZN5arrow8internal11GetSymbolAsIFiP13hdfs_internalPKcllEEENS_6ResultIPT_EEPvS5_.exit.thread.i
  %i.l = phi ptr [ %.pre.i, %_ZN5arrow8internal11GetSymbolAsIFiP13hdfs_internalPKcllEEENS_6ResultIPT_EEPvS5_.exit._crit_edge.i ], [ %i.g, %_ZN5arrow8internal11GetSymbolAsIFiP13hdfs_internalPKcllEEENS_6ResultIPT_EEPvS5_.exit.thread.i ]
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
define internal fastcc void @_ZN5arrow2io8internal12_GLOBAL__N_118MakeFilenameVectorERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
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
  %i.r = phi ptr [ %i.i, %.lr.ph ], [ %i.m, %bb.b ]
  %.01725 = phi i64 [ 0, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.01725 ; 2 uses
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
  %i.z = load ptr, ptr %2, align 16, !tbaa !258
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

end_hunk_2
