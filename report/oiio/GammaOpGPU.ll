inline.NumInlined: 864
inline.NumDeleted: 63
begin_hunk_0_@_ZN16OpenColorIO_v2_524GetGammaGPUShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS0_IKNS_11GammaOpDataEE:bb.a

bb.qw:                                            ; preds = %bb.qg, %bb.qf
  %i.blu = landingpad { ptr, i32 }
          cleanup
  br label %bb.qz

bb.qx:                                            ; preds = %._crit_edge.i.i64.i
  %i.blv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i

bb.qy:                                            ; preds = %bb.qi, %bb.qh
  %i.blw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.blx = load ptr, ptr %95, align 8, !tbaa !51  ; 2 uses
  %i.bly = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 2 uses
  %i.blz = icmp eq ptr %i.blx, %i.bly
  br i1 %i.blz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i: ; preds = %bb.qy
  %i.bma = load i64, ptr %i.bly, align 8, !tbaa !44
  %i.bmb = add i64 %i.bma, 1
  call void @_ZdlPvm(ptr noundef %i.blx, i64 noundef %i.bmb) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i: ; preds = %bb.qy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i, %bb.qx
  %.pn35.i = phi { ptr, i32 } [ %i.blv, %bb.qx ], [ %i.blw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i ], [ %i.blw, %bb.qy ]
  %i.bmc = load ptr, ptr %98, align 8, !tbaa !51  ; 2 uses
  %i.bmd = icmp eq ptr %i.bmc, %i.bjt
  br i1 %i.bmd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i537, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i536

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i536: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i
  %i.bme = load i64, ptr %i.bjt, align 8, !tbaa !44
  %i.bmf = add i64 %i.bme, 1
  call void @_ZdlPvm(ptr noundef %i.bmc, i64 noundef %i.bmf) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i537

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i537: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i536
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #10
  %i.bmg = load ptr, ptr %97, align 8, !tbaa !51  ; 2 uses
  %i.bmh = icmp eq ptr %i.bmg, %i.bjq
  br i1 %i.bmh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i537
  %i.bmi = load i64, ptr %i.bjq, align 8, !tbaa !44
  %i.bmj = add i64 %i.bmi, 1
  call void @_ZdlPvm(ptr noundef %i.bmg, i64 noundef %i.bmj) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i537, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #10
  %i.bmk = load ptr, ptr %96, align 8, !tbaa !51  ; 2 uses
  %i.bml = icmp eq ptr %i.bmk, %i.bjn
  br i1 %i.bml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i
  %i.bmm = load i64, ptr %i.bjn, align 8, !tbaa !44
  %i.bmn = add i64 %i.bmm, 1
  call void @_ZdlPvm(ptr noundef %i.bmk, i64 noundef %i.bmn) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #10
  br label %bb.qz

bb.qz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, %bb.qw
  %.pn35.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn35.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ], [ %i.blu, %bb.qw ]
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %94) #10
  br label %bb.ra

bb.ra:                                            ; preds = %bb.qz, %bb.qv
  %.pn35.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn35.pn.pn.pn.pn.i, %bb.qz ], [ %i.blt, %bb.qv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #10
  br label %bb.re

bb.rb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i
  %i.bmo = landingpad { ptr, i32 }
          cleanup
  br label %bb.rd

bb.rc:                                            ; preds = %bb.ql, %bb.qk
  %i.bmp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %99) #10
  br label %bb.rd

bb.rd:                                            ; preds = %bb.rc, %bb.rb
  %.pn42.i = phi { ptr, i32 } [ %i.bmp, %bb.rc ], [ %i.bmo, %bb.rb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #10
  br label %bb.re

bb.re:                                            ; preds = %bb.rd, %bb.ra, %bb.qu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i
  %.pn42.pn.i = phi { ptr, i32 } [ %.pn42.i, %bb.rd ], [ %.pn35.pn.pn.pn.pn.pn.i, %bb.ra ], [ %.pn29.pn.pn.pn.pn.i, %bb.qu ], [ %i.bkv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i ]
  %i.bmq = load ptr, ptr %88, align 8, !tbaa !51  ; 2 uses
  %i.bmr = icmp eq ptr %i.bmq, %i.bhv
  br i1 %i.bmr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i: ; preds = %bb.re
  %i.bms = load i64, ptr %i.bhv, align 8, !tbaa !44
  %i.bmt = add i64 %i.bms, 1
  call void @_ZdlPvm(ptr noundef %i.bmq, i64 noundef %i.bmt) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i: ; preds = %bb.re, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #10
  br label %.body544

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i89.i: ; preds = %bb.qm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #10
  %i.bmu = load ptr, ptr %i.bha, align 8, !tbaa !43 ; 8 uses
  %.not.i.i546 = icmp eq ptr %i.bmu, null
  br i1 %.not.i.i546, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.rf

bb.rf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i89.i
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmu, i64 8 ; 4 uses
  %i.bmw = load atomic i64, ptr %i.bmv acquire, align 8 ; 2 uses
  %i.bmx = icmp eq i64 %i.bmw, 4294967297
  %i.bmy = trunc i64 %i.bmw to i32                ; 2 uses
  br i1 %i.bmx, label %bb.rg, label %bb.rh

bb.rg:                                            ; preds = %bb.rf
  store i32 0, ptr %i.bmv, align 8, !tbaa !57
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmu, i64 12
  store i32 0, ptr %i.bmz, align 4, !tbaa !59
  %i.bna = load ptr, ptr %i.bmu, align 8, !tbaa !60
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 16
  %i.bnc = load ptr, ptr %i.bnb, align 8
  call void %i.bnc(ptr noundef nonnull align 8 dereferenceable(16) %i.bmu) #10, !inline_history !62
  %i.bnd = load ptr, ptr %i.bmu, align 8, !tbaa !60
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 24
  %i.bnf = load ptr, ptr %i.bne, align 8
  call void %i.bnf(ptr noundef nonnull align 8 dereferenceable(16) %i.bmu) #10, !inline_history !62
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.rh:                                            ; preds = %bb.rf
  %i.bng = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i547 = icmp eq i8 %i.bng, 0
  br i1 %.not.i.i.i547, label %bb.rj, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.bnh = add nsw i32 %i.bmy, -1
  store i32 %i.bnh, ptr %i.bmv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i548

bb.rj:                                            ; preds = %bb.rh
  %i.bni = atomicrmw volatile add ptr %i.bmv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i548

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i548: ; preds = %bb.rj, %bb.ri
  %.0.i.i.i.i549 = phi i32 [ %i.bmy, %bb.ri ], [ %i.bni, %bb.rj ]
  %i.bnj = icmp eq i32 %.0.i.i.i.i549, 1
  br i1 %i.bnj, label %bb.rk, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.rk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i548
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bmu) #10
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.rl:                                            ; preds = %.noexc.i.i540, %.noexc.i541
  %i.bnk = landingpad { ptr, i32 }
          cleanup
  br label %.body544

.body544:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i, %bb.rl
  %eh.lpad-body545 = phi { ptr, i32 } [ %i.bnk, %bb.rl ], [ %.pn42.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %247) #10
  br label %bb.aec

bb.rm:                                            ; preds = %bb.n
  store ptr %i.w, ptr %248, align 8, !tbaa !13
  %i.bnl = getelementptr inbounds nuw i8, ptr %248, i64 8 ; 2 uses
  %i.bnm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bnn = load ptr, ptr %i.bnm, align 8, !tbaa !43 ; 3 uses
  store ptr %i.bnn, ptr %i.bnl, align 8, !tbaa !43
  %.not.i.i.i551 = icmp eq ptr %i.bnn, null
  br i1 %.not.i.i.i551, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit553, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bnn, i64 8 ; 3 uses
  %i.bnp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i552 = icmp eq i8 %i.bnp, 0
  br i1 %.not.i.i.i.i552, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.bnq = load i32, ptr %i.bno, align 4, !tbaa !3
  %i.bnr = add nsw i32 %i.bnq, 1
  store i32 %i.bnr, ptr %i.bno, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit553

bb.rp:                                            ; preds = %bb.rn
  %i.bns = atomicrmw volatile add ptr %i.bno, i32 1 acq_rel, align 4 ; 0 uses
  %.val46.pre = load ptr, ptr %248, align 8, !tbaa !13
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit553

