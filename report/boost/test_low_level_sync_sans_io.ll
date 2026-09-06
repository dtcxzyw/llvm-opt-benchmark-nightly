Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/test_low_level_sync_sans_io?download=true
inline.NumInlined: 2250
inline.NumDeleted: 1149
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  %i.vt = icmp eq ptr %i.vs, %i.tx
  br i1 %i.vt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i125: ; preds = %bb.gp
  %i.vu = load i64, ptr %i.tx, align 8, !tbaa !25
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i126: ; preds = %bb.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %bb.gq

bb.gq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i126, %bb.go
  %.pn22.pn.i123 = phi { ptr, i32 } [ %i.vr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i126 ], [ %i.vq, %bb.go ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gn
  %.pn22.pn.pn.i122 = phi { ptr, i32 } [ %.pn22.pn.i123, %bb.gq ], [ %i.vp, %bb.gn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.gv

bb.gs:                                            ; preds = %bb.fw
  %i.vw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.gu

bb.gt:                                            ; preds = %_ZNR5boost6system6resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit51.i, %bb.fx
  %i.vx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.pn26.i128 = phi { ptr, i32 } [ %i.vx, %bb.gt ], [ %i.vw, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gr, %bb.gm, %bb.gh, %bb.gc, %.loopexit.split-lp.i94, %.loopexit.i139
  %.pn26.pn.i96 = phi { ptr, i32 } [ %.pn26.i128, %bb.gu ], [ %.pn22.pn.pn.i122, %bb.gr ], [ %.pn18.pn.pn.i112, %bb.gm ], [ %.pn.pn.i107, %bb.gh ], [ %i.ve, %bb.gc ], [ %lpad.loopexit.i140, %.loopexit.i139 ], [ %lpad.loopexit.split-lp.i95, %.loopexit.split-lp.i94 ] ; 3 uses
  %.9.i97 = extractvalue { ptr, i32 } %.pn26.pn.i96, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @_ZN5boost6system6resultISt5tupleIJNS1_IiNS_5redis7adapter5errorEEENS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EESD_SD_EES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  %i.vy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.vz = icmp eq i32 %.9.i97, %i.vy
  br i1 %i.vz, label %bb.gw, label %common.resume

bb.gw:                                            ; preds = %bb.gv
  %.914.i99 = extractvalue { ptr, i32 } %.pn26.pn.i96, 0
  %i.wa = call ptr @__cxa_begin_catch(ptr %.914.i99) #28 ; 2 uses
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !16
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  %i.wd = load ptr, ptr %i.wc, align 8
  %i.we = call noundef ptr %i.wd(ptr noundef nonnull align 8 dereferenceable(8) %i.wa) #28, !inline_history !195
  %i.wf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.we)
          to label %bb.gx unwind label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.wg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.wf)
          to label %_ZNSolsEPFRSoS_E.exit.i100 unwind label %bb.gy, !inline_history !0 ; 0 uses

_ZNSolsEPFRSoS_E.exit.i100:                       ; preds = %bb.gx
  call void @exit(i32 noundef 1) #33
  unreachable

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.wh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.wi = landingpad { ptr, i32 }
          catch ptr null
  %i.wj = extractvalue { ptr, i32 } %i.wi, 0
  call void @__clang_call_terminate(ptr %i.wj) #29
  unreachable

_ZN12_GLOBAL__N_124test_issue_210_no_nestedEv.exit: ; preds = %bb.gb, %bb.fy, %_ZNK5boost8variant26detail17variant_base_implILb0ELb1EJSt5tupleIJNS_6system6resultIiNS_5redis7adapter5errorEEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EESG_SG_EES8_EE11_destroy_L1clISt17integral_constantImLm1EEEEvT_.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %15, i8 0, i64 24, i1 false)
  %i.wk = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 5 uses
  store i8 1, ptr %i.wk, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  store i64 19, ptr %17, align 8, !tbaa !37
  %i.wl = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @.str.71, ptr %i.wl, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  invoke void @_ZN5boost5redis7adapter6detail7wrapperINS_6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISE_EENS1_5errorEEEEC2EPSI_(ptr noundef nonnull align 8 dereferenceable(10) %14, ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %_ZN5boost5redis7adapter6adapt2INS_6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EENS1_5errorEEEEEDaRT_.exit.i unwind label %bb.ha

bb.ha:                                            ; preds = %_ZN12_GLOBAL__N_124test_issue_210_no_nestedEv.exit
  %i.wm = landingpad { ptr, i32 }
          catch ptr null
  %i.wn = extractvalue { ptr, i32 } %i.wm, 0
  call void @__clang_call_terminate(ptr %i.wn) #29
  unreachable

_ZN5boost5redis7adapter6adapt2INS_6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EENS1_5errorEEEEEDaRT_.exit.i: ; preds = %_ZN12_GLOBAL__N_124test_issue_210_no_nestedEv.exit
  %.fca.0.load.i.i.i = load ptr, ptr %14, align 8
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.fca.1.load.i.i.i = load i64, ptr %.fca.1.gep.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %.sroa.22.8.insert.ext.i.i = and i64 %.fca.1.load.i.i.i, 65535
  invoke void @_ZN5boost5redis5resp36detail11deserializeINS0_7adapter6detail7wrapperINS_6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISH_EENS4_5errorEEEEEEEvRKSt17basic_string_viewIcSE_ET_RNS7_10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.fca.0.load.i.i.i, i64 %.sroa.22.8.insert.ext.i.i, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.hb unwind label %bb.hu

bb.hb:                                            ; preds = %_ZN5boost5redis7adapter6adapt2INS_6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EENS1_5errorEEEEEDaRT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.wo = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENS_6system10error_codeES4_EEbT_PKcS7_S7_iS7_RKT0_RKT1_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 176, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_130test_issue_233_array_with_nullEv, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.hc unwind label %bb.hv     ; 0 uses

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  store ptr @.str.2, ptr %19, align 8, !tbaa !40
  %i.wp = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr @.str.74, ptr %i.wp, align 8, !tbaa !41
  %i.wq = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 178, ptr %i.wq, align 8, !tbaa !42
  %i.wr = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 54, ptr %i.wr, align 4, !tbaa !43
  %i.ws = load i8, ptr %i.wk, align 8, !tbaa !91
  %i.wt = icmp eq i8 %i.ws, 1
  br i1 %i.wt, label %_ZNR5boost6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  invoke void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(24) %19) #30
          to label %.noexc.i149 unwind label %bb.hw

