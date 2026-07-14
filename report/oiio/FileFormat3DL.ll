inline.NumInlined: 960
inline.NumDeleted: 420
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.hq = select i1 %i.ho, i64 2305843009213693951, i64 %i.hp ; 3 uses
  %.not.i.i.i251 = icmp ne i64 %i.hq, 0
  call void @llvm.assume(i1 %.not.i.i.i251)
  %i.hr = shl nuw nsw i64 %i.hq, 2
  %i.hs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hr) #22
          to label %.noexc256 unwind label %.loopexit522.loopexit.split-lp ; 4 uses

.noexc256:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i249
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 %i.hk ; 2 uses
  %i.hu = load i32, ptr %i.hg, align 4, !tbaa !3
  store i32 %i.hu, ptr %i.ht, align 4, !tbaa !3
  %i.hv = icmp sgt i64 %i.hk, 0
  br i1 %i.hv, label %bb.bj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i252

bb.bj:                                            ; preds = %.noexc256
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hs, ptr align 4 %.sroa.0447.6, i64 %i.hk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i252

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i252: ; preds = %bb.bj, %.noexc256
  %.not.i17.i.i253 = icmp eq ptr %.sroa.0447.6, null
  br i1 %.not.i17.i.i253, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i252
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0447.6, i64 noundef %i.hk) #24
  %.pre864.pre = load ptr, ptr %6, align 8, !tbaa !63
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254: ; preds = %bb.bk, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i252
  %.pre864 = phi ptr [ %.pre864.pre, %bb.bk ], [ %i.hf, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i252 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hq
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre864, i64 8
  %.pre865 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257

_ZNSt6vectorIiSaIiEE9push_backERKi.exit257:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254, %bb.bg
  %i.hx = phi i32 [ %.pre865, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254 ], [ %i.hh, %bb.bg ]
  %i.hy = phi ptr [ %.pre864, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254 ], [ %i.hf, %bb.bg ] ; 3 uses
  %.sroa.30.7 = phi ptr [ %i.hw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254 ], [ %.sroa.30.6, %bb.bg ]
  %.pn516 = phi ptr [ %i.ht, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254 ], [ %.sroa.17.3, %bb.bg ]
  %.sroa.0447.7 = phi ptr [ %i.hs, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i254 ], [ %.sroa.0447.6, %bb.bg ]
  %.sroa.17.4 = getelementptr inbounds nuw i8, ptr %.pn516, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  %.sroa.speculated437 = call i32 @llvm.smax.i32(i32 %.0490.ph703, i32 %i.hz)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3
  %.sroa.speculated434 = call i32 @llvm.smax.i32(i32 %.sroa.speculated437, i32 %i.ib)
  %.sroa.speculated431 = call i32 @llvm.smax.i32(i32 %.sroa.speculated434, i32 %i.hx)
  br label %.outer

bb.bl:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.ic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.4, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit261 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit261: ; preds = %bb.bm
  %i.id = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.10, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit261
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.6, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263
  %i.if = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef %i.ae)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265
  %i.ig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef nonnull @.str.7, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit267 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit267: ; preds = %bb.bn
  %i.ih = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23
  %i.ii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %i.b, i64 noundef %i.ih)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit267
  %i.ij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270
  %i.ik = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(112) %14)
          to label %bb.bo unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread

bb.bo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272
  %i.il = load ptr, ptr %15, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ik, ptr noundef %i.il)
          to label %bb.bp unwind label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  invoke void @__cxa_throw(ptr nonnull %i.ik, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.ff unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bl
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit267, %bb.bn, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit263, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit261, %bb.bm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit265
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bp, %bb.bo
  %.0108 = phi i1 [ false, %bb.bp ], [ true, %bb.bo ] ; 2 uses
  %i.ip = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.iq = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.bs
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !16
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.iu) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br i1 %.0108, label %bb.bt, label %bb.bu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br i1 %.0108, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %.pn157499 = phi { ptr, i32 } [ %i.io, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.thread ], [ %i.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ], [ %i.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273 ]
  call void @__cxa_free_exception(ptr %i.ik) #23
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %bb.bt, %bb.br
  %.pn157.pn = phi { ptr, i32 } [ %.pn157499, %bb.bt ], [ %i.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ], [ %i.in, %bb.br ], [ %i.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14) #23
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bq
  %.pn157.pn.pn = phi { ptr, i32 } [ %.pn157.pn, %bb.bu ], [ %i.im, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.loopexit522

.outer:                                           ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.preheader520, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257
  %i.iv = phi ptr [ %i.hy, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %i.ds, %.preheader520 ], [ %i.es, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.30.2 = phi ptr [ %.sroa.30.7, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %.sroa.30.0.ph702, %.preheader520 ], [ %.sroa.30.0.ph702, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.1 = phi i32 [ %.sroa.speculated431, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %.0490.ph703, %.preheader520 ], [ %.0490.ph703, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.4, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %.sroa.17.0.ph704, %.preheader520 ], [ %.sroa.17.0.ph704, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.0447.2 = phi ptr [ %.sroa.0447.7, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %.sroa.0447.0.ph705, %.preheader520 ], [ %.sroa.0447.0.ph705, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.27.2 = phi ptr [ %.sroa.27.0.ph706, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %.sroa.27.0.ph706, %.preheader520 ], [ %.sroa.27.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.17479.2 = phi ptr [ %.sroa.17479.0.ph707, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %.sroa.17479.0.ph707, %.preheader520 ], [ %.sroa.17479.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.0467.2 = phi ptr [ %.sroa.0467.0.ph708, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257 ], [ %.sroa.0467.0.ph708, %.preheader520 ], [ %.sroa.0467.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.iw = load ptr, ptr %2, align 8, !tbaa !7
  %i.ix = getelementptr i8, ptr %i.iw, i64 -24
  %i.iy = load i64, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds i8, ptr %2, i64 %i.iy ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !27
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !60

.outer._crit_edge.loopexit:                       ; preds = %.backedge
  %.pre868 = load ptr, ptr %6, align 8, !tbaa !63
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %.outer._crit_edge.loopexit
  %i.jd = phi ptr [ %.pre868, %.outer._crit_edge.loopexit ], [ %i.iv, %.outer ] ; 3 uses
  %.sroa.30.0.ph.lcssa675 = phi ptr [ %.sroa.30.0.ph702, %.outer._crit_edge.loopexit ], [ %.sroa.30.2, %.outer ] ; 2 uses
  %.0490.ph.lcssa661 = phi i32 [ %.0490.ph703, %.outer._crit_edge.loopexit ], [ %.1, %.outer ] ; 2 uses
  %.sroa.17.0.ph.lcssa647 = phi ptr [ %.sroa.17.0.ph704, %.outer._crit_edge.loopexit ], [ %.sroa.17.1, %.outer ] ; 2 uses
  %.sroa.0447.0.ph.lcssa629 = phi ptr [ %.sroa.0447.0.ph705, %.outer._crit_edge.loopexit ], [ %.sroa.0447.2, %.outer ] ; 2 uses
  %.sroa.27.0.ph.lcssa609 = phi ptr [ %.sroa.27.0.ph706, %.outer._crit_edge.loopexit ], [ %.sroa.27.2, %.outer ] ; 2 uses
  %.sroa.17479.0.ph.lcssa595 = phi ptr [ %.sroa.17479.0.ph707, %.outer._crit_edge.loopexit ], [ %.sroa.17479.2, %.outer ] ; 2 uses
  %.sroa.0467.0.ph.lcssa575 = phi ptr [ %.sroa.0467.0.ph708, %.outer._crit_edge.loopexit ], [ %.sroa.0467.2, %.outer ] ; 2 uses
  %.not.i.i.i276 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i276, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %.outer._crit_edge
  %i.je = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !65
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %i.jd to i64
  %i.ji = sub i64 %i.jg, %i.jh
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.ji) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %.outer._crit_edge, %bb.bw
  %.sroa.0467.0.ph.lcssa575950 = phi ptr [ %.sroa.0467.0.ph.lcssa575, %bb.bw ], [ %.sroa.0467.0.ph.lcssa575, %.outer._crit_edge ], [ null, %bb.a ] ; 16 uses
  %.sroa.17479.0.ph.lcssa595949 = phi ptr [ %.sroa.17479.0.ph.lcssa595, %bb.bw ], [ %.sroa.17479.0.ph.lcssa595, %.outer._crit_edge ], [ null, %bb.a ] ; 4 uses
  %.sroa.27.0.ph.lcssa609947 = phi ptr [ %.sroa.27.0.ph.lcssa609, %bb.bw ], [ %.sroa.27.0.ph.lcssa609, %.outer._crit_edge ], [ null, %bb.a ] ; 5 uses
  %.sroa.0447.0.ph.lcssa629945 = phi ptr [ %.sroa.0447.0.ph.lcssa629, %bb.bw ], [ %.sroa.0447.0.ph.lcssa629, %.outer._crit_edge ], [ null, %bb.a ] ; 11 uses
  %.sroa.17.0.ph.lcssa647944 = phi ptr [ %.sroa.17.0.ph.lcssa647, %bb.bw ], [ %.sroa.17.0.ph.lcssa647, %.outer._crit_edge ], [ null, %bb.a ] ; 2 uses
  %.0490.ph.lcssa661943 = phi i32 [ %.0490.ph.lcssa661, %bb.bw ], [ %.0490.ph.lcssa661, %.outer._crit_edge ], [ 0, %bb.a ] ; 6 uses
  %.sroa.30.0.ph.lcssa675941 = phi ptr [ %.sroa.30.0.ph.lcssa675, %bb.bw ], [ %.sroa.30.0.ph.lcssa675, %.outer._crit_edge ], [ null, %bb.a ] ; 5 uses
  %.sroa.17479.0.ph.lcssa5959491227 = ptrtoint ptr %.sroa.17479.0.ph.lcssa595949 to i64
  %.sroa.0467.0.ph.lcssa5759501228 = ptrtoint ptr %.sroa.0467.0.ph.lcssa575950 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.jj = load ptr, ptr %5, align 16, !tbaa !52   ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i277 = icmp eq ptr %i.jj, %i.jl
  br i1 %.not4.i.i.i277, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i285, label %.lr.ph.i.i.i278

.lr.ph.i.i.i278:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i281
  %.05.i.i.i279 = phi ptr [ %i.jr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i281 ], [ %i.jj, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.jm = load ptr, ptr %.05.i.i.i279, align 8, !tbaa !26 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.05.i.i.i279, i64 16 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i280: ; preds = %.lr.ph.i.i.i278
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !16
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jq) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i281

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i281: ; preds = %.lr.ph.i.i.i278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i280
  %i.jr = getelementptr inbounds nuw i8, ptr %.05.i.i.i279, i64 32 ; 2 uses
  %.not.i.i.i282 = icmp eq ptr %i.jr, %i.jl
  br i1 %.not.i.i.i282, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i283, label %.lr.ph.i.i.i278, !llvm.loop !58

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i283: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i281
  %.pr.i284 = load ptr, ptr %5, align 16, !tbaa !52
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i285

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i285: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i283, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.js = phi ptr [ %.pr.i284, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i283 ], [ %i.jj, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i286 = icmp eq ptr %i.js, null
  br i1 %.not.i.i1.i286, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit288, label %bb.bx

bb.bx:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i285
  %i.jt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ju = load ptr, ptr %i.jt, align 16, !tbaa !56
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.js to i64
  %i.jx = sub i64 %i.jv, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %i.jx) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit288

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit288: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i285, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.jy = icmp eq ptr %.sroa.0447.0.ph.lcssa629945, %.sroa.17.0.ph.lcssa647944 ; 2 uses
  %i.jz = icmp eq ptr %.sroa.0467.0.ph.lcssa575950, %.sroa.17479.0.ph.lcssa595949 ; 2 uses
  %or.cond = select i1 %i.jy, i1 %i.jz, i1 false
  br i1 %or.cond, label %bb.by, label %bb.cj

bb.by:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit288
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.bz unwind label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.ka = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.4, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290 unwind label %bb.ce ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290: ; preds = %bb.bz
  %i.kb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.11, i64 noundef 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292 unwind label %bb.ce ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290
  %i.kc = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.ca unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297.thread

bb.ca:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292
  %i.kd = load ptr, ptr %17, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kc, ptr noundef %i.kd)
          to label %bb.cb unwind label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  invoke void @__cxa_throw(ptr nonnull %i.kc, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.ff unwind label %bb.cf

.loopexit522:                                     ; preds = %.loopexit521, %.loopexit.split-lp, %.loopexit.split-lp523, %.loopexit522.loopexit.split-lp, %.loopexit522.loopexit, %bb.bv, %bb.at, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %.sroa.30.3 = phi ptr [ %.sroa.30.0.ph702, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %.sroa.30.1.ph.ph, %.loopexit522.loopexit.split-lp ], [ %.sroa.30.0.ph702, %bb.at ], [ %.sroa.30.0.ph702, %bb.bv ], [ %.sroa.30.0.ph702, %bb.aa ], [ %.sroa.30.1.ph524, %.loopexit.split-lp523 ], [ %.sroa.30.0.ph702, %.loopexit522.loopexit ], [ %.sroa.30.0.ph702, %.loopexit521 ], [ %.sroa.30.0.ph702, %.loopexit.split-lp ]
  %.sroa.0447.3 = phi ptr [ %.sroa.0447.0.ph705, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %.sroa.0447.1.ph.ph, %.loopexit522.loopexit.split-lp ], [ %.sroa.0447.0.ph705, %bb.at ], [ %.sroa.0447.0.ph705, %bb.bv ], [ %.sroa.0447.0.ph705, %bb.aa ], [ %.sroa.0447.1.ph525, %.loopexit.split-lp523 ], [ %.sroa.0447.0.ph705, %.loopexit522.loopexit ], [ %.sroa.0447.0.ph705, %.loopexit521 ], [ %.sroa.0447.0.ph705, %.loopexit.split-lp ]
  %.sroa.27.3 = phi ptr [ %.sroa.27.0.ph706, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %.sroa.27.0.ph706, %.loopexit522.loopexit.split-lp ], [ %.sroa.27.0.ph706, %bb.at ], [ %.sroa.27.0.ph706, %bb.bv ], [ %.sroa.27.0.ph706, %bb.aa ], [ %.sroa.27.0.ph706, %.loopexit.split-lp523 ], [ %.sroa.27.0.ph706, %.loopexit522.loopexit ], [ %.sroa.17479.1695, %.loopexit521 ], [ %.sroa.17479.1695, %.loopexit.split-lp ]
  %.sroa.0467.3 = phi ptr [ %.sroa.0467.0.ph708, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %.sroa.0467.0.ph708, %.loopexit522.loopexit.split-lp ], [ %.sroa.0467.0.ph708, %bb.at ], [ %.sroa.0467.0.ph708, %bb.bv ], [ %.sroa.0467.0.ph708, %bb.aa ], [ %.sroa.0467.0.ph708, %.loopexit.split-lp523 ], [ %.sroa.0467.0.ph708, %.loopexit522.loopexit ], [ %.sroa.0467.1696, %.loopexit521 ], [ %.sroa.0467.1696, %.loopexit.split-lp ]
  %.pn165.pn.pn.pn = phi { ptr, i32 } [ %.pn154.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193 ], [ %lpad.loopexit.split-lp530, %.loopexit522.loopexit.split-lp ], [ %.pn161.pn.pn, %bb.at ], [ %.pn157.pn.pn, %bb.bv ], [ %.pn165.pn.pn, %bb.aa ], [ %lpad.loopexit.split-lp527, %.loopexit.split-lp523 ], [ %lpad.loopexit529, %.loopexit522.loopexit ], [ %lpad.loopexit, %.loopexit521 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ke = load ptr, ptr %6, align 8, !tbaa !63    ; 3 uses
  %.not.i.i.i293 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i293, label %_ZNSt6vectorIiSaIiEED2Ev.exit294, label %bb.cc

bb.cc:                                            ; preds = %.loopexit522
  %i.kf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !65
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.ke to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.kj) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit294

_ZNSt6vectorIiSaIiEED2Ev.exit294:                 ; preds = %.loopexit522, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.body

bb.cd:                                            ; preds = %bb.by
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ce:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290, %bb.bz
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cb, %bb.ca
  %.0112 = phi i1 [ false, %bb.cb ], [ true, %bb.ca ] ; 2 uses
  %i.kn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ko = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.kq = icmp eq ptr %i.ko, %i.kp
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %bb.cf
  %i.kr = load i64, ptr %i.kp, align 8, !tbaa !16
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.ks) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br i1 %.0112, label %bb.cg, label %bb.ch

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br i1 %.0112, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  %.pn150502 = phi { ptr, i32 } [ %i.km, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297.thread ], [ %i.kn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ], [ %i.kn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295 ]
  call void @__cxa_free_exception(ptr %i.kc) #23
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %bb.cg, %bb.ce
  %.pn150.pn = phi { ptr, i32 } [ %.pn150502, %bb.cg ], [ %i.kn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ], [ %i.kl, %bb.ce ], [ %i.kn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16) #23
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cd
  %.pn150.pn.pn = phi { ptr, i32 } [ %.pn150.pn, %bb.ch ], [ %i.kk, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %.body

bb.cj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit288
  %i.kt = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22
          to label %bb.ck unwind label %bb.cq     ; 10 uses

bb.ck:                                            ; preds = %bb.cj
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %i.kt, align 8, !tbaa !7
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ku, i8 0, i64 32, i1 false)
  %i.kv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.cp unwind label %bb.cl     ; 7 uses

bb.cl:                                            ; preds = %bb.ck
  %i.kw = landingpad { ptr, i32 }
          catch ptr null
  %i.kx = extractvalue { ptr, i32 } %i.kw, 0
  %i.ky = call ptr @__cxa_begin_catch(ptr %i.kx) #23 ; 0 uses
  %i.kz = load ptr, ptr %i.kt, align 8, !tbaa !7
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(40) %i.kt) #23, !inline_history !66
  invoke void @__cxa_rethrow() #25
          to label %bb.co unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #26
  unreachable

bb.co:                                            ; preds = %bb.cl
  unreachable

bb.cp:                                            ; preds = %bb.ck
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i32 1, ptr %i.lf, align 8, !tbaa !67
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  store i32 1, ptr %i.lg, align 4, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.kv, align 8, !tbaa !7
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  store ptr %i.kt, ptr %i.lh, align 8, !tbaa !70
  br i1 %i.jz, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKSt6vectorIiSaIiEENS_8BitDepthE.exit.thread, label %.preheader519.preheader

.preheader519.preheader:                          ; preds = %bb.cp
  %22 = add i64 %.sroa.17479.0.ph.lcssa5959491227, -4
  %i.li = sub i64 %22, %.sroa.0467.0.ph.lcssa5759501228 ; 2 uses
  %i.lj = lshr i64 %i.li, 2
  %i.lk = add nuw nsw i64 %i.lj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.li, 28
  br i1 %min.iters.check, label %.preheader519.preheader1260, label %vector.ph

vector.ph:                                        ; preds = %.preheader519.preheader
  %n.vec = and i64 %i.lk, 9223372036854775800     ; 3 uses
  %i.ll = shl i64 %n.vec, 2
  %i.lm = getelementptr i8, ptr %.sroa.0467.0.ph.lcssa575950, i64 %i.ll
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.lp, %vector.body ]
  %vec.phi1229 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.lq, %vector.body ]
  %i.ln = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.0467.0.ph.lcssa575950, i64 %i.ln ; 2 uses
  %i.lo = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3
  %wide.load1230 = load <4 x i32>, ptr %i.lo, align 4, !tbaa !3
  %i.lp = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.lq = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1229, <4 x i32> %wide.load1230) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lr = icmp eq i64 %index.next, %n.vec
  br i1 %i.lr, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lp, <4 x i32> %i.lq)
  %i.ls = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.lk, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader519.preheader1260

.preheader519.preheader1260:                      ; preds = %.preheader519.preheader, %middle.block
  %.sroa.0416.0718.ph = phi ptr [ %.sroa.0467.0.ph.lcssa575950, %.preheader519.preheader ], [ %i.lm, %middle.block ]
  %.0489717.ph = phi i32 [ 0, %.preheader519.preheader ], [ %i.ls, %middle.block ]
  br label %.preheader519

.loopexit:                                        ; preds = %.preheader519, %middle.block
  %.sroa.speculated.lcssa = phi i32 [ %i.ls, %middle.block ], [ %.sroa.speculated, %.preheader519 ] ; 6 uses
  %i.lt = icmp slt i32 %.sroa.speculated.lcssa, 128
  br i1 %i.lt, label %bb.cr, label %bb.dc

bb.cq:                                            ; preds = %bb.cj
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader519:                                    ; preds = %.preheader519.preheader1260, %.preheader519
  %.sroa.0416.0718 = phi ptr [ %i.lw, %.preheader519 ], [ %.sroa.0416.0718.ph, %.preheader519.preheader1260 ] ; 2 uses
  %.0489717 = phi i32 [ %.sroa.speculated, %.preheader519 ], [ %.0489717.ph, %.preheader519.preheader1260 ]
  %i.lv = load i32, ptr %.sroa.0416.0718, align 4, !tbaa !3
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.0489717, i32 %i.lv) ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0416.0718, i64 4 ; 2 uses
  %.not515 = icmp eq ptr %i.lw, %.sroa.17479.0.ph.lcssa595949
  br i1 %.not515, label %.loopexit, label %.preheader519, !llvm.loop !76

