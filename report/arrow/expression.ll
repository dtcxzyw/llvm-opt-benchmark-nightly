inline.NumInlined: 7294
inline.NumDeleted: 3038
begin_hunk_0_@_ZN5arrow7compute23ExecuteScalarExpressionERKNS0_10ExpressionERKNS0_9ExecBatchEPNS0_11ExecContextE:bb.a
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  %i.fi = load ptr, ptr %32, align 8, !tbaa !33   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !86
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  br label %bb.bi

bb.bd:                                            ; preds = %bb.av
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.be:                                            ; preds = %bb.ax, %bb.aw
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

bb.bf:                                            ; preds = %bb.az
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

bb.bg:                                            ; preds = %_ZNK5arrow10TypeHolder8ToStringB5cxx11Eb.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %34, align 8, !tbaa !33   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.bg
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !86
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171, %bb.bf
  %.pn109 = phi { ptr, i32 } [ %i.fp, %bb.bf ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ], [ %i.fq, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  %i.fw = load ptr, ptr %33, align 8, !tbaa !33   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !86
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174, %bb.be
  %.pn109.pn = phi { ptr, i32 } [ %i.fo, %bb.be ], [ %.pn109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ], [ %.pn109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  %i.gb = load ptr, ptr %32, align 8, !tbaa !33   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !86
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.bd
  %.pn109.pn.pn = phi { ptr, i32 } [ %i.fn, %bb.bd ], [ %.pn109.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %.pn109.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  br label %bb.bk

bb.bh:                                            ; preds = %bb.au
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gh = load i8, ptr %i.bp, align 16, !tbaa !69 ; 2 uses
  %i.gi = icmp eq i8 %i.gh, 0
  br i1 %i.gi, label %_ZN5arrow6ResultINS_5DatumEEC2EOS1_.exit, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.bh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gl = load <2 x ptr>, ptr %19, align 16, !tbaa !94
  store ptr null, ptr %i.gk, align 8, !tbaa !79
  store <2 x ptr> %i.gl, ptr %i.gj, align 8, !tbaa !94
  store ptr null, ptr %19, align 16, !tbaa !94
  br label %_ZN5arrow6ResultINS_5DatumEEC2EOS1_.exit

_ZN5arrow6ResultINS_5DatumEEC2EOS1_.exit:         ; preds = %bb.bh, %.sink.split.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.gh, ptr %i.gg, align 8, !tbaa !69
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit155, %_ZN5arrow6ResultINS_5DatumEEC2EOS1_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %_ZN5arrow5DatumD2Ev.exit180 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #29
  unreachable

_ZN5arrow5DatumD2Ev.exit180:                      ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %.thread221

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNSt6vectorIiSaIiEED2Ev.exit157, %bb.af
  %.pn109.pn.pn.pn = phi { ptr, i32 } [ %.pn109.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %i.cw, %bb.af ], [ %.pn104.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit157 ]
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %common.resume

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i: ; preds = %_ZSt6get_ifIN5arrow5DatumEJS1_NS0_7compute10Expression9ParameterENS3_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  %i.go = icmp eq i8 %i.ak, 2
  %spec.select.i.i.i.i = select i1 %i.go, ptr %i.ai, ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  %i.gp = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 32 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !131 ; 2 uses
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !130 ; 2 uses
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = ashr exact i64 %i.gv, 4                 ; 3 uses
  %i.gx = icmp ugt i64 %i.gw, 384307168202282325
  br i1 %i.gx, label %bb.bl, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.bl:                                            ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #33
          to label %.noexc183 unwind label %bb.bn

.noexc183:                                        ; preds = %bb.bl
  unreachable

_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  %.not.i.i.i.i182 = icmp eq ptr %i.gr, %i.gs
  br i1 %.not.i.i.i.i182, label %._crit_edge.thread, label %.lr.ph.preheader.i.i.i.i.i

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.gy = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  %i.hb = load i64, ptr %i.ha, align 8
  br label %bb.cb

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.hc = mul nuw nsw i64 %i.gw, 24               ; 3 uses
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #30
          to label %.lr.ph unwind label %bb.bn    ; 4 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.hd, ptr %35, align 8, !tbaa !527
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %i.gw
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hd, i8 0, i64 %i.hc, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.hd, i64 %i.hc
  %i.hf = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 3 uses
  store ptr %i.he, ptr %i.hg, align 8, !tbaa !436
  store ptr %scevgep.i.i.i.i.i, ptr %i.hf, align 8, !tbaa !435
  %i.hh = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.hi = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %37, i64 16
  br label %bb.bo

bb.bm:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit
  %i.hl = add nuw i64 %.093237, 1                 ; 2 uses
  %i.hm = load ptr, ptr %i.hf, align 8, !tbaa !435 ; 2 uses
  %i.hn = load ptr, ptr %35, align 8, !tbaa !527  ; 2 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = sdiv exact i64 %i.hq, 24
  %.not119 = icmp ult i64 %i.hl, %i.hr
  br i1 %.not119, label %bb.bo, label %._crit_edge, !llvm.loop !555

bb.bn:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.bl
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.bo:                                            ; preds = %.lr.ph, %bb.bm
  %.093237 = phi i64 [ 0, %.lr.ph ], [ %i.hl, %bb.bm ] ; 4 uses
  %.094236 = phi i8 [ 1, %.lr.ph ], [ %.195, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #31
  %i.ht = load ptr, ptr %i.gp, align 8, !tbaa !130
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %.093237
  invoke void @_ZN5arrow7compute23ExecuteScalarExpressionERKNS0_10ExpressionERKNS0_9ExecBatchEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.213") align 8 %36, ptr noundef nonnull align 8 dereferenceable(16) %i.hu, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %3)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.hv = load ptr, ptr %36, align 8, !tbaa !274
  %i.hw = icmp eq ptr %i.hv, null                 ; 2 uses
  br i1 %i.hw, label %bb.bs, label %bb.bq, !prof !290

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %36) #31
  br label %bb.bx

bb.br:                                            ; preds = %bb.bo
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.bs:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.hy = load i8, ptr %i.hh, align 8, !tbaa !69, !noalias !562 ; 2 uses
  %i.hz = icmp eq i8 %i.hy, 0
  br i1 %i.hz, label %bb.bt, label %.sink.split.i.i.i.i.i.i.i.i.i.i185

.sink.split.i.i.i.i.i.i.i.i.i.i185:               ; preds = %bb.bs
  %i.ia = load <2 x ptr>, ptr %i.hi, align 8, !tbaa !94, !noalias !562
  store ptr null, ptr %i.hj, align 8, !tbaa !79, !noalias !562
  store <2 x ptr> %i.ia, ptr %37, align 16, !tbaa !94, !alias.scope !562
  store ptr null, ptr %i.hi, align 8, !tbaa !94, !noalias !562
  br label %bb.bt

bb.bt:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i185, %bb.bs
  store i8 %i.hy, ptr %i.hk, align 16, !tbaa !69, !alias.scope !562
  %i.ib = load ptr, ptr %35, align 8, !tbaa !527
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.ib, i64 %.093237
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store ptr %i.ic, ptr %7, align 8, !tbaa !499
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSM_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %_ZN5arrow5DatumaSEOS0_.exit unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #29
  unreachable

_ZN5arrow5DatumaSEOS0_.exit:                      ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %_ZN5arrow5DatumaSEOS0_.exit
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #29
  unreachable

bb.bw:                                            ; preds = %_ZN5arrow5DatumaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  %i.ih = load ptr, ptr %35, align 8, !tbaa !527
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %i.ih, i64 %.093237
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !69
  %i.il = icmp eq i8 %i.ik, 1
  %51 = icmp ne i8 %.094236, 0
  %i.im = select i1 %i.il, i1 %51, i1 false
  %52 = zext i1 %i.im to i8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bq
  %.195 = phi i8 [ %.094236, %bb.bq ], [ %52, %bb.bw ] ; 2 uses
  %i.in = load ptr, ptr %36, align 8, !tbaa !274  ; 2 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.by, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !290

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.hi)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  call void @__clang_call_terminate(ptr %i.iq) #29
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.pr.i = load ptr, ptr %36, align 8, !tbaa !274 ; 2 uses
  %.not.i.i188 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i188, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !283

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %bb.bx
  %i.ir = phi ptr [ %.pr.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ], [ %i.in, %bb.bx ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !284, !range !189, !noundef !66
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %36) #31
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  br i1 %i.hw, label %bb.bm, label %.thread228

._crit_edge:                                      ; preds = %bb.bm
  %i.iv = icmp ne ptr %i.hn, %i.hm
  %53 = trunc nuw i8 %.195 to i1
  %i.iw = select i1 %i.iv, i1 %53, i1 false
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.iy = load i64, ptr %i.ix, align 8
  %cond.fr = freeze i1 %i.iw
  %spec.select = select i1 %cond.fr, i64 1, i64 %i.iy
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge, %._crit_edge.thread
  %i.iz = phi ptr [ %i.gy, %._crit_edge.thread ], [ %i.hf, %._crit_edge ]
  %i.ja = phi ptr [ %i.gz, %._crit_edge.thread ], [ %i.hg, %._crit_edge ]
  %i.jb = phi i64 [ %i.hb, %._crit_edge.thread ], [ %spec.select, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  invoke void @_ZN5arrow7compute6detail14KernelExecutor10MakeScalarEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.227") align 8 %38)
          to label %bb.cc unwind label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !256 ; 2 uses
  store ptr %3, ptr %39, align 8, !tbaa !563
  %i.je = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %i.jd, ptr %i.jf, align 8, !tbaa !566
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !138
  store ptr %i.jh, ptr %i.je, align 8, !tbaa !567
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #31
  invoke void @_ZN5arrow7compute8GetTypesERKSt6vectorINS_5DatumESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.235") align 8 %40, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  %i.jk = load ptr, ptr %38, align 8, !tbaa !568  ; 2 uses
  store ptr %i.jd, ptr %43, align 8, !tbaa !570
  %i.jl = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %40, ptr %i.jl, align 8, !tbaa !573
  %i.jm = getelementptr inbounds nuw i8, ptr %43, i64 16
  store ptr %i.jj, ptr %i.jm, align 8, !tbaa !574
  %i.jn = load ptr, ptr %i.jk, align 8, !tbaa !83
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8
  invoke void %i.jp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %42, ptr noundef nonnull align 8 dereferenceable(8) %i.jk, ptr noundef nonnull %39, ptr noundef nonnull byval(%"struct.arrow::compute::KernelInitArgs") align 8 %43)
          to label %_ZN5arrow6StatusD2Ev.exit190 unwind label %bb.cj

_ZN5arrow6StatusD2Ev.exit190:                     ; preds = %bb.cd
  %i.jq = load ptr, ptr %42, align 8, !tbaa !274  ; 2 uses
  store ptr %i.jq, ptr %41, align 8, !tbaa !274
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %_ZN5arrow6StatusD2Ev.exit196, label %bb.ce, !prof !290

bb.ce:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit190
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %41) #31
  %i.js = load ptr, ptr %41, align 8, !tbaa !274  ; 2 uses
  %.not.i191 = icmp eq ptr %i.js, null
  br i1 %.not.i191, label %_ZN5arrow6StatusD2Ev.exit192, label %bb.cf, !prof !290

bb.cf:                                            ; preds = %bb.ce
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !284, !range !189, !noundef !66
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %_ZN5arrow6StatusD2Ev.exit192, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %41) #31
  br label %_ZN5arrow6StatusD2Ev.exit192

