Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/test_serialization?download=true
inline.NumInlined: 1139
inline.NumDeleted: 571
begin_hunk_0_@main:bb.a
  %.pn.i66 = phi { ptr, i32 } [ %i.lr, %bb.bk ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp119.loopexit.split-lp ]
  call void @_ZN5boost5redis7requestD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef 24) #22
  br label %common.resume

_ZN12_GLOBAL__N_116test_pair_customEv.exit:       ; preds = %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef 24) #22
  %i.ls = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 8 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  store i8 1, ptr %i.ls, align 8
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store i32 42, ptr %.sroa.514.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store i64 2, ptr %.sroa.6.0..sroa_idx.i71, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store ptr @.str.17, ptr %.sroa.7.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i32 16842752, ptr %4, align 8, !tbaa !80
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.lv, ptr %i.lu, align 8, !tbaa !20
  %i.lw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 0, ptr %i.lw, align 8, !tbaa !25
  store i8 0, ptr %i.lv, align 8, !tbaa !24
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ly = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.lx, i8 0, i64 17, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ly, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost5redis7request10push_rangeIN9__gnu_cxx17__normal_iteratorIPKSt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEihEESt6vectorISA_SaISA_EEEEEEvS9_T_SH_PNSt15iterator_traitsISH_E10value_typeE(ptr noundef nonnull align 8 dereferenceable(88) %4, i64 3, ptr nonnull @.str, ptr nonnull %i.ls, ptr nonnull %i.lt, ptr noundef null)
          to label %_ZN5boost5redis7request10push_rangeISt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEihEESaIS9_EEEEvS8_RKT_PDTclsr3stdE6cbeginfL0p0_EE.exit.i unwind label %bb.bn

_ZN5boost5redis7request10push_rangeISt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEihEESaIS9_EEEEvS8_RKT_PDTclsr3stdE6cbeginfL0p0_EE.exit.i: ; preds = %_ZN12_GLOBAL__N_116test_pair_customEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.lz = load ptr, ptr %i.lu, align 8, !tbaa !23
  %i.ma = load i64, ptr %i.lw, align 8, !tbaa !25
  store i64 %i.ma, ptr %5, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.lz, ptr %i.mb, align 8
  %i.mc = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqESt17basic_string_viewIcSt11char_traitsIcEEA37_cEEbT_PKcSA_SA_iSA_RKT0_RKT1_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, i32 noundef 149, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_110test_tupleEv, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(37) @.str.40)
          to label %bb.bl unwind label %bb.bo     ; 0 uses

bb.bl:                                            ; preds = %_ZN5boost5redis7request10push_rangeISt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEihEESaIS9_EEEEvS8_RKT_PDTclsr3stdE6cbeginfL0p0_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.md = load ptr, ptr %i.ly, align 8, !tbaa !36 ; 3 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.i.i73, label %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i74, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !37
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = ptrtoint ptr %i.md to i64
  %i.mi = sub i64 %i.mg, %i.mh
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef %i.mi) #22
  br label %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i74

_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i74: ; preds = %bb.bm, %bb.bl
  %i.mj = load ptr, ptr %i.lu, align 8, !tbaa !23 ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.lv
  br i1 %i.mk, label %_ZN12_GLOBAL__N_110test_tupleEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75: ; preds = %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i74
  %i.ml = load i64, ptr %i.lv, align 8, !tbaa !24
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mm) #22
  br label %_ZN12_GLOBAL__N_110test_tupleEv.exit

bb.bn:                                            ; preds = %_ZN12_GLOBAL__N_116test_pair_customEv.exit
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEihEESaIS5_EED2Ev.exit10.i

bb.bo:                                            ; preds = %_ZN5boost5redis7request10push_rangeISt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEihEESaIS9_EEEEvS8_RKT_PDTclsr3stdE6cbeginfL0p0_EE.exit.i
  %i.mo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZNSt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEihEESaIS5_EED2Ev.exit10.i

_ZNSt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEihEESaIS5_EED2Ev.exit10.i: ; preds = %bb.bo, %bb.bn
  %.pn.i72 = phi { ptr, i32 } [ %i.mo, %bb.bo ], [ %i.mn, %bb.bn ]
  call void @_ZN5boost5redis7requestD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef 24) #22
  br label %common.resume