.noexc.i149:                                      ; preds = %bb.hd
  unreachable

_ZNR5boost6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit.i: ; preds = %bb.hc
  %i.wu = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !94
  %i.ww = load ptr, ptr %15, align 8, !tbaa !95   ; 3 uses
  %.not.i.i.not.i150 = icmp eq ptr %i.wv, %i.ww
  br i1 %.not.i.i.not.i150, label %bb.he, label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE2atEm.exit.i

bb.he:                                            ; preds = %_ZNR5boost6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.62, i64 noundef 0, i64 noundef 0) #30
          to label %.noexc10.i unwind label %bb.hw

.noexc10.i:                                       ; preds = %bb.he
  unreachable

_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE2atEm.exit.i: ; preds = %_ZNR5boost6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit.i
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 32
  %i.wy = load i8, ptr %i.wx, align 8, !tbaa !97, !range !79, !noundef !80
  %i.wz = trunc nuw i8 %i.wy to i1
  br i1 %i.wz, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i, label %bb.hf

bb.hf:                                            ; preds = %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE2atEm.exit.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #30
          to label %.noexc11.i unwind label %bb.hw

.noexc11.i:                                       ; preds = %bb.hf
  unreachable

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i: ; preds = %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE2atEm.exit.i
  %i.xa = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA4_cEEbT_PKcSC_SC_iSC_RKT0_RKT1_(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.2, i32 noundef 178, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_130test_issue_233_array_with_nullEv, ptr noundef nonnull align 8 dereferenceable(32) %i.ww, ptr noundef nonnull align 1 dereferenceable(4) @.str.75)
          to label %bb.hg unwind label %bb.hw     ; 0 uses

bb.hg:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  store ptr @.str.2, ptr %20, align 8, !tbaa !40
  %i.xb = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @.str.74, ptr %i.xb, align 8, !tbaa !41
  %i.xc = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 179, ptr %i.xc, align 8, !tbaa !42
  %i.xd = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i32 49, ptr %i.xd, align 4, !tbaa !43
  %i.xe = load i8, ptr %i.wk, align 8, !tbaa !91
  %i.xf = icmp eq i8 %i.xe, 1
  br i1 %i.xf, label %_ZNR5boost6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit13.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  invoke void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(24) %20) #30
          to label %.noexc12.i unwind label %bb.hx

