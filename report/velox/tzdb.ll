inline.NumInlined: 2484
inline.NumDeleted: 1106
begin_hunk_0_@_ZN8facebook5velox4tzdbL14__parse_tzdataERNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_INS1_6__ruleESaISC_EEESaISF_EERSi:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EvEET_S8_RKS3_.exit
  %i.ou = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5ungetEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc81.i.i.i unwind label %bb.dz ; 0 uses

.noexc81.i.i.i:                                   ; preds = %bb.cb
  %i.ov = icmp ne i64 %i.os, 0
  br label %_ZN8facebook5velox4tzdbL12__parse_saveERSi.exit.i.i.i.i

bb.cc:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !132
  store ptr %i.lo, ptr %5, align 8, !tbaa !18, !alias.scope !133
  store i64 0, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !17, !alias.scope !133
  store i8 0, ptr %i.lo, align 8, !tbaa !16, !alias.scope !133
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cp, %bb.cc
  %i.ow = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.ce unwind label %.loopexit.i160.loopexit ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  switch i32 %i.ow, label %bb.ci [
    i32 32, label %bb.cf
    i32 9, label %bb.cf
    i32 10, label %bb.cf
    i32 -1, label %.loopexit14.i
  ]

.loopexit.i160.loopexit:                          ; preds = %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %lpad.loopexit221 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i160

.loopexit.i160.loopexit.split-lp:                 ; preds = %bb.ck, %bb.cm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i160

.loopexit.split-lp.i164.loopexit:                 ; preds = %bb.cf
  %lpad.loopexit236 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i160

.loopexit.split-lp.i164.loopexit.split-lp:        ; preds = %bb.cg
  %lpad.loopexit.split-lp237 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i160

.loopexit.i160:                                   ; preds = %.loopexit.split-lp.i164.loopexit, %.loopexit.split-lp.i164.loopexit.split-lp, %.loopexit.i160.loopexit, %.loopexit.i160.loopexit.split-lp
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.i160.loopexit.split-lp ], [ %lpad.loopexit221, %.loopexit.i160.loopexit ], [ %lpad.loopexit236, %.loopexit.split-lp.i164.loopexit ], [ %lpad.loopexit.split-lp237, %.loopexit.split-lp.i164.loopexit.split-lp ] ; 2 uses
  %i.ox = load ptr, ptr %5, align 8, !tbaa !11, !alias.scope !133 ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.lo
  br i1 %i.oy, label %.body168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162: ; preds = %.loopexit.i160
  %i.oz = load i64, ptr %i.lo, align 8, !tbaa !16, !alias.scope !133
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #29
  br label %.body168

bb.cf:                                            ; preds = %bb.ce, %bb.ce, %bb.ce
  %i.pb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5ungetEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.loopexit14.i unwind label %.loopexit.split-lp.i164.loopexit ; 0 uses

.loopexit14.i:                                    ; preds = %bb.ce, %bb.cf
  %i.pc = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !17, !alias.scope !133 ; 12 uses
  %i.pd = icmp eq i64 %i.pc, 0
  br i1 %i.pd, label %bb.cg, label %.noexc82.i.i.i

bb.cg:                                            ; preds = %.loopexit14.i
  invoke void @_ZSt21__throw_runtime_errorPKc(ptr noundef nonnull @.str.20) #28
          to label %bb.ch unwind label %.loopexit.split-lp.i164.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cg
  unreachable

bb.ci:                                            ; preds = %bb.ce
  %i.pe = trunc i32 %i.ow to i8
  %i.pf = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !17, !alias.scope !133 ; 6 uses
  %i.pg = add i64 %i.pf, 1                        ; 7 uses
  %i.ph = load ptr, ptr %5, align 8, !tbaa !11, !alias.scope !133 ; 6 uses
  %i.pi = icmp eq ptr %i.ph, %i.lo                ; 2 uses
  br i1 %i.pi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.ci
  %i.pj = icmp samesign ult i64 %i.pf, 16
  call void @llvm.assume(i1 %i.pj)
  %i.pk = icmp samesign ugt i64 %i.pg, 15
  br i1 %i.pk, label %bb.cj, label %bb.cp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread: ; preds = %bb.ci
  %i.pl = load i64, ptr %i.lo, align 8, !alias.scope !133 ; 3 uses
  %i.pm = icmp ugt i64 %i.pg, %i.pl
  br i1 %i.pm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %bb.cp

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.pn = load i64, ptr %i.lo, align 8, !alias.scope !133
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread, %bb.cj
  %i.po = phi i64 [ %i.pl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ], [ %i.pn, %bb.cj ]
  %i.pp = phi i64 [ %i.pl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ], [ 15, %bb.cj ]
  %i.pq = icmp slt i64 %i.pg, 0
  br i1 %i.pq, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28
          to label %.noexc196 unwind label %.loopexit.i160.loopexit.split-lp

.noexc196:                                        ; preds = %bb.ck
  unreachable

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.pr = shl nuw i64 %i.pp, 1                    ; 2 uses
  %i.ps = icmp ult i64 %i.pg, %i.pr
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.pr, i64 9223372036854775807)
  %.0.i = select i1 %i.ps, i64 %spec.store.select.i.i, i64 %i.pg ; 2 uses
  %i.pt = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.pu = icmp slt i64 %i.pt, 0
  br i1 %i.pu, label %bb.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !19

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc197 unwind label %.loopexit.i160.loopexit.split-lp

.noexc197:                                        ; preds = %bb.cm
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.cl
  %i.pv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pt) #27
          to label %.noexc198 unwind label %.loopexit.i160.loopexit ; 4 uses

.noexc198:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  switch i64 %i.pf, label %bb.co [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
    i64 1, label %bb.cn
  ]

bb.cn:                                            ; preds = %.noexc198
  %i.pw = load i8, ptr %i.ph, align 1, !tbaa !16
  store i8 %i.pw, ptr %i.pv, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.co:                                            ; preds = %.noexc198
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pv, ptr align 1 %i.ph, i64 %i.pf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %.noexc198, %bb.cn, %bb.co
  br i1 %i.pi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.px = icmp samesign ult i64 %i.pf, 16
  call void @llvm.assume(i1 %i.px)
  br label %.noexc.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.py = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.ph, i64 noundef %i.py) #29
  br label %.noexc.i166

