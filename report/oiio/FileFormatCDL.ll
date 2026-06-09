inline.NumInlined: 540
inline.NumDeleted: 283
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES7_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE:bb.a
bb.ao:                                            ; preds = %bb.an
  %i.cz = add nsw i32 %i.cq, -1
  store i32 %i.cz, ptr %i.cn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.da = atomicrmw volatile add ptr %i.cn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i96 = phi i32 [ %i.cq, %bb.ao ], [ %i.da, %bb.ap ]
  %i.db = icmp eq i32 %.0.i.i.i.i.i.i96, 1
  br i1 %i.db, label %bb.aq, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.am, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !50 ; 8 uses
  %.not.i.i98 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i98, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.de, align 8, !tbaa !39
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !41
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #23, !inline_history !104
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #23, !inline_history !104
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.at:                                            ; preds = %bb.ar
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i99 = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i99, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100

bb.av:                                            ; preds = %bb.at
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i101 = phi i32 [ %i.dh, %bb.au ], [ %i.dr, %bb.av ]
  %i.ds = icmp eq i32 %.0.i.i.i.i101, 1
  br i1 %i.ds, label %bb.aw, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.dt = load ptr, ptr %10, align 8, !tbaa !95   ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !11
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 88
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, i32 noundef %i.au)
          to label %bb.be unwind label %bb.bd

bb.ax:                                            ; preds = %bb.p
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ay:                                            ; preds = %bb.q
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

bb.az:                                            ; preds = %.noexc.i, %bb.s
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

bb.ba:                                            ; preds = %bb.w
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.bc:                                            ; preds = %bb.ae
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.bm

bb.bd:                                            ; preds = %bb.be, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit
  %i.ee = phi ptr [ %i.dt, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.pre, %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit ]
  invoke void @_ZN16OpenColorIO_v2_510BuildCDLOpERNS_10OpRcPtrVecERKNS_6ConfigERKNS_12CDLTransformENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ee, i32 noundef %i.aa)
          to label %bb.bf unwind label %bb.bd

bb.bf:                                            ; preds = %bb.be
  %i.ef = load ptr, ptr %i.bs, align 8, !tbaa !50 ; 8 uses
  %.not.i.i102 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i102, label %.thread196, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.eg, align 8, !tbaa !39
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !41
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #23, !inline_history !105
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !11
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #23, !inline_history !105
  br label %.thread196

bb.bi:                                            ; preds = %bb.bg
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i103 = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i103, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104

bb.bk:                                            ; preds = %bb.bi
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i105 = phi i32 [ %i.ej, %bb.bj ], [ %i.et, %bb.bk ]
  %i.eu = icmp eq i32 %.0.i.i.i.i105, 1
  br i1 %i.eu, label %bb.bl, label %.thread196, !prof !61

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #23
  br label %.thread196

bb.bm:                                            ; preds = %bb.bd, %bb.bc
  %.pn57 = phi { ptr, i32 } [ %i.ed, %bb.bd ], [ %i.ec, %bb.bc ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ed

.thread196:                                       ; preds = %bb.bf, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.dw

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.x, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.ev = icmp eq i64 %.pre204, 0
  br i1 %i.ev, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread
  %i.ew = load ptr, ptr %9, align 8, !tbaa !29
  %i.ex = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.b, ptr noundef %i.ew, i1 noundef zeroext true)
          to label %bb.bo unwind label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.ex, label %._crit_edge, label %bb.dm

._crit_edge:                                      ; preds = %bb.bo
  %.pre205 = load i32, ptr %i.b, align 4, !tbaa !3
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread
  %i.ey = phi i32 [ %.pre205, %._crit_edge ], [ 0, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !106
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !109 ; 3 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = lshr exact i64 %i.ff, 4
  %i.fh = trunc i64 %i.fg to i32                  ; 2 uses
  %i.fi = add nsw i32 %i.fh, -1
  %i.fj = icmp sgt i32 %i.ey, -1
  %.not59 = icmp slt i32 %i.ey, %i.fh
  %or.cond = and i1 %i.fj, %.not59
  br i1 %or.cond, label %bb.cd, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %bb.br unwind label %bb.bx

bb.br:                                            ; preds = %bb.bq
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.13, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108: ; preds = %bb.br
  %i.fl = load i32, ptr %i.b, align 4, !tbaa !3
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %i.fl)
          to label %bb.bs unwind label %bb.by     ; 0 uses