_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit553: ; preds = %bb.rm, %bb.ro, %bb.rp
  %.val46 = phi ptr [ %i.w, %bb.rm ], [ %i.w, %bb.ro ], [ %.val46.pre, %bb.rp ] ; 4 uses
  %.val45 = load ptr, ptr %0, align 8, !tbaa !7
  %i.bnt = getelementptr inbounds nuw i8, ptr %.val46, i64 176
  %i.bnu = load ptr, ptr %i.bnt, align 8, !tbaa !64
  %i.bnv = load double, ptr %i.bnu, align 8, !tbaa !65
  %255 = fdiv double 1.000000e+00, %i.bnv
  %i.bnw = getelementptr inbounds nuw i8, ptr %.val46, i64 200
  %i.bnx = load ptr, ptr %i.bnw, align 8, !tbaa !64
  %i.bny = load double, ptr %i.bnx, align 8, !tbaa !65
  %256 = fdiv double 1.000000e+00, %i.bny
  %i.bnz = getelementptr inbounds nuw i8, ptr %.val46, i64 224
  %i.boa = load ptr, ptr %i.bnz, align 8, !tbaa !64
  %i.bob = load double, ptr %i.boa, align 8, !tbaa !65
  %257 = fdiv double 1.000000e+00, %i.bob
  %i.boc = getelementptr inbounds nuw i8, ptr %.val46, i64 248
  %i.bod = load ptr, ptr %i.boc, align 8, !tbaa !64
  %i.boe = load double, ptr %i.bod, align 8, !tbaa !65
  %258 = fdiv double 1.000000e+00, %i.boe
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #10
  %i.bof = call noundef ptr @_ZNK16OpenColorIO_v2_516GpuShaderCreator12getPixelNameEv(ptr noundef nonnull align 8 dereferenceable(16) %.val45) #10 ; 4 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 7 uses
  store ptr %i.bog, ptr %76, align 8, !tbaa !49
  %i.boh = icmp eq ptr %i.bof, null
  br i1 %i.boh, label %.noexc.i621, label %bb.rq

.noexc.i621:                                      ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit553
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #11
          to label %.noexc622 unwind label %bb.ti

.noexc622:                                        ; preds = %.noexc.i621
  unreachable

bb.rq:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit553
  %i.boi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bof) #10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i64 %i.boi, ptr %i.e, align 8, !tbaa !50
  %i.boj = icmp ugt i64 %i.boi, 15
  br i1 %i.boj, label %.noexc.i.i620, label %._crit_edge.i.i.i554

.noexc.i.i620:                                    ; preds = %bb.rq
  %i.bok = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc623 unwind label %bb.ti ; 2 uses

.noexc623:                                        ; preds = %.noexc.i.i620
  store ptr %i.bok, ptr %76, align 8, !tbaa !51
  %i.bol = load i64, ptr %i.e, align 8, !tbaa !50
  store i64 %i.bol, ptr %i.bog, align 8, !tbaa !44
  br label %._crit_edge.i.i.i554

._crit_edge.i.i.i554:                             ; preds = %.noexc623, %bb.rq
  %i.bom = phi ptr [ %i.bok, %.noexc623 ], [ %i.bog, %bb.rq ] ; 2 uses
  switch i64 %i.boi, label %bb.rs [
    i64 1, label %bb.rr
    i64 0, label %._crit_edge.i.i47.i555
  ]

bb.rr:                                            ; preds = %._crit_edge.i.i.i554
  %i.bon = load i8, ptr %i.bof, align 1, !tbaa !44
  store i8 %i.bon, ptr %i.bom, align 1, !tbaa !44
  br label %._crit_edge.i.i47.i555

bb.rs:                                            ; preds = %._crit_edge.i.i.i554
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bom, ptr nonnull align 1 %i.bof, i64 %i.boi, i1 false)
  br label %._crit_edge.i.i47.i555

._crit_edge.i.i47.i555:                           ; preds = %bb.rs, %bb.rr, %._crit_edge.i.i.i554
  %i.boo = load i64, ptr %i.e, align 8, !tbaa !50 ; 2 uses
  %i.bop = getelementptr inbounds nuw i8, ptr %76, i64 8
  store i64 %i.boo, ptr %i.bop, align 8, !tbaa !52
  %i.boq = load ptr, ptr %76, align 8, !tbaa !51
  %i.bor = getelementptr inbounds nuw i8, ptr %i.boq, i64 %i.boo
  store i8 0, ptr %i.bor, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #10
  %i.bos = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 6 uses
  store ptr %i.bos, ptr %77, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bos, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, i64 5, i1 false)
  %i.bot = getelementptr inbounds nuw i8, ptr %77, i64 8
  store i64 5, ptr %i.bot, align 8, !tbaa !52
  %i.bou = getelementptr inbounds nuw i8, ptr %77, i64 21
  store i8 0, ptr %i.bou, align 1, !tbaa !44
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText13declareFloat4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdddd(ptr noundef nonnull align 8 dereferenceable(764) %238, ptr noundef nonnull align 8 dereferenceable(32) %77, double noundef %255, double noundef %256, double noundef %257, double noundef %258)
          to label %bb.rt unwind label %bb.sk

bb.rt:                                            ; preds = %._crit_edge.i.i47.i555
  %i.bov = load ptr, ptr %77, align 8, !tbaa !51  ; 2 uses
  %i.bow = icmp eq ptr %i.bov, %i.bos
  br i1 %i.bow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i564, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i563

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i563: ; preds = %bb.rt
  %i.box = load i64, ptr %i.bos, align 8, !tbaa !44
  %i.boy = add i64 %i.box, 1
  call void @_ZdlPvm(ptr noundef %i.bov, i64 noundef %i.boy) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i564

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i564: ; preds = %bb.rt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i563
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %78, ptr noundef nonnull align 8 dereferenceable(764) %238)
          to label %._crit_edge.i.i51.i566 unwind label %bb.sl

._crit_edge.i.i51.i566:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i564
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #10
  %i.boz = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 6 uses
  store ptr %i.boz, ptr %80, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.boz, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, i64 3, i1 false)
  %i.bpa = getelementptr inbounds nuw i8, ptr %80, i64 8
  store i64 3, ptr %i.bpa, align 8, !tbaa !52
  %i.bpb = getelementptr inbounds nuw i8, ptr %80, i64 19
  store i8 0, ptr %i.bpb, align 1, !tbaa !44
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText10float4DeclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %79, ptr noundef nonnull align 8 dereferenceable(764) %238, ptr noundef nonnull align 8 dereferenceable(32) %80)
          to label %bb.ru unwind label %bb.sm

bb.ru:                                            ; preds = %._crit_edge.i.i51.i566
  %i.bpc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull align 8 dereferenceable(32) %79)
          to label %bb.rv unwind label %bb.sn

bb.rv:                                            ; preds = %bb.ru
  %i.bpd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bpc, ptr noundef nonnull @.str.16)
          to label %bb.rw unwind label %bb.sn

bb.rw:                                            ; preds = %bb.rv
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #10
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText11float4ConstB5cxx11Ef(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %81, ptr noundef nonnull align 8 dereferenceable(764) %238, float noundef 0.000000e+00)
          to label %bb.rx unwind label %bb.so

bb.rx:                                            ; preds = %bb.rw
  %i.bpe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bpd, ptr noundef nonnull align 8 dereferenceable(32) %81)
          to label %bb.ry unwind label %bb.sp

bb.ry:                                            ; preds = %bb.rx
  %i.bpf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bpe, ptr noundef nonnull @.str.28)
          to label %bb.rz unwind label %bb.sp

bb.rz:                                            ; preds = %bb.ry
  %i.bpg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bpf, ptr noundef nonnull align 8 dereferenceable(32) %76)
          to label %bb.sa unwind label %bb.sp

bb.sa:                                            ; preds = %bb.rz
  %i.bph = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bpg, ptr noundef nonnull @.str.38)
          to label %bb.sb unwind label %bb.sp     ; 0 uses