.noexc12.i:                                       ; preds = %bb.hh
  unreachable

_ZNR5boost6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit13.i: ; preds = %bb.hg
  %i.xg = load ptr, ptr %i.wu, align 8, !tbaa !94
  %i.xh = load ptr, ptr %15, align 8, !tbaa !95   ; 2 uses
  %i.xi = ptrtoint ptr %i.xg to i64
  %i.xj = ptrtoint ptr %i.xh to i64
  %i.xk = sub i64 %i.xi, %i.xj
  %95 = sdiv exact i64 %i.xk, 40                  ; 2 uses
  %.not.i.i14.i = icmp ugt i64 %95, 1
  br i1 %.not.i.i14.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %_ZNR5boost6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit13.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.62, i64 noundef 1, i64 noundef %95) #30
          to label %.noexc15.i unwind label %bb.hx

.noexc15.i:                                       ; preds = %bb.hi
  unreachable

bb.hj:                                            ; preds = %_ZNR5boost6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit13.i
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xh, i64 72
  %i.xm = load i8, ptr %i.xl, align 8, !tbaa !97, !range !79, !noundef !80
  %i.xn = trunc nuw i8 %i.xm to i1
  %i.xo = xor i1 %i.xn, true
  %i.xp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.2, i32 noundef 179, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_130test_issue_233_array_with_nullEv, i1 noundef zeroext %i.xo)
          to label %bb.hk unwind label %bb.hx     ; 0 uses

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  store ptr @.str.2, ptr %21, align 8, !tbaa !40
  %i.xq = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr @.str.74, ptr %i.xq, align 8, !tbaa !41
  %i.xr = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 180, ptr %i.xr, align 8, !tbaa !42
  %i.xs = getelementptr inbounds nuw i8, ptr %21, i64 20
  store i32 54, ptr %i.xs, align 4, !tbaa !43
  %i.xt = load i8, ptr %i.wk, align 8, !tbaa !91
  %i.xu = icmp eq i8 %i.xt, 1
  br i1 %i.xu, label %_ZNR5boost6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit18.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  invoke void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(24) %21) #30
          to label %.noexc17.i151 unwind label %bb.hy

.noexc17.i151:                                    ; preds = %bb.hl
  unreachable

_ZNR5boost6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit18.i: ; preds = %bb.hk
  %i.xv = load ptr, ptr %i.wu, align 8, !tbaa !94
  %i.xw = load ptr, ptr %15, align 8, !tbaa !95   ; 3 uses
  %i.xx = ptrtoint ptr %i.xv to i64
  %i.xy = ptrtoint ptr %i.xw to i64
  %i.xz = sub i64 %i.xx, %i.xy
  %96 = sdiv exact i64 %i.xz, 40                  ; 2 uses
  %.not.i.i19.i = icmp ugt i64 %96, 2
  br i1 %.not.i.i19.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %_ZNR5boost6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit18.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.62, i64 noundef 2, i64 noundef %96) #30
          to label %.noexc20.i unwind label %bb.hy

.noexc20.i:                                       ; preds = %bb.hm
  unreachable

bb.hn:                                            ; preds = %_ZNR5boost6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit18.i
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xw, i64 112
  %i.yb = load i8, ptr %i.ya, align 8, !tbaa !97, !range !79, !noundef !80
  %i.yc = trunc nuw i8 %i.yb to i1
  br i1 %i.yc, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit23.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  invoke void @_ZSt27__throw_bad_optional_accessv() #30
          to label %.noexc22.i unwind label %bb.hy

.noexc22.i:                                       ; preds = %bb.ho
  unreachable

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit23.i: ; preds = %bb.hn
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xw, i64 80
  %i.ye = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA4_cEEbT_PKcSC_SC_iSC_RKT0_RKT1_(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 180, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_130test_issue_233_array_with_nullEv, ptr noundef nonnull align 8 dereferenceable(32) %i.yd, ptr noundef nonnull align 1 dereferenceable(4) @.str.79)
          to label %bb.hp unwind label %bb.hy     ; 0 uses

bb.hp:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.yf = load i8, ptr %i.wk, align 8, !tbaa !91
  switch i8 %i.yf, label %bb.hq [
    i8 0, label %_ZN12_GLOBAL__N_130test_issue_233_array_with_nullEv.exit
    i8 2, label %bb.ht
  ]