bb.bs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.14, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit110 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit110: ; preds = %bb.bs
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %i.fi)
          to label %bb.bt unwind label %bb.by

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit110
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fo, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112 unwind label %bb.by ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112: ; preds = %bb.bt
  %i.fq = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(112) %12)
          to label %bb.bu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.thread

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
  %i.fr = load ptr, ptr %13, align 8, !tbaa !29
  invoke void @_ZN16OpenColorIO_v2_520ExceptionMissingFileC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef %i.fr)
          to label %bb.bv unwind label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTIN16OpenColorIO_v2_520ExceptionMissingFileE, ptr nonnull @_ZN16OpenColorIO_v2_520ExceptionMissingFileD1Ev) #26
          to label %bb.ef unwind label %bb.bz

bb.bw:                                            ; preds = %bb.bn
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.bx:                                            ; preds = %bb.bq
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.by:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit110, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bv, %bb.bu
  %.023 = phi i1 [ false, %bb.bv ], [ true, %bb.bu ] ; 2 uses
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fx = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.bz
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !19
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br i1 %.023, label %bb.ca, label %bb.cb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br i1 %.023, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %.pn63195 = phi { ptr, i32 } [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.thread ], [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ]
  call void @__cxa_free_exception(ptr %i.fq) #23
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %bb.ca, %bb.by
  %.pn63.pn = phi { ptr, i32 } [ %.pn63195, %bb.ca ], [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %i.fu, %bb.by ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %12) #23
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bx
  %.pn63.pn.pn = phi { ptr, i32 } [ %.pn63.pn, %bb.cb ], [ %i.ft, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.dl

bb.cd:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.gc = zext nneg i32 %i.ey to i64
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.gc ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fc) ]
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !92 ; 3 uses
  store ptr %i.ge, ptr %14, align 8, !tbaa !95
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !50 ; 3 uses
  store ptr %i.gh, ptr %i.gf, align 8, !tbaa !50
  %.not.i.i.i116 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i116, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit118, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 3 uses
  %i.gj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i117 = icmp eq i8 %i.gj, 0
  br i1 %.not.i.i.i.i117, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gi, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit118

bb.cg:                                            ; preds = %bb.ce
  %i.gm = atomicrmw volatile add ptr %i.gi, i32 1 acq_rel, align 4 ; 0 uses
  %.pre206.pre = load ptr, ptr %14, align 8, !tbaa !95
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit118

_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit118: ; preds = %bb.cd, %bb.cf, %bb.cg
  %.pre206 = phi ptr [ %i.ge, %bb.cd ], [ %i.ge, %bb.cf ], [ %.pre206.pre, %bb.cg ] ; 3 uses
  %.not60 = icmp eq i32 %i.au, 1
  br i1 %.not60, label %bb.dc, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit118
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.gn = load ptr, ptr %.pre206, align 8, !tbaa !11
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %.pre206)
          to label %bb.ci unwind label %bb.da

bb.ci:                                            ; preds = %bb.ch
  %i.gp = load ptr, ptr %15, align 8, !tbaa !97, !noalias !110 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit123, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gr = call ptr @__dynamic_cast(ptr nonnull %i.gp, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_512CDLTransformE, i64 0) #23, !noalias !110 ; 4 uses
  %.not.not.i119 = icmp eq ptr %i.gr, null
  br i1 %.not.not.i119, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit123, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !50, !noalias !110 ; 4 uses
  %.not.i.i.i.i120 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i120, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit123, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 3 uses
  %i.gv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !110
  %.not.i.i.i.i.i121 = icmp eq i8 %i.gv, 0
  br i1 %.not.i.i.i.i.i121, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !3, !noalias !110
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gu, align 4, !tbaa !3, !noalias !110
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit123

bb.cn:                                            ; preds = %bb.cl
  %i.gy = atomicrmw volatile add ptr %i.gu, i32 1 acq_rel, align 4, !noalias !110 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit123

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit123: ; preds = %bb.ci, %bb.cj, %bb.ck, %bb.cm, %bb.cn
  %.sroa.0.0 = phi ptr [ %i.gr, %bb.cm ], [ %i.gr, %bb.ck ], [ %i.gr, %bb.cn ], [ null, %bb.cj ], [ null, %bb.ci ]
  %.sroa.7.0 = phi ptr [ %i.gt, %bb.cm ], [ null, %bb.ck ], [ %i.gt, %bb.cn ], [ null, %bb.cj ], [ null, %bb.ci ]
  store ptr %.sroa.0.0, ptr %14, align 8, !tbaa !102
  %i.gz = load ptr, ptr %i.gf, align 8, !tbaa !50 ; 8 uses
  store ptr %.sroa.7.0, ptr %i.gf, align 8, !tbaa !50
  %.not.i.i.i.i124 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i124, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit133, label %bb.co

bb.co:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit123
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 4 uses
  %i.hb = load atomic i64, ptr %i.ha acquire, align 8 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 4294967297
  %i.hd = trunc i64 %i.hb to i32                  ; 2 uses
  br i1 %i.hc, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i32 0, ptr %i.ha, align 8, !tbaa !39
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store i32 0, ptr %i.he, align 4, !tbaa !41
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !11
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #23, !inline_history !103
  %i.hi = load ptr, ptr %i.gz, align 8, !tbaa !11
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #23, !inline_history !103
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit133