bb.sb:                                            ; preds = %bb.sa
  %i.bpi = load ptr, ptr %81, align 8, !tbaa !51  ; 2 uses
  %i.bpj = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.bpk = icmp eq ptr %i.bpi, %i.bpj
  br i1 %i.bpk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i580, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i579

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i579: ; preds = %bb.sb
  %i.bpl = load i64, ptr %i.bpj, align 8, !tbaa !44
  %i.bpm = add i64 %i.bpl, 1
  call void @_ZdlPvm(ptr noundef %i.bpi, i64 noundef %i.bpm) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i580

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i580: ; preds = %bb.sb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i579
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #10
  %i.bpn = load ptr, ptr %79, align 8, !tbaa !51  ; 2 uses
  %i.bpo = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.bpp = icmp eq ptr %i.bpn, %i.bpo
  br i1 %i.bpp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i582, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i581

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i581: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i580
  %i.bpq = load i64, ptr %i.bpo, align 8, !tbaa !44
  %i.bpr = add i64 %i.bpq, 1
  call void @_ZdlPvm(ptr noundef %i.bpn, i64 noundef %i.bpr) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i582

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i582: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i580, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i581
  %i.bps = load ptr, ptr %80, align 8, !tbaa !51  ; 2 uses
  %i.bpt = icmp eq ptr %i.bps, %i.boz
  br i1 %i.bpt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i584, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i583

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i583: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i582
  %i.bpu = load i64, ptr %i.boz, align 8, !tbaa !44
  %i.bpv = add i64 %i.bpu, 1
  call void @_ZdlPvm(ptr noundef %i.bps, i64 noundef %i.bpv) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i584

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i584: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i582, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i583
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #10
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %82, ptr noundef nonnull align 8 dereferenceable(764) %238)
          to label %bb.sc unwind label %bb.ss

bb.sc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i584
  %i.bpw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef nonnull align 8 dereferenceable(32) %76)
          to label %bb.sd unwind label %bb.st

bb.sd:                                            ; preds = %bb.sc
  %i.bpx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bpw, ptr noundef nonnull @.str.22)
          to label %._crit_edge.i.i64.i587 unwind label %bb.st

._crit_edge.i.i64.i587:                           ; preds = %bb.sd
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #10
  %i.bpy = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 6 uses
  store ptr %i.bpy, ptr %84, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bpy, ptr noundef nonnull align 1 dereferenceable(5) @.str.23, i64 5, i1 false)
  %i.bpz = getelementptr inbounds nuw i8, ptr %84, i64 8
  store i64 5, ptr %i.bpz, align 8, !tbaa !52
  %i.bqa = getelementptr inbounds nuw i8, ptr %84, i64 21
  store i8 0, ptr %i.bqa, align 1, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #10
  %i.bqb = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 6 uses
  store ptr %i.bqb, ptr %85, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bqb, ptr noundef nonnull align 1 dereferenceable(5) @.str.24, i64 5, i1 false)
  %i.bqc = getelementptr inbounds nuw i8, ptr %85, i64 8
  store i64 5, ptr %i.bqc, align 8, !tbaa !52
  %i.bqd = getelementptr inbounds nuw i8, ptr %85, i64 21
  store i8 0, ptr %i.bqd, align 1, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #10
  %i.bqe = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 6 uses
  store ptr %i.bqe, ptr %86, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bqe, ptr noundef nonnull align 1 dereferenceable(5) @.str.25, i64 5, i1 false)
  %i.bqf = getelementptr inbounds nuw i8, ptr %86, i64 8
  store i64 5, ptr %i.bqf, align 8, !tbaa !52
  %i.bqg = getelementptr inbounds nuw i8, ptr %86, i64 21
  store i8 0, ptr %i.bqg, align 1, !tbaa !44
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText11float3ConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %83, ptr noundef nonnull align 8 dereferenceable(764) %238, ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef nonnull align 8 dereferenceable(32) %86)
          to label %bb.se unwind label %bb.su

bb.se:                                            ; preds = %._crit_edge.i.i64.i587
  %i.bqh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bpx, ptr noundef nonnull align 8 dereferenceable(32) %83)
          to label %bb.sf unwind label %bb.sv

bb.sf:                                            ; preds = %bb.se
  %i.bqi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bqh, ptr noundef nonnull @.str.12)
          to label %bb.sg unwind label %bb.sv     ; 0 uses

bb.sg:                                            ; preds = %bb.sf
  %i.bqj = load ptr, ptr %83, align 8, !tbaa !51  ; 2 uses
  %i.bqk = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 2 uses
  %i.bql = icmp eq ptr %i.bqj, %i.bqk
  br i1 %i.bql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i602, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i601

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i601: ; preds = %bb.sg
  %i.bqm = load i64, ptr %i.bqk, align 8, !tbaa !44
  %i.bqn = add i64 %i.bqm, 1
  call void @_ZdlPvm(ptr noundef %i.bqj, i64 noundef %i.bqn) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i602

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i602: ; preds = %bb.sg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i601
  %i.bqo = load ptr, ptr %86, align 8, !tbaa !51  ; 2 uses
  %i.bqp = icmp eq ptr %i.bqo, %i.bqe
  br i1 %i.bqp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i604, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i603

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i603: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i602
  %i.bqq = load i64, ptr %i.bqe, align 8, !tbaa !44
  %i.bqr = add i64 %i.bqq, 1
  call void @_ZdlPvm(ptr noundef %i.bqo, i64 noundef %i.bqr) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i604

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i604: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i602, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i603
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #10
  %i.bqs = load ptr, ptr %85, align 8, !tbaa !51  ; 2 uses
  %i.bqt = icmp eq ptr %i.bqs, %i.bqb
  br i1 %i.bqt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i606, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i605

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i605: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i604
  %i.bqu = load i64, ptr %i.bqb, align 8, !tbaa !44
  %i.bqv = add i64 %i.bqu, 1
  call void @_ZdlPvm(ptr noundef %i.bqs, i64 noundef %i.bqv) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i606

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i606: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i604, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i605
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #10
  %i.bqw = load ptr, ptr %84, align 8, !tbaa !51  ; 2 uses
  %i.bqx = icmp eq ptr %i.bqw, %i.bpy
  br i1 %i.bqx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i608, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i607

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i607: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i606
  %i.bqy = load i64, ptr %i.bpy, align 8, !tbaa !44
  %i.bqz = add i64 %i.bqy, 1
  call void @_ZdlPvm(ptr noundef %i.bqw, i64 noundef %i.bqz) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i608

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i608: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i606, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i607
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #10
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_524GetGammaGPUShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS0_IKNS_11GammaOpDataEE:bb.a

bb.ux:                                            ; preds = %bb.ud, %bb.uc
  %i.bzq = landingpad { ptr, i32 }
          cleanup
  br label %bb.va

bb.uy:                                            ; preds = %._crit_edge.i.i83.i
  %i.bzr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i

bb.uz:                                            ; preds = %bb.uf, %bb.ue
  %i.bzs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bzt = load ptr, ptr %71, align 8, !tbaa !51  ; 2 uses
  %i.bzu = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  %i.bzv = icmp eq ptr %i.bzt, %i.bzu
  br i1 %i.bzv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i: ; preds = %bb.uz
  %i.bzw = load i64, ptr %i.bzu, align 8, !tbaa !44
  %i.bzx = add i64 %i.bzw, 1
  call void @_ZdlPvm(ptr noundef %i.bzt, i64 noundef %i.bzx) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i: ; preds = %bb.uz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i, %bb.uy
  %.pn44.i = phi { ptr, i32 } [ %i.bzr, %bb.uy ], [ %i.bzs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i ], [ %i.bzs, %bb.uz ]
  %i.bzy = load ptr, ptr %74, align 8, !tbaa !51  ; 2 uses
  %i.bzz = icmp eq ptr %i.bzy, %i.bxd
  br i1 %i.bzz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i
  %i.caa = load i64, ptr %i.bxd, align 8, !tbaa !44
  %i.cab = add i64 %i.caa, 1
  call void @_ZdlPvm(ptr noundef %i.bzy, i64 noundef %i.cab) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #10
  %i.cac = load ptr, ptr %73, align 8, !tbaa !51  ; 2 uses
  %i.cad = icmp eq ptr %i.cac, %i.bxa
  br i1 %i.cad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i
  %i.cae = load i64, ptr %i.bxa, align 8, !tbaa !44
  %i.caf = add i64 %i.cae, 1
  call void @_ZdlPvm(ptr noundef %i.cac, i64 noundef %i.caf) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.i
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #10
  %i.cag = load ptr, ptr %72, align 8, !tbaa !51  ; 2 uses
  %i.cah = icmp eq ptr %i.cag, %i.bwx
  br i1 %i.cah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i641, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137.i640

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137.i640: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.i
  %i.cai = load i64, ptr %i.bwx, align 8, !tbaa !44
  %i.caj = add i64 %i.cai, 1
  call void @_ZdlPvm(ptr noundef %i.cag, i64 noundef %i.caj) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i641

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i641: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137.i640
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #10
  br label %bb.va