_ZN5arrow6StatusD2Ev.exit192:                     ; preds = %bb.ce, %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  br label %bb.cy

bb.ch:                                            ; preds = %bb.cb
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow7compute6detail14KernelExecutorESt14default_deleteIS3_EED2Ev.exit208

bb.ci:                                            ; preds = %bb.cc
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cj:                                            ; preds = %bb.cd
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  br label %bb.cz

_ZN5arrow6StatusD2Ev.exit196:                     ; preds = %_ZN5arrow6StatusD2Ev.exit190
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow7compute6detail16DatumAccumulatorE, i64 16), ptr %44, align 8, !tbaa !83
  %i.jz = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jz, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #31
  %i.ka = load ptr, ptr %38, align 8, !tbaa !568  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #31
  invoke void @_ZNSt6vectorIN5arrow5DatumESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit196
  invoke void @_ZN5arrow7compute9ExecBatchC2ESt6vectorINS_5DatumESaIS3_EEl(ptr noundef nonnull align 8 dereferenceable(72) %47, ptr noundef nonnull %48, i64 noundef %i.jb)
          to label %bb.cl unwind label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !83
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8
  invoke void %i.kd(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %46, ptr noundef nonnull align 8 dereferenceable(8) %i.ka, ptr noundef nonnull align 8 dereferenceable(72) %47, ptr noundef nonnull %44)
          to label %_ZN5arrow6StatusD2Ev.exit198 unwind label %bb.cr