bb.cq:                                            ; preds = %bb.co
  %i.hl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i125 = icmp eq i8 %i.hl, 0
  br i1 %.not.i.i.i.i.i125, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hm = add nsw i32 %i.hd, -1
  store i32 %i.hm, ptr %i.ha, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126

bb.cs:                                            ; preds = %bb.cq
  %i.hn = atomicrmw volatile add ptr %i.ha, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126: ; preds = %bb.cs, %bb.cr
  %.0.i.i.i.i.i.i127 = phi i32 [ %i.hd, %bb.cr ], [ %i.hn, %bb.cs ]
  %i.ho = icmp eq i32 %.0.i.i.i.i.i.i127, 1
  br i1 %i.ho, label %bb.ct, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit133, !prof !61

bb.ct:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit133

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit133: ; preds = %bb.ct, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126, %bb.cp, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit123
  %i.hp = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !50 ; 8 uses
  %.not.i.i134 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i134, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit133
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 4 uses
  %i.hs = load atomic i64, ptr %i.hr acquire, align 8 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 4294967297
  %i.hu = trunc i64 %i.hs to i32                  ; 2 uses
  br i1 %i.ht, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store i32 0, ptr %i.hr, align 8, !tbaa !39
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  store i32 0, ptr %i.hv, align 4, !tbaa !41
  %i.hw = load ptr, ptr %i.hq, align 8, !tbaa !11
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #23, !inline_history !104
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !11
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #23, !inline_history !104
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138

bb.cw:                                            ; preds = %bb.cu
  %i.ic = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i135 = icmp eq i8 %i.ic, 0
  br i1 %.not.i.i.i135, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.id = add nsw i32 %i.hu, -1
  store i32 %i.id, ptr %i.hr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136

bb.cy:                                            ; preds = %bb.cw
  %i.ie = atomicrmw volatile add ptr %i.hr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136: ; preds = %bb.cy, %bb.cx
  %.0.i.i.i.i137 = phi i32 [ %i.hu, %bb.cx ], [ %i.ie, %bb.cy ]
  %i.if = icmp eq i32 %.0.i.i.i.i137, 1
  br i1 %i.if, label %bb.cz, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138, !prof !61

bb.cz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit133, %bb.cv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.ig = load ptr, ptr %14, align 8, !tbaa !95   ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !11
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 88
  %i.ij = load ptr, ptr %i.ii, align 8
  invoke void %i.ij(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, i32 noundef %i.au)
          to label %bb.dc unwind label %bb.db

bb.da:                                            ; preds = %bb.ch
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.dk

bb.db:                                            ; preds = %bb.dc, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dc:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138, %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit118
  %i.im = phi ptr [ %i.ig, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138 ], [ %.pre206, %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit118 ]
  invoke void @_ZN16OpenColorIO_v2_510BuildCDLOpERNS_10OpRcPtrVecERKNS_6ConfigERKNS_12CDLTransformENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.im, i32 noundef %i.aa)
          to label %bb.dd unwind label %bb.db

bb.dd:                                            ; preds = %bb.dc
  %i.in = load ptr, ptr %i.gf, align 8, !tbaa !50 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EED2Ev:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !130

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !109
  br label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !131
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD2Ev(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !41
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23, !inline_history !132
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23, !inline_history !132
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !130

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !109
  br label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #25
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef %i.af)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EED2Ev.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #27
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESaIS3_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD0Ev(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFile11getCDLGroupEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.24") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.32", align 16 ; 3 uses
  tail call void @_ZN16OpenColorIO_v2_514GroupTransform6CreateEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.24") align 8 %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %.not10 = icmp eq ptr %i.b, %i.d
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.g = load ptr, ptr %0, align 8, !tbaa !134    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #23 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.m unwind label %bb.l       ; 0 uses

bb.b:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.07.011 = phi ptr [ %i.b, %.lr.ph ], [ %i.ar, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.011) ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !134    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50   ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.07.011, align 8, !tbaa !137
  store <2 x ptr> %i.s, ptr %2, align 16, !tbaa !137
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit

bb.e:                                             ; preds = %bb.c
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %2) #23
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !50  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ac, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !41
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #23, !inline_history !104
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #23, !inline_history !104
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i6 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.af, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aq, label %bb.k, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_59TransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %._crit_edge
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_514GroupTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  resume { ptr, i32 } %i.as

bb.m:                                             ; preds = %._crit_edge
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !138
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
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
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !138
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516CDLTransformImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !41
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23, !inline_history !141
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #23, !inline_history !141
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516CDLTransformImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516CDLTransformImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !61
end_hunk_1