bb.va:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i641, %bb.ux
  %.pn44.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn44.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i641 ], [ %i.bzq, %bb.ux ]
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %70) #10
  br label %bb.vb

bb.vb:                                            ; preds = %bb.va, %bb.uw
  %.pn44.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn44.pn.pn.pn.pn.i, %bb.va ], [ %i.bzp, %bb.uw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #10
  br label %bb.vf

bb.vc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.i
  %i.cak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ve

bb.vd:                                            ; preds = %bb.ui, %bb.uh
  %i.cal = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %75) #10
  br label %bb.ve

bb.ve:                                            ; preds = %bb.vd, %bb.vc
  %.pn51.i = phi { ptr, i32 } [ %i.cal, %bb.vd ], [ %i.cak, %bb.vc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #10
  br label %bb.vf

bb.vf:                                            ; preds = %bb.ve, %bb.vb, %bb.uv, %bb.ur, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i
  %.pn51.pn.i = phi { ptr, i32 } [ %.pn51.i, %bb.ve ], [ %.pn44.pn.pn.pn.pn.pn.i, %bb.vb ], [ %.pn40.pn.pn.i, %bb.uv ], [ %.pn34.pn.pn.pn.pn.i, %bb.ur ], [ %i.byf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i ]
  %i.cam = load ptr, ptr %61, align 8, !tbaa !51  ; 2 uses
  %i.can = icmp eq ptr %i.cam, %i.bur
  br i1 %i.can, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140.i: ; preds = %bb.vf
  %i.cao = load i64, ptr %i.bur, align 8, !tbaa !44
  %i.cap = add i64 %i.cao, 1
  call void @_ZdlPvm(ptr noundef %i.cam, i64 noundef %i.cap) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i: ; preds = %bb.vf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #10
  br label %.body648

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i108.i: ; preds = %bb.uj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #10
  %i.caq = load ptr, ptr %i.btw, align 8, !tbaa !43 ; 8 uses
  %.not.i.i650 = icmp eq ptr %i.caq, null
  br i1 %.not.i.i650, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.vg

bb.vg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i108.i
  %i.car = getelementptr inbounds nuw i8, ptr %i.caq, i64 8 ; 4 uses
  %i.cas = load atomic i64, ptr %i.car acquire, align 8 ; 2 uses
  %i.cat = icmp eq i64 %i.cas, 4294967297
  %i.cau = trunc i64 %i.cas to i32                ; 2 uses
  br i1 %i.cat, label %bb.vh, label %bb.vi

bb.vh:                                            ; preds = %bb.vg
  store i32 0, ptr %i.car, align 8, !tbaa !57
  %i.cav = getelementptr inbounds nuw i8, ptr %i.caq, i64 12
  store i32 0, ptr %i.cav, align 4, !tbaa !59
  %i.caw = load ptr, ptr %i.caq, align 8, !tbaa !60
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 16
  %i.cay = load ptr, ptr %i.cax, align 8
  call void %i.cay(ptr noundef nonnull align 8 dereferenceable(16) %i.caq) #10, !inline_history !62
  %i.caz = load ptr, ptr %i.caq, align 8, !tbaa !60
  %i.cba = getelementptr inbounds nuw i8, ptr %i.caz, i64 24
  %i.cbb = load ptr, ptr %i.cba, align 8
  call void %i.cbb(ptr noundef nonnull align 8 dereferenceable(16) %i.caq) #10, !inline_history !62
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.vi:                                            ; preds = %bb.vg
  %i.cbc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i651 = icmp eq i8 %i.cbc, 0
  br i1 %.not.i.i.i651, label %bb.vk, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  %i.cbd = add nsw i32 %i.cau, -1
  store i32 %i.cbd, ptr %i.car, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i652

bb.vk:                                            ; preds = %bb.vi
  %i.cbe = atomicrmw volatile add ptr %i.car, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i652

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i652: ; preds = %bb.vk, %bb.vj
  %.0.i.i.i.i653 = phi i32 [ %i.cau, %bb.vj ], [ %i.cbe, %bb.vk ]
  %i.cbf = icmp eq i32 %.0.i.i.i.i653, 1
  br i1 %i.cbf, label %bb.vl, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.vl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i652
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.caq) #10
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.vm:                                            ; preds = %.noexc.i.i644, %.noexc.i645
  %i.cbg = landingpad { ptr, i32 }
          cleanup
  br label %.body648

.body648:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i, %bb.vm
  %eh.lpad-body649 = phi { ptr, i32 } [ %i.cbg, %bb.vm ], [ %.pn51.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %249) #10
  br label %bb.aec

bb.vn:                                            ; preds = %bb.n
  store ptr %i.w, ptr %250, align 8, !tbaa !13
  %i.cbh = getelementptr inbounds nuw i8, ptr %250, i64 8 ; 2 uses
  %i.cbi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cbj = load ptr, ptr %i.cbi, align 8, !tbaa !43 ; 3 uses
  store ptr %i.cbj, ptr %i.cbh, align 8, !tbaa !43
  %.not.i.i.i655 = icmp eq ptr %i.cbj, null
  br i1 %.not.i.i.i655, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit657, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.cbj, i64 8 ; 3 uses
  %i.cbl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i656 = icmp eq i8 %i.cbl, 0
  br i1 %.not.i.i.i.i656, label %bb.vq, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %i.cbm = load i32, ptr %i.cbk, align 4, !tbaa !3
  %i.cbn = add nsw i32 %i.cbm, 1
  store i32 %i.cbn, ptr %i.cbk, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit657

bb.vq:                                            ; preds = %bb.vo
  %i.cbo = atomicrmw volatile add ptr %i.cbk, i32 1 acq_rel, align 4 ; 0 uses
  %.val50.pre = load ptr, ptr %250, align 8, !tbaa !13
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit657

_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit657: ; preds = %bb.vn, %bb.vp, %bb.vq
  %.val50 = phi ptr [ %i.w, %bb.vn ], [ %i.w, %bb.vp ], [ %.val50.pre, %bb.vq ] ; 4 uses
  %.val49 = load ptr, ptr %0, align 8, !tbaa !7
  %i.cbp = getelementptr inbounds nuw i8, ptr %.val50, i64 176
  %i.cbq = load ptr, ptr %i.cbp, align 8, !tbaa !64
  %i.cbr = load double, ptr %i.cbq, align 8, !tbaa !65
  %259 = fdiv double 1.000000e+00, %i.cbr
  %i.cbs = getelementptr inbounds nuw i8, ptr %.val50, i64 200
  %i.cbt = load ptr, ptr %i.cbs, align 8, !tbaa !64
  %i.cbu = load double, ptr %i.cbt, align 8, !tbaa !65
  %260 = fdiv double 1.000000e+00, %i.cbu
  %i.cbv = getelementptr inbounds nuw i8, ptr %.val50, i64 224
  %i.cbw = load ptr, ptr %i.cbv, align 8, !tbaa !64
  %i.cbx = load double, ptr %i.cbw, align 8, !tbaa !65
  %261 = fdiv double 1.000000e+00, %i.cbx
  %i.cby = getelementptr inbounds nuw i8, ptr %.val50, i64 248
  %i.cbz = load ptr, ptr %i.cby, align 8, !tbaa !64
  %i.cca = load double, ptr %i.cbz, align 8, !tbaa !65
  %262 = fdiv double 1.000000e+00, %i.cca
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #10
  %i.ccb = call noundef ptr @_ZNK16OpenColorIO_v2_516GpuShaderCreator12getPixelNameEv(ptr noundef nonnull align 8 dereferenceable(16) %.val49) #10 ; 4 uses
  %i.ccc = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 7 uses
  store ptr %i.ccc, ptr %46, align 8, !tbaa !49
  %i.ccd = icmp eq ptr %i.ccb, null
  br i1 %i.ccd, label %.noexc.i740, label %bb.vr

.noexc.i740:                                      ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit657
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #11
          to label %.noexc741 unwind label %bb.xq