_ZN12_GLOBAL__N_110test_tupleEv.exit:             ; preds = %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef 24) #22
  %i.mp = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 6 uses
  store i32 42, ptr %i.mp, align 8
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 2 uses
  store i64 2, ptr %.sroa.516.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 2 uses
  store ptr @.str.17, ptr %.sroa.6.0..sroa_idx.i77, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i32 16842752, ptr %2, align 8, !tbaa !80
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.mr, ptr %i.mq, align 8, !tbaa !20
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 0, ptr %i.ms, align 8, !tbaa !25
  store i8 0, ptr %i.mr, align 8, !tbaa !24
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.mt, i8 0, i64 17, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mu, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost5redis5resp310add_headerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_4typeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.mq, i32 noundef 0, i64 noundef 3)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc112:                                        ; preds = %_ZN12_GLOBAL__N_110test_tupleEv.exit
  invoke void @_ZN5boost5redis5resp319boost_redis_to_bulkERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_E(ptr noundef nonnull align 8 dereferenceable(32) %i.mq, i64 3, ptr nonnull @.str)
          to label %.noexc113.preheader unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc113.preheader:                              ; preds = %.noexc112
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.516.0..sroa_idx.i, align 8, !tbaa !42
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i77, align 8, !tbaa !38
  invoke void @_ZN5boost5redis5resp319boost_redis_to_bulkERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_E(ptr noundef nonnull align 8 dereferenceable(32) %i.mq, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc114:                                        ; preds = %.noexc113.preheader
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.mp, align 8, !tbaa !41
  invoke void @_ZN5boost5redis5resp319boost_redis_to_bulkIivEEvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr noundef nonnull align 8 dereferenceable(32) %i.mq, i32 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i)
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc115:                                        ; preds = %.noexc114
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !34
  %i.mw = add i64 %i.mv, 1
  store i64 %i.mw, ptr %i.mt, align 8, !tbaa !34
  %i.mx = invoke noundef zeroext i1 @_ZN5boost5redis6detail12has_responseESt17basic_string_viewIcSt11char_traitsIcEE(i64 3, ptr nonnull @.str)
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc116:                                        ; preds = %.noexc115
  br i1 %i.mx, label %_ZN5boost5redis7request10push_rangeISt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEN5other9my_structEEESaISB_EEEEvS8_RKT_PDTclsr3stdE6cbeginfL0p0_EE.exit.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc116
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !35
  %i.na = add i64 %i.mz, 1
  store i64 %i.na, ptr %i.my, align 8, !tbaa !35
  br label %_ZN5boost5redis7request10push_rangeISt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEN5other9my_structEEESaISB_EEEEvS8_RKT_PDTclsr3stdE6cbeginfL0p0_EE.exit.i

_ZN5boost5redis7request10push_rangeISt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEN5other9my_structEEESaISB_EEEEvS8_RKT_PDTclsr3stdE6cbeginfL0p0_EE.exit.i: ; preds = %bb.bp, %.noexc116
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.nb = load ptr, ptr %i.mq, align 8, !tbaa !23
  %i.nc = load i64, ptr %i.ms, align 8, !tbaa !25
  store i64 %i.nc, ptr %3, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.nb, ptr %i.nd, align 8
  %i.ne = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqESt17basic_string_viewIcSt11char_traitsIcEEA30_cEEbT_PKcSA_SA_iSA_RKT0_RKT1_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.4, i32 noundef 159, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_117test_tuple_customEv, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(30) @.str.37)
          to label %bb.bq unwind label %bb.bs     ; 0 uses

bb.bq:                                            ; preds = %_ZN5boost5redis7request10push_rangeISt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEN5other9my_structEEESaISB_EEEEvS8_RKT_PDTclsr3stdE6cbeginfL0p0_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.nf = load ptr, ptr %i.mu, align 8, !tbaa !36 ; 3 uses
  %.not.i.i.i.i.i79 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i.i.i79, label %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i80, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !37
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = ptrtoint ptr %i.nf to i64
  %i.nk = sub i64 %i.ni, %i.nj
  call void @_ZdlPvm(ptr noundef nonnull %i.nf, i64 noundef %i.nk) #22
  br label %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i80

_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i80: ; preds = %bb.br, %bb.bq
  %i.nl = load ptr, ptr %i.mq, align 8, !tbaa !23 ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.mr
  br i1 %i.nm, label %_ZN12_GLOBAL__N_117test_tuple_customEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i81: ; preds = %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i80
  %i.nn = load i64, ptr %i.mr, align 8, !tbaa !24
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.no) #22
  br label %_ZN12_GLOBAL__N_117test_tuple_customEv.exit

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc114, %.noexc113.preheader, %.noexc115, %.noexc112, %_ZN12_GLOBAL__N_110test_tupleEv.exit
  %lpad.loopexit.split-lp128 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEN5other9my_structEEESaIS7_EED2Ev.exit10.i

bb.bs:                                            ; preds = %_ZN5boost5redis7request10push_rangeISt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEN5other9my_structEEESaISB_EEEEvS8_RKT_PDTclsr3stdE6cbeginfL0p0_EE.exit.i
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZNSt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEN5other9my_structEEESaIS7_EED2Ev.exit10.i