.noexc.i166:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i195
  store ptr %i.pv, ptr %5, align 8, !tbaa !11
  store i64 %.0.i, ptr %i.lo, align 8, !tbaa !16
  br label %bb.cp

bb.cp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread, %.noexc.i166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.pz = phi ptr [ %i.pv, %.noexc.i166 ], [ %i.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ]
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.pf
  store i8 %i.pe, ptr %i.qa, align 1, !tbaa !16
  store i64 %i.pg, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !17, !alias.scope !133
  %i.qb = load ptr, ptr %5, align 8, !tbaa !11, !alias.scope !133
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.pg
  store i8 0, ptr %i.qc, align 1, !tbaa !16
  br label %bb.cd, !llvm.loop !136

.noexc82.i.i.i:                                   ; preds = %.loopexit14.i
  store ptr %i.ln, ptr %8, align 8, !tbaa !18, !alias.scope !129, !noalias !99
  %i.qd = load ptr, ptr %5, align 8, !tbaa !11, !noalias !132 ; 3 uses
  %i.qe = icmp eq ptr %i.qd, %i.lo
  br i1 %i.qe, label %bb.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cq:                                            ; preds = %.noexc82.i.i.i
  %i.qf = icmp ult i64 %i.pc, 16
  call void @llvm.assume(i1 %i.qf)
  %i.qg = add nuw nsw i64 %i.pc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ln, ptr noundef nonnull align 8 dereferenceable(1) %i.lo, i64 %i.qg, i1 false), !noalias !99
  br label %bb.cs

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i
  store ptr %i.qd, ptr %8, align 8, !tbaa !11, !alias.scope !129, !noalias !99
  %i.qh = load i64, ptr %i.lo, align 8, !tbaa !16, !noalias !132
  store i64 %i.qh, ptr %i.ln, align 8, !tbaa !16, !alias.scope !129, !noalias !99
  br label %bb.cs

bb.cr:                                            ; preds = %.noexc74.i.i.i, %.noexc74.i.i.i
  store i8 0, ptr %i.lq, align 8, !tbaa !102, !alias.scope !129, !noalias !99
  %i.qi = load i8, ptr %i.la, align 8, !tbaa !102
  switch i8 %i.qi, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i [
    i8 0, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.i.i.i
    i8 2, label %33
  ]

33:                                               ; preds = %bb.cr
  %34 = load ptr, ptr %i.lr, align 8, !tbaa !11   ; 2 uses
  %35 = icmp eq ptr %34, %i.ls
  br i1 %35, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %33
  %36 = load i64, ptr %i.ls, align 8, !tbaa !16
  %37 = add i64 %36, 1
  call void @_ZdlPvm(ptr noundef %34, i64 noundef %37) #29
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i: ; preds = %33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cr
  store i8 0, ptr %i.la, align 8, !tbaa !102
  br label %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOSB_.exit.i.i.i

_ZN8facebook5velox4tzdbL12__parse_saveERSi.exit.i.i.i.i: ; preds = %.noexc81.i.i.i, %bb.ca, %.noexc80.i.i.i, %.noexc78.i.i.i, %bb.bw, %.noexc77.i.i.i
  %.sink.i.i = phi i64 [ %i.on, %.noexc77.i.i.i ], [ %i.on, %.noexc78.i.i.i ], [ %i.on, %bb.bw ], [ %i.os, %.noexc81.i.i.i ], [ %i.os, %bb.ca ], [ %i.os, %.noexc80.i.i.i ]
  %.0.i.i14.i.i.sink.shrunk.i.i = phi i1 [ false, %.noexc77.i.i.i ], [ %i.oq, %.noexc78.i.i.i ], [ true, %bb.bw ], [ %i.ov, %.noexc81.i.i.i ], [ true, %bb.ca ], [ false, %.noexc80.i.i.i ]
  %.0.i.i14.i.i.sink.i.i = zext i1 %.0.i.i14.i.i.sink.shrunk.i.i to i8
  store i64 %.sink.i.i, ptr %8, align 8, !tbaa !35, !alias.scope !129, !noalias !99
  store i8 %.0.i.i14.i.i.sink.i.i, ptr %i.lp, align 8, !tbaa !86, !alias.scope !129, !noalias !99
  store i8 1, ptr %i.lq, align 8, !tbaa !102, !alias.scope !129, !noalias !99
  %i.qj = load i8, ptr %i.la, align 8, !tbaa !102
  switch i8 %i.qj, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i [
    i8 1, label %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOSB_.exit.i.i.i.thread
    i8 2, label %38
  ]

_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOSB_.exit.i.i.i.thread: ; preds = %_ZN8facebook5velox4tzdbL12__parse_saveERSi.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.lr, ptr noundef nonnull align 8 dereferenceable(33) %8, i64 9, i1 false), !tbaa.struct !137
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.i.i.i

38:                                               ; preds = %_ZN8facebook5velox4tzdbL12__parse_saveERSi.exit.i.i.i.i
  %39 = load ptr, ptr %i.lr, align 8, !tbaa !11   ; 2 uses
  %40 = icmp eq ptr %39, %i.ls
  br i1 %40, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i: ; preds = %38
  %41 = load i64, ptr %i.ls, align 8, !tbaa !16
  %42 = add i64 %41, 1
  call void @_ZdlPvm(ptr noundef %39, i64 noundef %42) #29
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i: ; preds = %38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i10.i.i.i, %_ZN8facebook5velox4tzdbL12__parse_saveERSi.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.lr, ptr noundef nonnull align 8 dereferenceable(33) %8, i64 16, i1 false), !tbaa.struct !137
  store i8 1, ptr %i.la, align 8, !tbaa !102
  br label %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOSB_.exit.i.i.i

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cq
  %i.qk = phi ptr [ %i.qd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ln, %bb.cq ] ; 7 uses
  store i64 %i.pc, ptr %i.lp, align 8, !tbaa !17, !alias.scope !129, !noalias !99
  store i8 2, ptr %i.lq, align 8, !tbaa !102, !alias.scope !129, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !132
  %i.ql = load i8, ptr %i.la, align 8, !tbaa !102
  %i.qm = icmp eq i8 %i.ql, 2
  br i1 %i.qm, label %bb.ct, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEv.exit.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.qn = load ptr, ptr %i.lr, align 8, !tbaa !11 ; 6 uses
  %i.qo = icmp eq ptr %i.qn, %i.ls
  %i.qp = icmp eq ptr %i.qk, %i.ln                ; 2 uses
  br i1 %i.qo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158: ; preds = %bb.ct
  br i1 %i.qp, label %bb.cu, label %.thread.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151: ; preds = %bb.ct
  br i1 %i.qp, label %bb.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i152

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151
  %i.qq = icmp ult i64 %i.pc, 16
  call void @llvm.assume(i1 %i.qq)
  %cond = icmp eq i64 %i.pc, 1
  br i1 %cond, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.qr = load i8, ptr %i.qk, align 1, !tbaa !16
  store i8 %i.qr, ptr %i.qn, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i156

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qn, ptr align 1 %i.qk, i64 %i.pc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i156: ; preds = %bb.cw, %bb.cv
  %i.qs = load i64, ptr %i.lp, align 8, !tbaa !17 ; 2 uses
  store i64 %i.qs, ptr %i.lt, align 8, !tbaa !17
  %i.qt = load ptr, ptr %i.lr, align 8, !tbaa !11
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qs
  store i8 0, ptr %i.qu, align 1, !tbaa !16
  %.pre.i.i.i157 = load ptr, ptr %8, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i154