bb.hq:                                            ; preds = %bb.hp
  %i.yg = load ptr, ptr %15, align 8, !tbaa !95   ; 3 uses
  %i.yh = load ptr, ptr %i.wu, align 8, !tbaa !94 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.yg, %i.yh
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.hq, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.yq, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.yg, %bb.hq ] ; 4 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.yj = load i8, ptr %i.yi, align 8, !tbaa !97, !range !79, !noundef !80
  %i.yk = trunc nuw i8 %i.yj to i1
  store i8 0, ptr %i.yi, align 8, !tbaa !97
  br i1 %i.yk, label %bb.hr, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i

bb.hr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.yl = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.yn = icmp eq ptr %i.yl, %i.ym
  br i1 %i.yn, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hr
  %i.yo = load i64, ptr %i.ym, align 8, !tbaa !25
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.yl, i64 noundef %i.yp) #31
  br label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.yq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.yq, %i.yh
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i = load ptr, ptr %15, align 8, !tbaa !95
  br label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i, %bb.hq
  %i.yr = phi ptr [ %.pr.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i ], [ %i.yg, %bb.hq ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.yr, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_130test_issue_233_array_with_nullEv.exit, label %bb.hs

bb.hs:                                            ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i.i.i.i
  %i.ys = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !98
  %i.yu = ptrtoint ptr %i.yt to i64
  %i.yv = ptrtoint ptr %i.yr to i64
  %i.yw = sub i64 %i.yu, %i.yv
  call void @_ZdlPvm(ptr noundef nonnull %i.yr, i64 noundef %i.yw) #31
  br label %_ZN12_GLOBAL__N_130test_issue_233_array_with_nullEv.exit

bb.ht:                                            ; preds = %bb.hp
  %i.yx = load ptr, ptr %i.wu, align 8, !tbaa !24 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.yz = icmp eq ptr %i.yx, %i.yy
  br i1 %i.yz, label %_ZN12_GLOBAL__N_130test_issue_233_array_with_nullEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i152: ; preds = %bb.ht
  %i.za = load i64, ptr %i.yy, align 8, !tbaa !25
  %i.zb = add i64 %i.za, 1
  call void @_ZdlPvm(ptr noundef %i.yx, i64 noundef %i.zb) #31
  br label %_ZN12_GLOBAL__N_130test_issue_233_array_with_nullEv.exit

bb.hu:                                            ; preds = %_ZN5boost5redis7adapter6adapt2INS_6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISD_EENS1_5errorEEEEEDaRT_.exit.i
  %i.zc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.hz

bb.hv:                                            ; preds = %bb.hb
  %i.zd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.hz

bb.hw:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i, %bb.hf, %bb.he, %bb.hd
  %i.ze = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.hz

bb.hx:                                            ; preds = %bb.hj, %bb.hi, %bb.hh
  %i.zf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.hz

bb.hy:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit23.i, %bb.ho, %bb.hm, %bb.hl
  %i.zg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu
  %.pn.i146 = phi { ptr, i32 } [ %i.zg, %bb.hy ], [ %i.zf, %bb.hx ], [ %i.ze, %bb.hw ], [ %i.zd, %bb.hv ], [ %i.zc, %bb.hu ] ; 3 uses
  %.0.i = extractvalue { ptr, i32 } %.pn.i146, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN5boost6system6resultISt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EENS_5redis7adapter5errorEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.zh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.zi = icmp eq i32 %.0.i, %i.zh
  br i1 %i.zi, label %bb.ia, label %common.resume

bb.ia:                                            ; preds = %bb.hz
  %.07.i = extractvalue { ptr, i32 } %.pn.i146, 0
  %i.zj = call ptr @__cxa_begin_catch(ptr %.07.i) #28 ; 2 uses
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !16
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %i.zm = load ptr, ptr %i.zl, align 8
  %i.zn = call noundef ptr %i.zm(ptr noundef nonnull align 8 dereferenceable(8) %i.zj) #28, !inline_history !196
  %i.zo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.zn)
          to label %bb.ib unwind label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.zp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.zo)
          to label %_ZNSolsEPFRSoS_E.exit.i148 unwind label %bb.ic, !inline_history !0 ; 0 uses