.noexc741:                                        ; preds = %.noexc.i740
  unreachable

bb.vr:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit657
  %i.cce = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ccb) #10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i64 %i.cce, ptr %i.c, align 8, !tbaa !50
  %i.ccf = icmp ugt i64 %i.cce, 15
  br i1 %i.ccf, label %.noexc.i.i739, label %._crit_edge.i.i.i658

.noexc.i.i739:                                    ; preds = %bb.vr
  %i.ccg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc742 unwind label %bb.xq ; 2 uses

.noexc742:                                        ; preds = %.noexc.i.i739
  store ptr %i.ccg, ptr %46, align 8, !tbaa !51
  %i.cch = load i64, ptr %i.c, align 8, !tbaa !50
  store i64 %i.cch, ptr %i.ccc, align 8, !tbaa !44
  br label %._crit_edge.i.i.i658

._crit_edge.i.i.i658:                             ; preds = %.noexc742, %bb.vr
  %i.cci = phi ptr [ %i.ccg, %.noexc742 ], [ %i.ccc, %bb.vr ] ; 2 uses
  switch i64 %i.cce, label %bb.vt [
    i64 1, label %bb.vs
    i64 0, label %._crit_edge.i.i56.i659
  ]

bb.vs:                                            ; preds = %._crit_edge.i.i.i658
  %i.ccj = load i8, ptr %i.ccb, align 1, !tbaa !44
  store i8 %i.ccj, ptr %i.cci, align 1, !tbaa !44
  br label %._crit_edge.i.i56.i659

bb.vt:                                            ; preds = %._crit_edge.i.i.i658
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cci, ptr nonnull align 1 %i.ccb, i64 %i.cce, i1 false)
  br label %._crit_edge.i.i56.i659

._crit_edge.i.i56.i659:                           ; preds = %bb.vt, %bb.vs, %._crit_edge.i.i.i658
  %i.cck = load i64, ptr %i.c, align 8, !tbaa !50 ; 2 uses
  %i.ccl = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 %i.cck, ptr %i.ccl, align 8, !tbaa !52
  %i.ccm = load ptr, ptr %46, align 8, !tbaa !51
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.ccm, i64 %i.cck
  store i8 0, ptr %i.ccn, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #10
  %i.cco = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 6 uses
  store ptr %i.cco, ptr %47, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cco, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, i64 5, i1 false)
  %i.ccp = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 5, ptr %i.ccp, align 8, !tbaa !52
  %i.ccq = getelementptr inbounds nuw i8, ptr %47, i64 21
  store i8 0, ptr %i.ccq, align 1, !tbaa !44
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText13declareFloat4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdddd(ptr noundef nonnull align 8 dereferenceable(764) %238, ptr noundef nonnull align 8 dereferenceable(32) %47, double noundef %259, double noundef %260, double noundef %261, double noundef %262)
          to label %bb.vu unwind label %bb.wo

bb.vu:                                            ; preds = %._crit_edge.i.i56.i659
  %i.ccr = load ptr, ptr %47, align 8, !tbaa !51  ; 2 uses
  %i.ccs = icmp eq ptr %i.ccr, %i.cco
  br i1 %i.ccs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i668, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i667

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i667: ; preds = %bb.vu
  %i.cct = load i64, ptr %i.cco, align 8, !tbaa !44
  %i.ccu = add i64 %i.cct, 1
  call void @_ZdlPvm(ptr noundef %i.ccr, i64 noundef %i.ccu) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i668

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i668: ; preds = %bb.vu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i667
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %48, ptr noundef nonnull align 8 dereferenceable(764) %238)
          to label %._crit_edge.i.i60.i670 unwind label %bb.wp

._crit_edge.i.i60.i670:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i668
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #10
  %i.ccv = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 6 uses
  store ptr %i.ccv, ptr %50, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ccv, ptr noundef nonnull align 1 dereferenceable(7) @.str.30, i64 7, i1 false)
  %i.ccw = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 7, ptr %i.ccw, align 8, !tbaa !52
  %i.ccx = getelementptr inbounds nuw i8, ptr %50, i64 23
  store i8 0, ptr %i.ccx, align 1, !tbaa !44
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText10float4DeclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %49, ptr noundef nonnull align 8 dereferenceable(764) %238, ptr noundef nonnull align 8 dereferenceable(32) %50)
          to label %bb.vv unwind label %bb.wq

bb.vv:                                            ; preds = %._crit_edge.i.i60.i670
  %i.ccy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(32) %49)
          to label %bb.vw unwind label %bb.wr

bb.vw:                                            ; preds = %bb.vv
  %i.ccz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ccy, ptr noundef nonnull @.str.11)
          to label %bb.vx unwind label %bb.wr

bb.vx:                                            ; preds = %bb.vw
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #10
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText4signERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %51, ptr noundef nonnull align 8 dereferenceable(764) %238, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %bb.vy unwind label %bb.ws

bb.vy:                                            ; preds = %bb.vx
  %i.cda = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ccz, ptr noundef nonnull align 8 dereferenceable(32) %51)
          to label %bb.vz unwind label %bb.wt

bb.vz:                                            ; preds = %bb.vy
  %i.cdb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cda, ptr noundef nonnull @.str.12)
          to label %bb.wa unwind label %bb.wt     ; 0 uses

bb.wa:                                            ; preds = %bb.vz
  %i.cdc = load ptr, ptr %51, align 8, !tbaa !51  ; 2 uses
  %i.cdd = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.cde = icmp eq ptr %i.cdc, %i.cdd
  br i1 %i.cde, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i684, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i683

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i683: ; preds = %bb.wa
  %i.cdf = load i64, ptr %i.cdd, align 8, !tbaa !44
  %i.cdg = add i64 %i.cdf, 1
  call void @_ZdlPvm(ptr noundef %i.cdc, i64 noundef %i.cdg) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i684

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i684: ; preds = %bb.wa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i683
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #10
  %i.cdh = load ptr, ptr %49, align 8, !tbaa !51  ; 2 uses
  %i.cdi = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.cdj = icmp eq ptr %i.cdh, %i.cdi
  br i1 %i.cdj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i686, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i685

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i685: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i684
  %i.cdk = load i64, ptr %i.cdi, align 8, !tbaa !44
  %i.cdl = add i64 %i.cdk, 1
  call void @_ZdlPvm(ptr noundef %i.cdh, i64 noundef %i.cdl) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i686

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i686: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i684, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i685
  %i.cdm = load ptr, ptr %50, align 8, !tbaa !51  ; 2 uses
  %i.cdn = icmp eq ptr %i.cdm, %i.ccv
  br i1 %i.cdn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i688, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i687

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i687: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i686
  %i.cdo = load i64, ptr %i.ccv, align 8, !tbaa !44
  %i.cdp = add i64 %i.cdo, 1
  call void @_ZdlPvm(ptr noundef %i.cdm, i64 noundef %i.cdp) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i688

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i688: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i686, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i687
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #10
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %52, ptr noundef nonnull align 8 dereferenceable(764) %238)
          to label %._crit_edge.i.i73.i690 unwind label %bb.ww

._crit_edge.i.i73.i690:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i688
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #10
  %i.cdq = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 6 uses
  store ptr %i.cdq, ptr %54, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.cdq, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, i64 3, i1 false)
  %i.cdr = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 3, ptr %i.cdr, align 8, !tbaa !52
  %i.cds = getelementptr inbounds nuw i8, ptr %54, i64 19
  store i8 0, ptr %i.cds, align 1, !tbaa !44
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText10float4DeclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %53, ptr noundef nonnull align 8 dereferenceable(764) %238, ptr noundef nonnull align 8 dereferenceable(32) %54)
          to label %bb.wb unwind label %bb.wx

bb.wb:                                            ; preds = %._crit_edge.i.i73.i690
  %i.cdt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(32) %53)
          to label %bb.wc unwind label %bb.wy

bb.wc:                                            ; preds = %bb.wb
  %i.cdu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cdt, ptr noundef nonnull @.str.39)
          to label %bb.wd unwind label %bb.wy

bb.wd:                                            ; preds = %bb.wc
  %i.cdv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.cdu, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %bb.we unwind label %bb.wy

bb.we:                                            ; preds = %bb.wd
  %i.cdw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cdv, ptr noundef nonnull @.str.38)
          to label %bb.wf unwind label %bb.wy     ; 0 uses