bb.cr:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18)
          to label %bb.cs unwind label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  %i.lx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.4, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300 unwind label %bb.cx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300: ; preds = %bb.cs
  %i.ly = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.12, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302 unwind label %bb.cx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300
  %i.lz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef %.sroa.speculated.lcssa)
          to label %bb.ct unwind label %bb.cx     ; 0 uses

bb.ct:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302
  %i.ma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.13, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304 unwind label %bb.cx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304: ; preds = %bb.ct
  %i.mb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.14, i64 noundef 57)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306 unwind label %bb.cx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304
  %i.mc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.15, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308 unwind label %bb.cx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306
  %i.md = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(112) %18)
          to label %bb.cu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311.thread

bb.cu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308
  %i.me = load ptr, ptr %19, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.md, ptr noundef %i.me)
          to label %bb.cv unwind label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  invoke void @__cxa_throw(ptr nonnull %i.md, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.ff unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cr
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304, %bb.ct, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300, %bb.cs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cv, %bb.cu
  %.0110 = phi i1 [ false, %bb.cv ], [ true, %bb.cu ] ; 2 uses
  %i.mi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mj = load ptr, ptr %19, align 8, !tbaa !26   ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ml = icmp eq ptr %i.mj, %i.mk
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %bb.cy
  %i.mm = load i64, ptr %i.mk, align 8, !tbaa !16
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mn) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br i1 %.0110, label %bb.cz, label %bb.da

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br i1 %.0110, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311
  %.pn131505 = phi { ptr, i32 } [ %i.mh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311.thread ], [ %i.mi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311 ], [ %i.mi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309 ]
  call void @__cxa_free_exception(ptr %i.md) #23
  br label %bb.da