_ZNSolsEPFRSoS_E.exit.i148:                       ; preds = %bb.ib
  call void @exit(i32 noundef 1) #33
  unreachable

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.zq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.zr = landingpad { ptr, i32 }
          catch ptr null
  %i.zs = extractvalue { ptr, i32 } %i.zr, 0
  call void @__clang_call_terminate(ptr %i.zs) #29
  unreachable

_ZN12_GLOBAL__N_130test_issue_233_array_with_nullEv.exit: ; preds = %bb.ht, %bb.hp, %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i.i.i.i, %bb.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.zt = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 8 uses
  store i8 0, ptr %i.zt, align 8, !tbaa !100
  %i.zu = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 5 uses
  store i8 1, ptr %i.zu, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store i64 19, ptr %9, align 8, !tbaa !37
  %i.zv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.71, ptr %i.zv, align 8, !tbaa !38
  invoke void @_ZN5boost5redis5resp36detail11deserializeINS0_7adapter6detail7wrapperINS_6system6resultISt8optionalISt6vectorIS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISH_EEENS4_5errorEEEEEEEvRKSt17basic_string_viewIcSE_ET_RNS7_10error_codeE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull %7, i64 0, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ie unwind label %bb.ix

bb.ie:                                            ; preds = %_ZN12_GLOBAL__N_130test_issue_233_array_with_nullEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.zw = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENS_6system10error_codeES4_EEbT_PKcS7_S7_iS7_RKT0_RKT1_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 197, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_139test_issue_233_optional_array_with_nullEv, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.if unwind label %bb.iy     ; 0 uses

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store ptr @.str.2, ptr %11, align 8, !tbaa !40
  %i.zx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.81, ptr %i.zx, align 8, !tbaa !41
  %i.zy = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 199, ptr %i.zy, align 8, !tbaa !42
  %i.zz = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 62, ptr %i.zz, align 4, !tbaa !43
  %i.aaa = load i8, ptr %i.zu, align 8, !tbaa !102
  %i.aab = icmp eq i8 %i.aaa, 1
  br i1 %i.aab, label %_ZNR5boost6system6resultISt8optionalISt6vectorIS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit.i, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  invoke void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(24) %11) #30
          to label %.noexc.i159 unwind label %bb.iz

.noexc.i159:                                      ; preds = %bb.ig
  unreachable

_ZNR5boost6system6resultISt8optionalISt6vectorIS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit.i: ; preds = %bb.if
  %i.aac = load i8, ptr %i.zt, align 8, !tbaa !100, !range !79, !noundef !80
  %i.aad = trunc nuw i8 %i.aac to i1
  br i1 %i.aad, label %_ZNRSt8optionalISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEE5valueEv.exit.i, label %.invoke.i

_ZNRSt8optionalISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEE5valueEv.exit.i: ; preds = %_ZNR5boost6system6resultISt8optionalISt6vectorIS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit.i
  %i.aae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !94
  %i.aag = load ptr, ptr %7, align 8, !tbaa !95   ; 3 uses
  %.not.i.i.not.i160 = icmp eq ptr %i.aaf, %i.aag
  br i1 %.not.i.i.not.i160, label %bb.ih, label %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE2atEm.exit.i161

bb.ih:                                            ; preds = %_ZNRSt8optionalISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEE5valueEv.exit.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.62, i64 noundef 0, i64 noundef 0) #30
          to label %.noexc11.i168 unwind label %bb.iz

.noexc11.i168:                                    ; preds = %bb.ih
  unreachable

_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE2atEm.exit.i161: ; preds = %_ZNRSt8optionalISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEE5valueEv.exit.i
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 32
  %i.aai = load i8, ptr %i.aah, align 8, !tbaa !97, !range !79, !noundef !80
  %i.aaj = trunc nuw i8 %i.aai to i1
  br i1 %i.aaj, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i162, label %.invoke.i

.invoke.i:                                        ; preds = %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE2atEm.exit.i161, %_ZNR5boost6system6resultISt8optionalISt6vectorIS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #30
          to label %.cont.i unwind label %bb.iz

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i162: ; preds = %_ZNSt6vectorISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE2atEm.exit.i161
  %i.aak = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA4_cEEbT_PKcSC_SC_iSC_RKT0_RKT1_(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.2, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_139test_issue_233_optional_array_with_nullEv, ptr noundef nonnull align 8 dereferenceable(32) %i.aag, ptr noundef nonnull align 1 dereferenceable(4) @.str.75)
          to label %bb.ii unwind label %bb.iz     ; 0 uses

