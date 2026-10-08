Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatCDL?download=true
inline.NumInlined: 540
inline.NumDeleted: 283
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES7_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE:bb.a

bb.al:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  %i.co = load atomic i64, ptr %i.cn acquire, align 8 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 4294967297
  %i.cq = trunc i64 %i.co to i32                  ; 2 uses
  br i1 %i.cp, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.cn, align 8, !tbaa !37
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i32 0, ptr %i.cr, align 4, !tbaa !38
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #23, !inline_history !99
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #23, !inline_history !99
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.cy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i95 = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i.i95, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cz = add nsw i32 %i.cq, -1
  store i32 %i.cz, ptr %i.cn, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.da = atomicrmw volatile add ptr %i.cn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i96 = phi i32 [ %i.cq, %bb.ao ], [ %i.da, %bb.ap ]
  %i.db = icmp eq i32 %.0.i.i.i.i.i.i96, 1
  br i1 %i.db, label %bb.aq, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.am, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !47 ; 8 uses
  %.not.i.i98 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i98, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.de, align 8, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !38
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #23, !inline_history !2
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #23, !inline_history !2
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.at:                                            ; preds = %bb.ar
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i99 = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i99, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100

bb.av:                                            ; preds = %bb.at
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i101 = phi i32 [ %i.dh, %bb.au ], [ %i.dr, %bb.av ]
  %i.ds = icmp eq i32 %.0.i.i.i.i101, 1
  br i1 %i.ds, label %bb.aw, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.dt = load ptr, ptr %10, align 8, !tbaa !113  ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !18
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
  %i.ef = load ptr, ptr %i.bs, align 8, !tbaa !47 ; 8 uses
  %.not.i.i102 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i102, label %.thread196.a, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.eg, align 8, !tbaa !37
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !38
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #23, !inline_history !100
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #23, !inline_history !100
  br label %.thread196.a

bb.bi:                                            ; preds = %bb.bg
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i103 = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i103, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104

bb.bk:                                            ; preds = %bb.bi
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i105 = phi i32 [ %i.ej, %bb.bj ], [ %i.et, %bb.bk ]
  %i.eu = icmp eq i32 %.0.i.i.i.i105, 1
  br i1 %i.eu, label %bb.bl, label %.thread196.a, !prof !51

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #23
  br label %.thread196.a

bb.bm:                                            ; preds = %bb.bd, %bb.bc
  %.pn57 = phi { ptr, i32 } [ %i.ed, %bb.bd ], [ %i.ec, %bb.bc ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ed

.thread196.a:                                     ; preds = %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104, %bb.bh, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.dw

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.x, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !50
  %i.ev = icmp eq i64 %.pre204.a, 0
  br i1 %i.ev, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread
  %i.ew = load ptr, ptr %9, align 8, !tbaa !30
  %i.ex = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.b, ptr noundef %i.ew, i1 noundef zeroext true)
          to label %bb.bo unwind label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.ex, label %._crit_edge, label %bb.dm

._crit_edge:                                      ; preds = %bb.bo
  %.pre205 = load i32, ptr %i.b, align 4, !tbaa !50
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread
  %i.ey = phi i32 [ %.pre205, %._crit_edge ], [ 0, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !66
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !67 ; 2 uses
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
  %i.fl = load i32, ptr %i.b, align 4, !tbaa !50
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
  %i.fr = load ptr, ptr %13, align 8, !tbaa !30
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
  %i.fx = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.bz
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !25
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
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !111 ; 3 uses
  store ptr %i.ge, ptr %14, align 8, !tbaa !113
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !47 ; 3 uses
  store ptr %i.gh, ptr %i.gf, align 8, !tbaa !47
  %.not.i.i.i116 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i116, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit118, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 3 uses
  %i.gj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i117 = icmp eq i8 %i.gj, 0
  br i1 %.not.i.i.i.i117, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !50
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gi, align 4, !tbaa !50
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit118

bb.cg:                                            ; preds = %bb.ce
  %i.gm = atomicrmw volatile add ptr %i.gi, i32 1 acq_rel, align 4 ; 0 uses
  %.pre206.pre = load ptr, ptr %14, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit118

_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit118: ; preds = %bb.cd, %bb.cf, %bb.cg
  %.pre206 = phi ptr [ %i.ge, %bb.cd ], [ %i.ge, %bb.cf ], [ %.pre206.pre, %bb.cg ] ; 3 uses
  %.not60 = icmp eq i32 %i.au, 1
  br i1 %.not60, label %bb.dc, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEvEERKS_IT_E.exit118
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.gn = load ptr, ptr %.pre206, align 8, !tbaa !18
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.32") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %.pre206)
          to label %bb.ci unwind label %bb.da

bb.ci:                                            ; preds = %bb.ch
  %i.gp = load ptr, ptr %15, align 8, !tbaa !115, !noalias !118 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit123, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gr = call ptr @__dynamic_cast(ptr nonnull %i.gp, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_512CDLTransformE, i64 0) #23, !noalias !118 ; 4 uses
  %.not.not.i119 = icmp eq ptr %i.gr, null
  br i1 %.not.not.i119, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit123, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !47, !noalias !118 ; 4 uses
  %.not.i.i.i.i120 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i120, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit123, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 3 uses
  %i.gv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !118
  %.not.i.i.i.i.i121 = icmp eq i8 %i.gv, 0
  br i1 %.not.i.i.i.i.i121, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
end_hunk_0