.thread.i.i.i159:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158
  store ptr %i.qk, ptr %i.lr, align 8, !tbaa !11
  store i64 %i.pc, ptr %i.lt, align 8, !tbaa !17
  %i.qv = load i64, ptr %i.ln, align 8, !tbaa !16
  store i64 %i.qv, ptr %i.ls, align 8, !tbaa !16
  br label %bb.cy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i152: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151
  %i.qw = load i64, ptr %i.ls, align 8, !tbaa !16
  store ptr %i.qk, ptr %i.lr, align 8, !tbaa !11
  store i64 %i.pc, ptr %i.lt, align 8, !tbaa !17
  %i.qx = load i64, ptr %i.ln, align 8, !tbaa !16
  store i64 %i.qx, ptr %i.ls, align 8, !tbaa !16
  %.not.i.i.i153 = icmp eq ptr %i.qn, null
  br i1 %.not.i.i.i153, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i152
  store ptr %i.qn, ptr %8, align 8, !tbaa !11
  store i64 %i.qw, ptr %i.ln, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i154

bb.cy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i152, %.thread.i.i.i159
  store ptr %i.ln, ptr %8, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i154: ; preds = %bb.cy, %bb.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i156
  %i.qy = phi ptr [ %.pre.i.i.i157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i156 ], [ %i.qn, %bb.cx ], [ %i.ln, %bb.cy ]
  store i64 0, ptr %i.lp, align 8, !tbaa !17
  store i8 0, ptr %i.qy, align 1, !tbaa !16
  br label %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOSB_.exit.i.i.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEv.exit.i.i.i: ; preds = %bb.cs
  store ptr %i.ls, ptr %i.lr, align 8, !tbaa !18
  %i.qz = icmp eq ptr %i.qk, %i.ln
  br i1 %i.qz, label %bb.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i150

bb.cz:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEv.exit.i.i.i
  %i.ra = icmp ult i64 %i.pc, 16
  call void @llvm.assume(i1 %i.ra)
  %i.rb = add nuw nsw i64 %i.pc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ls, ptr noundef nonnull align 8 dereferenceable(1) %i.ln, i64 %i.rb, i1 false)
  br label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i150: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8_M_resetEv.exit.i.i.i
  store ptr %i.qk, ptr %i.lr, align 8, !tbaa !11
  %i.rc = load i64, ptr %i.ln, align 8, !tbaa !16
  store i64 %i.rc, ptr %i.ls, align 8, !tbaa !16
  br label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i150, %bb.cz
  store i64 %i.pc, ptr %i.lt, align 8, !tbaa !17
  store ptr %i.ln, ptr %8, align 8, !tbaa !11
  store i64 0, ptr %i.lp, align 8, !tbaa !17
  store i8 0, ptr %i.ln, align 8, !tbaa !16
  store i8 2, ptr %i.la, align 8, !tbaa !102
  br label %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOSB_.exit.i.i.i

_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i154, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i, %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i.i.i.i
  %.pr.i.i.pr = load i8, ptr %i.lq, align 8, !tbaa !102, !noalias !99
  %i.rd = icmp eq i8 %.pr.i.i.pr, 2
  br i1 %i.rd, label %bb.da, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.i.i.i

bb.da:                                            ; preds = %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOSB_.exit.i.i.i
  %i.re = load ptr, ptr %8, align 8, !tbaa !11, !noalias !99 ; 2 uses
  %i.rf = icmp eq ptr %i.re, %i.ln
  br i1 %i.rf, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.da
  %i.rg = load i64, ptr %i.ln, align 8, !tbaa !16, !noalias !99
  %i.rh = add i64 %i.rg, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.rh) #29
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.i.i.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.i.i.i: ; preds = %bb.da, %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOSB_.exit.i.i.i.thread, %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSEOSB_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !99
  %i.ri = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc83.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i

.noexc83.i.i.i:                                   ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.i.i.i
  switch i32 %i.ri, label %.invoke.i.i.i [
    i32 32, label %.noexc86.i.i.i.preheader
    i32 9, label %.noexc86.i.i.i.preheader
  ]

.noexc86.i.i.i.preheader:                         ; preds = %.noexc83.i.i.i, %.noexc83.i.i.i
  br label %.noexc86.i.i.i

.invoke.i.i.i:                                    ; preds = %.noexc83.i.i.i, %.noexc68.i.i.i
  invoke void @_ZSt21__throw_runtime_errorPKc(ptr noundef nonnull @.str.19) #28
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

.noexc86.i.i.i:                                   ; preds = %.noexc86.i.i.i.preheader, %bb.db
  %i.rj = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc85.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i

.noexc85.i.i.i:                                   ; preds = %.noexc86.i.i.i
  switch i32 %i.rj, label %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit87.i.i.i [
    i32 32, label %bb.db
    i32 9, label %bb.db
  ]

bb.db:                                            ; preds = %.noexc85.i.i.i, %.noexc85.i.i.i
  %i.rk = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc86.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit87.i.i.i: ; preds = %.noexc85.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !99
  store ptr %i.lu, ptr %9, align 8, !tbaa !18, !alias.scope !138
  store i64 0, ptr %i.lv, align 8, !tbaa !17, !alias.scope !138
  store i8 0, ptr %i.lu, align 8, !tbaa !16, !alias.scope !138
  br label %bb.dc