bb.ii:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store ptr @.str.2, ptr %12, align 8, !tbaa !40
  %i.aal = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.81, ptr %i.aal, align 8, !tbaa !41
  %i.aam = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 200, ptr %i.aam, align 8, !tbaa !42
  %i.aan = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 57, ptr %i.aan, align 4, !tbaa !43
  %i.aao = load i8, ptr %i.zu, align 8, !tbaa !102
  %i.aap = icmp eq i8 %i.aao, 1
  br i1 %i.aap, label %_ZNR5boost6system6resultISt8optionalISt6vectorIS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit14.i, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  invoke void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(24) %12) #30
          to label %.noexc13.i unwind label %bb.ja

.noexc13.i:                                       ; preds = %bb.ij
  unreachable

_ZNR5boost6system6resultISt8optionalISt6vectorIS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit14.i: ; preds = %bb.ii
  %i.aaq = load i8, ptr %i.zt, align 8, !tbaa !100, !range !79, !noundef !80
  %i.aar = trunc nuw i8 %i.aaq to i1
  br i1 %i.aar, label %_ZNRSt8optionalISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEE5valueEv.exit16.i, label %bb.ik

bb.ik:                                            ; preds = %_ZNR5boost6system6resultISt8optionalISt6vectorIS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit14.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #30
          to label %.noexc15.i163 unwind label %bb.ja

.noexc15.i163:                                    ; preds = %bb.ik
  unreachable

_ZNRSt8optionalISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEE5valueEv.exit16.i: ; preds = %_ZNR5boost6system6resultISt8optionalISt6vectorIS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit14.i
  %i.aas = load ptr, ptr %i.aae, align 8, !tbaa !94
  %i.aat = load ptr, ptr %7, align 8, !tbaa !95   ; 2 uses
  %i.aau = ptrtoint ptr %i.aas to i64
  %i.aav = ptrtoint ptr %i.aat to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  %97 = sdiv exact i64 %i.aaw, 40                 ; 2 uses
  %.not.i.i17.i = icmp ugt i64 %97, 1
  br i1 %.not.i.i17.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %_ZNRSt8optionalISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEE5valueEv.exit16.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.62, i64 noundef 1, i64 noundef %97) #30
          to label %.noexc18.i unwind label %bb.ja

.noexc18.i:                                       ; preds = %bb.il
  unreachable

bb.im:                                            ; preds = %_ZNRSt8optionalISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEE5valueEv.exit16.i
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aat, i64 72
  %i.aay = load i8, ptr %i.aax, align 8, !tbaa !97, !range !79, !noundef !80
  %i.aaz = trunc nuw i8 %i.aay to i1
  %i.aba = xor i1 %i.aaz, true
  %i.abb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.2, i32 noundef 200, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_139test_issue_233_optional_array_with_nullEv, i1 noundef zeroext %i.aba)
          to label %bb.in unwind label %bb.ja     ; 0 uses

bb.in:                                            ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  store ptr @.str.2, ptr %13, align 8, !tbaa !40
  %i.abc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.81, ptr %i.abc, align 8, !tbaa !41
  %i.abd = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 201, ptr %i.abd, align 8, !tbaa !42
  %i.abe = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 62, ptr %i.abe, align 4, !tbaa !43
  %i.abf = load i8, ptr %i.zu, align 8, !tbaa !102
  %i.abg = icmp eq i8 %i.abf, 1
  br i1 %i.abg, label %_ZNR5boost6system6resultISt8optionalISt6vectorIS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit21.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  invoke void @_ZN5boost5redis7adapter26throw_exception_from_errorERKNS1_5errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(24) %13) #30
          to label %.noexc20.i164 unwind label %bb.jb

.noexc20.i164:                                    ; preds = %bb.io
  unreachable

_ZNR5boost6system6resultISt8optionalISt6vectorIS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit21.i: ; preds = %bb.in
  %i.abh = load i8, ptr %i.zt, align 8, !tbaa !100, !range !79, !noundef !80
  %i.abi = trunc nuw i8 %i.abh to i1
  br i1 %i.abi, label %_ZNRSt8optionalISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEE5valueEv.exit23.i, label %.invoke42.i