_ZNSt6vectorISt5tupleIJSt17basic_string_viewIcSt11char_traitsIcEEN5other9my_structEEESaIS7_EED2Ev.exit10.i: ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.bs
  %.pn.i78 = phi { ptr, i32 } [ %i.np, %bb.bs ], [ %lpad.loopexit.split-lp128, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5boost5redis7requestD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.mp, i64 noundef 24) #22
  br label %common.resume

_ZN12_GLOBAL__N_117test_tuple_customEv.exit:      ; preds = %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.mp, i64 noundef 24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store i32 16842752, ptr %0, align 8, !tbaa !80
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.nr, ptr %i.nq, align 8, !tbaa !20
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.ns, align 8, !tbaa !25
  store i8 0, ptr %i.nr, align 8, !tbaa !24
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.nt, i8 0, i64 17, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nu, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost5redis5resp310add_headerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_4typeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.nq, i32 noundef 0, i64 noundef 1)
          to label %.noexc.i84 unwind label %bb.bw

.noexc.i84:                                       ; preds = %_ZN12_GLOBAL__N_117test_tuple_customEv.exit
  invoke void @_ZN5boost5redis5resp319boost_redis_to_bulkERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_E(ptr noundef nonnull align 8 dereferenceable(32) %i.nq, i64 3, ptr nonnull @.str)
          to label %.noexc7.i unwind label %bb.bw

.noexc7.i:                                        ; preds = %.noexc.i84
  %i.nv = load i64, ptr %i.nt, align 8, !tbaa !34
  %i.nw = add i64 %i.nv, 1
  store i64 %i.nw, ptr %i.nt, align 8, !tbaa !34
  %i.nx = invoke noundef zeroext i1 @_ZN5boost5redis6detail12has_responseESt17basic_string_viewIcSt11char_traitsIcEE(i64 3, ptr nonnull @.str)
          to label %.noexc8.i unwind label %bb.bw

.noexc8.i:                                        ; preds = %.noexc7.i
  br i1 %i.nx, label %_ZN5boost5redis7request10push_rangeISt6vectorISt5tupleIJEESaIS5_EEEEvSt17basic_string_viewIcSt11char_traitsIcEERKT_PDTclsr3stdE6cbeginfL0p0_EE.exit.i, label %bb.bt

bb.bt:                                            ; preds = %.noexc8.i
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !35
  %i.oa = add i64 %i.nz, 1
  store i64 %i.oa, ptr %i.ny, align 8, !tbaa !35
  br label %_ZN5boost5redis7request10push_rangeISt6vectorISt5tupleIJEESaIS5_EEEEvSt17basic_string_viewIcSt11char_traitsIcEERKT_PDTclsr3stdE6cbeginfL0p0_EE.exit.i

_ZN5boost5redis7request10push_rangeISt6vectorISt5tupleIJEESaIS5_EEEEvSt17basic_string_viewIcSt11char_traitsIcEERKT_PDTclsr3stdE6cbeginfL0p0_EE.exit.i: ; preds = %bb.bt, %.noexc8.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.ob = load ptr, ptr %i.nq, align 8, !tbaa !23
  %i.oc = load i64, ptr %i.ns, align 8, !tbaa !25
  store i64 %i.oc, ptr %1, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ob, ptr %i.od, align 8
  %i.oe = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqESt17basic_string_viewIcSt11char_traitsIcEEA14_cEEbT_PKcSA_SA_iSA_RKT0_RKT1_(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.4, i32 noundef 167, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_116test_tuple_emptyEv, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(14) @.str.42)
          to label %bb.bu unwind label %bb.bx     ; 0 uses

bb.bu:                                            ; preds = %_ZN5boost5redis7request10push_rangeISt6vectorISt5tupleIJEESaIS5_EEEEvSt17basic_string_viewIcSt11char_traitsIcEERKT_PDTclsr3stdE6cbeginfL0p0_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.of = load ptr, ptr %i.nu, align 8, !tbaa !36 ; 3 uses
  %.not.i.i.i.i.i85 = icmp eq ptr %i.of, null
  br i1 %.not.i.i.i.i.i85, label %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i86, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !37
  %i.oi = ptrtoint ptr %i.oh to i64
  %i.oj = ptrtoint ptr %i.of to i64
  %i.ok = sub i64 %i.oi, %i.oj
  call void @_ZdlPvm(ptr noundef nonnull %i.of, i64 noundef %i.ok) #22
  br label %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i86

_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i86: ; preds = %bb.bv, %bb.bu
  %i.ol = load ptr, ptr %i.nq, align 8, !tbaa !23 ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.nr
  br i1 %i.om, label %_ZN12_GLOBAL__N_116test_tuple_emptyEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87: ; preds = %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i86
  %i.on = load i64, ptr %i.nr, align 8, !tbaa !24
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #22
  br label %_ZN12_GLOBAL__N_116test_tuple_emptyEv.exit