_ZN5arrow6StatusD2Ev.exit198:                     ; preds = %bb.cl
  %i.ke = load ptr, ptr %46, align 8, !tbaa !274  ; 2 uses
  store ptr %i.ke, ptr %45, align 8, !tbaa !274
  store ptr null, ptr %46, align 8, !tbaa !274
  call void @_ZN5arrow7compute9ExecBatchD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %47) #31
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %48) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %_ZN5arrow6StatusD2Ev.exit204, label %bb.cm, !prof !290

bb.cm:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit198
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %45) #31
  %i.kg = load ptr, ptr %45, align 8, !tbaa !274  ; 2 uses
  %.not.i199 = icmp eq ptr %i.kg, null
  br i1 %.not.i199, label %_ZN5arrow6StatusD2Ev.exit200, label %bb.cn, !prof !290

bb.cn:                                            ; preds = %bb.cm
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !284, !range !189, !noundef !66
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %_ZN5arrow6StatusD2Ev.exit200, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %45) #31
  br label %_ZN5arrow6StatusD2Ev.exit200

_ZN5arrow6StatusD2Ev.exit200:                     ; preds = %bb.cm, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  br label %bb.cw

bb.cp:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit196
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cq:                                            ; preds = %bb.ck
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cl
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute9ExecBatchD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %47) #31
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn122.pn = phi { ptr, i32 } [ %i.km, %bb.cr ], [ %i.kl, %bb.cq ]
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %48) #31
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cp
  %.pn122.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %bb.cs ], [ %i.kk, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  br label %bb.cx

_ZN5arrow6StatusD2Ev.exit204:                     ; preds = %_ZN5arrow6StatusD2Ev.exit198
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #31
  %i.kn = load ptr, ptr %38, align 8, !tbaa !568  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.ko = load <2 x ptr>, ptr %i.jz, align 8, !tbaa !470, !noalias !575
  store <2 x ptr> %i.ko, ptr %50, align 16, !tbaa !470, !alias.scope !575
  %i.kp = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.kq = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !436, !noalias !575
  store ptr %i.kr, ptr %i.kp, align 16, !tbaa !436, !alias.scope !575
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jz, i8 0, i64 24, i1 false), !noalias !575
  %i.ks = load ptr, ptr %i.kn, align 8, !tbaa !83
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8
  invoke void %i.ku(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::Datum") align 8 %49, ptr noundef nonnull align 8 dereferenceable(8) %i.kn, ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit204
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #31
  call void @_ZN5arrow6ResultINS_5DatumEEC2IKS1_vEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %49) #31
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %49) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #31
  br label %bb.cw

end_hunk_0