_ZNRSt8optionalISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEE5valueEv.exit23.i: ; preds = %_ZNR5boost6system6resultISt8optionalISt6vectorIS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit21.i
  %i.abj = load ptr, ptr %i.aae, align 8, !tbaa !94
  %i.abk = load ptr, ptr %7, align 8, !tbaa !95   ; 3 uses
  %i.abl = ptrtoint ptr %i.abj to i64
  %i.abm = ptrtoint ptr %i.abk to i64
  %i.abn = sub i64 %i.abl, %i.abm
  %98 = sdiv exact i64 %i.abn, 40                 ; 2 uses
  %.not.i.i24.i = icmp ugt i64 %98, 2
  br i1 %.not.i.i24.i, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %_ZNRSt8optionalISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEE5valueEv.exit23.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.62, i64 noundef 2, i64 noundef %98) #30
          to label %.noexc25.i165 unwind label %bb.jb

.noexc25.i165:                                    ; preds = %bb.ip
  unreachable

bb.iq:                                            ; preds = %_ZNRSt8optionalISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EEE5valueEv.exit23.i
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abk, i64 112
  %i.abp = load i8, ptr %i.abo, align 8, !tbaa !97, !range !79, !noundef !80
  %i.abq = trunc nuw i8 %i.abp to i1
  br i1 %i.abq, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit28.i, label %.invoke42.i

.invoke42.i:                                      ; preds = %bb.iq, %_ZNR5boost6system6resultISt8optionalISt6vectorIS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISA_EEENS_5redis7adapter5errorEE5valueERKNS_15source_locationE.exit21.i
  invoke void @_ZSt27__throw_bad_optional_accessv() #30
          to label %.cont43.i unwind label %bb.jb

.cont43.i:                                        ; preds = %.invoke42.i
  unreachable

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit28.i: ; preds = %bb.iq
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abk, i64 80
  %i.abs = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA4_cEEbT_PKcSC_SC_iSC_RKT0_RKT1_(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.2, i32 noundef 201, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_139test_issue_233_optional_array_with_nullEv, ptr noundef nonnull align 8 dereferenceable(32) %i.abr, ptr noundef nonnull align 1 dereferenceable(4) @.str.79)
          to label %bb.ir unwind label %bb.jb     ; 0 uses

bb.ir:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.abt = load i8, ptr %i.zu, align 8, !tbaa !102
  switch i8 %i.abt, label %bb.is [
    i8 0, label %_ZN12_GLOBAL__N_139test_issue_233_optional_array_with_nullEv.exit
    i8 2, label %bb.iw
  ]

bb.is:                                            ; preds = %bb.ir
  %i.abu = load i8, ptr %i.zt, align 8, !tbaa !100, !range !79, !noundef !80
  %i.abv = trunc nuw i8 %i.abu to i1
  store i8 0, ptr %i.zt, align 8, !tbaa !100
  br i1 %i.abv, label %bb.it, label %_ZN12_GLOBAL__N_139test_issue_233_optional_array_with_nullEv.exit