bb.dc:                                            ; preds = %bb.do, %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit87.i.i.i
  %i.rl = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.dd unwind label %.loopexit.i130.loopexit.i.i ; 2 uses

bb.dd:                                            ; preds = %bb.dc
  switch i32 %i.rl, label %bb.dh [
    i32 32, label %bb.de
    i32 9, label %bb.de
    i32 10, label %bb.de
    i32 -1, label %.loopexit14.i.i.i
  ]

.loopexit.i130.loopexit.i.i:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.dc
  %lpad.loopexit149.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i130.i.i

.loopexit.i130.loopexit.split-lp.i.i:             ; preds = %bb.dl, %bb.dj
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i130.i.i

.loopexit.split-lp.i135.loopexit.i.i:             ; preds = %bb.de
  %lpad.loopexit154.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i130.i.i

.loopexit.split-lp.i135.loopexit.split-lp.i.i:    ; preds = %bb.df
  %lpad.loopexit.split-lp155.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i130.i.i

.loopexit.i130.i.i:                               ; preds = %.loopexit.split-lp.i135.loopexit.split-lp.i.i, %.loopexit.split-lp.i135.loopexit.i.i, %.loopexit.i130.loopexit.split-lp.i.i, %.loopexit.i130.loopexit.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.loopexit.i130.loopexit.split-lp.i.i ], [ %lpad.loopexit149.i.i, %.loopexit.i130.loopexit.i.i ], [ %lpad.loopexit154.i.i, %.loopexit.split-lp.i135.loopexit.i.i ], [ %lpad.loopexit.split-lp155.i.i, %.loopexit.split-lp.i135.loopexit.split-lp.i.i ]
  %i.rm = load ptr, ptr %9, align 8, !tbaa !11, !alias.scope !138 ; 2 uses
  %i.rn = icmp eq ptr %i.rm, %i.lu
  br i1 %i.rn, label %.body138.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132.i.i: ; preds = %.loopexit.i130.i.i
  %i.ro = load i64, ptr %i.lu, align 8, !tbaa !16, !alias.scope !138
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rp) #29
  br label %.body138.i.i

bb.de:                                            ; preds = %bb.dd, %bb.dd, %bb.dd
  %i.rq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5ungetEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.loopexit14.i.i.i unwind label %.loopexit.split-lp.i135.loopexit.i.i ; 0 uses

.loopexit14.i.i.i:                                ; preds = %bb.dd, %bb.de
  %i.rr = load i64, ptr %i.lv, align 8, !tbaa !17, !alias.scope !138 ; 6 uses
  %i.rs = icmp eq i64 %i.rr, 0
  br i1 %i.rs, label %bb.df, label %_ZN8facebook5velox4tzdbL14__parse_stringB5cxx11ERSi.exit.i.i

bb.df:                                            ; preds = %.loopexit14.i.i.i
  invoke void @_ZSt21__throw_runtime_errorPKc(ptr noundef nonnull @.str.20) #28
          to label %bb.dg unwind label %.loopexit.split-lp.i135.loopexit.split-lp.i.i

bb.dg:                                            ; preds = %bb.df
  unreachable

bb.dh:                                            ; preds = %bb.dd
  %i.rt = trunc i32 %i.rl to i8
  %i.ru = load i64, ptr %i.lv, align 8, !tbaa !17, !alias.scope !138 ; 6 uses
  %i.rv = add i64 %i.ru, 1                        ; 7 uses
  %i.rw = load ptr, ptr %9, align 8, !tbaa !11, !alias.scope !138 ; 6 uses
  %i.rx = icmp eq ptr %i.rw, %i.lu                ; 2 uses
  br i1 %i.rx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.dh
  %i.ry = icmp samesign ult i64 %i.ru, 16
  call void @llvm.assume(i1 %i.ry)
  %i.rz = icmp samesign ugt i64 %i.rv, 15
  br i1 %i.rz, label %bb.di, label %bb.do

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i: ; preds = %bb.dh
  %i.sa = load i64, ptr %i.lu, align 8, !alias.scope !138 ; 3 uses
  %i.sb = icmp ugt i64 %i.rv, %i.sa
  br i1 %i.sb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, label %bb.do

bb.di:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.sc = load i64, ptr %i.lu, align 8, !alias.scope !138
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i
  %i.sd = phi i64 [ %i.sa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i ], [ %i.sc, %bb.di ]
  %i.se = phi i64 [ %i.sa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i ], [ 15, %bb.di ]
  %i.sf = icmp slt i64 %i.rv, 0
  br i1 %i.sf, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28
          to label %.noexc143.i.i unwind label %.loopexit.i130.loopexit.split-lp.i.i

.noexc143.i.i:                                    ; preds = %bb.dj
  unreachable

bb.dk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.sg = shl nuw i64 %i.se, 1                    ; 2 uses
  %i.sh = icmp ult i64 %i.rv, %i.sg
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.sg, i64 9223372036854775807)
  %.0.i.i.i = select i1 %i.sh, i64 %spec.store.select.i.i.i.i, i64 %i.rv ; 2 uses
  %i.si = add nuw i64 %.0.i.i.i, 1                ; 2 uses
  %i.sj = icmp slt i64 %i.si, 0
  br i1 %i.sj, label %bb.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !19

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc144.i.i unwind label %.loopexit.i130.loopexit.split-lp.i.i

.noexc144.i.i:                                    ; preds = %bb.dl
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.dk
  %i.sk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.si) #27
          to label %.noexc145.i.i unwind label %.loopexit.i130.loopexit.i.i ; 4 uses

.noexc145.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  switch i64 %i.ru, label %bb.dn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i
    i64 1, label %bb.dm
  ]

bb.dm:                                            ; preds = %.noexc145.i.i
  %i.sl = load i8, ptr %i.rw, align 1, !tbaa !16
  store i8 %i.sl, ptr %i.sk, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i