bb.wf:                                            ; preds = %bb.we
  %i.cdx = load ptr, ptr %53, align 8, !tbaa !51  ; 2 uses
  %i.cdy = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.cdz = icmp eq ptr %i.cdx, %i.cdy
  br i1 %i.cdz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.i699, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i698

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i698: ; preds = %bb.wf
  %i.cea = load i64, ptr %i.cdy, align 8, !tbaa !44
  %i.ceb = add i64 %i.cea, 1
  call void @_ZdlPvm(ptr noundef %i.cdx, i64 noundef %i.ceb) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.i699

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.i699: ; preds = %bb.wf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i698
  %i.cec = load ptr, ptr %54, align 8, !tbaa !51  ; 2 uses
  %i.ced = icmp eq ptr %i.cec, %i.cdq
  br i1 %i.ced, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i701, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i700

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i700: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.i699
  %i.cee = load i64, ptr %i.cdq, align 8, !tbaa !44
  %i.cef = add i64 %i.cee, 1
  call void @_ZdlPvm(ptr noundef %i.cec, i64 noundef %i.cef) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i701

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i701: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.i699, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i700
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #10
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %52) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %55, ptr noundef nonnull align 8 dereferenceable(764) %238)
          to label %bb.wg unwind label %bb.xa

bb.wg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i701
  %i.ceg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %bb.wh unwind label %bb.xb

bb.wh:                                            ; preds = %bb.wg
  %i.ceh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ceg, ptr noundef nonnull @.str.22)
          to label %._crit_edge.i.i83.i704 unwind label %bb.xb

._crit_edge.i.i83.i704:                           ; preds = %bb.wh
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #10
  %i.cei = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 6 uses
  store ptr %i.cei, ptr %57, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cei, ptr noundef nonnull align 1 dereferenceable(5) @.str.23, i64 5, i1 false)
  %i.cej = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i64 5, ptr %i.cej, align 8, !tbaa !52
  %i.cek = getelementptr inbounds nuw i8, ptr %57, i64 21
  store i8 0, ptr %i.cek, align 1, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #10
  %i.cel = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 6 uses
  store ptr %i.cel, ptr %58, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cel, ptr noundef nonnull align 1 dereferenceable(5) @.str.24, i64 5, i1 false)
  %i.cem = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i64 5, ptr %i.cem, align 8, !tbaa !52
  %i.cen = getelementptr inbounds nuw i8, ptr %58, i64 21
  store i8 0, ptr %i.cen, align 1, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #10
  %i.ceo = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 6 uses
  store ptr %i.ceo, ptr %59, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ceo, ptr noundef nonnull align 1 dereferenceable(5) @.str.25, i64 5, i1 false)
  %i.cep = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i64 5, ptr %i.cep, align 8, !tbaa !52
  %i.ceq = getelementptr inbounds nuw i8, ptr %59, i64 21
  store i8 0, ptr %i.ceq, align 1, !tbaa !44
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText11float3ConstERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %56, ptr noundef nonnull align 8 dereferenceable(764) %238, ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull align 8 dereferenceable(32) %59)
          to label %bb.wi unwind label %bb.xc

bb.wi:                                            ; preds = %._crit_edge.i.i83.i704
  %i.cer = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ceh, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %bb.wj unwind label %bb.xd

end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_524GetGammaGPUShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS0_IKNS_11GammaOpDataEE:bb.a

bb.aab:                                           ; preds = %bb.yw, %bb.yv
  %i.crn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aae

bb.aac:                                           ; preds = %._crit_edge.i.i138.i
  %i.cro = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i796

bb.aad:                                           ; preds = %bb.yy, %bb.yx
  %i.crp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.crq = load ptr, ptr %41, align 8, !tbaa !51  ; 2 uses
  %i.crr = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.crs = icmp eq ptr %i.crq, %i.crr
  br i1 %i.crs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i796, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201.i806

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201.i806: ; preds = %bb.aad
  %i.crt = load i64, ptr %i.crr, align 8, !tbaa !44
  %i.cru = add i64 %i.crt, 1
  call void @_ZdlPvm(ptr noundef %i.crq, i64 noundef %i.cru) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i796

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i796: ; preds = %bb.aad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201.i806, %bb.aac
  %.pn69.i = phi { ptr, i32 } [ %i.cro, %bb.aac ], [ %i.crp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201.i806 ], [ %i.crp, %bb.aad ]
  %i.crv = load ptr, ptr %44, align 8, !tbaa !51  ; 2 uses
  %i.crw = icmp eq ptr %i.crv, %i.cnr
  br i1 %i.crw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i798, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204.i797

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204.i797: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i796
  %i.crx = load i64, ptr %i.cnr, align 8, !tbaa !44
  %i.cry = add i64 %i.crx, 1
  call void @_ZdlPvm(ptr noundef %i.crv, i64 noundef %i.cry) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i798

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i798: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i796, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204.i797
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #10
  %i.crz = load ptr, ptr %43, align 8, !tbaa !51  ; 2 uses
  %i.csa = icmp eq ptr %i.crz, %i.cno
  br i1 %i.csa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i800, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i799

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i799: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i798
  %i.csb = load i64, ptr %i.cno, align 8, !tbaa !44
  %i.csc = add i64 %i.csb, 1
  call void @_ZdlPvm(ptr noundef %i.crz, i64 noundef %i.csc) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i800

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i800: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i798, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i799
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #10
  %i.csd = load ptr, ptr %42, align 8, !tbaa !51  ; 2 uses
  %i.cse = icmp eq ptr %i.csd, %i.cnl
  br i1 %i.cse, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i802, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.i801

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.i801: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i800
  %i.csf = load i64, ptr %i.cnl, align 8, !tbaa !44
  %i.csg = add i64 %i.csf, 1
  call void @_ZdlPvm(ptr noundef %i.csd, i64 noundef %i.csg) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i802

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i802: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.i800, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210.i801
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #10
  br label %bb.aae