bb.it:                                            ; preds = %bb.is
  %i.abw = load ptr, ptr %7, align 8, !tbaa !95   ; 3 uses
  %i.abx = load ptr, ptr %i.aae, align 8, !tbaa !94 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.abw, %i.abx
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.it, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.acg, %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abw, %bb.it ] ; 4 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.abz = load i8, ptr %i.aby, align 8, !tbaa !97, !range !79, !noundef !80
  %i.aca = trunc nuw i8 %i.abz to i1
  store i8 0, ptr %i.aby, align 8, !tbaa !97
  br i1 %i.aca, label %bb.iu, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.iu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.acb = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.acd = icmp eq ptr %i.acb, %i.acc
  br i1 %i.acd, label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i166: ; preds = %bb.iu
  %i.ace = load i64, ptr %i.acc, align 8, !tbaa !25
  %i.acf = add i64 %i.ace, 1
  call void @_ZdlPvm(ptr noundef %i.acb, i64 noundef %i.acf) #31
  br label %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.iu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i166, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.acg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.acg, %i.abx
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !95
  br label %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, %bb.it
  %i.ach = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i ], [ %i.abw, %bb.it ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ach, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_139test_issue_233_optional_array_with_nullEv.exit, label %bb.iv

bb.iv:                                            ; preds = %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i
  %i.aci = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !98
  %i.ack = ptrtoint ptr %i.acj to i64
  %i.acl = ptrtoint ptr %i.ach to i64
  %i.acm = sub i64 %i.ack, %i.acl
  call void @_ZdlPvm(ptr noundef nonnull %i.ach, i64 noundef %i.acm) #31
  br label %_ZN12_GLOBAL__N_139test_issue_233_optional_array_with_nullEv.exit

bb.iw:                                            ; preds = %bb.ir
  %i.acn = load ptr, ptr %i.aae, align 8, !tbaa !24 ; 2 uses
  %i.aco = icmp eq ptr %i.acn, %i.zt
  br i1 %i.aco, label %_ZN12_GLOBAL__N_139test_issue_233_optional_array_with_nullEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.iw
  %i.acp = load i64, ptr %i.zt, align 8, !tbaa !25
  %i.acq = add i64 %i.acp, 1
  call void @_ZdlPvm(ptr noundef %i.acn, i64 noundef %i.acq) #31
  br label %_ZN12_GLOBAL__N_139test_issue_233_optional_array_with_nullEv.exit

bb.ix:                                            ; preds = %_ZN12_GLOBAL__N_130test_issue_233_array_with_nullEv.exit
  %i.acr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.jc

bb.iy:                                            ; preds = %bb.ie
  %i.acs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.jc

bb.iz:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i162, %.invoke.i, %bb.ih, %bb.ig
  %i.act = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.jc

bb.ja:                                            ; preds = %bb.im, %bb.il, %bb.ik, %bb.ij
  %i.acu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.jc

bb.jb:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit28.i, %.invoke42.i, %bb.ip, %bb.io
  %i.acv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix
  %.pn.i154 = phi { ptr, i32 } [ %i.acv, %bb.jb ], [ %i.acu, %bb.ja ], [ %i.act, %bb.iz ], [ %i.acs, %bb.iy ], [ %i.acr, %bb.ix ] ; 3 uses
  %.0.i155 = extractvalue { ptr, i32 } %.pn.i154, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @_ZN5boost8variant26detail17variant_base_implILb0ELb1EJSt8optionalISt6vectorIS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_EEENS_5redis7adapter5errorEEE8_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.acw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.acx = icmp eq i32 %.0.i155, %i.acw
  br i1 %i.acx, label %bb.jd, label %common.resume

bb.jd:                                            ; preds = %bb.jc
  %.07.i157 = extractvalue { ptr, i32 } %.pn.i154, 0
  %i.acy = call ptr @__cxa_begin_catch(ptr %.07.i157) #28 ; 2 uses
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !16
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  %i.adb = load ptr, ptr %i.ada, align 8
  %i.adc = call noundef ptr %i.adb(ptr noundef nonnull align 8 dereferenceable(8) %i.acy) #28, !inline_history !197
  %i.add = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.adc)
          to label %bb.je unwind label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.ade = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.add)
          to label %_ZNSolsEPFRSoS_E.exit.i158 unwind label %bb.jf, !inline_history !0 ; 0 uses

_ZNSolsEPFRSoS_E.exit.i158:                       ; preds = %bb.je
  call void @exit(i32 noundef 1) #33
  unreachable

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %i.adf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.adg = landingpad { ptr, i32 }
          catch ptr null
  %i.adh = extractvalue { ptr, i32 } %i.adg, 0
  call void @__clang_call_terminate(ptr %i.adh) #29
  unreachable

_ZN12_GLOBAL__N_139test_issue_233_optional_array_with_nullEv.exit: ; preds = %bb.iw, %bb.ir, %bb.is, %_ZSt8_DestroyIPSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, %bb.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i32 0, ptr %i.c, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #28
  %i.adi = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34 ; 4 uses
  store ptr %i.a, ptr %i.adi, align 16, !tbaa !103
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !103
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx.i, align 16, !tbaa !103
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @"_ZNSt17_Function_handlerIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEZN12_GLOBAL__N_126test_check_counter_adapterEvE3$_0E9_M_invokeERKSt9_Any_dataOS3_SC_SF_", ptr %i.adj, align 8, !tbaa !106
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.adi, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !25
  store ptr @"_ZNSt17_Function_handlerIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEZN12_GLOBAL__N_126test_check_counter_adapterEvE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation", ptr %i.adk, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZN5boost5redis5resp36parserC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %2)
end_hunk_0