bb.dn:                                            ; preds = %.noexc145.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sk, ptr align 1 %i.rw, i64 %i.ru, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i: ; preds = %bb.dn, %bb.dm, %.noexc145.i.i
  br i1 %i.rx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i142.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i142.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i
  %i.sm = icmp samesign ult i64 %i.ru, 16
  call void @llvm.assume(i1 %i.sm)
  br label %.noexc.i136.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i
  %i.sn = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.sn) #29
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4tzdbL14__parse_tzdataERNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_INS1_6__ruleESaISC_EEESaISF_EERSi:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EvEET_S8_RKS3_.exit
          to label %.noexc89.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i

.noexc89.i.i.i:                                   ; preds = %.noexc90.i.i.i
  switch i32 %i.tj, label %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit.i.i.i [
    i32 32, label %bb.du
    i32 9, label %bb.du
  ]

bb.du:                                            ; preds = %.noexc89.i.i.i, %.noexc89.i.i.i
  %i.tk = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc90.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit.i.i.i: ; preds = %.noexc89.i.i.i
  %i.tl = load i8, ptr %i.la, align 8, !tbaa !102, !alias.scope !99
  %i.tm = icmp eq i8 %i.tl, 2
  br i1 %i.tm, label %_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt9monostateN8facebook5velox4tzdb6__saveES5_EERT_RSt7variantIJDpT0_EE.exit.i.i.i, label %._crit_edge.thread181.i.i.i