bb.aae:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i802, %bb.aab
  %.pn69.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn69.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.i802 ], [ %i.crn, %bb.aab ]
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #10
  br label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae, %bb.aaa
  %.pn69.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn69.pn.pn.pn.pn.i, %bb.aae ], [ %i.crm, %bb.aaa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #10
  br label %bb.aaj

bb.aag:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161.i
  %i.csh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aai

bb.aah:                                           ; preds = %bb.zb, %bb.za
  %i.csi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #10
  br label %bb.aai

bb.aai:                                           ; preds = %bb.aah, %bb.aag
  %.pn76.i = phi { ptr, i32 } [ %i.csi, %bb.aah ], [ %i.csh, %bb.aag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #10
  br label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai, %bb.aaf, %bb.zz, %bb.zs, %bb.zl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.i760, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i
  %.pn76.pn.i = phi { ptr, i32 } [ %.pn76.i, %bb.aai ], [ %.pn69.pn.pn.pn.pn.pn.i, %bb.aaf ], [ %.pn63.pn.pn.pn.pn.i, %bb.zz ], [ %.pn57.pn.pn.pn.pn.i, %bb.zs ], [ %.pn50.pn.pn.pn.pn.pn.i, %bb.zl ], [ %i.coy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170.i760 ], [ %i.cot, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ]
  %i.csj = load ptr, ptr %24, align 8, !tbaa !51  ; 2 uses
  %i.csk = icmp eq ptr %i.csj, %i.cjn
  br i1 %i.csk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i755, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213.i754

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213.i754: ; preds = %bb.aaj
  %i.csl = load i64, ptr %i.cjn, align 8, !tbaa !44
  %i.csm = add i64 %i.csl, 1
  call void @_ZdlPvm(ptr noundef %i.csj, i64 noundef %i.csm) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i755

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i755: ; preds = %bb.aaj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213.i754
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #10
  br label %.body820

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i163.i: ; preds = %bb.zc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #10
  %i.csn = load ptr, ptr %i.cis, align 8, !tbaa !43 ; 8 uses
  %.not.i.i822 = icmp eq ptr %i.csn, null
  br i1 %.not.i.i822, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aak

bb.aak:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i163.i
  %i.cso = getelementptr inbounds nuw i8, ptr %i.csn, i64 8 ; 4 uses
  %i.csp = load atomic i64, ptr %i.cso acquire, align 8 ; 2 uses
  %i.csq = icmp eq i64 %i.csp, 4294967297
  %i.csr = trunc i64 %i.csp to i32                ; 2 uses
  br i1 %i.csq, label %bb.aal, label %bb.aam

bb.aal:                                           ; preds = %bb.aak
  store i32 0, ptr %i.cso, align 8, !tbaa !57
  %i.css = getelementptr inbounds nuw i8, ptr %i.csn, i64 12
  store i32 0, ptr %i.css, align 4, !tbaa !59
  %i.cst = load ptr, ptr %i.csn, align 8, !tbaa !60
  %i.csu = getelementptr inbounds nuw i8, ptr %i.cst, i64 16
  %i.csv = load ptr, ptr %i.csu, align 8
  call void %i.csv(ptr noundef nonnull align 8 dereferenceable(16) %i.csn) #10, !inline_history !62
  %i.csw = load ptr, ptr %i.csn, align 8, !tbaa !60
  %i.csx = getelementptr inbounds nuw i8, ptr %i.csw, i64 24
  %i.csy = load ptr, ptr %i.csx, align 8
  call void %i.csy(ptr noundef nonnull align 8 dereferenceable(16) %i.csn) #10, !inline_history !62
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aam:                                           ; preds = %bb.aak
  %i.csz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i823 = icmp eq i8 %i.csz, 0
  br i1 %.not.i.i.i823, label %bb.aao, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.cta = add nsw i32 %i.csr, -1
  store i32 %i.cta, ptr %i.cso, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i824

bb.aao:                                           ; preds = %bb.aam
  %i.ctb = atomicrmw volatile add ptr %i.cso, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i824

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i824: ; preds = %bb.aao, %bb.aan
  %.0.i.i.i.i825 = phi i32 [ %i.csr, %bb.aan ], [ %i.ctb, %bb.aao ]
  %i.ctc = icmp eq i32 %.0.i.i.i.i825, 1
  br i1 %i.ctc, label %bb.aap, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.aap:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i824
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.csn) #10
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aaq:                                           ; preds = %.noexc.i.i816, %.noexc.i817
  %i.ctd = landingpad { ptr, i32 }
          cleanup
  br label %.body820

.body820:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i755, %bb.aaq
  %eh.lpad-body821 = phi { ptr, i32 } [ %i.ctd, %bb.aaq ], [ %.pn76.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215.i755 ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %251) #10
  br label %bb.aec

bb.aar:                                           ; preds = %bb.n
  store ptr %i.w, ptr %252, align 8, !tbaa !13
  %i.cte = getelementptr inbounds nuw i8, ptr %252, i64 8 ; 2 uses
  %i.ctf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ctg = load ptr, ptr %i.ctf, align 8, !tbaa !43 ; 3 uses
  store ptr %i.ctg, ptr %i.cte, align 8, !tbaa !43
  %.not.i.i.i827 = icmp eq ptr %i.ctg, null
  br i1 %.not.i.i.i827, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit829, label %bb.aas

bb.aas:                                           ; preds = %bb.aar
  %i.cth = getelementptr inbounds nuw i8, ptr %i.ctg, i64 8 ; 3 uses
  %i.cti = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i828 = icmp eq i8 %i.cti, 0
  br i1 %.not.i.i.i.i828, label %bb.aau, label %bb.aat

bb.aat:                                           ; preds = %bb.aas
  %i.ctj = load i32, ptr %i.cth, align 4, !tbaa !3
  %i.ctk = add nsw i32 %i.ctj, 1
  store i32 %i.ctk, ptr %i.cth, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit829

bb.aau:                                           ; preds = %bb.aas
  %i.ctl = atomicrmw volatile add ptr %i.cth, i32 1 acq_rel, align 4 ; 0 uses
  %.val54.pre = load ptr, ptr %252, align 8, !tbaa !13
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit829

_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit829: ; preds = %bb.aar, %bb.aat, %bb.aau
  %.val54 = phi ptr [ %i.w, %bb.aar ], [ %i.w, %bb.aat ], [ %.val54.pre, %bb.aau ] ; 4 uses
  %.val53 = load ptr, ptr %0, align 8, !tbaa !7
  %i.ctm = getelementptr inbounds nuw i8, ptr %.val54, i64 176
  %i.ctn = load ptr, ptr %i.ctm, align 8, !tbaa !64
  %i.cto = load double, ptr %i.ctn, align 8, !tbaa !65
  %263 = fdiv double 1.000000e+00, %i.cto
  %i.ctp = getelementptr inbounds nuw i8, ptr %.val54, i64 200
  %i.ctq = load ptr, ptr %i.ctp, align 8, !tbaa !64
  %i.ctr = load double, ptr %i.ctq, align 8, !tbaa !65
  %264 = fdiv double 1.000000e+00, %i.ctr
  %i.cts = getelementptr inbounds nuw i8, ptr %.val54, i64 224
  %i.ctt = load ptr, ptr %i.cts, align 8, !tbaa !64
  %i.ctu = load double, ptr %i.ctt, align 8, !tbaa !65
  %265 = fdiv double 1.000000e+00, %i.ctu
  %i.ctv = getelementptr inbounds nuw i8, ptr %.val54, i64 248
  %i.ctw = load ptr, ptr %i.ctv, align 8, !tbaa !64
  %i.ctx = load double, ptr %i.ctw, align 8, !tbaa !65
  %266 = fdiv double 1.000000e+00, %i.ctx
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.cty = call noundef ptr @_ZNK16OpenColorIO_v2_516GpuShaderCreator12getPixelNameEv(ptr noundef nonnull align 8 dereferenceable(16) %.val53) #10 ; 4 uses
  %i.ctz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.ctz, ptr %2, align 8, !tbaa !49
  %i.cua = icmp eq ptr %i.cty, null
  br i1 %i.cua, label %.noexc.i956, label %bb.aav

.noexc.i956:                                      ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit829
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #11
          to label %.noexc957 unwind label %bb.adq

.noexc957:                                        ; preds = %.noexc.i956
  unreachable

bb.aav:                                           ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_511GammaOpDataEEC2ERKS3_.exit829
  %i.cub = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cty) #10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %i.cub, ptr %i.a, align 8, !tbaa !50
  %i.cuc = icmp ugt i64 %i.cub, 15
  br i1 %i.cuc, label %.noexc.i.i955, label %._crit_edge.i.i.i830

.noexc.i.i955:                                    ; preds = %bb.aav
  %i.cud = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc958 unwind label %bb.adq ; 2 uses

.noexc958:                                        ; preds = %.noexc.i.i955
  store ptr %i.cud, ptr %2, align 8, !tbaa !51
  %i.cue = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.cue, ptr %i.ctz, align 8, !tbaa !44
  br label %._crit_edge.i.i.i830

._crit_edge.i.i.i830:                             ; preds = %.noexc958, %bb.aav
  %i.cuf = phi ptr [ %i.cud, %.noexc958 ], [ %i.ctz, %bb.aav ] ; 2 uses
  switch i64 %i.cub, label %bb.aax [
    i64 1, label %bb.aaw
    i64 0, label %._crit_edge.i.i81.i831
  ]

bb.aaw:                                           ; preds = %._crit_edge.i.i.i830
  %i.cug = load i8, ptr %i.cty, align 1, !tbaa !44
  store i8 %i.cug, ptr %i.cuf, align 1, !tbaa !44
  br label %._crit_edge.i.i81.i831

bb.aax:                                           ; preds = %._crit_edge.i.i.i830
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cuf, ptr nonnull align 1 %i.cty, i64 %i.cub, i1 false)
  br label %._crit_edge.i.i81.i831

._crit_edge.i.i81.i831:                           ; preds = %bb.aax, %bb.aaw, %._crit_edge.i.i.i830
  %i.cuh = load i64, ptr %i.a, align 8, !tbaa !50 ; 2 uses
  %i.cui = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cuh, ptr %i.cui, align 8, !tbaa !52
  %i.cuj = load ptr, ptr %2, align 8, !tbaa !51
  %i.cuk = getelementptr inbounds nuw i8, ptr %i.cuj, i64 %i.cuh
  store i8 0, ptr %i.cuk, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.cul = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.cul, ptr %3, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cul, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, i64 5, i1 false)
  %i.cum = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.cum, align 8, !tbaa !52
  %i.cun = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.cun, align 1, !tbaa !44
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText13declareFloat4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdddd(ptr noundef nonnull align 8 dereferenceable(764) %238, ptr noundef nonnull align 8 dereferenceable(32) %3, double noundef %263, double noundef %264, double noundef %265, double noundef %266)
          to label %bb.aay unwind label %bb.acd

