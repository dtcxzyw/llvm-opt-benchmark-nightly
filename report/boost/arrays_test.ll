Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/arrays_test?download=true
inline.NumInlined: 4350
inline.NumDeleted: 1439
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_Z37testing_boost_array_output_conversionv:bb.a

bb.an:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(4) %308, ptr nonnull align 4 dereferenceable(4) %i.ad, i64 %i.cq, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %308, i64 %i.cq
  store i8 0, ptr %i.cv, align 1, !tbaa !38
  %i.cw = load i32, ptr %308, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %308)
  store i32 %i.cw, ptr %320, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #31
  store ptr %320, ptr %i.ai, align 8, !tbaa !47
  %i.cx = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbT_PKcSC_SC_iSC_RKT0_RKT1_(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 153, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %315)
          to label %bb.ao unwind label %bb.ba     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %321) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %306)
  store i32 0, ptr %306, align 4
  %i.cy = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(4) %i.ad) #31 ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 4
  br i1 %i.cz, label %bb.ar, label %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIaLm4EEEA4_cEEbRKT0_RT_.exit.i99.i

_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIaLm4EEEA4_cEEbRKT0_RT_.exit.i99.i: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %305) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %305, align 8, !tbaa !40
  %i.da = getelementptr inbounds nuw i8, ptr %305, i64 8
  store ptr @_ZTIA4_c, ptr %i.da, align 8, !tbaa !45
  %i.db = getelementptr inbounds nuw i8, ptr %305, i64 16
  store ptr @_ZTIN5boost5arrayIaLm4EEE, ptr %i.db, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %305) #32
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIaLm4EEEA4_cEEbRKT0_RT_.exit.i99.i
  unreachable

bb.aq:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIaLm4EEEA4_cEEbRKT0_RT_.exit.i99.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %305) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %305) #31
  br label %.body100.i

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(4) %306, ptr nonnull align 4 dereferenceable(4) %i.ad, i64 %i.cy, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %306, i64 %i.cy
  store i8 0, ptr %i.dd, align 1, !tbaa !38
  %i.de = load i32, ptr %306, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %306)
  store i32 %i.de, ptr %321, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #31
  store ptr %321, ptr %i.aj, align 8, !tbaa !47
  %i.df = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbT_S4_S4_S4_iS4_RKT0_RKT1_(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 155, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %315)
          to label %bb.as unwind label %bb.bb     ; 0 uses

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #31
  %i.dg = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(4) %i.ad) #31
  %i.dh = icmp ult i64 %i.dg, 3
  br i1 %i.dh, label %bb.av, label %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIaLm3EEEA4_cEEbRKT0_RT_.exit.i.i

_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIaLm3EEEA4_cEEbRKT0_RT_.exit.i.i: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %304) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %304, align 8, !tbaa !40
  %i.di = getelementptr inbounds nuw i8, ptr %304, i64 8
  store ptr @_ZTIA4_c, ptr %i.di, align 8, !tbaa !45
  %i.dj = getelementptr inbounds nuw i8, ptr %304, i64 16
  store ptr @_ZTIN5boost5arrayIaLm3EEE, ptr %i.dj, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %304) #32
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIaLm3EEEA4_cEEbRKT0_RT_.exit.i.i
  unreachable

bb.au:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIaLm3EEEA4_cEEbRKT0_RT_.exit.i.i
  %i.dk = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %304) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %304) #31
  br label %.body103.i

bb.av:                                            ; preds = %bb.as
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 156, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv)
          to label %._crit_edge.i.i105.i unwind label %bb.bc

bb.aw:                                            ; preds = %.body95.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 148, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv)
          to label %.invoke255.i unwind label %bb.ax

.invoke255.i:                                     ; preds = %bb.aw, %bb.aj
  invoke void @__cxa_end_catch()
          to label %bb.ak unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body90.i unwind label %bb.el

bb.ay:                                            ; preds = %bb.aj
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body90.i unwind label %bb.el

bb.az:                                            ; preds = %.invoke255.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body90.i

.body90.i:                                        ; preds = %bb.az, %bb.ay, %bb.ax, %bb.ah, %bb.w
  %.pn55.pn.i = phi { ptr, i32 } [ %i.ci, %bb.ah ], [ %i.dm, %bb.ay ], [ %i.dl, %bb.ax ], [ %i.dn, %bb.az ], [ %i.by, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %319) #31
  br label %.body87.i

.body87.i:                                        ; preds = %.body90.i, %bb.ag, %bb.s
  %.pn55.pn.pn.i = phi { ptr, i32 } [ %.pn55.pn.i, %.body90.i ], [ %i.ch, %bb.ag ], [ %i.br, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %318) #31
  br label %bb.ek

bb.ba:                                            ; preds = %bb.an
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #31
  br label %.body97.i

bb.bb:                                            ; preds = %bb.ar
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #31
  br label %.body100.i

bb.bc:                                            ; preds = %bb.av
  %i.dq = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body103.i

.body103.i:                                       ; preds = %bb.bc, %bb.au
  %eh.lpad-body104.i = phi { ptr, i32 } [ %i.dq, %bb.bc ], [ %i.dk, %bb.au ] ; 2 uses
  %i.dr = extractvalue { ptr, i32 } %eh.lpad-body104.i, 0
  %i.ds = extractvalue { ptr, i32 } %eh.lpad-body104.i, 1
  %i.dt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.du = icmp eq i32 %i.ds, %i.dt
  %i.dv = call ptr @__cxa_begin_catch(ptr %i.dr) #31 ; 0 uses
  br i1 %i.du, label %bb.bd, label %bb.ci

bb.bd:                                            ; preds = %.body103.i
  %i.dw = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke256.i unwind label %bb.ck ; 0 uses

._crit_edge.i.i105.i:                             ; preds = %.invoke256.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %321) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %320) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %322) #31
  %i.dx = getelementptr inbounds nuw i8, ptr %322, i64 16 ; 6 uses
  store ptr %i.dx, ptr %322, align 8, !tbaa !50
  %i.dy = call ptr @wmemcpy(ptr noundef nonnull %i.dx, ptr noundef nonnull @.str.29, i64 noundef 3) #31 ; 0 uses
  %.pre7.i.i.i = load ptr, ptr %322, align 8, !tbaa !52
  %i.dz = getelementptr inbounds nuw i8, ptr %322, i64 8 ; 5 uses
  store i64 3, ptr %i.dz, align 8, !tbaa !53
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %323) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %303)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %303, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #31
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !47
  %i.eb = invoke noundef zeroext i1 @_ZN5boost6detail22lexical_converter_implINS_5arrayIwLm4EEEPKcE11try_convertERKS5_RS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 4 dereferenceable(16) %303)
          to label %.noexc108.i unwind label %bb.cm

.noexc108.i:                                      ; preds = %._crit_edge.i.i105.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #31
  br i1 %i.eb, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %.noexc108.i
  call void @llvm.lifetime.start.p0(ptr nonnull %302) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %302, align 8, !tbaa !40
  %i.ec = getelementptr inbounds nuw i8, ptr %302, i64 8
  store ptr @_ZTIA4_c, ptr %i.ec, align 8, !tbaa !45
  %i.ed = getelementptr inbounds nuw i8, ptr %302, i64 16
  store ptr @_ZTIN5boost5arrayIwLm4EEE, ptr %i.ed, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %302) #32
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %302) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %302) #31
  br label %.body109.i

bb.bh:                                            ; preds = %.noexc108.i
  %i.ef = load <2 x i64>, ptr %303, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %303)
  store <2 x i64> %i.ef, ptr %323, align 16
  %i.eg = load i64, ptr %i.dz, align 8, !tbaa !53 ; 3 uses
  %i.eh = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %323) #33
  %i.ei = icmp eq i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.bi, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.ej = icmp eq i64 %i.eg, 0
  br i1 %i.ej, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ek = load ptr, ptr %322, align 8, !tbaa !52
  %i.el = call i32 @wmemcmp(ptr noundef %i.ek, ptr noundef nonnull %323, i64 noundef %i.eg) #33
  %i.em = icmp eq i32 %i.el, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i: ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.en = phi i1 [ false, %bb.bh ], [ %i.em, %bb.bj ], [ true, %bb.bi ]
  %i.eo = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv, i1 noundef zeroext %i.en)
          to label %bb.bk unwind label %bb.cm     ; 0 uses

bb.bk:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %324) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %301)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %301, i8 0, i64 16, i1 false)
  %i.ep = load i64, ptr %i.dz, align 8, !tbaa !53 ; 5 uses
  %i.eq = icmp ult i64 %i.ep, 4
  br i1 %i.eq, label %bb.bn, label %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIwLm4EEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i.i

_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIwLm4EEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i.i: ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %300) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %300, align 8, !tbaa !40
  %i.er = getelementptr inbounds nuw i8, ptr %300, i64 8
  store ptr @_ZTINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE, ptr %i.er, align 8, !tbaa !45
  %i.es = getelementptr inbounds nuw i8, ptr %300, i64 16
  store ptr @_ZTIN5boost5arrayIwLm4EEE, ptr %i.es, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %300) #32
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIwLm4EEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i.i
  unreachable

bb.bm:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIwLm4EEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %300) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %300) #31
  br label %.body116.i

bb.bn:                                            ; preds = %bb.bk
  %i.eu = load ptr, ptr %322, align 8, !tbaa !52  ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ep, 2        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(16) %301, ptr align 4 %i.eu, i64 %.idx.i.i.i.i, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %301, i64 %.idx.i.i.i.i
  store i32 0, ptr %i.ev, align 4, !tbaa !55
  %i.ew = load <2 x i64>, ptr %301, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %301)
  store <2 x i64> %i.ew, ptr %324, align 16
  %i.ex = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %324) #33
  %i.ey = icmp eq i64 %i.ep, %i.ex
  br i1 %i.ey, label %bb.bo, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit118.i

bb.bo:                                            ; preds = %bb.bn
  %i.ez = icmp eq i64 %i.ep, 0
  br i1 %i.ez, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit118.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fa = call i32 @wmemcmp(ptr noundef %i.eu, ptr noundef nonnull %324, i64 noundef %i.ep) #33
  %i.fb = icmp eq i32 %i.fa, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit118.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit118.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.fc = phi i1 [ false, %bb.bn ], [ %i.fb, %bb.bp ], [ true, %bb.bo ]
  %i.fd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 168, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv, i1 noundef zeroext %i.fc)
          to label %bb.bq unwind label %bb.cn     ; 0 uses

bb.bq:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit118.i
  call void @llvm.lifetime.end.p0(ptr nonnull %324) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %323) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %325) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %299)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %299, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #31
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !47
  %i.fe = invoke noundef zeroext i1 @_ZN5boost6detail22lexical_converter_implINS_5arrayIwLm4EEEPKcE11try_convertERKS5_RS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %299)
          to label %.noexc124.i unwind label %bb.co

.noexc124.i:                                      ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #31
  br i1 %i.fe, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %.noexc124.i
  call void @llvm.lifetime.start.p0(ptr nonnull %298) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %298, align 8, !tbaa !40
  %i.ff = getelementptr inbounds nuw i8, ptr %298, i64 8
  store ptr @_ZTIA4_c, ptr %i.ff, align 8, !tbaa !45
  %i.fg = getelementptr inbounds nuw i8, ptr %298, i64 16
  store ptr @_ZTIN5boost5arrayIwLm4EEE, ptr %i.fg, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %298) #32
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %298) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %298) #31
  br label %.body125.i

bb.bu:                                            ; preds = %.noexc124.i
  %i.fi = load <2 x i64>, ptr %299, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %299)
  store <2 x i64> %i.fi, ptr %325, align 16
  %i.fj = load i64, ptr %i.dz, align 8, !tbaa !53 ; 3 uses
  %i.fk = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %325) #33
  %i.fl = icmp eq i64 %i.fj, %i.fk
  br i1 %i.fl, label %bb.bv, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit128.i

bb.bv:                                            ; preds = %bb.bu
  %i.fm = icmp eq i64 %i.fj, 0
  br i1 %i.fm, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit128.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fn = load ptr, ptr %322, align 8, !tbaa !52
  %i.fo = call i32 @wmemcmp(ptr noundef %i.fn, ptr noundef nonnull %325, i64 noundef %i.fj) #33
  %i.fp = icmp eq i32 %i.fo, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit128.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit128.i: ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.fq = phi i1 [ false, %bb.bu ], [ %i.fp, %bb.bw ], [ true, %bb.bv ]
  %i.fr = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 173, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv, i1 noundef zeroext %i.fq)
          to label %bb.bx unwind label %bb.co     ; 0 uses

bb.bx:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit128.i
  call void @llvm.lifetime.start.p0(ptr nonnull %326) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %297)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %297, i8 0, i64 16, i1 false)
  %i.fs = load i64, ptr %i.dz, align 8, !tbaa !53 ; 5 uses
  %i.ft = icmp ult i64 %i.fs, 4
  br i1 %i.ft, label %bb.ca, label %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIwLm4EEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i129.i

_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIwLm4EEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i129.i: ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %296) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %296, align 8, !tbaa !40
  %i.fu = getelementptr inbounds nuw i8, ptr %296, i64 8
  store ptr @_ZTINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE, ptr %i.fu, align 8, !tbaa !45
  %i.fv = getelementptr inbounds nuw i8, ptr %296, i64 16
  store ptr @_ZTIN5boost5arrayIwLm4EEE, ptr %i.fv, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %296) #32
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIwLm4EEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i129.i
  unreachable

bb.bz:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIwLm4EEENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i129.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %296) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %296) #31
  br label %.body136.i

bb.ca:                                            ; preds = %bb.bx
  %i.fx = load ptr, ptr %322, align 8, !tbaa !52  ; 2 uses
  %.idx.i.i.i130.i = shl nuw nsw i64 %i.fs, 2     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(16) %297, ptr align 4 %i.fx, i64 %.idx.i.i.i130.i, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %297, i64 %.idx.i.i.i130.i
  store i32 0, ptr %i.fy, align 4, !tbaa !55
  %i.fz = load <2 x i64>, ptr %297, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %297)
  store <2 x i64> %i.fz, ptr %326, align 16
  %i.ga = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %326) #33
  %i.gb = icmp eq i64 %i.fs, %i.ga
  br i1 %i.gb, label %bb.cb, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit139.i

bb.cb:                                            ; preds = %bb.ca
  %i.gc = icmp eq i64 %i.fs, 0
  br i1 %i.gc, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit139.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gd = call i32 @wmemcmp(ptr noundef %i.fx, ptr noundef nonnull %326, i64 noundef %i.fs) #33
  %i.ge = icmp eq i32 %i.gd, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit139.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit139.i: ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.gf = phi i1 [ false, %bb.ca ], [ %i.ge, %bb.cc ], [ true, %bb.cb ]
  %i.gg = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv, i1 noundef zeroext %i.gf)
          to label %bb.cd unwind label %bb.cp     ; 0 uses

bb.cd:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit139.i
  call void @llvm.lifetime.end.p0(ptr nonnull %326) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %325) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %295)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %295, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #31
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !47
  %i.gh = invoke noundef zeroext i1 @_ZN5boost6detail22lexical_converter_implINS_5arrayIwLm3EEEPKcE11try_convertERKS5_RS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 4 dereferenceable(12) %295)
          to label %.noexc142.i unwind label %bb.cq

.noexc142.i:                                      ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #31
  br i1 %i.gh, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %.noexc142.i
  call void @llvm.lifetime.start.p0(ptr nonnull %294) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %294, align 8, !tbaa !40
  %i.gi = getelementptr inbounds nuw i8, ptr %294, i64 8
  store ptr @_ZTIA4_c, ptr %i.gi, align 8, !tbaa !45
  %i.gj = getelementptr inbounds nuw i8, ptr %294, i64 16
  store ptr @_ZTIN5boost5arrayIwLm3EEE, ptr %i.gj, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %294) #32
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.gk = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %294) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %294) #31
  br label %.body143.i

bb.ch:                                            ; preds = %.noexc142.i
  call void @llvm.lifetime.end.p0(ptr nonnull %295)
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 178, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv)
          to label %._crit_edge.i.i145.i unwind label %bb.cq

bb.ci:                                            ; preds = %.body103.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 156, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv)
          to label %.invoke256.i unwind label %bb.cj

.invoke256.i:                                     ; preds = %bb.ci, %bb.bd
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i105.i unwind label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body100.i unwind label %bb.el

bb.ck:                                            ; preds = %bb.bd
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body100.i unwind label %bb.el

bb.cl:                                            ; preds = %.invoke256.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body100.i

.body100.i:                                       ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.bb, %bb.aq
  %.pn59.pn.i = phi { ptr, i32 } [ %i.dp, %bb.bb ], [ %i.gm, %bb.ck ], [ %i.gl, %bb.cj ], [ %i.gn, %bb.cl ], [ %i.dc, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %321) #31
  br label %.body97.i

.body97.i:                                        ; preds = %.body100.i, %bb.ba, %bb.am
  %.pn59.pn.pn.i = phi { ptr, i32 } [ %.pn59.pn.i, %.body100.i ], [ %i.do, %bb.ba ], [ %i.cu, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %320) #31
  br label %bb.ek

bb.cm:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i, %._crit_edge.i.i105.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body109.i

bb.cn:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit118.i
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body116.i

.body116.i:                                       ; preds = %bb.cn, %bb.bm
  %eh.lpad-body117.i = phi { ptr, i32 } [ %i.gp, %bb.cn ], [ %i.et, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %324) #31
  br label %.body109.i

.body109.i:                                       ; preds = %.body116.i, %bb.cm, %bb.bg
  %.pn63.i = phi { ptr, i32 } [ %eh.lpad-body117.i, %.body116.i ], [ %i.go, %bb.cm ], [ %i.ee, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %323) #31
  br label %bb.ej

bb.co:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit128.i, %bb.bq
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body125.i

bb.cp:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit139.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

.body136.i:                                       ; preds = %bb.cp, %bb.bz
  %eh.lpad-body137.i = phi { ptr, i32 } [ %i.gr, %bb.cp ], [ %i.fw, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %326) #31
  br label %.body125.i

.body125.i:                                       ; preds = %.body136.i, %bb.co, %bb.bt
  %.pn65.i = phi { ptr, i32 } [ %eh.lpad-body137.i, %.body136.i ], [ %i.gq, %bb.co ], [ %i.fh, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %325) #31
  br label %bb.ej

bb.cq:                                            ; preds = %bb.ch, %bb.cd
  %i.gs = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body143.i

.body143.i:                                       ; preds = %bb.cq, %bb.cg
  %eh.lpad-body144.i = phi { ptr, i32 } [ %i.gs, %bb.cq ], [ %i.gk, %bb.cg ] ; 2 uses
  %i.gt = extractvalue { ptr, i32 } %eh.lpad-body144.i, 0
  %i.gu = extractvalue { ptr, i32 } %eh.lpad-body144.i, 1
  %i.gv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.gw = icmp eq i32 %i.gu, %i.gv
  %i.gx = call ptr @__cxa_begin_catch(ptr %i.gt) #31 ; 0 uses
  br i1 %i.gw, label %bb.cr, label %bb.de

bb.cr:                                            ; preds = %.body143.i
  %i.gy = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke261.i unwind label %bb.dg ; 0 uses

._crit_edge.i.i145.i:                             ; preds = %.invoke261.i, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %327) #31
  %i.gz = getelementptr inbounds nuw i8, ptr %327, i64 16 ; 6 uses
  store ptr %i.gz, ptr %327, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.gz, ptr noundef nonnull align 2 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.ha = getelementptr inbounds nuw i8, ptr %327, i64 8 ; 2 uses
  store i64 3, ptr %i.ha, align 8, !tbaa !60
  %i.hb = getelementptr inbounds nuw i8, ptr %327, i64 22
  store i16 0, ptr %i.hb, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %328) #31
  %i.hc = getelementptr inbounds nuw i8, ptr %328, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(592) %i.hc, i8 0, i64 592, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %328, ptr noundef nonnull align 2 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %328, i64 6
  store i16 0, ptr %i.hd, align 2, !tbaa !62, !alias.scope !435
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %._crit_edge.i.i145.i
  %.0.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i145.i ], [ %i.hh, %bb.cs ] ; 3 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %328, i64 %.0.i.i.i.i
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !62
  %i.hg = icmp eq i16 %i.hf, 0
  %i.hh = add nuw nsw i64 %.0.i.i.i.i, 1
  br i1 %i.hg, label %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i.i, label %bb.cs, !llvm.loop !0

_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i.i:    ; preds = %bb.cs
  %i.hi = icmp eq i64 %.0.i.i.i.i, 3
  %i.hj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 194, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv, i1 noundef zeroext %i.hi)
          to label %bb.ct unwind label %.body150.i ; 0 uses

bb.ct:                                            ; preds = %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %328) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %329) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(600) %329, i8 0, i64 600, i1 false), !alias.scope !436
  %i.hk = load i64, ptr %i.ha, align 8, !tbaa !60, !noalias !436 ; 5 uses
  %i.hl = icmp ult i64 %i.hk, 300
  br i1 %i.hl, label %bb.cw, label %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIDsLm300EEENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEbRKT0_RT_.exit.i152.i

_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIDsLm300EEENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEbRKT0_RT_.exit.i152.i: ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %293) #31, !noalias !436
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %293, align 8, !tbaa !40, !noalias !436
  %i.hm = getelementptr inbounds nuw i8, ptr %293, i64 8
  store ptr @_ZTINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE, ptr %i.hm, align 8, !tbaa !45, !noalias !436
  %i.hn = getelementptr inbounds nuw i8, ptr %293, i64 16
  store ptr @_ZTIN5boost5arrayIDsLm300EEE, ptr %i.hn, align 8, !tbaa !46, !noalias !436
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %293) #32
          to label %bb.cu unwind label %bb.cv, !noalias !436

bb.cu:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIDsLm300EEENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEbRKT0_RT_.exit.i152.i
  unreachable

bb.cv:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIDsLm300EEENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEbRKT0_RT_.exit.i152.i
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %293) #31, !noalias !436
  call void @llvm.lifetime.end.p0(ptr nonnull %293) #31, !noalias !436
  br label %.body154.i

bb.cw:                                            ; preds = %bb.ct
  %i.hp = load ptr, ptr %327, align 8, !tbaa !64, !noalias !436 ; 2 uses
  %.idx.i.i.i153.i = shl nuw nsw i64 %i.hk, 1     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 dereferenceable(600) %329, ptr align 2 %i.hp, i64 %.idx.i.i.i153.i, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %329, i64 %.idx.i.i.i153.i
  store i16 0, ptr %i.hq, align 2, !tbaa !62, !alias.scope !436
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.0.i.i.i157.i = phi i64 [ 0, %bb.cw ], [ %i.hu, %bb.cx ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %329, i64 %.0.i.i.i157.i
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !62
  %i.ht = icmp eq i16 %i.hs, 0
  %i.hu = add nuw nsw i64 %.0.i.i.i157.i, 1
  br i1 %i.ht, label %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i158.i, label %bb.cx, !llvm.loop !0

_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i158.i: ; preds = %bb.cx
  %i.hv = icmp eq i64 %i.hk, %.0.i.i.i157.i
  br i1 %i.hv, label %bb.cy, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit164.i

bb.cy:                                            ; preds = %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i158.i
  %.not.i.i.i159.i = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i159.i, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit164.i, label %.lr.ph.i.i.i160.i

.lr.ph.i.i.i160.i:                                ; preds = %bb.cy, %.lr.ph.i.i.i160.i
  %.01216.i.i.i161.i = phi i64 [ %i.ia, %.lr.ph.i.i.i160.i ], [ 0, %bb.cy ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %.01216.i.i.i161.i
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %329, i64 %.01216.i.i.i161.i
  %i.hy = load i16, ptr %i.hw, align 2, !tbaa !62
  %i.hz = load i16, ptr %i.hx, align 2, !tbaa !62
  %or.cond.not.i.i162.i = icmp eq i16 %i.hz, %i.hy ; 2 uses
  %i.ia = add nuw nsw i64 %.01216.i.i.i161.i, 1   ; 2 uses
  %exitcond.not.i.i.i163.i = icmp ne i64 %i.ia, %i.hk
  %or.cond.not = select i1 %or.cond.not.i.i162.i, i1 %exitcond.not.i.i.i163.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i160.i, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit164.i, !llvm.loop !1

_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit164.i: ; preds = %.lr.ph.i.i.i160.i, %bb.cy, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i158.i
  %i.ib = phi i1 [ false, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i158.i ], [ true, %bb.cy ], [ %or.cond.not.i.i162.i, %.lr.ph.i.i.i160.i ]
  %i.ic = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 203, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv, i1 noundef zeroext %i.ib)
          to label %bb.cz unwind label %bb.di     ; 0 uses

bb.cz:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit164.i
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %292)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %292, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #31
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !47
  %i.id = invoke noundef zeroext i1 @_ZN5boost6detail22lexical_converter_implINS_5arrayIDsLm3EEEPKcE11try_convertERKS5_RS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 2 dereferenceable(6) %292)
          to label %.noexc166.i unwind label %bb.dj

.noexc166.i:                                      ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #31
  br i1 %i.id, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %.noexc166.i
  call void @llvm.lifetime.start.p0(ptr nonnull %291) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %291, align 8, !tbaa !40
  %i.ie = getelementptr inbounds nuw i8, ptr %291, i64 8
  store ptr @_ZTIA4_c, ptr %i.ie, align 8, !tbaa !45
  %i.if = getelementptr inbounds nuw i8, ptr %291, i64 16
  store ptr @_ZTIN5boost5arrayIDsLm3EEE, ptr %i.if, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %291) #32
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.ig = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %291) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %291) #31
  br label %.body167.i

bb.dd:                                            ; preds = %.noexc166.i
  call void @llvm.lifetime.end.p0(ptr nonnull %292)
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 207, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv)
          to label %._crit_edge.i.i170.i unwind label %bb.dj

bb.de:                                            ; preds = %.body143.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 178, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv)
          to label %.invoke261.i unwind label %bb.df

.invoke261.i:                                     ; preds = %bb.de, %bb.cr
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i145.i unwind label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ej unwind label %bb.el

bb.dg:                                            ; preds = %bb.cr
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ej unwind label %bb.el

bb.dh:                                            ; preds = %.invoke261.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

.body150.i:                                       ; preds = %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i.i
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %328) #31
  br label %bb.ei

bb.di:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit164.i
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body154.i

.body154.i:                                       ; preds = %bb.di, %bb.cv
  %eh.lpad-body155.i = phi { ptr, i32 } [ %i.il, %bb.di ], [ %i.ho, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #31
  br label %bb.ei

bb.dj:                                            ; preds = %bb.dd, %bb.cz
  %i.im = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body167.i

.body167.i:                                       ; preds = %bb.dj, %bb.dc
  %eh.lpad-body168.i = phi { ptr, i32 } [ %i.im, %bb.dj ], [ %i.ig, %bb.dc ] ; 2 uses
  %i.in = extractvalue { ptr, i32 } %eh.lpad-body168.i, 0
  %i.io = extractvalue { ptr, i32 } %eh.lpad-body168.i, 1
  %i.ip = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.iq = icmp eq i32 %i.io, %i.ip
  %i.ir = call ptr @__cxa_begin_catch(ptr %i.in) #31 ; 0 uses
  br i1 %i.iq, label %bb.dk, label %bb.dv

bb.dk:                                            ; preds = %.body167.i
  %i.is = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke267.i unwind label %bb.dx ; 0 uses

._crit_edge.i.i170.i:                             ; preds = %.invoke267.i, %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %330) #31
  %i.it = getelementptr inbounds nuw i8, ptr %330, i64 16 ; 6 uses
  store ptr %i.it, ptr %330, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.it, ptr noundef nonnull align 4 dereferenceable(12) @.str.29, i64 12, i1 false)
  %i.iu = getelementptr inbounds nuw i8, ptr %330, i64 8 ; 2 uses
  store i64 3, ptr %i.iu, align 8, !tbaa !69
  %i.iv = getelementptr inbounds nuw i8, ptr %330, i64 28
  store i32 0, ptr %i.iv, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %331) #31
  %i.iw = getelementptr inbounds nuw i8, ptr %331, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1184) %i.iw, i8 0, i64 1184, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %331, ptr noundef nonnull align 4 dereferenceable(12) @.str.29, i64 12, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %331, i64 12
  store i32 0, ptr %i.ix, align 4, !tbaa !71, !alias.scope !437
  %wcslen.i.i.i.i = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %331)
  %i.iy = icmp eq i64 %wcslen.i.i.i.i, 3
  %i.iz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 221, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv, i1 noundef zeroext %i.iy)
          to label %bb.dl unwind label %.body176.i ; 0 uses

bb.dl:                                            ; preds = %._crit_edge.i.i170.i
  call void @llvm.lifetime.end.p0(ptr nonnull %331) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %332) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %332, i8 0, i64 1200, i1 false), !alias.scope !438
  %i.ja = load i64, ptr %i.iu, align 8, !tbaa !69, !noalias !438 ; 5 uses
  %i.jb = icmp ult i64 %i.ja, 300
  br i1 %i.jb, label %bb.do, label %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIDiLm300EEENSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEEbRKT0_RT_.exit.i183.i

_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIDiLm300EEENSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEEbRKT0_RT_.exit.i183.i: ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %290) #31, !noalias !438
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %290, align 8, !tbaa !40, !noalias !438
  %i.jc = getelementptr inbounds nuw i8, ptr %290, i64 8
  store ptr @_ZTINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE, ptr %i.jc, align 8, !tbaa !45, !noalias !438
  %i.jd = getelementptr inbounds nuw i8, ptr %290, i64 16
  store ptr @_ZTIN5boost5arrayIDiLm300EEE, ptr %i.jd, align 8, !tbaa !46, !noalias !438
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %290) #32
          to label %bb.dm unwind label %bb.dn, !noalias !438

bb.dm:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIDiLm300EEENSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEEbRKT0_RT_.exit.i183.i
  unreachable

bb.dn:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertINS_5arrayIDiLm300EEENSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEEbRKT0_RT_.exit.i183.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %290) #31, !noalias !438
  call void @llvm.lifetime.end.p0(ptr nonnull %290) #31, !noalias !438
  br label %.body185.i

bb.do:                                            ; preds = %bb.dl
  %i.jf = load ptr, ptr %330, align 8, !tbaa !72, !noalias !438 ; 2 uses
  %.idx.i.i.i184.i = shl nuw nsw i64 %i.ja, 2     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %332, ptr align 4 %i.jf, i64 %.idx.i.i.i184.i, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %332, i64 %.idx.i.i.i184.i
  store i32 0, ptr %i.jg, align 4, !tbaa !71, !alias.scope !438
  %wcslen.i.i.i188.i = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %332)
  %i.jh = icmp eq i64 %i.ja, %wcslen.i.i.i188.i
  br i1 %i.jh, label %bb.dp, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit194.i

bb.dp:                                            ; preds = %bb.do
  %.not.i.i.i189.i = icmp eq i64 %i.ja, 0
  br i1 %.not.i.i.i189.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit194.i, label %.lr.ph.i.i.i190.i

.lr.ph.i.i.i190.i:                                ; preds = %bb.dp, %.lr.ph.i.i.i190.i
  %.01216.i.i.i191.i = phi i64 [ %i.jm, %.lr.ph.i.i.i190.i ], [ 0, %bb.dp ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %.01216.i.i.i191.i
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %332, i64 %.01216.i.i.i191.i
  %i.jk = load i32, ptr %i.ji, align 4, !tbaa !71
  %i.jl = load i32, ptr %i.jj, align 4, !tbaa !71
  %or.cond.not.i.i192.i = icmp eq i32 %i.jl, %i.jk ; 2 uses
  %i.jm = add nuw nsw i64 %.01216.i.i.i191.i, 1   ; 2 uses
  %exitcond.not.i.i.i193.i = icmp ne i64 %i.jm, %i.ja
  %or.cond551.not = select i1 %or.cond.not.i.i192.i, i1 %exitcond.not.i.i.i193.i, i1 false
  br i1 %or.cond551.not, label %.lr.ph.i.i.i190.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit194.i, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit194.i: ; preds = %.lr.ph.i.i.i190.i, %bb.dp, %bb.do
  %i.jn = phi i1 [ false, %bb.do ], [ true, %bb.dp ], [ %or.cond.not.i.i192.i, %.lr.ph.i.i.i190.i ]
  %i.jo = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 230, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv, i1 noundef zeroext %i.jn)
          to label %bb.dq unwind label %bb.dz     ; 0 uses

bb.dq:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit194.i
  call void @llvm.lifetime.end.p0(ptr nonnull %332) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %289)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %289, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #31
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !47
  %i.jp = invoke noundef zeroext i1 @_ZN5boost6detail22lexical_converter_implINS_5arrayIDiLm3EEEPKcE11try_convertERKS5_RS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 4 dereferenceable(12) %289)
          to label %.noexc200.i unwind label %bb.ea

.noexc200.i:                                      ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #31
  br i1 %i.jp, label %bb.du, label %bb.dr

bb.dr:                                            ; preds = %.noexc200.i
  call void @llvm.lifetime.start.p0(ptr nonnull %288) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %288, align 8, !tbaa !40
  %i.jq = getelementptr inbounds nuw i8, ptr %288, i64 8
  store ptr @_ZTIA4_c, ptr %i.jq, align 8, !tbaa !45
  %i.jr = getelementptr inbounds nuw i8, ptr %288, i64 16
  store ptr @_ZTIN5boost5arrayIDiLm3EEE, ptr %i.jr, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %288) #32
          to label %bb.ds unwind label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  unreachable

bb.dt:                                            ; preds = %bb.dr
  %i.js = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %288) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %288) #31
  br label %.body201.i

bb.du:                                            ; preds = %.noexc200.i
  call void @llvm.lifetime.end.p0(ptr nonnull %289)
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 234, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv)
          to label %bb.ec unwind label %bb.ea

bb.dv:                                            ; preds = %.body167.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 207, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv)
          to label %.invoke267.i unwind label %bb.dw

.invoke267.i:                                     ; preds = %bb.dv, %bb.dk
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i170.i unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ei unwind label %bb.el

bb.dx:                                            ; preds = %bb.dk
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ei unwind label %bb.el

bb.dy:                                            ; preds = %.invoke267.i
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

.body176.i:                                       ; preds = %._crit_edge.i.i170.i
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %331) #31
  br label %bb.eh

bb.dz:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit194.i
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %.body185.i

.body185.i:                                       ; preds = %bb.dz, %bb.dn
  %eh.lpad-body186.i = phi { ptr, i32 } [ %i.jx, %bb.dz ], [ %i.je, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %332) #31
  br label %bb.eh

bb.ea:                                            ; preds = %bb.du, %bb.dq
  %i.jy = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body201.i

.body201.i:                                       ; preds = %bb.ea, %bb.dt
  %eh.lpad-body202.i = phi { ptr, i32 } [ %i.jy, %bb.ea ], [ %i.js, %bb.dt ] ; 2 uses
  %i.jz = extractvalue { ptr, i32 } %eh.lpad-body202.i, 0
  %i.ka = extractvalue { ptr, i32 } %eh.lpad-body202.i, 1
  %i.kb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.kc = icmp eq i32 %i.ka, %i.kb
  %i.kd = call ptr @__cxa_begin_catch(ptr %i.jz) #31 ; 0 uses
  br i1 %i.kc, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %.body201.i
  %i.ke = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke268.i unwind label %bb.ef ; 0 uses

bb.ec:                                            ; preds = %.invoke268.i, %bb.du
  %i.kf = load ptr, ptr %330, align 8, !tbaa !72  ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.it
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ec
  %i.kh = load i64, ptr %i.it, align 8, !tbaa !38
  %i.ki = shl i64 %i.kh, 2
  %i.kj = add i64 %i.ki, 4
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #34
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %330) #31
  %i.kk = load ptr, ptr %327, align 8, !tbaa !64  ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.gz
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i
  %i.km = load i64, ptr %i.gz, align 8, !tbaa !38
  %i.kn = shl i64 %i.km, 1
  %i.ko = add i64 %i.kn, 2
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #34
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %327) #31
  %i.kp = load ptr, ptr %322, align 8, !tbaa !52  ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.dx
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %i.kr = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.ks = shl i64 %i.kr, 2
  %i.kt = add i64 %i.ks, 4
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %322) #31
  %i.ku = load ptr, ptr %315, align 8, !tbaa !73  ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.ak
  br i1 %i.kv, label %_ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i
  %i.kw = load i64, ptr %i.ak, align 8, !tbaa !38
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #34
  br label %_ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv.exit

bb.ed:                                            ; preds = %.body201.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 234, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueIN5boost5arrayEEvv)
          to label %.invoke268.i unwind label %bb.ee

.invoke268.i:                                     ; preds = %bb.ed, %bb.eb
  invoke void @__cxa_end_catch()
          to label %bb.ec unwind label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.ky = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.eh unwind label %bb.el

bb.ef:                                            ; preds = %bb.eb
  %i.kz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.eh unwind label %bb.el

bb.eg:                                            ; preds = %.invoke268.i
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ee, %.body185.i, %.body176.i
  %.pn71.pn.i = phi { ptr, i32 } [ %i.jw, %.body176.i ], [ %i.kz, %bb.ef ], [ %i.ky, %bb.ee ], [ %eh.lpad-body186.i, %.body185.i ], [ %i.la, %bb.eg ]
end_hunk_0
begin_hunk_1_@_Z37testing_boost_array_output_conversionv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %249)
  store i32 %i.ri, ptr %278, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #31
  store ptr %278, ptr %i.x, align 8, !tbaa !47
  %i.rj = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbT_S4_S4_S4_iS4_RKT0_RKT1_(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 60, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %272)
          to label %bb.gr unwind label %bb.hd     ; 0 uses

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %245) #31
  %i.rk = getelementptr inbounds nuw i8, ptr %245, i64 24
  store ptr %245, ptr %i.rk, align 8, !tbaa !75
  %i.rl = getelementptr inbounds nuw i8, ptr %245, i64 32
  %i.rm = getelementptr inbounds nuw i8, ptr %245, i64 21 ; 3 uses
  store ptr %i.rm, ptr %i.rl, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %244) #31
  store i32 100, ptr %244, align 8, !tbaa !78
  %i.rn = getelementptr inbounds nuw i8, ptr %244, i64 8
  store ptr %i.rm, ptr %i.rn, align 8, !tbaa !79
  %i.ro = getelementptr inbounds nuw i8, ptr %244, i64 16
  store i8 48, ptr %i.ro, align 8, !tbaa !80
  %i.rp = getelementptr inbounds nuw i8, ptr %244, i64 20
  store i32 48, ptr %i.rp, align 4, !tbaa !81
  %i.rq = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEjcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %244)
          to label %bb.gs unwind label %bb.he

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %244) #31
  %i.rr = ptrtoint ptr %i.rm to i64
  %i.rs = ptrtoint ptr %i.rq to i64
  %i.rt = sub i64 %i.rr, %i.rs
  %i.ru = icmp ult i64 %i.rt, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %245) #31
  br i1 %i.ru, label %bb.gw, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %243) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %243, align 8, !tbaa !40
  %i.rv = getelementptr inbounds nuw i8, ptr %243, i64 8
  store ptr @_ZTIi, ptr %i.rv, align 8, !tbaa !45
  %i.rw = getelementptr inbounds nuw i8, ptr %243, i64 16
  store ptr @_ZTIN5boost5arrayIaLm3EEE, ptr %i.rw, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %243) #32
          to label %bb.gu unwind label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  unreachable

bb.gv:                                            ; preds = %bb.gt
  %i.rx = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %243) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %243) #31
  br label %.body110.i

bb.gw:                                            ; preds = %bb.gs
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_)
          to label %._crit_edge.i.i112.i unwind label %bb.he

bb.gx:                                            ; preds = %.body97.i6
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 53, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_)
          to label %.invoke268.i7 unwind label %bb.gy

.invoke268.i7:                                    ; preds = %bb.gx, %bb.ge
  invoke void @__cxa_end_catch()
          to label %bb.gf unwind label %bb.ha

bb.gy:                                            ; preds = %bb.gx
  %i.ry = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body91.i unwind label %bb.kw

bb.gz:                                            ; preds = %bb.ge
  %i.rz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body91.i unwind label %bb.kw

bb.ha:                                            ; preds = %.invoke268.i7, %bb.fm
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i

.body91.i:                                        ; preds = %bb.ha, %bb.gz, %bb.gy, %bb.gc, %bb.fq
  %.pn53.pn.i = phi { ptr, i32 } [ %i.pu, %bb.gc ], [ %i.rz, %bb.gz ], [ %i.ry, %bb.gy ], [ %i.sa, %bb.ha ], [ %i.pc, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %276) #31
  br label %.body87.i5

.body87.i5:                                       ; preds = %.body91.i, %bb.gb, %bb.ga, %bb.fk
  %.pn53.pn.pn.i = phi { ptr, i32 } [ %.pn53.pn.i, %.body91.i ], [ %i.pt, %bb.gb ], [ %i.ps, %bb.ga ], [ %i.om, %bb.fk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %275) #31
  br label %bb.kv

bb.hb:                                            ; preds = %bb.gf
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %.body101.i

bb.hc:                                            ; preds = %bb.gk
  %i.sc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #31
  br label %.body101.i

bb.hd:                                            ; preds = %bb.gq
  %i.sd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #31
  br label %.body105.i

bb.he:                                            ; preds = %bb.gw, %bb.gr
  %i.se = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body110.i

.body110.i:                                       ; preds = %bb.he, %bb.gv
  %eh.lpad-body111.i = phi { ptr, i32 } [ %i.se, %bb.he ], [ %i.rx, %bb.gv ] ; 2 uses
  %i.sf = extractvalue { ptr, i32 } %eh.lpad-body111.i, 0
  %i.sg = extractvalue { ptr, i32 } %eh.lpad-body111.i, 1
  %i.sh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.si = icmp eq i32 %i.sg, %i.sh
  %i.sj = call ptr @__cxa_begin_catch(ptr %i.sf) #31 ; 0 uses
  br i1 %i.si, label %bb.hf, label %bb.ib

bb.hf:                                            ; preds = %.body110.i
  %i.sk = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke269.i unwind label %bb.id ; 0 uses

._crit_edge.i.i112.i:                             ; preds = %.invoke269.i, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %278) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %277) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %279) #31
  %i.sl = getelementptr inbounds nuw i8, ptr %279, i64 16 ; 6 uses
  store ptr %i.sl, ptr %279, align 8, !tbaa !50
  %i.sm = call ptr @wmemcpy(ptr noundef nonnull %i.sl, ptr noundef nonnull @.str.29, i64 noundef 3) #31 ; 0 uses
  %.pre7.i.i.i8 = load ptr, ptr %279, align 8, !tbaa !52
  %i.sn = getelementptr inbounds nuw i8, ptr %279, i64 8 ; 3 uses
  store i64 3, ptr %i.sn, align 8, !tbaa !53
  %i.so = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i8, i64 12
  store i32 0, ptr %i.so, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %280) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %280, i8 0, i64 1200, i1 false), !alias.scope !443
  call void @llvm.lifetime.start.p0(ptr nonnull %242) #31, !noalias !443
  %i.sp = getelementptr inbounds nuw i8, ptr %242, i64 88 ; 2 uses
  store ptr %242, ptr %i.sp, align 8, !tbaa !83, !noalias !443
  %i.sq = getelementptr inbounds nuw i8, ptr %242, i64 96 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %242, i64 84 ; 4 uses
  store ptr %i.sr, ptr %i.sq, align 8, !tbaa !84, !noalias !443
  call void @llvm.lifetime.start.p0(ptr nonnull %241) #31, !noalias !443
  store i32 100, ptr %241, align 8, !tbaa !86, !noalias !443
  %i.ss = getelementptr inbounds nuw i8, ptr %241, i64 8
  store ptr %i.sr, ptr %i.ss, align 8, !tbaa !87, !noalias !443
  %i.st = getelementptr inbounds nuw i8, ptr %241, i64 16
  store i32 48, ptr %i.st, align 8, !tbaa !88, !noalias !443
  %i.su = getelementptr inbounds nuw i8, ptr %241, i64 20
  store i32 48, ptr %i.su, align 4, !tbaa !89, !noalias !443
  %i.sv = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %241)
          to label %bb.hg unwind label %bb.if     ; 3 uses

bb.hg:                                            ; preds = %._crit_edge.i.i112.i
  call void @llvm.lifetime.end.p0(ptr nonnull %241) #31, !noalias !443
  store ptr %i.sv, ptr %i.sp, align 8, !tbaa !83, !noalias !443
  store ptr %i.sr, ptr %i.sq, align 8, !tbaa !84, !noalias !443
  %i.sw = ptrtoint ptr %i.sr to i64
  %i.sx = ptrtoint ptr %i.sv to i64
  %i.sy = sub i64 %i.sw, %i.sx                    ; 3 uses
  %i.sz = icmp ult i64 %i.sy, 1200
  br i1 %i.sz, label %bb.hk, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %242) #31, !noalias !443
  call void @llvm.lifetime.start.p0(ptr nonnull %240) #31, !noalias !443
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %240, align 8, !tbaa !40, !noalias !443
  %i.ta = getelementptr inbounds nuw i8, ptr %240, i64 8
  store ptr @_ZTIi, ptr %i.ta, align 8, !tbaa !45, !noalias !443
  %i.tb = getelementptr inbounds nuw i8, ptr %240, i64 16
  store ptr @_ZTIN5boost5arrayIwLm300EEE, ptr %i.tb, align 8, !tbaa !46, !noalias !443
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %240) #32
          to label %bb.hi unwind label %bb.hj, !noalias !443

bb.hi:                                            ; preds = %bb.hh
  unreachable

bb.hj:                                            ; preds = %bb.hh
  %i.tc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %240) #31, !noalias !443
  call void @llvm.lifetime.end.p0(ptr nonnull %240) #31, !noalias !443
  br label %.body117.i

bb.hk:                                            ; preds = %bb.hg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %280, ptr align 4 %i.sv, i64 %i.sy, i1 false)
  %i.td = getelementptr inbounds nuw i8, ptr %280, i64 %i.sy
  store i32 0, ptr %i.td, align 4, !tbaa !55, !alias.scope !443
  call void @llvm.lifetime.end.p0(ptr nonnull %242) #31, !noalias !443
  %i.te = load i64, ptr %i.sn, align 8, !tbaa !53 ; 3 uses
  %i.tf = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %280) #33
  %i.tg = icmp eq i64 %i.te, %i.tf
  br i1 %i.tg, label %bb.hl, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i9

bb.hl:                                            ; preds = %bb.hk
  %i.th = icmp eq i64 %i.te, 0
  br i1 %i.th, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i9, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ti = load ptr, ptr %279, align 8, !tbaa !52
  %i.tj = call i32 @wmemcmp(ptr noundef %i.ti, ptr noundef nonnull %280, i64 noundef %i.te) #33
  %i.tk = icmp eq i32 %i.tj, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i9

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i9: ; preds = %bb.hm, %bb.hl, %bb.hk
  %i.tl = phi i1 [ false, %bb.hk ], [ %i.tk, %bb.hm ], [ true, %bb.hl ]
  %i.tm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 71, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_, i1 noundef zeroext %i.tl)
          to label %bb.hn unwind label %bb.if     ; 0 uses

bb.hn:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %280) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %281) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %281, i8 0, i64 1200, i1 false), !alias.scope !444
  call void @llvm.lifetime.start.p0(ptr nonnull %239) #31, !noalias !444
  %i.tn = getelementptr inbounds nuw i8, ptr %239, i64 88 ; 2 uses
  store ptr %239, ptr %i.tn, align 8, !tbaa !83, !noalias !444
  %i.to = getelementptr inbounds nuw i8, ptr %239, i64 96 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %239, i64 84 ; 4 uses
  store ptr %i.tp, ptr %i.to, align 8, !tbaa !84, !noalias !444
  call void @llvm.lifetime.start.p0(ptr nonnull %238) #31, !noalias !444
  store i32 100, ptr %238, align 8, !tbaa !86, !noalias !444
  %i.tq = getelementptr inbounds nuw i8, ptr %238, i64 8
  store ptr %i.tp, ptr %i.tq, align 8, !tbaa !87, !noalias !444
  %i.tr = getelementptr inbounds nuw i8, ptr %238, i64 16
  store i32 48, ptr %i.tr, align 8, !tbaa !88, !noalias !444
  %i.ts = getelementptr inbounds nuw i8, ptr %238, i64 20
  store i32 48, ptr %i.ts, align 4, !tbaa !89, !noalias !444
  %i.tt = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %238)
          to label %bb.ho unwind label %bb.ig     ; 3 uses

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %238) #31, !noalias !444
  store ptr %i.tt, ptr %i.tn, align 8, !tbaa !83, !noalias !444
  store ptr %i.tp, ptr %i.to, align 8, !tbaa !84, !noalias !444
  %i.tu = ptrtoint ptr %i.tp to i64
  %i.tv = ptrtoint ptr %i.tt to i64
  %i.tw = sub i64 %i.tu, %i.tv                    ; 3 uses
  %i.tx = icmp ult i64 %i.tw, 1200
  br i1 %i.tx, label %bb.hs, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #31, !noalias !444
  call void @llvm.lifetime.start.p0(ptr nonnull %237) #31, !noalias !444
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %237, align 8, !tbaa !40, !noalias !444
  %i.ty = getelementptr inbounds nuw i8, ptr %237, i64 8
  store ptr @_ZTIi, ptr %i.ty, align 8, !tbaa !45, !noalias !444
  %i.tz = getelementptr inbounds nuw i8, ptr %237, i64 16
  store ptr @_ZTIN5boost5arrayIwLm300EEE, ptr %i.tz, align 8, !tbaa !46, !noalias !444
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %237) #32
          to label %bb.hq unwind label %bb.hr, !noalias !444

bb.hq:                                            ; preds = %bb.hp
  unreachable

bb.hr:                                            ; preds = %bb.hp
  %i.ua = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %237) #31, !noalias !444
  call void @llvm.lifetime.end.p0(ptr nonnull %237) #31, !noalias !444
  br label %.body121.i

bb.hs:                                            ; preds = %bb.ho
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %281, ptr align 4 %i.tt, i64 %i.tw, i1 false)
  %i.ub = getelementptr inbounds nuw i8, ptr %281, i64 %i.tw
  store i32 0, ptr %i.ub, align 4, !tbaa !55, !alias.scope !444
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #31, !noalias !444
  %i.uc = load i64, ptr %i.sn, align 8, !tbaa !53 ; 3 uses
  %i.ud = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %281) #33
  %i.ue = icmp eq i64 %i.uc, %i.ud
  br i1 %i.ue, label %bb.ht, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i

bb.ht:                                            ; preds = %bb.hs
  %i.uf = icmp eq i64 %i.uc, 0
  br i1 %i.uf, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.ug = load ptr, ptr %279, align 8, !tbaa !52
  %i.uh = call i32 @wmemcmp(ptr noundef %i.ug, ptr noundef nonnull %281, i64 noundef %i.uc) #33
  %i.ui = icmp eq i32 %i.uh, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i: ; preds = %bb.hu, %bb.ht, %bb.hs
  %i.uj = phi i1 [ false, %bb.hs ], [ %i.ui, %bb.hu ], [ true, %bb.ht ]
  %i.uk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 76, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_, i1 noundef zeroext %i.uj)
          to label %bb.hv unwind label %bb.ig     ; 0 uses

bb.hv:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %281) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %236) #31
  %i.ul = getelementptr inbounds nuw i8, ptr %236, i64 88
  store ptr %236, ptr %i.ul, align 8, !tbaa !83
  %i.um = getelementptr inbounds nuw i8, ptr %236, i64 96
  %i.un = getelementptr inbounds nuw i8, ptr %236, i64 84 ; 3 uses
  store ptr %i.un, ptr %i.um, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %235) #31
  store i32 100, ptr %235, align 8, !tbaa !86
  %i.uo = getelementptr inbounds nuw i8, ptr %235, i64 8
  store ptr %i.un, ptr %i.uo, align 8, !tbaa !87
  %i.up = getelementptr inbounds nuw i8, ptr %235, i64 16
  store i32 48, ptr %i.up, align 8, !tbaa !88
  %i.uq = getelementptr inbounds nuw i8, ptr %235, i64 20
  store i32 48, ptr %i.uq, align 4, !tbaa !89
  %i.ur = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %235)
          to label %bb.hw unwind label %bb.ih

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %235) #31
  %i.us = ptrtoint ptr %i.un to i64
  %i.ut = ptrtoint ptr %i.ur to i64
  %i.uu = sub i64 %i.us, %i.ut
  %i.uv = icmp ult i64 %i.uu, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %236) #31
  br i1 %i.uv, label %bb.ia, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %234) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %234, align 8, !tbaa !40
  %i.uw = getelementptr inbounds nuw i8, ptr %234, i64 8
  store ptr @_ZTIi, ptr %i.uw, align 8, !tbaa !45
  %i.ux = getelementptr inbounds nuw i8, ptr %234, i64 16
  store ptr @_ZTIN5boost5arrayIwLm3EEE, ptr %i.ux, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %234) #32
          to label %bb.hy unwind label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  unreachable

bb.hz:                                            ; preds = %bb.hx
  %i.uy = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %234) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #31
  br label %.body127.i

bb.ia:                                            ; preds = %bb.hw
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_)
          to label %._crit_edge.i.i129.i unwind label %bb.ih

bb.ib:                                            ; preds = %.body110.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_)
          to label %.invoke269.i unwind label %bb.ic

.invoke269.i:                                     ; preds = %bb.ib, %bb.hf
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i112.i unwind label %bb.ie

bb.ic:                                            ; preds = %bb.ib
  %i.uz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body105.i unwind label %bb.kw

bb.id:                                            ; preds = %bb.hf
  %i.va = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body105.i unwind label %bb.kw

bb.ie:                                            ; preds = %.invoke269.i, %bb.gl
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %.body105.i

.body105.i:                                       ; preds = %bb.ie, %bb.id, %bb.ic, %bb.hd, %bb.gp
  %.pn57.pn.i = phi { ptr, i32 } [ %i.sd, %bb.hd ], [ %i.va, %bb.id ], [ %i.uz, %bb.ic ], [ %i.vb, %bb.ie ], [ %i.rg, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %278) #31
  br label %.body101.i

.body101.i:                                       ; preds = %.body105.i, %bb.hc, %bb.hb, %bb.gj
  %.pn57.pn.pn.i = phi { ptr, i32 } [ %.pn57.pn.i, %.body105.i ], [ %i.sc, %bb.hc ], [ %i.sb, %bb.hb ], [ %i.qp, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %277) #31
  br label %bb.kv

bb.if:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i9, %._crit_edge.i.i112.i
  %i.vc = landingpad { ptr, i32 }
          cleanup
  br label %.body117.i

.body117.i:                                       ; preds = %bb.if, %bb.hj
  %eh.lpad-body118.i = phi { ptr, i32 } [ %i.vc, %bb.if ], [ %i.tc, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %280) #31
  br label %bb.ku

bb.ig:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i, %bb.hn
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %.body121.i

.body121.i:                                       ; preds = %bb.ig, %bb.hr
  %eh.lpad-body122.i = phi { ptr, i32 } [ %i.vd, %bb.ig ], [ %i.ua, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %281) #31
  br label %bb.ku

bb.ih:                                            ; preds = %bb.ia, %bb.hv
  %i.ve = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body127.i

.body127.i:                                       ; preds = %bb.ih, %bb.hz
  %eh.lpad-body128.i = phi { ptr, i32 } [ %i.ve, %bb.ih ], [ %i.uy, %bb.hz ] ; 2 uses
  %i.vf = extractvalue { ptr, i32 } %eh.lpad-body128.i, 0
  %i.vg = extractvalue { ptr, i32 } %eh.lpad-body128.i, 1
  %i.vh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.vi = icmp eq i32 %i.vg, %i.vh
  %i.vj = call ptr @__cxa_begin_catch(ptr %i.vf) #31 ; 0 uses
  br i1 %i.vi, label %bb.ii, label %bb.je

bb.ii:                                            ; preds = %.body127.i
  %i.vk = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke270.i unwind label %bb.jg ; 0 uses

._crit_edge.i.i129.i:                             ; preds = %.invoke270.i, %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %282) #31
  %i.vl = getelementptr inbounds nuw i8, ptr %282, i64 16 ; 6 uses
  store ptr %i.vl, ptr %282, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.vl, ptr noundef nonnull align 2 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.vm = getelementptr inbounds nuw i8, ptr %282, i64 8 ; 3 uses
  store i64 3, ptr %i.vm, align 8, !tbaa !60
  %i.vn = getelementptr inbounds nuw i8, ptr %282, i64 22
  store i16 0, ptr %i.vn, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %283) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(600) %283, i8 0, i64 600, i1 false), !alias.scope !445
  call void @llvm.lifetime.start.p0(ptr nonnull %233) #31, !noalias !445
  %i.vo = getelementptr inbounds nuw i8, ptr %233, i64 48 ; 2 uses
  store ptr %233, ptr %i.vo, align 8, !tbaa !91, !noalias !445
  %i.vp = getelementptr inbounds nuw i8, ptr %233, i64 56 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %233, i64 42 ; 4 uses
  store ptr %i.vq, ptr %i.vp, align 8, !tbaa !92, !noalias !445
  call void @llvm.lifetime.start.p0(ptr nonnull %232) #31, !noalias !445
  store i32 100, ptr %232, align 8, !tbaa !95, !noalias !445
  %i.vr = getelementptr inbounds nuw i8, ptr %232, i64 8
  store ptr %i.vq, ptr %i.vr, align 8, !tbaa !96, !noalias !445
  %i.vs = getelementptr inbounds nuw i8, ptr %232, i64 16
  store i16 48, ptr %i.vs, align 8, !tbaa !97, !noalias !445
  %i.vt = getelementptr inbounds nuw i8, ptr %232, i64 18
  store i16 48, ptr %i.vt, align 2, !tbaa !98, !noalias !445
  %i.vu = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEjDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %232)
          to label %bb.ij unwind label %bb.ji     ; 3 uses

bb.ij:                                            ; preds = %._crit_edge.i.i129.i
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #31, !noalias !445
  store ptr %i.vu, ptr %i.vo, align 8, !tbaa !91, !noalias !445
  store ptr %i.vq, ptr %i.vp, align 8, !tbaa !92, !noalias !445
  %i.vv = ptrtoint ptr %i.vq to i64
  %i.vw = ptrtoint ptr %i.vu to i64
  %i.vx = sub i64 %i.vv, %i.vw                    ; 3 uses
  %i.vy = icmp ult i64 %i.vx, 600
  br i1 %i.vy, label %bb.in, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #31, !noalias !445
  call void @llvm.lifetime.start.p0(ptr nonnull %231) #31, !noalias !445
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %231, align 8, !tbaa !40, !noalias !445
  %i.vz = getelementptr inbounds nuw i8, ptr %231, i64 8
  store ptr @_ZTIi, ptr %i.vz, align 8, !tbaa !45, !noalias !445
  %i.wa = getelementptr inbounds nuw i8, ptr %231, i64 16
  store ptr @_ZTIN5boost5arrayIDsLm300EEE, ptr %i.wa, align 8, !tbaa !46, !noalias !445
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %231) #32
          to label %bb.il unwind label %bb.im, !noalias !445

bb.il:                                            ; preds = %bb.ik
  unreachable

bb.im:                                            ; preds = %bb.ik
  %i.wb = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_Z37testing_boost_array_output_conversionv:bb.a
.lr.ph.i.i.i145.i:                                ; preds = %bb.ix, %.lr.ph.i.i.i145.i
  %.01216.i.i.i146.i = phi i64 [ %i.xr, %.lr.ph.i.i.i145.i ], [ 0, %bb.ix ] ; 3 uses
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %i.xm, i64 %.01216.i.i.i146.i
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %284, i64 %.01216.i.i.i146.i
  %i.xp = load i16, ptr %i.xn, align 2, !tbaa !62
  %i.xq = load i16, ptr %i.xo, align 2, !tbaa !62
  %or.cond.not.i.i147.i = icmp eq i16 %i.xq, %i.xp ; 2 uses
  %i.xr = add nuw nsw i64 %.01216.i.i.i146.i, 1   ; 2 uses
  %exitcond.not.i.i.i148.i = icmp ne i64 %i.xr, %i.xg
  %or.cond553.not = select i1 %or.cond.not.i.i147.i, i1 %exitcond.not.i.i.i148.i, i1 false
  br i1 %or.cond553.not, label %.lr.ph.i.i.i145.i, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i, !llvm.loop !1

_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i: ; preds = %.lr.ph.i.i.i145.i, %bb.ix, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i143.i
  %i.xs = phi i1 [ false, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i143.i ], [ true, %bb.ix ], [ %or.cond.not.i.i147.i, %.lr.ph.i.i.i145.i ]
  %i.xt = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 95, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_, i1 noundef zeroext %i.xs)
          to label %bb.iy unwind label %bb.jj     ; 0 uses

bb.iy:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i
  call void @llvm.lifetime.end.p0(ptr nonnull %284) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %227) #31
  %i.xu = getelementptr inbounds nuw i8, ptr %227, i64 48
  store ptr %227, ptr %i.xu, align 8, !tbaa !91
  %i.xv = getelementptr inbounds nuw i8, ptr %227, i64 56
  %i.xw = getelementptr inbounds nuw i8, ptr %227, i64 42 ; 3 uses
  store ptr %i.xw, ptr %i.xv, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %226) #31
  store i32 100, ptr %226, align 8, !tbaa !95
  %i.xx = getelementptr inbounds nuw i8, ptr %226, i64 8
  store ptr %i.xw, ptr %i.xx, align 8, !tbaa !96
  %i.xy = getelementptr inbounds nuw i8, ptr %226, i64 16
  store i16 48, ptr %i.xy, align 8, !tbaa !97
  %i.xz = getelementptr inbounds nuw i8, ptr %226, i64 18
  store i16 48, ptr %i.xz, align 2, !tbaa !98
  %i.ya = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEjDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %226)
          to label %bb.iz unwind label %bb.jk

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %226) #31
  %i.yb = ptrtoint ptr %i.xw to i64
  %i.yc = ptrtoint ptr %i.ya to i64
  %i.yd = sub i64 %i.yb, %i.yc
  %i.ye = icmp ult i64 %i.yd, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %227) #31
  br i1 %i.ye, label %bb.jd, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  call void @llvm.lifetime.start.p0(ptr nonnull %225) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %225, align 8, !tbaa !40
  %i.yf = getelementptr inbounds nuw i8, ptr %225, i64 8
  store ptr @_ZTIi, ptr %i.yf, align 8, !tbaa !45
  %i.yg = getelementptr inbounds nuw i8, ptr %225, i64 16
  store ptr @_ZTIN5boost5arrayIDsLm3EEE, ptr %i.yg, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %225) #32
          to label %bb.jb unwind label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  unreachable

bb.jc:                                            ; preds = %bb.ja
  %i.yh = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %225) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %225) #31
  br label %.body153.i

bb.jd:                                            ; preds = %bb.iz
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_)
          to label %._crit_edge.i.i156.i unwind label %bb.jk

bb.je:                                            ; preds = %.body127.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_)
          to label %.invoke270.i unwind label %bb.jf

.invoke270.i:                                     ; preds = %bb.je, %bb.ii
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i129.i unwind label %bb.jh

bb.jf:                                            ; preds = %bb.je
  %i.yi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ku unwind label %bb.kw

bb.jg:                                            ; preds = %bb.ii
  %i.yj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ku unwind label %bb.kw

bb.jh:                                            ; preds = %.invoke270.i
  %i.yk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

bb.ji:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i, %._crit_edge.i.i129.i
  %i.yl = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i

.body135.i:                                       ; preds = %bb.ji, %bb.im
  %eh.lpad-body136.i = phi { ptr, i32 } [ %i.yl, %bb.ji ], [ %i.wb, %bb.im ]
  call void @llvm.lifetime.end.p0(ptr nonnull %283) #31
  br label %bb.kt

bb.jj:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i, %bb.iq
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i

.body139.i:                                       ; preds = %bb.jj, %bb.iu
  %eh.lpad-body140.i = phi { ptr, i32 } [ %i.ym, %bb.jj ], [ %i.xe, %bb.iu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %284) #31
  br label %bb.kt

bb.jk:                                            ; preds = %bb.jd, %bb.iy
  %i.yn = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body153.i

.body153.i:                                       ; preds = %bb.jk, %bb.jc
  %eh.lpad-body154.i = phi { ptr, i32 } [ %i.yn, %bb.jk ], [ %i.yh, %bb.jc ] ; 2 uses
  %i.yo = extractvalue { ptr, i32 } %eh.lpad-body154.i, 0
  %i.yp = extractvalue { ptr, i32 } %eh.lpad-body154.i, 1
  %i.yq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.yr = icmp eq i32 %i.yp, %i.yq
  %i.ys = call ptr @__cxa_begin_catch(ptr %i.yo) #31 ; 0 uses
  br i1 %i.yr, label %bb.jl, label %bb.kf

bb.jl:                                            ; preds = %.body153.i
  %i.yt = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke271.i unwind label %bb.kh ; 0 uses

._crit_edge.i.i156.i:                             ; preds = %.invoke271.i, %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %285) #31
  %i.yu = getelementptr inbounds nuw i8, ptr %285, i64 16 ; 6 uses
  store ptr %i.yu, ptr %285, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.yu, ptr noundef nonnull align 4 dereferenceable(12) @.str.29, i64 12, i1 false)
  %i.yv = getelementptr inbounds nuw i8, ptr %285, i64 8 ; 3 uses
  store i64 3, ptr %i.yv, align 8, !tbaa !69
  %i.yw = getelementptr inbounds nuw i8, ptr %285, i64 28
  store i32 0, ptr %i.yw, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %286) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %286, i8 0, i64 1200, i1 false), !alias.scope !447
  call void @llvm.lifetime.start.p0(ptr nonnull %224) #31, !noalias !447
  %i.yx = getelementptr inbounds nuw i8, ptr %224, i64 88 ; 2 uses
  store ptr %224, ptr %i.yx, align 8, !tbaa !100, !noalias !447
  %i.yy = getelementptr inbounds nuw i8, ptr %224, i64 96 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %224, i64 84 ; 4 uses
  store ptr %i.yz, ptr %i.yy, align 8, !tbaa !101, !noalias !447
  call void @llvm.lifetime.start.p0(ptr nonnull %223) #31, !noalias !447
  store i32 100, ptr %223, align 8, !tbaa !103, !noalias !447
  %i.za = getelementptr inbounds nuw i8, ptr %223, i64 8
  store ptr %i.yz, ptr %i.za, align 8, !tbaa !104, !noalias !447
  %i.zb = getelementptr inbounds nuw i8, ptr %223, i64 16
  store i32 48, ptr %i.zb, align 8, !tbaa !105, !noalias !447
  %i.zc = getelementptr inbounds nuw i8, ptr %223, i64 20
  store i32 48, ptr %i.zc, align 4, !tbaa !106, !noalias !447
  %i.zd = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEjDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %223)
          to label %bb.jm unwind label %bb.kj     ; 3 uses

bb.jm:                                            ; preds = %._crit_edge.i.i156.i
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #31, !noalias !447
  store ptr %i.zd, ptr %i.yx, align 8, !tbaa !100, !noalias !447
  store ptr %i.yz, ptr %i.yy, align 8, !tbaa !101, !noalias !447
  %i.ze = ptrtoint ptr %i.yz to i64
  %i.zf = ptrtoint ptr %i.zd to i64
  %i.zg = sub i64 %i.ze, %i.zf                    ; 3 uses
  %i.zh = icmp ult i64 %i.zg, 1200
  br i1 %i.zh, label %bb.jq, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #31, !noalias !447
  call void @llvm.lifetime.start.p0(ptr nonnull %222) #31, !noalias !447
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %222, align 8, !tbaa !40, !noalias !447
  %i.zi = getelementptr inbounds nuw i8, ptr %222, i64 8
  store ptr @_ZTIi, ptr %i.zi, align 8, !tbaa !45, !noalias !447
  %i.zj = getelementptr inbounds nuw i8, ptr %222, i64 16
  store ptr @_ZTIN5boost5arrayIDiLm300EEE, ptr %i.zj, align 8, !tbaa !46, !noalias !447
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %222) #32
          to label %bb.jo unwind label %bb.jp, !noalias !447

bb.jo:                                            ; preds = %bb.jn
  unreachable

bb.jp:                                            ; preds = %bb.jn
  %i.zk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %222) #31, !noalias !447
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #31, !noalias !447
  br label %.body163.i

bb.jq:                                            ; preds = %bb.jm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %286, ptr align 4 %i.zd, i64 %i.zg, i1 false)
  %i.zl = getelementptr inbounds nuw i8, ptr %286, i64 %i.zg
  store i32 0, ptr %i.zl, align 4, !tbaa !71, !alias.scope !447
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #31, !noalias !447
  %i.zm = load i64, ptr %i.yv, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i.i12 = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %286)
  %i.zn = icmp eq i64 %i.zm, %wcslen.i.i.i.i12
  br i1 %i.zn, label %bb.jr, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i

bb.jr:                                            ; preds = %bb.jq
  %i.zo = load ptr, ptr %285, align 8, !tbaa !72
  %.not.i.i.i165.i = icmp eq i64 %i.zm, 0
  br i1 %.not.i.i.i165.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i, label %.lr.ph.i.i.i166.i

.lr.ph.i.i.i166.i:                                ; preds = %bb.jr, %.lr.ph.i.i.i166.i
  %.01216.i.i.i167.i = phi i64 [ %i.zt, %.lr.ph.i.i.i166.i ], [ 0, %bb.jr ] ; 3 uses
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %.01216.i.i.i167.i
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %286, i64 %.01216.i.i.i167.i
  %i.zr = load i32, ptr %i.zp, align 4, !tbaa !71
  %i.zs = load i32, ptr %i.zq, align 4, !tbaa !71
  %or.cond.not.i.i168.i = icmp eq i32 %i.zs, %i.zr ; 2 uses
  %i.zt = add nuw nsw i64 %.01216.i.i.i167.i, 1   ; 2 uses
  %exitcond.not.i.i.i169.i = icmp ne i64 %i.zt, %i.zm
  %or.cond554.not = select i1 %or.cond.not.i.i168.i, i1 %exitcond.not.i.i.i169.i, i1 false
  br i1 %or.cond554.not, label %.lr.ph.i.i.i166.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i: ; preds = %.lr.ph.i.i.i166.i, %bb.jr, %bb.jq
  %i.zu = phi i1 [ false, %bb.jq ], [ true, %bb.jr ], [ %or.cond.not.i.i168.i, %.lr.ph.i.i.i166.i ]
  %i.zv = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 108, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_, i1 noundef zeroext %i.zu)
          to label %bb.js unwind label %bb.kj     ; 0 uses

bb.js:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %286) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %287) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %287, i8 0, i64 1200, i1 false), !alias.scope !448
  call void @llvm.lifetime.start.p0(ptr nonnull %221) #31, !noalias !448
  %i.zw = getelementptr inbounds nuw i8, ptr %221, i64 88 ; 2 uses
  store ptr %221, ptr %i.zw, align 8, !tbaa !100, !noalias !448
  %i.zx = getelementptr inbounds nuw i8, ptr %221, i64 96 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %221, i64 84 ; 4 uses
  store ptr %i.zy, ptr %i.zx, align 8, !tbaa !101, !noalias !448
  call void @llvm.lifetime.start.p0(ptr nonnull %220) #31, !noalias !448
  store i32 100, ptr %220, align 8, !tbaa !103, !noalias !448
  %i.zz = getelementptr inbounds nuw i8, ptr %220, i64 8
  store ptr %i.zy, ptr %i.zz, align 8, !tbaa !104, !noalias !448
  %i.aaa = getelementptr inbounds nuw i8, ptr %220, i64 16
  store i32 48, ptr %i.aaa, align 8, !tbaa !105, !noalias !448
  %i.aab = getelementptr inbounds nuw i8, ptr %220, i64 20
  store i32 48, ptr %i.aab, align 4, !tbaa !106, !noalias !448
  %i.aac = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEjDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %220)
          to label %bb.jt unwind label %bb.kk     ; 3 uses

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #31, !noalias !448
  store ptr %i.aac, ptr %i.zw, align 8, !tbaa !100, !noalias !448
  store ptr %i.zy, ptr %i.zx, align 8, !tbaa !101, !noalias !448
  %i.aad = ptrtoint ptr %i.zy to i64
  %i.aae = ptrtoint ptr %i.aac to i64
  %i.aaf = sub i64 %i.aad, %i.aae                 ; 3 uses
  %i.aag = icmp ult i64 %i.aaf, 1200
  br i1 %i.aag, label %bb.jx, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #31, !noalias !448
  call void @llvm.lifetime.start.p0(ptr nonnull %219) #31, !noalias !448
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %219, align 8, !tbaa !40, !noalias !448
  %i.aah = getelementptr inbounds nuw i8, ptr %219, i64 8
  store ptr @_ZTIi, ptr %i.aah, align 8, !tbaa !45, !noalias !448
  %i.aai = getelementptr inbounds nuw i8, ptr %219, i64 16
  store ptr @_ZTIN5boost5arrayIDiLm300EEE, ptr %i.aai, align 8, !tbaa !46, !noalias !448
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %219) #32
          to label %bb.jv unwind label %bb.jw, !noalias !448

bb.jv:                                            ; preds = %bb.ju
  unreachable

bb.jw:                                            ; preds = %bb.ju
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %219) #31, !noalias !448
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #31, !noalias !448
  br label %.body172.i

bb.jx:                                            ; preds = %bb.jt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %287, ptr align 4 %i.aac, i64 %i.aaf, i1 false)
  %i.aak = getelementptr inbounds nuw i8, ptr %287, i64 %i.aaf
  store i32 0, ptr %i.aak, align 4, !tbaa !71, !alias.scope !448
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #31, !noalias !448
  %i.aal = load i64, ptr %i.yv, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i175.i = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %287)
  %i.aam = icmp eq i64 %i.aal, %wcslen.i.i.i175.i
  br i1 %i.aam, label %bb.jy, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i

bb.jy:                                            ; preds = %bb.jx
  %i.aan = load ptr, ptr %285, align 8, !tbaa !72
  %.not.i.i.i176.i = icmp eq i64 %i.aal, 0
  br i1 %.not.i.i.i176.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i, label %.lr.ph.i.i.i177.i

.lr.ph.i.i.i177.i:                                ; preds = %bb.jy, %.lr.ph.i.i.i177.i
  %.01216.i.i.i178.i = phi i64 [ %i.aas, %.lr.ph.i.i.i177.i ], [ 0, %bb.jy ] ; 3 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %.01216.i.i.i178.i
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %287, i64 %.01216.i.i.i178.i
  %i.aaq = load i32, ptr %i.aao, align 4, !tbaa !71
  %i.aar = load i32, ptr %i.aap, align 4, !tbaa !71
  %or.cond.not.i.i179.i = icmp eq i32 %i.aar, %i.aaq ; 2 uses
  %i.aas = add nuw nsw i64 %.01216.i.i.i178.i, 1  ; 2 uses
  %exitcond.not.i.i.i180.i = icmp ne i64 %i.aas, %i.aal
  %or.cond555.not = select i1 %or.cond.not.i.i179.i, i1 %exitcond.not.i.i.i180.i, i1 false
  br i1 %or.cond555.not, label %.lr.ph.i.i.i177.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i: ; preds = %.lr.ph.i.i.i177.i, %bb.jy, %bb.jx
  %i.aat = phi i1 [ false, %bb.jx ], [ true, %bb.jy ], [ %or.cond.not.i.i179.i, %.lr.ph.i.i.i177.i ]
  %i.aau = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 113, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_, i1 noundef zeroext %i.aat)
          to label %bb.jz unwind label %bb.kk     ; 0 uses

bb.jz:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i
  call void @llvm.lifetime.end.p0(ptr nonnull %287) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %218) #31
  %i.aav = getelementptr inbounds nuw i8, ptr %218, i64 88
  store ptr %218, ptr %i.aav, align 8, !tbaa !100
  %i.aaw = getelementptr inbounds nuw i8, ptr %218, i64 96
  %i.aax = getelementptr inbounds nuw i8, ptr %218, i64 84 ; 3 uses
  store ptr %i.aax, ptr %i.aaw, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %217) #31
  store i32 100, ptr %217, align 8, !tbaa !103
  %i.aay = getelementptr inbounds nuw i8, ptr %217, i64 8
  store ptr %i.aax, ptr %i.aay, align 8, !tbaa !104
  %i.aaz = getelementptr inbounds nuw i8, ptr %217, i64 16
  store i32 48, ptr %i.aaz, align 8, !tbaa !105
  %i.aba = getelementptr inbounds nuw i8, ptr %217, i64 20
  store i32 48, ptr %i.aba, align 4, !tbaa !106
  %i.abb = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEjDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %217)
          to label %bb.ka unwind label %bb.kl

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %217) #31
  %i.abc = ptrtoint ptr %i.aax to i64
  %i.abd = ptrtoint ptr %i.abb to i64
  %i.abe = sub i64 %i.abc, %i.abd
  %i.abf = icmp ult i64 %i.abe, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #31
  br i1 %i.abf, label %bb.ke, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  call void @llvm.lifetime.start.p0(ptr nonnull %216) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %216, align 8, !tbaa !40
  %i.abg = getelementptr inbounds nuw i8, ptr %216, i64 8
  store ptr @_ZTIi, ptr %i.abg, align 8, !tbaa !45
  %i.abh = getelementptr inbounds nuw i8, ptr %216, i64 16
  store ptr @_ZTIN5boost5arrayIDiLm3EEE, ptr %i.abh, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %216) #32
          to label %bb.kc unwind label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  unreachable

bb.kd:                                            ; preds = %bb.kb
  %i.abi = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %216) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %216) #31
  br label %.body189.i

bb.ke:                                            ; preds = %bb.ka
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_)
          to label %bb.kn unwind label %bb.kl

bb.kf:                                            ; preds = %.body153.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_)
          to label %.invoke271.i unwind label %bb.kg

.invoke271.i:                                     ; preds = %bb.kf, %bb.jl
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i156.i unwind label %bb.ki

bb.kg:                                            ; preds = %bb.kf
  %i.abj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.kt unwind label %bb.kw

bb.kh:                                            ; preds = %bb.jl
  %i.abk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.kt unwind label %bb.kw

bb.ki:                                            ; preds = %.invoke271.i
  %i.abl = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.kj:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i, %._crit_edge.i.i156.i
  %i.abm = landingpad { ptr, i32 }
          cleanup
  br label %.body163.i

.body163.i:                                       ; preds = %bb.kj, %bb.jp
  %eh.lpad-body164.i = phi { ptr, i32 } [ %i.abm, %bb.kj ], [ %i.zk, %bb.jp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %286) #31
  br label %bb.ks

bb.kk:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i, %bb.js
  %i.abn = landingpad { ptr, i32 }
          cleanup
  br label %.body172.i

.body172.i:                                       ; preds = %bb.kk, %bb.jw
  %eh.lpad-body173.i = phi { ptr, i32 } [ %i.abn, %bb.kk ], [ %i.aaj, %bb.jw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %287) #31
  br label %bb.ks

bb.kl:                                            ; preds = %bb.ke, %bb.jz
  %i.abo = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body189.i

.body189.i:                                       ; preds = %bb.kl, %bb.kd
  %eh.lpad-body190.i = phi { ptr, i32 } [ %i.abo, %bb.kl ], [ %i.abi, %bb.kd ] ; 2 uses
  %i.abp = extractvalue { ptr, i32 } %eh.lpad-body190.i, 0
  %i.abq = extractvalue { ptr, i32 } %eh.lpad-body190.i, 1
  %i.abr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.abs = icmp eq i32 %i.abq, %i.abr
  %i.abt = call ptr @__cxa_begin_catch(ptr %i.abp) #31 ; 0 uses
  br i1 %i.abs, label %bb.km, label %bb.ko

bb.km:                                            ; preds = %.body189.i
  %i.abu = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke272.i unwind label %bb.kq ; 0 uses

bb.kn:                                            ; preds = %.invoke272.i, %bb.ke
  %i.abv = load ptr, ptr %285, align 8, !tbaa !72 ; 2 uses
  %i.abw = icmp eq ptr %i.abv, %i.yu
  br i1 %i.abw, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i14, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.kn
  %i.abx = load i64, ptr %i.yu, align 8, !tbaa !38
  %i.aby = shl i64 %i.abx, 2
  %i.abz = add i64 %i.aby, 4
  call void @_ZdlPvm(ptr noundef %i.abv, i64 noundef %i.abz) #34
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i14

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i14: ; preds = %bb.kn, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %285) #31
  %i.aca = load ptr, ptr %282, align 8, !tbaa !64 ; 2 uses
  %i.acb = icmp eq ptr %i.aca, %i.vl
  br i1 %i.acb, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i16, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i14
  %i.acc = load i64, ptr %i.vl, align 8, !tbaa !38
  %i.acd = shl i64 %i.acc, 1
  %i.ace = add i64 %i.acd, 2
  call void @_ZdlPvm(ptr noundef %i.aca, i64 noundef %i.ace) #34
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i16

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i14, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %282) #31
  %i.acf = load ptr, ptr %279, align 8, !tbaa !52 ; 2 uses
  %i.acg = icmp eq ptr %i.acf, %i.sl
  br i1 %i.acg, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i18, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i16
  %i.ach = load i64, ptr %i.sl, align 8, !tbaa !38
  %i.aci = shl i64 %i.ach, 2
  %i.acj = add i64 %i.aci, 4
  call void @_ZdlPvm(ptr noundef %i.acf, i64 noundef %i.acj) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i18

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i18: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i16, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %279) #31
  %i.ack = load ptr, ptr %272, align 8, !tbaa !73 ; 2 uses
  %i.acl = icmp eq ptr %i.ack, %i.lw
  br i1 %i.acl, label %_ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i18
  %i.acm = load i64, ptr %i.lw, align 8, !tbaa !38
  %i.acn = add i64 %i.acm, 1
  call void @_ZdlPvm(ptr noundef %i.ack, i64 noundef %i.acn) #34
  br label %_ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_.exit

bb.ko:                                            ; preds = %.body189.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEiEvT0_)
          to label %.invoke272.i unwind label %bb.kp

.invoke272.i:                                     ; preds = %bb.ko, %bb.km
  invoke void @__cxa_end_catch()
          to label %bb.kn unwind label %bb.kr

end_hunk_2
begin_hunk_3_@_Z37testing_boost_array_output_conversionv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %177)
  store i32 %i.aiy, ptr %206, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #31
  store ptr %206, ptr %i.r, align 8, !tbaa !47
  %i.aiz = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbT_S4_S4_S4_iS4_RKT0_RKT1_(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 60, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %200)
          to label %bb.nc unwind label %bb.no     ; 0 uses

bb.nc:                                            ; preds = %bb.nb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #31
  %i.aja = getelementptr inbounds nuw i8, ptr %173, i64 16
  store ptr %173, ptr %i.aja, align 8, !tbaa !108
  %i.ajb = getelementptr inbounds nuw i8, ptr %173, i64 24
  %i.ajc = getelementptr inbounds nuw i8, ptr %173, i64 11 ; 3 uses
  store ptr %i.ajc, ptr %i.ajb, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #31
  store i32 100, ptr %172, align 8, !tbaa !111
  %i.ajd = getelementptr inbounds nuw i8, ptr %172, i64 8
  store ptr %i.ajc, ptr %i.ajd, align 8, !tbaa !112
  %i.aje = getelementptr inbounds nuw i8, ptr %172, i64 16
  store i8 48, ptr %i.aje, align 8, !tbaa !113
  %i.ajf = getelementptr inbounds nuw i8, ptr %172, i64 20
  store i32 48, ptr %i.ajf, align 4, !tbaa !114
  %i.ajg = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEtcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %172)
          to label %bb.nd unwind label %bb.np

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #31
  %i.ajh = ptrtoint ptr %i.ajc to i64
  %i.aji = ptrtoint ptr %i.ajg to i64
  %i.ajj = sub i64 %i.ajh, %i.aji
  %i.ajk = icmp ult i64 %i.ajj, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #31
  br i1 %i.ajk, label %bb.nh, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %171, align 8, !tbaa !40
  %i.ajl = getelementptr inbounds nuw i8, ptr %171, i64 8
  store ptr @_ZTIs, ptr %i.ajl, align 8, !tbaa !45
  %i.ajm = getelementptr inbounds nuw i8, ptr %171, i64 16
  store ptr @_ZTIN5boost5arrayIaLm3EEE, ptr %i.ajm, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %171) #32
          to label %bb.nf unwind label %bb.ng

bb.nf:                                            ; preds = %bb.ne
  unreachable

bb.ng:                                            ; preds = %bb.ne
  %i.ajn = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %171) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #31
  br label %.body110.i48

bb.nh:                                            ; preds = %bb.nd
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_)
          to label %._crit_edge.i.i112.i51 unwind label %bb.np

bb.ni:                                            ; preds = %.body97.i41
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 53, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_)
          to label %.invoke268.i43 unwind label %bb.nj

.invoke268.i43:                                   ; preds = %bb.ni, %bb.mp
  invoke void @__cxa_end_catch()
          to label %bb.mq unwind label %bb.nl

bb.nj:                                            ; preds = %bb.ni
  %i.ajo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body91.i39 unwind label %bb.rh

bb.nk:                                            ; preds = %bb.mp
  %i.ajp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body91.i39 unwind label %bb.rh

bb.nl:                                            ; preds = %.invoke268.i43, %bb.lx
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i39

.body91.i39:                                      ; preds = %bb.nl, %bb.nk, %bb.nj, %bb.mn, %bb.mb
  %.pn53.pn.i40 = phi { ptr, i32 } [ %i.ahk, %bb.mn ], [ %i.ajp, %bb.nk ], [ %i.ajo, %bb.nj ], [ %i.ajq, %bb.nl ], [ %i.ags, %bb.mb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %204) #31
  br label %.body87.i37

.body87.i37:                                      ; preds = %.body91.i39, %bb.mm, %bb.ml, %bb.lv
  %.pn53.pn.pn.i38 = phi { ptr, i32 } [ %.pn53.pn.i40, %.body91.i39 ], [ %i.ahj, %bb.mm ], [ %i.ahi, %bb.ml ], [ %i.agc, %bb.lv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #31
  br label %bb.rg

bb.nm:                                            ; preds = %bb.mq
  %i.ajr = landingpad { ptr, i32 }
          cleanup
  br label %.body101.i44

bb.nn:                                            ; preds = %bb.mv
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #31
  br label %.body101.i44

bb.no:                                            ; preds = %bb.nb
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #31
  br label %.body105.i46

bb.np:                                            ; preds = %bb.nh, %bb.nc
  %i.aju = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body110.i48

.body110.i48:                                     ; preds = %bb.np, %bb.ng
  %eh.lpad-body111.i49 = phi { ptr, i32 } [ %i.aju, %bb.np ], [ %i.ajn, %bb.ng ] ; 2 uses
  %i.ajv = extractvalue { ptr, i32 } %eh.lpad-body111.i49, 0
  %i.ajw = extractvalue { ptr, i32 } %eh.lpad-body111.i49, 1
  %i.ajx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.ajy = icmp eq i32 %i.ajw, %i.ajx
  %i.ajz = call ptr @__cxa_begin_catch(ptr %i.ajv) #31 ; 0 uses
  br i1 %i.ajy, label %bb.nq, label %bb.om

bb.nq:                                            ; preds = %.body110.i48
  %i.aka = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke269.i50 unwind label %bb.oo ; 0 uses

._crit_edge.i.i112.i51:                           ; preds = %.invoke269.i50, %bb.nh
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %205) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %207) #31
  %i.akb = getelementptr inbounds nuw i8, ptr %207, i64 16 ; 6 uses
  store ptr %i.akb, ptr %207, align 8, !tbaa !50
  %i.akc = call ptr @wmemcpy(ptr noundef nonnull %i.akb, ptr noundef nonnull @.str.29, i64 noundef 3) #31 ; 0 uses
  %.pre7.i.i.i52 = load ptr, ptr %207, align 8, !tbaa !52
  %i.akd = getelementptr inbounds nuw i8, ptr %207, i64 8 ; 3 uses
  store i64 3, ptr %i.akd, align 8, !tbaa !53
  %i.ake = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i52, i64 12
  store i32 0, ptr %i.ake, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %208) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %208, i8 0, i64 1200, i1 false), !alias.scope !453
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #31, !noalias !453
  %i.akf = getelementptr inbounds nuw i8, ptr %170, i64 48 ; 2 uses
  store ptr %170, ptr %i.akf, align 8, !tbaa !116, !noalias !453
  %i.akg = getelementptr inbounds nuw i8, ptr %170, i64 56 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %170, i64 44 ; 4 uses
  store ptr %i.akh, ptr %i.akg, align 8, !tbaa !117, !noalias !453
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #31, !noalias !453
  store i32 100, ptr %169, align 8, !tbaa !119, !noalias !453
  %i.aki = getelementptr inbounds nuw i8, ptr %169, i64 8
  store ptr %i.akh, ptr %i.aki, align 8, !tbaa !120, !noalias !453
  %i.akj = getelementptr inbounds nuw i8, ptr %169, i64 16
  store i32 48, ptr %i.akj, align 8, !tbaa !121, !noalias !453
  %i.akk = getelementptr inbounds nuw i8, ptr %169, i64 20
  store i32 48, ptr %i.akk, align 4, !tbaa !122, !noalias !453
  %i.akl = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %169)
          to label %bb.nr unwind label %bb.oq     ; 3 uses

bb.nr:                                            ; preds = %._crit_edge.i.i112.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #31, !noalias !453
  store ptr %i.akl, ptr %i.akf, align 8, !tbaa !116, !noalias !453
  store ptr %i.akh, ptr %i.akg, align 8, !tbaa !117, !noalias !453
  %i.akm = ptrtoint ptr %i.akh to i64
  %i.akn = ptrtoint ptr %i.akl to i64
  %i.ako = sub i64 %i.akm, %i.akn                 ; 3 uses
  %i.akp = icmp ult i64 %i.ako, 1200
  br i1 %i.akp, label %bb.nv, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #31, !noalias !453
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #31, !noalias !453
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %168, align 8, !tbaa !40, !noalias !453
  %i.akq = getelementptr inbounds nuw i8, ptr %168, i64 8
  store ptr @_ZTIs, ptr %i.akq, align 8, !tbaa !45, !noalias !453
  %i.akr = getelementptr inbounds nuw i8, ptr %168, i64 16
  store ptr @_ZTIN5boost5arrayIwLm300EEE, ptr %i.akr, align 8, !tbaa !46, !noalias !453
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %168) #32
          to label %bb.nt unwind label %bb.nu, !noalias !453

bb.nt:                                            ; preds = %bb.ns
  unreachable

bb.nu:                                            ; preds = %bb.ns
  %i.aks = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %168) #31, !noalias !453
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #31, !noalias !453
  br label %.body117.i53

bb.nv:                                            ; preds = %bb.nr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %208, ptr align 4 %i.akl, i64 %i.ako, i1 false)
  %i.akt = getelementptr inbounds nuw i8, ptr %208, i64 %i.ako
  store i32 0, ptr %i.akt, align 4, !tbaa !55, !alias.scope !453
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #31, !noalias !453
  %i.aku = load i64, ptr %i.akd, align 8, !tbaa !53 ; 3 uses
  %i.akv = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %208) #33
  %i.akw = icmp eq i64 %i.aku, %i.akv
  br i1 %i.akw, label %bb.nw, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i59

bb.nw:                                            ; preds = %bb.nv
  %i.akx = icmp eq i64 %i.aku, 0
  br i1 %i.akx, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i59, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.aky = load ptr, ptr %207, align 8, !tbaa !52
  %i.akz = call i32 @wmemcmp(ptr noundef %i.aky, ptr noundef nonnull %208, i64 noundef %i.aku) #33
  %i.ala = icmp eq i32 %i.akz, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i59

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i59: ; preds = %bb.nx, %bb.nw, %bb.nv
  %i.alb = phi i1 [ false, %bb.nv ], [ %i.ala, %bb.nx ], [ true, %bb.nw ]
  %i.alc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 71, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_, i1 noundef zeroext %i.alb)
          to label %bb.ny unwind label %bb.oq     ; 0 uses

bb.ny:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %208) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %209) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %209, i8 0, i64 1200, i1 false), !alias.scope !454
  call void @llvm.lifetime.start.p0(ptr nonnull %167) #31, !noalias !454
  %i.ald = getelementptr inbounds nuw i8, ptr %167, i64 48 ; 2 uses
  store ptr %167, ptr %i.ald, align 8, !tbaa !116, !noalias !454
  %i.ale = getelementptr inbounds nuw i8, ptr %167, i64 56 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %167, i64 44 ; 4 uses
  store ptr %i.alf, ptr %i.ale, align 8, !tbaa !117, !noalias !454
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #31, !noalias !454
  store i32 100, ptr %166, align 8, !tbaa !119, !noalias !454
  %i.alg = getelementptr inbounds nuw i8, ptr %166, i64 8
  store ptr %i.alf, ptr %i.alg, align 8, !tbaa !120, !noalias !454
  %i.alh = getelementptr inbounds nuw i8, ptr %166, i64 16
  store i32 48, ptr %i.alh, align 8, !tbaa !121, !noalias !454
  %i.ali = getelementptr inbounds nuw i8, ptr %166, i64 20
  store i32 48, ptr %i.ali, align 4, !tbaa !122, !noalias !454
  %i.alj = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %166)
          to label %bb.nz unwind label %bb.or     ; 3 uses

bb.nz:                                            ; preds = %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #31, !noalias !454
  store ptr %i.alj, ptr %i.ald, align 8, !tbaa !116, !noalias !454
  store ptr %i.alf, ptr %i.ale, align 8, !tbaa !117, !noalias !454
  %i.alk = ptrtoint ptr %i.alf to i64
  %i.all = ptrtoint ptr %i.alj to i64
  %i.alm = sub i64 %i.alk, %i.all                 ; 3 uses
  %i.aln = icmp ult i64 %i.alm, 1200
  br i1 %i.aln, label %bb.od, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #31, !noalias !454
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #31, !noalias !454
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %165, align 8, !tbaa !40, !noalias !454
  %i.alo = getelementptr inbounds nuw i8, ptr %165, i64 8
  store ptr @_ZTIs, ptr %i.alo, align 8, !tbaa !45, !noalias !454
  %i.alp = getelementptr inbounds nuw i8, ptr %165, i64 16
  store ptr @_ZTIN5boost5arrayIwLm300EEE, ptr %i.alp, align 8, !tbaa !46, !noalias !454
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %165) #32
          to label %bb.ob unwind label %bb.oc, !noalias !454

bb.ob:                                            ; preds = %bb.oa
  unreachable

bb.oc:                                            ; preds = %bb.oa
  %i.alq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %165) #31, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #31, !noalias !454
  br label %.body121.i60

bb.od:                                            ; preds = %bb.nz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %209, ptr align 4 %i.alj, i64 %i.alm, i1 false)
  %i.alr = getelementptr inbounds nuw i8, ptr %209, i64 %i.alm
  store i32 0, ptr %i.alr, align 4, !tbaa !55, !alias.scope !454
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #31, !noalias !454
  %i.als = load i64, ptr %i.akd, align 8, !tbaa !53 ; 3 uses
  %i.alt = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %209) #33
  %i.alu = icmp eq i64 %i.als, %i.alt
  br i1 %i.alu, label %bb.oe, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i62

bb.oe:                                            ; preds = %bb.od
  %i.alv = icmp eq i64 %i.als, 0
  br i1 %i.alv, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i62, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.alw = load ptr, ptr %207, align 8, !tbaa !52
  %i.alx = call i32 @wmemcmp(ptr noundef %i.alw, ptr noundef nonnull %209, i64 noundef %i.als) #33
  %i.aly = icmp eq i32 %i.alx, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i62

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i62: ; preds = %bb.of, %bb.oe, %bb.od
  %i.alz = phi i1 [ false, %bb.od ], [ %i.aly, %bb.of ], [ true, %bb.oe ]
  %i.ama = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 76, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_, i1 noundef zeroext %i.alz)
          to label %bb.og unwind label %bb.or     ; 0 uses

bb.og:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #31
  %i.amb = getelementptr inbounds nuw i8, ptr %164, i64 48
  store ptr %164, ptr %i.amb, align 8, !tbaa !116
  %i.amc = getelementptr inbounds nuw i8, ptr %164, i64 56
  %i.amd = getelementptr inbounds nuw i8, ptr %164, i64 44 ; 3 uses
  store ptr %i.amd, ptr %i.amc, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #31
  store i32 100, ptr %163, align 8, !tbaa !119
  %i.ame = getelementptr inbounds nuw i8, ptr %163, i64 8
  store ptr %i.amd, ptr %i.ame, align 8, !tbaa !120
  %i.amf = getelementptr inbounds nuw i8, ptr %163, i64 16
  store i32 48, ptr %i.amf, align 8, !tbaa !121
  %i.amg = getelementptr inbounds nuw i8, ptr %163, i64 20
  store i32 48, ptr %i.amg, align 4, !tbaa !122
  %i.amh = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %163)
          to label %bb.oh unwind label %bb.os

bb.oh:                                            ; preds = %bb.og
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #31
  %i.ami = ptrtoint ptr %i.amd to i64
  %i.amj = ptrtoint ptr %i.amh to i64
  %i.amk = sub i64 %i.ami, %i.amj
  %i.aml = icmp ult i64 %i.amk, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #31
  br i1 %i.aml, label %bb.ol, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %162, align 8, !tbaa !40
  %i.amm = getelementptr inbounds nuw i8, ptr %162, i64 8
  store ptr @_ZTIs, ptr %i.amm, align 8, !tbaa !45
  %i.amn = getelementptr inbounds nuw i8, ptr %162, i64 16
  store ptr @_ZTIN5boost5arrayIwLm3EEE, ptr %i.amn, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %162) #32
          to label %bb.oj unwind label %bb.ok

bb.oj:                                            ; preds = %bb.oi
  unreachable

bb.ok:                                            ; preds = %bb.oi
  %i.amo = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %162) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #31
  br label %.body127.i63

bb.ol:                                            ; preds = %bb.oh
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_)
          to label %._crit_edge.i.i129.i66 unwind label %bb.os

bb.om:                                            ; preds = %.body110.i48
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_)
          to label %.invoke269.i50 unwind label %bb.on

.invoke269.i50:                                   ; preds = %bb.om, %bb.nq
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i112.i51 unwind label %bb.op

bb.on:                                            ; preds = %bb.om
  %i.amp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body105.i46 unwind label %bb.rh

bb.oo:                                            ; preds = %bb.nq
  %i.amq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body105.i46 unwind label %bb.rh

bb.op:                                            ; preds = %.invoke269.i50, %bb.mw
  %i.amr = landingpad { ptr, i32 }
          cleanup
  br label %.body105.i46

.body105.i46:                                     ; preds = %bb.op, %bb.oo, %bb.on, %bb.no, %bb.na
  %.pn57.pn.i47 = phi { ptr, i32 } [ %i.ajt, %bb.no ], [ %i.amq, %bb.oo ], [ %i.amp, %bb.on ], [ %i.amr, %bb.op ], [ %i.aiw, %bb.na ]
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #31
  br label %.body101.i44

.body101.i44:                                     ; preds = %.body105.i46, %bb.nn, %bb.nm, %bb.mu
  %.pn57.pn.pn.i45 = phi { ptr, i32 } [ %.pn57.pn.i47, %.body105.i46 ], [ %i.ajs, %bb.nn ], [ %i.ajr, %bb.nm ], [ %i.aif, %bb.mu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %205) #31
  br label %bb.rg

bb.oq:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i59, %._crit_edge.i.i112.i51
  %i.ams = landingpad { ptr, i32 }
          cleanup
  br label %.body117.i53

.body117.i53:                                     ; preds = %bb.oq, %bb.nu
  %eh.lpad-body118.i54 = phi { ptr, i32 } [ %i.ams, %bb.oq ], [ %i.aks, %bb.nu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %208) #31
  br label %bb.rf

bb.or:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i62, %bb.ny
  %i.amt = landingpad { ptr, i32 }
          cleanup
  br label %.body121.i60

.body121.i60:                                     ; preds = %bb.or, %bb.oc
  %eh.lpad-body122.i61 = phi { ptr, i32 } [ %i.amt, %bb.or ], [ %i.alq, %bb.oc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #31
  br label %bb.rf

bb.os:                                            ; preds = %bb.ol, %bb.og
  %i.amu = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body127.i63

.body127.i63:                                     ; preds = %bb.os, %bb.ok
  %eh.lpad-body128.i64 = phi { ptr, i32 } [ %i.amu, %bb.os ], [ %i.amo, %bb.ok ] ; 2 uses
  %i.amv = extractvalue { ptr, i32 } %eh.lpad-body128.i64, 0
  %i.amw = extractvalue { ptr, i32 } %eh.lpad-body128.i64, 1
  %i.amx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.amy = icmp eq i32 %i.amw, %i.amx
  %i.amz = call ptr @__cxa_begin_catch(ptr %i.amv) #31 ; 0 uses
  br i1 %i.amy, label %bb.ot, label %bb.pp

bb.ot:                                            ; preds = %.body127.i63
  %i.ana = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke270.i65 unwind label %bb.pr ; 0 uses

._crit_edge.i.i129.i66:                           ; preds = %.invoke270.i65, %bb.ol
  call void @llvm.lifetime.start.p0(ptr nonnull %210) #31
  %i.anb = getelementptr inbounds nuw i8, ptr %210, i64 16 ; 6 uses
  store ptr %i.anb, ptr %210, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.anb, ptr noundef nonnull align 2 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.anc = getelementptr inbounds nuw i8, ptr %210, i64 8 ; 3 uses
  store i64 3, ptr %i.anc, align 8, !tbaa !60
  %i.and = getelementptr inbounds nuw i8, ptr %210, i64 22
  store i16 0, ptr %i.and, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %211) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(600) %211, i8 0, i64 600, i1 false), !alias.scope !455
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #31, !noalias !455
  %i.ane = getelementptr inbounds nuw i8, ptr %161, i64 24 ; 2 uses
  store ptr %161, ptr %i.ane, align 8, !tbaa !124, !noalias !455
  %i.anf = getelementptr inbounds nuw i8, ptr %161, i64 32 ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %161, i64 22 ; 4 uses
  store ptr %i.ang, ptr %i.anf, align 8, !tbaa !125, !noalias !455
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #31, !noalias !455
  store i32 100, ptr %160, align 8, !tbaa !127, !noalias !455
  %i.anh = getelementptr inbounds nuw i8, ptr %160, i64 8
  store ptr %i.ang, ptr %i.anh, align 8, !tbaa !128, !noalias !455
  %i.ani = getelementptr inbounds nuw i8, ptr %160, i64 16
  store i16 48, ptr %i.ani, align 8, !tbaa !129, !noalias !455
  %i.anj = getelementptr inbounds nuw i8, ptr %160, i64 18
  store i16 48, ptr %i.anj, align 2, !tbaa !130, !noalias !455
  %i.ank = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEtDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %160)
          to label %bb.ou unwind label %bb.pt     ; 3 uses

bb.ou:                                            ; preds = %._crit_edge.i.i129.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #31, !noalias !455
  store ptr %i.ank, ptr %i.ane, align 8, !tbaa !124, !noalias !455
  store ptr %i.ang, ptr %i.anf, align 8, !tbaa !125, !noalias !455
  %i.anl = ptrtoint ptr %i.ang to i64
  %i.anm = ptrtoint ptr %i.ank to i64
  %i.ann = sub i64 %i.anl, %i.anm                 ; 3 uses
  %i.ano = icmp ult i64 %i.ann, 600
  br i1 %i.ano, label %bb.oy, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #31, !noalias !455
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #31, !noalias !455
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %159, align 8, !tbaa !40, !noalias !455
  %i.anp = getelementptr inbounds nuw i8, ptr %159, i64 8
  store ptr @_ZTIs, ptr %i.anp, align 8, !tbaa !45, !noalias !455
  %i.anq = getelementptr inbounds nuw i8, ptr %159, i64 16
  store ptr @_ZTIN5boost5arrayIDsLm300EEE, ptr %i.anq, align 8, !tbaa !46, !noalias !455
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %159) #32
          to label %bb.ow unwind label %bb.ox, !noalias !455

bb.ow:                                            ; preds = %bb.ov
  unreachable

bb.ox:                                            ; preds = %bb.ov
  %i.anr = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_Z37testing_boost_array_output_conversionv:bb.a
.lr.ph.i.i.i145.i122:                             ; preds = %bb.pi, %.lr.ph.i.i.i145.i122
  %.01216.i.i.i146.i123 = phi i64 [ %i.aph, %.lr.ph.i.i.i145.i122 ], [ 0, %bb.pi ] ; 3 uses
  %i.apd = getelementptr inbounds nuw [2 x i8], ptr %i.apc, i64 %.01216.i.i.i146.i123
  %i.ape = getelementptr inbounds nuw [2 x i8], ptr %212, i64 %.01216.i.i.i146.i123
  %i.apf = load i16, ptr %i.apd, align 2, !tbaa !62
  %i.apg = load i16, ptr %i.ape, align 2, !tbaa !62
  %or.cond.not.i.i147.i124 = icmp eq i16 %i.apg, %i.apf ; 2 uses
  %i.aph = add nuw nsw i64 %.01216.i.i.i146.i123, 1 ; 2 uses
  %exitcond.not.i.i.i148.i125 = icmp ne i64 %i.aph, %i.aow
  %or.cond557.not = select i1 %or.cond.not.i.i147.i124, i1 %exitcond.not.i.i.i148.i125, i1 false
  br i1 %or.cond557.not, label %.lr.ph.i.i.i145.i122, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i80, !llvm.loop !1

_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i80: ; preds = %.lr.ph.i.i.i145.i122, %bb.pi, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i143.i79
  %i.api = phi i1 [ false, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i143.i79 ], [ true, %bb.pi ], [ %or.cond.not.i.i147.i124, %.lr.ph.i.i.i145.i122 ]
  %i.apj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 95, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_, i1 noundef zeroext %i.api)
          to label %bb.pj unwind label %bb.pu     ; 0 uses

bb.pj:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %212) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #31
  %i.apk = getelementptr inbounds nuw i8, ptr %155, i64 24
  store ptr %155, ptr %i.apk, align 8, !tbaa !124
  %i.apl = getelementptr inbounds nuw i8, ptr %155, i64 32
  %i.apm = getelementptr inbounds nuw i8, ptr %155, i64 22 ; 3 uses
  store ptr %i.apm, ptr %i.apl, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #31
  store i32 100, ptr %154, align 8, !tbaa !127
  %i.apn = getelementptr inbounds nuw i8, ptr %154, i64 8
  store ptr %i.apm, ptr %i.apn, align 8, !tbaa !128
  %i.apo = getelementptr inbounds nuw i8, ptr %154, i64 16
  store i16 48, ptr %i.apo, align 8, !tbaa !129
  %i.app = getelementptr inbounds nuw i8, ptr %154, i64 18
  store i16 48, ptr %i.app, align 2, !tbaa !130
  %i.apq = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEtDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %154)
          to label %bb.pk unwind label %bb.pv

bb.pk:                                            ; preds = %bb.pj
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #31
  %i.apr = ptrtoint ptr %i.apm to i64
  %i.aps = ptrtoint ptr %i.apq to i64
  %i.apt = sub i64 %i.apr, %i.aps
  %i.apu = icmp ult i64 %i.apt, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #31
  br i1 %i.apu, label %bb.po, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %153, align 8, !tbaa !40
  %i.apv = getelementptr inbounds nuw i8, ptr %153, i64 8
  store ptr @_ZTIs, ptr %i.apv, align 8, !tbaa !45
  %i.apw = getelementptr inbounds nuw i8, ptr %153, i64 16
  store ptr @_ZTIN5boost5arrayIDsLm3EEE, ptr %i.apw, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %153) #32
          to label %bb.pm unwind label %bb.pn

bb.pm:                                            ; preds = %bb.pl
  unreachable

bb.pn:                                            ; preds = %bb.pl
  %i.apx = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %153) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #31
  br label %.body153.i81

bb.po:                                            ; preds = %bb.pk
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_)
          to label %._crit_edge.i.i156.i84 unwind label %bb.pv

bb.pp:                                            ; preds = %.body127.i63
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_)
          to label %.invoke270.i65 unwind label %bb.pq

.invoke270.i65:                                   ; preds = %bb.pp, %bb.ot
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i129.i66 unwind label %bb.ps

bb.pq:                                            ; preds = %bb.pp
  %i.apy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.rf unwind label %bb.rh

bb.pr:                                            ; preds = %bb.ot
  %i.apz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.rf unwind label %bb.rh

bb.ps:                                            ; preds = %.invoke270.i65
  %i.aqa = landingpad { ptr, i32 }
          cleanup
  br label %bb.rf

bb.pt:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i75, %._crit_edge.i.i129.i66
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i67

.body135.i67:                                     ; preds = %bb.pt, %bb.ox
  %eh.lpad-body136.i68 = phi { ptr, i32 } [ %i.aqb, %bb.pt ], [ %i.anr, %bb.ox ]
  call void @llvm.lifetime.end.p0(ptr nonnull %211) #31
  br label %bb.re

bb.pu:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i80, %bb.pb
  %i.aqc = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i76

.body139.i76:                                     ; preds = %bb.pu, %bb.pf
  %eh.lpad-body140.i77 = phi { ptr, i32 } [ %i.aqc, %bb.pu ], [ %i.aou, %bb.pf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %212) #31
  br label %bb.re

bb.pv:                                            ; preds = %bb.po, %bb.pj
  %i.aqd = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body153.i81

.body153.i81:                                     ; preds = %bb.pv, %bb.pn
  %eh.lpad-body154.i82 = phi { ptr, i32 } [ %i.aqd, %bb.pv ], [ %i.apx, %bb.pn ] ; 2 uses
  %i.aqe = extractvalue { ptr, i32 } %eh.lpad-body154.i82, 0
  %i.aqf = extractvalue { ptr, i32 } %eh.lpad-body154.i82, 1
  %i.aqg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.aqh = icmp eq i32 %i.aqf, %i.aqg
  %i.aqi = call ptr @__cxa_begin_catch(ptr %i.aqe) #31 ; 0 uses
  br i1 %i.aqh, label %bb.pw, label %bb.qq

bb.pw:                                            ; preds = %.body153.i81
  %i.aqj = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke271.i83 unwind label %bb.qs ; 0 uses

._crit_edge.i.i156.i84:                           ; preds = %.invoke271.i83, %bb.po
  call void @llvm.lifetime.start.p0(ptr nonnull %213) #31
  %i.aqk = getelementptr inbounds nuw i8, ptr %213, i64 16 ; 6 uses
  store ptr %i.aqk, ptr %213, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aqk, ptr noundef nonnull align 4 dereferenceable(12) @.str.29, i64 12, i1 false)
  %i.aql = getelementptr inbounds nuw i8, ptr %213, i64 8 ; 3 uses
  store i64 3, ptr %i.aql, align 8, !tbaa !69
  %i.aqm = getelementptr inbounds nuw i8, ptr %213, i64 28
  store i32 0, ptr %i.aqm, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %214) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %214, i8 0, i64 1200, i1 false), !alias.scope !457
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #31, !noalias !457
  %i.aqn = getelementptr inbounds nuw i8, ptr %152, i64 48 ; 2 uses
  store ptr %152, ptr %i.aqn, align 8, !tbaa !132, !noalias !457
  %i.aqo = getelementptr inbounds nuw i8, ptr %152, i64 56 ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %152, i64 44 ; 4 uses
  store ptr %i.aqp, ptr %i.aqo, align 8, !tbaa !133, !noalias !457
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #31, !noalias !457
  store i32 100, ptr %151, align 8, !tbaa !135, !noalias !457
  %i.aqq = getelementptr inbounds nuw i8, ptr %151, i64 8
  store ptr %i.aqp, ptr %i.aqq, align 8, !tbaa !136, !noalias !457
  %i.aqr = getelementptr inbounds nuw i8, ptr %151, i64 16
  store i32 48, ptr %i.aqr, align 8, !tbaa !137, !noalias !457
  %i.aqs = getelementptr inbounds nuw i8, ptr %151, i64 20
  store i32 48, ptr %i.aqs, align 4, !tbaa !138, !noalias !457
  %i.aqt = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEtDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %151)
          to label %bb.px unwind label %bb.qu     ; 3 uses

bb.px:                                            ; preds = %._crit_edge.i.i156.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #31, !noalias !457
  store ptr %i.aqt, ptr %i.aqn, align 8, !tbaa !132, !noalias !457
  store ptr %i.aqp, ptr %i.aqo, align 8, !tbaa !133, !noalias !457
  %i.aqu = ptrtoint ptr %i.aqp to i64
  %i.aqv = ptrtoint ptr %i.aqt to i64
  %i.aqw = sub i64 %i.aqu, %i.aqv                 ; 3 uses
  %i.aqx = icmp ult i64 %i.aqw, 1200
  br i1 %i.aqx, label %bb.qb, label %bb.py

bb.py:                                            ; preds = %bb.px
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #31, !noalias !457
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #31, !noalias !457
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %150, align 8, !tbaa !40, !noalias !457
  %i.aqy = getelementptr inbounds nuw i8, ptr %150, i64 8
  store ptr @_ZTIs, ptr %i.aqy, align 8, !tbaa !45, !noalias !457
  %i.aqz = getelementptr inbounds nuw i8, ptr %150, i64 16
  store ptr @_ZTIN5boost5arrayIDiLm300EEE, ptr %i.aqz, align 8, !tbaa !46, !noalias !457
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %150) #32
          to label %bb.pz unwind label %bb.qa, !noalias !457

bb.pz:                                            ; preds = %bb.py
  unreachable

bb.qa:                                            ; preds = %bb.py
  %i.ara = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %150) #31, !noalias !457
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #31, !noalias !457
  br label %.body163.i85

bb.qb:                                            ; preds = %bb.px
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %214, ptr align 4 %i.aqt, i64 %i.aqw, i1 false)
  %i.arb = getelementptr inbounds nuw i8, ptr %214, i64 %i.aqw
  store i32 0, ptr %i.arb, align 4, !tbaa !71, !alias.scope !457
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #31, !noalias !457
  %i.arc = load i64, ptr %i.aql, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i.i91 = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %214)
  %i.ard = icmp eq i64 %i.arc, %wcslen.i.i.i.i91
  br i1 %i.ard, label %bb.qc, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i92

bb.qc:                                            ; preds = %bb.qb
  %i.are = load ptr, ptr %213, align 8, !tbaa !72
  %.not.i.i.i165.i116 = icmp eq i64 %i.arc, 0
  br i1 %.not.i.i.i165.i116, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i92, label %.lr.ph.i.i.i166.i117

.lr.ph.i.i.i166.i117:                             ; preds = %bb.qc, %.lr.ph.i.i.i166.i117
  %.01216.i.i.i167.i118 = phi i64 [ %i.arj, %.lr.ph.i.i.i166.i117 ], [ 0, %bb.qc ] ; 3 uses
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %i.are, i64 %.01216.i.i.i167.i118
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %214, i64 %.01216.i.i.i167.i118
  %i.arh = load i32, ptr %i.arf, align 4, !tbaa !71
  %i.ari = load i32, ptr %i.arg, align 4, !tbaa !71
  %or.cond.not.i.i168.i119 = icmp eq i32 %i.ari, %i.arh ; 2 uses
  %i.arj = add nuw nsw i64 %.01216.i.i.i167.i118, 1 ; 2 uses
  %exitcond.not.i.i.i169.i120 = icmp ne i64 %i.arj, %i.arc
  %or.cond558.not = select i1 %or.cond.not.i.i168.i119, i1 %exitcond.not.i.i.i169.i120, i1 false
  br i1 %or.cond558.not, label %.lr.ph.i.i.i166.i117, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i92, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i92: ; preds = %.lr.ph.i.i.i166.i117, %bb.qc, %bb.qb
  %i.ark = phi i1 [ false, %bb.qb ], [ true, %bb.qc ], [ %or.cond.not.i.i168.i119, %.lr.ph.i.i.i166.i117 ]
  %i.arl = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 108, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_, i1 noundef zeroext %i.ark)
          to label %bb.qd unwind label %bb.qu     ; 0 uses

bb.qd:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %214) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %215) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %215, i8 0, i64 1200, i1 false), !alias.scope !458
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #31, !noalias !458
  %i.arm = getelementptr inbounds nuw i8, ptr %149, i64 48 ; 2 uses
  store ptr %149, ptr %i.arm, align 8, !tbaa !132, !noalias !458
  %i.arn = getelementptr inbounds nuw i8, ptr %149, i64 56 ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %149, i64 44 ; 4 uses
  store ptr %i.aro, ptr %i.arn, align 8, !tbaa !133, !noalias !458
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #31, !noalias !458
  store i32 100, ptr %148, align 8, !tbaa !135, !noalias !458
  %i.arp = getelementptr inbounds nuw i8, ptr %148, i64 8
  store ptr %i.aro, ptr %i.arp, align 8, !tbaa !136, !noalias !458
  %i.arq = getelementptr inbounds nuw i8, ptr %148, i64 16
  store i32 48, ptr %i.arq, align 8, !tbaa !137, !noalias !458
  %i.arr = getelementptr inbounds nuw i8, ptr %148, i64 20
  store i32 48, ptr %i.arr, align 4, !tbaa !138, !noalias !458
  %i.ars = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEtDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %148)
          to label %bb.qe unwind label %bb.qv     ; 3 uses

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #31, !noalias !458
  store ptr %i.ars, ptr %i.arm, align 8, !tbaa !132, !noalias !458
  store ptr %i.aro, ptr %i.arn, align 8, !tbaa !133, !noalias !458
  %i.art = ptrtoint ptr %i.aro to i64
  %i.aru = ptrtoint ptr %i.ars to i64
  %i.arv = sub i64 %i.art, %i.aru                 ; 3 uses
  %i.arw = icmp ult i64 %i.arv, 1200
  br i1 %i.arw, label %bb.qi, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #31, !noalias !458
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #31, !noalias !458
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %147, align 8, !tbaa !40, !noalias !458
  %i.arx = getelementptr inbounds nuw i8, ptr %147, i64 8
  store ptr @_ZTIs, ptr %i.arx, align 8, !tbaa !45, !noalias !458
  %i.ary = getelementptr inbounds nuw i8, ptr %147, i64 16
  store ptr @_ZTIN5boost5arrayIDiLm300EEE, ptr %i.ary, align 8, !tbaa !46, !noalias !458
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %147) #32
          to label %bb.qg unwind label %bb.qh, !noalias !458

bb.qg:                                            ; preds = %bb.qf
  unreachable

bb.qh:                                            ; preds = %bb.qf
  %i.arz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %147) #31, !noalias !458
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #31, !noalias !458
  br label %.body172.i93

bb.qi:                                            ; preds = %bb.qe
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %215, ptr align 4 %i.ars, i64 %i.arv, i1 false)
  %i.asa = getelementptr inbounds nuw i8, ptr %215, i64 %i.arv
  store i32 0, ptr %i.asa, align 4, !tbaa !71, !alias.scope !458
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #31, !noalias !458
  %i.asb = load i64, ptr %i.aql, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i175.i95 = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %215)
  %i.asc = icmp eq i64 %i.asb, %wcslen.i.i.i175.i95
  br i1 %i.asc, label %bb.qj, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i96

bb.qj:                                            ; preds = %bb.qi
  %i.asd = load ptr, ptr %213, align 8, !tbaa !72
  %.not.i.i.i176.i111 = icmp eq i64 %i.asb, 0
  br i1 %.not.i.i.i176.i111, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i96, label %.lr.ph.i.i.i177.i112

.lr.ph.i.i.i177.i112:                             ; preds = %bb.qj, %.lr.ph.i.i.i177.i112
  %.01216.i.i.i178.i113 = phi i64 [ %i.asi, %.lr.ph.i.i.i177.i112 ], [ 0, %bb.qj ] ; 3 uses
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %i.asd, i64 %.01216.i.i.i178.i113
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %215, i64 %.01216.i.i.i178.i113
  %i.asg = load i32, ptr %i.ase, align 4, !tbaa !71
  %i.ash = load i32, ptr %i.asf, align 4, !tbaa !71
  %or.cond.not.i.i179.i114 = icmp eq i32 %i.ash, %i.asg ; 2 uses
  %i.asi = add nuw nsw i64 %.01216.i.i.i178.i113, 1 ; 2 uses
  %exitcond.not.i.i.i180.i115 = icmp ne i64 %i.asi, %i.asb
  %or.cond559.not = select i1 %or.cond.not.i.i179.i114, i1 %exitcond.not.i.i.i180.i115, i1 false
  br i1 %or.cond559.not, label %.lr.ph.i.i.i177.i112, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i96, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i96: ; preds = %.lr.ph.i.i.i177.i112, %bb.qj, %bb.qi
  %i.asj = phi i1 [ false, %bb.qi ], [ true, %bb.qj ], [ %or.cond.not.i.i179.i114, %.lr.ph.i.i.i177.i112 ]
  %i.ask = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 113, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_, i1 noundef zeroext %i.asj)
          to label %bb.qk unwind label %bb.qv     ; 0 uses

bb.qk:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %215) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #31
  %i.asl = getelementptr inbounds nuw i8, ptr %146, i64 48
  store ptr %146, ptr %i.asl, align 8, !tbaa !132
  %i.asm = getelementptr inbounds nuw i8, ptr %146, i64 56
  %i.asn = getelementptr inbounds nuw i8, ptr %146, i64 44 ; 3 uses
  store ptr %i.asn, ptr %i.asm, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #31
  store i32 100, ptr %145, align 8, !tbaa !135
  %i.aso = getelementptr inbounds nuw i8, ptr %145, i64 8
  store ptr %i.asn, ptr %i.aso, align 8, !tbaa !136
  %i.asp = getelementptr inbounds nuw i8, ptr %145, i64 16
  store i32 48, ptr %i.asp, align 8, !tbaa !137
  %i.asq = getelementptr inbounds nuw i8, ptr %145, i64 20
  store i32 48, ptr %i.asq, align 4, !tbaa !138
  %i.asr = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEtDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %145)
          to label %bb.ql unwind label %bb.qw

bb.ql:                                            ; preds = %bb.qk
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #31
  %i.ass = ptrtoint ptr %i.asn to i64
  %i.ast = ptrtoint ptr %i.asr to i64
  %i.asu = sub i64 %i.ass, %i.ast
  %i.asv = icmp ult i64 %i.asu, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #31
  br i1 %i.asv, label %bb.qp, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %144, align 8, !tbaa !40
  %i.asw = getelementptr inbounds nuw i8, ptr %144, i64 8
  store ptr @_ZTIs, ptr %i.asw, align 8, !tbaa !45
  %i.asx = getelementptr inbounds nuw i8, ptr %144, i64 16
  store ptr @_ZTIN5boost5arrayIDiLm3EEE, ptr %i.asx, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %144) #32
          to label %bb.qn unwind label %bb.qo

bb.qn:                                            ; preds = %bb.qm
  unreachable

bb.qo:                                            ; preds = %bb.qm
  %i.asy = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %144) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #31
  br label %.body189.i97

bb.qp:                                            ; preds = %bb.ql
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_)
          to label %bb.qy unwind label %bb.qw

bb.qq:                                            ; preds = %.body153.i81
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_)
          to label %.invoke271.i83 unwind label %bb.qr

.invoke271.i83:                                   ; preds = %bb.qq, %bb.pw
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i156.i84 unwind label %bb.qt

bb.qr:                                            ; preds = %bb.qq
  %i.asz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.re unwind label %bb.rh

bb.qs:                                            ; preds = %bb.pw
  %i.ata = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.re unwind label %bb.rh

bb.qt:                                            ; preds = %.invoke271.i83
  %i.atb = landingpad { ptr, i32 }
          cleanup
  br label %bb.re

bb.qu:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i92, %._crit_edge.i.i156.i84
  %i.atc = landingpad { ptr, i32 }
          cleanup
  br label %.body163.i85

.body163.i85:                                     ; preds = %bb.qu, %bb.qa
  %eh.lpad-body164.i86 = phi { ptr, i32 } [ %i.atc, %bb.qu ], [ %i.ara, %bb.qa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %214) #31
  br label %bb.rd

bb.qv:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i96, %bb.qd
  %i.atd = landingpad { ptr, i32 }
          cleanup
  br label %.body172.i93

.body172.i93:                                     ; preds = %bb.qv, %bb.qh
  %eh.lpad-body173.i94 = phi { ptr, i32 } [ %i.atd, %bb.qv ], [ %i.arz, %bb.qh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %215) #31
  br label %bb.rd

bb.qw:                                            ; preds = %bb.qp, %bb.qk
  %i.ate = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body189.i97

.body189.i97:                                     ; preds = %bb.qw, %bb.qo
  %eh.lpad-body190.i98 = phi { ptr, i32 } [ %i.ate, %bb.qw ], [ %i.asy, %bb.qo ] ; 2 uses
  %i.atf = extractvalue { ptr, i32 } %eh.lpad-body190.i98, 0
  %i.atg = extractvalue { ptr, i32 } %eh.lpad-body190.i98, 1
  %i.ath = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.ati = icmp eq i32 %i.atg, %i.ath
  %i.atj = call ptr @__cxa_begin_catch(ptr %i.atf) #31 ; 0 uses
  br i1 %i.ati, label %bb.qx, label %bb.qz

bb.qx:                                            ; preds = %.body189.i97
  %i.atk = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke272.i99 unwind label %bb.rb ; 0 uses

bb.qy:                                            ; preds = %.invoke272.i99, %bb.qp
  %i.atl = load ptr, ptr %213, align 8, !tbaa !72 ; 2 uses
  %i.atm = icmp eq ptr %i.atl, %i.aqk
  br i1 %i.atm, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i101, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i100

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i100: ; preds = %bb.qy
  %i.atn = load i64, ptr %i.aqk, align 8, !tbaa !38
  %i.ato = shl i64 %i.atn, 2
  %i.atp = add i64 %i.ato, 4
  call void @_ZdlPvm(ptr noundef %i.atl, i64 noundef %i.atp) #34
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i101

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i101: ; preds = %bb.qy, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %213) #31
  %i.atq = load ptr, ptr %210, align 8, !tbaa !64 ; 2 uses
  %i.atr = icmp eq ptr %i.atq, %i.anb
  br i1 %i.atr, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i103, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i102

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i101
  %i.ats = load i64, ptr %i.anb, align 8, !tbaa !38
  %i.att = shl i64 %i.ats, 1
  %i.atu = add i64 %i.att, 2
  call void @_ZdlPvm(ptr noundef %i.atq, i64 noundef %i.atu) #34
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i103

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i103: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i101, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %210) #31
  %i.atv = load ptr, ptr %207, align 8, !tbaa !52 ; 2 uses
  %i.atw = icmp eq ptr %i.atv, %i.akb
  br i1 %i.atw, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i105, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i104

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i103
  %i.atx = load i64, ptr %i.akb, align 8, !tbaa !38
  %i.aty = shl i64 %i.atx, 2
  %i.atz = add i64 %i.aty, 4
  call void @_ZdlPvm(ptr noundef %i.atv, i64 noundef %i.atz) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i105

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i105: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i103, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %207) #31
  %i.aua = load ptr, ptr %200, align 8, !tbaa !73 ; 2 uses
  %i.aub = icmp eq ptr %i.aua, %i.adm
  br i1 %i.aub, label %_ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i105
  %i.auc = load i64, ptr %i.adm, align 8, !tbaa !38
  %i.aud = add i64 %i.auc, 1
  call void @_ZdlPvm(ptr noundef %i.aua, i64 noundef %i.aud) #34
  br label %_ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_.exit

bb.qz:                                            ; preds = %.body189.i97
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEsEvT0_)
          to label %.invoke272.i99 unwind label %bb.ra

.invoke272.i99:                                   ; preds = %bb.qz, %bb.qx
  invoke void @__cxa_end_catch()
          to label %bb.qy unwind label %bb.rc

end_hunk_4
begin_hunk_5_@_Z37testing_boost_array_output_conversionv:bb.a
  %i.bao = load i32, ptr %105, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %105)
  store i32 %i.bao, ptr %134, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  store ptr %134, ptr %i.l, align 8, !tbaa !47
  %i.bap = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbT_S4_S4_S4_iS4_RKT0_RKT1_(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 60, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %128)
          to label %bb.th unwind label %bb.ts     ; 0 uses

bb.th:                                            ; preds = %bb.tg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #31
  %i.baq = getelementptr inbounds nuw i8, ptr %101, i64 16
  store ptr %101, ptr %i.baq, align 8, !tbaa !140
  %i.bar = getelementptr inbounds nuw i8, ptr %101, i64 24
  %i.bas = getelementptr inbounds nuw i8, ptr %101, i64 10 ; 3 uses
  store ptr %i.bas, ptr %i.bar, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #31
  store i32 100, ptr %100, align 8, !tbaa !111
  %i.bat = getelementptr inbounds nuw i8, ptr %100, i64 8
  store ptr %i.bas, ptr %i.bat, align 8, !tbaa !112
  %i.bau = getelementptr inbounds nuw i8, ptr %100, i64 16
  store i8 48, ptr %i.bau, align 8, !tbaa !113
  %i.bav = getelementptr inbounds nuw i8, ptr %100, i64 20
  store i32 48, ptr %i.bav, align 4, !tbaa !114
  %i.baw = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEtcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %100)
          to label %.noexc101.i unwind label %bb.tt

.noexc101.i:                                      ; preds = %bb.th
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #31
  %i.bax = ptrtoint ptr %i.bas to i64
  %i.bay = ptrtoint ptr %i.baw to i64
  %i.baz = sub i64 %i.bax, %i.bay
  %i.bba = icmp ult i64 %i.baz, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #31
  br i1 %i.bba, label %bb.tl, label %bb.ti

bb.ti:                                            ; preds = %.noexc101.i
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %99, align 8, !tbaa !40
  %i.bbb = getelementptr inbounds nuw i8, ptr %99, i64 8
  store ptr @_ZTIt, ptr %i.bbb, align 8, !tbaa !45
  %i.bbc = getelementptr inbounds nuw i8, ptr %99, i64 16
  store ptr @_ZTIN5boost5arrayIaLm3EEE, ptr %i.bbc, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %99) #32
          to label %bb.tj unwind label %bb.tk

bb.tj:                                            ; preds = %bb.ti
  unreachable

bb.tk:                                            ; preds = %bb.ti
  %i.bbd = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %99) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #31
  br label %.body102.i

bb.tl:                                            ; preds = %.noexc101.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_)
          to label %._crit_edge.i.i104.i unwind label %bb.tt

bb.tm:                                            ; preds = %.body92.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 53, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_)
          to label %.invoke251.i unwind label %bb.tn

.invoke251.i:                                     ; preds = %bb.tm, %bb.sw
  invoke void @__cxa_end_catch()
          to label %bb.sx unwind label %bb.tp

bb.tn:                                            ; preds = %bb.tm
  %i.bbe = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body87.i139 unwind label %bb.xc

bb.to:                                            ; preds = %bb.sw
  %i.bbf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body87.i139 unwind label %bb.xc

bb.tp:                                            ; preds = %.invoke251.i, %bb.sf
  %i.bbg = landingpad { ptr, i32 }
          cleanup
  br label %.body87.i139

.body87.i139:                                     ; preds = %bb.tp, %bb.to, %bb.tn, %bb.su, %bb.si
  %.pn53.pn.i140 = phi { ptr, i32 } [ %i.aza, %bb.su ], [ %i.bbf, %bb.to ], [ %i.bbe, %bb.tn ], [ %i.bbg, %bb.tp ], [ %i.ayi, %bb.si ]
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #31
  br label %.body84.i

.body84.i:                                        ; preds = %.body87.i139, %bb.st, %bb.ss, %bb.sd
  %.pn53.pn.pn.i138 = phi { ptr, i32 } [ %.pn53.pn.i140, %.body87.i139 ], [ %i.ayz, %bb.st ], [ %i.ayy, %bb.ss ], [ %i.axs, %bb.sd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #31
  br label %bb.xb

bb.tq:                                            ; preds = %bb.sx
  %i.bbh = landingpad { ptr, i32 }
          cleanup
  br label %.body95.i141

bb.tr:                                            ; preds = %bb.tb
  %i.bbi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  br label %.body95.i141

bb.ts:                                            ; preds = %bb.tg
  %i.bbj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  br label %.body98.i

bb.tt:                                            ; preds = %bb.tl, %bb.th
  %i.bbk = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body102.i

.body102.i:                                       ; preds = %bb.tt, %bb.tk
  %eh.lpad-body103.i = phi { ptr, i32 } [ %i.bbk, %bb.tt ], [ %i.bbd, %bb.tk ] ; 2 uses
  %i.bbl = extractvalue { ptr, i32 } %eh.lpad-body103.i, 0
  %i.bbm = extractvalue { ptr, i32 } %eh.lpad-body103.i, 1
  %i.bbn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.bbo = icmp eq i32 %i.bbm, %i.bbn
  %i.bbp = call ptr @__cxa_begin_catch(ptr %i.bbl) #31 ; 0 uses
  br i1 %i.bbo, label %bb.tu, label %bb.un

bb.tu:                                            ; preds = %.body102.i
  %i.bbq = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke252.i unwind label %bb.up ; 0 uses

._crit_edge.i.i104.i:                             ; preds = %.invoke252.i, %bb.tl
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #31
  %i.bbr = getelementptr inbounds nuw i8, ptr %135, i64 16 ; 6 uses
  store ptr %i.bbr, ptr %135, align 8, !tbaa !50
  %i.bbs = call ptr @wmemcpy(ptr noundef nonnull %i.bbr, ptr noundef nonnull @.str.29, i64 noundef 3) #31 ; 0 uses
  %.pre7.i.i.i144 = load ptr, ptr %135, align 8, !tbaa !52
  %i.bbt = getelementptr inbounds nuw i8, ptr %135, i64 8 ; 3 uses
  store i64 3, ptr %i.bbt, align 8, !tbaa !53
  %i.bbu = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i144, i64 12
  store i32 0, ptr %i.bbu, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %136, i8 0, i64 1200, i1 false), !alias.scope !463
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #31, !noalias !463
  %i.bbv = getelementptr inbounds nuw i8, ptr %98, i64 40 ; 6 uses
  store ptr %98, ptr %i.bbv, align 8, !tbaa !143, !noalias !463
  %i.bbw = getelementptr inbounds nuw i8, ptr %98, i64 48 ; 2 uses
  store ptr %i.bbv, ptr %i.bbw, align 8, !tbaa !144, !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #31, !noalias !463
  store i32 100, ptr %97, align 8, !tbaa !119, !noalias !463
  %i.bbx = getelementptr inbounds nuw i8, ptr %97, i64 8
  store ptr %i.bbv, ptr %i.bbx, align 8, !tbaa !120, !noalias !463
  %i.bby = getelementptr inbounds nuw i8, ptr %97, i64 16
  store i32 48, ptr %i.bby, align 8, !tbaa !121, !noalias !463
  %i.bbz = getelementptr inbounds nuw i8, ptr %97, i64 20
  store i32 48, ptr %i.bbz, align 4, !tbaa !122, !noalias !463
  %i.bca = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %97)
          to label %.noexc107.i unwind label %bb.ur ; 3 uses

.noexc107.i:                                      ; preds = %._crit_edge.i.i104.i
  store ptr %i.bca, ptr %i.bbv, align 8, !tbaa !143, !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #31, !noalias !463
  store ptr %i.bbv, ptr %i.bbw, align 8, !tbaa !144, !noalias !463
  %i.bcb = ptrtoint ptr %i.bbv to i64
  %i.bcc = ptrtoint ptr %i.bca to i64
  %i.bcd = sub i64 %i.bcb, %i.bcc                 ; 3 uses
  %i.bce = icmp ult i64 %i.bcd, 1200
  br i1 %i.bce, label %bb.ty, label %bb.tv

bb.tv:                                            ; preds = %.noexc107.i
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #31, !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #31, !noalias !463
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %96, align 8, !tbaa !40, !noalias !463
  %i.bcf = getelementptr inbounds nuw i8, ptr %96, i64 8
  store ptr @_ZTIt, ptr %i.bcf, align 8, !tbaa !45, !noalias !463
  %i.bcg = getelementptr inbounds nuw i8, ptr %96, i64 16
  store ptr @_ZTIN5boost5arrayIwLm300EEE, ptr %i.bcg, align 8, !tbaa !46, !noalias !463
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %96) #32
          to label %bb.tw unwind label %bb.tx, !noalias !463

bb.tw:                                            ; preds = %bb.tv
  unreachable

bb.tx:                                            ; preds = %bb.tv
  %i.bch = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %96) #31, !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #31, !noalias !463
  br label %.body108.i

bb.ty:                                            ; preds = %.noexc107.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %136, ptr align 4 %i.bca, i64 %i.bcd, i1 false)
  %i.bci = getelementptr inbounds nuw i8, ptr %136, i64 %i.bcd
  store i32 0, ptr %i.bci, align 4, !tbaa !55, !alias.scope !463
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #31, !noalias !463
  %i.bcj = load i64, ptr %i.bbt, align 8, !tbaa !53 ; 3 uses
  %i.bck = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %136) #33
  %i.bcl = icmp eq i64 %i.bcj, %i.bck
  br i1 %i.bcl, label %bb.tz, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i146

bb.tz:                                            ; preds = %bb.ty
  %i.bcm = icmp eq i64 %i.bcj, 0
  br i1 %i.bcm, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i146, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.bcn = load ptr, ptr %135, align 8, !tbaa !52
  %i.bco = call i32 @wmemcmp(ptr noundef %i.bcn, ptr noundef nonnull %136, i64 noundef %i.bcj) #33
  %i.bcp = icmp eq i32 %i.bco, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i146

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i146: ; preds = %bb.ua, %bb.tz, %bb.ty
  %i.bcq = phi i1 [ false, %bb.ty ], [ %i.bcp, %bb.ua ], [ true, %bb.tz ]
  %i.bcr = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 71, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_, i1 noundef zeroext %i.bcq)
          to label %bb.ub unwind label %bb.ur     ; 0 uses

bb.ub:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %137, i8 0, i64 1200, i1 false), !alias.scope !464
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #31, !noalias !464
  %i.bcs = getelementptr inbounds nuw i8, ptr %95, i64 40 ; 6 uses
  store ptr %95, ptr %i.bcs, align 8, !tbaa !143, !noalias !464
  %i.bct = getelementptr inbounds nuw i8, ptr %95, i64 48 ; 2 uses
  store ptr %i.bcs, ptr %i.bct, align 8, !tbaa !144, !noalias !464
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #31, !noalias !464
  store i32 100, ptr %94, align 8, !tbaa !119, !noalias !464
  %i.bcu = getelementptr inbounds nuw i8, ptr %94, i64 8
  store ptr %i.bcs, ptr %i.bcu, align 8, !tbaa !120, !noalias !464
  %i.bcv = getelementptr inbounds nuw i8, ptr %94, i64 16
  store i32 48, ptr %i.bcv, align 8, !tbaa !121, !noalias !464
  %i.bcw = getelementptr inbounds nuw i8, ptr %94, i64 20
  store i32 48, ptr %i.bcw, align 4, !tbaa !122, !noalias !464
  %i.bcx = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %94)
          to label %.noexc110.i unwind label %bb.us ; 3 uses

.noexc110.i:                                      ; preds = %bb.ub
  store ptr %i.bcx, ptr %i.bcs, align 8, !tbaa !143, !noalias !464
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #31, !noalias !464
  store ptr %i.bcs, ptr %i.bct, align 8, !tbaa !144, !noalias !464
  %i.bcy = ptrtoint ptr %i.bcs to i64
  %i.bcz = ptrtoint ptr %i.bcx to i64
  %i.bda = sub i64 %i.bcy, %i.bcz                 ; 3 uses
  %i.bdb = icmp ult i64 %i.bda, 1200
  br i1 %i.bdb, label %bb.uf, label %bb.uc

bb.uc:                                            ; preds = %.noexc110.i
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #31, !noalias !464
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #31, !noalias !464
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %93, align 8, !tbaa !40, !noalias !464
  %i.bdc = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr @_ZTIt, ptr %i.bdc, align 8, !tbaa !45, !noalias !464
  %i.bdd = getelementptr inbounds nuw i8, ptr %93, i64 16
  store ptr @_ZTIN5boost5arrayIwLm300EEE, ptr %i.bdd, align 8, !tbaa !46, !noalias !464
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %93) #32
          to label %bb.ud unwind label %bb.ue, !noalias !464

bb.ud:                                            ; preds = %bb.uc
  unreachable

bb.ue:                                            ; preds = %bb.uc
  %i.bde = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #31, !noalias !464
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #31, !noalias !464
  br label %.body111.i

bb.uf:                                            ; preds = %.noexc110.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %137, ptr align 4 %i.bcx, i64 %i.bda, i1 false)
  %i.bdf = getelementptr inbounds nuw i8, ptr %137, i64 %i.bda
  store i32 0, ptr %i.bdf, align 4, !tbaa !55, !alias.scope !464
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #31, !noalias !464
  %i.bdg = load i64, ptr %i.bbt, align 8, !tbaa !53 ; 3 uses
  %i.bdh = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %137) #33
  %i.bdi = icmp eq i64 %i.bdg, %i.bdh
  br i1 %i.bdi, label %bb.ug, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i

bb.ug:                                            ; preds = %bb.uf
  %i.bdj = icmp eq i64 %i.bdg, 0
  br i1 %i.bdj, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  %i.bdk = load ptr, ptr %135, align 8, !tbaa !52
  %i.bdl = call i32 @wmemcmp(ptr noundef %i.bdk, ptr noundef nonnull %137, i64 noundef %i.bdg) #33
  %i.bdm = icmp eq i32 %i.bdl, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i: ; preds = %bb.uh, %bb.ug, %bb.uf
  %i.bdn = phi i1 [ false, %bb.uf ], [ %i.bdm, %bb.uh ], [ true, %bb.ug ]
  %i.bdo = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 76, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_, i1 noundef zeroext %i.bdn)
          to label %bb.ui unwind label %bb.us     ; 0 uses

bb.ui:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #31
  %i.bdp = getelementptr inbounds nuw i8, ptr %92, i64 40 ; 4 uses
  store ptr %92, ptr %i.bdp, align 8, !tbaa !143
  %i.bdq = getelementptr inbounds nuw i8, ptr %92, i64 48
  store ptr %i.bdp, ptr %i.bdq, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #31
  store i32 100, ptr %91, align 8, !tbaa !119
  %i.bdr = getelementptr inbounds nuw i8, ptr %91, i64 8
  store ptr %i.bdp, ptr %i.bdr, align 8, !tbaa !120
  %i.bds = getelementptr inbounds nuw i8, ptr %91, i64 16
  store i32 48, ptr %i.bds, align 8, !tbaa !121
  %i.bdt = getelementptr inbounds nuw i8, ptr %91, i64 20
  store i32 48, ptr %i.bdt, align 4, !tbaa !122
  %i.bdu = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %91)
          to label %.noexc115.i unwind label %bb.ut

.noexc115.i:                                      ; preds = %bb.ui
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #31
  %i.bdv = ptrtoint ptr %i.bdp to i64
  %i.bdw = ptrtoint ptr %i.bdu to i64
  %i.bdx = sub i64 %i.bdv, %i.bdw
  %i.bdy = icmp ult i64 %i.bdx, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #31
  br i1 %i.bdy, label %bb.um, label %bb.uj

bb.uj:                                            ; preds = %.noexc115.i
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %90, align 8, !tbaa !40
  %i.bdz = getelementptr inbounds nuw i8, ptr %90, i64 8
  store ptr @_ZTIt, ptr %i.bdz, align 8, !tbaa !45
  %i.bea = getelementptr inbounds nuw i8, ptr %90, i64 16
  store ptr @_ZTIN5boost5arrayIwLm3EEE, ptr %i.bea, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %90) #32
          to label %bb.uk unwind label %bb.ul

bb.uk:                                            ; preds = %bb.uj
  unreachable

bb.ul:                                            ; preds = %bb.uj
  %i.beb = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %90) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #31
  br label %.body116.i147

bb.um:                                            ; preds = %.noexc115.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_)
          to label %._crit_edge.i.i118.i unwind label %bb.ut

bb.un:                                            ; preds = %.body102.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_)
          to label %.invoke252.i unwind label %bb.uo

.invoke252.i:                                     ; preds = %bb.un, %bb.tu
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i104.i unwind label %bb.uq

bb.uo:                                            ; preds = %bb.un
  %i.bec = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body98.i unwind label %bb.xc

bb.up:                                            ; preds = %bb.tu
  %i.bed = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body98.i unwind label %bb.xc

bb.uq:                                            ; preds = %.invoke252.i, %bb.tc
  %i.bee = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i

.body98.i:                                        ; preds = %bb.uq, %bb.up, %bb.uo, %bb.ts, %bb.tf
  %.pn57.pn.i143 = phi { ptr, i32 } [ %i.bbj, %bb.ts ], [ %i.bed, %bb.up ], [ %i.bec, %bb.uo ], [ %i.bee, %bb.uq ], [ %i.bam, %bb.tf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #31
  br label %.body95.i141

.body95.i141:                                     ; preds = %.body98.i, %bb.tr, %bb.tq, %bb.ta
  %.pn57.pn.pn.i142 = phi { ptr, i32 } [ %.pn57.pn.i143, %.body98.i ], [ %i.bbi, %bb.tr ], [ %i.bbh, %bb.tq ], [ %i.azv, %bb.ta ]
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #31
  br label %bb.xb

bb.ur:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i146, %._crit_edge.i.i104.i
  %i.bef = landingpad { ptr, i32 }
          cleanup
  br label %.body108.i

.body108.i:                                       ; preds = %bb.ur, %bb.tx
  %eh.lpad-body109.i = phi { ptr, i32 } [ %i.bef, %bb.ur ], [ %i.bch, %bb.tx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #31
  br label %bb.xa

bb.us:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i, %bb.ub
  %i.beg = landingpad { ptr, i32 }
          cleanup
  br label %.body111.i

.body111.i:                                       ; preds = %bb.us, %bb.ue
  %eh.lpad-body112.i = phi { ptr, i32 } [ %i.beg, %bb.us ], [ %i.bde, %bb.ue ]
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #31
  br label %bb.xa

bb.ut:                                            ; preds = %bb.um, %bb.ui
  %i.beh = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body116.i147

.body116.i147:                                    ; preds = %bb.ut, %bb.ul
  %eh.lpad-body117.i148 = phi { ptr, i32 } [ %i.beh, %bb.ut ], [ %i.beb, %bb.ul ] ; 2 uses
  %i.bei = extractvalue { ptr, i32 } %eh.lpad-body117.i148, 0
  %i.bej = extractvalue { ptr, i32 } %eh.lpad-body117.i148, 1
  %i.bek = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.bel = icmp eq i32 %i.bej, %i.bek
  %i.bem = call ptr @__cxa_begin_catch(ptr %i.bei) #31 ; 0 uses
  br i1 %i.bel, label %bb.uu, label %bb.vn

bb.uu:                                            ; preds = %.body116.i147
  %i.ben = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke253.i unwind label %bb.vp ; 0 uses

._crit_edge.i.i118.i:                             ; preds = %.invoke253.i, %bb.um
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #31
  %i.beo = getelementptr inbounds nuw i8, ptr %138, i64 16 ; 6 uses
  store ptr %i.beo, ptr %138, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.beo, ptr noundef nonnull align 2 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.bep = getelementptr inbounds nuw i8, ptr %138, i64 8 ; 3 uses
  store i64 3, ptr %i.bep, align 8, !tbaa !60
  %i.beq = getelementptr inbounds nuw i8, ptr %138, i64 22
  store i16 0, ptr %i.beq, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(600) %139, i8 0, i64 600, i1 false), !alias.scope !465
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #31, !noalias !465
  %i.ber = getelementptr inbounds nuw i8, ptr %89, i64 24 ; 2 uses
  store ptr %89, ptr %i.ber, align 8, !tbaa !146, !noalias !465
  %i.bes = getelementptr inbounds nuw i8, ptr %89, i64 32 ; 2 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %89, i64 20 ; 4 uses
  store ptr %i.bet, ptr %i.bes, align 8, !tbaa !147, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #31, !noalias !465
  store i32 100, ptr %88, align 8, !tbaa !127, !noalias !465
  %i.beu = getelementptr inbounds nuw i8, ptr %88, i64 8
  store ptr %i.bet, ptr %i.beu, align 8, !tbaa !128, !noalias !465
  %i.bev = getelementptr inbounds nuw i8, ptr %88, i64 16
  store i16 48, ptr %i.bev, align 8, !tbaa !129, !noalias !465
  %i.bew = getelementptr inbounds nuw i8, ptr %88, i64 18
  store i16 48, ptr %i.bew, align 2, !tbaa !130, !noalias !465
  %i.bex = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEtDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %88)
          to label %.noexc122.i unwind label %bb.vr ; 3 uses

.noexc122.i:                                      ; preds = %._crit_edge.i.i118.i
  store ptr %i.bex, ptr %i.ber, align 8, !tbaa !146, !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #31, !noalias !465
  store ptr %i.bet, ptr %i.bes, align 8, !tbaa !147, !noalias !465
  %i.bey = ptrtoint ptr %i.bet to i64
  %i.bez = ptrtoint ptr %i.bex to i64
  %i.bfa = sub i64 %i.bey, %i.bez                 ; 3 uses
  %i.bfb = icmp ult i64 %i.bfa, 600
  br i1 %i.bfb, label %bb.uy, label %bb.uv

bb.uv:                                            ; preds = %.noexc122.i
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #31, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #31, !noalias !465
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %87, align 8, !tbaa !40, !noalias !465
  %i.bfc = getelementptr inbounds nuw i8, ptr %87, i64 8
  store ptr @_ZTIt, ptr %i.bfc, align 8, !tbaa !45, !noalias !465
  %i.bfd = getelementptr inbounds nuw i8, ptr %87, i64 16
  store ptr @_ZTIN5boost5arrayIDsLm300EEE, ptr %i.bfd, align 8, !tbaa !46, !noalias !465
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %87) #32
          to label %bb.uw unwind label %bb.ux, !noalias !465

bb.uw:                                            ; preds = %bb.uv
  unreachable

bb.ux:                                            ; preds = %bb.uv
  %i.bfe = landingpad { ptr, i32 }
          cleanup
end_hunk_5
begin_hunk_6_@_Z37testing_boost_array_output_conversionv:bb.a

.lr.ph.i.i.i132.i:                                ; preds = %bb.vh, %.lr.ph.i.i.i132.i
  %.01216.i.i.i133.i = phi i64 [ %i.bgu, %.lr.ph.i.i.i132.i ], [ 0, %bb.vh ] ; 3 uses
  %i.bgq = getelementptr inbounds nuw [2 x i8], ptr %i.bgp, i64 %.01216.i.i.i133.i
  %i.bgr = getelementptr inbounds nuw [2 x i8], ptr %140, i64 %.01216.i.i.i133.i
  %i.bgs = load i16, ptr %i.bgq, align 2, !tbaa !62
  %i.bgt = load i16, ptr %i.bgr, align 2, !tbaa !62
  %or.cond.not.i.i134.i = icmp eq i16 %i.bgt, %i.bgs ; 2 uses
  %i.bgu = add nuw nsw i64 %.01216.i.i.i133.i, 1  ; 2 uses
  %exitcond.not.i.i.i135.i = icmp ne i64 %i.bgu, %i.bgj
  %or.cond561.not = select i1 %or.cond.not.i.i134.i, i1 %exitcond.not.i.i.i135.i, i1 false
  br i1 %or.cond561.not, label %.lr.ph.i.i.i132.i, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i, !llvm.loop !1

_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i: ; preds = %.lr.ph.i.i.i132.i, %bb.vh, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i130.i
  %i.bgv = phi i1 [ false, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i130.i ], [ true, %bb.vh ], [ %or.cond.not.i.i134.i, %.lr.ph.i.i.i132.i ]
  %i.bgw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 95, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_, i1 noundef zeroext %i.bgv)
          to label %bb.vi unwind label %bb.vs     ; 0 uses

bb.vi:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #31
  %i.bgx = getelementptr inbounds nuw i8, ptr %83, i64 24
  store ptr %83, ptr %i.bgx, align 8, !tbaa !146
  %i.bgy = getelementptr inbounds nuw i8, ptr %83, i64 32
  %i.bgz = getelementptr inbounds nuw i8, ptr %83, i64 20 ; 3 uses
  store ptr %i.bgz, ptr %i.bgy, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #31
  store i32 100, ptr %82, align 8, !tbaa !127
  %i.bha = getelementptr inbounds nuw i8, ptr %82, i64 8
  store ptr %i.bgz, ptr %i.bha, align 8, !tbaa !128
  %i.bhb = getelementptr inbounds nuw i8, ptr %82, i64 16
  store i16 48, ptr %i.bhb, align 8, !tbaa !129
  %i.bhc = getelementptr inbounds nuw i8, ptr %82, i64 18
  store i16 48, ptr %i.bhc, align 2, !tbaa !130
  %i.bhd = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEtDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %82)
          to label %.noexc138.i unwind label %bb.vt

.noexc138.i:                                      ; preds = %bb.vi
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #31
  %i.bhe = ptrtoint ptr %i.bgz to i64
  %i.bhf = ptrtoint ptr %i.bhd to i64
  %i.bhg = sub i64 %i.bhe, %i.bhf
  %i.bhh = icmp ult i64 %i.bhg, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #31
  br i1 %i.bhh, label %bb.vm, label %bb.vj

bb.vj:                                            ; preds = %.noexc138.i
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %81, align 8, !tbaa !40
  %i.bhi = getelementptr inbounds nuw i8, ptr %81, i64 8
  store ptr @_ZTIt, ptr %i.bhi, align 8, !tbaa !45
  %i.bhj = getelementptr inbounds nuw i8, ptr %81, i64 16
  store ptr @_ZTIN5boost5arrayIDsLm3EEE, ptr %i.bhj, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %81) #32
          to label %bb.vk unwind label %bb.vl

bb.vk:                                            ; preds = %bb.vj
  unreachable

bb.vl:                                            ; preds = %bb.vj
  %i.bhk = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %81) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #31
  br label %.body139.i153

bb.vm:                                            ; preds = %.noexc138.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_)
          to label %._crit_edge.i.i142.i unwind label %bb.vt

bb.vn:                                            ; preds = %.body116.i147
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_)
          to label %.invoke253.i unwind label %bb.vo

.invoke253.i:                                     ; preds = %bb.vn, %bb.uu
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i118.i unwind label %bb.vq

bb.vo:                                            ; preds = %bb.vn
  %i.bhl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.xa unwind label %bb.xc

bb.vp:                                            ; preds = %bb.uu
  %i.bhm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.xa unwind label %bb.xc

bb.vq:                                            ; preds = %.invoke253.i
  %i.bhn = landingpad { ptr, i32 }
          cleanup
  br label %bb.xa

bb.vr:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i152, %._crit_edge.i.i118.i
  %i.bho = landingpad { ptr, i32 }
          cleanup
  br label %.body123.i

.body123.i:                                       ; preds = %bb.vr, %bb.ux
  %eh.lpad-body124.i = phi { ptr, i32 } [ %i.bho, %bb.vr ], [ %i.bfe, %bb.ux ]
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #31
  br label %bb.wz

bb.vs:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i, %bb.vb
  %i.bhp = landingpad { ptr, i32 }
          cleanup
  br label %.body126.i

.body126.i:                                       ; preds = %bb.vs, %bb.ve
  %eh.lpad-body127.i = phi { ptr, i32 } [ %i.bhp, %bb.vs ], [ %i.bgh, %bb.ve ]
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #31
  br label %bb.wz

bb.vt:                                            ; preds = %bb.vm, %bb.vi
  %i.bhq = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body139.i153

.body139.i153:                                    ; preds = %bb.vt, %bb.vl
  %eh.lpad-body140.i154 = phi { ptr, i32 } [ %i.bhq, %bb.vt ], [ %i.bhk, %bb.vl ] ; 2 uses
  %i.bhr = extractvalue { ptr, i32 } %eh.lpad-body140.i154, 0
  %i.bhs = extractvalue { ptr, i32 } %eh.lpad-body140.i154, 1
  %i.bht = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.bhu = icmp eq i32 %i.bhs, %i.bht
  %i.bhv = call ptr @__cxa_begin_catch(ptr %i.bhr) #31 ; 0 uses
  br i1 %i.bhu, label %bb.vu, label %bb.wl

bb.vu:                                            ; preds = %.body139.i153
  %i.bhw = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke254.i unwind label %bb.wn ; 0 uses

._crit_edge.i.i142.i:                             ; preds = %.invoke254.i, %bb.vm
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #31
  %i.bhx = getelementptr inbounds nuw i8, ptr %141, i64 16 ; 6 uses
  store ptr %i.bhx, ptr %141, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bhx, ptr noundef nonnull align 4 dereferenceable(12) @.str.29, i64 12, i1 false)
  %i.bhy = getelementptr inbounds nuw i8, ptr %141, i64 8 ; 3 uses
  store i64 3, ptr %i.bhy, align 8, !tbaa !69
  %i.bhz = getelementptr inbounds nuw i8, ptr %141, i64 28
  store i32 0, ptr %i.bhz, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %142, i8 0, i64 1200, i1 false), !alias.scope !467
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #31, !noalias !467
  %i.bia = getelementptr inbounds nuw i8, ptr %80, i64 40 ; 6 uses
  store ptr %80, ptr %i.bia, align 8, !tbaa !149, !noalias !467
  %i.bib = getelementptr inbounds nuw i8, ptr %80, i64 48 ; 2 uses
  store ptr %i.bia, ptr %i.bib, align 8, !tbaa !150, !noalias !467
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #31, !noalias !467
  store i32 100, ptr %79, align 8, !tbaa !135, !noalias !467
  %i.bic = getelementptr inbounds nuw i8, ptr %79, i64 8
  store ptr %i.bia, ptr %i.bic, align 8, !tbaa !136, !noalias !467
  %i.bid = getelementptr inbounds nuw i8, ptr %79, i64 16
  store i32 48, ptr %i.bid, align 8, !tbaa !137, !noalias !467
  %i.bie = getelementptr inbounds nuw i8, ptr %79, i64 20
  store i32 48, ptr %i.bie, align 4, !tbaa !138, !noalias !467
  %i.bif = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEtDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %79)
          to label %.noexc147.i unwind label %bb.wp ; 3 uses

.noexc147.i:                                      ; preds = %._crit_edge.i.i142.i
  store ptr %i.bif, ptr %i.bia, align 8, !tbaa !149, !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #31, !noalias !467
  store ptr %i.bia, ptr %i.bib, align 8, !tbaa !150, !noalias !467
  %i.big = ptrtoint ptr %i.bia to i64
  %i.bih = ptrtoint ptr %i.bif to i64
  %i.bii = sub i64 %i.big, %i.bih                 ; 3 uses
  %i.bij = icmp ult i64 %i.bii, 1200
  br i1 %i.bij, label %bb.vy, label %bb.vv

bb.vv:                                            ; preds = %.noexc147.i
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #31, !noalias !467
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #31, !noalias !467
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %78, align 8, !tbaa !40, !noalias !467
  %i.bik = getelementptr inbounds nuw i8, ptr %78, i64 8
  store ptr @_ZTIt, ptr %i.bik, align 8, !tbaa !45, !noalias !467
  %i.bil = getelementptr inbounds nuw i8, ptr %78, i64 16
  store ptr @_ZTIN5boost5arrayIDiLm300EEE, ptr %i.bil, align 8, !tbaa !46, !noalias !467
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %78) #32
          to label %bb.vw unwind label %bb.vx, !noalias !467

bb.vw:                                            ; preds = %bb.vv
  unreachable

bb.vx:                                            ; preds = %bb.vv
  %i.bim = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %78) #31, !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #31, !noalias !467
  br label %.body148.i

bb.vy:                                            ; preds = %.noexc147.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %142, ptr align 4 %i.bif, i64 %i.bii, i1 false)
  %i.bin = getelementptr inbounds nuw i8, ptr %142, i64 %i.bii
  store i32 0, ptr %i.bin, align 4, !tbaa !71, !alias.scope !467
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #31, !noalias !467
  %i.bio = load i64, ptr %i.bhy, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i.i156 = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %142)
  %i.bip = icmp eq i64 %i.bio, %wcslen.i.i.i.i156
  br i1 %i.bip, label %bb.vz, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i157

bb.vz:                                            ; preds = %bb.vy
  %i.biq = load ptr, ptr %141, align 8, !tbaa !72
  %.not.i.i.i150.i = icmp eq i64 %i.bio, 0
  br i1 %.not.i.i.i150.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i157, label %.lr.ph.i.i.i151.i

.lr.ph.i.i.i151.i:                                ; preds = %bb.vz, %.lr.ph.i.i.i151.i
  %.01216.i.i.i152.i = phi i64 [ %i.biv, %.lr.ph.i.i.i151.i ], [ 0, %bb.vz ] ; 3 uses
  %i.bir = getelementptr inbounds nuw [4 x i8], ptr %i.biq, i64 %.01216.i.i.i152.i
  %i.bis = getelementptr inbounds nuw [4 x i8], ptr %142, i64 %.01216.i.i.i152.i
  %i.bit = load i32, ptr %i.bir, align 4, !tbaa !71
  %i.biu = load i32, ptr %i.bis, align 4, !tbaa !71
  %or.cond.not.i.i153.i = icmp eq i32 %i.biu, %i.bit ; 2 uses
  %i.biv = add nuw nsw i64 %.01216.i.i.i152.i, 1  ; 2 uses
  %exitcond.not.i.i.i154.i = icmp ne i64 %i.biv, %i.bio
  %or.cond562.not = select i1 %or.cond.not.i.i153.i, i1 %exitcond.not.i.i.i154.i, i1 false
  br i1 %or.cond562.not, label %.lr.ph.i.i.i151.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i157, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i157: ; preds = %.lr.ph.i.i.i151.i, %bb.vz, %bb.vy
  %i.biw = phi i1 [ false, %bb.vy ], [ true, %bb.vz ], [ %or.cond.not.i.i153.i, %.lr.ph.i.i.i151.i ]
  %i.bix = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 108, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_, i1 noundef zeroext %i.biw)
          to label %bb.wa unwind label %bb.wp     ; 0 uses

bb.wa:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %143, i8 0, i64 1200, i1 false), !alias.scope !468
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #31, !noalias !468
  %i.biy = getelementptr inbounds nuw i8, ptr %77, i64 40 ; 6 uses
  store ptr %77, ptr %i.biy, align 8, !tbaa !149, !noalias !468
  %i.biz = getelementptr inbounds nuw i8, ptr %77, i64 48 ; 2 uses
  store ptr %i.biy, ptr %i.biz, align 8, !tbaa !150, !noalias !468
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #31, !noalias !468
  store i32 100, ptr %76, align 8, !tbaa !135, !noalias !468
  %i.bja = getelementptr inbounds nuw i8, ptr %76, i64 8
  store ptr %i.biy, ptr %i.bja, align 8, !tbaa !136, !noalias !468
  %i.bjb = getelementptr inbounds nuw i8, ptr %76, i64 16
  store i32 48, ptr %i.bjb, align 8, !tbaa !137, !noalias !468
  %i.bjc = getelementptr inbounds nuw i8, ptr %76, i64 20
  store i32 48, ptr %i.bjc, align 4, !tbaa !138, !noalias !468
  %i.bjd = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEtDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %76)
          to label %.noexc155.i unwind label %bb.wq ; 3 uses

.noexc155.i:                                      ; preds = %bb.wa
  store ptr %i.bjd, ptr %i.biy, align 8, !tbaa !149, !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #31, !noalias !468
  store ptr %i.biy, ptr %i.biz, align 8, !tbaa !150, !noalias !468
  %i.bje = ptrtoint ptr %i.biy to i64
  %i.bjf = ptrtoint ptr %i.bjd to i64
  %i.bjg = sub i64 %i.bje, %i.bjf                 ; 3 uses
  %i.bjh = icmp ult i64 %i.bjg, 1200
  br i1 %i.bjh, label %bb.we, label %bb.wb

bb.wb:                                            ; preds = %.noexc155.i
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #31, !noalias !468
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #31, !noalias !468
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %75, align 8, !tbaa !40, !noalias !468
  %i.bji = getelementptr inbounds nuw i8, ptr %75, i64 8
  store ptr @_ZTIt, ptr %i.bji, align 8, !tbaa !45, !noalias !468
  %i.bjj = getelementptr inbounds nuw i8, ptr %75, i64 16
  store ptr @_ZTIN5boost5arrayIDiLm300EEE, ptr %i.bjj, align 8, !tbaa !46, !noalias !468
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %75) #32
          to label %bb.wc unwind label %bb.wd, !noalias !468

bb.wc:                                            ; preds = %bb.wb
  unreachable

bb.wd:                                            ; preds = %bb.wb
  %i.bjk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %75) #31, !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #31, !noalias !468
  br label %.body156.i

bb.we:                                            ; preds = %.noexc155.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %143, ptr align 4 %i.bjd, i64 %i.bjg, i1 false)
  %i.bjl = getelementptr inbounds nuw i8, ptr %143, i64 %i.bjg
  store i32 0, ptr %i.bjl, align 4, !tbaa !71, !alias.scope !468
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #31, !noalias !468
  %i.bjm = load i64, ptr %i.bhy, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i159.i = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %143)
  %i.bjn = icmp eq i64 %i.bjm, %wcslen.i.i.i159.i
  br i1 %i.bjn, label %bb.wf, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i

bb.wf:                                            ; preds = %bb.we
  %i.bjo = load ptr, ptr %141, align 8, !tbaa !72
  %.not.i.i.i160.i = icmp eq i64 %i.bjm, 0
  br i1 %.not.i.i.i160.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i, label %.lr.ph.i.i.i161.i

.lr.ph.i.i.i161.i:                                ; preds = %bb.wf, %.lr.ph.i.i.i161.i
  %.01216.i.i.i162.i = phi i64 [ %i.bjt, %.lr.ph.i.i.i161.i ], [ 0, %bb.wf ] ; 3 uses
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.bjo, i64 %.01216.i.i.i162.i
  %i.bjq = getelementptr inbounds nuw [4 x i8], ptr %143, i64 %.01216.i.i.i162.i
  %i.bjr = load i32, ptr %i.bjp, align 4, !tbaa !71
  %i.bjs = load i32, ptr %i.bjq, align 4, !tbaa !71
  %or.cond.not.i.i163.i = icmp eq i32 %i.bjs, %i.bjr ; 2 uses
  %i.bjt = add nuw nsw i64 %.01216.i.i.i162.i, 1  ; 2 uses
  %exitcond.not.i.i.i164.i = icmp ne i64 %i.bjt, %i.bjm
  %or.cond563.not = select i1 %or.cond.not.i.i163.i, i1 %exitcond.not.i.i.i164.i, i1 false
  br i1 %or.cond563.not, label %.lr.ph.i.i.i161.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i: ; preds = %.lr.ph.i.i.i161.i, %bb.wf, %bb.we
  %i.bju = phi i1 [ false, %bb.we ], [ true, %bb.wf ], [ %or.cond.not.i.i163.i, %.lr.ph.i.i.i161.i ]
  %i.bjv = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 113, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_, i1 noundef zeroext %i.bju)
          to label %bb.wg unwind label %bb.wq     ; 0 uses

bb.wg:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #31
  %i.bjw = getelementptr inbounds nuw i8, ptr %74, i64 40 ; 4 uses
  store ptr %74, ptr %i.bjw, align 8, !tbaa !149
  %i.bjx = getelementptr inbounds nuw i8, ptr %74, i64 48
  store ptr %i.bjw, ptr %i.bjx, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #31
  store i32 100, ptr %73, align 8, !tbaa !135
  %i.bjy = getelementptr inbounds nuw i8, ptr %73, i64 8
  store ptr %i.bjw, ptr %i.bjy, align 8, !tbaa !136
  %i.bjz = getelementptr inbounds nuw i8, ptr %73, i64 16
  store i32 48, ptr %i.bjz, align 8, !tbaa !137
  %i.bka = getelementptr inbounds nuw i8, ptr %73, i64 20
  store i32 48, ptr %i.bka, align 4, !tbaa !138
  %i.bkb = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEtDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %73)
          to label %.noexc171.i unwind label %bb.wr

.noexc171.i:                                      ; preds = %bb.wg
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #31
  %i.bkc = ptrtoint ptr %i.bjw to i64
  %i.bkd = ptrtoint ptr %i.bkb to i64
  %i.bke = sub i64 %i.bkc, %i.bkd
  %i.bkf = icmp ult i64 %i.bke, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #31
  br i1 %i.bkf, label %bb.wk, label %bb.wh

bb.wh:                                            ; preds = %.noexc171.i
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %72, align 8, !tbaa !40
  %i.bkg = getelementptr inbounds nuw i8, ptr %72, i64 8
  store ptr @_ZTIt, ptr %i.bkg, align 8, !tbaa !45
  %i.bkh = getelementptr inbounds nuw i8, ptr %72, i64 16
  store ptr @_ZTIN5boost5arrayIDiLm3EEE, ptr %i.bkh, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %72) #32
          to label %bb.wi unwind label %bb.wj

bb.wi:                                            ; preds = %bb.wh
  unreachable

bb.wj:                                            ; preds = %bb.wh
  %i.bki = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %72) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #31
  br label %.body172.i158

bb.wk:                                            ; preds = %.noexc171.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_)
          to label %bb.wt unwind label %bb.wr

bb.wl:                                            ; preds = %.body139.i153
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_)
          to label %.invoke254.i unwind label %bb.wm

.invoke254.i:                                     ; preds = %bb.wl, %bb.vu
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i142.i unwind label %bb.wo

bb.wm:                                            ; preds = %bb.wl
  %i.bkj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.wz unwind label %bb.xc

bb.wn:                                            ; preds = %bb.vu
  %i.bkk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.wz unwind label %bb.xc

bb.wo:                                            ; preds = %.invoke254.i
  %i.bkl = landingpad { ptr, i32 }
          cleanup
  br label %bb.wz

bb.wp:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i157, %._crit_edge.i.i142.i
  %i.bkm = landingpad { ptr, i32 }
          cleanup
  br label %.body148.i

.body148.i:                                       ; preds = %bb.wp, %bb.vx
  %eh.lpad-body149.i = phi { ptr, i32 } [ %i.bkm, %bb.wp ], [ %i.bim, %bb.vx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #31
  br label %bb.wy

bb.wq:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i, %bb.wa
  %i.bkn = landingpad { ptr, i32 }
          cleanup
  br label %.body156.i

.body156.i:                                       ; preds = %bb.wq, %bb.wd
  %eh.lpad-body157.i = phi { ptr, i32 } [ %i.bkn, %bb.wq ], [ %i.bjk, %bb.wd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #31
  br label %bb.wy

bb.wr:                                            ; preds = %bb.wk, %bb.wg
  %i.bko = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body172.i158

.body172.i158:                                    ; preds = %bb.wr, %bb.wj
  %eh.lpad-body173.i159 = phi { ptr, i32 } [ %i.bko, %bb.wr ], [ %i.bki, %bb.wj ] ; 2 uses
  %i.bkp = extractvalue { ptr, i32 } %eh.lpad-body173.i159, 0
  %i.bkq = extractvalue { ptr, i32 } %eh.lpad-body173.i159, 1
  %i.bkr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.bks = icmp eq i32 %i.bkq, %i.bkr
  %i.bkt = call ptr @__cxa_begin_catch(ptr %i.bkp) #31 ; 0 uses
  br i1 %i.bks, label %bb.ws, label %bb.wu

bb.ws:                                            ; preds = %.body172.i158
  %i.bku = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke255.i160 unwind label %bb.ww ; 0 uses

bb.wt:                                            ; preds = %.invoke255.i160, %bb.wk
  %i.bkv = load ptr, ptr %141, align 8, !tbaa !72 ; 2 uses
  %i.bkw = icmp eq ptr %i.bkv, %i.bhx
  br i1 %i.bkw, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i162, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i161

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i161: ; preds = %bb.wt
  %i.bkx = load i64, ptr %i.bhx, align 8, !tbaa !38
  %i.bky = shl i64 %i.bkx, 2
  %i.bkz = add i64 %i.bky, 4
  call void @_ZdlPvm(ptr noundef %i.bkv, i64 noundef %i.bkz) #34
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i162

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i162: ; preds = %bb.wt, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #31
  %i.bla = load ptr, ptr %138, align 8, !tbaa !64 ; 2 uses
  %i.blb = icmp eq ptr %i.bla, %i.beo
  br i1 %i.blb, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i164, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i163

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i163: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i162
  %i.blc = load i64, ptr %i.beo, align 8, !tbaa !38
  %i.bld = shl i64 %i.blc, 1
  %i.ble = add i64 %i.bld, 2
  call void @_ZdlPvm(ptr noundef %i.bla, i64 noundef %i.ble) #34
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i164

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i164: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i162, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #31
  %i.blf = load ptr, ptr %135, align 8, !tbaa !52 ; 2 uses
  %i.blg = icmp eq ptr %i.blf, %i.bbr
  br i1 %i.blg, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i166, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i165

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i165: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i164
  %i.blh = load i64, ptr %i.bbr, align 8, !tbaa !38
  %i.bli = shl i64 %i.blh, 2
  %i.blj = add i64 %i.bli, 4
  call void @_ZdlPvm(ptr noundef %i.blf, i64 noundef %i.blj) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i166

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i166: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i164, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #31
  %i.blk = load ptr, ptr %128, align 8, !tbaa !73 ; 2 uses
  %i.bll = icmp eq ptr %i.blk, %i.avc
  br i1 %i.bll, label %_ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i166
  %i.blm = load i64, ptr %i.avc, align 8, !tbaa !38
  %i.bln = add i64 %i.blm, 1
  call void @_ZdlPvm(ptr noundef %i.blk, i64 noundef %i.bln) #34
  br label %_ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_.exit

bb.wu:                                            ; preds = %.body172.i158
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEtEvT0_)
          to label %.invoke255.i160 unwind label %bb.wv

.invoke255.i160:                                  ; preds = %bb.wu, %bb.ws
  invoke void @__cxa_end_catch()
          to label %bb.wt unwind label %bb.wx

bb.wv:                                            ; preds = %bb.wu
end_hunk_6
begin_hunk_7_@_Z37testing_boost_array_output_conversionv:bb.a
  %i.bry = load i32, ptr %33, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  store i32 %i.bry, ptr %62, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store ptr %62, ptr %i.f, align 8, !tbaa !47
  %i.brz = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbT_S4_S4_S4_iS4_RKT0_RKT1_(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 60, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %bb.zc unwind label %bb.zn     ; 0 uses

bb.zc:                                            ; preds = %bb.zb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #31
  %i.bsa = getelementptr inbounds nuw i8, ptr %29, i64 24
  store ptr %29, ptr %i.bsa, align 8, !tbaa !152
  %i.bsb = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.bsc = getelementptr inbounds nuw i8, ptr %29, i64 20 ; 3 uses
  store ptr %i.bsc, ptr %i.bsb, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #31
  store i32 100, ptr %28, align 8, !tbaa !78
  %i.bsd = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.bsc, ptr %i.bsd, align 8, !tbaa !79
  %i.bse = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i8 48, ptr %i.bse, align 8, !tbaa !80
  %i.bsf = getelementptr inbounds nuw i8, ptr %28, i64 20
  store i32 48, ptr %i.bsf, align 4, !tbaa !81
  %i.bsg = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEjcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %.noexc101.i298 unwind label %bb.zo

.noexc101.i298:                                   ; preds = %bb.zc
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  %i.bsh = ptrtoint ptr %i.bsc to i64
  %i.bsi = ptrtoint ptr %i.bsg to i64
  %i.bsj = sub i64 %i.bsh, %i.bsi
  %i.bsk = icmp ult i64 %i.bsj, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  br i1 %i.bsk, label %bb.zg, label %bb.zd

bb.zd:                                            ; preds = %.noexc101.i298
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %27, align 8, !tbaa !40
  %i.bsl = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr @_ZTIj, ptr %i.bsl, align 8, !tbaa !45
  %i.bsm = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr @_ZTIN5boost5arrayIaLm3EEE, ptr %i.bsm, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %27) #32
          to label %bb.ze unwind label %bb.zf

bb.ze:                                            ; preds = %bb.zd
  unreachable

bb.zf:                                            ; preds = %bb.zd
  %i.bsn = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %.body102.i206

bb.zg:                                            ; preds = %.noexc101.i298
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_)
          to label %._crit_edge.i.i104.i209 unwind label %bb.zo

bb.zh:                                            ; preds = %.body92.i197
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 53, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_)
          to label %.invoke251.i199 unwind label %bb.zi

.invoke251.i199:                                  ; preds = %bb.zh, %bb.yr
  invoke void @__cxa_end_catch()
          to label %bb.ys unwind label %bb.zk

bb.zi:                                            ; preds = %bb.zh
  %i.bso = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body87.i194 unwind label %bb.acx

bb.zj:                                            ; preds = %bb.yr
  %i.bsp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body87.i194 unwind label %bb.acx

bb.zk:                                            ; preds = %.invoke251.i199, %bb.ya
  %i.bsq = landingpad { ptr, i32 }
          cleanup
  br label %.body87.i194

.body87.i194:                                     ; preds = %bb.zk, %bb.zj, %bb.zi, %bb.yp, %bb.yd
  %.pn53.pn.i195 = phi { ptr, i32 } [ %i.bqk, %bb.yp ], [ %i.bsp, %bb.zj ], [ %i.bso, %bb.zi ], [ %i.bsq, %bb.zk ], [ %i.bps, %bb.yd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #31
  br label %.body84.i191

.body84.i191:                                     ; preds = %.body87.i194, %bb.yo, %bb.yn, %bb.xy
  %.pn53.pn.pn.i192 = phi { ptr, i32 } [ %.pn53.pn.i195, %.body87.i194 ], [ %i.bqj, %bb.yo ], [ %i.bqi, %bb.yn ], [ %i.bpc, %bb.xy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #31
  br label %bb.acw

bb.zl:                                            ; preds = %bb.ys
  %i.bsr = landingpad { ptr, i32 }
          cleanup
  br label %.body95.i200

bb.zm:                                            ; preds = %bb.yw
  %i.bss = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %.body95.i200

bb.zn:                                            ; preds = %bb.zb
  %i.bst = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  br label %.body98.i203

bb.zo:                                            ; preds = %bb.zg, %bb.zc
  %i.bsu = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body102.i206

.body102.i206:                                    ; preds = %bb.zo, %bb.zf
  %eh.lpad-body103.i207 = phi { ptr, i32 } [ %i.bsu, %bb.zo ], [ %i.bsn, %bb.zf ] ; 2 uses
  %i.bsv = extractvalue { ptr, i32 } %eh.lpad-body103.i207, 0
  %i.bsw = extractvalue { ptr, i32 } %eh.lpad-body103.i207, 1
  %i.bsx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.bsy = icmp eq i32 %i.bsw, %i.bsx
  %i.bsz = call ptr @__cxa_begin_catch(ptr %i.bsv) #31 ; 0 uses
  br i1 %i.bsy, label %bb.zp, label %bb.aai

bb.zp:                                            ; preds = %.body102.i206
  %i.bta = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke252.i208 unwind label %bb.aak ; 0 uses

._crit_edge.i.i104.i209:                          ; preds = %.invoke252.i208, %bb.zg
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #31
  %i.btb = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 6 uses
  store ptr %i.btb, ptr %63, align 8, !tbaa !50
  %i.btc = call ptr @wmemcpy(ptr noundef nonnull %i.btb, ptr noundef nonnull @.str.29, i64 noundef 3) #31 ; 0 uses
  %.pre7.i.i.i210 = load ptr, ptr %63, align 8, !tbaa !52
  %i.btd = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 3 uses
  store i64 3, ptr %i.btd, align 8, !tbaa !53
  %i.bte = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i210, i64 12
  store i32 0, ptr %i.bte, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %64, i8 0, i64 1200, i1 false), !alias.scope !473
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31, !noalias !473
  %i.btf = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 6 uses
  store ptr %26, ptr %i.btf, align 8, !tbaa !155, !noalias !473
  %i.btg = getelementptr inbounds nuw i8, ptr %26, i64 88 ; 2 uses
  store ptr %i.btf, ptr %i.btg, align 8, !tbaa !156, !noalias !473
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31, !noalias !473
  store i32 100, ptr %25, align 8, !tbaa !86, !noalias !473
  %i.bth = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %i.btf, ptr %i.bth, align 8, !tbaa !87, !noalias !473
  %i.bti = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 48, ptr %i.bti, align 8, !tbaa !88, !noalias !473
  %i.btj = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 48, ptr %i.btj, align 4, !tbaa !89, !noalias !473
  %i.btk = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %.noexc107.i217 unwind label %bb.aam ; 3 uses

.noexc107.i217:                                   ; preds = %._crit_edge.i.i104.i209
  store ptr %i.btk, ptr %i.btf, align 8, !tbaa !155, !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31, !noalias !473
  store ptr %i.btf, ptr %i.btg, align 8, !tbaa !156, !noalias !473
  %i.btl = ptrtoint ptr %i.btf to i64
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = sub i64 %i.btl, %i.btm                 ; 3 uses
  %i.bto = icmp ult i64 %i.btn, 1200
  br i1 %i.bto, label %bb.zt, label %bb.zq

bb.zq:                                            ; preds = %.noexc107.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31, !noalias !473
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31, !noalias !473
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %24, align 8, !tbaa !40, !noalias !473
  %i.btp = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr @_ZTIj, ptr %i.btp, align 8, !tbaa !45, !noalias !473
  %i.btq = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr @_ZTIN5boost5arrayIwLm300EEE, ptr %i.btq, align 8, !tbaa !46, !noalias !473
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %24) #32
          to label %bb.zr unwind label %bb.zs, !noalias !473

bb.zr:                                            ; preds = %bb.zq
  unreachable

bb.zs:                                            ; preds = %bb.zq
  %i.btr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #31, !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31, !noalias !473
  br label %.body108.i211

bb.zt:                                            ; preds = %.noexc107.i217
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %64, ptr align 4 %i.btk, i64 %i.btn, i1 false)
  %i.bts = getelementptr inbounds nuw i8, ptr %64, i64 %i.btn
  store i32 0, ptr %i.bts, align 4, !tbaa !55, !alias.scope !473
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31, !noalias !473
  %i.btt = load i64, ptr %i.btd, align 8, !tbaa !53 ; 3 uses
  %i.btu = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %64) #33
  %i.btv = icmp eq i64 %i.btt, %i.btu
  br i1 %i.btv, label %bb.zu, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i218

bb.zu:                                            ; preds = %bb.zt
  %i.btw = icmp eq i64 %i.btt, 0
  br i1 %i.btw, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i218, label %bb.zv

bb.zv:                                            ; preds = %bb.zu
  %i.btx = load ptr, ptr %63, align 8, !tbaa !52
  %i.bty = call i32 @wmemcmp(ptr noundef %i.btx, ptr noundef nonnull %64, i64 noundef %i.btt) #33
  %i.btz = icmp eq i32 %i.bty, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i218

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i218: ; preds = %bb.zv, %bb.zu, %bb.zt
  %i.bua = phi i1 [ false, %bb.zt ], [ %i.btz, %bb.zv ], [ true, %bb.zu ]
  %i.bub = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 71, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_, i1 noundef zeroext %i.bua)
          to label %bb.zw unwind label %bb.aam    ; 0 uses

bb.zw:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %65, i8 0, i64 1200, i1 false), !alias.scope !474
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31, !noalias !474
  %i.buc = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 6 uses
  store ptr %23, ptr %i.buc, align 8, !tbaa !155, !noalias !474
  %i.bud = getelementptr inbounds nuw i8, ptr %23, i64 88 ; 2 uses
  store ptr %i.buc, ptr %i.bud, align 8, !tbaa !156, !noalias !474
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31, !noalias !474
  store i32 100, ptr %22, align 8, !tbaa !86, !noalias !474
  %i.bue = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.buc, ptr %i.bue, align 8, !tbaa !87, !noalias !474
  %i.buf = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 48, ptr %i.buf, align 8, !tbaa !88, !noalias !474
  %i.bug = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 48, ptr %i.bug, align 4, !tbaa !89, !noalias !474
  %i.buh = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %.noexc110.i221 unwind label %bb.aan ; 3 uses

.noexc110.i221:                                   ; preds = %bb.zw
  store ptr %i.buh, ptr %i.buc, align 8, !tbaa !155, !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31, !noalias !474
  store ptr %i.buc, ptr %i.bud, align 8, !tbaa !156, !noalias !474
  %i.bui = ptrtoint ptr %i.buc to i64
  %i.buj = ptrtoint ptr %i.buh to i64
  %i.buk = sub i64 %i.bui, %i.buj                 ; 3 uses
  %i.bul = icmp ult i64 %i.buk, 1200
  br i1 %i.bul, label %bb.aaa, label %bb.zx

bb.zx:                                            ; preds = %.noexc110.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31, !noalias !474
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31, !noalias !474
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %21, align 8, !tbaa !40, !noalias !474
  %i.bum = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr @_ZTIj, ptr %i.bum, align 8, !tbaa !45, !noalias !474
  %i.bun = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr @_ZTIN5boost5arrayIwLm300EEE, ptr %i.bun, align 8, !tbaa !46, !noalias !474
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %21) #32
          to label %bb.zy unwind label %bb.zz, !noalias !474

bb.zy:                                            ; preds = %bb.zx
  unreachable

bb.zz:                                            ; preds = %bb.zx
  %i.buo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #31, !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31, !noalias !474
  br label %.body111.i219

bb.aaa:                                           ; preds = %.noexc110.i221
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %65, ptr align 4 %i.buh, i64 %i.buk, i1 false)
  %i.bup = getelementptr inbounds nuw i8, ptr %65, i64 %i.buk
  store i32 0, ptr %i.bup, align 4, !tbaa !55, !alias.scope !474
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31, !noalias !474
  %i.buq = load i64, ptr %i.btd, align 8, !tbaa !53 ; 3 uses
  %i.bur = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %65) #33
  %i.bus = icmp eq i64 %i.buq, %i.bur
  br i1 %i.bus, label %bb.aab, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i222

bb.aab:                                           ; preds = %bb.aaa
  %i.but = icmp eq i64 %i.buq, 0
  br i1 %i.but, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i222, label %bb.aac

bb.aac:                                           ; preds = %bb.aab
  %i.buu = load ptr, ptr %63, align 8, !tbaa !52
  %i.buv = call i32 @wmemcmp(ptr noundef %i.buu, ptr noundef nonnull %65, i64 noundef %i.buq) #33
  %i.buw = icmp eq i32 %i.buv, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i222

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i222: ; preds = %bb.aac, %bb.aab, %bb.aaa
  %i.bux = phi i1 [ false, %bb.aaa ], [ %i.buw, %bb.aac ], [ true, %bb.aab ]
  %i.buy = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 76, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_, i1 noundef zeroext %i.bux)
          to label %bb.aad unwind label %bb.aan   ; 0 uses

bb.aad:                                           ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  %i.buz = getelementptr inbounds nuw i8, ptr %20, i64 80 ; 4 uses
  store ptr %20, ptr %i.buz, align 8, !tbaa !155
  %i.bva = getelementptr inbounds nuw i8, ptr %20, i64 88
  store ptr %i.buz, ptr %i.bva, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  store i32 100, ptr %19, align 8, !tbaa !86
  %i.bvb = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.buz, ptr %i.bvb, align 8, !tbaa !87
  %i.bvc = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 48, ptr %i.bvc, align 8, !tbaa !88
  %i.bvd = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 48, ptr %i.bvd, align 4, !tbaa !89
  %i.bve = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %.noexc115.i297 unwind label %bb.aao

.noexc115.i297:                                   ; preds = %bb.aad
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  %i.bvf = ptrtoint ptr %i.buz to i64
  %i.bvg = ptrtoint ptr %i.bve to i64
  %i.bvh = sub i64 %i.bvf, %i.bvg
  %i.bvi = icmp ult i64 %i.bvh, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br i1 %i.bvi, label %bb.aah, label %bb.aae

bb.aae:                                           ; preds = %.noexc115.i297
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %18, align 8, !tbaa !40
  %i.bvj = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @_ZTIj, ptr %i.bvj, align 8, !tbaa !45
  %i.bvk = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @_ZTIN5boost5arrayIwLm3EEE, ptr %i.bvk, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %18) #32
          to label %bb.aaf unwind label %bb.aag

bb.aaf:                                           ; preds = %bb.aae
  unreachable

bb.aag:                                           ; preds = %bb.aae
  %i.bvl = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %.body116.i223

bb.aah:                                           ; preds = %.noexc115.i297
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_)
          to label %._crit_edge.i.i118.i226 unwind label %bb.aao

bb.aai:                                           ; preds = %.body102.i206
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_)
          to label %.invoke252.i208 unwind label %bb.aaj

.invoke252.i208:                                  ; preds = %bb.aai, %bb.zp
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i104.i209 unwind label %bb.aal

bb.aaj:                                           ; preds = %bb.aai
  %i.bvm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body98.i203 unwind label %bb.acx

bb.aak:                                           ; preds = %bb.zp
  %i.bvn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body98.i203 unwind label %bb.acx

bb.aal:                                           ; preds = %.invoke252.i208, %bb.yx
  %i.bvo = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i203

.body98.i203:                                     ; preds = %bb.aal, %bb.aak, %bb.aaj, %bb.zn, %bb.za
  %.pn57.pn.i204 = phi { ptr, i32 } [ %i.bst, %bb.zn ], [ %i.bvn, %bb.aak ], [ %i.bvm, %bb.aaj ], [ %i.bvo, %bb.aal ], [ %i.brw, %bb.za ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #31
  br label %.body95.i200

.body95.i200:                                     ; preds = %.body98.i203, %bb.zm, %bb.zl, %bb.yv
  %.pn57.pn.pn.i201 = phi { ptr, i32 } [ %.pn57.pn.i204, %.body98.i203 ], [ %i.bss, %bb.zm ], [ %i.bsr, %bb.zl ], [ %i.brf, %bb.yv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  br label %bb.acw

bb.aam:                                           ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i218, %._crit_edge.i.i104.i209
  %i.bvp = landingpad { ptr, i32 }
          cleanup
  br label %.body108.i211

.body108.i211:                                    ; preds = %bb.aam, %bb.zs
  %eh.lpad-body109.i212 = phi { ptr, i32 } [ %i.bvp, %bb.aam ], [ %i.btr, %bb.zs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #31
  br label %bb.acv

bb.aan:                                           ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i222, %bb.zw
  %i.bvq = landingpad { ptr, i32 }
          cleanup
  br label %.body111.i219

.body111.i219:                                    ; preds = %bb.aan, %bb.zz
  %eh.lpad-body112.i220 = phi { ptr, i32 } [ %i.bvq, %bb.aan ], [ %i.buo, %bb.zz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #31
  br label %bb.acv

bb.aao:                                           ; preds = %bb.aah, %bb.aad
  %i.bvr = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body116.i223

.body116.i223:                                    ; preds = %bb.aao, %bb.aag
  %eh.lpad-body117.i224 = phi { ptr, i32 } [ %i.bvr, %bb.aao ], [ %i.bvl, %bb.aag ] ; 2 uses
  %i.bvs = extractvalue { ptr, i32 } %eh.lpad-body117.i224, 0
  %i.bvt = extractvalue { ptr, i32 } %eh.lpad-body117.i224, 1
  %i.bvu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.bvv = icmp eq i32 %i.bvt, %i.bvu
  %i.bvw = call ptr @__cxa_begin_catch(ptr %i.bvs) #31 ; 0 uses
  br i1 %i.bvv, label %bb.aap, label %bb.abi

bb.aap:                                           ; preds = %.body116.i223
  %i.bvx = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke253.i225 unwind label %bb.abk ; 0 uses

._crit_edge.i.i118.i226:                          ; preds = %.invoke253.i225, %bb.aah
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #31
  %i.bvy = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 6 uses
  store ptr %i.bvy, ptr %66, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bvy, ptr noundef nonnull align 2 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.bvz = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 3 uses
  store i64 3, ptr %i.bvz, align 8, !tbaa !60
  %i.bwa = getelementptr inbounds nuw i8, ptr %66, i64 22
  store i16 0, ptr %i.bwa, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(600) %67, i8 0, i64 600, i1 false), !alias.scope !475
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31, !noalias !475
  %i.bwb = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 6 uses
  store ptr %17, ptr %i.bwb, align 8, !tbaa !158, !noalias !475
  %i.bwc = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store ptr %i.bwb, ptr %i.bwc, align 8, !tbaa !159, !noalias !475
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31, !noalias !475
  store i32 100, ptr %16, align 8, !tbaa !95, !noalias !475
  %i.bwd = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.bwb, ptr %i.bwd, align 8, !tbaa !96, !noalias !475
  %i.bwe = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i16 48, ptr %i.bwe, align 8, !tbaa !97, !noalias !475
  %i.bwf = getelementptr inbounds nuw i8, ptr %16, i64 18
  store i16 48, ptr %i.bwf, align 2, !tbaa !98, !noalias !475
  %i.bwg = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEjDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %16)
          to label %.noexc122.i233 unwind label %bb.abm ; 3 uses

.noexc122.i233:                                   ; preds = %._crit_edge.i.i118.i226
  store ptr %i.bwg, ptr %i.bwb, align 8, !tbaa !158, !noalias !475
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !475
  store ptr %i.bwb, ptr %i.bwc, align 8, !tbaa !159, !noalias !475
  %i.bwh = ptrtoint ptr %i.bwb to i64
  %i.bwi = ptrtoint ptr %i.bwg to i64
  %i.bwj = sub i64 %i.bwh, %i.bwi                 ; 3 uses
  %i.bwk = icmp ult i64 %i.bwj, 600
  br i1 %i.bwk, label %bb.aat, label %bb.aaq

bb.aaq:                                           ; preds = %.noexc122.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31, !noalias !475
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31, !noalias !475
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %15, align 8, !tbaa !40, !noalias !475
  %i.bwl = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @_ZTIj, ptr %i.bwl, align 8, !tbaa !45, !noalias !475
  %i.bwm = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @_ZTIN5boost5arrayIDsLm300EEE, ptr %i.bwm, align 8, !tbaa !46, !noalias !475
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %15) #32
          to label %bb.aar unwind label %bb.aas, !noalias !475

bb.aar:                                           ; preds = %bb.aaq
  unreachable

bb.aas:                                           ; preds = %bb.aaq
  %i.bwn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #31, !noalias !475
end_hunk_7
begin_hunk_8_@_Z37testing_boost_array_output_conversionv:bb.a
  br i1 %.not.i.i.i131.i287, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i242, label %.lr.ph.i.i.i132.i288

.lr.ph.i.i.i132.i288:                             ; preds = %bb.abc, %.lr.ph.i.i.i132.i288
  %.01216.i.i.i133.i289 = phi i64 [ %i.byc, %.lr.ph.i.i.i132.i288 ], [ 0, %bb.abc ] ; 3 uses
  %i.bxy = getelementptr inbounds nuw [2 x i8], ptr %i.bxx, i64 %.01216.i.i.i133.i289
  %i.bxz = getelementptr inbounds nuw [2 x i8], ptr %68, i64 %.01216.i.i.i133.i289
  %i.bya = load i16, ptr %i.bxy, align 2, !tbaa !62
  %i.byb = load i16, ptr %i.bxz, align 2, !tbaa !62
  %or.cond.not.i.i134.i290 = icmp eq i16 %i.byb, %i.bya ; 2 uses
  %i.byc = add nuw nsw i64 %.01216.i.i.i133.i289, 1 ; 2 uses
  %exitcond.not.i.i.i135.i291 = icmp ne i64 %i.byc, %i.bxr
  %or.cond565.not = select i1 %or.cond.not.i.i134.i290, i1 %exitcond.not.i.i.i135.i291, i1 false
  br i1 %or.cond565.not, label %.lr.ph.i.i.i132.i288, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i242, !llvm.loop !1

_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i242: ; preds = %.lr.ph.i.i.i132.i288, %bb.abc, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i130.i241
  %i.byd = phi i1 [ false, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i130.i241 ], [ true, %bb.abc ], [ %or.cond.not.i.i134.i290, %.lr.ph.i.i.i132.i288 ]
  %i.bye = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 95, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_, i1 noundef zeroext %i.byd)
          to label %bb.abd unwind label %bb.abn   ; 0 uses

bb.abd:                                           ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.byf = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 4 uses
  store ptr %11, ptr %i.byf, align 8, !tbaa !158
  %i.byg = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.byf, ptr %i.byg, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  store i32 100, ptr %10, align 8, !tbaa !95
  %i.byh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.byf, ptr %i.byh, align 8, !tbaa !96
  %i.byi = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i16 48, ptr %i.byi, align 8, !tbaa !97
  %i.byj = getelementptr inbounds nuw i8, ptr %10, i64 18
  store i16 48, ptr %i.byj, align 2, !tbaa !98
  %i.byk = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEjDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %10)
          to label %.noexc138.i286 unwind label %bb.abo

.noexc138.i286:                                   ; preds = %bb.abd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.byl = ptrtoint ptr %i.byf to i64
  %i.bym = ptrtoint ptr %i.byk to i64
  %i.byn = sub i64 %i.byl, %i.bym
  %i.byo = icmp ult i64 %i.byn, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br i1 %i.byo, label %bb.abh, label %bb.abe

bb.abe:                                           ; preds = %.noexc138.i286
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %9, align 8, !tbaa !40
  %i.byp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @_ZTIj, ptr %i.byp, align 8, !tbaa !45
  %i.byq = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @_ZTIN5boost5arrayIDsLm3EEE, ptr %i.byq, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %9) #32
          to label %bb.abf unwind label %bb.abg

bb.abf:                                           ; preds = %bb.abe
  unreachable

bb.abg:                                           ; preds = %bb.abe
  %i.byr = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body139.i243

bb.abh:                                           ; preds = %.noexc138.i286
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_)
          to label %._crit_edge.i.i142.i246 unwind label %bb.abo

bb.abi:                                           ; preds = %.body116.i223
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_)
          to label %.invoke253.i225 unwind label %bb.abj

.invoke253.i225:                                  ; preds = %bb.abi, %bb.aap
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i118.i226 unwind label %bb.abl

bb.abj:                                           ; preds = %bb.abi
  %i.bys = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.acv unwind label %bb.acx

bb.abk:                                           ; preds = %bb.aap
  %i.byt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.acv unwind label %bb.acx

bb.abl:                                           ; preds = %.invoke253.i225
  %i.byu = landingpad { ptr, i32 }
          cleanup
  br label %bb.acv

bb.abm:                                           ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i236, %._crit_edge.i.i118.i226
  %i.byv = landingpad { ptr, i32 }
          cleanup
  br label %.body123.i227

.body123.i227:                                    ; preds = %bb.abm, %bb.aas
  %eh.lpad-body124.i228 = phi { ptr, i32 } [ %i.byv, %bb.abm ], [ %i.bwn, %bb.aas ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #31
  br label %bb.acu

bb.abn:                                           ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i242, %bb.aaw
  %i.byw = landingpad { ptr, i32 }
          cleanup
  br label %.body126.i237

.body126.i237:                                    ; preds = %bb.abn, %bb.aaz
  %eh.lpad-body127.i238 = phi { ptr, i32 } [ %i.byw, %bb.abn ], [ %i.bxp, %bb.aaz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #31
  br label %bb.acu

bb.abo:                                           ; preds = %bb.abh, %bb.abd
  %i.byx = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body139.i243

.body139.i243:                                    ; preds = %bb.abo, %bb.abg
  %eh.lpad-body140.i244 = phi { ptr, i32 } [ %i.byx, %bb.abo ], [ %i.byr, %bb.abg ] ; 2 uses
  %i.byy = extractvalue { ptr, i32 } %eh.lpad-body140.i244, 0
  %i.byz = extractvalue { ptr, i32 } %eh.lpad-body140.i244, 1
  %i.bza = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.bzb = icmp eq i32 %i.byz, %i.bza
  %i.bzc = call ptr @__cxa_begin_catch(ptr %i.byy) #31 ; 0 uses
  br i1 %i.bzb, label %bb.abp, label %bb.acg

bb.abp:                                           ; preds = %.body139.i243
  %i.bzd = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke254.i245 unwind label %bb.aci ; 0 uses

._crit_edge.i.i142.i246:                          ; preds = %.invoke254.i245, %bb.abh
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #31
  %i.bze = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 6 uses
  store ptr %i.bze, ptr %69, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bze, ptr noundef nonnull align 4 dereferenceable(12) @.str.29, i64 12, i1 false)
  %i.bzf = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 3 uses
  store i64 3, ptr %i.bzf, align 8, !tbaa !69
  %i.bzg = getelementptr inbounds nuw i8, ptr %69, i64 28
  store i32 0, ptr %i.bzg, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %70, i8 0, i64 1200, i1 false), !alias.scope !477
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31, !noalias !477
  %i.bzh = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 6 uses
  store ptr %8, ptr %i.bzh, align 8, !tbaa !161, !noalias !477
  %i.bzi = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  store ptr %i.bzh, ptr %i.bzi, align 8, !tbaa !162, !noalias !477
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !477
  store i32 100, ptr %7, align 8, !tbaa !103, !noalias !477
  %i.bzj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bzh, ptr %i.bzj, align 8, !tbaa !104, !noalias !477
  %i.bzk = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 48, ptr %i.bzk, align 8, !tbaa !105, !noalias !477
  %i.bzl = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 48, ptr %i.bzl, align 4, !tbaa !106, !noalias !477
  %i.bzm = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEjDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %.noexc147.i253 unwind label %bb.ack ; 3 uses

.noexc147.i253:                                   ; preds = %._crit_edge.i.i142.i246
  store ptr %i.bzm, ptr %i.bzh, align 8, !tbaa !161, !noalias !477
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !477
  store ptr %i.bzh, ptr %i.bzi, align 8, !tbaa !162, !noalias !477
  %i.bzn = ptrtoint ptr %i.bzh to i64
  %i.bzo = ptrtoint ptr %i.bzm to i64
  %i.bzp = sub i64 %i.bzn, %i.bzo                 ; 3 uses
  %i.bzq = icmp ult i64 %i.bzp, 1200
  br i1 %i.bzq, label %bb.abt, label %bb.abq

bb.abq:                                           ; preds = %.noexc147.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !477
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !477
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %6, align 8, !tbaa !40, !noalias !477
  %i.bzr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZTIj, ptr %i.bzr, align 8, !tbaa !45, !noalias !477
  %i.bzs = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @_ZTIN5boost5arrayIDiLm300EEE, ptr %i.bzs, align 8, !tbaa !46, !noalias !477
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %6) #32
          to label %bb.abr unwind label %bb.abs, !noalias !477

bb.abr:                                           ; preds = %bb.abq
  unreachable

bb.abs:                                           ; preds = %bb.abq
  %i.bzt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #31, !noalias !477
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !477
  br label %.body148.i247

bb.abt:                                           ; preds = %.noexc147.i253
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %70, ptr align 4 %i.bzm, i64 %i.bzp, i1 false)
  %i.bzu = getelementptr inbounds nuw i8, ptr %70, i64 %i.bzp
  store i32 0, ptr %i.bzu, align 4, !tbaa !71, !alias.scope !477
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !477
  %i.bzv = load i64, ptr %i.bzf, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i.i254 = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %70)
  %i.bzw = icmp eq i64 %i.bzv, %wcslen.i.i.i.i254
  br i1 %i.bzw, label %bb.abu, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i255

bb.abu:                                           ; preds = %bb.abt
  %i.bzx = load ptr, ptr %69, align 8, !tbaa !72
  %.not.i.i.i150.i281 = icmp eq i64 %i.bzv, 0
  br i1 %.not.i.i.i150.i281, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i255, label %.lr.ph.i.i.i151.i282

.lr.ph.i.i.i151.i282:                             ; preds = %bb.abu, %.lr.ph.i.i.i151.i282
  %.01216.i.i.i152.i283 = phi i64 [ %i.cac, %.lr.ph.i.i.i151.i282 ], [ 0, %bb.abu ] ; 3 uses
  %i.bzy = getelementptr inbounds nuw [4 x i8], ptr %i.bzx, i64 %.01216.i.i.i152.i283
  %i.bzz = getelementptr inbounds nuw [4 x i8], ptr %70, i64 %.01216.i.i.i152.i283
  %i.caa = load i32, ptr %i.bzy, align 4, !tbaa !71
  %i.cab = load i32, ptr %i.bzz, align 4, !tbaa !71
  %or.cond.not.i.i153.i284 = icmp eq i32 %i.cab, %i.caa ; 2 uses
  %i.cac = add nuw nsw i64 %.01216.i.i.i152.i283, 1 ; 2 uses
  %exitcond.not.i.i.i154.i285 = icmp ne i64 %i.cac, %i.bzv
  %or.cond566.not = select i1 %or.cond.not.i.i153.i284, i1 %exitcond.not.i.i.i154.i285, i1 false
  br i1 %or.cond566.not, label %.lr.ph.i.i.i151.i282, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i255, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i255: ; preds = %.lr.ph.i.i.i151.i282, %bb.abu, %bb.abt
  %i.cad = phi i1 [ false, %bb.abt ], [ true, %bb.abu ], [ %or.cond.not.i.i153.i284, %.lr.ph.i.i.i151.i282 ]
  %i.cae = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 108, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_, i1 noundef zeroext %i.cad)
          to label %bb.abv unwind label %bb.ack   ; 0 uses

bb.abv:                                           ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %71, i8 0, i64 1200, i1 false), !alias.scope !478
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !478
  %i.caf = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 6 uses
  store ptr %5, ptr %i.caf, align 8, !tbaa !161, !noalias !478
  %i.cag = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  store ptr %i.caf, ptr %i.cag, align 8, !tbaa !162, !noalias !478
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !478
  store i32 100, ptr %4, align 8, !tbaa !103, !noalias !478
  %i.cah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.caf, ptr %i.cah, align 8, !tbaa !104, !noalias !478
  %i.cai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 48, ptr %i.cai, align 8, !tbaa !105, !noalias !478
  %i.caj = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 48, ptr %i.caj, align 4, !tbaa !106, !noalias !478
  %i.cak = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEjDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc155.i258 unwind label %bb.acl ; 3 uses

.noexc155.i258:                                   ; preds = %bb.abv
  store ptr %i.cak, ptr %i.caf, align 8, !tbaa !161, !noalias !478
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !478
  store ptr %i.caf, ptr %i.cag, align 8, !tbaa !162, !noalias !478
  %i.cal = ptrtoint ptr %i.caf to i64
  %i.cam = ptrtoint ptr %i.cak to i64
  %i.can = sub i64 %i.cal, %i.cam                 ; 3 uses
  %i.cao = icmp ult i64 %i.can, 1200
  br i1 %i.cao, label %bb.abz, label %bb.abw

bb.abw:                                           ; preds = %.noexc155.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !478
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !478
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %3, align 8, !tbaa !40, !noalias !478
  %i.cap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZTIj, ptr %i.cap, align 8, !tbaa !45, !noalias !478
  %i.caq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @_ZTIN5boost5arrayIDiLm300EEE, ptr %i.caq, align 8, !tbaa !46, !noalias !478
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
          to label %bb.abx unwind label %bb.aby, !noalias !478

bb.abx:                                           ; preds = %bb.abw
  unreachable

bb.aby:                                           ; preds = %bb.abw
  %i.car = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #31, !noalias !478
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !478
  br label %.body156.i256

bb.abz:                                           ; preds = %.noexc155.i258
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %71, ptr align 4 %i.cak, i64 %i.can, i1 false)
  %i.cas = getelementptr inbounds nuw i8, ptr %71, i64 %i.can
  store i32 0, ptr %i.cas, align 4, !tbaa !71, !alias.scope !478
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !478
  %i.cat = load i64, ptr %i.bzf, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i159.i259 = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %71)
  %i.cau = icmp eq i64 %i.cat, %wcslen.i.i.i159.i259
  br i1 %i.cau, label %bb.aca, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i260

bb.aca:                                           ; preds = %bb.abz
  %i.cav = load ptr, ptr %69, align 8, !tbaa !72
  %.not.i.i.i160.i276 = icmp eq i64 %i.cat, 0
  br i1 %.not.i.i.i160.i276, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i260, label %.lr.ph.i.i.i161.i277

.lr.ph.i.i.i161.i277:                             ; preds = %bb.aca, %.lr.ph.i.i.i161.i277
  %.01216.i.i.i162.i278 = phi i64 [ %i.cba, %.lr.ph.i.i.i161.i277 ], [ 0, %bb.aca ] ; 3 uses
  %i.caw = getelementptr inbounds nuw [4 x i8], ptr %i.cav, i64 %.01216.i.i.i162.i278
  %i.cax = getelementptr inbounds nuw [4 x i8], ptr %71, i64 %.01216.i.i.i162.i278
  %i.cay = load i32, ptr %i.caw, align 4, !tbaa !71
  %i.caz = load i32, ptr %i.cax, align 4, !tbaa !71
  %or.cond.not.i.i163.i279 = icmp eq i32 %i.caz, %i.cay ; 2 uses
  %i.cba = add nuw nsw i64 %.01216.i.i.i162.i278, 1 ; 2 uses
  %exitcond.not.i.i.i164.i280 = icmp ne i64 %i.cba, %i.cat
  %or.cond567.not = select i1 %or.cond.not.i.i163.i279, i1 %exitcond.not.i.i.i164.i280, i1 false
  br i1 %or.cond567.not, label %.lr.ph.i.i.i161.i277, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i260, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i260: ; preds = %.lr.ph.i.i.i161.i277, %bb.aca, %bb.abz
  %i.cbb = phi i1 [ false, %bb.abz ], [ true, %bb.aca ], [ %or.cond.not.i.i163.i279, %.lr.ph.i.i.i161.i277 ]
  %i.cbc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 113, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_, i1 noundef zeroext %i.cbb)
          to label %bb.acb unwind label %bb.acl   ; 0 uses

bb.acb:                                           ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.cbd = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  store ptr %2, ptr %i.cbd, align 8, !tbaa !161
  %i.cbe = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.cbd, ptr %i.cbe, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  store i32 100, ptr %1, align 8, !tbaa !103
  %i.cbf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.cbd, ptr %i.cbf, align 8, !tbaa !104
  %i.cbg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 48, ptr %i.cbg, align 8, !tbaa !105
  %i.cbh = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 48, ptr %i.cbh, align 4, !tbaa !106
  %i.cbi = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEjDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc171.i275 unwind label %bb.acm

.noexc171.i275:                                   ; preds = %bb.acb
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.cbj = ptrtoint ptr %i.cbd to i64
  %i.cbk = ptrtoint ptr %i.cbi to i64
  %i.cbl = sub i64 %i.cbj, %i.cbk
  %i.cbm = icmp ult i64 %i.cbl, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %i.cbm, label %bb.acf, label %bb.acc

bb.acc:                                           ; preds = %.noexc171.i275
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %0, align 8, !tbaa !40
  %i.cbn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZTIj, ptr %i.cbn, align 8, !tbaa !45
  %i.cbo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZTIN5boost5arrayIDiLm3EEE, ptr %i.cbo, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
          to label %bb.acd unwind label %bb.ace

bb.acd:                                           ; preds = %bb.acc
  unreachable

bb.ace:                                           ; preds = %bb.acc
  %i.cbp = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  br label %.body172.i261

bb.acf:                                           ; preds = %.noexc171.i275
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_)
          to label %bb.aco unwind label %bb.acm

bb.acg:                                           ; preds = %.body139.i243
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_)
          to label %.invoke254.i245 unwind label %bb.ach

.invoke254.i245:                                  ; preds = %bb.acg, %bb.abp
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i142.i246 unwind label %bb.acj

bb.ach:                                           ; preds = %bb.acg
  %i.cbq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.acu unwind label %bb.acx

bb.aci:                                           ; preds = %bb.abp
  %i.cbr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.acu unwind label %bb.acx

bb.acj:                                           ; preds = %.invoke254.i245
  %i.cbs = landingpad { ptr, i32 }
          cleanup
  br label %bb.acu

bb.ack:                                           ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i255, %._crit_edge.i.i142.i246
  %i.cbt = landingpad { ptr, i32 }
          cleanup
  br label %.body148.i247

.body148.i247:                                    ; preds = %bb.ack, %bb.abs
  %eh.lpad-body149.i248 = phi { ptr, i32 } [ %i.cbt, %bb.ack ], [ %i.bzt, %bb.abs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #31
  br label %bb.act

bb.acl:                                           ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i260, %bb.abv
  %i.cbu = landingpad { ptr, i32 }
          cleanup
  br label %.body156.i256

.body156.i256:                                    ; preds = %bb.acl, %bb.aby
  %eh.lpad-body157.i257 = phi { ptr, i32 } [ %i.cbu, %bb.acl ], [ %i.car, %bb.aby ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #31
  br label %bb.act

bb.acm:                                           ; preds = %bb.acf, %bb.acb
  %i.cbv = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body172.i261

.body172.i261:                                    ; preds = %bb.acm, %bb.ace
  %eh.lpad-body173.i262 = phi { ptr, i32 } [ %i.cbv, %bb.acm ], [ %i.cbp, %bb.ace ] ; 2 uses
  %i.cbw = extractvalue { ptr, i32 } %eh.lpad-body173.i262, 0
  %i.cbx = extractvalue { ptr, i32 } %eh.lpad-body173.i262, 1
  %i.cby = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.cbz = icmp eq i32 %i.cbx, %i.cby
  %i.cca = call ptr @__cxa_begin_catch(ptr %i.cbw) #31 ; 0 uses
  br i1 %i.cbz, label %bb.acn, label %bb.acp

bb.acn:                                           ; preds = %.body172.i261
  %i.ccb = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke255.i263 unwind label %bb.acr ; 0 uses

bb.aco:                                           ; preds = %.invoke255.i263, %bb.acf
  %i.ccc = load ptr, ptr %69, align 8, !tbaa !72  ; 2 uses
  %i.ccd = icmp eq ptr %i.ccc, %i.bze
  br i1 %i.ccd, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i265, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i264

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i264: ; preds = %bb.aco
  %i.cce = load i64, ptr %i.bze, align 8, !tbaa !38
  %i.ccf = shl i64 %i.cce, 2
  %i.ccg = add i64 %i.ccf, 4
  call void @_ZdlPvm(ptr noundef %i.ccc, i64 noundef %i.ccg) #34
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i265

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i265: ; preds = %bb.aco, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #31
  %i.cch = load ptr, ptr %66, align 8, !tbaa !64  ; 2 uses
  %i.cci = icmp eq ptr %i.cch, %i.bvy
  br i1 %i.cci, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i267, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i266

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i266: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i265
  %i.ccj = load i64, ptr %i.bvy, align 8, !tbaa !38
  %i.cck = shl i64 %i.ccj, 1
  %i.ccl = add i64 %i.cck, 2
  call void @_ZdlPvm(ptr noundef %i.cch, i64 noundef %i.ccl) #34
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i267

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i267: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i265, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #31
  %i.ccm = load ptr, ptr %63, align 8, !tbaa !52  ; 2 uses
  %i.ccn = icmp eq ptr %i.ccm, %i.btb
  br i1 %i.ccn, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i269, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i268

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i268: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i267
  %i.cco = load i64, ptr %i.btb, align 8, !tbaa !38
  %i.ccp = shl i64 %i.cco, 2
  %i.ccq = add i64 %i.ccp, 4
  call void @_ZdlPvm(ptr noundef %i.ccm, i64 noundef %i.ccq) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i269

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i269: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i267, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #31
  %i.ccr = load ptr, ptr %56, align 8, !tbaa !73  ; 2 uses
  %i.ccs = icmp eq ptr %i.ccr, %i.bmm
  br i1 %i.ccs, label %_ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i269
  %i.cct = load i64, ptr %i.bmm, align 8, !tbaa !38
  %i.ccu = add i64 %i.cct, 1
  call void @_ZdlPvm(ptr noundef %i.ccr, i64 noundef %i.ccu) #34
  br label %_ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_.exit

bb.acp:                                           ; preds = %.body172.i261
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueIN5boost5arrayEjEvT0_)
          to label %.invoke255.i263 unwind label %bb.acq

.invoke255.i263:                                  ; preds = %bb.acp, %bb.acn
  invoke void @__cxa_end_catch()
          to label %bb.aco unwind label %bb.acs

bb.acq:                                           ; preds = %bb.acp
end_hunk_8
begin_hunk_9_@_Z35testing_std_array_output_conversionv:bb.a

bb.an:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(4) %308, ptr nonnull align 4 dereferenceable(4) %i.ad, i64 %i.cq, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %308, i64 %i.cq
  store i8 0, ptr %i.cv, align 1, !tbaa !38
  %i.cw = load i32, ptr %308, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %308)
  store i32 %i.cw, ptr %320, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #31
  store ptr %320, ptr %i.ai, align 8, !tbaa !47
  %i.cx = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbT_PKcSC_SC_iSC_RKT0_RKT1_(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 153, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %315)
          to label %bb.ao unwind label %bb.ba     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %321) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %306)
  store i32 0, ptr %306, align 4
  %i.cy = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(4) %i.ad) #31 ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 4
  br i1 %i.cz, label %bb.ar, label %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIaLm4EEA4_cEEbRKT0_RT_.exit.i99.i

_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIaLm4EEA4_cEEbRKT0_RT_.exit.i99.i: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %305) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %305, align 8, !tbaa !40
  %i.da = getelementptr inbounds nuw i8, ptr %305, i64 8
  store ptr @_ZTIA4_c, ptr %i.da, align 8, !tbaa !45
  %i.db = getelementptr inbounds nuw i8, ptr %305, i64 16
  store ptr @_ZTISt5arrayIaLm4EE, ptr %i.db, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %305) #32
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIaLm4EEA4_cEEbRKT0_RT_.exit.i99.i
  unreachable

bb.aq:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIaLm4EEA4_cEEbRKT0_RT_.exit.i99.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %305) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %305) #31
  br label %.body100.i

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(4) %306, ptr nonnull align 4 dereferenceable(4) %i.ad, i64 %i.cy, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %306, i64 %i.cy
  store i8 0, ptr %i.dd, align 1, !tbaa !38
  %i.de = load i32, ptr %306, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %306)
  store i32 %i.de, ptr %321, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #31
  store ptr %321, ptr %i.aj, align 8, !tbaa !47
  %i.df = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbT_S4_S4_S4_iS4_RKT0_RKT1_(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 155, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %315)
          to label %bb.as unwind label %bb.bb     ; 0 uses

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #31
  %i.dg = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(4) %i.ad) #31
  %i.dh = icmp ult i64 %i.dg, 3
  br i1 %i.dh, label %bb.av, label %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIaLm3EEA4_cEEbRKT0_RT_.exit.i.i

_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIaLm3EEA4_cEEbRKT0_RT_.exit.i.i: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %304) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %304, align 8, !tbaa !40
  %i.di = getelementptr inbounds nuw i8, ptr %304, i64 8
  store ptr @_ZTIA4_c, ptr %i.di, align 8, !tbaa !45
  %i.dj = getelementptr inbounds nuw i8, ptr %304, i64 16
  store ptr @_ZTISt5arrayIaLm3EE, ptr %i.dj, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %304) #32
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIaLm3EEA4_cEEbRKT0_RT_.exit.i.i
  unreachable

bb.au:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIaLm3EEA4_cEEbRKT0_RT_.exit.i.i
  %i.dk = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %304) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %304) #31
  br label %.body103.i

bb.av:                                            ; preds = %bb.as
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 156, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv)
          to label %._crit_edge.i.i105.i unwind label %bb.bc

bb.aw:                                            ; preds = %.body95.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 148, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv)
          to label %.invoke255.i unwind label %bb.ax

.invoke255.i:                                     ; preds = %bb.aw, %bb.aj
  invoke void @__cxa_end_catch()
          to label %bb.ak unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body90.i unwind label %bb.el

bb.ay:                                            ; preds = %bb.aj
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body90.i unwind label %bb.el

bb.az:                                            ; preds = %.invoke255.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body90.i

.body90.i:                                        ; preds = %bb.az, %bb.ay, %bb.ax, %bb.ah, %bb.w
  %.pn55.pn.i = phi { ptr, i32 } [ %i.ci, %bb.ah ], [ %i.dm, %bb.ay ], [ %i.dl, %bb.ax ], [ %i.dn, %bb.az ], [ %i.by, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %319) #31
  br label %.body87.i

.body87.i:                                        ; preds = %.body90.i, %bb.ag, %bb.s
  %.pn55.pn.pn.i = phi { ptr, i32 } [ %.pn55.pn.i, %.body90.i ], [ %i.ch, %bb.ag ], [ %i.br, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %318) #31
  br label %bb.ek

bb.ba:                                            ; preds = %bb.an
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #31
  br label %.body97.i

bb.bb:                                            ; preds = %bb.ar
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #31
  br label %.body100.i

bb.bc:                                            ; preds = %bb.av
  %i.dq = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body103.i

.body103.i:                                       ; preds = %bb.bc, %bb.au
  %eh.lpad-body104.i = phi { ptr, i32 } [ %i.dq, %bb.bc ], [ %i.dk, %bb.au ] ; 2 uses
  %i.dr = extractvalue { ptr, i32 } %eh.lpad-body104.i, 0
  %i.ds = extractvalue { ptr, i32 } %eh.lpad-body104.i, 1
  %i.dt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.du = icmp eq i32 %i.ds, %i.dt
  %i.dv = call ptr @__cxa_begin_catch(ptr %i.dr) #31 ; 0 uses
  br i1 %i.du, label %bb.bd, label %bb.ci

bb.bd:                                            ; preds = %.body103.i
  %i.dw = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke256.i unwind label %bb.ck ; 0 uses

._crit_edge.i.i105.i:                             ; preds = %.invoke256.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %321) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %320) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %322) #31
  %i.dx = getelementptr inbounds nuw i8, ptr %322, i64 16 ; 6 uses
  store ptr %i.dx, ptr %322, align 8, !tbaa !50
  %i.dy = call ptr @wmemcpy(ptr noundef nonnull %i.dx, ptr noundef nonnull @.str.29, i64 noundef 3) #31 ; 0 uses
  %.pre7.i.i.i = load ptr, ptr %322, align 8, !tbaa !52
  %i.dz = getelementptr inbounds nuw i8, ptr %322, i64 8 ; 5 uses
  store i64 3, ptr %i.dz, align 8, !tbaa !53
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %323) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %303)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %303, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #31
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !47
  %i.eb = invoke noundef zeroext i1 @_ZN5boost6detail22lexical_converter_implISt5arrayIwLm4EEPKcE11try_convertERKS5_RS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 4 dereferenceable(16) %303)
          to label %.noexc108.i unwind label %bb.cm

.noexc108.i:                                      ; preds = %._crit_edge.i.i105.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #31
  br i1 %i.eb, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %.noexc108.i
  call void @llvm.lifetime.start.p0(ptr nonnull %302) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %302, align 8, !tbaa !40
  %i.ec = getelementptr inbounds nuw i8, ptr %302, i64 8
  store ptr @_ZTIA4_c, ptr %i.ec, align 8, !tbaa !45
  %i.ed = getelementptr inbounds nuw i8, ptr %302, i64 16
  store ptr @_ZTISt5arrayIwLm4EE, ptr %i.ed, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %302) #32
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %302) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %302) #31
  br label %.body109.i

bb.bh:                                            ; preds = %.noexc108.i
  %i.ef = load <2 x i64>, ptr %303, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %303)
  store <2 x i64> %i.ef, ptr %323, align 16
  %i.eg = load i64, ptr %i.dz, align 8, !tbaa !53 ; 3 uses
  %i.eh = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %323) #33
  %i.ei = icmp eq i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.bi, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.ej = icmp eq i64 %i.eg, 0
  br i1 %i.ej, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ek = load ptr, ptr %322, align 8, !tbaa !52
  %i.el = call i32 @wmemcmp(ptr noundef %i.ek, ptr noundef nonnull %323, i64 noundef %i.eg) #33
  %i.em = icmp eq i32 %i.el, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i: ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.en = phi i1 [ false, %bb.bh ], [ %i.em, %bb.bj ], [ true, %bb.bi ]
  %i.eo = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv, i1 noundef zeroext %i.en)
          to label %bb.bk unwind label %bb.cm     ; 0 uses

bb.bk:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %324) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %301)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %301, i8 0, i64 16, i1 false)
  %i.ep = load i64, ptr %i.dz, align 8, !tbaa !53 ; 5 uses
  %i.eq = icmp ult i64 %i.ep, 4
  br i1 %i.eq, label %bb.bn, label %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIwLm4EENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i.i

_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIwLm4EENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i.i: ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %300) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %300, align 8, !tbaa !40
  %i.er = getelementptr inbounds nuw i8, ptr %300, i64 8
  store ptr @_ZTINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE, ptr %i.er, align 8, !tbaa !45
  %i.es = getelementptr inbounds nuw i8, ptr %300, i64 16
  store ptr @_ZTISt5arrayIwLm4EE, ptr %i.es, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %300) #32
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIwLm4EENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i.i
  unreachable

bb.bm:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIwLm4EENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %300) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %300) #31
  br label %.body116.i

bb.bn:                                            ; preds = %bb.bk
  %i.eu = load ptr, ptr %322, align 8, !tbaa !52  ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ep, 2        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(16) %301, ptr align 4 %i.eu, i64 %.idx.i.i.i.i, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %301, i64 %.idx.i.i.i.i
  store i32 0, ptr %i.ev, align 4, !tbaa !55
  %i.ew = load <2 x i64>, ptr %301, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %301)
  store <2 x i64> %i.ew, ptr %324, align 16
  %i.ex = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %324) #33
  %i.ey = icmp eq i64 %i.ep, %i.ex
  br i1 %i.ey, label %bb.bo, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit118.i

bb.bo:                                            ; preds = %bb.bn
  %i.ez = icmp eq i64 %i.ep, 0
  br i1 %i.ez, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit118.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fa = call i32 @wmemcmp(ptr noundef %i.eu, ptr noundef nonnull %324, i64 noundef %i.ep) #33
  %i.fb = icmp eq i32 %i.fa, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit118.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit118.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.fc = phi i1 [ false, %bb.bn ], [ %i.fb, %bb.bp ], [ true, %bb.bo ]
  %i.fd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 168, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv, i1 noundef zeroext %i.fc)
          to label %bb.bq unwind label %bb.cn     ; 0 uses

bb.bq:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit118.i
  call void @llvm.lifetime.end.p0(ptr nonnull %324) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %323) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %325) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %299)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %299, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #31
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !47
  %i.fe = invoke noundef zeroext i1 @_ZN5boost6detail22lexical_converter_implISt5arrayIwLm4EEPKcE11try_convertERKS5_RS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %299)
          to label %.noexc124.i unwind label %bb.co

.noexc124.i:                                      ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #31
  br i1 %i.fe, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %.noexc124.i
  call void @llvm.lifetime.start.p0(ptr nonnull %298) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %298, align 8, !tbaa !40
  %i.ff = getelementptr inbounds nuw i8, ptr %298, i64 8
  store ptr @_ZTIA4_c, ptr %i.ff, align 8, !tbaa !45
  %i.fg = getelementptr inbounds nuw i8, ptr %298, i64 16
  store ptr @_ZTISt5arrayIwLm4EE, ptr %i.fg, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %298) #32
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %298) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %298) #31
  br label %.body125.i

bb.bu:                                            ; preds = %.noexc124.i
  %i.fi = load <2 x i64>, ptr %299, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %299)
  store <2 x i64> %i.fi, ptr %325, align 16
  %i.fj = load i64, ptr %i.dz, align 8, !tbaa !53 ; 3 uses
  %i.fk = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %325) #33
  %i.fl = icmp eq i64 %i.fj, %i.fk
  br i1 %i.fl, label %bb.bv, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit128.i

bb.bv:                                            ; preds = %bb.bu
  %i.fm = icmp eq i64 %i.fj, 0
  br i1 %i.fm, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit128.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fn = load ptr, ptr %322, align 8, !tbaa !52
  %i.fo = call i32 @wmemcmp(ptr noundef %i.fn, ptr noundef nonnull %325, i64 noundef %i.fj) #33
  %i.fp = icmp eq i32 %i.fo, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit128.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit128.i: ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.fq = phi i1 [ false, %bb.bu ], [ %i.fp, %bb.bw ], [ true, %bb.bv ]
  %i.fr = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 173, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv, i1 noundef zeroext %i.fq)
          to label %bb.bx unwind label %bb.co     ; 0 uses

bb.bx:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit128.i
  call void @llvm.lifetime.start.p0(ptr nonnull %326) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %297)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %297, i8 0, i64 16, i1 false)
  %i.fs = load i64, ptr %i.dz, align 8, !tbaa !53 ; 5 uses
  %i.ft = icmp ult i64 %i.fs, 4
  br i1 %i.ft, label %bb.ca, label %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIwLm4EENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i129.i

_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIwLm4EENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i129.i: ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %296) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %296, align 8, !tbaa !40
  %i.fu = getelementptr inbounds nuw i8, ptr %296, i64 8
  store ptr @_ZTINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE, ptr %i.fu, align 8, !tbaa !45
  %i.fv = getelementptr inbounds nuw i8, ptr %296, i64 16
  store ptr @_ZTISt5arrayIwLm4EE, ptr %i.fv, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %296) #32
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIwLm4EENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i129.i
  unreachable

bb.bz:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIwLm4EENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbRKT0_RT_.exit.i129.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %296) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %296) #31
  br label %.body136.i

bb.ca:                                            ; preds = %bb.bx
  %i.fx = load ptr, ptr %322, align 8, !tbaa !52  ; 2 uses
  %.idx.i.i.i130.i = shl nuw nsw i64 %i.fs, 2     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(16) %297, ptr align 4 %i.fx, i64 %.idx.i.i.i130.i, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %297, i64 %.idx.i.i.i130.i
  store i32 0, ptr %i.fy, align 4, !tbaa !55
  %i.fz = load <2 x i64>, ptr %297, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %297)
  store <2 x i64> %i.fz, ptr %326, align 16
  %i.ga = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %326) #33
  %i.gb = icmp eq i64 %i.fs, %i.ga
  br i1 %i.gb, label %bb.cb, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit139.i

bb.cb:                                            ; preds = %bb.ca
  %i.gc = icmp eq i64 %i.fs, 0
  br i1 %i.gc, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit139.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gd = call i32 @wmemcmp(ptr noundef %i.fx, ptr noundef nonnull %326, i64 noundef %i.fs) #33
  %i.ge = icmp eq i32 %i.gd, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit139.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit139.i: ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.gf = phi i1 [ false, %bb.ca ], [ %i.ge, %bb.cc ], [ true, %bb.cb ]
  %i.gg = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv, i1 noundef zeroext %i.gf)
          to label %bb.cd unwind label %bb.cp     ; 0 uses

bb.cd:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit139.i
  call void @llvm.lifetime.end.p0(ptr nonnull %326) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %325) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %295)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %295, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #31
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !47
  %i.gh = invoke noundef zeroext i1 @_ZN5boost6detail22lexical_converter_implISt5arrayIwLm3EEPKcE11try_convertERKS5_RS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 4 dereferenceable(12) %295)
          to label %.noexc142.i unwind label %bb.cq

.noexc142.i:                                      ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #31
  br i1 %i.gh, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %.noexc142.i
  call void @llvm.lifetime.start.p0(ptr nonnull %294) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %294, align 8, !tbaa !40
  %i.gi = getelementptr inbounds nuw i8, ptr %294, i64 8
  store ptr @_ZTIA4_c, ptr %i.gi, align 8, !tbaa !45
  %i.gj = getelementptr inbounds nuw i8, ptr %294, i64 16
  store ptr @_ZTISt5arrayIwLm3EE, ptr %i.gj, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %294) #32
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.gk = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %294) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %294) #31
  br label %.body143.i

bb.ch:                                            ; preds = %.noexc142.i
  call void @llvm.lifetime.end.p0(ptr nonnull %295)
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 178, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv)
          to label %._crit_edge.i.i145.i unwind label %bb.cq

bb.ci:                                            ; preds = %.body103.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 156, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv)
          to label %.invoke256.i unwind label %bb.cj

.invoke256.i:                                     ; preds = %bb.ci, %bb.bd
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i105.i unwind label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body100.i unwind label %bb.el

bb.ck:                                            ; preds = %bb.bd
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body100.i unwind label %bb.el

bb.cl:                                            ; preds = %.invoke256.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body100.i

.body100.i:                                       ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.bb, %bb.aq
  %.pn59.pn.i = phi { ptr, i32 } [ %i.dp, %bb.bb ], [ %i.gm, %bb.ck ], [ %i.gl, %bb.cj ], [ %i.gn, %bb.cl ], [ %i.dc, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %321) #31
  br label %.body97.i

.body97.i:                                        ; preds = %.body100.i, %bb.ba, %bb.am
  %.pn59.pn.pn.i = phi { ptr, i32 } [ %.pn59.pn.i, %.body100.i ], [ %i.do, %bb.ba ], [ %i.cu, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %320) #31
  br label %bb.ek

bb.cm:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i, %._crit_edge.i.i105.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body109.i

bb.cn:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit118.i
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body116.i

.body116.i:                                       ; preds = %bb.cn, %bb.bm
  %eh.lpad-body117.i = phi { ptr, i32 } [ %i.gp, %bb.cn ], [ %i.et, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %324) #31
  br label %.body109.i

.body109.i:                                       ; preds = %.body116.i, %bb.cm, %bb.bg
  %.pn63.i = phi { ptr, i32 } [ %eh.lpad-body117.i, %.body116.i ], [ %i.go, %bb.cm ], [ %i.ee, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %323) #31
  br label %bb.ej

bb.co:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit128.i, %bb.bq
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body125.i

bb.cp:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit139.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

.body136.i:                                       ; preds = %bb.cp, %bb.bz
  %eh.lpad-body137.i = phi { ptr, i32 } [ %i.gr, %bb.cp ], [ %i.fw, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %326) #31
  br label %.body125.i

.body125.i:                                       ; preds = %.body136.i, %bb.co, %bb.bt
  %.pn65.i = phi { ptr, i32 } [ %eh.lpad-body137.i, %.body136.i ], [ %i.gq, %bb.co ], [ %i.fh, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %325) #31
  br label %bb.ej

bb.cq:                                            ; preds = %bb.ch, %bb.cd
  %i.gs = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body143.i

.body143.i:                                       ; preds = %bb.cq, %bb.cg
  %eh.lpad-body144.i = phi { ptr, i32 } [ %i.gs, %bb.cq ], [ %i.gk, %bb.cg ] ; 2 uses
  %i.gt = extractvalue { ptr, i32 } %eh.lpad-body144.i, 0
  %i.gu = extractvalue { ptr, i32 } %eh.lpad-body144.i, 1
  %i.gv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.gw = icmp eq i32 %i.gu, %i.gv
  %i.gx = call ptr @__cxa_begin_catch(ptr %i.gt) #31 ; 0 uses
  br i1 %i.gw, label %bb.cr, label %bb.de

bb.cr:                                            ; preds = %.body143.i
  %i.gy = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke261.i unwind label %bb.dg ; 0 uses

._crit_edge.i.i145.i:                             ; preds = %.invoke261.i, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %327) #31
  %i.gz = getelementptr inbounds nuw i8, ptr %327, i64 16 ; 6 uses
  store ptr %i.gz, ptr %327, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.gz, ptr noundef nonnull align 2 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.ha = getelementptr inbounds nuw i8, ptr %327, i64 8 ; 2 uses
  store i64 3, ptr %i.ha, align 8, !tbaa !60
  %i.hb = getelementptr inbounds nuw i8, ptr %327, i64 22
  store i16 0, ptr %i.hb, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %328) #31
  %i.hc = getelementptr inbounds nuw i8, ptr %328, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(592) %i.hc, i8 0, i64 592, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %328, ptr noundef nonnull align 2 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %328, i64 6
  store i16 0, ptr %i.hd, align 2, !tbaa !62, !alias.scope !579
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %._crit_edge.i.i145.i
  %.0.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i145.i ], [ %i.hh, %bb.cs ] ; 3 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %328, i64 %.0.i.i.i.i
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !62
  %i.hg = icmp eq i16 %i.hf, 0
  %i.hh = add nuw nsw i64 %.0.i.i.i.i, 1
  br i1 %i.hg, label %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i.i, label %bb.cs, !llvm.loop !0

_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i.i:    ; preds = %bb.cs
  %i.hi = icmp eq i64 %.0.i.i.i.i, 3
  %i.hj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 194, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv, i1 noundef zeroext %i.hi)
          to label %bb.ct unwind label %.body150.i ; 0 uses

bb.ct:                                            ; preds = %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %328) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %329) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(600) %329, i8 0, i64 600, i1 false), !alias.scope !580
  %i.hk = load i64, ptr %i.ha, align 8, !tbaa !60, !noalias !580 ; 5 uses
  %i.hl = icmp ult i64 %i.hk, 300
  br i1 %i.hl, label %bb.cw, label %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIDsLm300EENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEbRKT0_RT_.exit.i152.i

_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIDsLm300EENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEbRKT0_RT_.exit.i152.i: ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %293) #31, !noalias !580
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %293, align 8, !tbaa !40, !noalias !580
  %i.hm = getelementptr inbounds nuw i8, ptr %293, i64 8
  store ptr @_ZTINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE, ptr %i.hm, align 8, !tbaa !45, !noalias !580
  %i.hn = getelementptr inbounds nuw i8, ptr %293, i64 16
  store ptr @_ZTISt5arrayIDsLm300EE, ptr %i.hn, align 8, !tbaa !46, !noalias !580
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %293) #32
          to label %bb.cu unwind label %bb.cv, !noalias !580

bb.cu:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIDsLm300EENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEbRKT0_RT_.exit.i152.i
  unreachable

bb.cv:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIDsLm300EENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEbRKT0_RT_.exit.i152.i
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %293) #31, !noalias !580
  call void @llvm.lifetime.end.p0(ptr nonnull %293) #31, !noalias !580
  br label %.body154.i

bb.cw:                                            ; preds = %bb.ct
  %i.hp = load ptr, ptr %327, align 8, !tbaa !64, !noalias !580 ; 2 uses
  %.idx.i.i.i153.i = shl nuw nsw i64 %i.hk, 1     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 dereferenceable(600) %329, ptr align 2 %i.hp, i64 %.idx.i.i.i153.i, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %329, i64 %.idx.i.i.i153.i
  store i16 0, ptr %i.hq, align 2, !tbaa !62, !alias.scope !580
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.0.i.i.i157.i = phi i64 [ 0, %bb.cw ], [ %i.hu, %bb.cx ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %329, i64 %.0.i.i.i157.i
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !62
  %i.ht = icmp eq i16 %i.hs, 0
  %i.hu = add nuw nsw i64 %.0.i.i.i157.i, 1
  br i1 %i.ht, label %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i158.i, label %bb.cx, !llvm.loop !0

_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i158.i: ; preds = %bb.cx
  %i.hv = icmp eq i64 %i.hk, %.0.i.i.i157.i
  br i1 %i.hv, label %bb.cy, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit164.i

bb.cy:                                            ; preds = %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i158.i
  %.not.i.i.i159.i = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i159.i, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit164.i, label %.lr.ph.i.i.i160.i

.lr.ph.i.i.i160.i:                                ; preds = %bb.cy, %.lr.ph.i.i.i160.i
  %.01216.i.i.i161.i = phi i64 [ %i.ia, %.lr.ph.i.i.i160.i ], [ 0, %bb.cy ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %.01216.i.i.i161.i
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %329, i64 %.01216.i.i.i161.i
  %i.hy = load i16, ptr %i.hw, align 2, !tbaa !62
  %i.hz = load i16, ptr %i.hx, align 2, !tbaa !62
  %or.cond.not.i.i162.i = icmp eq i16 %i.hz, %i.hy ; 2 uses
  %i.ia = add nuw nsw i64 %.01216.i.i.i161.i, 1   ; 2 uses
  %exitcond.not.i.i.i163.i = icmp ne i64 %i.ia, %i.hk
  %or.cond.not = select i1 %or.cond.not.i.i162.i, i1 %exitcond.not.i.i.i163.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i160.i, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit164.i, !llvm.loop !1

_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit164.i: ; preds = %.lr.ph.i.i.i160.i, %bb.cy, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i158.i
  %i.ib = phi i1 [ false, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i158.i ], [ true, %bb.cy ], [ %or.cond.not.i.i162.i, %.lr.ph.i.i.i160.i ]
  %i.ic = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 203, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv, i1 noundef zeroext %i.ib)
          to label %bb.cz unwind label %bb.di     ; 0 uses

bb.cz:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit164.i
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %292)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %292, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #31
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !47
  %i.id = invoke noundef zeroext i1 @_ZN5boost6detail22lexical_converter_implISt5arrayIDsLm3EEPKcE11try_convertERKS5_RS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 2 dereferenceable(6) %292)
          to label %.noexc166.i unwind label %bb.dj

.noexc166.i:                                      ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #31
  br i1 %i.id, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %.noexc166.i
  call void @llvm.lifetime.start.p0(ptr nonnull %291) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %291, align 8, !tbaa !40
  %i.ie = getelementptr inbounds nuw i8, ptr %291, i64 8
  store ptr @_ZTIA4_c, ptr %i.ie, align 8, !tbaa !45
  %i.if = getelementptr inbounds nuw i8, ptr %291, i64 16
  store ptr @_ZTISt5arrayIDsLm3EE, ptr %i.if, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %291) #32
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.ig = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %291) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %291) #31
  br label %.body167.i

bb.dd:                                            ; preds = %.noexc166.i
  call void @llvm.lifetime.end.p0(ptr nonnull %292)
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 207, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv)
          to label %._crit_edge.i.i170.i unwind label %bb.dj

bb.de:                                            ; preds = %.body143.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 178, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv)
          to label %.invoke261.i unwind label %bb.df

.invoke261.i:                                     ; preds = %bb.de, %bb.cr
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i145.i unwind label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ej unwind label %bb.el

bb.dg:                                            ; preds = %bb.cr
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ej unwind label %bb.el

bb.dh:                                            ; preds = %.invoke261.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

.body150.i:                                       ; preds = %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i.i
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %328) #31
  br label %bb.ei

bb.di:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit164.i
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body154.i

.body154.i:                                       ; preds = %bb.di, %bb.cv
  %eh.lpad-body155.i = phi { ptr, i32 } [ %i.il, %bb.di ], [ %i.ho, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #31
  br label %bb.ei

bb.dj:                                            ; preds = %bb.dd, %bb.cz
  %i.im = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body167.i

.body167.i:                                       ; preds = %bb.dj, %bb.dc
  %eh.lpad-body168.i = phi { ptr, i32 } [ %i.im, %bb.dj ], [ %i.ig, %bb.dc ] ; 2 uses
  %i.in = extractvalue { ptr, i32 } %eh.lpad-body168.i, 0
  %i.io = extractvalue { ptr, i32 } %eh.lpad-body168.i, 1
  %i.ip = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.iq = icmp eq i32 %i.io, %i.ip
  %i.ir = call ptr @__cxa_begin_catch(ptr %i.in) #31 ; 0 uses
  br i1 %i.iq, label %bb.dk, label %bb.dv

bb.dk:                                            ; preds = %.body167.i
  %i.is = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke267.i unwind label %bb.dx ; 0 uses

._crit_edge.i.i170.i:                             ; preds = %.invoke267.i, %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %330) #31
  %i.it = getelementptr inbounds nuw i8, ptr %330, i64 16 ; 6 uses
  store ptr %i.it, ptr %330, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.it, ptr noundef nonnull align 4 dereferenceable(12) @.str.29, i64 12, i1 false)
  %i.iu = getelementptr inbounds nuw i8, ptr %330, i64 8 ; 2 uses
  store i64 3, ptr %i.iu, align 8, !tbaa !69
  %i.iv = getelementptr inbounds nuw i8, ptr %330, i64 28
  store i32 0, ptr %i.iv, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %331) #31
  %i.iw = getelementptr inbounds nuw i8, ptr %331, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1184) %i.iw, i8 0, i64 1184, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %331, ptr noundef nonnull align 4 dereferenceable(12) @.str.29, i64 12, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %331, i64 12
  store i32 0, ptr %i.ix, align 4, !tbaa !71, !alias.scope !581
  %wcslen.i.i.i.i = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %331)
  %i.iy = icmp eq i64 %wcslen.i.i.i.i, 3
  %i.iz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 221, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv, i1 noundef zeroext %i.iy)
          to label %bb.dl unwind label %.body176.i ; 0 uses

bb.dl:                                            ; preds = %._crit_edge.i.i170.i
  call void @llvm.lifetime.end.p0(ptr nonnull %331) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %332) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %332, i8 0, i64 1200, i1 false), !alias.scope !582
  %i.ja = load i64, ptr %i.iu, align 8, !tbaa !69, !noalias !582 ; 5 uses
  %i.jb = icmp ult i64 %i.ja, 300
  br i1 %i.jb, label %bb.do, label %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIDiLm300EENSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEEbRKT0_RT_.exit.i183.i

_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIDiLm300EENSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEEbRKT0_RT_.exit.i183.i: ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %290) #31, !noalias !582
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %290, align 8, !tbaa !40, !noalias !582
  %i.jc = getelementptr inbounds nuw i8, ptr %290, i64 8
  store ptr @_ZTINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE, ptr %i.jc, align 8, !tbaa !45, !noalias !582
  %i.jd = getelementptr inbounds nuw i8, ptr %290, i64 16
  store ptr @_ZTISt5arrayIDiLm300EE, ptr %i.jd, align 8, !tbaa !46, !noalias !582
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %290) #32
          to label %bb.dm unwind label %bb.dn, !noalias !582

bb.dm:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIDiLm300EENSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEEbRKT0_RT_.exit.i183.i
  unreachable

bb.dn:                                            ; preds = %_ZN5boost10conversion6detail19try_lexical_convertISt5arrayIDiLm300EENSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEEbRKT0_RT_.exit.i183.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %290) #31, !noalias !582
  call void @llvm.lifetime.end.p0(ptr nonnull %290) #31, !noalias !582
  br label %.body185.i

bb.do:                                            ; preds = %bb.dl
  %i.jf = load ptr, ptr %330, align 8, !tbaa !72, !noalias !582 ; 2 uses
  %.idx.i.i.i184.i = shl nuw nsw i64 %i.ja, 2     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %332, ptr align 4 %i.jf, i64 %.idx.i.i.i184.i, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %332, i64 %.idx.i.i.i184.i
  store i32 0, ptr %i.jg, align 4, !tbaa !71, !alias.scope !582
  %wcslen.i.i.i188.i = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %332)
  %i.jh = icmp eq i64 %i.ja, %wcslen.i.i.i188.i
  br i1 %i.jh, label %bb.dp, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit194.i

bb.dp:                                            ; preds = %bb.do
  %.not.i.i.i189.i = icmp eq i64 %i.ja, 0
  br i1 %.not.i.i.i189.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit194.i, label %.lr.ph.i.i.i190.i

.lr.ph.i.i.i190.i:                                ; preds = %bb.dp, %.lr.ph.i.i.i190.i
  %.01216.i.i.i191.i = phi i64 [ %i.jm, %.lr.ph.i.i.i190.i ], [ 0, %bb.dp ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %.01216.i.i.i191.i
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %332, i64 %.01216.i.i.i191.i
  %i.jk = load i32, ptr %i.ji, align 4, !tbaa !71
  %i.jl = load i32, ptr %i.jj, align 4, !tbaa !71
  %or.cond.not.i.i192.i = icmp eq i32 %i.jl, %i.jk ; 2 uses
  %i.jm = add nuw nsw i64 %.01216.i.i.i191.i, 1   ; 2 uses
  %exitcond.not.i.i.i193.i = icmp ne i64 %i.jm, %i.ja
  %or.cond551.not = select i1 %or.cond.not.i.i192.i, i1 %exitcond.not.i.i.i193.i, i1 false
  br i1 %or.cond551.not, label %.lr.ph.i.i.i190.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit194.i, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit194.i: ; preds = %.lr.ph.i.i.i190.i, %bb.dp, %bb.do
  %i.jn = phi i1 [ false, %bb.do ], [ true, %bb.dp ], [ %or.cond.not.i.i192.i, %.lr.ph.i.i.i190.i ]
  %i.jo = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 230, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv, i1 noundef zeroext %i.jn)
          to label %bb.dq unwind label %bb.dz     ; 0 uses

bb.dq:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit194.i
  call void @llvm.lifetime.end.p0(ptr nonnull %332) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %289)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %289, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #31
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !47
  %i.jp = invoke noundef zeroext i1 @_ZN5boost6detail22lexical_converter_implISt5arrayIDiLm3EEPKcE11try_convertERKS5_RS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 4 dereferenceable(12) %289)
          to label %.noexc200.i unwind label %bb.ea

.noexc200.i:                                      ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #31
  br i1 %i.jp, label %bb.du, label %bb.dr

bb.dr:                                            ; preds = %.noexc200.i
  call void @llvm.lifetime.start.p0(ptr nonnull %288) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %288, align 8, !tbaa !40
  %i.jq = getelementptr inbounds nuw i8, ptr %288, i64 8
  store ptr @_ZTIA4_c, ptr %i.jq, align 8, !tbaa !45
  %i.jr = getelementptr inbounds nuw i8, ptr %288, i64 16
  store ptr @_ZTISt5arrayIDiLm3EE, ptr %i.jr, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %288) #32
          to label %bb.ds unwind label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  unreachable

bb.dt:                                            ; preds = %bb.dr
  %i.js = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %288) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %288) #31
  br label %.body201.i

bb.du:                                            ; preds = %.noexc200.i
  call void @llvm.lifetime.end.p0(ptr nonnull %289)
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 234, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv)
          to label %bb.ec unwind label %bb.ea

bb.dv:                                            ; preds = %.body167.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 207, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv)
          to label %.invoke267.i unwind label %bb.dw

.invoke267.i:                                     ; preds = %bb.dv, %bb.dk
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i170.i unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ei unwind label %bb.el

bb.dx:                                            ; preds = %bb.dk
  %i.ju = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ei unwind label %bb.el

bb.dy:                                            ; preds = %.invoke267.i
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

.body176.i:                                       ; preds = %._crit_edge.i.i170.i
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %331) #31
  br label %bb.eh

bb.dz:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit194.i
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %.body185.i

.body185.i:                                       ; preds = %bb.dz, %bb.dn
  %eh.lpad-body186.i = phi { ptr, i32 } [ %i.jx, %bb.dz ], [ %i.je, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %332) #31
  br label %bb.eh

bb.ea:                                            ; preds = %bb.du, %bb.dq
  %i.jy = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body201.i

.body201.i:                                       ; preds = %bb.ea, %bb.dt
  %eh.lpad-body202.i = phi { ptr, i32 } [ %i.jy, %bb.ea ], [ %i.js, %bb.dt ] ; 2 uses
  %i.jz = extractvalue { ptr, i32 } %eh.lpad-body202.i, 0
  %i.ka = extractvalue { ptr, i32 } %eh.lpad-body202.i, 1
  %i.kb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.kc = icmp eq i32 %i.ka, %i.kb
  %i.kd = call ptr @__cxa_begin_catch(ptr %i.jz) #31 ; 0 uses
  br i1 %i.kc, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %.body201.i
  %i.ke = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke268.i unwind label %bb.ef ; 0 uses

bb.ec:                                            ; preds = %.invoke268.i, %bb.du
  %i.kf = load ptr, ptr %330, align 8, !tbaa !72  ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.it
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ec
  %i.kh = load i64, ptr %i.it, align 8, !tbaa !38
  %i.ki = shl i64 %i.kh, 2
  %i.kj = add i64 %i.ki, 4
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #34
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %330) #31
  %i.kk = load ptr, ptr %327, align 8, !tbaa !64  ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.gz
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i
  %i.km = load i64, ptr %i.gz, align 8, !tbaa !38
  %i.kn = shl i64 %i.km, 1
  %i.ko = add i64 %i.kn, 2
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #34
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %327) #31
  %i.kp = load ptr, ptr %322, align 8, !tbaa !52  ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.dx
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %i.kr = load i64, ptr %i.dx, align 8, !tbaa !38
  %i.ks = shl i64 %i.kr, 2
  %i.kt = add i64 %i.ks, 4
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %322) #31
  %i.ku = load ptr, ptr %315, align 8, !tbaa !73  ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.ak
  br i1 %i.kv, label %_ZL43testing_template_array_output_on_char_valueISt5arrayEvv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i
  %i.kw = load i64, ptr %i.ak, align 8, !tbaa !38
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #34
  br label %_ZL43testing_template_array_output_on_char_valueISt5arrayEvv.exit

bb.ed:                                            ; preds = %.body201.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 234, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_char_valueISt5arrayEvv)
          to label %.invoke268.i unwind label %bb.ee

.invoke268.i:                                     ; preds = %bb.ed, %bb.eb
  invoke void @__cxa_end_catch()
          to label %bb.ec unwind label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.ky = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.eh unwind label %bb.el

bb.ef:                                            ; preds = %bb.eb
  %i.kz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.eh unwind label %bb.el

bb.eg:                                            ; preds = %.invoke268.i
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ee, %.body185.i, %.body176.i
  %.pn71.pn.i = phi { ptr, i32 } [ %i.jw, %.body176.i ], [ %i.kz, %bb.ef ], [ %i.ky, %bb.ee ], [ %eh.lpad-body186.i, %.body185.i ], [ %i.la, %bb.eg ]
end_hunk_9
begin_hunk_10_@_Z35testing_std_array_output_conversionv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %249)
  store i32 %i.ri, ptr %278, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #31
  store ptr %278, ptr %i.x, align 8, !tbaa !47
  %i.rj = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbT_S4_S4_S4_iS4_RKT0_RKT1_(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 60, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %272)
          to label %bb.gr unwind label %bb.hd     ; 0 uses

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %245) #31
  %i.rk = getelementptr inbounds nuw i8, ptr %245, i64 24
  store ptr %245, ptr %i.rk, align 8, !tbaa !75
  %i.rl = getelementptr inbounds nuw i8, ptr %245, i64 32
  %i.rm = getelementptr inbounds nuw i8, ptr %245, i64 21 ; 3 uses
  store ptr %i.rm, ptr %i.rl, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %244) #31
  store i32 100, ptr %244, align 8, !tbaa !78
  %i.rn = getelementptr inbounds nuw i8, ptr %244, i64 8
  store ptr %i.rm, ptr %i.rn, align 8, !tbaa !79
  %i.ro = getelementptr inbounds nuw i8, ptr %244, i64 16
  store i8 48, ptr %i.ro, align 8, !tbaa !80
  %i.rp = getelementptr inbounds nuw i8, ptr %244, i64 20
  store i32 48, ptr %i.rp, align 4, !tbaa !81
  %i.rq = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEjcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %244)
          to label %bb.gs unwind label %bb.he

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %244) #31
  %i.rr = ptrtoint ptr %i.rm to i64
  %i.rs = ptrtoint ptr %i.rq to i64
  %i.rt = sub i64 %i.rr, %i.rs
  %i.ru = icmp ult i64 %i.rt, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %245) #31
  br i1 %i.ru, label %bb.gw, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %243) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %243, align 8, !tbaa !40
  %i.rv = getelementptr inbounds nuw i8, ptr %243, i64 8
  store ptr @_ZTIi, ptr %i.rv, align 8, !tbaa !45
  %i.rw = getelementptr inbounds nuw i8, ptr %243, i64 16
  store ptr @_ZTISt5arrayIaLm3EE, ptr %i.rw, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %243) #32
          to label %bb.gu unwind label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  unreachable

bb.gv:                                            ; preds = %bb.gt
  %i.rx = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %243) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %243) #31
  br label %.body110.i

bb.gw:                                            ; preds = %bb.gs
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_)
          to label %._crit_edge.i.i112.i unwind label %bb.he

bb.gx:                                            ; preds = %.body97.i6
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 53, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_)
          to label %.invoke268.i7 unwind label %bb.gy

.invoke268.i7:                                    ; preds = %bb.gx, %bb.ge
  invoke void @__cxa_end_catch()
          to label %bb.gf unwind label %bb.ha

bb.gy:                                            ; preds = %bb.gx
  %i.ry = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body91.i unwind label %bb.kw

bb.gz:                                            ; preds = %bb.ge
  %i.rz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body91.i unwind label %bb.kw

bb.ha:                                            ; preds = %.invoke268.i7, %bb.fm
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i

.body91.i:                                        ; preds = %bb.ha, %bb.gz, %bb.gy, %bb.gc, %bb.fq
  %.pn53.pn.i = phi { ptr, i32 } [ %i.pu, %bb.gc ], [ %i.rz, %bb.gz ], [ %i.ry, %bb.gy ], [ %i.sa, %bb.ha ], [ %i.pc, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %276) #31
  br label %.body87.i5

.body87.i5:                                       ; preds = %.body91.i, %bb.gb, %bb.ga, %bb.fk
  %.pn53.pn.pn.i = phi { ptr, i32 } [ %.pn53.pn.i, %.body91.i ], [ %i.pt, %bb.gb ], [ %i.ps, %bb.ga ], [ %i.om, %bb.fk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %275) #31
  br label %bb.kv

bb.hb:                                            ; preds = %bb.gf
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %.body101.i

bb.hc:                                            ; preds = %bb.gk
  %i.sc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #31
  br label %.body101.i

bb.hd:                                            ; preds = %bb.gq
  %i.sd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #31
  br label %.body105.i

bb.he:                                            ; preds = %bb.gw, %bb.gr
  %i.se = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body110.i

.body110.i:                                       ; preds = %bb.he, %bb.gv
  %eh.lpad-body111.i = phi { ptr, i32 } [ %i.se, %bb.he ], [ %i.rx, %bb.gv ] ; 2 uses
  %i.sf = extractvalue { ptr, i32 } %eh.lpad-body111.i, 0
  %i.sg = extractvalue { ptr, i32 } %eh.lpad-body111.i, 1
  %i.sh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.si = icmp eq i32 %i.sg, %i.sh
  %i.sj = call ptr @__cxa_begin_catch(ptr %i.sf) #31 ; 0 uses
  br i1 %i.si, label %bb.hf, label %bb.ib

bb.hf:                                            ; preds = %.body110.i
  %i.sk = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke269.i unwind label %bb.id ; 0 uses

._crit_edge.i.i112.i:                             ; preds = %.invoke269.i, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %278) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %277) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %279) #31
  %i.sl = getelementptr inbounds nuw i8, ptr %279, i64 16 ; 6 uses
  store ptr %i.sl, ptr %279, align 8, !tbaa !50
  %i.sm = call ptr @wmemcpy(ptr noundef nonnull %i.sl, ptr noundef nonnull @.str.29, i64 noundef 3) #31 ; 0 uses
  %.pre7.i.i.i8 = load ptr, ptr %279, align 8, !tbaa !52
  %i.sn = getelementptr inbounds nuw i8, ptr %279, i64 8 ; 3 uses
  store i64 3, ptr %i.sn, align 8, !tbaa !53
  %i.so = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i8, i64 12
  store i32 0, ptr %i.so, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %280) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %280, i8 0, i64 1200, i1 false), !alias.scope !587
  call void @llvm.lifetime.start.p0(ptr nonnull %242) #31, !noalias !587
  %i.sp = getelementptr inbounds nuw i8, ptr %242, i64 88 ; 2 uses
  store ptr %242, ptr %i.sp, align 8, !tbaa !83, !noalias !587
  %i.sq = getelementptr inbounds nuw i8, ptr %242, i64 96 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %242, i64 84 ; 4 uses
  store ptr %i.sr, ptr %i.sq, align 8, !tbaa !84, !noalias !587
  call void @llvm.lifetime.start.p0(ptr nonnull %241) #31, !noalias !587
  store i32 100, ptr %241, align 8, !tbaa !86, !noalias !587
  %i.ss = getelementptr inbounds nuw i8, ptr %241, i64 8
  store ptr %i.sr, ptr %i.ss, align 8, !tbaa !87, !noalias !587
  %i.st = getelementptr inbounds nuw i8, ptr %241, i64 16
  store i32 48, ptr %i.st, align 8, !tbaa !88, !noalias !587
  %i.su = getelementptr inbounds nuw i8, ptr %241, i64 20
  store i32 48, ptr %i.su, align 4, !tbaa !89, !noalias !587
  %i.sv = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %241)
          to label %bb.hg unwind label %bb.if     ; 3 uses

bb.hg:                                            ; preds = %._crit_edge.i.i112.i
  call void @llvm.lifetime.end.p0(ptr nonnull %241) #31, !noalias !587
  store ptr %i.sv, ptr %i.sp, align 8, !tbaa !83, !noalias !587
  store ptr %i.sr, ptr %i.sq, align 8, !tbaa !84, !noalias !587
  %i.sw = ptrtoint ptr %i.sr to i64
  %i.sx = ptrtoint ptr %i.sv to i64
  %i.sy = sub i64 %i.sw, %i.sx                    ; 3 uses
  %i.sz = icmp ult i64 %i.sy, 1200
  br i1 %i.sz, label %bb.hk, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %242) #31, !noalias !587
  call void @llvm.lifetime.start.p0(ptr nonnull %240) #31, !noalias !587
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %240, align 8, !tbaa !40, !noalias !587
  %i.ta = getelementptr inbounds nuw i8, ptr %240, i64 8
  store ptr @_ZTIi, ptr %i.ta, align 8, !tbaa !45, !noalias !587
  %i.tb = getelementptr inbounds nuw i8, ptr %240, i64 16
  store ptr @_ZTISt5arrayIwLm300EE, ptr %i.tb, align 8, !tbaa !46, !noalias !587
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %240) #32
          to label %bb.hi unwind label %bb.hj, !noalias !587

bb.hi:                                            ; preds = %bb.hh
  unreachable

bb.hj:                                            ; preds = %bb.hh
  %i.tc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %240) #31, !noalias !587
  call void @llvm.lifetime.end.p0(ptr nonnull %240) #31, !noalias !587
  br label %.body117.i

bb.hk:                                            ; preds = %bb.hg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %280, ptr align 4 %i.sv, i64 %i.sy, i1 false)
  %i.td = getelementptr inbounds nuw i8, ptr %280, i64 %i.sy
  store i32 0, ptr %i.td, align 4, !tbaa !55, !alias.scope !587
  call void @llvm.lifetime.end.p0(ptr nonnull %242) #31, !noalias !587
  %i.te = load i64, ptr %i.sn, align 8, !tbaa !53 ; 3 uses
  %i.tf = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %280) #33
  %i.tg = icmp eq i64 %i.te, %i.tf
  br i1 %i.tg, label %bb.hl, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i9

bb.hl:                                            ; preds = %bb.hk
  %i.th = icmp eq i64 %i.te, 0
  br i1 %i.th, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i9, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ti = load ptr, ptr %279, align 8, !tbaa !52
  %i.tj = call i32 @wmemcmp(ptr noundef %i.ti, ptr noundef nonnull %280, i64 noundef %i.te) #33
  %i.tk = icmp eq i32 %i.tj, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i9

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i9: ; preds = %bb.hm, %bb.hl, %bb.hk
  %i.tl = phi i1 [ false, %bb.hk ], [ %i.tk, %bb.hm ], [ true, %bb.hl ]
  %i.tm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 71, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_, i1 noundef zeroext %i.tl)
          to label %bb.hn unwind label %bb.if     ; 0 uses

bb.hn:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %280) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %281) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %281, i8 0, i64 1200, i1 false), !alias.scope !588
  call void @llvm.lifetime.start.p0(ptr nonnull %239) #31, !noalias !588
  %i.tn = getelementptr inbounds nuw i8, ptr %239, i64 88 ; 2 uses
  store ptr %239, ptr %i.tn, align 8, !tbaa !83, !noalias !588
  %i.to = getelementptr inbounds nuw i8, ptr %239, i64 96 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %239, i64 84 ; 4 uses
  store ptr %i.tp, ptr %i.to, align 8, !tbaa !84, !noalias !588
  call void @llvm.lifetime.start.p0(ptr nonnull %238) #31, !noalias !588
  store i32 100, ptr %238, align 8, !tbaa !86, !noalias !588
  %i.tq = getelementptr inbounds nuw i8, ptr %238, i64 8
  store ptr %i.tp, ptr %i.tq, align 8, !tbaa !87, !noalias !588
  %i.tr = getelementptr inbounds nuw i8, ptr %238, i64 16
  store i32 48, ptr %i.tr, align 8, !tbaa !88, !noalias !588
  %i.ts = getelementptr inbounds nuw i8, ptr %238, i64 20
  store i32 48, ptr %i.ts, align 4, !tbaa !89, !noalias !588
  %i.tt = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %238)
          to label %bb.ho unwind label %bb.ig     ; 3 uses

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %238) #31, !noalias !588
  store ptr %i.tt, ptr %i.tn, align 8, !tbaa !83, !noalias !588
  store ptr %i.tp, ptr %i.to, align 8, !tbaa !84, !noalias !588
  %i.tu = ptrtoint ptr %i.tp to i64
  %i.tv = ptrtoint ptr %i.tt to i64
  %i.tw = sub i64 %i.tu, %i.tv                    ; 3 uses
  %i.tx = icmp ult i64 %i.tw, 1200
  br i1 %i.tx, label %bb.hs, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #31, !noalias !588
  call void @llvm.lifetime.start.p0(ptr nonnull %237) #31, !noalias !588
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %237, align 8, !tbaa !40, !noalias !588
  %i.ty = getelementptr inbounds nuw i8, ptr %237, i64 8
  store ptr @_ZTIi, ptr %i.ty, align 8, !tbaa !45, !noalias !588
  %i.tz = getelementptr inbounds nuw i8, ptr %237, i64 16
  store ptr @_ZTISt5arrayIwLm300EE, ptr %i.tz, align 8, !tbaa !46, !noalias !588
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %237) #32
          to label %bb.hq unwind label %bb.hr, !noalias !588

bb.hq:                                            ; preds = %bb.hp
  unreachable

bb.hr:                                            ; preds = %bb.hp
  %i.ua = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %237) #31, !noalias !588
  call void @llvm.lifetime.end.p0(ptr nonnull %237) #31, !noalias !588
  br label %.body121.i

bb.hs:                                            ; preds = %bb.ho
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %281, ptr align 4 %i.tt, i64 %i.tw, i1 false)
  %i.ub = getelementptr inbounds nuw i8, ptr %281, i64 %i.tw
  store i32 0, ptr %i.ub, align 4, !tbaa !55, !alias.scope !588
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #31, !noalias !588
  %i.uc = load i64, ptr %i.sn, align 8, !tbaa !53 ; 3 uses
  %i.ud = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %281) #33
  %i.ue = icmp eq i64 %i.uc, %i.ud
  br i1 %i.ue, label %bb.ht, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i

bb.ht:                                            ; preds = %bb.hs
  %i.uf = icmp eq i64 %i.uc, 0
  br i1 %i.uf, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.ug = load ptr, ptr %279, align 8, !tbaa !52
  %i.uh = call i32 @wmemcmp(ptr noundef %i.ug, ptr noundef nonnull %281, i64 noundef %i.uc) #33
  %i.ui = icmp eq i32 %i.uh, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i: ; preds = %bb.hu, %bb.ht, %bb.hs
  %i.uj = phi i1 [ false, %bb.hs ], [ %i.ui, %bb.hu ], [ true, %bb.ht ]
  %i.uk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 76, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_, i1 noundef zeroext %i.uj)
          to label %bb.hv unwind label %bb.ig     ; 0 uses

bb.hv:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %281) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %236) #31
  %i.ul = getelementptr inbounds nuw i8, ptr %236, i64 88
  store ptr %236, ptr %i.ul, align 8, !tbaa !83
  %i.um = getelementptr inbounds nuw i8, ptr %236, i64 96
  %i.un = getelementptr inbounds nuw i8, ptr %236, i64 84 ; 3 uses
  store ptr %i.un, ptr %i.um, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %235) #31
  store i32 100, ptr %235, align 8, !tbaa !86
  %i.uo = getelementptr inbounds nuw i8, ptr %235, i64 8
  store ptr %i.un, ptr %i.uo, align 8, !tbaa !87
  %i.up = getelementptr inbounds nuw i8, ptr %235, i64 16
  store i32 48, ptr %i.up, align 8, !tbaa !88
  %i.uq = getelementptr inbounds nuw i8, ptr %235, i64 20
  store i32 48, ptr %i.uq, align 4, !tbaa !89
  %i.ur = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %235)
          to label %bb.hw unwind label %bb.ih

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %235) #31
  %i.us = ptrtoint ptr %i.un to i64
  %i.ut = ptrtoint ptr %i.ur to i64
  %i.uu = sub i64 %i.us, %i.ut
  %i.uv = icmp ult i64 %i.uu, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %236) #31
  br i1 %i.uv, label %bb.ia, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %234) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %234, align 8, !tbaa !40
  %i.uw = getelementptr inbounds nuw i8, ptr %234, i64 8
  store ptr @_ZTIi, ptr %i.uw, align 8, !tbaa !45
  %i.ux = getelementptr inbounds nuw i8, ptr %234, i64 16
  store ptr @_ZTISt5arrayIwLm3EE, ptr %i.ux, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %234) #32
          to label %bb.hy unwind label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  unreachable

bb.hz:                                            ; preds = %bb.hx
  %i.uy = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %234) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #31
  br label %.body127.i

bb.ia:                                            ; preds = %bb.hw
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_)
          to label %._crit_edge.i.i129.i unwind label %bb.ih

bb.ib:                                            ; preds = %.body110.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_)
          to label %.invoke269.i unwind label %bb.ic

.invoke269.i:                                     ; preds = %bb.ib, %bb.hf
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i112.i unwind label %bb.ie

bb.ic:                                            ; preds = %bb.ib
  %i.uz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body105.i unwind label %bb.kw

bb.id:                                            ; preds = %bb.hf
  %i.va = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body105.i unwind label %bb.kw

bb.ie:                                            ; preds = %.invoke269.i, %bb.gl
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %.body105.i

.body105.i:                                       ; preds = %bb.ie, %bb.id, %bb.ic, %bb.hd, %bb.gp
  %.pn57.pn.i = phi { ptr, i32 } [ %i.sd, %bb.hd ], [ %i.va, %bb.id ], [ %i.uz, %bb.ic ], [ %i.vb, %bb.ie ], [ %i.rg, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %278) #31
  br label %.body101.i

.body101.i:                                       ; preds = %.body105.i, %bb.hc, %bb.hb, %bb.gj
  %.pn57.pn.pn.i = phi { ptr, i32 } [ %.pn57.pn.i, %.body105.i ], [ %i.sc, %bb.hc ], [ %i.sb, %bb.hb ], [ %i.qp, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %277) #31
  br label %bb.kv

bb.if:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i9, %._crit_edge.i.i112.i
  %i.vc = landingpad { ptr, i32 }
          cleanup
  br label %.body117.i

.body117.i:                                       ; preds = %bb.if, %bb.hj
  %eh.lpad-body118.i = phi { ptr, i32 } [ %i.vc, %bb.if ], [ %i.tc, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %280) #31
  br label %bb.ku

bb.ig:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i, %bb.hn
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %.body121.i

.body121.i:                                       ; preds = %bb.ig, %bb.hr
  %eh.lpad-body122.i = phi { ptr, i32 } [ %i.vd, %bb.ig ], [ %i.ua, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %281) #31
  br label %bb.ku

bb.ih:                                            ; preds = %bb.ia, %bb.hv
  %i.ve = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body127.i

.body127.i:                                       ; preds = %bb.ih, %bb.hz
  %eh.lpad-body128.i = phi { ptr, i32 } [ %i.ve, %bb.ih ], [ %i.uy, %bb.hz ] ; 2 uses
  %i.vf = extractvalue { ptr, i32 } %eh.lpad-body128.i, 0
  %i.vg = extractvalue { ptr, i32 } %eh.lpad-body128.i, 1
  %i.vh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.vi = icmp eq i32 %i.vg, %i.vh
  %i.vj = call ptr @__cxa_begin_catch(ptr %i.vf) #31 ; 0 uses
  br i1 %i.vi, label %bb.ii, label %bb.je

bb.ii:                                            ; preds = %.body127.i
  %i.vk = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke270.i unwind label %bb.jg ; 0 uses

._crit_edge.i.i129.i:                             ; preds = %.invoke270.i, %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %282) #31
  %i.vl = getelementptr inbounds nuw i8, ptr %282, i64 16 ; 6 uses
  store ptr %i.vl, ptr %282, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.vl, ptr noundef nonnull align 2 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.vm = getelementptr inbounds nuw i8, ptr %282, i64 8 ; 3 uses
  store i64 3, ptr %i.vm, align 8, !tbaa !60
  %i.vn = getelementptr inbounds nuw i8, ptr %282, i64 22
  store i16 0, ptr %i.vn, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %283) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(600) %283, i8 0, i64 600, i1 false), !alias.scope !589
  call void @llvm.lifetime.start.p0(ptr nonnull %233) #31, !noalias !589
  %i.vo = getelementptr inbounds nuw i8, ptr %233, i64 48 ; 2 uses
  store ptr %233, ptr %i.vo, align 8, !tbaa !91, !noalias !589
  %i.vp = getelementptr inbounds nuw i8, ptr %233, i64 56 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %233, i64 42 ; 4 uses
  store ptr %i.vq, ptr %i.vp, align 8, !tbaa !92, !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %232) #31, !noalias !589
  store i32 100, ptr %232, align 8, !tbaa !95, !noalias !589
  %i.vr = getelementptr inbounds nuw i8, ptr %232, i64 8
  store ptr %i.vq, ptr %i.vr, align 8, !tbaa !96, !noalias !589
  %i.vs = getelementptr inbounds nuw i8, ptr %232, i64 16
  store i16 48, ptr %i.vs, align 8, !tbaa !97, !noalias !589
  %i.vt = getelementptr inbounds nuw i8, ptr %232, i64 18
  store i16 48, ptr %i.vt, align 2, !tbaa !98, !noalias !589
  %i.vu = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEjDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %232)
          to label %bb.ij unwind label %bb.ji     ; 3 uses

bb.ij:                                            ; preds = %._crit_edge.i.i129.i
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #31, !noalias !589
  store ptr %i.vu, ptr %i.vo, align 8, !tbaa !91, !noalias !589
  store ptr %i.vq, ptr %i.vp, align 8, !tbaa !92, !noalias !589
  %i.vv = ptrtoint ptr %i.vq to i64
  %i.vw = ptrtoint ptr %i.vu to i64
  %i.vx = sub i64 %i.vv, %i.vw                    ; 3 uses
  %i.vy = icmp ult i64 %i.vx, 600
  br i1 %i.vy, label %bb.in, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #31, !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %231) #31, !noalias !589
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %231, align 8, !tbaa !40, !noalias !589
  %i.vz = getelementptr inbounds nuw i8, ptr %231, i64 8
  store ptr @_ZTIi, ptr %i.vz, align 8, !tbaa !45, !noalias !589
  %i.wa = getelementptr inbounds nuw i8, ptr %231, i64 16
  store ptr @_ZTISt5arrayIDsLm300EE, ptr %i.wa, align 8, !tbaa !46, !noalias !589
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %231) #32
          to label %bb.il unwind label %bb.im, !noalias !589

bb.il:                                            ; preds = %bb.ik
  unreachable

bb.im:                                            ; preds = %bb.ik
  %i.wb = landingpad { ptr, i32 }
end_hunk_10
begin_hunk_11_@_Z35testing_std_array_output_conversionv:bb.a
.lr.ph.i.i.i145.i:                                ; preds = %bb.ix, %.lr.ph.i.i.i145.i
  %.01216.i.i.i146.i = phi i64 [ %i.xr, %.lr.ph.i.i.i145.i ], [ 0, %bb.ix ] ; 3 uses
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %i.xm, i64 %.01216.i.i.i146.i
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %284, i64 %.01216.i.i.i146.i
  %i.xp = load i16, ptr %i.xn, align 2, !tbaa !62
  %i.xq = load i16, ptr %i.xo, align 2, !tbaa !62
  %or.cond.not.i.i147.i = icmp eq i16 %i.xq, %i.xp ; 2 uses
  %i.xr = add nuw nsw i64 %.01216.i.i.i146.i, 1   ; 2 uses
  %exitcond.not.i.i.i148.i = icmp ne i64 %i.xr, %i.xg
  %or.cond553.not = select i1 %or.cond.not.i.i147.i, i1 %exitcond.not.i.i.i148.i, i1 false
  br i1 %or.cond553.not, label %.lr.ph.i.i.i145.i, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i, !llvm.loop !1

_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i: ; preds = %.lr.ph.i.i.i145.i, %bb.ix, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i143.i
  %i.xs = phi i1 [ false, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i143.i ], [ true, %bb.ix ], [ %or.cond.not.i.i147.i, %.lr.ph.i.i.i145.i ]
  %i.xt = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 95, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_, i1 noundef zeroext %i.xs)
          to label %bb.iy unwind label %bb.jj     ; 0 uses

bb.iy:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i
  call void @llvm.lifetime.end.p0(ptr nonnull %284) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %227) #31
  %i.xu = getelementptr inbounds nuw i8, ptr %227, i64 48
  store ptr %227, ptr %i.xu, align 8, !tbaa !91
  %i.xv = getelementptr inbounds nuw i8, ptr %227, i64 56
  %i.xw = getelementptr inbounds nuw i8, ptr %227, i64 42 ; 3 uses
  store ptr %i.xw, ptr %i.xv, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %226) #31
  store i32 100, ptr %226, align 8, !tbaa !95
  %i.xx = getelementptr inbounds nuw i8, ptr %226, i64 8
  store ptr %i.xw, ptr %i.xx, align 8, !tbaa !96
  %i.xy = getelementptr inbounds nuw i8, ptr %226, i64 16
  store i16 48, ptr %i.xy, align 8, !tbaa !97
  %i.xz = getelementptr inbounds nuw i8, ptr %226, i64 18
  store i16 48, ptr %i.xz, align 2, !tbaa !98
  %i.ya = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEjDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %226)
          to label %bb.iz unwind label %bb.jk

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %226) #31
  %i.yb = ptrtoint ptr %i.xw to i64
  %i.yc = ptrtoint ptr %i.ya to i64
  %i.yd = sub i64 %i.yb, %i.yc
  %i.ye = icmp ult i64 %i.yd, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %227) #31
  br i1 %i.ye, label %bb.jd, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  call void @llvm.lifetime.start.p0(ptr nonnull %225) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %225, align 8, !tbaa !40
  %i.yf = getelementptr inbounds nuw i8, ptr %225, i64 8
  store ptr @_ZTIi, ptr %i.yf, align 8, !tbaa !45
  %i.yg = getelementptr inbounds nuw i8, ptr %225, i64 16
  store ptr @_ZTISt5arrayIDsLm3EE, ptr %i.yg, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %225) #32
          to label %bb.jb unwind label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  unreachable

bb.jc:                                            ; preds = %bb.ja
  %i.yh = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %225) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %225) #31
  br label %.body153.i

bb.jd:                                            ; preds = %bb.iz
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_)
          to label %._crit_edge.i.i156.i unwind label %bb.jk

bb.je:                                            ; preds = %.body127.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_)
          to label %.invoke270.i unwind label %bb.jf

.invoke270.i:                                     ; preds = %bb.je, %bb.ii
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i129.i unwind label %bb.jh

bb.jf:                                            ; preds = %bb.je
  %i.yi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ku unwind label %bb.kw

bb.jg:                                            ; preds = %bb.ii
  %i.yj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ku unwind label %bb.kw

bb.jh:                                            ; preds = %.invoke270.i
  %i.yk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

bb.ji:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i, %._crit_edge.i.i129.i
  %i.yl = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i

.body135.i:                                       ; preds = %bb.ji, %bb.im
  %eh.lpad-body136.i = phi { ptr, i32 } [ %i.yl, %bb.ji ], [ %i.wb, %bb.im ]
  call void @llvm.lifetime.end.p0(ptr nonnull %283) #31
  br label %bb.kt

bb.jj:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i, %bb.iq
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i

.body139.i:                                       ; preds = %bb.jj, %bb.iu
  %eh.lpad-body140.i = phi { ptr, i32 } [ %i.ym, %bb.jj ], [ %i.xe, %bb.iu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %284) #31
  br label %bb.kt

bb.jk:                                            ; preds = %bb.jd, %bb.iy
  %i.yn = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body153.i

.body153.i:                                       ; preds = %bb.jk, %bb.jc
  %eh.lpad-body154.i = phi { ptr, i32 } [ %i.yn, %bb.jk ], [ %i.yh, %bb.jc ] ; 2 uses
  %i.yo = extractvalue { ptr, i32 } %eh.lpad-body154.i, 0
  %i.yp = extractvalue { ptr, i32 } %eh.lpad-body154.i, 1
  %i.yq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.yr = icmp eq i32 %i.yp, %i.yq
  %i.ys = call ptr @__cxa_begin_catch(ptr %i.yo) #31 ; 0 uses
  br i1 %i.yr, label %bb.jl, label %bb.kf

bb.jl:                                            ; preds = %.body153.i
  %i.yt = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke271.i unwind label %bb.kh ; 0 uses

._crit_edge.i.i156.i:                             ; preds = %.invoke271.i, %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %285) #31
  %i.yu = getelementptr inbounds nuw i8, ptr %285, i64 16 ; 6 uses
  store ptr %i.yu, ptr %285, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.yu, ptr noundef nonnull align 4 dereferenceable(12) @.str.29, i64 12, i1 false)
  %i.yv = getelementptr inbounds nuw i8, ptr %285, i64 8 ; 3 uses
  store i64 3, ptr %i.yv, align 8, !tbaa !69
  %i.yw = getelementptr inbounds nuw i8, ptr %285, i64 28
  store i32 0, ptr %i.yw, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %286) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %286, i8 0, i64 1200, i1 false), !alias.scope !591
  call void @llvm.lifetime.start.p0(ptr nonnull %224) #31, !noalias !591
  %i.yx = getelementptr inbounds nuw i8, ptr %224, i64 88 ; 2 uses
  store ptr %224, ptr %i.yx, align 8, !tbaa !100, !noalias !591
  %i.yy = getelementptr inbounds nuw i8, ptr %224, i64 96 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %224, i64 84 ; 4 uses
  store ptr %i.yz, ptr %i.yy, align 8, !tbaa !101, !noalias !591
  call void @llvm.lifetime.start.p0(ptr nonnull %223) #31, !noalias !591
  store i32 100, ptr %223, align 8, !tbaa !103, !noalias !591
  %i.za = getelementptr inbounds nuw i8, ptr %223, i64 8
  store ptr %i.yz, ptr %i.za, align 8, !tbaa !104, !noalias !591
  %i.zb = getelementptr inbounds nuw i8, ptr %223, i64 16
  store i32 48, ptr %i.zb, align 8, !tbaa !105, !noalias !591
  %i.zc = getelementptr inbounds nuw i8, ptr %223, i64 20
  store i32 48, ptr %i.zc, align 4, !tbaa !106, !noalias !591
  %i.zd = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEjDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %223)
          to label %bb.jm unwind label %bb.kj     ; 3 uses

bb.jm:                                            ; preds = %._crit_edge.i.i156.i
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #31, !noalias !591
  store ptr %i.zd, ptr %i.yx, align 8, !tbaa !100, !noalias !591
  store ptr %i.yz, ptr %i.yy, align 8, !tbaa !101, !noalias !591
  %i.ze = ptrtoint ptr %i.yz to i64
  %i.zf = ptrtoint ptr %i.zd to i64
  %i.zg = sub i64 %i.ze, %i.zf                    ; 3 uses
  %i.zh = icmp ult i64 %i.zg, 1200
  br i1 %i.zh, label %bb.jq, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #31, !noalias !591
  call void @llvm.lifetime.start.p0(ptr nonnull %222) #31, !noalias !591
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %222, align 8, !tbaa !40, !noalias !591
  %i.zi = getelementptr inbounds nuw i8, ptr %222, i64 8
  store ptr @_ZTIi, ptr %i.zi, align 8, !tbaa !45, !noalias !591
  %i.zj = getelementptr inbounds nuw i8, ptr %222, i64 16
  store ptr @_ZTISt5arrayIDiLm300EE, ptr %i.zj, align 8, !tbaa !46, !noalias !591
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %222) #32
          to label %bb.jo unwind label %bb.jp, !noalias !591

bb.jo:                                            ; preds = %bb.jn
  unreachable

bb.jp:                                            ; preds = %bb.jn
  %i.zk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %222) #31, !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #31, !noalias !591
  br label %.body163.i

bb.jq:                                            ; preds = %bb.jm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %286, ptr align 4 %i.zd, i64 %i.zg, i1 false)
  %i.zl = getelementptr inbounds nuw i8, ptr %286, i64 %i.zg
  store i32 0, ptr %i.zl, align 4, !tbaa !71, !alias.scope !591
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #31, !noalias !591
  %i.zm = load i64, ptr %i.yv, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i.i12 = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %286)
  %i.zn = icmp eq i64 %i.zm, %wcslen.i.i.i.i12
  br i1 %i.zn, label %bb.jr, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i

bb.jr:                                            ; preds = %bb.jq
  %i.zo = load ptr, ptr %285, align 8, !tbaa !72
  %.not.i.i.i165.i = icmp eq i64 %i.zm, 0
  br i1 %.not.i.i.i165.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i, label %.lr.ph.i.i.i166.i

.lr.ph.i.i.i166.i:                                ; preds = %bb.jr, %.lr.ph.i.i.i166.i
  %.01216.i.i.i167.i = phi i64 [ %i.zt, %.lr.ph.i.i.i166.i ], [ 0, %bb.jr ] ; 3 uses
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %.01216.i.i.i167.i
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %286, i64 %.01216.i.i.i167.i
  %i.zr = load i32, ptr %i.zp, align 4, !tbaa !71
  %i.zs = load i32, ptr %i.zq, align 4, !tbaa !71
  %or.cond.not.i.i168.i = icmp eq i32 %i.zs, %i.zr ; 2 uses
  %i.zt = add nuw nsw i64 %.01216.i.i.i167.i, 1   ; 2 uses
  %exitcond.not.i.i.i169.i = icmp ne i64 %i.zt, %i.zm
  %or.cond554.not = select i1 %or.cond.not.i.i168.i, i1 %exitcond.not.i.i.i169.i, i1 false
  br i1 %or.cond554.not, label %.lr.ph.i.i.i166.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i: ; preds = %.lr.ph.i.i.i166.i, %bb.jr, %bb.jq
  %i.zu = phi i1 [ false, %bb.jq ], [ true, %bb.jr ], [ %or.cond.not.i.i168.i, %.lr.ph.i.i.i166.i ]
  %i.zv = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 108, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_, i1 noundef zeroext %i.zu)
          to label %bb.js unwind label %bb.kj     ; 0 uses

bb.js:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %286) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %287) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %287, i8 0, i64 1200, i1 false), !alias.scope !592
  call void @llvm.lifetime.start.p0(ptr nonnull %221) #31, !noalias !592
  %i.zw = getelementptr inbounds nuw i8, ptr %221, i64 88 ; 2 uses
  store ptr %221, ptr %i.zw, align 8, !tbaa !100, !noalias !592
  %i.zx = getelementptr inbounds nuw i8, ptr %221, i64 96 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %221, i64 84 ; 4 uses
  store ptr %i.zy, ptr %i.zx, align 8, !tbaa !101, !noalias !592
  call void @llvm.lifetime.start.p0(ptr nonnull %220) #31, !noalias !592
  store i32 100, ptr %220, align 8, !tbaa !103, !noalias !592
  %i.zz = getelementptr inbounds nuw i8, ptr %220, i64 8
  store ptr %i.zy, ptr %i.zz, align 8, !tbaa !104, !noalias !592
  %i.aaa = getelementptr inbounds nuw i8, ptr %220, i64 16
  store i32 48, ptr %i.aaa, align 8, !tbaa !105, !noalias !592
  %i.aab = getelementptr inbounds nuw i8, ptr %220, i64 20
  store i32 48, ptr %i.aab, align 4, !tbaa !106, !noalias !592
  %i.aac = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEjDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %220)
          to label %bb.jt unwind label %bb.kk     ; 3 uses

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #31, !noalias !592
  store ptr %i.aac, ptr %i.zw, align 8, !tbaa !100, !noalias !592
  store ptr %i.zy, ptr %i.zx, align 8, !tbaa !101, !noalias !592
  %i.aad = ptrtoint ptr %i.zy to i64
  %i.aae = ptrtoint ptr %i.aac to i64
  %i.aaf = sub i64 %i.aad, %i.aae                 ; 3 uses
  %i.aag = icmp ult i64 %i.aaf, 1200
  br i1 %i.aag, label %bb.jx, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #31, !noalias !592
  call void @llvm.lifetime.start.p0(ptr nonnull %219) #31, !noalias !592
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %219, align 8, !tbaa !40, !noalias !592
  %i.aah = getelementptr inbounds nuw i8, ptr %219, i64 8
  store ptr @_ZTIi, ptr %i.aah, align 8, !tbaa !45, !noalias !592
  %i.aai = getelementptr inbounds nuw i8, ptr %219, i64 16
  store ptr @_ZTISt5arrayIDiLm300EE, ptr %i.aai, align 8, !tbaa !46, !noalias !592
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %219) #32
          to label %bb.jv unwind label %bb.jw, !noalias !592

bb.jv:                                            ; preds = %bb.ju
  unreachable

bb.jw:                                            ; preds = %bb.ju
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %219) #31, !noalias !592
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #31, !noalias !592
  br label %.body172.i

bb.jx:                                            ; preds = %bb.jt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %287, ptr align 4 %i.aac, i64 %i.aaf, i1 false)
  %i.aak = getelementptr inbounds nuw i8, ptr %287, i64 %i.aaf
  store i32 0, ptr %i.aak, align 4, !tbaa !71, !alias.scope !592
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #31, !noalias !592
  %i.aal = load i64, ptr %i.yv, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i175.i = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %287)
  %i.aam = icmp eq i64 %i.aal, %wcslen.i.i.i175.i
  br i1 %i.aam, label %bb.jy, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i

bb.jy:                                            ; preds = %bb.jx
  %i.aan = load ptr, ptr %285, align 8, !tbaa !72
  %.not.i.i.i176.i = icmp eq i64 %i.aal, 0
  br i1 %.not.i.i.i176.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i, label %.lr.ph.i.i.i177.i

.lr.ph.i.i.i177.i:                                ; preds = %bb.jy, %.lr.ph.i.i.i177.i
  %.01216.i.i.i178.i = phi i64 [ %i.aas, %.lr.ph.i.i.i177.i ], [ 0, %bb.jy ] ; 3 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %.01216.i.i.i178.i
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %287, i64 %.01216.i.i.i178.i
  %i.aaq = load i32, ptr %i.aao, align 4, !tbaa !71
  %i.aar = load i32, ptr %i.aap, align 4, !tbaa !71
  %or.cond.not.i.i179.i = icmp eq i32 %i.aar, %i.aaq ; 2 uses
  %i.aas = add nuw nsw i64 %.01216.i.i.i178.i, 1  ; 2 uses
  %exitcond.not.i.i.i180.i = icmp ne i64 %i.aas, %i.aal
  %or.cond555.not = select i1 %or.cond.not.i.i179.i, i1 %exitcond.not.i.i.i180.i, i1 false
  br i1 %or.cond555.not, label %.lr.ph.i.i.i177.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i: ; preds = %.lr.ph.i.i.i177.i, %bb.jy, %bb.jx
  %i.aat = phi i1 [ false, %bb.jx ], [ true, %bb.jy ], [ %or.cond.not.i.i179.i, %.lr.ph.i.i.i177.i ]
  %i.aau = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 113, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_, i1 noundef zeroext %i.aat)
          to label %bb.jz unwind label %bb.kk     ; 0 uses

bb.jz:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i
  call void @llvm.lifetime.end.p0(ptr nonnull %287) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %218) #31
  %i.aav = getelementptr inbounds nuw i8, ptr %218, i64 88
  store ptr %218, ptr %i.aav, align 8, !tbaa !100
  %i.aaw = getelementptr inbounds nuw i8, ptr %218, i64 96
  %i.aax = getelementptr inbounds nuw i8, ptr %218, i64 84 ; 3 uses
  store ptr %i.aax, ptr %i.aaw, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %217) #31
  store i32 100, ptr %217, align 8, !tbaa !103
  %i.aay = getelementptr inbounds nuw i8, ptr %217, i64 8
  store ptr %i.aax, ptr %i.aay, align 8, !tbaa !104
  %i.aaz = getelementptr inbounds nuw i8, ptr %217, i64 16
  store i32 48, ptr %i.aaz, align 8, !tbaa !105
  %i.aba = getelementptr inbounds nuw i8, ptr %217, i64 20
  store i32 48, ptr %i.aba, align 4, !tbaa !106
  %i.abb = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEjDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %217)
          to label %bb.ka unwind label %bb.kl

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %217) #31
  %i.abc = ptrtoint ptr %i.aax to i64
  %i.abd = ptrtoint ptr %i.abb to i64
  %i.abe = sub i64 %i.abc, %i.abd
  %i.abf = icmp ult i64 %i.abe, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #31
  br i1 %i.abf, label %bb.ke, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  call void @llvm.lifetime.start.p0(ptr nonnull %216) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %216, align 8, !tbaa !40
  %i.abg = getelementptr inbounds nuw i8, ptr %216, i64 8
  store ptr @_ZTIi, ptr %i.abg, align 8, !tbaa !45
  %i.abh = getelementptr inbounds nuw i8, ptr %216, i64 16
  store ptr @_ZTISt5arrayIDiLm3EE, ptr %i.abh, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %216) #32
          to label %bb.kc unwind label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  unreachable

bb.kd:                                            ; preds = %bb.kb
  %i.abi = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %216) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %216) #31
  br label %.body189.i

bb.ke:                                            ; preds = %bb.ka
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_)
          to label %bb.kn unwind label %bb.kl

bb.kf:                                            ; preds = %.body153.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_)
          to label %.invoke271.i unwind label %bb.kg

.invoke271.i:                                     ; preds = %bb.kf, %bb.jl
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i156.i unwind label %bb.ki

bb.kg:                                            ; preds = %bb.kf
  %i.abj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.kt unwind label %bb.kw

bb.kh:                                            ; preds = %bb.jl
  %i.abk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.kt unwind label %bb.kw

bb.ki:                                            ; preds = %.invoke271.i
  %i.abl = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.kj:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i, %._crit_edge.i.i156.i
  %i.abm = landingpad { ptr, i32 }
          cleanup
  br label %.body163.i

.body163.i:                                       ; preds = %bb.kj, %bb.jp
  %eh.lpad-body164.i = phi { ptr, i32 } [ %i.abm, %bb.kj ], [ %i.zk, %bb.jp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %286) #31
  br label %bb.ks

bb.kk:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i, %bb.js
  %i.abn = landingpad { ptr, i32 }
          cleanup
  br label %.body172.i

.body172.i:                                       ; preds = %bb.kk, %bb.jw
  %eh.lpad-body173.i = phi { ptr, i32 } [ %i.abn, %bb.kk ], [ %i.aaj, %bb.jw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %287) #31
  br label %bb.ks

bb.kl:                                            ; preds = %bb.ke, %bb.jz
  %i.abo = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body189.i

.body189.i:                                       ; preds = %bb.kl, %bb.kd
  %eh.lpad-body190.i = phi { ptr, i32 } [ %i.abo, %bb.kl ], [ %i.abi, %bb.kd ] ; 2 uses
  %i.abp = extractvalue { ptr, i32 } %eh.lpad-body190.i, 0
  %i.abq = extractvalue { ptr, i32 } %eh.lpad-body190.i, 1
  %i.abr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.abs = icmp eq i32 %i.abq, %i.abr
  %i.abt = call ptr @__cxa_begin_catch(ptr %i.abp) #31 ; 0 uses
  br i1 %i.abs, label %bb.km, label %bb.ko

bb.km:                                            ; preds = %.body189.i
  %i.abu = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke272.i unwind label %bb.kq ; 0 uses

bb.kn:                                            ; preds = %.invoke272.i, %bb.ke
  %i.abv = load ptr, ptr %285, align 8, !tbaa !72 ; 2 uses
  %i.abw = icmp eq ptr %i.abv, %i.yu
  br i1 %i.abw, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i14, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.kn
  %i.abx = load i64, ptr %i.yu, align 8, !tbaa !38
  %i.aby = shl i64 %i.abx, 2
  %i.abz = add i64 %i.aby, 4
  call void @_ZdlPvm(ptr noundef %i.abv, i64 noundef %i.abz) #34
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i14

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i14: ; preds = %bb.kn, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %285) #31
  %i.aca = load ptr, ptr %282, align 8, !tbaa !64 ; 2 uses
  %i.acb = icmp eq ptr %i.aca, %i.vl
  br i1 %i.acb, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i16, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i14
  %i.acc = load i64, ptr %i.vl, align 8, !tbaa !38
  %i.acd = shl i64 %i.acc, 1
  %i.ace = add i64 %i.acd, 2
  call void @_ZdlPvm(ptr noundef %i.aca, i64 noundef %i.ace) #34
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i16

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i14, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %282) #31
  %i.acf = load ptr, ptr %279, align 8, !tbaa !52 ; 2 uses
  %i.acg = icmp eq ptr %i.acf, %i.sl
  br i1 %i.acg, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i18, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i16
  %i.ach = load i64, ptr %i.sl, align 8, !tbaa !38
  %i.aci = shl i64 %i.ach, 2
  %i.acj = add i64 %i.aci, 4
  call void @_ZdlPvm(ptr noundef %i.acf, i64 noundef %i.acj) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i18

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i18: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i16, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %279) #31
  %i.ack = load ptr, ptr %272, align 8, !tbaa !73 ; 2 uses
  %i.acl = icmp eq ptr %i.ack, %i.lw
  br i1 %i.acl, label %_ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i18
  %i.acm = load i64, ptr %i.lw, align 8, !tbaa !38
  %i.acn = add i64 %i.acm, 1
  call void @_ZdlPvm(ptr noundef %i.ack, i64 noundef %i.acn) #34
  br label %_ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_.exit

bb.ko:                                            ; preds = %.body189.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayiEvT0_)
          to label %.invoke272.i unwind label %bb.kp

.invoke272.i:                                     ; preds = %bb.ko, %bb.km
  invoke void @__cxa_end_catch()
          to label %bb.kn unwind label %bb.kr

end_hunk_11
begin_hunk_12_@_Z35testing_std_array_output_conversionv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %177)
  store i32 %i.aiy, ptr %206, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #31
  store ptr %206, ptr %i.r, align 8, !tbaa !47
  %i.aiz = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbT_S4_S4_S4_iS4_RKT0_RKT1_(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 60, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %200)
          to label %bb.nc unwind label %bb.no     ; 0 uses

bb.nc:                                            ; preds = %bb.nb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #31
  %i.aja = getelementptr inbounds nuw i8, ptr %173, i64 16
  store ptr %173, ptr %i.aja, align 8, !tbaa !108
  %i.ajb = getelementptr inbounds nuw i8, ptr %173, i64 24
  %i.ajc = getelementptr inbounds nuw i8, ptr %173, i64 11 ; 3 uses
  store ptr %i.ajc, ptr %i.ajb, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %172) #31
  store i32 100, ptr %172, align 8, !tbaa !111
  %i.ajd = getelementptr inbounds nuw i8, ptr %172, i64 8
  store ptr %i.ajc, ptr %i.ajd, align 8, !tbaa !112
  %i.aje = getelementptr inbounds nuw i8, ptr %172, i64 16
  store i8 48, ptr %i.aje, align 8, !tbaa !113
  %i.ajf = getelementptr inbounds nuw i8, ptr %172, i64 20
  store i32 48, ptr %i.ajf, align 4, !tbaa !114
  %i.ajg = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEtcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %172)
          to label %bb.nd unwind label %bb.np

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #31
  %i.ajh = ptrtoint ptr %i.ajc to i64
  %i.aji = ptrtoint ptr %i.ajg to i64
  %i.ajj = sub i64 %i.ajh, %i.aji
  %i.ajk = icmp ult i64 %i.ajj, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #31
  br i1 %i.ajk, label %bb.nh, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  call void @llvm.lifetime.start.p0(ptr nonnull %171) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %171, align 8, !tbaa !40
  %i.ajl = getelementptr inbounds nuw i8, ptr %171, i64 8
  store ptr @_ZTIs, ptr %i.ajl, align 8, !tbaa !45
  %i.ajm = getelementptr inbounds nuw i8, ptr %171, i64 16
  store ptr @_ZTISt5arrayIaLm3EE, ptr %i.ajm, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %171) #32
          to label %bb.nf unwind label %bb.ng

bb.nf:                                            ; preds = %bb.ne
  unreachable

bb.ng:                                            ; preds = %bb.ne
  %i.ajn = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %171) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #31
  br label %.body110.i48

bb.nh:                                            ; preds = %bb.nd
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_)
          to label %._crit_edge.i.i112.i51 unwind label %bb.np

bb.ni:                                            ; preds = %.body97.i41
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 53, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_)
          to label %.invoke268.i43 unwind label %bb.nj

.invoke268.i43:                                   ; preds = %bb.ni, %bb.mp
  invoke void @__cxa_end_catch()
          to label %bb.mq unwind label %bb.nl

bb.nj:                                            ; preds = %bb.ni
  %i.ajo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body91.i39 unwind label %bb.rh

bb.nk:                                            ; preds = %bb.mp
  %i.ajp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body91.i39 unwind label %bb.rh

bb.nl:                                            ; preds = %.invoke268.i43, %bb.lx
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i39

.body91.i39:                                      ; preds = %bb.nl, %bb.nk, %bb.nj, %bb.mn, %bb.mb
  %.pn53.pn.i40 = phi { ptr, i32 } [ %i.ahk, %bb.mn ], [ %i.ajp, %bb.nk ], [ %i.ajo, %bb.nj ], [ %i.ajq, %bb.nl ], [ %i.ags, %bb.mb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %204) #31
  br label %.body87.i37

.body87.i37:                                      ; preds = %.body91.i39, %bb.mm, %bb.ml, %bb.lv
  %.pn53.pn.pn.i38 = phi { ptr, i32 } [ %.pn53.pn.i40, %.body91.i39 ], [ %i.ahj, %bb.mm ], [ %i.ahi, %bb.ml ], [ %i.agc, %bb.lv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #31
  br label %bb.rg

bb.nm:                                            ; preds = %bb.mq
  %i.ajr = landingpad { ptr, i32 }
          cleanup
  br label %.body101.i44

bb.nn:                                            ; preds = %bb.mv
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #31
  br label %.body101.i44

bb.no:                                            ; preds = %bb.nb
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #31
  br label %.body105.i46

bb.np:                                            ; preds = %bb.nh, %bb.nc
  %i.aju = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body110.i48

.body110.i48:                                     ; preds = %bb.np, %bb.ng
  %eh.lpad-body111.i49 = phi { ptr, i32 } [ %i.aju, %bb.np ], [ %i.ajn, %bb.ng ] ; 2 uses
  %i.ajv = extractvalue { ptr, i32 } %eh.lpad-body111.i49, 0
  %i.ajw = extractvalue { ptr, i32 } %eh.lpad-body111.i49, 1
  %i.ajx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.ajy = icmp eq i32 %i.ajw, %i.ajx
  %i.ajz = call ptr @__cxa_begin_catch(ptr %i.ajv) #31 ; 0 uses
  br i1 %i.ajy, label %bb.nq, label %bb.om

bb.nq:                                            ; preds = %.body110.i48
  %i.aka = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke269.i50 unwind label %bb.oo ; 0 uses

._crit_edge.i.i112.i51:                           ; preds = %.invoke269.i50, %bb.nh
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %205) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %207) #31
  %i.akb = getelementptr inbounds nuw i8, ptr %207, i64 16 ; 6 uses
  store ptr %i.akb, ptr %207, align 8, !tbaa !50
  %i.akc = call ptr @wmemcpy(ptr noundef nonnull %i.akb, ptr noundef nonnull @.str.29, i64 noundef 3) #31 ; 0 uses
  %.pre7.i.i.i52 = load ptr, ptr %207, align 8, !tbaa !52
  %i.akd = getelementptr inbounds nuw i8, ptr %207, i64 8 ; 3 uses
  store i64 3, ptr %i.akd, align 8, !tbaa !53
  %i.ake = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i52, i64 12
  store i32 0, ptr %i.ake, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %208) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %208, i8 0, i64 1200, i1 false), !alias.scope !597
  call void @llvm.lifetime.start.p0(ptr nonnull %170) #31, !noalias !597
  %i.akf = getelementptr inbounds nuw i8, ptr %170, i64 48 ; 2 uses
  store ptr %170, ptr %i.akf, align 8, !tbaa !116, !noalias !597
  %i.akg = getelementptr inbounds nuw i8, ptr %170, i64 56 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %170, i64 44 ; 4 uses
  store ptr %i.akh, ptr %i.akg, align 8, !tbaa !117, !noalias !597
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #31, !noalias !597
  store i32 100, ptr %169, align 8, !tbaa !119, !noalias !597
  %i.aki = getelementptr inbounds nuw i8, ptr %169, i64 8
  store ptr %i.akh, ptr %i.aki, align 8, !tbaa !120, !noalias !597
  %i.akj = getelementptr inbounds nuw i8, ptr %169, i64 16
  store i32 48, ptr %i.akj, align 8, !tbaa !121, !noalias !597
  %i.akk = getelementptr inbounds nuw i8, ptr %169, i64 20
  store i32 48, ptr %i.akk, align 4, !tbaa !122, !noalias !597
  %i.akl = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %169)
          to label %bb.nr unwind label %bb.oq     ; 3 uses

bb.nr:                                            ; preds = %._crit_edge.i.i112.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #31, !noalias !597
  store ptr %i.akl, ptr %i.akf, align 8, !tbaa !116, !noalias !597
  store ptr %i.akh, ptr %i.akg, align 8, !tbaa !117, !noalias !597
  %i.akm = ptrtoint ptr %i.akh to i64
  %i.akn = ptrtoint ptr %i.akl to i64
  %i.ako = sub i64 %i.akm, %i.akn                 ; 3 uses
  %i.akp = icmp ult i64 %i.ako, 1200
  br i1 %i.akp, label %bb.nv, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #31, !noalias !597
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #31, !noalias !597
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %168, align 8, !tbaa !40, !noalias !597
  %i.akq = getelementptr inbounds nuw i8, ptr %168, i64 8
  store ptr @_ZTIs, ptr %i.akq, align 8, !tbaa !45, !noalias !597
  %i.akr = getelementptr inbounds nuw i8, ptr %168, i64 16
  store ptr @_ZTISt5arrayIwLm300EE, ptr %i.akr, align 8, !tbaa !46, !noalias !597
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %168) #32
          to label %bb.nt unwind label %bb.nu, !noalias !597

bb.nt:                                            ; preds = %bb.ns
  unreachable

bb.nu:                                            ; preds = %bb.ns
  %i.aks = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %168) #31, !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #31, !noalias !597
  br label %.body117.i53

bb.nv:                                            ; preds = %bb.nr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %208, ptr align 4 %i.akl, i64 %i.ako, i1 false)
  %i.akt = getelementptr inbounds nuw i8, ptr %208, i64 %i.ako
  store i32 0, ptr %i.akt, align 4, !tbaa !55, !alias.scope !597
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #31, !noalias !597
  %i.aku = load i64, ptr %i.akd, align 8, !tbaa !53 ; 3 uses
  %i.akv = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %208) #33
  %i.akw = icmp eq i64 %i.aku, %i.akv
  br i1 %i.akw, label %bb.nw, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i59

bb.nw:                                            ; preds = %bb.nv
  %i.akx = icmp eq i64 %i.aku, 0
  br i1 %i.akx, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i59, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.aky = load ptr, ptr %207, align 8, !tbaa !52
  %i.akz = call i32 @wmemcmp(ptr noundef %i.aky, ptr noundef nonnull %208, i64 noundef %i.aku) #33
  %i.ala = icmp eq i32 %i.akz, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i59

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i59: ; preds = %bb.nx, %bb.nw, %bb.nv
  %i.alb = phi i1 [ false, %bb.nv ], [ %i.ala, %bb.nx ], [ true, %bb.nw ]
  %i.alc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 71, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_, i1 noundef zeroext %i.alb)
          to label %bb.ny unwind label %bb.oq     ; 0 uses

bb.ny:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %208) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %209) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %209, i8 0, i64 1200, i1 false), !alias.scope !598
  call void @llvm.lifetime.start.p0(ptr nonnull %167) #31, !noalias !598
  %i.ald = getelementptr inbounds nuw i8, ptr %167, i64 48 ; 2 uses
  store ptr %167, ptr %i.ald, align 8, !tbaa !116, !noalias !598
  %i.ale = getelementptr inbounds nuw i8, ptr %167, i64 56 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %167, i64 44 ; 4 uses
  store ptr %i.alf, ptr %i.ale, align 8, !tbaa !117, !noalias !598
  call void @llvm.lifetime.start.p0(ptr nonnull %166) #31, !noalias !598
  store i32 100, ptr %166, align 8, !tbaa !119, !noalias !598
  %i.alg = getelementptr inbounds nuw i8, ptr %166, i64 8
  store ptr %i.alf, ptr %i.alg, align 8, !tbaa !120, !noalias !598
  %i.alh = getelementptr inbounds nuw i8, ptr %166, i64 16
  store i32 48, ptr %i.alh, align 8, !tbaa !121, !noalias !598
  %i.ali = getelementptr inbounds nuw i8, ptr %166, i64 20
  store i32 48, ptr %i.ali, align 4, !tbaa !122, !noalias !598
  %i.alj = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %166)
          to label %bb.nz unwind label %bb.or     ; 3 uses

bb.nz:                                            ; preds = %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #31, !noalias !598
  store ptr %i.alj, ptr %i.ald, align 8, !tbaa !116, !noalias !598
  store ptr %i.alf, ptr %i.ale, align 8, !tbaa !117, !noalias !598
  %i.alk = ptrtoint ptr %i.alf to i64
  %i.all = ptrtoint ptr %i.alj to i64
  %i.alm = sub i64 %i.alk, %i.all                 ; 3 uses
  %i.aln = icmp ult i64 %i.alm, 1200
  br i1 %i.aln, label %bb.od, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #31, !noalias !598
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #31, !noalias !598
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %165, align 8, !tbaa !40, !noalias !598
  %i.alo = getelementptr inbounds nuw i8, ptr %165, i64 8
  store ptr @_ZTIs, ptr %i.alo, align 8, !tbaa !45, !noalias !598
  %i.alp = getelementptr inbounds nuw i8, ptr %165, i64 16
  store ptr @_ZTISt5arrayIwLm300EE, ptr %i.alp, align 8, !tbaa !46, !noalias !598
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %165) #32
          to label %bb.ob unwind label %bb.oc, !noalias !598

bb.ob:                                            ; preds = %bb.oa
  unreachable

bb.oc:                                            ; preds = %bb.oa
  %i.alq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %165) #31, !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #31, !noalias !598
  br label %.body121.i60

bb.od:                                            ; preds = %bb.nz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %209, ptr align 4 %i.alj, i64 %i.alm, i1 false)
  %i.alr = getelementptr inbounds nuw i8, ptr %209, i64 %i.alm
  store i32 0, ptr %i.alr, align 4, !tbaa !55, !alias.scope !598
  call void @llvm.lifetime.end.p0(ptr nonnull %167) #31, !noalias !598
  %i.als = load i64, ptr %i.akd, align 8, !tbaa !53 ; 3 uses
  %i.alt = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %209) #33
  %i.alu = icmp eq i64 %i.als, %i.alt
  br i1 %i.alu, label %bb.oe, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i62

bb.oe:                                            ; preds = %bb.od
  %i.alv = icmp eq i64 %i.als, 0
  br i1 %i.alv, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i62, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.alw = load ptr, ptr %207, align 8, !tbaa !52
  %i.alx = call i32 @wmemcmp(ptr noundef %i.alw, ptr noundef nonnull %209, i64 noundef %i.als) #33
  %i.aly = icmp eq i32 %i.alx, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i62

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i62: ; preds = %bb.of, %bb.oe, %bb.od
  %i.alz = phi i1 [ false, %bb.od ], [ %i.aly, %bb.of ], [ true, %bb.oe ]
  %i.ama = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 76, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_, i1 noundef zeroext %i.alz)
          to label %bb.og unwind label %bb.or     ; 0 uses

bb.og:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #31
  %i.amb = getelementptr inbounds nuw i8, ptr %164, i64 48
  store ptr %164, ptr %i.amb, align 8, !tbaa !116
  %i.amc = getelementptr inbounds nuw i8, ptr %164, i64 56
  %i.amd = getelementptr inbounds nuw i8, ptr %164, i64 44 ; 3 uses
  store ptr %i.amd, ptr %i.amc, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #31
  store i32 100, ptr %163, align 8, !tbaa !119
  %i.ame = getelementptr inbounds nuw i8, ptr %163, i64 8
  store ptr %i.amd, ptr %i.ame, align 8, !tbaa !120
  %i.amf = getelementptr inbounds nuw i8, ptr %163, i64 16
  store i32 48, ptr %i.amf, align 8, !tbaa !121
  %i.amg = getelementptr inbounds nuw i8, ptr %163, i64 20
  store i32 48, ptr %i.amg, align 4, !tbaa !122
  %i.amh = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %163)
          to label %bb.oh unwind label %bb.os

bb.oh:                                            ; preds = %bb.og
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #31
  %i.ami = ptrtoint ptr %i.amd to i64
  %i.amj = ptrtoint ptr %i.amh to i64
  %i.amk = sub i64 %i.ami, %i.amj
  %i.aml = icmp ult i64 %i.amk, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #31
  br i1 %i.aml, label %bb.ol, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %162, align 8, !tbaa !40
  %i.amm = getelementptr inbounds nuw i8, ptr %162, i64 8
  store ptr @_ZTIs, ptr %i.amm, align 8, !tbaa !45
  %i.amn = getelementptr inbounds nuw i8, ptr %162, i64 16
  store ptr @_ZTISt5arrayIwLm3EE, ptr %i.amn, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %162) #32
          to label %bb.oj unwind label %bb.ok

bb.oj:                                            ; preds = %bb.oi
  unreachable

bb.ok:                                            ; preds = %bb.oi
  %i.amo = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %162) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #31
  br label %.body127.i63

bb.ol:                                            ; preds = %bb.oh
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_)
          to label %._crit_edge.i.i129.i66 unwind label %bb.os

bb.om:                                            ; preds = %.body110.i48
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_)
          to label %.invoke269.i50 unwind label %bb.on

.invoke269.i50:                                   ; preds = %bb.om, %bb.nq
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i112.i51 unwind label %bb.op

bb.on:                                            ; preds = %bb.om
  %i.amp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body105.i46 unwind label %bb.rh

bb.oo:                                            ; preds = %bb.nq
  %i.amq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body105.i46 unwind label %bb.rh

bb.op:                                            ; preds = %.invoke269.i50, %bb.mw
  %i.amr = landingpad { ptr, i32 }
          cleanup
  br label %.body105.i46

.body105.i46:                                     ; preds = %bb.op, %bb.oo, %bb.on, %bb.no, %bb.na
  %.pn57.pn.i47 = phi { ptr, i32 } [ %i.ajt, %bb.no ], [ %i.amq, %bb.oo ], [ %i.amp, %bb.on ], [ %i.amr, %bb.op ], [ %i.aiw, %bb.na ]
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #31
  br label %.body101.i44

.body101.i44:                                     ; preds = %.body105.i46, %bb.nn, %bb.nm, %bb.mu
  %.pn57.pn.pn.i45 = phi { ptr, i32 } [ %.pn57.pn.i47, %.body105.i46 ], [ %i.ajs, %bb.nn ], [ %i.ajr, %bb.nm ], [ %i.aif, %bb.mu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %205) #31
  br label %bb.rg

bb.oq:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i59, %._crit_edge.i.i112.i51
  %i.ams = landingpad { ptr, i32 }
          cleanup
  br label %.body117.i53

.body117.i53:                                     ; preds = %bb.oq, %bb.nu
  %eh.lpad-body118.i54 = phi { ptr, i32 } [ %i.ams, %bb.oq ], [ %i.aks, %bb.nu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %208) #31
  br label %bb.rf

bb.or:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit124.i62, %bb.ny
  %i.amt = landingpad { ptr, i32 }
          cleanup
  br label %.body121.i60

.body121.i60:                                     ; preds = %bb.or, %bb.oc
  %eh.lpad-body122.i61 = phi { ptr, i32 } [ %i.amt, %bb.or ], [ %i.alq, %bb.oc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #31
  br label %bb.rf

bb.os:                                            ; preds = %bb.ol, %bb.og
  %i.amu = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body127.i63

.body127.i63:                                     ; preds = %bb.os, %bb.ok
  %eh.lpad-body128.i64 = phi { ptr, i32 } [ %i.amu, %bb.os ], [ %i.amo, %bb.ok ] ; 2 uses
  %i.amv = extractvalue { ptr, i32 } %eh.lpad-body128.i64, 0
  %i.amw = extractvalue { ptr, i32 } %eh.lpad-body128.i64, 1
  %i.amx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.amy = icmp eq i32 %i.amw, %i.amx
  %i.amz = call ptr @__cxa_begin_catch(ptr %i.amv) #31 ; 0 uses
  br i1 %i.amy, label %bb.ot, label %bb.pp

bb.ot:                                            ; preds = %.body127.i63
  %i.ana = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke270.i65 unwind label %bb.pr ; 0 uses

._crit_edge.i.i129.i66:                           ; preds = %.invoke270.i65, %bb.ol
  call void @llvm.lifetime.start.p0(ptr nonnull %210) #31
  %i.anb = getelementptr inbounds nuw i8, ptr %210, i64 16 ; 6 uses
  store ptr %i.anb, ptr %210, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.anb, ptr noundef nonnull align 2 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.anc = getelementptr inbounds nuw i8, ptr %210, i64 8 ; 3 uses
  store i64 3, ptr %i.anc, align 8, !tbaa !60
  %i.and = getelementptr inbounds nuw i8, ptr %210, i64 22
  store i16 0, ptr %i.and, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %211) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(600) %211, i8 0, i64 600, i1 false), !alias.scope !599
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #31, !noalias !599
  %i.ane = getelementptr inbounds nuw i8, ptr %161, i64 24 ; 2 uses
  store ptr %161, ptr %i.ane, align 8, !tbaa !124, !noalias !599
  %i.anf = getelementptr inbounds nuw i8, ptr %161, i64 32 ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %161, i64 22 ; 4 uses
  store ptr %i.ang, ptr %i.anf, align 8, !tbaa !125, !noalias !599
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #31, !noalias !599
  store i32 100, ptr %160, align 8, !tbaa !127, !noalias !599
  %i.anh = getelementptr inbounds nuw i8, ptr %160, i64 8
  store ptr %i.ang, ptr %i.anh, align 8, !tbaa !128, !noalias !599
  %i.ani = getelementptr inbounds nuw i8, ptr %160, i64 16
  store i16 48, ptr %i.ani, align 8, !tbaa !129, !noalias !599
  %i.anj = getelementptr inbounds nuw i8, ptr %160, i64 18
  store i16 48, ptr %i.anj, align 2, !tbaa !130, !noalias !599
  %i.ank = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEtDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %160)
          to label %bb.ou unwind label %bb.pt     ; 3 uses

bb.ou:                                            ; preds = %._crit_edge.i.i129.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #31, !noalias !599
  store ptr %i.ank, ptr %i.ane, align 8, !tbaa !124, !noalias !599
  store ptr %i.ang, ptr %i.anf, align 8, !tbaa !125, !noalias !599
  %i.anl = ptrtoint ptr %i.ang to i64
  %i.anm = ptrtoint ptr %i.ank to i64
  %i.ann = sub i64 %i.anl, %i.anm                 ; 3 uses
  %i.ano = icmp ult i64 %i.ann, 600
  br i1 %i.ano, label %bb.oy, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #31, !noalias !599
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #31, !noalias !599
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %159, align 8, !tbaa !40, !noalias !599
  %i.anp = getelementptr inbounds nuw i8, ptr %159, i64 8
  store ptr @_ZTIs, ptr %i.anp, align 8, !tbaa !45, !noalias !599
  %i.anq = getelementptr inbounds nuw i8, ptr %159, i64 16
  store ptr @_ZTISt5arrayIDsLm300EE, ptr %i.anq, align 8, !tbaa !46, !noalias !599
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %159) #32
          to label %bb.ow unwind label %bb.ox, !noalias !599

bb.ow:                                            ; preds = %bb.ov
  unreachable

bb.ox:                                            ; preds = %bb.ov
  %i.anr = landingpad { ptr, i32 }
end_hunk_12
begin_hunk_13_@_Z35testing_std_array_output_conversionv:bb.a
.lr.ph.i.i.i145.i122:                             ; preds = %bb.pi, %.lr.ph.i.i.i145.i122
  %.01216.i.i.i146.i123 = phi i64 [ %i.aph, %.lr.ph.i.i.i145.i122 ], [ 0, %bb.pi ] ; 3 uses
  %i.apd = getelementptr inbounds nuw [2 x i8], ptr %i.apc, i64 %.01216.i.i.i146.i123
  %i.ape = getelementptr inbounds nuw [2 x i8], ptr %212, i64 %.01216.i.i.i146.i123
  %i.apf = load i16, ptr %i.apd, align 2, !tbaa !62
  %i.apg = load i16, ptr %i.ape, align 2, !tbaa !62
  %or.cond.not.i.i147.i124 = icmp eq i16 %i.apg, %i.apf ; 2 uses
  %i.aph = add nuw nsw i64 %.01216.i.i.i146.i123, 1 ; 2 uses
  %exitcond.not.i.i.i148.i125 = icmp ne i64 %i.aph, %i.aow
  %or.cond557.not = select i1 %or.cond.not.i.i147.i124, i1 %exitcond.not.i.i.i148.i125, i1 false
  br i1 %or.cond557.not, label %.lr.ph.i.i.i145.i122, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i80, !llvm.loop !1

_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i80: ; preds = %.lr.ph.i.i.i145.i122, %bb.pi, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i143.i79
  %i.api = phi i1 [ false, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i143.i79 ], [ true, %bb.pi ], [ %or.cond.not.i.i147.i124, %.lr.ph.i.i.i145.i122 ]
  %i.apj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 95, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_, i1 noundef zeroext %i.api)
          to label %bb.pj unwind label %bb.pu     ; 0 uses

bb.pj:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %212) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #31
  %i.apk = getelementptr inbounds nuw i8, ptr %155, i64 24
  store ptr %155, ptr %i.apk, align 8, !tbaa !124
  %i.apl = getelementptr inbounds nuw i8, ptr %155, i64 32
  %i.apm = getelementptr inbounds nuw i8, ptr %155, i64 22 ; 3 uses
  store ptr %i.apm, ptr %i.apl, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #31
  store i32 100, ptr %154, align 8, !tbaa !127
  %i.apn = getelementptr inbounds nuw i8, ptr %154, i64 8
  store ptr %i.apm, ptr %i.apn, align 8, !tbaa !128
  %i.apo = getelementptr inbounds nuw i8, ptr %154, i64 16
  store i16 48, ptr %i.apo, align 8, !tbaa !129
  %i.app = getelementptr inbounds nuw i8, ptr %154, i64 18
  store i16 48, ptr %i.app, align 2, !tbaa !130
  %i.apq = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEtDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %154)
          to label %bb.pk unwind label %bb.pv

bb.pk:                                            ; preds = %bb.pj
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #31
  %i.apr = ptrtoint ptr %i.apm to i64
  %i.aps = ptrtoint ptr %i.apq to i64
  %i.apt = sub i64 %i.apr, %i.aps
  %i.apu = icmp ult i64 %i.apt, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #31
  br i1 %i.apu, label %bb.po, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %153, align 8, !tbaa !40
  %i.apv = getelementptr inbounds nuw i8, ptr %153, i64 8
  store ptr @_ZTIs, ptr %i.apv, align 8, !tbaa !45
  %i.apw = getelementptr inbounds nuw i8, ptr %153, i64 16
  store ptr @_ZTISt5arrayIDsLm3EE, ptr %i.apw, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %153) #32
          to label %bb.pm unwind label %bb.pn

bb.pm:                                            ; preds = %bb.pl
  unreachable

bb.pn:                                            ; preds = %bb.pl
  %i.apx = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %153) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #31
  br label %.body153.i81

bb.po:                                            ; preds = %bb.pk
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_)
          to label %._crit_edge.i.i156.i84 unwind label %bb.pv

bb.pp:                                            ; preds = %.body127.i63
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_)
          to label %.invoke270.i65 unwind label %bb.pq

.invoke270.i65:                                   ; preds = %bb.pp, %bb.ot
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i129.i66 unwind label %bb.ps

bb.pq:                                            ; preds = %bb.pp
  %i.apy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.rf unwind label %bb.rh

bb.pr:                                            ; preds = %bb.ot
  %i.apz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.rf unwind label %bb.rh

bb.ps:                                            ; preds = %.invoke270.i65
  %i.aqa = landingpad { ptr, i32 }
          cleanup
  br label %bb.rf

bb.pt:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i75, %._crit_edge.i.i129.i66
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i67

.body135.i67:                                     ; preds = %bb.pt, %bb.ox
  %eh.lpad-body136.i68 = phi { ptr, i32 } [ %i.aqb, %bb.pt ], [ %i.anr, %bb.ox ]
  call void @llvm.lifetime.end.p0(ptr nonnull %211) #31
  br label %bb.re

bb.pu:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit149.i80, %bb.pb
  %i.aqc = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i76

.body139.i76:                                     ; preds = %bb.pu, %bb.pf
  %eh.lpad-body140.i77 = phi { ptr, i32 } [ %i.aqc, %bb.pu ], [ %i.aou, %bb.pf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %212) #31
  br label %bb.re

bb.pv:                                            ; preds = %bb.po, %bb.pj
  %i.aqd = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body153.i81

.body153.i81:                                     ; preds = %bb.pv, %bb.pn
  %eh.lpad-body154.i82 = phi { ptr, i32 } [ %i.aqd, %bb.pv ], [ %i.apx, %bb.pn ] ; 2 uses
  %i.aqe = extractvalue { ptr, i32 } %eh.lpad-body154.i82, 0
  %i.aqf = extractvalue { ptr, i32 } %eh.lpad-body154.i82, 1
  %i.aqg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.aqh = icmp eq i32 %i.aqf, %i.aqg
  %i.aqi = call ptr @__cxa_begin_catch(ptr %i.aqe) #31 ; 0 uses
  br i1 %i.aqh, label %bb.pw, label %bb.qq

bb.pw:                                            ; preds = %.body153.i81
  %i.aqj = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke271.i83 unwind label %bb.qs ; 0 uses

._crit_edge.i.i156.i84:                           ; preds = %.invoke271.i83, %bb.po
  call void @llvm.lifetime.start.p0(ptr nonnull %213) #31
  %i.aqk = getelementptr inbounds nuw i8, ptr %213, i64 16 ; 6 uses
  store ptr %i.aqk, ptr %213, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aqk, ptr noundef nonnull align 4 dereferenceable(12) @.str.29, i64 12, i1 false)
  %i.aql = getelementptr inbounds nuw i8, ptr %213, i64 8 ; 3 uses
  store i64 3, ptr %i.aql, align 8, !tbaa !69
  %i.aqm = getelementptr inbounds nuw i8, ptr %213, i64 28
  store i32 0, ptr %i.aqm, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %214) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %214, i8 0, i64 1200, i1 false), !alias.scope !601
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #31, !noalias !601
  %i.aqn = getelementptr inbounds nuw i8, ptr %152, i64 48 ; 2 uses
  store ptr %152, ptr %i.aqn, align 8, !tbaa !132, !noalias !601
  %i.aqo = getelementptr inbounds nuw i8, ptr %152, i64 56 ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %152, i64 44 ; 4 uses
  store ptr %i.aqp, ptr %i.aqo, align 8, !tbaa !133, !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #31, !noalias !601
  store i32 100, ptr %151, align 8, !tbaa !135, !noalias !601
  %i.aqq = getelementptr inbounds nuw i8, ptr %151, i64 8
  store ptr %i.aqp, ptr %i.aqq, align 8, !tbaa !136, !noalias !601
  %i.aqr = getelementptr inbounds nuw i8, ptr %151, i64 16
  store i32 48, ptr %i.aqr, align 8, !tbaa !137, !noalias !601
  %i.aqs = getelementptr inbounds nuw i8, ptr %151, i64 20
  store i32 48, ptr %i.aqs, align 4, !tbaa !138, !noalias !601
  %i.aqt = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEtDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %151)
          to label %bb.px unwind label %bb.qu     ; 3 uses

bb.px:                                            ; preds = %._crit_edge.i.i156.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #31, !noalias !601
  store ptr %i.aqt, ptr %i.aqn, align 8, !tbaa !132, !noalias !601
  store ptr %i.aqp, ptr %i.aqo, align 8, !tbaa !133, !noalias !601
  %i.aqu = ptrtoint ptr %i.aqp to i64
  %i.aqv = ptrtoint ptr %i.aqt to i64
  %i.aqw = sub i64 %i.aqu, %i.aqv                 ; 3 uses
  %i.aqx = icmp ult i64 %i.aqw, 1200
  br i1 %i.aqx, label %bb.qb, label %bb.py

bb.py:                                            ; preds = %bb.px
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #31, !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #31, !noalias !601
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %150, align 8, !tbaa !40, !noalias !601
  %i.aqy = getelementptr inbounds nuw i8, ptr %150, i64 8
  store ptr @_ZTIs, ptr %i.aqy, align 8, !tbaa !45, !noalias !601
  %i.aqz = getelementptr inbounds nuw i8, ptr %150, i64 16
  store ptr @_ZTISt5arrayIDiLm300EE, ptr %i.aqz, align 8, !tbaa !46, !noalias !601
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %150) #32
          to label %bb.pz unwind label %bb.qa, !noalias !601

bb.pz:                                            ; preds = %bb.py
  unreachable

bb.qa:                                            ; preds = %bb.py
  %i.ara = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %150) #31, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #31, !noalias !601
  br label %.body163.i85

bb.qb:                                            ; preds = %bb.px
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %214, ptr align 4 %i.aqt, i64 %i.aqw, i1 false)
  %i.arb = getelementptr inbounds nuw i8, ptr %214, i64 %i.aqw
  store i32 0, ptr %i.arb, align 4, !tbaa !71, !alias.scope !601
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #31, !noalias !601
  %i.arc = load i64, ptr %i.aql, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i.i91 = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %214)
  %i.ard = icmp eq i64 %i.arc, %wcslen.i.i.i.i91
  br i1 %i.ard, label %bb.qc, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i92

bb.qc:                                            ; preds = %bb.qb
  %i.are = load ptr, ptr %213, align 8, !tbaa !72
  %.not.i.i.i165.i116 = icmp eq i64 %i.arc, 0
  br i1 %.not.i.i.i165.i116, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i92, label %.lr.ph.i.i.i166.i117

.lr.ph.i.i.i166.i117:                             ; preds = %bb.qc, %.lr.ph.i.i.i166.i117
  %.01216.i.i.i167.i118 = phi i64 [ %i.arj, %.lr.ph.i.i.i166.i117 ], [ 0, %bb.qc ] ; 3 uses
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %i.are, i64 %.01216.i.i.i167.i118
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %214, i64 %.01216.i.i.i167.i118
  %i.arh = load i32, ptr %i.arf, align 4, !tbaa !71
  %i.ari = load i32, ptr %i.arg, align 4, !tbaa !71
  %or.cond.not.i.i168.i119 = icmp eq i32 %i.ari, %i.arh ; 2 uses
  %i.arj = add nuw nsw i64 %.01216.i.i.i167.i118, 1 ; 2 uses
  %exitcond.not.i.i.i169.i120 = icmp ne i64 %i.arj, %i.arc
  %or.cond558.not = select i1 %or.cond.not.i.i168.i119, i1 %exitcond.not.i.i.i169.i120, i1 false
  br i1 %or.cond558.not, label %.lr.ph.i.i.i166.i117, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i92, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i92: ; preds = %.lr.ph.i.i.i166.i117, %bb.qc, %bb.qb
  %i.ark = phi i1 [ false, %bb.qb ], [ true, %bb.qc ], [ %or.cond.not.i.i168.i119, %.lr.ph.i.i.i166.i117 ]
  %i.arl = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 108, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_, i1 noundef zeroext %i.ark)
          to label %bb.qd unwind label %bb.qu     ; 0 uses

bb.qd:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %214) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %215) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %215, i8 0, i64 1200, i1 false), !alias.scope !602
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #31, !noalias !602
  %i.arm = getelementptr inbounds nuw i8, ptr %149, i64 48 ; 2 uses
  store ptr %149, ptr %i.arm, align 8, !tbaa !132, !noalias !602
  %i.arn = getelementptr inbounds nuw i8, ptr %149, i64 56 ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %149, i64 44 ; 4 uses
  store ptr %i.aro, ptr %i.arn, align 8, !tbaa !133, !noalias !602
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #31, !noalias !602
  store i32 100, ptr %148, align 8, !tbaa !135, !noalias !602
  %i.arp = getelementptr inbounds nuw i8, ptr %148, i64 8
  store ptr %i.aro, ptr %i.arp, align 8, !tbaa !136, !noalias !602
  %i.arq = getelementptr inbounds nuw i8, ptr %148, i64 16
  store i32 48, ptr %i.arq, align 8, !tbaa !137, !noalias !602
  %i.arr = getelementptr inbounds nuw i8, ptr %148, i64 20
  store i32 48, ptr %i.arr, align 4, !tbaa !138, !noalias !602
  %i.ars = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEtDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %148)
          to label %bb.qe unwind label %bb.qv     ; 3 uses

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #31, !noalias !602
  store ptr %i.ars, ptr %i.arm, align 8, !tbaa !132, !noalias !602
  store ptr %i.aro, ptr %i.arn, align 8, !tbaa !133, !noalias !602
  %i.art = ptrtoint ptr %i.aro to i64
  %i.aru = ptrtoint ptr %i.ars to i64
  %i.arv = sub i64 %i.art, %i.aru                 ; 3 uses
  %i.arw = icmp ult i64 %i.arv, 1200
  br i1 %i.arw, label %bb.qi, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #31, !noalias !602
  call void @llvm.lifetime.start.p0(ptr nonnull %147) #31, !noalias !602
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %147, align 8, !tbaa !40, !noalias !602
  %i.arx = getelementptr inbounds nuw i8, ptr %147, i64 8
  store ptr @_ZTIs, ptr %i.arx, align 8, !tbaa !45, !noalias !602
  %i.ary = getelementptr inbounds nuw i8, ptr %147, i64 16
  store ptr @_ZTISt5arrayIDiLm300EE, ptr %i.ary, align 8, !tbaa !46, !noalias !602
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %147) #32
          to label %bb.qg unwind label %bb.qh, !noalias !602

bb.qg:                                            ; preds = %bb.qf
  unreachable

bb.qh:                                            ; preds = %bb.qf
  %i.arz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %147) #31, !noalias !602
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #31, !noalias !602
  br label %.body172.i93

bb.qi:                                            ; preds = %bb.qe
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %215, ptr align 4 %i.ars, i64 %i.arv, i1 false)
  %i.asa = getelementptr inbounds nuw i8, ptr %215, i64 %i.arv
  store i32 0, ptr %i.asa, align 4, !tbaa !71, !alias.scope !602
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #31, !noalias !602
  %i.asb = load i64, ptr %i.aql, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i175.i95 = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %215)
  %i.asc = icmp eq i64 %i.asb, %wcslen.i.i.i175.i95
  br i1 %i.asc, label %bb.qj, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i96

bb.qj:                                            ; preds = %bb.qi
  %i.asd = load ptr, ptr %213, align 8, !tbaa !72
  %.not.i.i.i176.i111 = icmp eq i64 %i.asb, 0
  br i1 %.not.i.i.i176.i111, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i96, label %.lr.ph.i.i.i177.i112

.lr.ph.i.i.i177.i112:                             ; preds = %bb.qj, %.lr.ph.i.i.i177.i112
  %.01216.i.i.i178.i113 = phi i64 [ %i.asi, %.lr.ph.i.i.i177.i112 ], [ 0, %bb.qj ] ; 3 uses
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %i.asd, i64 %.01216.i.i.i178.i113
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %215, i64 %.01216.i.i.i178.i113
  %i.asg = load i32, ptr %i.ase, align 4, !tbaa !71
  %i.ash = load i32, ptr %i.asf, align 4, !tbaa !71
  %or.cond.not.i.i179.i114 = icmp eq i32 %i.ash, %i.asg ; 2 uses
  %i.asi = add nuw nsw i64 %.01216.i.i.i178.i113, 1 ; 2 uses
  %exitcond.not.i.i.i180.i115 = icmp ne i64 %i.asi, %i.asb
  %or.cond559.not = select i1 %or.cond.not.i.i179.i114, i1 %exitcond.not.i.i.i180.i115, i1 false
  br i1 %or.cond559.not, label %.lr.ph.i.i.i177.i112, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i96, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i96: ; preds = %.lr.ph.i.i.i177.i112, %bb.qj, %bb.qi
  %i.asj = phi i1 [ false, %bb.qi ], [ true, %bb.qj ], [ %or.cond.not.i.i179.i114, %.lr.ph.i.i.i177.i112 ]
  %i.ask = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 113, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_, i1 noundef zeroext %i.asj)
          to label %bb.qk unwind label %bb.qv     ; 0 uses

bb.qk:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %215) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #31
  %i.asl = getelementptr inbounds nuw i8, ptr %146, i64 48
  store ptr %146, ptr %i.asl, align 8, !tbaa !132
  %i.asm = getelementptr inbounds nuw i8, ptr %146, i64 56
  %i.asn = getelementptr inbounds nuw i8, ptr %146, i64 44 ; 3 uses
  store ptr %i.asn, ptr %i.asm, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #31
  store i32 100, ptr %145, align 8, !tbaa !135
  %i.aso = getelementptr inbounds nuw i8, ptr %145, i64 8
  store ptr %i.asn, ptr %i.aso, align 8, !tbaa !136
  %i.asp = getelementptr inbounds nuw i8, ptr %145, i64 16
  store i32 48, ptr %i.asp, align 8, !tbaa !137
  %i.asq = getelementptr inbounds nuw i8, ptr %145, i64 20
  store i32 48, ptr %i.asq, align 4, !tbaa !138
  %i.asr = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEtDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %145)
          to label %bb.ql unwind label %bb.qw

bb.ql:                                            ; preds = %bb.qk
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #31
  %i.ass = ptrtoint ptr %i.asn to i64
  %i.ast = ptrtoint ptr %i.asr to i64
  %i.asu = sub i64 %i.ass, %i.ast
  %i.asv = icmp ult i64 %i.asu, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #31
  br i1 %i.asv, label %bb.qp, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %144, align 8, !tbaa !40
  %i.asw = getelementptr inbounds nuw i8, ptr %144, i64 8
  store ptr @_ZTIs, ptr %i.asw, align 8, !tbaa !45
  %i.asx = getelementptr inbounds nuw i8, ptr %144, i64 16
  store ptr @_ZTISt5arrayIDiLm3EE, ptr %i.asx, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %144) #32
          to label %bb.qn unwind label %bb.qo

bb.qn:                                            ; preds = %bb.qm
  unreachable

bb.qo:                                            ; preds = %bb.qm
  %i.asy = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %144) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #31
  br label %.body189.i97

bb.qp:                                            ; preds = %bb.ql
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_)
          to label %bb.qy unwind label %bb.qw

bb.qq:                                            ; preds = %.body153.i81
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_)
          to label %.invoke271.i83 unwind label %bb.qr

.invoke271.i83:                                   ; preds = %bb.qq, %bb.pw
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i156.i84 unwind label %bb.qt

bb.qr:                                            ; preds = %bb.qq
  %i.asz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.re unwind label %bb.rh

bb.qs:                                            ; preds = %bb.pw
  %i.ata = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.re unwind label %bb.rh

bb.qt:                                            ; preds = %.invoke271.i83
  %i.atb = landingpad { ptr, i32 }
          cleanup
  br label %bb.re

bb.qu:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i92, %._crit_edge.i.i156.i84
  %i.atc = landingpad { ptr, i32 }
          cleanup
  br label %.body163.i85

.body163.i85:                                     ; preds = %bb.qu, %bb.qa
  %eh.lpad-body164.i86 = phi { ptr, i32 } [ %i.atc, %bb.qu ], [ %i.ara, %bb.qa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %214) #31
  br label %bb.rd

bb.qv:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit181.i96, %bb.qd
  %i.atd = landingpad { ptr, i32 }
          cleanup
  br label %.body172.i93

.body172.i93:                                     ; preds = %bb.qv, %bb.qh
  %eh.lpad-body173.i94 = phi { ptr, i32 } [ %i.atd, %bb.qv ], [ %i.arz, %bb.qh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %215) #31
  br label %bb.rd

bb.qw:                                            ; preds = %bb.qp, %bb.qk
  %i.ate = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body189.i97

.body189.i97:                                     ; preds = %bb.qw, %bb.qo
  %eh.lpad-body190.i98 = phi { ptr, i32 } [ %i.ate, %bb.qw ], [ %i.asy, %bb.qo ] ; 2 uses
  %i.atf = extractvalue { ptr, i32 } %eh.lpad-body190.i98, 0
  %i.atg = extractvalue { ptr, i32 } %eh.lpad-body190.i98, 1
  %i.ath = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.ati = icmp eq i32 %i.atg, %i.ath
  %i.atj = call ptr @__cxa_begin_catch(ptr %i.atf) #31 ; 0 uses
  br i1 %i.ati, label %bb.qx, label %bb.qz

bb.qx:                                            ; preds = %.body189.i97
  %i.atk = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke272.i99 unwind label %bb.rb ; 0 uses

bb.qy:                                            ; preds = %.invoke272.i99, %bb.qp
  %i.atl = load ptr, ptr %213, align 8, !tbaa !72 ; 2 uses
  %i.atm = icmp eq ptr %i.atl, %i.aqk
  br i1 %i.atm, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i101, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i100

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i100: ; preds = %bb.qy
  %i.atn = load i64, ptr %i.aqk, align 8, !tbaa !38
  %i.ato = shl i64 %i.atn, 2
  %i.atp = add i64 %i.ato, 4
  call void @_ZdlPvm(ptr noundef %i.atl, i64 noundef %i.atp) #34
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i101

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i101: ; preds = %bb.qy, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %213) #31
  %i.atq = load ptr, ptr %210, align 8, !tbaa !64 ; 2 uses
  %i.atr = icmp eq ptr %i.atq, %i.anb
  br i1 %i.atr, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i103, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i102

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i101
  %i.ats = load i64, ptr %i.anb, align 8, !tbaa !38
  %i.att = shl i64 %i.ats, 1
  %i.atu = add i64 %i.att, 2
  call void @_ZdlPvm(ptr noundef %i.atq, i64 noundef %i.atu) #34
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i103

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i103: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i101, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %210) #31
  %i.atv = load ptr, ptr %207, align 8, !tbaa !52 ; 2 uses
  %i.atw = icmp eq ptr %i.atv, %i.akb
  br i1 %i.atw, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i105, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i104

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i103
  %i.atx = load i64, ptr %i.akb, align 8, !tbaa !38
  %i.aty = shl i64 %i.atx, 2
  %i.atz = add i64 %i.aty, 4
  call void @_ZdlPvm(ptr noundef %i.atv, i64 noundef %i.atz) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i105

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i105: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i103, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %207) #31
  %i.aua = load ptr, ptr %200, align 8, !tbaa !73 ; 2 uses
  %i.aub = icmp eq ptr %i.aua, %i.adm
  br i1 %i.aub, label %_ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i105
  %i.auc = load i64, ptr %i.adm, align 8, !tbaa !38
  %i.aud = add i64 %i.auc, 1
  call void @_ZdlPvm(ptr noundef %i.aua, i64 noundef %i.aud) #34
  br label %_ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_.exit

bb.qz:                                            ; preds = %.body189.i97
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraysEvT0_)
          to label %.invoke272.i99 unwind label %bb.ra

.invoke272.i99:                                   ; preds = %bb.qz, %bb.qx
  invoke void @__cxa_end_catch()
          to label %bb.qy unwind label %bb.rc

end_hunk_13
begin_hunk_14_@_Z35testing_std_array_output_conversionv:bb.a
  %i.bao = load i32, ptr %105, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %105)
  store i32 %i.bao, ptr %134, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  store ptr %134, ptr %i.l, align 8, !tbaa !47
  %i.bap = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbT_S4_S4_S4_iS4_RKT0_RKT1_(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 60, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %128)
          to label %bb.th unwind label %bb.ts     ; 0 uses

bb.th:                                            ; preds = %bb.tg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #31
  %i.baq = getelementptr inbounds nuw i8, ptr %101, i64 16
  store ptr %101, ptr %i.baq, align 8, !tbaa !140
  %i.bar = getelementptr inbounds nuw i8, ptr %101, i64 24
  %i.bas = getelementptr inbounds nuw i8, ptr %101, i64 10 ; 3 uses
  store ptr %i.bas, ptr %i.bar, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #31
  store i32 100, ptr %100, align 8, !tbaa !111
  %i.bat = getelementptr inbounds nuw i8, ptr %100, i64 8
  store ptr %i.bas, ptr %i.bat, align 8, !tbaa !112
  %i.bau = getelementptr inbounds nuw i8, ptr %100, i64 16
  store i8 48, ptr %i.bau, align 8, !tbaa !113
  %i.bav = getelementptr inbounds nuw i8, ptr %100, i64 20
  store i32 48, ptr %i.bav, align 4, !tbaa !114
  %i.baw = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEtcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %100)
          to label %.noexc101.i unwind label %bb.tt

.noexc101.i:                                      ; preds = %bb.th
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #31
  %i.bax = ptrtoint ptr %i.bas to i64
  %i.bay = ptrtoint ptr %i.baw to i64
  %i.baz = sub i64 %i.bax, %i.bay
  %i.bba = icmp ult i64 %i.baz, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #31
  br i1 %i.bba, label %bb.tl, label %bb.ti

bb.ti:                                            ; preds = %.noexc101.i
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %99, align 8, !tbaa !40
  %i.bbb = getelementptr inbounds nuw i8, ptr %99, i64 8
  store ptr @_ZTIt, ptr %i.bbb, align 8, !tbaa !45
  %i.bbc = getelementptr inbounds nuw i8, ptr %99, i64 16
  store ptr @_ZTISt5arrayIaLm3EE, ptr %i.bbc, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %99) #32
          to label %bb.tj unwind label %bb.tk

bb.tj:                                            ; preds = %bb.ti
  unreachable

bb.tk:                                            ; preds = %bb.ti
  %i.bbd = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %99) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #31
  br label %.body102.i

bb.tl:                                            ; preds = %.noexc101.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_)
          to label %._crit_edge.i.i104.i unwind label %bb.tt

bb.tm:                                            ; preds = %.body92.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 53, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_)
          to label %.invoke251.i unwind label %bb.tn

.invoke251.i:                                     ; preds = %bb.tm, %bb.sw
  invoke void @__cxa_end_catch()
          to label %bb.sx unwind label %bb.tp

bb.tn:                                            ; preds = %bb.tm
  %i.bbe = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body87.i139 unwind label %bb.xc

bb.to:                                            ; preds = %bb.sw
  %i.bbf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body87.i139 unwind label %bb.xc

bb.tp:                                            ; preds = %.invoke251.i, %bb.sf
  %i.bbg = landingpad { ptr, i32 }
          cleanup
  br label %.body87.i139

.body87.i139:                                     ; preds = %bb.tp, %bb.to, %bb.tn, %bb.su, %bb.si
  %.pn53.pn.i140 = phi { ptr, i32 } [ %i.aza, %bb.su ], [ %i.bbf, %bb.to ], [ %i.bbe, %bb.tn ], [ %i.bbg, %bb.tp ], [ %i.ayi, %bb.si ]
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #31
  br label %.body84.i

.body84.i:                                        ; preds = %.body87.i139, %bb.st, %bb.ss, %bb.sd
  %.pn53.pn.pn.i138 = phi { ptr, i32 } [ %.pn53.pn.i140, %.body87.i139 ], [ %i.ayz, %bb.st ], [ %i.ayy, %bb.ss ], [ %i.axs, %bb.sd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #31
  br label %bb.xb

bb.tq:                                            ; preds = %bb.sx
  %i.bbh = landingpad { ptr, i32 }
          cleanup
  br label %.body95.i141

bb.tr:                                            ; preds = %bb.tb
  %i.bbi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  br label %.body95.i141

bb.ts:                                            ; preds = %bb.tg
  %i.bbj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  br label %.body98.i

bb.tt:                                            ; preds = %bb.tl, %bb.th
  %i.bbk = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body102.i

.body102.i:                                       ; preds = %bb.tt, %bb.tk
  %eh.lpad-body103.i = phi { ptr, i32 } [ %i.bbk, %bb.tt ], [ %i.bbd, %bb.tk ] ; 2 uses
  %i.bbl = extractvalue { ptr, i32 } %eh.lpad-body103.i, 0
  %i.bbm = extractvalue { ptr, i32 } %eh.lpad-body103.i, 1
  %i.bbn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.bbo = icmp eq i32 %i.bbm, %i.bbn
  %i.bbp = call ptr @__cxa_begin_catch(ptr %i.bbl) #31 ; 0 uses
  br i1 %i.bbo, label %bb.tu, label %bb.un

bb.tu:                                            ; preds = %.body102.i
  %i.bbq = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke252.i unwind label %bb.up ; 0 uses

._crit_edge.i.i104.i:                             ; preds = %.invoke252.i, %bb.tl
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #31
  %i.bbr = getelementptr inbounds nuw i8, ptr %135, i64 16 ; 6 uses
  store ptr %i.bbr, ptr %135, align 8, !tbaa !50
  %i.bbs = call ptr @wmemcpy(ptr noundef nonnull %i.bbr, ptr noundef nonnull @.str.29, i64 noundef 3) #31 ; 0 uses
  %.pre7.i.i.i144 = load ptr, ptr %135, align 8, !tbaa !52
  %i.bbt = getelementptr inbounds nuw i8, ptr %135, i64 8 ; 3 uses
  store i64 3, ptr %i.bbt, align 8, !tbaa !53
  %i.bbu = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i144, i64 12
  store i32 0, ptr %i.bbu, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %136, i8 0, i64 1200, i1 false), !alias.scope !607
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #31, !noalias !607
  %i.bbv = getelementptr inbounds nuw i8, ptr %98, i64 40 ; 6 uses
  store ptr %98, ptr %i.bbv, align 8, !tbaa !143, !noalias !607
  %i.bbw = getelementptr inbounds nuw i8, ptr %98, i64 48 ; 2 uses
  store ptr %i.bbv, ptr %i.bbw, align 8, !tbaa !144, !noalias !607
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #31, !noalias !607
  store i32 100, ptr %97, align 8, !tbaa !119, !noalias !607
  %i.bbx = getelementptr inbounds nuw i8, ptr %97, i64 8
  store ptr %i.bbv, ptr %i.bbx, align 8, !tbaa !120, !noalias !607
  %i.bby = getelementptr inbounds nuw i8, ptr %97, i64 16
  store i32 48, ptr %i.bby, align 8, !tbaa !121, !noalias !607
  %i.bbz = getelementptr inbounds nuw i8, ptr %97, i64 20
  store i32 48, ptr %i.bbz, align 4, !tbaa !122, !noalias !607
  %i.bca = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %97)
          to label %.noexc107.i unwind label %bb.ur ; 3 uses

.noexc107.i:                                      ; preds = %._crit_edge.i.i104.i
  store ptr %i.bca, ptr %i.bbv, align 8, !tbaa !143, !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #31, !noalias !607
  store ptr %i.bbv, ptr %i.bbw, align 8, !tbaa !144, !noalias !607
  %i.bcb = ptrtoint ptr %i.bbv to i64
  %i.bcc = ptrtoint ptr %i.bca to i64
  %i.bcd = sub i64 %i.bcb, %i.bcc                 ; 3 uses
  %i.bce = icmp ult i64 %i.bcd, 1200
  br i1 %i.bce, label %bb.ty, label %bb.tv

bb.tv:                                            ; preds = %.noexc107.i
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #31, !noalias !607
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #31, !noalias !607
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %96, align 8, !tbaa !40, !noalias !607
  %i.bcf = getelementptr inbounds nuw i8, ptr %96, i64 8
  store ptr @_ZTIt, ptr %i.bcf, align 8, !tbaa !45, !noalias !607
  %i.bcg = getelementptr inbounds nuw i8, ptr %96, i64 16
  store ptr @_ZTISt5arrayIwLm300EE, ptr %i.bcg, align 8, !tbaa !46, !noalias !607
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %96) #32
          to label %bb.tw unwind label %bb.tx, !noalias !607

bb.tw:                                            ; preds = %bb.tv
  unreachable

bb.tx:                                            ; preds = %bb.tv
  %i.bch = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %96) #31, !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #31, !noalias !607
  br label %.body108.i

bb.ty:                                            ; preds = %.noexc107.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %136, ptr align 4 %i.bca, i64 %i.bcd, i1 false)
  %i.bci = getelementptr inbounds nuw i8, ptr %136, i64 %i.bcd
  store i32 0, ptr %i.bci, align 4, !tbaa !55, !alias.scope !607
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #31, !noalias !607
  %i.bcj = load i64, ptr %i.bbt, align 8, !tbaa !53 ; 3 uses
  %i.bck = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %136) #33
  %i.bcl = icmp eq i64 %i.bcj, %i.bck
  br i1 %i.bcl, label %bb.tz, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i146

bb.tz:                                            ; preds = %bb.ty
  %i.bcm = icmp eq i64 %i.bcj, 0
  br i1 %i.bcm, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i146, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.bcn = load ptr, ptr %135, align 8, !tbaa !52
  %i.bco = call i32 @wmemcmp(ptr noundef %i.bcn, ptr noundef nonnull %136, i64 noundef %i.bcj) #33
  %i.bcp = icmp eq i32 %i.bco, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i146

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i146: ; preds = %bb.ua, %bb.tz, %bb.ty
  %i.bcq = phi i1 [ false, %bb.ty ], [ %i.bcp, %bb.ua ], [ true, %bb.tz ]
  %i.bcr = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 71, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_, i1 noundef zeroext %i.bcq)
          to label %bb.ub unwind label %bb.ur     ; 0 uses

bb.ub:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %137, i8 0, i64 1200, i1 false), !alias.scope !608
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #31, !noalias !608
  %i.bcs = getelementptr inbounds nuw i8, ptr %95, i64 40 ; 6 uses
  store ptr %95, ptr %i.bcs, align 8, !tbaa !143, !noalias !608
  %i.bct = getelementptr inbounds nuw i8, ptr %95, i64 48 ; 2 uses
  store ptr %i.bcs, ptr %i.bct, align 8, !tbaa !144, !noalias !608
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #31, !noalias !608
  store i32 100, ptr %94, align 8, !tbaa !119, !noalias !608
  %i.bcu = getelementptr inbounds nuw i8, ptr %94, i64 8
  store ptr %i.bcs, ptr %i.bcu, align 8, !tbaa !120, !noalias !608
  %i.bcv = getelementptr inbounds nuw i8, ptr %94, i64 16
  store i32 48, ptr %i.bcv, align 8, !tbaa !121, !noalias !608
  %i.bcw = getelementptr inbounds nuw i8, ptr %94, i64 20
  store i32 48, ptr %i.bcw, align 4, !tbaa !122, !noalias !608
  %i.bcx = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %94)
          to label %.noexc110.i unwind label %bb.us ; 3 uses

.noexc110.i:                                      ; preds = %bb.ub
  store ptr %i.bcx, ptr %i.bcs, align 8, !tbaa !143, !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #31, !noalias !608
  store ptr %i.bcs, ptr %i.bct, align 8, !tbaa !144, !noalias !608
  %i.bcy = ptrtoint ptr %i.bcs to i64
  %i.bcz = ptrtoint ptr %i.bcx to i64
  %i.bda = sub i64 %i.bcy, %i.bcz                 ; 3 uses
  %i.bdb = icmp ult i64 %i.bda, 1200
  br i1 %i.bdb, label %bb.uf, label %bb.uc

bb.uc:                                            ; preds = %.noexc110.i
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #31, !noalias !608
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #31, !noalias !608
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %93, align 8, !tbaa !40, !noalias !608
  %i.bdc = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr @_ZTIt, ptr %i.bdc, align 8, !tbaa !45, !noalias !608
  %i.bdd = getelementptr inbounds nuw i8, ptr %93, i64 16
  store ptr @_ZTISt5arrayIwLm300EE, ptr %i.bdd, align 8, !tbaa !46, !noalias !608
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %93) #32
          to label %bb.ud unwind label %bb.ue, !noalias !608

bb.ud:                                            ; preds = %bb.uc
  unreachable

bb.ue:                                            ; preds = %bb.uc
  %i.bde = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %93) #31, !noalias !608
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #31, !noalias !608
  br label %.body111.i

bb.uf:                                            ; preds = %.noexc110.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %137, ptr align 4 %i.bcx, i64 %i.bda, i1 false)
  %i.bdf = getelementptr inbounds nuw i8, ptr %137, i64 %i.bda
  store i32 0, ptr %i.bdf, align 4, !tbaa !55, !alias.scope !608
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #31, !noalias !608
  %i.bdg = load i64, ptr %i.bbt, align 8, !tbaa !53 ; 3 uses
  %i.bdh = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %137) #33
  %i.bdi = icmp eq i64 %i.bdg, %i.bdh
  br i1 %i.bdi, label %bb.ug, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i

bb.ug:                                            ; preds = %bb.uf
  %i.bdj = icmp eq i64 %i.bdg, 0
  br i1 %i.bdj, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  %i.bdk = load ptr, ptr %135, align 8, !tbaa !52
  %i.bdl = call i32 @wmemcmp(ptr noundef %i.bdk, ptr noundef nonnull %137, i64 noundef %i.bdg) #33
  %i.bdm = icmp eq i32 %i.bdl, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i: ; preds = %bb.uh, %bb.ug, %bb.uf
  %i.bdn = phi i1 [ false, %bb.uf ], [ %i.bdm, %bb.uh ], [ true, %bb.ug ]
  %i.bdo = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 76, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_, i1 noundef zeroext %i.bdn)
          to label %bb.ui unwind label %bb.us     ; 0 uses

bb.ui:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #31
  %i.bdp = getelementptr inbounds nuw i8, ptr %92, i64 40 ; 4 uses
  store ptr %92, ptr %i.bdp, align 8, !tbaa !143
  %i.bdq = getelementptr inbounds nuw i8, ptr %92, i64 48
  store ptr %i.bdp, ptr %i.bdq, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #31
  store i32 100, ptr %91, align 8, !tbaa !119
  %i.bdr = getelementptr inbounds nuw i8, ptr %91, i64 8
  store ptr %i.bdp, ptr %i.bdr, align 8, !tbaa !120
  %i.bds = getelementptr inbounds nuw i8, ptr %91, i64 16
  store i32 48, ptr %i.bds, align 8, !tbaa !121
  %i.bdt = getelementptr inbounds nuw i8, ptr %91, i64 20
  store i32 48, ptr %i.bdt, align 4, !tbaa !122
  %i.bdu = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEtwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %91)
          to label %.noexc115.i unwind label %bb.ut

.noexc115.i:                                      ; preds = %bb.ui
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #31
  %i.bdv = ptrtoint ptr %i.bdp to i64
  %i.bdw = ptrtoint ptr %i.bdu to i64
  %i.bdx = sub i64 %i.bdv, %i.bdw
  %i.bdy = icmp ult i64 %i.bdx, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #31
  br i1 %i.bdy, label %bb.um, label %bb.uj

bb.uj:                                            ; preds = %.noexc115.i
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %90, align 8, !tbaa !40
  %i.bdz = getelementptr inbounds nuw i8, ptr %90, i64 8
  store ptr @_ZTIt, ptr %i.bdz, align 8, !tbaa !45
  %i.bea = getelementptr inbounds nuw i8, ptr %90, i64 16
  store ptr @_ZTISt5arrayIwLm3EE, ptr %i.bea, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %90) #32
          to label %bb.uk unwind label %bb.ul

bb.uk:                                            ; preds = %bb.uj
  unreachable

bb.ul:                                            ; preds = %bb.uj
  %i.beb = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %90) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #31
  br label %.body116.i147

bb.um:                                            ; preds = %.noexc115.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_)
          to label %._crit_edge.i.i118.i unwind label %bb.ut

bb.un:                                            ; preds = %.body102.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_)
          to label %.invoke252.i unwind label %bb.uo

.invoke252.i:                                     ; preds = %bb.un, %bb.tu
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i104.i unwind label %bb.uq

bb.uo:                                            ; preds = %bb.un
  %i.bec = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body98.i unwind label %bb.xc

bb.up:                                            ; preds = %bb.tu
  %i.bed = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body98.i unwind label %bb.xc

bb.uq:                                            ; preds = %.invoke252.i, %bb.tc
  %i.bee = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i

.body98.i:                                        ; preds = %bb.uq, %bb.up, %bb.uo, %bb.ts, %bb.tf
  %.pn57.pn.i143 = phi { ptr, i32 } [ %i.bbj, %bb.ts ], [ %i.bed, %bb.up ], [ %i.bec, %bb.uo ], [ %i.bee, %bb.uq ], [ %i.bam, %bb.tf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #31
  br label %.body95.i141

.body95.i141:                                     ; preds = %.body98.i, %bb.tr, %bb.tq, %bb.ta
  %.pn57.pn.pn.i142 = phi { ptr, i32 } [ %.pn57.pn.i143, %.body98.i ], [ %i.bbi, %bb.tr ], [ %i.bbh, %bb.tq ], [ %i.azv, %bb.ta ]
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #31
  br label %bb.xb

bb.ur:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i146, %._crit_edge.i.i104.i
  %i.bef = landingpad { ptr, i32 }
          cleanup
  br label %.body108.i

.body108.i:                                       ; preds = %bb.ur, %bb.tx
  %eh.lpad-body109.i = phi { ptr, i32 } [ %i.bef, %bb.ur ], [ %i.bch, %bb.tx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #31
  br label %bb.xa

bb.us:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i, %bb.ub
  %i.beg = landingpad { ptr, i32 }
          cleanup
  br label %.body111.i

.body111.i:                                       ; preds = %bb.us, %bb.ue
  %eh.lpad-body112.i = phi { ptr, i32 } [ %i.beg, %bb.us ], [ %i.bde, %bb.ue ]
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #31
  br label %bb.xa

bb.ut:                                            ; preds = %bb.um, %bb.ui
  %i.beh = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body116.i147

.body116.i147:                                    ; preds = %bb.ut, %bb.ul
  %eh.lpad-body117.i148 = phi { ptr, i32 } [ %i.beh, %bb.ut ], [ %i.beb, %bb.ul ] ; 2 uses
  %i.bei = extractvalue { ptr, i32 } %eh.lpad-body117.i148, 0
  %i.bej = extractvalue { ptr, i32 } %eh.lpad-body117.i148, 1
  %i.bek = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.bel = icmp eq i32 %i.bej, %i.bek
  %i.bem = call ptr @__cxa_begin_catch(ptr %i.bei) #31 ; 0 uses
  br i1 %i.bel, label %bb.uu, label %bb.vn

bb.uu:                                            ; preds = %.body116.i147
  %i.ben = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke253.i unwind label %bb.vp ; 0 uses

._crit_edge.i.i118.i:                             ; preds = %.invoke253.i, %bb.um
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #31
  %i.beo = getelementptr inbounds nuw i8, ptr %138, i64 16 ; 6 uses
  store ptr %i.beo, ptr %138, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.beo, ptr noundef nonnull align 2 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.bep = getelementptr inbounds nuw i8, ptr %138, i64 8 ; 3 uses
  store i64 3, ptr %i.bep, align 8, !tbaa !60
  %i.beq = getelementptr inbounds nuw i8, ptr %138, i64 22
  store i16 0, ptr %i.beq, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(600) %139, i8 0, i64 600, i1 false), !alias.scope !609
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #31, !noalias !609
  %i.ber = getelementptr inbounds nuw i8, ptr %89, i64 24 ; 2 uses
  store ptr %89, ptr %i.ber, align 8, !tbaa !146, !noalias !609
  %i.bes = getelementptr inbounds nuw i8, ptr %89, i64 32 ; 2 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %89, i64 20 ; 4 uses
  store ptr %i.bet, ptr %i.bes, align 8, !tbaa !147, !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #31, !noalias !609
  store i32 100, ptr %88, align 8, !tbaa !127, !noalias !609
  %i.beu = getelementptr inbounds nuw i8, ptr %88, i64 8
  store ptr %i.bet, ptr %i.beu, align 8, !tbaa !128, !noalias !609
  %i.bev = getelementptr inbounds nuw i8, ptr %88, i64 16
  store i16 48, ptr %i.bev, align 8, !tbaa !129, !noalias !609
  %i.bew = getelementptr inbounds nuw i8, ptr %88, i64 18
  store i16 48, ptr %i.bew, align 2, !tbaa !130, !noalias !609
  %i.bex = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEtDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %88)
          to label %.noexc122.i unwind label %bb.vr ; 3 uses

.noexc122.i:                                      ; preds = %._crit_edge.i.i118.i
  store ptr %i.bex, ptr %i.ber, align 8, !tbaa !146, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #31, !noalias !609
  store ptr %i.bet, ptr %i.bes, align 8, !tbaa !147, !noalias !609
  %i.bey = ptrtoint ptr %i.bet to i64
  %i.bez = ptrtoint ptr %i.bex to i64
  %i.bfa = sub i64 %i.bey, %i.bez                 ; 3 uses
  %i.bfb = icmp ult i64 %i.bfa, 600
  br i1 %i.bfb, label %bb.uy, label %bb.uv

bb.uv:                                            ; preds = %.noexc122.i
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #31, !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #31, !noalias !609
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %87, align 8, !tbaa !40, !noalias !609
  %i.bfc = getelementptr inbounds nuw i8, ptr %87, i64 8
  store ptr @_ZTIt, ptr %i.bfc, align 8, !tbaa !45, !noalias !609
  %i.bfd = getelementptr inbounds nuw i8, ptr %87, i64 16
  store ptr @_ZTISt5arrayIDsLm300EE, ptr %i.bfd, align 8, !tbaa !46, !noalias !609
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %87) #32
          to label %bb.uw unwind label %bb.ux, !noalias !609

bb.uw:                                            ; preds = %bb.uv
  unreachable

bb.ux:                                            ; preds = %bb.uv
  %i.bfe = landingpad { ptr, i32 }
          cleanup
end_hunk_14
begin_hunk_15_@_Z35testing_std_array_output_conversionv:bb.a

.lr.ph.i.i.i132.i:                                ; preds = %bb.vh, %.lr.ph.i.i.i132.i
  %.01216.i.i.i133.i = phi i64 [ %i.bgu, %.lr.ph.i.i.i132.i ], [ 0, %bb.vh ] ; 3 uses
  %i.bgq = getelementptr inbounds nuw [2 x i8], ptr %i.bgp, i64 %.01216.i.i.i133.i
  %i.bgr = getelementptr inbounds nuw [2 x i8], ptr %140, i64 %.01216.i.i.i133.i
  %i.bgs = load i16, ptr %i.bgq, align 2, !tbaa !62
  %i.bgt = load i16, ptr %i.bgr, align 2, !tbaa !62
  %or.cond.not.i.i134.i = icmp eq i16 %i.bgt, %i.bgs ; 2 uses
  %i.bgu = add nuw nsw i64 %.01216.i.i.i133.i, 1  ; 2 uses
  %exitcond.not.i.i.i135.i = icmp ne i64 %i.bgu, %i.bgj
  %or.cond561.not = select i1 %or.cond.not.i.i134.i, i1 %exitcond.not.i.i.i135.i, i1 false
  br i1 %or.cond561.not, label %.lr.ph.i.i.i132.i, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i, !llvm.loop !1

_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i: ; preds = %.lr.ph.i.i.i132.i, %bb.vh, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i130.i
  %i.bgv = phi i1 [ false, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i130.i ], [ true, %bb.vh ], [ %or.cond.not.i.i134.i, %.lr.ph.i.i.i132.i ]
  %i.bgw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 95, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_, i1 noundef zeroext %i.bgv)
          to label %bb.vi unwind label %bb.vs     ; 0 uses

bb.vi:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #31
  %i.bgx = getelementptr inbounds nuw i8, ptr %83, i64 24
  store ptr %83, ptr %i.bgx, align 8, !tbaa !146
  %i.bgy = getelementptr inbounds nuw i8, ptr %83, i64 32
  %i.bgz = getelementptr inbounds nuw i8, ptr %83, i64 20 ; 3 uses
  store ptr %i.bgz, ptr %i.bgy, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #31
  store i32 100, ptr %82, align 8, !tbaa !127
  %i.bha = getelementptr inbounds nuw i8, ptr %82, i64 8
  store ptr %i.bgz, ptr %i.bha, align 8, !tbaa !128
  %i.bhb = getelementptr inbounds nuw i8, ptr %82, i64 16
  store i16 48, ptr %i.bhb, align 8, !tbaa !129
  %i.bhc = getelementptr inbounds nuw i8, ptr %82, i64 18
  store i16 48, ptr %i.bhc, align 2, !tbaa !130
  %i.bhd = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEtDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %82)
          to label %.noexc138.i unwind label %bb.vt

.noexc138.i:                                      ; preds = %bb.vi
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #31
  %i.bhe = ptrtoint ptr %i.bgz to i64
  %i.bhf = ptrtoint ptr %i.bhd to i64
  %i.bhg = sub i64 %i.bhe, %i.bhf
  %i.bhh = icmp ult i64 %i.bhg, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #31
  br i1 %i.bhh, label %bb.vm, label %bb.vj

bb.vj:                                            ; preds = %.noexc138.i
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %81, align 8, !tbaa !40
  %i.bhi = getelementptr inbounds nuw i8, ptr %81, i64 8
  store ptr @_ZTIt, ptr %i.bhi, align 8, !tbaa !45
  %i.bhj = getelementptr inbounds nuw i8, ptr %81, i64 16
  store ptr @_ZTISt5arrayIDsLm3EE, ptr %i.bhj, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %81) #32
          to label %bb.vk unwind label %bb.vl

bb.vk:                                            ; preds = %bb.vj
  unreachable

bb.vl:                                            ; preds = %bb.vj
  %i.bhk = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %81) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #31
  br label %.body139.i153

bb.vm:                                            ; preds = %.noexc138.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_)
          to label %._crit_edge.i.i142.i unwind label %bb.vt

bb.vn:                                            ; preds = %.body116.i147
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_)
          to label %.invoke253.i unwind label %bb.vo

.invoke253.i:                                     ; preds = %bb.vn, %bb.uu
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i118.i unwind label %bb.vq

bb.vo:                                            ; preds = %bb.vn
  %i.bhl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.xa unwind label %bb.xc

bb.vp:                                            ; preds = %bb.uu
  %i.bhm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.xa unwind label %bb.xc

bb.vq:                                            ; preds = %.invoke253.i
  %i.bhn = landingpad { ptr, i32 }
          cleanup
  br label %bb.xa

bb.vr:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i152, %._crit_edge.i.i118.i
  %i.bho = landingpad { ptr, i32 }
          cleanup
  br label %.body123.i

.body123.i:                                       ; preds = %bb.vr, %bb.ux
  %eh.lpad-body124.i = phi { ptr, i32 } [ %i.bho, %bb.vr ], [ %i.bfe, %bb.ux ]
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #31
  br label %bb.wz

bb.vs:                                            ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i, %bb.vb
  %i.bhp = landingpad { ptr, i32 }
          cleanup
  br label %.body126.i

.body126.i:                                       ; preds = %bb.vs, %bb.ve
  %eh.lpad-body127.i = phi { ptr, i32 } [ %i.bhp, %bb.vs ], [ %i.bgh, %bb.ve ]
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #31
  br label %bb.wz

bb.vt:                                            ; preds = %bb.vm, %bb.vi
  %i.bhq = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body139.i153

.body139.i153:                                    ; preds = %bb.vt, %bb.vl
  %eh.lpad-body140.i154 = phi { ptr, i32 } [ %i.bhq, %bb.vt ], [ %i.bhk, %bb.vl ] ; 2 uses
  %i.bhr = extractvalue { ptr, i32 } %eh.lpad-body140.i154, 0
  %i.bhs = extractvalue { ptr, i32 } %eh.lpad-body140.i154, 1
  %i.bht = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.bhu = icmp eq i32 %i.bhs, %i.bht
  %i.bhv = call ptr @__cxa_begin_catch(ptr %i.bhr) #31 ; 0 uses
  br i1 %i.bhu, label %bb.vu, label %bb.wl

bb.vu:                                            ; preds = %.body139.i153
  %i.bhw = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke254.i unwind label %bb.wn ; 0 uses

._crit_edge.i.i142.i:                             ; preds = %.invoke254.i, %bb.vm
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #31
  %i.bhx = getelementptr inbounds nuw i8, ptr %141, i64 16 ; 6 uses
  store ptr %i.bhx, ptr %141, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bhx, ptr noundef nonnull align 4 dereferenceable(12) @.str.29, i64 12, i1 false)
  %i.bhy = getelementptr inbounds nuw i8, ptr %141, i64 8 ; 3 uses
  store i64 3, ptr %i.bhy, align 8, !tbaa !69
  %i.bhz = getelementptr inbounds nuw i8, ptr %141, i64 28
  store i32 0, ptr %i.bhz, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %142, i8 0, i64 1200, i1 false), !alias.scope !611
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #31, !noalias !611
  %i.bia = getelementptr inbounds nuw i8, ptr %80, i64 40 ; 6 uses
  store ptr %80, ptr %i.bia, align 8, !tbaa !149, !noalias !611
  %i.bib = getelementptr inbounds nuw i8, ptr %80, i64 48 ; 2 uses
  store ptr %i.bia, ptr %i.bib, align 8, !tbaa !150, !noalias !611
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #31, !noalias !611
  store i32 100, ptr %79, align 8, !tbaa !135, !noalias !611
  %i.bic = getelementptr inbounds nuw i8, ptr %79, i64 8
  store ptr %i.bia, ptr %i.bic, align 8, !tbaa !136, !noalias !611
  %i.bid = getelementptr inbounds nuw i8, ptr %79, i64 16
  store i32 48, ptr %i.bid, align 8, !tbaa !137, !noalias !611
  %i.bie = getelementptr inbounds nuw i8, ptr %79, i64 20
  store i32 48, ptr %i.bie, align 4, !tbaa !138, !noalias !611
  %i.bif = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEtDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %79)
          to label %.noexc147.i unwind label %bb.wp ; 3 uses

.noexc147.i:                                      ; preds = %._crit_edge.i.i142.i
  store ptr %i.bif, ptr %i.bia, align 8, !tbaa !149, !noalias !611
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #31, !noalias !611
  store ptr %i.bia, ptr %i.bib, align 8, !tbaa !150, !noalias !611
  %i.big = ptrtoint ptr %i.bia to i64
  %i.bih = ptrtoint ptr %i.bif to i64
  %i.bii = sub i64 %i.big, %i.bih                 ; 3 uses
  %i.bij = icmp ult i64 %i.bii, 1200
  br i1 %i.bij, label %bb.vy, label %bb.vv

bb.vv:                                            ; preds = %.noexc147.i
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #31, !noalias !611
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #31, !noalias !611
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %78, align 8, !tbaa !40, !noalias !611
  %i.bik = getelementptr inbounds nuw i8, ptr %78, i64 8
  store ptr @_ZTIt, ptr %i.bik, align 8, !tbaa !45, !noalias !611
  %i.bil = getelementptr inbounds nuw i8, ptr %78, i64 16
  store ptr @_ZTISt5arrayIDiLm300EE, ptr %i.bil, align 8, !tbaa !46, !noalias !611
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %78) #32
          to label %bb.vw unwind label %bb.vx, !noalias !611

bb.vw:                                            ; preds = %bb.vv
  unreachable

bb.vx:                                            ; preds = %bb.vv
  %i.bim = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %78) #31, !noalias !611
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #31, !noalias !611
  br label %.body148.i

bb.vy:                                            ; preds = %.noexc147.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %142, ptr align 4 %i.bif, i64 %i.bii, i1 false)
  %i.bin = getelementptr inbounds nuw i8, ptr %142, i64 %i.bii
  store i32 0, ptr %i.bin, align 4, !tbaa !71, !alias.scope !611
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #31, !noalias !611
  %i.bio = load i64, ptr %i.bhy, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i.i156 = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %142)
  %i.bip = icmp eq i64 %i.bio, %wcslen.i.i.i.i156
  br i1 %i.bip, label %bb.vz, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i157

bb.vz:                                            ; preds = %bb.vy
  %i.biq = load ptr, ptr %141, align 8, !tbaa !72
  %.not.i.i.i150.i = icmp eq i64 %i.bio, 0
  br i1 %.not.i.i.i150.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i157, label %.lr.ph.i.i.i151.i

.lr.ph.i.i.i151.i:                                ; preds = %bb.vz, %.lr.ph.i.i.i151.i
  %.01216.i.i.i152.i = phi i64 [ %i.biv, %.lr.ph.i.i.i151.i ], [ 0, %bb.vz ] ; 3 uses
  %i.bir = getelementptr inbounds nuw [4 x i8], ptr %i.biq, i64 %.01216.i.i.i152.i
  %i.bis = getelementptr inbounds nuw [4 x i8], ptr %142, i64 %.01216.i.i.i152.i
  %i.bit = load i32, ptr %i.bir, align 4, !tbaa !71
  %i.biu = load i32, ptr %i.bis, align 4, !tbaa !71
  %or.cond.not.i.i153.i = icmp eq i32 %i.biu, %i.bit ; 2 uses
  %i.biv = add nuw nsw i64 %.01216.i.i.i152.i, 1  ; 2 uses
  %exitcond.not.i.i.i154.i = icmp ne i64 %i.biv, %i.bio
  %or.cond562.not = select i1 %or.cond.not.i.i153.i, i1 %exitcond.not.i.i.i154.i, i1 false
  br i1 %or.cond562.not, label %.lr.ph.i.i.i151.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i157, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i157: ; preds = %.lr.ph.i.i.i151.i, %bb.vz, %bb.vy
  %i.biw = phi i1 [ false, %bb.vy ], [ true, %bb.vz ], [ %or.cond.not.i.i153.i, %.lr.ph.i.i.i151.i ]
  %i.bix = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 108, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_, i1 noundef zeroext %i.biw)
          to label %bb.wa unwind label %bb.wp     ; 0 uses

bb.wa:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %143, i8 0, i64 1200, i1 false), !alias.scope !612
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #31, !noalias !612
  %i.biy = getelementptr inbounds nuw i8, ptr %77, i64 40 ; 6 uses
  store ptr %77, ptr %i.biy, align 8, !tbaa !149, !noalias !612
  %i.biz = getelementptr inbounds nuw i8, ptr %77, i64 48 ; 2 uses
  store ptr %i.biy, ptr %i.biz, align 8, !tbaa !150, !noalias !612
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #31, !noalias !612
  store i32 100, ptr %76, align 8, !tbaa !135, !noalias !612
  %i.bja = getelementptr inbounds nuw i8, ptr %76, i64 8
  store ptr %i.biy, ptr %i.bja, align 8, !tbaa !136, !noalias !612
  %i.bjb = getelementptr inbounds nuw i8, ptr %76, i64 16
  store i32 48, ptr %i.bjb, align 8, !tbaa !137, !noalias !612
  %i.bjc = getelementptr inbounds nuw i8, ptr %76, i64 20
  store i32 48, ptr %i.bjc, align 4, !tbaa !138, !noalias !612
  %i.bjd = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEtDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %76)
          to label %.noexc155.i unwind label %bb.wq ; 3 uses

.noexc155.i:                                      ; preds = %bb.wa
  store ptr %i.bjd, ptr %i.biy, align 8, !tbaa !149, !noalias !612
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #31, !noalias !612
  store ptr %i.biy, ptr %i.biz, align 8, !tbaa !150, !noalias !612
  %i.bje = ptrtoint ptr %i.biy to i64
  %i.bjf = ptrtoint ptr %i.bjd to i64
  %i.bjg = sub i64 %i.bje, %i.bjf                 ; 3 uses
  %i.bjh = icmp ult i64 %i.bjg, 1200
  br i1 %i.bjh, label %bb.we, label %bb.wb

bb.wb:                                            ; preds = %.noexc155.i
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #31, !noalias !612
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #31, !noalias !612
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %75, align 8, !tbaa !40, !noalias !612
  %i.bji = getelementptr inbounds nuw i8, ptr %75, i64 8
  store ptr @_ZTIt, ptr %i.bji, align 8, !tbaa !45, !noalias !612
  %i.bjj = getelementptr inbounds nuw i8, ptr %75, i64 16
  store ptr @_ZTISt5arrayIDiLm300EE, ptr %i.bjj, align 8, !tbaa !46, !noalias !612
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %75) #32
          to label %bb.wc unwind label %bb.wd, !noalias !612

bb.wc:                                            ; preds = %bb.wb
  unreachable

bb.wd:                                            ; preds = %bb.wb
  %i.bjk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %75) #31, !noalias !612
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #31, !noalias !612
  br label %.body156.i

bb.we:                                            ; preds = %.noexc155.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %143, ptr align 4 %i.bjd, i64 %i.bjg, i1 false)
  %i.bjl = getelementptr inbounds nuw i8, ptr %143, i64 %i.bjg
  store i32 0, ptr %i.bjl, align 4, !tbaa !71, !alias.scope !612
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #31, !noalias !612
  %i.bjm = load i64, ptr %i.bhy, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i159.i = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %143)
  %i.bjn = icmp eq i64 %i.bjm, %wcslen.i.i.i159.i
  br i1 %i.bjn, label %bb.wf, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i

bb.wf:                                            ; preds = %bb.we
  %i.bjo = load ptr, ptr %141, align 8, !tbaa !72
  %.not.i.i.i160.i = icmp eq i64 %i.bjm, 0
  br i1 %.not.i.i.i160.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i, label %.lr.ph.i.i.i161.i

.lr.ph.i.i.i161.i:                                ; preds = %bb.wf, %.lr.ph.i.i.i161.i
  %.01216.i.i.i162.i = phi i64 [ %i.bjt, %.lr.ph.i.i.i161.i ], [ 0, %bb.wf ] ; 3 uses
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.bjo, i64 %.01216.i.i.i162.i
  %i.bjq = getelementptr inbounds nuw [4 x i8], ptr %143, i64 %.01216.i.i.i162.i
  %i.bjr = load i32, ptr %i.bjp, align 4, !tbaa !71
  %i.bjs = load i32, ptr %i.bjq, align 4, !tbaa !71
  %or.cond.not.i.i163.i = icmp eq i32 %i.bjs, %i.bjr ; 2 uses
  %i.bjt = add nuw nsw i64 %.01216.i.i.i162.i, 1  ; 2 uses
  %exitcond.not.i.i.i164.i = icmp ne i64 %i.bjt, %i.bjm
  %or.cond563.not = select i1 %or.cond.not.i.i163.i, i1 %exitcond.not.i.i.i164.i, i1 false
  br i1 %or.cond563.not, label %.lr.ph.i.i.i161.i, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i: ; preds = %.lr.ph.i.i.i161.i, %bb.wf, %bb.we
  %i.bju = phi i1 [ false, %bb.we ], [ true, %bb.wf ], [ %or.cond.not.i.i163.i, %.lr.ph.i.i.i161.i ]
  %i.bjv = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 113, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_, i1 noundef zeroext %i.bju)
          to label %bb.wg unwind label %bb.wq     ; 0 uses

bb.wg:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #31
  %i.bjw = getelementptr inbounds nuw i8, ptr %74, i64 40 ; 4 uses
  store ptr %74, ptr %i.bjw, align 8, !tbaa !149
  %i.bjx = getelementptr inbounds nuw i8, ptr %74, i64 48
  store ptr %i.bjw, ptr %i.bjx, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #31
  store i32 100, ptr %73, align 8, !tbaa !135
  %i.bjy = getelementptr inbounds nuw i8, ptr %73, i64 8
  store ptr %i.bjw, ptr %i.bjy, align 8, !tbaa !136
  %i.bjz = getelementptr inbounds nuw i8, ptr %73, i64 16
  store i32 48, ptr %i.bjz, align 8, !tbaa !137
  %i.bka = getelementptr inbounds nuw i8, ptr %73, i64 20
  store i32 48, ptr %i.bka, align 4, !tbaa !138
  %i.bkb = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEtDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %73)
          to label %.noexc171.i unwind label %bb.wr

.noexc171.i:                                      ; preds = %bb.wg
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #31
  %i.bkc = ptrtoint ptr %i.bjw to i64
  %i.bkd = ptrtoint ptr %i.bkb to i64
  %i.bke = sub i64 %i.bkc, %i.bkd
  %i.bkf = icmp ult i64 %i.bke, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #31
  br i1 %i.bkf, label %bb.wk, label %bb.wh

bb.wh:                                            ; preds = %.noexc171.i
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %72, align 8, !tbaa !40
  %i.bkg = getelementptr inbounds nuw i8, ptr %72, i64 8
  store ptr @_ZTIt, ptr %i.bkg, align 8, !tbaa !45
  %i.bkh = getelementptr inbounds nuw i8, ptr %72, i64 16
  store ptr @_ZTISt5arrayIDiLm3EE, ptr %i.bkh, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %72) #32
          to label %bb.wi unwind label %bb.wj

bb.wi:                                            ; preds = %bb.wh
  unreachable

bb.wj:                                            ; preds = %bb.wh
  %i.bki = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %72) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #31
  br label %.body172.i158

bb.wk:                                            ; preds = %.noexc171.i
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_)
          to label %bb.wt unwind label %bb.wr

bb.wl:                                            ; preds = %.body139.i153
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_)
          to label %.invoke254.i unwind label %bb.wm

.invoke254.i:                                     ; preds = %bb.wl, %bb.vu
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i142.i unwind label %bb.wo

bb.wm:                                            ; preds = %bb.wl
  %i.bkj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.wz unwind label %bb.xc

bb.wn:                                            ; preds = %bb.vu
  %i.bkk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.wz unwind label %bb.xc

bb.wo:                                            ; preds = %.invoke254.i
  %i.bkl = landingpad { ptr, i32 }
          cleanup
  br label %bb.wz

bb.wp:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i157, %._crit_edge.i.i142.i
  %i.bkm = landingpad { ptr, i32 }
          cleanup
  br label %.body148.i

.body148.i:                                       ; preds = %bb.wp, %bb.vx
  %eh.lpad-body149.i = phi { ptr, i32 } [ %i.bkm, %bb.wp ], [ %i.bim, %bb.vx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #31
  br label %bb.wy

bb.wq:                                            ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i, %bb.wa
  %i.bkn = landingpad { ptr, i32 }
          cleanup
  br label %.body156.i

.body156.i:                                       ; preds = %bb.wq, %bb.wd
  %eh.lpad-body157.i = phi { ptr, i32 } [ %i.bkn, %bb.wq ], [ %i.bjk, %bb.wd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #31
  br label %bb.wy

bb.wr:                                            ; preds = %bb.wk, %bb.wg
  %i.bko = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body172.i158

.body172.i158:                                    ; preds = %bb.wr, %bb.wj
  %eh.lpad-body173.i159 = phi { ptr, i32 } [ %i.bko, %bb.wr ], [ %i.bki, %bb.wj ] ; 2 uses
  %i.bkp = extractvalue { ptr, i32 } %eh.lpad-body173.i159, 0
  %i.bkq = extractvalue { ptr, i32 } %eh.lpad-body173.i159, 1
  %i.bkr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.bks = icmp eq i32 %i.bkq, %i.bkr
  %i.bkt = call ptr @__cxa_begin_catch(ptr %i.bkp) #31 ; 0 uses
  br i1 %i.bks, label %bb.ws, label %bb.wu

bb.ws:                                            ; preds = %.body172.i158
  %i.bku = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke255.i160 unwind label %bb.ww ; 0 uses

bb.wt:                                            ; preds = %.invoke255.i160, %bb.wk
  %i.bkv = load ptr, ptr %141, align 8, !tbaa !72 ; 2 uses
  %i.bkw = icmp eq ptr %i.bkv, %i.bhx
  br i1 %i.bkw, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i162, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i161

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i161: ; preds = %bb.wt
  %i.bkx = load i64, ptr %i.bhx, align 8, !tbaa !38
  %i.bky = shl i64 %i.bkx, 2
  %i.bkz = add i64 %i.bky, 4
  call void @_ZdlPvm(ptr noundef %i.bkv, i64 noundef %i.bkz) #34
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i162

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i162: ; preds = %bb.wt, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #31
  %i.bla = load ptr, ptr %138, align 8, !tbaa !64 ; 2 uses
  %i.blb = icmp eq ptr %i.bla, %i.beo
  br i1 %i.blb, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i164, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i163

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i163: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i162
  %i.blc = load i64, ptr %i.beo, align 8, !tbaa !38
  %i.bld = shl i64 %i.blc, 1
  %i.ble = add i64 %i.bld, 2
  call void @_ZdlPvm(ptr noundef %i.bla, i64 noundef %i.ble) #34
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i164

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i164: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i162, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #31
  %i.blf = load ptr, ptr %135, align 8, !tbaa !52 ; 2 uses
  %i.blg = icmp eq ptr %i.blf, %i.bbr
  br i1 %i.blg, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i166, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i165

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i165: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i164
  %i.blh = load i64, ptr %i.bbr, align 8, !tbaa !38
  %i.bli = shl i64 %i.blh, 2
  %i.blj = add i64 %i.bli, 4
  call void @_ZdlPvm(ptr noundef %i.blf, i64 noundef %i.blj) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i166

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i166: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i164, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #31
  %i.blk = load ptr, ptr %128, align 8, !tbaa !73 ; 2 uses
  %i.bll = icmp eq ptr %i.blk, %i.avc
  br i1 %i.bll, label %_ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i166
  %i.blm = load i64, ptr %i.avc, align 8, !tbaa !38
  %i.bln = add i64 %i.blm, 1
  call void @_ZdlPvm(ptr noundef %i.blk, i64 noundef %i.bln) #34
  br label %_ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_.exit

bb.wu:                                            ; preds = %.body172.i158
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arraytEvT0_)
          to label %.invoke255.i160 unwind label %bb.wv

.invoke255.i160:                                  ; preds = %bb.wu, %bb.ws
  invoke void @__cxa_end_catch()
          to label %bb.wt unwind label %bb.wx

bb.wv:                                            ; preds = %bb.wu
end_hunk_15
begin_hunk_16_@_Z35testing_std_array_output_conversionv:bb.a
  %i.bry = load i32, ptr %33, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  store i32 %i.bry, ptr %62, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store ptr %62, ptr %i.f, align 8, !tbaa !47
  %i.brz = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbT_S4_S4_S4_iS4_RKT0_RKT1_(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 60, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %bb.zc unwind label %bb.zn     ; 0 uses

bb.zc:                                            ; preds = %bb.zb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #31
  %i.bsa = getelementptr inbounds nuw i8, ptr %29, i64 24
  store ptr %29, ptr %i.bsa, align 8, !tbaa !152
  %i.bsb = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.bsc = getelementptr inbounds nuw i8, ptr %29, i64 20 ; 3 uses
  store ptr %i.bsc, ptr %i.bsb, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #31
  store i32 100, ptr %28, align 8, !tbaa !78
  %i.bsd = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.bsc, ptr %i.bsd, align 8, !tbaa !79
  %i.bse = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i8 48, ptr %i.bse, align 8, !tbaa !80
  %i.bsf = getelementptr inbounds nuw i8, ptr %28, i64 20
  store i32 48, ptr %i.bsf, align 4, !tbaa !81
  %i.bsg = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIcEjcE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %.noexc101.i298 unwind label %bb.zo

.noexc101.i298:                                   ; preds = %bb.zc
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  %i.bsh = ptrtoint ptr %i.bsc to i64
  %i.bsi = ptrtoint ptr %i.bsg to i64
  %i.bsj = sub i64 %i.bsh, %i.bsi
  %i.bsk = icmp ult i64 %i.bsj, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  br i1 %i.bsk, label %bb.zg, label %bb.zd

bb.zd:                                            ; preds = %.noexc101.i298
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %27, align 8, !tbaa !40
  %i.bsl = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr @_ZTIj, ptr %i.bsl, align 8, !tbaa !45
  %i.bsm = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr @_ZTISt5arrayIaLm3EE, ptr %i.bsm, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %27) #32
          to label %bb.ze unwind label %bb.zf

bb.ze:                                            ; preds = %bb.zd
  unreachable

bb.zf:                                            ; preds = %bb.zd
  %i.bsn = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %.body102.i206

bb.zg:                                            ; preds = %.noexc101.i298
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_)
          to label %._crit_edge.i.i104.i209 unwind label %bb.zo

bb.zh:                                            ; preds = %.body92.i197
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 53, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_)
          to label %.invoke251.i199 unwind label %bb.zi

.invoke251.i199:                                  ; preds = %bb.zh, %bb.yr
  invoke void @__cxa_end_catch()
          to label %bb.ys unwind label %bb.zk

bb.zi:                                            ; preds = %bb.zh
  %i.bso = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body87.i194 unwind label %bb.acx

bb.zj:                                            ; preds = %bb.yr
  %i.bsp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body87.i194 unwind label %bb.acx

bb.zk:                                            ; preds = %.invoke251.i199, %bb.ya
  %i.bsq = landingpad { ptr, i32 }
          cleanup
  br label %.body87.i194

.body87.i194:                                     ; preds = %bb.zk, %bb.zj, %bb.zi, %bb.yp, %bb.yd
  %.pn53.pn.i195 = phi { ptr, i32 } [ %i.bqk, %bb.yp ], [ %i.bsp, %bb.zj ], [ %i.bso, %bb.zi ], [ %i.bsq, %bb.zk ], [ %i.bps, %bb.yd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #31
  br label %.body84.i191

.body84.i191:                                     ; preds = %.body87.i194, %bb.yo, %bb.yn, %bb.xy
  %.pn53.pn.pn.i192 = phi { ptr, i32 } [ %.pn53.pn.i195, %.body87.i194 ], [ %i.bqj, %bb.yo ], [ %i.bqi, %bb.yn ], [ %i.bpc, %bb.xy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #31
  br label %bb.acw

bb.zl:                                            ; preds = %bb.ys
  %i.bsr = landingpad { ptr, i32 }
          cleanup
  br label %.body95.i200

bb.zm:                                            ; preds = %bb.yw
  %i.bss = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %.body95.i200

bb.zn:                                            ; preds = %bb.zb
  %i.bst = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  br label %.body98.i203

bb.zo:                                            ; preds = %bb.zg, %bb.zc
  %i.bsu = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body102.i206

.body102.i206:                                    ; preds = %bb.zo, %bb.zf
  %eh.lpad-body103.i207 = phi { ptr, i32 } [ %i.bsu, %bb.zo ], [ %i.bsn, %bb.zf ] ; 2 uses
  %i.bsv = extractvalue { ptr, i32 } %eh.lpad-body103.i207, 0
  %i.bsw = extractvalue { ptr, i32 } %eh.lpad-body103.i207, 1
  %i.bsx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.bsy = icmp eq i32 %i.bsw, %i.bsx
  %i.bsz = call ptr @__cxa_begin_catch(ptr %i.bsv) #31 ; 0 uses
  br i1 %i.bsy, label %bb.zp, label %bb.aai

bb.zp:                                            ; preds = %.body102.i206
  %i.bta = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke252.i208 unwind label %bb.aak ; 0 uses

._crit_edge.i.i104.i209:                          ; preds = %.invoke252.i208, %bb.zg
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #31
  %i.btb = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 6 uses
  store ptr %i.btb, ptr %63, align 8, !tbaa !50
  %i.btc = call ptr @wmemcpy(ptr noundef nonnull %i.btb, ptr noundef nonnull @.str.29, i64 noundef 3) #31 ; 0 uses
  %.pre7.i.i.i210 = load ptr, ptr %63, align 8, !tbaa !52
  %i.btd = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 3 uses
  store i64 3, ptr %i.btd, align 8, !tbaa !53
  %i.bte = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i210, i64 12
  store i32 0, ptr %i.bte, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %64, i8 0, i64 1200, i1 false), !alias.scope !617
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31, !noalias !617
  %i.btf = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 6 uses
  store ptr %26, ptr %i.btf, align 8, !tbaa !155, !noalias !617
  %i.btg = getelementptr inbounds nuw i8, ptr %26, i64 88 ; 2 uses
  store ptr %i.btf, ptr %i.btg, align 8, !tbaa !156, !noalias !617
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31, !noalias !617
  store i32 100, ptr %25, align 8, !tbaa !86, !noalias !617
  %i.bth = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %i.btf, ptr %i.bth, align 8, !tbaa !87, !noalias !617
  %i.bti = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 48, ptr %i.bti, align 8, !tbaa !88, !noalias !617
  %i.btj = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 48, ptr %i.btj, align 4, !tbaa !89, !noalias !617
  %i.btk = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %.noexc107.i217 unwind label %bb.aam ; 3 uses

.noexc107.i217:                                   ; preds = %._crit_edge.i.i104.i209
  store ptr %i.btk, ptr %i.btf, align 8, !tbaa !155, !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31, !noalias !617
  store ptr %i.btf, ptr %i.btg, align 8, !tbaa !156, !noalias !617
  %i.btl = ptrtoint ptr %i.btf to i64
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = sub i64 %i.btl, %i.btm                 ; 3 uses
  %i.bto = icmp ult i64 %i.btn, 1200
  br i1 %i.bto, label %bb.zt, label %bb.zq

bb.zq:                                            ; preds = %.noexc107.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31, !noalias !617
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31, !noalias !617
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %24, align 8, !tbaa !40, !noalias !617
  %i.btp = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr @_ZTIj, ptr %i.btp, align 8, !tbaa !45, !noalias !617
  %i.btq = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr @_ZTISt5arrayIwLm300EE, ptr %i.btq, align 8, !tbaa !46, !noalias !617
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %24) #32
          to label %bb.zr unwind label %bb.zs, !noalias !617

bb.zr:                                            ; preds = %bb.zq
  unreachable

bb.zs:                                            ; preds = %bb.zq
  %i.btr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #31, !noalias !617
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31, !noalias !617
  br label %.body108.i211

bb.zt:                                            ; preds = %.noexc107.i217
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %64, ptr align 4 %i.btk, i64 %i.btn, i1 false)
  %i.bts = getelementptr inbounds nuw i8, ptr %64, i64 %i.btn
  store i32 0, ptr %i.bts, align 4, !tbaa !55, !alias.scope !617
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31, !noalias !617
  %i.btt = load i64, ptr %i.btd, align 8, !tbaa !53 ; 3 uses
  %i.btu = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %64) #33
  %i.btv = icmp eq i64 %i.btt, %i.btu
  br i1 %i.btv, label %bb.zu, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i218

bb.zu:                                            ; preds = %bb.zt
  %i.btw = icmp eq i64 %i.btt, 0
  br i1 %i.btw, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i218, label %bb.zv

bb.zv:                                            ; preds = %bb.zu
  %i.btx = load ptr, ptr %63, align 8, !tbaa !52
  %i.bty = call i32 @wmemcmp(ptr noundef %i.btx, ptr noundef nonnull %64, i64 noundef %i.btt) #33
  %i.btz = icmp eq i32 %i.bty, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i218

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i218: ; preds = %bb.zv, %bb.zu, %bb.zt
  %i.bua = phi i1 [ false, %bb.zt ], [ %i.btz, %bb.zv ], [ true, %bb.zu ]
  %i.bub = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 71, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_, i1 noundef zeroext %i.bua)
          to label %bb.zw unwind label %bb.aam    ; 0 uses

bb.zw:                                            ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %65, i8 0, i64 1200, i1 false), !alias.scope !618
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31, !noalias !618
  %i.buc = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 6 uses
  store ptr %23, ptr %i.buc, align 8, !tbaa !155, !noalias !618
  %i.bud = getelementptr inbounds nuw i8, ptr %23, i64 88 ; 2 uses
  store ptr %i.buc, ptr %i.bud, align 8, !tbaa !156, !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31, !noalias !618
  store i32 100, ptr %22, align 8, !tbaa !86, !noalias !618
  %i.bue = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.buc, ptr %i.bue, align 8, !tbaa !87, !noalias !618
  %i.buf = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 48, ptr %i.buf, align 8, !tbaa !88, !noalias !618
  %i.bug = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 48, ptr %i.bug, align 4, !tbaa !89, !noalias !618
  %i.buh = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %.noexc110.i221 unwind label %bb.aan ; 3 uses

.noexc110.i221:                                   ; preds = %bb.zw
  store ptr %i.buh, ptr %i.buc, align 8, !tbaa !155, !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31, !noalias !618
  store ptr %i.buc, ptr %i.bud, align 8, !tbaa !156, !noalias !618
  %i.bui = ptrtoint ptr %i.buc to i64
  %i.buj = ptrtoint ptr %i.buh to i64
  %i.buk = sub i64 %i.bui, %i.buj                 ; 3 uses
  %i.bul = icmp ult i64 %i.buk, 1200
  br i1 %i.bul, label %bb.aaa, label %bb.zx

bb.zx:                                            ; preds = %.noexc110.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31, !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31, !noalias !618
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %21, align 8, !tbaa !40, !noalias !618
  %i.bum = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr @_ZTIj, ptr %i.bum, align 8, !tbaa !45, !noalias !618
  %i.bun = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr @_ZTISt5arrayIwLm300EE, ptr %i.bun, align 8, !tbaa !46, !noalias !618
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %21) #32
          to label %bb.zy unwind label %bb.zz, !noalias !618

bb.zy:                                            ; preds = %bb.zx
  unreachable

bb.zz:                                            ; preds = %bb.zx
  %i.buo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #31, !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31, !noalias !618
  br label %.body111.i219

bb.aaa:                                           ; preds = %.noexc110.i221
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %65, ptr align 4 %i.buh, i64 %i.buk, i1 false)
  %i.bup = getelementptr inbounds nuw i8, ptr %65, i64 %i.buk
  store i32 0, ptr %i.bup, align 4, !tbaa !55, !alias.scope !618
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31, !noalias !618
  %i.buq = load i64, ptr %i.btd, align 8, !tbaa !53 ; 3 uses
  %i.bur = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %65) #33
  %i.bus = icmp eq i64 %i.buq, %i.bur
  br i1 %i.bus, label %bb.aab, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i222

bb.aab:                                           ; preds = %bb.aaa
  %i.but = icmp eq i64 %i.buq, 0
  br i1 %i.but, label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i222, label %bb.aac

bb.aac:                                           ; preds = %bb.aab
  %i.buu = load ptr, ptr %63, align 8, !tbaa !52
  %i.buv = call i32 @wmemcmp(ptr noundef %i.buu, ptr noundef nonnull %65, i64 noundef %i.buq) #33
  %i.buw = icmp eq i32 %i.buv, 0
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i222

_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i222: ; preds = %bb.aac, %bb.aab, %bb.aaa
  %i.bux = phi i1 [ false, %bb.aaa ], [ %i.buw, %bb.aac ], [ true, %bb.aab ]
  %i.buy = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 76, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_, i1 noundef zeroext %i.bux)
          to label %bb.aad unwind label %bb.aan   ; 0 uses

bb.aad:                                           ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  %i.buz = getelementptr inbounds nuw i8, ptr %20, i64 80 ; 4 uses
  store ptr %20, ptr %i.buz, align 8, !tbaa !155
  %i.bva = getelementptr inbounds nuw i8, ptr %20, i64 88
  store ptr %i.buz, ptr %i.bva, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  store i32 100, ptr %19, align 8, !tbaa !86
  %i.bvb = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.buz, ptr %i.bvb, align 8, !tbaa !87
  %i.bvc = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 48, ptr %i.bvc, align 8, !tbaa !88
  %i.bvd = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 48, ptr %i.bvd, align 4, !tbaa !89
  %i.bve = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %.noexc115.i297 unwind label %bb.aao

.noexc115.i297:                                   ; preds = %bb.aad
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  %i.bvf = ptrtoint ptr %i.buz to i64
  %i.bvg = ptrtoint ptr %i.bve to i64
  %i.bvh = sub i64 %i.bvf, %i.bvg
  %i.bvi = icmp ult i64 %i.bvh, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br i1 %i.bvi, label %bb.aah, label %bb.aae

bb.aae:                                           ; preds = %.noexc115.i297
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %18, align 8, !tbaa !40
  %i.bvj = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @_ZTIj, ptr %i.bvj, align 8, !tbaa !45
  %i.bvk = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @_ZTISt5arrayIwLm3EE, ptr %i.bvk, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %18) #32
          to label %bb.aaf unwind label %bb.aag

bb.aaf:                                           ; preds = %bb.aae
  unreachable

bb.aag:                                           ; preds = %bb.aae
  %i.bvl = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %.body116.i223

bb.aah:                                           ; preds = %.noexc115.i297
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_)
          to label %._crit_edge.i.i118.i226 unwind label %bb.aao

bb.aai:                                           ; preds = %.body102.i206
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_)
          to label %.invoke252.i208 unwind label %bb.aaj

.invoke252.i208:                                  ; preds = %bb.aai, %bb.zp
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i104.i209 unwind label %bb.aal

bb.aaj:                                           ; preds = %bb.aai
  %i.bvm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body98.i203 unwind label %bb.acx

bb.aak:                                           ; preds = %bb.zp
  %i.bvn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body98.i203 unwind label %bb.acx

bb.aal:                                           ; preds = %.invoke252.i208, %bb.yx
  %i.bvo = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i203

.body98.i203:                                     ; preds = %bb.aal, %bb.aak, %bb.aaj, %bb.zn, %bb.za
  %.pn57.pn.i204 = phi { ptr, i32 } [ %i.bst, %bb.zn ], [ %i.bvn, %bb.aak ], [ %i.bvm, %bb.aaj ], [ %i.bvo, %bb.aal ], [ %i.brw, %bb.za ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #31
  br label %.body95.i200

.body95.i200:                                     ; preds = %.body98.i203, %bb.zm, %bb.zl, %bb.yv
  %.pn57.pn.pn.i201 = phi { ptr, i32 } [ %.pn57.pn.i204, %.body98.i203 ], [ %i.bss, %bb.zm ], [ %i.bsr, %bb.zl ], [ %i.brf, %bb.yv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  br label %bb.acw

bb.aam:                                           ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i218, %._crit_edge.i.i104.i209
  %i.bvp = landingpad { ptr, i32 }
          cleanup
  br label %.body108.i211

.body108.i211:                                    ; preds = %bb.aam, %bb.zs
  %eh.lpad-body109.i212 = phi { ptr, i32 } [ %i.bvp, %bb.aam ], [ %i.btr, %bb.zs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #31
  br label %bb.acv

bb.aan:                                           ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit114.i222, %bb.zw
  %i.bvq = landingpad { ptr, i32 }
          cleanup
  br label %.body111.i219

.body111.i219:                                    ; preds = %bb.aan, %bb.zz
  %eh.lpad-body112.i220 = phi { ptr, i32 } [ %i.bvq, %bb.aan ], [ %i.buo, %bb.zz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #31
  br label %bb.acv

bb.aao:                                           ; preds = %bb.aah, %bb.aad
  %i.bvr = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body116.i223

.body116.i223:                                    ; preds = %bb.aao, %bb.aag
  %eh.lpad-body117.i224 = phi { ptr, i32 } [ %i.bvr, %bb.aao ], [ %i.bvl, %bb.aag ] ; 2 uses
  %i.bvs = extractvalue { ptr, i32 } %eh.lpad-body117.i224, 0
  %i.bvt = extractvalue { ptr, i32 } %eh.lpad-body117.i224, 1
  %i.bvu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.bvv = icmp eq i32 %i.bvt, %i.bvu
  %i.bvw = call ptr @__cxa_begin_catch(ptr %i.bvs) #31 ; 0 uses
  br i1 %i.bvv, label %bb.aap, label %bb.abi

bb.aap:                                           ; preds = %.body116.i223
  %i.bvx = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke253.i225 unwind label %bb.abk ; 0 uses

._crit_edge.i.i118.i226:                          ; preds = %.invoke253.i225, %bb.aah
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #31
  %i.bvy = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 6 uses
  store ptr %i.bvy, ptr %66, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bvy, ptr noundef nonnull align 2 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.bvz = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 3 uses
  store i64 3, ptr %i.bvz, align 8, !tbaa !60
  %i.bwa = getelementptr inbounds nuw i8, ptr %66, i64 22
  store i16 0, ptr %i.bwa, align 2, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(600) %67, i8 0, i64 600, i1 false), !alias.scope !619
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31, !noalias !619
  %i.bwb = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 6 uses
  store ptr %17, ptr %i.bwb, align 8, !tbaa !158, !noalias !619
  %i.bwc = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store ptr %i.bwb, ptr %i.bwc, align 8, !tbaa !159, !noalias !619
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31, !noalias !619
  store i32 100, ptr %16, align 8, !tbaa !95, !noalias !619
  %i.bwd = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.bwb, ptr %i.bwd, align 8, !tbaa !96, !noalias !619
  %i.bwe = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i16 48, ptr %i.bwe, align 8, !tbaa !97, !noalias !619
  %i.bwf = getelementptr inbounds nuw i8, ptr %16, i64 18
  store i16 48, ptr %i.bwf, align 2, !tbaa !98, !noalias !619
  %i.bwg = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEjDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %16)
          to label %.noexc122.i233 unwind label %bb.abm ; 3 uses

.noexc122.i233:                                   ; preds = %._crit_edge.i.i118.i226
  store ptr %i.bwg, ptr %i.bwb, align 8, !tbaa !158, !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !619
  store ptr %i.bwb, ptr %i.bwc, align 8, !tbaa !159, !noalias !619
  %i.bwh = ptrtoint ptr %i.bwb to i64
  %i.bwi = ptrtoint ptr %i.bwg to i64
  %i.bwj = sub i64 %i.bwh, %i.bwi                 ; 3 uses
  %i.bwk = icmp ult i64 %i.bwj, 600
  br i1 %i.bwk, label %bb.aat, label %bb.aaq

bb.aaq:                                           ; preds = %.noexc122.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31, !noalias !619
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31, !noalias !619
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %15, align 8, !tbaa !40, !noalias !619
  %i.bwl = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @_ZTIj, ptr %i.bwl, align 8, !tbaa !45, !noalias !619
  %i.bwm = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @_ZTISt5arrayIDsLm300EE, ptr %i.bwm, align 8, !tbaa !46, !noalias !619
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %15) #32
          to label %bb.aar unwind label %bb.aas, !noalias !619

bb.aar:                                           ; preds = %bb.aaq
  unreachable

bb.aas:                                           ; preds = %bb.aaq
  %i.bwn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #31, !noalias !619
end_hunk_16
begin_hunk_17_@_Z35testing_std_array_output_conversionv:bb.a
  br i1 %.not.i.i.i131.i287, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i242, label %.lr.ph.i.i.i132.i288

.lr.ph.i.i.i132.i288:                             ; preds = %bb.abc, %.lr.ph.i.i.i132.i288
  %.01216.i.i.i133.i289 = phi i64 [ %i.byc, %.lr.ph.i.i.i132.i288 ], [ 0, %bb.abc ] ; 3 uses
  %i.bxy = getelementptr inbounds nuw [2 x i8], ptr %i.bxx, i64 %.01216.i.i.i133.i289
  %i.bxz = getelementptr inbounds nuw [2 x i8], ptr %68, i64 %.01216.i.i.i133.i289
  %i.bya = load i16, ptr %i.bxy, align 2, !tbaa !62
  %i.byb = load i16, ptr %i.bxz, align 2, !tbaa !62
  %or.cond.not.i.i134.i290 = icmp eq i16 %i.byb, %i.bya ; 2 uses
  %i.byc = add nuw nsw i64 %.01216.i.i.i133.i289, 1 ; 2 uses
  %exitcond.not.i.i.i135.i291 = icmp ne i64 %i.byc, %i.bxr
  %or.cond565.not = select i1 %or.cond.not.i.i134.i290, i1 %exitcond.not.i.i.i135.i291, i1 false
  br i1 %or.cond565.not, label %.lr.ph.i.i.i132.i288, label %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i242, !llvm.loop !1

_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i242: ; preds = %.lr.ph.i.i.i132.i288, %bb.abc, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i130.i241
  %i.byd = phi i1 [ false, %_ZNSt11char_traitsIDsE6lengthEPKDs.exit.i.i130.i241 ], [ true, %bb.abc ], [ %or.cond.not.i.i134.i290, %.lr.ph.i.i.i132.i288 ]
  %i.bye = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 95, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_, i1 noundef zeroext %i.byd)
          to label %bb.abd unwind label %bb.abn   ; 0 uses

bb.abd:                                           ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.byf = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 4 uses
  store ptr %11, ptr %i.byf, align 8, !tbaa !158
  %i.byg = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.byf, ptr %i.byg, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  store i32 100, ptr %10, align 8, !tbaa !95
  %i.byh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.byf, ptr %i.byh, align 8, !tbaa !96
  %i.byi = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i16 48, ptr %i.byi, align 8, !tbaa !97
  %i.byj = getelementptr inbounds nuw i8, ptr %10, i64 18
  store i16 48, ptr %i.byj, align 2, !tbaa !98
  %i.byk = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDsEjDsE7convertEv(ptr noundef nonnull align 8 dereferenceable(20) %10)
          to label %.noexc138.i286 unwind label %bb.abo

.noexc138.i286:                                   ; preds = %bb.abd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.byl = ptrtoint ptr %i.byf to i64
  %i.bym = ptrtoint ptr %i.byk to i64
  %i.byn = sub i64 %i.byl, %i.bym
  %i.byo = icmp ult i64 %i.byn, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br i1 %i.byo, label %bb.abh, label %bb.abe

bb.abe:                                           ; preds = %.noexc138.i286
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %9, align 8, !tbaa !40
  %i.byp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @_ZTIj, ptr %i.byp, align 8, !tbaa !45
  %i.byq = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @_ZTISt5arrayIDsLm3EE, ptr %i.byq, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %9) #32
          to label %bb.abf unwind label %bb.abg

bb.abf:                                           ; preds = %bb.abe
  unreachable

bb.abg:                                           ; preds = %bb.abe
  %i.byr = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body139.i243

bb.abh:                                           ; preds = %.noexc138.i286
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_)
          to label %._crit_edge.i.i142.i246 unwind label %bb.abo

bb.abi:                                           ; preds = %.body116.i223
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_)
          to label %.invoke253.i225 unwind label %bb.abj

.invoke253.i225:                                  ; preds = %bb.abi, %bb.aap
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i118.i226 unwind label %bb.abl

bb.abj:                                           ; preds = %bb.abi
  %i.bys = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.acv unwind label %bb.acx

bb.abk:                                           ; preds = %bb.aap
  %i.byt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.acv unwind label %bb.acx

bb.abl:                                           ; preds = %.invoke253.i225
  %i.byu = landingpad { ptr, i32 }
          cleanup
  br label %bb.acv

bb.abm:                                           ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i236, %._crit_edge.i.i118.i226
  %i.byv = landingpad { ptr, i32 }
          cleanup
  br label %.body123.i227

.body123.i227:                                    ; preds = %bb.abm, %bb.aas
  %eh.lpad-body124.i228 = phi { ptr, i32 } [ %i.byv, %bb.abm ], [ %i.bwn, %bb.aas ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #31
  br label %bb.acu

bb.abn:                                           ; preds = %_ZSteqIDsSt11char_traitsIDsESaIDsEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit136.i242, %bb.aaw
  %i.byw = landingpad { ptr, i32 }
          cleanup
  br label %.body126.i237

.body126.i237:                                    ; preds = %bb.abn, %bb.aaz
  %eh.lpad-body127.i238 = phi { ptr, i32 } [ %i.byw, %bb.abn ], [ %i.bxp, %bb.aaz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #31
  br label %bb.acu

bb.abo:                                           ; preds = %bb.abh, %bb.abd
  %i.byx = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body139.i243

.body139.i243:                                    ; preds = %bb.abo, %bb.abg
  %eh.lpad-body140.i244 = phi { ptr, i32 } [ %i.byx, %bb.abo ], [ %i.byr, %bb.abg ] ; 2 uses
  %i.byy = extractvalue { ptr, i32 } %eh.lpad-body140.i244, 0
  %i.byz = extractvalue { ptr, i32 } %eh.lpad-body140.i244, 1
  %i.bza = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.bzb = icmp eq i32 %i.byz, %i.bza
  %i.bzc = call ptr @__cxa_begin_catch(ptr %i.byy) #31 ; 0 uses
  br i1 %i.bzb, label %bb.abp, label %bb.acg

bb.abp:                                           ; preds = %.body139.i243
  %i.bzd = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke254.i245 unwind label %bb.aci ; 0 uses

._crit_edge.i.i142.i246:                          ; preds = %.invoke254.i245, %bb.abh
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #31
  %i.bze = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 6 uses
  store ptr %i.bze, ptr %69, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bze, ptr noundef nonnull align 4 dereferenceable(12) @.str.29, i64 12, i1 false)
  %i.bzf = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 3 uses
  store i64 3, ptr %i.bzf, align 8, !tbaa !69
  %i.bzg = getelementptr inbounds nuw i8, ptr %69, i64 28
  store i32 0, ptr %i.bzg, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %70, i8 0, i64 1200, i1 false), !alias.scope !621
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31, !noalias !621
  %i.bzh = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 6 uses
  store ptr %8, ptr %i.bzh, align 8, !tbaa !161, !noalias !621
  %i.bzi = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  store ptr %i.bzh, ptr %i.bzi, align 8, !tbaa !162, !noalias !621
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !621
  store i32 100, ptr %7, align 8, !tbaa !103, !noalias !621
  %i.bzj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bzh, ptr %i.bzj, align 8, !tbaa !104, !noalias !621
  %i.bzk = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 48, ptr %i.bzk, align 8, !tbaa !105, !noalias !621
  %i.bzl = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 48, ptr %i.bzl, align 4, !tbaa !106, !noalias !621
  %i.bzm = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEjDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %.noexc147.i253 unwind label %bb.ack ; 3 uses

.noexc147.i253:                                   ; preds = %._crit_edge.i.i142.i246
  store ptr %i.bzm, ptr %i.bzh, align 8, !tbaa !161, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !621
  store ptr %i.bzh, ptr %i.bzi, align 8, !tbaa !162, !noalias !621
  %i.bzn = ptrtoint ptr %i.bzh to i64
  %i.bzo = ptrtoint ptr %i.bzm to i64
  %i.bzp = sub i64 %i.bzn, %i.bzo                 ; 3 uses
  %i.bzq = icmp ult i64 %i.bzp, 1200
  br i1 %i.bzq, label %bb.abt, label %bb.abq

bb.abq:                                           ; preds = %.noexc147.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !621
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !621
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %6, align 8, !tbaa !40, !noalias !621
  %i.bzr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZTIj, ptr %i.bzr, align 8, !tbaa !45, !noalias !621
  %i.bzs = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @_ZTISt5arrayIDiLm300EE, ptr %i.bzs, align 8, !tbaa !46, !noalias !621
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %6) #32
          to label %bb.abr unwind label %bb.abs, !noalias !621

bb.abr:                                           ; preds = %bb.abq
  unreachable

bb.abs:                                           ; preds = %bb.abq
  %i.bzt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !621
  br label %.body148.i247

bb.abt:                                           ; preds = %.noexc147.i253
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %70, ptr align 4 %i.bzm, i64 %i.bzp, i1 false)
  %i.bzu = getelementptr inbounds nuw i8, ptr %70, i64 %i.bzp
  store i32 0, ptr %i.bzu, align 4, !tbaa !71, !alias.scope !621
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !621
  %i.bzv = load i64, ptr %i.bzf, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i.i254 = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %70)
  %i.bzw = icmp eq i64 %i.bzv, %wcslen.i.i.i.i254
  br i1 %i.bzw, label %bb.abu, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i255

bb.abu:                                           ; preds = %bb.abt
  %i.bzx = load ptr, ptr %69, align 8, !tbaa !72
  %.not.i.i.i150.i281 = icmp eq i64 %i.bzv, 0
  br i1 %.not.i.i.i150.i281, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i255, label %.lr.ph.i.i.i151.i282

.lr.ph.i.i.i151.i282:                             ; preds = %bb.abu, %.lr.ph.i.i.i151.i282
  %.01216.i.i.i152.i283 = phi i64 [ %i.cac, %.lr.ph.i.i.i151.i282 ], [ 0, %bb.abu ] ; 3 uses
  %i.bzy = getelementptr inbounds nuw [4 x i8], ptr %i.bzx, i64 %.01216.i.i.i152.i283
  %i.bzz = getelementptr inbounds nuw [4 x i8], ptr %70, i64 %.01216.i.i.i152.i283
  %i.caa = load i32, ptr %i.bzy, align 4, !tbaa !71
  %i.cab = load i32, ptr %i.bzz, align 4, !tbaa !71
  %or.cond.not.i.i153.i284 = icmp eq i32 %i.cab, %i.caa ; 2 uses
  %i.cac = add nuw nsw i64 %.01216.i.i.i152.i283, 1 ; 2 uses
  %exitcond.not.i.i.i154.i285 = icmp ne i64 %i.cac, %i.bzv
  %or.cond566.not = select i1 %or.cond.not.i.i153.i284, i1 %exitcond.not.i.i.i154.i285, i1 false
  br i1 %or.cond566.not, label %.lr.ph.i.i.i151.i282, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i255, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i255: ; preds = %.lr.ph.i.i.i151.i282, %bb.abu, %bb.abt
  %i.cad = phi i1 [ false, %bb.abt ], [ true, %bb.abu ], [ %or.cond.not.i.i153.i284, %.lr.ph.i.i.i151.i282 ]
  %i.cae = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 108, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_, i1 noundef zeroext %i.cad)
          to label %bb.abv unwind label %bb.ack   ; 0 uses

bb.abv:                                           ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1200) %71, i8 0, i64 1200, i1 false), !alias.scope !622
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !622
  %i.caf = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 6 uses
  store ptr %5, ptr %i.caf, align 8, !tbaa !161, !noalias !622
  %i.cag = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  store ptr %i.caf, ptr %i.cag, align 8, !tbaa !162, !noalias !622
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !622
  store i32 100, ptr %4, align 8, !tbaa !103, !noalias !622
  %i.cah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.caf, ptr %i.cah, align 8, !tbaa !104, !noalias !622
  %i.cai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 48, ptr %i.cai, align 8, !tbaa !105, !noalias !622
  %i.caj = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 48, ptr %i.caj, align 4, !tbaa !106, !noalias !622
  %i.cak = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEjDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc155.i258 unwind label %bb.acl ; 3 uses

.noexc155.i258:                                   ; preds = %bb.abv
  store ptr %i.cak, ptr %i.caf, align 8, !tbaa !161, !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !622
  store ptr %i.caf, ptr %i.cag, align 8, !tbaa !162, !noalias !622
  %i.cal = ptrtoint ptr %i.caf to i64
  %i.cam = ptrtoint ptr %i.cak to i64
  %i.can = sub i64 %i.cal, %i.cam                 ; 3 uses
  %i.cao = icmp ult i64 %i.can, 1200
  br i1 %i.cao, label %bb.abz, label %bb.abw

bb.abw:                                           ; preds = %.noexc155.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !622
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !622
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %3, align 8, !tbaa !40, !noalias !622
  %i.cap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZTIj, ptr %i.cap, align 8, !tbaa !45, !noalias !622
  %i.caq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @_ZTISt5arrayIDiLm300EE, ptr %i.caq, align 8, !tbaa !46, !noalias !622
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
          to label %bb.abx unwind label %bb.aby, !noalias !622

bb.abx:                                           ; preds = %bb.abw
  unreachable

bb.aby:                                           ; preds = %bb.abw
  %i.car = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #31, !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !622
  br label %.body156.i256

bb.abz:                                           ; preds = %.noexc155.i258
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 dereferenceable(1200) %71, ptr align 4 %i.cak, i64 %i.can, i1 false)
  %i.cas = getelementptr inbounds nuw i8, ptr %71, i64 %i.can
  store i32 0, ptr %i.cas, align 4, !tbaa !71, !alias.scope !622
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !622
  %i.cat = load i64, ptr %i.bzf, align 8, !tbaa !69 ; 3 uses
  %wcslen.i.i.i159.i259 = call noundef i64 @wcslen(ptr nonnull dereferenceable(4) %71)
  %i.cau = icmp eq i64 %i.cat, %wcslen.i.i.i159.i259
  br i1 %i.cau, label %bb.aca, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i260

bb.aca:                                           ; preds = %bb.abz
  %i.cav = load ptr, ptr %69, align 8, !tbaa !72
  %.not.i.i.i160.i276 = icmp eq i64 %i.cat, 0
  br i1 %.not.i.i.i160.i276, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i260, label %.lr.ph.i.i.i161.i277

.lr.ph.i.i.i161.i277:                             ; preds = %bb.aca, %.lr.ph.i.i.i161.i277
  %.01216.i.i.i162.i278 = phi i64 [ %i.cba, %.lr.ph.i.i.i161.i277 ], [ 0, %bb.aca ] ; 3 uses
  %i.caw = getelementptr inbounds nuw [4 x i8], ptr %i.cav, i64 %.01216.i.i.i162.i278
  %i.cax = getelementptr inbounds nuw [4 x i8], ptr %71, i64 %.01216.i.i.i162.i278
  %i.cay = load i32, ptr %i.caw, align 4, !tbaa !71
  %i.caz = load i32, ptr %i.cax, align 4, !tbaa !71
  %or.cond.not.i.i163.i279 = icmp eq i32 %i.caz, %i.cay ; 2 uses
  %i.cba = add nuw nsw i64 %.01216.i.i.i162.i278, 1 ; 2 uses
  %exitcond.not.i.i.i164.i280 = icmp ne i64 %i.cba, %i.cat
  %or.cond567.not = select i1 %or.cond.not.i.i163.i279, i1 %exitcond.not.i.i.i164.i280, i1 false
  br i1 %or.cond567.not, label %.lr.ph.i.i.i161.i277, label %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i260, !llvm.loop !2

_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i260: ; preds = %.lr.ph.i.i.i161.i277, %bb.aca, %bb.abz
  %i.cbb = phi i1 [ false, %bb.abz ], [ true, %bb.aca ], [ %or.cond.not.i.i163.i279, %.lr.ph.i.i.i161.i277 ]
  %i.cbc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 113, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_, i1 noundef zeroext %i.cbb)
          to label %bb.acb unwind label %bb.acl   ; 0 uses

bb.acb:                                           ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.cbd = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  store ptr %2, ptr %i.cbd, align 8, !tbaa !161
  %i.cbe = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.cbd, ptr %i.cbe, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  store i32 100, ptr %1, align 8, !tbaa !103
  %i.cbf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.cbd, ptr %i.cbf, align 8, !tbaa !104
  %i.cbg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 48, ptr %i.cbg, align 8, !tbaa !105
  %i.cbh = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 48, ptr %i.cbh, align 4, !tbaa !106
  %i.cbi = invoke noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIDiEjDiE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc171.i275 unwind label %bb.acm

.noexc171.i275:                                   ; preds = %bb.acb
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.cbj = ptrtoint ptr %i.cbd to i64
  %i.cbk = ptrtoint ptr %i.cbi to i64
  %i.cbl = sub i64 %i.cbj, %i.cbk
  %i.cbm = icmp ult i64 %i.cbl, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %i.cbm, label %bb.acf, label %bb.acc

bb.acc:                                           ; preds = %.noexc171.i275
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost16bad_lexical_castE, i64 16), ptr %0, align 8, !tbaa !40
  %i.cbn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZTIj, ptr %i.cbn, align 8, !tbaa !45
  %i.cbo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZTISt5arrayIDiLm3EE, ptr %i.cbo, align 8, !tbaa !46
  invoke void @_ZN5boost15throw_exceptionINS_16bad_lexical_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
          to label %bb.acd unwind label %bb.ace

bb.acd:                                           ; preds = %bb.acc
  unreachable

bb.ace:                                           ; preds = %bb.acc
  %i.cbp = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  br label %.body172.i261

bb.acf:                                           ; preds = %.noexc171.i275
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_)
          to label %bb.aco unwind label %bb.acm

bb.acg:                                           ; preds = %.body139.i243
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_)
          to label %.invoke254.i245 unwind label %bb.ach

.invoke254.i245:                                  ; preds = %bb.acg, %bb.abp
  invoke void @__cxa_end_catch()
          to label %._crit_edge.i.i142.i246 unwind label %bb.acj

bb.ach:                                           ; preds = %bb.acg
  %i.cbq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.acu unwind label %bb.acx

bb.aci:                                           ; preds = %bb.abp
  %i.cbr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.acu unwind label %bb.acx

bb.acj:                                           ; preds = %.invoke254.i245
  %i.cbs = landingpad { ptr, i32 }
          cleanup
  br label %bb.acu

bb.ack:                                           ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i255, %._crit_edge.i.i142.i246
  %i.cbt = landingpad { ptr, i32 }
          cleanup
  br label %.body148.i247

.body148.i247:                                    ; preds = %bb.ack, %bb.abs
  %eh.lpad-body149.i248 = phi { ptr, i32 } [ %i.cbt, %bb.ack ], [ %i.bzt, %bb.abs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #31
  br label %bb.act

bb.acl:                                           ; preds = %_ZSteqIDiSt11char_traitsIDiESaIDiEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit165.i260, %bb.abv
  %i.cbu = landingpad { ptr, i32 }
          cleanup
  br label %.body156.i256

.body156.i256:                                    ; preds = %bb.acl, %bb.aby
  %eh.lpad-body157.i257 = phi { ptr, i32 } [ %i.cbu, %bb.acl ], [ %i.car, %bb.aby ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #31
  br label %bb.act

bb.acm:                                           ; preds = %bb.acf, %bb.acb
  %i.cbv = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost16bad_lexical_castE
          catch ptr null
  br label %.body172.i261

.body172.i261:                                    ; preds = %bb.acm, %bb.ace
  %eh.lpad-body173.i262 = phi { ptr, i32 } [ %i.cbv, %bb.acm ], [ %i.cbp, %bb.ace ] ; 2 uses
  %i.cbw = extractvalue { ptr, i32 } %eh.lpad-body173.i262, 0
  %i.cbx = extractvalue { ptr, i32 } %eh.lpad-body173.i262, 1
  %i.cby = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost16bad_lexical_castE) #31
  %i.cbz = icmp eq i32 %i.cbx, %i.cby
  %i.cca = call ptr @__cxa_begin_catch(ptr %i.cbw) #31 ; 0 uses
  br i1 %i.cbz, label %bb.acn, label %bb.acp

bb.acn:                                           ; preds = %.body172.i261
  %i.ccb = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke255.i263 unwind label %bb.acr ; 0 uses

bb.aco:                                           ; preds = %.invoke255.i263, %bb.acf
  %i.ccc = load ptr, ptr %69, align 8, !tbaa !72  ; 2 uses
  %i.ccd = icmp eq ptr %i.ccc, %i.bze
  br i1 %i.ccd, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i265, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i264

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i264: ; preds = %bb.aco
  %i.cce = load i64, ptr %i.bze, align 8, !tbaa !38
  %i.ccf = shl i64 %i.cce, 2
  %i.ccg = add i64 %i.ccf, 4
  call void @_ZdlPvm(ptr noundef %i.ccc, i64 noundef %i.ccg) #34
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i265

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i265: ; preds = %bb.aco, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #31
  %i.cch = load ptr, ptr %66, align 8, !tbaa !64  ; 2 uses
  %i.cci = icmp eq ptr %i.cch, %i.bvy
  br i1 %i.cci, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i267, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i266

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i266: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i265
  %i.ccj = load i64, ptr %i.bvy, align 8, !tbaa !38
  %i.cck = shl i64 %i.ccj, 1
  %i.ccl = add i64 %i.cck, 2
  call void @_ZdlPvm(ptr noundef %i.cch, i64 noundef %i.ccl) #34
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i267

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i267: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit.i265, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #31
  %i.ccm = load ptr, ptr %63, align 8, !tbaa !52  ; 2 uses
  %i.ccn = icmp eq ptr %i.ccm, %i.btb
  br i1 %i.ccn, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i269, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i268

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i268: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i267
  %i.cco = load i64, ptr %i.btb, align 8, !tbaa !38
  %i.ccp = shl i64 %i.cco, 2
  %i.ccq = add i64 %i.ccp, 4
  call void @_ZdlPvm(ptr noundef %i.ccm, i64 noundef %i.ccq) #34
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i269

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i269: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i267, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #31
  %i.ccr = load ptr, ptr %56, align 8, !tbaa !73  ; 2 uses
  %i.ccs = icmp eq ptr %i.ccr, %i.bmm
  br i1 %i.ccs, label %_ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i269
  %i.cct = load i64, ptr %i.bmm, align 8, !tbaa !38
  %i.ccu = add i64 %i.cct, 1
  call void @_ZdlPvm(ptr noundef %i.ccr, i64 noundef %i.ccu) #34
  br label %_ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_.exit

bb.acp:                                           ; preds = %.body172.i261
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._ZL43testing_template_array_output_on_spec_valueISt5arrayjEvT0_)
          to label %.invoke255.i263 unwind label %bb.acq

.invoke255.i263:                                  ; preds = %bb.acp, %bb.acn
  invoke void @__cxa_end_catch()
          to label %bb.aco unwind label %bb.acs

bb.acq:                                           ; preds = %bb.acp
end_hunk_17