_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt9monostateN8facebook5velox4tzdb6__saveES5_EERT_RSt7variantIJDpT0_EE.exit.i.i.i: ; preds = %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit.i.i.i
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !29, !noalias !99 ; 3 uses
  %.val65.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !29, !noalias !99 ; 2 uses
  %.val66.i.i.i = load ptr, ptr %i.lr, align 8, !alias.scope !99 ; 3 uses
  %.val67.i.i.i = load i64, ptr %i.lt, align 8, !alias.scope !99 ; 5 uses
  %i.tn = ptrtoint ptr %.val65.i.i.i to i64
  %i.to = ptrtoint ptr %.val.i.i.i to i64
  %i.tp = sub i64 %i.tn, %i.to                    ; 2 uses
  %i.tq = icmp sgt i64 %i.tp, 0
  br i1 %i.tq, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEES8_ZNSC_L13__binary_findERKSK_RKS8_E3$_0ET_SR_SR_RKT0_T1_.exit.i.i.i.i"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i.i: ; preds = %_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt9monostateN8facebook5velox4tzdb6__saveES5_EERT_RSt7variantIJDpT0_EE.exit.i.i.i
  %i.tr = udiv exact i64 %i.tp, 56
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox4tzdbL13__binary_findERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_INS4_6__ruleESaISD_EEESaISG_EERKSC_E3$_0EclINS_17__normal_iteratorIPKSG_SI_EESL_EEbT_RT0_.exit.i.i.i.i.i.i", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox4tzdbL13__binary_findERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_INS4_6__ruleESaISD_EEESaISG_EERKSC_E3$_0EclINS_17__normal_iteratorIPKSG_SI_EESL_EEbT_RT0_.exit.i.i.i.i.i.i" ], [ %i.tr, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.02.06.i.i.i.i.i.i = phi ptr [ %.sroa.02.1.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox4tzdbL13__binary_findERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_INS4_6__ruleESaISD_EEESaISG_EERKSC_E3$_0EclINS_17__normal_iteratorIPKSG_SI_EESL_EEbT_RT0_.exit.i.i.i.i.i.i" ], [ %.val.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.ts = lshr i64 %.07.i.i.i.i.i.i, 1            ; 3 uses
  %i.tt = getelementptr inbounds nuw [56 x i8], ptr %.sroa.02.06.i.i.i.i.i.i, i64 %i.ts ; 3 uses
  %i.tu = getelementptr i8, ptr %i.tt, i64 8
  %.val2.i.i.i.i.i.i.i69 = load i64, ptr %i.tu, align 8, !tbaa !17 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val67.i.i.i, i64 %.val2.i.i.i.i.i.i.i69) ; 2 uses
  %i.tv = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.tv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.tt, align 8
  %i.tw = call i32 @memcmp(ptr noundef readonly %.val.i.i.i.i.i.i.i, ptr noundef readonly %.val66.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.tw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox4tzdbL13__binary_findERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_INS4_6__ruleESaISD_EEESaISG_EERKSC_E3$_0EclINS_17__normal_iteratorIPKSG_SI_EESL_EEbT_RT0_.exit.i.i.i.i.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i
  %i.tx = sub i64 %.val2.i.i.i.i.i.i.i69, %.val67.i.i.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.tx, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox4tzdbL13__binary_findERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_INS4_6__ruleESaISD_EEESaISG_EERKSC_E3$_0EclINS_17__normal_iteratorIPKSG_SI_EESL_EEbT_RT0_.exit.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox4tzdbL13__binary_findERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_INS4_6__ruleESaISD_EEESaISG_EERKSC_E3$_0EclINS_17__normal_iteratorIPKSG_SI_EESL_EEbT_RT0_.exit.i.i.i.i.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.tw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i ]
  %i.ty = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tt, i64 56
  %i.ua = xor i64 %i.ts, -1
  %i.ub = add nsw i64 %.07.i.i.i.i.i.i, %i.ua
  %.sroa.02.1.i.i.i.i.i.i = select i1 %i.ty, ptr %i.tz, ptr %.sroa.02.06.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.ty, i64 %i.ub, i64 %i.ts ; 2 uses
  %i.uc = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.uc, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEES8_ZNSC_L13__binary_findERKSK_RKS8_E3$_0ET_SR_SR_RKT0_T1_.exit.i.i.i.i", !llvm.loop !141

"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEES8_ZNSC_L13__binary_findERKSK_RKS8_E3$_0ET_SR_SR_RKT0_T1_.exit.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox4tzdbL13__binary_findERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_INS4_6__ruleESaISD_EEESaISG_EERKSC_E3$_0EclINS_17__normal_iteratorIPKSG_SI_EESL_EEbT_RT0_.exit.i.i.i.i.i.i", %_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt9monostateN8facebook5velox4tzdb6__saveES5_EERT_RSt7variantIJDpT0_EE.exit.i.i.i
  %.sroa.02.0.lcssa.i.i.i.i.i.i = phi ptr [ %.val.i.i.i, %_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJSt9monostateN8facebook5velox4tzdb6__saveES5_EERT_RSt7variantIJDpT0_EE.exit.i.i.i ], [ %.sroa.02.1.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox4tzdbL13__binary_findERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_INS4_6__ruleESaISD_EEESaISG_EERKSC_E3$_0EclINS_17__normal_iteratorIPKSG_SI_EESL_EEbT_RT0_.exit.i.i.i.i.i.i" ] ; 5 uses
  %i.ud = icmp eq ptr %.sroa.02.0.lcssa.i.i.i.i.i.i, %.val65.i.i.i
  br i1 %i.ud, label %.noexc.i.i.i68, label %bb.dv

bb.dv:                                            ; preds = %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEES8_ZNSC_L13__binary_findERKSK_RKS8_E3$_0ET_SR_SR_RKT0_T1_.exit.i.i.i.i"
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i.i.i.i.i, i64 8
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !17 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.uf, i64 %.val67.i.i.i) ; 2 uses
  %i.ug = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ug, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.dv
  %i.uh = load ptr, ptr %.sroa.02.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !11
  %i.ui = call i32 @memcmp(ptr noundef readonly %.val66.i.i.i, ptr noundef %i.uh, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ui, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZN8facebook5velox4tzdbL13__binary_findERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERKS9_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.dv
  %i.uj = sub i64 %.val67.i.i.i, %i.uf
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.uj, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZN8facebook5velox4tzdbL13__binary_findERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERKS9_.exit.i.i.i

_ZN8facebook5velox4tzdbL13__binary_findERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERKS9_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i92.i.i.i = phi i32 [ %i.ui, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.uk = icmp slt i32 %.0.i.i.i92.i.i.i, 0
  br i1 %i.uk, label %.noexc.i.i.i68, label %bb.ec

.noexc.i.i.i68:                                   ; preds = %_ZN8facebook5velox4tzdbL13__binary_findERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERKS9_.exit.i.i.i, %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISD_EEES9_ISG_SaISG_EEEES8_ZNSC_L13__binary_findERKSK_RKS8_E3$_0ET_SR_SR_RKT0_T1_.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !142
  store ptr %.val66.i.i.i, ptr %7, align 16, !tbaa !16, !noalias !99
  %i.ul = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.val67.i.i.i, ptr %i.ul, align 8, !tbaa !16, !noalias !99
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.55, i64 38, i64 13, ptr nonnull %7)
          to label %bb.dw unwind label %bb.ea

bb.dw:                                            ; preds = %.noexc.i.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !142
  %i.um = load ptr, ptr %10, align 8, !tbaa !11, !noalias !99
  invoke void @_ZSt21__throw_runtime_errorPKc(ptr noundef %i.um) #28
          to label %bb.dx unwind label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  unreachable

bb.dy:                                            ; preds = %.critedge.i.i
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.ez, %.noexc108.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %bb.eu, %.noexc104.i.i.i
  %lpad.loopexit133.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %bb.ep, %.noexc100.i.i.i
  %lpad.loopexit136.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %bb.du, %.noexc90.i.i.i
  %lpad.loopexit138.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %bb.db, %.noexc86.i.i.i
  %lpad.loopexit141.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %bb.bt, %.noexc71.i.i.i
  %lpad.loopexit143.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i: ; preds = %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit109.i.i.i, %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit105.i.i.i, %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit101.i.i.i, %._crit_edge.thread181.i.i.i, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.i.i.i, %bb.bs
  %lpad.loopexit151.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i: ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp152.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

bb.dz:                                            ; preds = %bb.cb, %.noexc79.i.i.i, %bb.bz, %bb.bx, %.noexc76.i.i.i, %.noexc75.i.i.i, %bb.bv, %.noexc73.i.i.i, %bb.bu, %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit.i.i.i
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %.body168

.body168:                                         ; preds = %.loopexit.i160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162, %bb.dz
  %eh.lpad-body169 = phi { ptr, i32 } [ %i.uo, %bb.dz ], [ %lpad.phi.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162 ], [ %lpad.phi.i, %.loopexit.i160 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !99
  br label %.loopexit.split-lp.i.i.i

.body138.i.i:                                     ; preds = %.loopexit.i130.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !99
  br label %.loopexit.split-lp.i.i.i

bb.ea:                                            ; preds = %.noexc.i.i.i68
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i

bb.eb:                                            ; preds = %bb.dw
  %i.uq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ur = load ptr, ptr %10, align 8, !tbaa !11, !noalias !99 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ut = icmp eq ptr %i.ur, %i.us
  br i1 %i.ut, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i.i.i: ; preds = %bb.eb
  %i.uu = load i64, ptr %i.us, align 8, !tbaa !16, !noalias !99
  %i.uv = add i64 %i.uu, 1
  call void @_ZdlPvm(ptr noundef %i.ur, i64 noundef %i.uv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i.i.i, %bb.ea
  %.pn56.i.i.i = phi { ptr, i32 } [ %i.up, %bb.ea ], [ %i.uq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i.i.i ], [ %i.uq, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !99
  br label %.loopexit.split-lp.i.i.i

bb.ec:                                            ; preds = %_ZN8facebook5velox4tzdbL13__binary_findERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERKS9_.exit.i.i.i
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i.i.i.i.i, i64 32
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !82 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !82
  %.not146.i.i.i = icmp ult ptr %i.ux, %i.uz
  br i1 %.not146.i.i.i, label %.lr.ph.i.i.i.a, label %._crit_edge.thread181.i.i.i

.lr.ph.i.i.i.a:                                   ; preds = %bb.ec, %bb.eg
  %.0148.i.i.i = phi i64 [ %.1.i.i.i, %bb.eg ], [ 0, %bb.ec ] ; 2 uses
  %.sroa.0115.0147.i.i.i = phi ptr [ %i.ve, %bb.eg ], [ %i.ux, %bb.ec ] ; 4 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.sroa.0115.0147.i.i.i, i64 8
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !145
  %i.vc = icmp eq i64 %i.vb, 292278993
  br i1 %i.vc, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %.lr.ph.i.i.i.a
  switch i64 %.0148.i.i.i, label %.noexc63.i.i.i [
    i64 0, label %bb.ee
    i64 1, label %bb.ef
  ]

bb.ee:                                            ; preds = %bb.ed
  %43 = ptrtoint ptr %.sroa.0115.0147.i.i.i to i64
  store i64 %43, ptr %i.lc, align 8, !tbaa !82, !alias.scope !99
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  %i.vd = ptrtoint ptr %.sroa.0115.0147.i.i.i to i64
  store i64 %i.vd, ptr %i.lw, align 8, !tbaa !82, !alias.scope !99
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %.lr.ph.i.i.i.a
  %.1.i.i.i = phi i64 [ 1, %bb.ee ], [ 2, %bb.ef ], [ %.0148.i.i.i, %.lr.ph.i.i.i.a ] ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.0115.0147.i.i.i, i64 104 ; 2 uses
  %i.vf = load ptr, ptr %i.uy, align 8, !tbaa !82
  %.not.i.i.i67.a = icmp ult ptr %i.ve, %i.vf
  br i1 %.not.i.i.i67.a, label %.lr.ph.i.i.i.a, label %._crit_edge.i.i.i, !llvm.loop !146

._crit_edge.i.i.i:                                ; preds = %bb.eg
  switch i64 %.1.i.i.i, label %.noexc63.i.i.i [
    i64 0, label %._crit_edge.thread181.i.i.i
    i64 2, label %bb.el
  ]

.noexc63.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %bb.ed
  %.2180.i.i.i = phi i64 [ 3, %bb.ed ], [ %.1.i.i.i, %._crit_edge.i.i.i ]
  %i.vg = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !147
  store i64 %.2180.i.i.i, ptr %6, align 16, !tbaa !16, !noalias !99
  %i.vh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.vi = load ptr, ptr %i.lr, align 8, !tbaa !11, !alias.scope !99
  %i.vj = load i64, ptr %i.lt, align 8, !tbaa !17, !alias.scope !99
  store ptr %i.vi, ptr %i.vh, align 16, !tbaa !16, !noalias !99
  %i.vk = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.vj, ptr %i.vk, align 8, !tbaa !16, !noalias !99
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.56, i64 56, i64 212, ptr nonnull %6)
          to label %bb.eh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread.i.i.i

bb.eh:                                            ; preds = %.noexc63.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !147
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.vg, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ei unwind label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  invoke void @__cxa_throw(ptr nonnull %i.vg, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
          to label %bb.fh unwind label %bb.ej

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread.i.i.i: ; preds = %.noexc63.i.i.i
  %i.vl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !99
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.051.i.i.i = phi i1 [ false, %bb.ei ], [ true, %bb.eh ] ; 2 uses
  %i.vm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.vn = load ptr, ptr %11, align 8, !tbaa !11, !noalias !99 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.vp = icmp eq ptr %i.vn, %i.vo
  br i1 %i.vp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i: ; preds = %bb.ej
  %i.vq = load i64, ptr %i.vo, align 8, !tbaa !16, !noalias !99
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vr) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !99
  br i1 %.051.i.i.i, label %bb.ek, label %.loopexit.split-lp.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i: ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !99
  br i1 %.051.i.i.i, label %bb.ek, label %.loopexit.split-lp.i.i.i

bb.ek:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread.i.i.i
  %.pn132.i.i.i = phi { ptr, i32 } [ %i.vl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread.i.i.i ], [ %i.vm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i ], [ %i.vm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i ]
  call void @__cxa_free_exception(ptr %i.vg) #26
  br label %.loopexit.split-lp.i.i.i

bb.el:                                            ; preds = %._crit_edge.i.i.i
  store i8 1, ptr %i.lb, align 8, !tbaa !104, !alias.scope !99
  br label %._crit_edge.thread181.i.i.i

._crit_edge.thread181.i.i.i:                      ; preds = %bb.el, %._crit_edge.i.i.i, %bb.ec, %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit.i.i.i
  %i.vs = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.em unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i

bb.em:                                            ; preds = %._crit_edge.thread181.i.i.i
  switch i32 %i.vs, label %bb.en [
    i32 -1, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
    i32 10, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
  ]

bb.en:                                            ; preds = %bb.em
  %i.vt = invoke fastcc i64 @_ZN8facebook5velox4tzdbL12__parse_yearERSi(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.eo unwind label %bb.er

bb.eo:                                            ; preds = %bb.en
  store i64 %i.vt, ptr %i.lg, align 8, !tbaa !35, !alias.scope !99
  br label %.noexc100.i.i.i

.noexc100.i.i.i:                                  ; preds = %bb.ep, %bb.eo
  %i.vu = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc99.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i

.noexc99.i.i.i:                                   ; preds = %.noexc100.i.i.i
  switch i32 %i.vu, label %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit101.i.i.i [
    i32 32, label %bb.ep
    i32 9, label %bb.ep
  ]

bb.ep:                                            ; preds = %.noexc99.i.i.i, %.noexc99.i.i.i
  %i.vv = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc100.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit101.i.i.i: ; preds = %.noexc99.i.i.i
  %i.vw = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.eq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i

bb.eq:                                            ; preds = %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit101.i.i.i
  switch i32 %i.vw, label %bb.es [
    i32 -1, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
    i32 10, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
  ]

bb.er:                                            ; preds = %bb.en
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

bb.es:                                            ; preds = %bb.eq
  %i.vy = invoke fastcc i8 @_ZN8facebook5velox4tzdbL13__parse_monthERSi(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.et unwind label %bb.ew

bb.et:                                            ; preds = %bb.es
  store i8 %i.vy, ptr %i.lh, align 8, !tbaa !16, !alias.scope !99
  br label %.noexc104.i.i.i

.noexc104.i.i.i:                                  ; preds = %bb.eu, %bb.et
  %i.vz = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc103.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i

.noexc103.i.i.i:                                  ; preds = %.noexc104.i.i.i
  switch i32 %i.vz, label %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit105.i.i.i [
    i32 32, label %bb.eu
    i32 9, label %bb.eu
  ]

bb.eu:                                            ; preds = %.noexc103.i.i.i, %.noexc103.i.i.i
  %i.wa = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc104.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit105.i.i.i: ; preds = %.noexc103.i.i.i
  %i.wb = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.ev unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i

bb.ev:                                            ; preds = %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit105.i.i.i
  switch i32 %i.wb, label %bb.ex [
    i32 -1, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
    i32 10, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
  ]

bb.ew:                                            ; preds = %bb.es
  %i.wc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

bb.ex:                                            ; preds = %bb.ev
  %i.wd = invoke fastcc { i64, i64 } @_ZN8facebook5velox4tzdbL10__parse_onERSi(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.ey unwind label %bb.fb     ; 2 uses

bb.ey:                                            ; preds = %bb.ex
  %.fca.0.extract2.i.i.i = extractvalue { i64, i64 } %i.wd, 0
  %.fca.1.extract3.i.i.i = extractvalue { i64, i64 } %i.wd, 1
  %.sroa.25.0.extract.trunc.i.i.i = trunc i64 %.fca.1.extract3.i.i.i to i40
  store i64 %.fca.0.extract2.i.i.i, ptr %i.li, align 4, !alias.scope !99
  store i40 %.sroa.25.0.extract.trunc.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i, align 4, !alias.scope !99
  br label %.noexc108.i.i.i

.noexc108.i.i.i:                                  ; preds = %bb.ez, %bb.ey
  %i.we = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc107.i.i.i unwind label %.loopexit.i.i.i

.noexc107.i.i.i:                                  ; preds = %.noexc108.i.i.i
  switch i32 %i.we, label %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit109.i.i.i [
    i32 32, label %bb.ez
    i32 9, label %bb.ez
  ]

bb.ez:                                            ; preds = %.noexc107.i.i.i, %.noexc107.i.i.i
  %i.wf = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc108.i.i.i unwind label %.loopexit.i.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit109.i.i.i: ; preds = %.noexc107.i.i.i
  %i.wg = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.fa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i

bb.fa:                                            ; preds = %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit109.i.i.i
  switch i32 %i.wg, label %bb.fc [
    i32 -1, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
    i32 10, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
  ]

bb.fb:                                            ; preds = %bb.ex
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

bb.fc:                                            ; preds = %bb.fa
  %i.wi = invoke fastcc i64 @_ZN8facebook5velox4tzdbL16__parse_durationERSi(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc111.i.i.i unwind label %bb.ff

.noexc111.i.i.i:                                  ; preds = %bb.fc
  %i.wj = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc112.i.i.i unwind label %bb.ff

.noexc112.i.i.i:                                  ; preds = %.noexc111.i.i.i
  %switch.tableidx573 = add i32 %i.wj, -103       ; 3 uses
  %i.wk = icmp ult i32 %switch.tableidx573, 20
  %switch.shifted576 = lshr i32 610305, %switch.tableidx573
  %switch.lobit577 = trunc i32 %switch.shifted576 to i1
  %or.cond581 = select i1 %i.wk, i1 %switch.lobit577, i1 false
  br i1 %or.cond581, label %switch.lookup575, label %bb.fd

bb.fd:                                            ; preds = %.noexc112.i.i.i
  %i.wl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5ungetEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.fe unwind label %bb.ff     ; 0 uses

switch.lookup575:                                 ; preds = %.noexc112.i.i.i
  %i.wm = zext nneg i32 %switch.tableidx573 to i64
  %switch.gep578 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook5velox4tzdbL14__parse_tzdataERNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_INS1_6__ruleESaISC_EEESaISF_EERSi.74, i64 %i.wm
  %switch.load579 = load i8, ptr %switch.gep578, align 1
  %switch.ext580 = zext i8 %switch.load579 to i32
  br label %bb.fe

bb.fe:                                            ; preds = %switch.lookup575, %bb.fd
  %.0.i.i.i.i.i = phi i32 [ %switch.ext580, %switch.lookup575 ], [ 0, %bb.fd ]
  store i64 %i.wi, ptr %i.lk, align 8, !tbaa !35, !alias.scope !99
  store i32 %.0.i.i.i.i.i, ptr %i.ll, align 8, !tbaa !84, !alias.scope !99
  br label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i

bb.ff:                                            ; preds = %bb.fd, %.noexc111.i.i.i, %bb.fc
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.ff, %bb.fb, %bb.ew, %bb.er, %bb.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i, %.body138.i.i, %.body168, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i, %bb.dy
  %.pn56.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.un, %bb.dy ], [ %i.wn, %bb.ff ], [ %i.vm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i ], [ %i.wh, %bb.fb ], [ %i.wc, %bb.ew ], [ %i.vx, %bb.er ], [ %lpad.phi.i.i.i, %.body138.i.i ], [ %eh.lpad-body169, %.body168 ], [ %.pn56.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i ], [ %i.vm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i ], [ %.pn132.i.i.i, %bb.ek ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit133.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit136.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit138.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit141.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit143.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit151.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i ], [ %lpad.loopexit.split-lp152.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i ] ; 3 uses
  %i.wo = load ptr, ptr %i.ld, align 8, !tbaa !11 ; 2 uses
  %i.wp = icmp eq ptr %i.wo, %i.le
  br i1 %i.wp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123.i.i: ; preds = %.loopexit.split-lp.i.i.i
  %i.wq = load i64, ptr %i.le, align 8, !tbaa !16
  %i.wr = add i64 %i.wq, 1
  call void @_ZdlPvm(ptr noundef %i.wo, i64 noundef %i.wr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124.i.i: ; preds = %.loopexit.split-lp.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123.i.i
  %i.ws = load i8, ptr %i.la, align 8, !tbaa !102
  %i.wt = icmp eq i8 %i.ws, 2
  br i1 %i.wt, label %bb.fg, label %.body.i.i52

bb.fg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124.i.i
  %i.wu = load ptr, ptr %i.lr, align 8, !tbaa !11 ; 2 uses
  %i.wv = icmp eq ptr %i.wu, %i.ls
  br i1 %i.wv, label %.body.i.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i126.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i126.i.i: ; preds = %bb.fg
  %i.ww = load i64, ptr %i.ls, align 8, !tbaa !16
  %i.wx = add i64 %i.ww, 1
  call void @_ZdlPvm(ptr noundef %i.wu, i64 noundef %i.wx) #29
  br label %.body.i.i52

bb.fh:                                            ; preds = %bb.ei
  unreachable

_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i: ; preds = %bb.fe, %bb.fa, %bb.fa, %bb.ev, %bb.ev, %bb.eq, %bb.eq, %bb.em, %bb.em
  %i.wy = load ptr, ptr %i.ob, align 8, !tbaa !150 ; 14 uses
  %i.wz = load ptr, ptr %i.oc, align 8, !tbaa !153
end_hunk_1