bb.da:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, %bb.cz, %bb.cx
  %.pn131.pn = phi { ptr, i32 } [ %.pn131505, %bb.cz ], [ %i.mi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311 ], [ %i.mg, %bb.cx ], [ %i.mi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %18) #23
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cw
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %bb.da ], [ %i.mf, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.body339

bb.dc:                                            ; preds = %.loopexit
  %exp2.i312 = invoke double @exp2(double 8.000000e+00)
          to label %exp2.i.noexc unwind label %bb.dh ; 0 uses

exp2.i.noexc:                                     ; preds = %bb.dc
  %.not.not.not.i = icmp samesign ult i32 %.sroa.speculated.lcssa, 512
  br i1 %.not.not.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, label %bb.dd

bb.dd:                                            ; preds = %exp2.i.noexc
  %exp2.1.i313 = invoke double @exp2(double 1.000000e+01)
          to label %exp2.1.i.noexc unwind label %bb.dh ; 0 uses

exp2.1.i.noexc:                                   ; preds = %bb.dd
  %.not.not.not.1.i = icmp samesign ult i32 %.sroa.speculated.lcssa, 2048
  br i1 %.not.not.not.1.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, label %bb.de

bb.de:                                            ; preds = %exp2.1.i.noexc
  %exp2.2.i314 = invoke double @exp2(double 1.200000e+01)
          to label %exp2.2.i.noexc unwind label %bb.dh ; 0 uses

exp2.2.i.noexc:                                   ; preds = %bb.de
  %.not.not.not.2.i = icmp samesign ult i32 %.sroa.speculated.lcssa, 8192
  br i1 %.not.not.not.2.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, label %bb.df

bb.df:                                            ; preds = %exp2.2.i.noexc
  %exp2.3.i315 = invoke double @exp2(double 1.400000e+01)
          to label %exp2.3.i.noexc unwind label %bb.dh ; 0 uses

exp2.3.i.noexc:                                   ; preds = %bb.df
  %.not.not.not.3.i = icmp samesign ult i32 %.sroa.speculated.lcssa, 32768
  br i1 %.not.not.not.3.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, label %bb.dg

bb.dg:                                            ; preds = %exp2.3.i.noexc
  %exp2.4.i316 = invoke double @exp2(double 1.600000e+01)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit unwind label %bb.dh ; 0 uses

bb.dh:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %.body339

_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit: ; preds = %exp2.i.noexc, %exp2.1.i.noexc, %exp2.2.i.noexc, %exp2.3.i.noexc, %bb.dg
  %.0.i = phi i32 [ 5, %bb.dg ], [ 3, %exp2.2.i.noexc ], [ 5, %exp2.3.i.noexc ], [ 2, %exp2.1.i.noexc ], [ 1, %exp2.i.noexc ] ; 3 uses
  %i.mp = ptrtoint ptr %.sroa.17479.0.ph.lcssa595949 to i64
  %i.mq = ptrtoint ptr %.sroa.0467.0.ph.lcssa575950 to i64
  %i.mr = sub i64 %i.mp, %i.mq                    ; 2 uses
  %i.ms = lshr i64 %i.mr, 2                       ; 2 uses
  %i.mt = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef range(i32 1, 6) %.0.i)
          to label %.noexc337 unwind label %bb.dh

.noexc337:                                        ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115GetOCIOBitdepthEi.exit
  %i.mu = trunc i64 %i.ms to i32                  ; 2 uses
end_hunk_0