bb.aay:                                           ; preds = %._crit_edge.i.i81.i831
  %i.cuo = load ptr, ptr %3, align 8, !tbaa !51   ; 2 uses
  %i.cup = icmp eq ptr %i.cuo, %i.cul
  br i1 %i.cup, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i840, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i839

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i839: ; preds = %bb.aay
  %i.cuq = load i64, ptr %i.cul, align 8, !tbaa !44
  %i.cur = add i64 %i.cuq, 1
  call void @_ZdlPvm(ptr noundef %i.cuo, i64 noundef %i.cur) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i840

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i840: ; preds = %bb.aay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i839
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.cus = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.cus, ptr %4, align 8, !tbaa !49
  store i64 8389731577963573858, ptr %i.cus, align 8
  %i.cut = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 8, ptr %i.cut, align 8, !tbaa !52
  %i.cuu = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.cuu, align 8, !tbaa !44
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText13declareFloat4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffff(ptr noundef nonnull align 8 dereferenceable(764) %238, ptr noundef nonnull align 8 dereferenceable(32) %4, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00)
          to label %bb.aaz unwind label %bb.ace

bb.aaz:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i840
  %i.cuv = load ptr, ptr %4, align 8, !tbaa !51   ; 2 uses
  %i.cuw = icmp eq ptr %i.cuv, %i.cus
  br i1 %i.cuw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i845, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i844

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i844: ; preds = %bb.aaz
  %i.cux = load i64, ptr %i.cus, align 8, !tbaa !44
  %i.cuy = add i64 %i.cux, 1
  call void @_ZdlPvm(ptr noundef %i.cuv, i64 noundef %i.cuy) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i845

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i845: ; preds = %bb.aaz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i844
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %5, ptr noundef nonnull align 8 dereferenceable(764) %238)
          to label %._crit_edge.i.i92.i847 unwind label %bb.acf

._crit_edge.i.i92.i847:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i845
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.cuz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.cuz, ptr %7, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cuz, ptr noundef nonnull align 1 dereferenceable(12) @.str.10, i64 12, i1 false)
  %i.cva = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 12, ptr %i.cva, align 8, !tbaa !52
  %i.cvb = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i8 0, ptr %i.cvb, align 4, !tbaa !44
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText10float4DeclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(764) %238, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.aba unwind label %bb.acg

bb.aba:                                           ; preds = %._crit_edge.i.i92.i847
  %i.cvc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.abb unwind label %bb.ach

bb.abb:                                           ; preds = %bb.aba
  %i.cvd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cvc, ptr noundef nonnull @.str.11)
          to label %._crit_edge.i.i96.i856 unwind label %bb.ach

._crit_edge.i.i96.i856:                           ; preds = %bb.abb
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.cve = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.cve, ptr %9, align 8, !tbaa !49
  store i64 8389731577963573858, ptr %i.cve, align 8
  %i.cvf = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 8, ptr %i.cvf, align 8, !tbaa !52
  %i.cvg = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.cvg, align 8, !tbaa !44
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText17float4GreaterThanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(764) %238, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.abc unwind label %bb.aci

bb.abc:                                           ; preds = %._crit_edge.i.i96.i856
  %i.cvh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.cvd, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.abd unwind label %bb.acj

bb.abd:                                           ; preds = %bb.abc
  %i.cvi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cvh, ptr noundef nonnull @.str.12)
          to label %bb.abe unwind label %bb.acj   ; 0 uses

bb.abe:                                           ; preds = %bb.abd
  %i.cvj = load ptr, ptr %8, align 8, !tbaa !51   ; 2 uses
  %i.cvk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cvl = icmp eq ptr %i.cvj, %i.cvk
  br i1 %i.cvl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i865, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i864

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i864: ; preds = %bb.abe
  %i.cvm = load i64, ptr %i.cvk, align 8, !tbaa !44
  %i.cvn = add i64 %i.cvm, 1
  call void @_ZdlPvm(ptr noundef %i.cvj, i64 noundef %i.cvn) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i865

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i865: ; preds = %bb.abe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i864
  %i.cvo = load ptr, ptr %9, align 8, !tbaa !51   ; 2 uses
  %i.cvp = icmp eq ptr %i.cvo, %i.cve
  br i1 %i.cvp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i867, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i866

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i866: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i865
  %i.cvq = load i64, ptr %i.cve, align 8, !tbaa !44
  %i.cvr = add i64 %i.cvq, 1
  call void @_ZdlPvm(ptr noundef %i.cvo, i64 noundef %i.cvr) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i867

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i867: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i865, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i866
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %i.cvs = load ptr, ptr %6, align 8, !tbaa !51   ; 2 uses
  %i.cvt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cvu = icmp eq ptr %i.cvs, %i.cvt
  br i1 %i.cvu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i869, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i868

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i868: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i867
  %i.cvv = load i64, ptr %i.cvt, align 8, !tbaa !44
  %i.cvw = add i64 %i.cvv, 1
  call void @_ZdlPvm(ptr noundef %i.cvs, i64 noundef %i.cvw) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i869

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i869: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i867, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i868
  %i.cvx = load ptr, ptr %7, align 8, !tbaa !51   ; 2 uses
  %i.cvy = icmp eq ptr %i.cvx, %i.cuz
  br i1 %i.cvy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i871, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i870

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i870: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i869
  %i.cvz = load i64, ptr %i.cuz, align 8, !tbaa !44
  %i.cwa = add i64 %i.cvz, 1
  call void @_ZdlPvm(ptr noundef %i.cvx, i64 noundef %i.cwa) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i871

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i871: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i869, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i870
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %10, ptr noundef nonnull align 8 dereferenceable(764) %238)
          to label %._crit_edge.i.i112.i873 unwind label %bb.acm

._crit_edge.i.i112.i873:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i871
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  %i.cwb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.cwb, ptr %12, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cwb, ptr noundef nonnull align 1 dereferenceable(6) @.str.15, i64 6, i1 false)
  %i.cwc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 6, ptr %i.cwc, align 8, !tbaa !52
  %i.cwd = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i8 0, ptr %i.cwd, align 2, !tbaa !44
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText10float4DeclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(764) %238, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.abf unwind label %bb.acn

bb.abf:                                           ; preds = %._crit_edge.i.i112.i873
  %i.cwe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.abg unwind label %bb.aco

bb.abg:                                           ; preds = %bb.abf
  %i.cwf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cwe, ptr noundef nonnull @.str.40)
          to label %bb.abh unwind label %bb.aco

bb.abh:                                           ; preds = %bb.abg
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText11float4ConstB5cxx11Ef(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(764) %238, float noundef 0.000000e+00)
          to label %bb.abi unwind label %bb.acp

bb.abi:                                           ; preds = %bb.abh
  %i.cwg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.cwf, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.abj unwind label %bb.acq

bb.abj:                                           ; preds = %bb.abi
  %i.cwh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cwg, ptr noundef nonnull @.str.28)
          to label %bb.abk unwind label %bb.acq

bb.abk:                                           ; preds = %bb.abj
  %i.cwi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.cwh, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.abl unwind label %bb.acq

bb.abl:                                           ; preds = %bb.abk
  %i.cwj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cwi, ptr noundef nonnull @.str.41)
          to label %bb.abm unwind label %bb.acq   ; 0 uses

bb.abm:                                           ; preds = %bb.abl
  %i.cwk = load ptr, ptr %13, align 8, !tbaa !51  ; 2 uses
  %i.cwl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cwm = icmp eq ptr %i.cwk, %i.cwl
  br i1 %i.cwm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i887, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i886

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i886: ; preds = %bb.abm
  %i.cwn = load i64, ptr %i.cwl, align 8, !tbaa !44
  %i.cwo = add i64 %i.cwn, 1
  call void @_ZdlPvm(ptr noundef %i.cwk, i64 noundef %i.cwo) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i887

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i887: ; preds = %bb.abm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i886
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  %i.cwp = load ptr, ptr %11, align 8, !tbaa !51  ; 2 uses
  %i.cwq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
end_hunk_2