bb.bw:                                            ; preds = %.noexc7.i, %.noexc.i84, %_ZN12_GLOBAL__N_117test_tuple_customEv.exit
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5tupleIJEESaIS1_EED2Ev.exit12.i

bb.bx:                                            ; preds = %_ZN5boost5redis7request10push_rangeISt6vectorISt5tupleIJEESaIS5_EEEEvSt17basic_string_viewIcSt11char_traitsIcEERKT_PDTclsr3stdE6cbeginfL0p0_EE.exit.i
  %i.oq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %_ZNSt6vectorISt5tupleIJEESaIS1_EED2Ev.exit12.i

_ZNSt6vectorISt5tupleIJEESaIS1_EED2Ev.exit12.i:   ; preds = %bb.bx, %bb.bw
  %.pn.i83 = phi { ptr, i32 } [ %i.oq, %bb.bx ], [ %i.op, %bb.bw ]
  call void @_ZN5boost5redis7requestD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br label %common.resume

_ZN12_GLOBAL__N_116test_tuple_emptyEv.exit:       ; preds = %_ZNSt6vectorIN5boost5redis6detail13pubsub_changeESaIS3_EED2Ev.exit.i.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %i.or = call noundef i32 @_ZN5boost13report_errorsEv()
  ret i32 %i.or
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost13report_errorsEv() local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost6detail12test_resultsEv.exit, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #20
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !47
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !48
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #20
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.a, %bb.b, %bb.c
  store i8 1, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !47
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !41 ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.43, i64 noundef 19) ; 0 uses
  %i.h = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !50
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !71
  %.not.i1.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 67
  %i.q = load i8, ptr %i.p, align 1, !tbaa !24
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef signext i8 %i.t(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext 10), !inline_history !2
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.q, %bb.f ], [ %i.u, %bb.g ]
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  br label %bb.l

bb.h:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.e) ; 6 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.44, i64 noundef 6) ; 0 uses
  %i.y = icmp ne i32 %i.e, 1                      ; 2 uses
  %i.z = select i1 %i.y, ptr @.str.46, ptr @.str.45
  %i.aa = zext i1 %i.y to i64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.z, i64 noundef %i.aa) ; 0 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.47, i64 noundef 10) ; 0 uses
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !65 ; 6 uses
  %.not.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i7, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !71
  %.not.i1.i.i9 = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1, !tbaa !24
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai)
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10), !inline_history !2
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11: ; preds = %bb.j, %bb.k
  %.0.i.i.i10 = phi i8 [ %i.am, %bb.j ], [ %i.aq, %bb.k ]
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext %.0.i.i.i10)
  br label %bb.l

bb.l:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.sink = phi ptr [ %i.ar, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11 ], [ %i.v, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.e, i32 255)
  ret i32 %i.at
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqESt17basic_string_viewIcSt11char_traitsIcEEA23_cEEbT_PKcSA_SA_iSA_RKT0_RKT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(23) %6) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %5, align 8, !tbaa !42 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !38
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(23) %6) #20
  %i.b = icmp eq i64 %.sroa.0.0.copyload.i, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.c, label %_ZNK5boost6detail10lw_test_eqclISt17basic_string_viewIcSt11char_traitsIcEEA23_cEEbRKT_RKT0_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i, ptr nonnull align 1 dereferenceable(23) %6, i64 %.sroa.0.0.copyload.i)
  %i.d = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.d, label %_ZNK5boost6detail10lw_test_eqclISt17basic_string_viewIcSt11char_traitsIcEEA23_cEEbRKT_RKT0_.exit, label %bb.e

_ZNK5boost6detail10lw_test_eqclISt17basic_string_viewIcSt11char_traitsIcEEA23_cEEbRKT_RKT0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.e = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5boost6detail12test_resultsEv.exit, !prof !45

bb.c:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclISt17basic_string_viewIcSt11char_traitsIcEEA23_cEEbRKT_RKT0_.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #20
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !47
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !48
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #20
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.e:                                             ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %.not.i9 = icmp eq ptr %2, null
  br i1 %.not.i9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !50
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !72
  %i.o = or i32 %i.n, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.l, i32 noundef %i.o)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %bb.e
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #20
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %2, i64 noundef %i.p) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %3) ; 12 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  %.not.i10 = icmp eq ptr %0, null
  br i1 %.not.i10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !72
  %i.aa = or i32 %i.z, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.x, i32 noundef %i.aa)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %0, i64 noundef %i.ab) ; 0 uses
end_hunk_0
