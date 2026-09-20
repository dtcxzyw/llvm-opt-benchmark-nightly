Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/module?download=true
inline.NumInlined: 944
inline.NumDeleted: 402
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lean_compacted_region_save:bb.a
  call void @__cxa_free_exception(ptr %i.hh) #30
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bp
  %i.hv = load ptr, ptr %i.fl, align 8, !tbaa !123 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.pre-phi402
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 88
  %i.hy = load ptr, ptr %i.fj, align 8, !tbaa !122
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hv to i64
  %i.ib = add i64 %.pre-phi402, %i.ia
  %reass.sub = sub i64 %i.hz, %i.ib
  %i.ic = add i64 %reass.sub, -88
  %i.id = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %i.hx, i64 noundef %i.ic)
          to label %bb.ca unwind label %bb.bv     ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  %i.ie = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.if = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ie)
          to label %.noexc204 unwind label %bb.bv

.noexc204:                                        ; preds = %bb.ca
  %.not.i = icmp eq ptr %i.if, null
  br i1 %.not.i, label %bb.cb, label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit

bb.cb:                                            ; preds = %.noexc204
  %i.ig = load ptr, ptr %15, align 8, !tbaa !39
  %i.ih = getelementptr i8, ptr %i.ig, i64 -24
  %i.ii = load i64, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds i8, ptr %15, i64 %i.ii ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !48
  %i.im = or i32 %i.il, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ij, i32 noundef %i.im)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %bb.bv

_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit: ; preds = %.noexc204, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.du

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201, %bb.bx, %bb.by, %bb.bv
  %.pn108.pn.pn = phi { ptr, i32 } [ %.pn108.pn324, %bb.by ], [ %i.hp, %bb.bx ], [ %i.hm, %bb.bv ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.dv

bb.cd:                                            ; preds = %bb.bd
  br i1 %.not113, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.in = sub nuw nsw i64 65536, %i.fq
  %i.io = invoke noundef ptr @_ZN4lean16object_compactor5allocEm(ptr noundef nonnull align 8 dereferenceable(224) %.val, i64 noundef %i.in)
          to label %._crit_edge387 unwind label %bb.bk ; 0 uses

._crit_edge387:                                   ; preds = %bb.ce
  %.pre388.a = load ptr, ptr %i.fj, align 8, !tbaa !122
  %.pre389.a = load ptr, ptr %i.fl, align 8, !tbaa !123
  %.pre392.a = ptrtoint ptr %.pre388.a to i64
  %.pre393 = ptrtoint ptr %.pre389.a to i64
  %.pre395 = sub i64 %.pre392.a, %.pre393
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge387, %bb.cd
  %.pre-phi396 = phi i64 [ %.pre395, %._crit_edge387 ], [ %i.fp, %bb.cd ] ; 3 uses
  %i.ip = invoke noundef ptr @_ZN4lean16object_compactor5allocEm(ptr noundef nonnull align 8 dereferenceable(224) %.val, i64 noundef 88)
          to label %bb.cg unwind label %bb.co     ; 0 uses

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  store <4 x i8> <i8 111, i8 108, i8 101, i8 97>, ptr %19, align 8, !tbaa !31
  %i.iq = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i8 110, ptr %i.iq, align 4, !tbaa !31
  %i.ir = getelementptr inbounds nuw i8, ptr %19, i64 6
  store i8 1, ptr %i.ir, align 2, !tbaa !31
  %i.is = getelementptr inbounds nuw i8, ptr %19, i64 5
  store i8 3, ptr %i.is, align 1, !tbaa !31
  %i.it = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !124
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = add i64 %.pre-phi396, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %19, i64 80
  store i64 %i.iw, ptr %i.ix, align 8, !tbaa !17
  %i.iy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4lean24get_short_version_stringB5cxx11Ev()
          to label %bb.ch unwind label %bb.cp

bb.ch:                                            ; preds = %bb.cg
  %i.iz = getelementptr inbounds nuw i8, ptr %19, i64 7
  %i.ja = load ptr, ptr %i.iy, align 8, !tbaa !30
  %i.jb = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.iz, ptr noundef nonnull dereferenceable(1) %i.ja, i64 noundef 33) #30 ; 0 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jc, ptr noundef nonnull align 1 dereferenceable(41) @.str.1, i64 noundef 40, i1 false) #30
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %19, i64 noundef 88)
          to label %bb.ci unwind label %bb.cp     ; 0 uses

bb.ci:                                            ; preds = %bb.ch
  %i.je = invoke noundef ptr @_ZN4lean16object_compactor5allocEm(ptr noundef nonnull align 8 dereferenceable(224) %.val, i64 noundef 8)
          to label %bb.cj unwind label %bb.cp     ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN4lean16object_compactorclEP11lean_object(ptr noundef nonnull align 8 dereferenceable(224) %.val, ptr noundef %2)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  %i.jf = add i64 %.pre-phi396, 96                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.jg = load ptr, ptr %i.fj, align 8, !tbaa !122
  %i.jh = load ptr, ptr %i.fl, align 8, !tbaa !123
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = add i64 %i.ji, -96
  %i.jl = add i64 %.pre-phi396, %i.jj
  %i.jm = sub i64 %i.jk, %i.jl
  store i64 %i.jm, ptr %i.d, align 8, !tbaa !17
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %i.d, i64 noundef 8)
          to label %bb.cl unwind label %bb.cq     ; 0 uses

bb.cl:                                            ; preds = %bb.ck
  %i.jo = load ptr, ptr %i.fl, align 8, !tbaa !123
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jf
  %i.jq = load i64, ptr %i.d, align 8, !tbaa !17
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %i.jp, i64 noundef %i.jq)
          to label %bb.cm unwind label %bb.cq     ; 0 uses

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  invoke void @_ZNK4lean16object_compactor9used_libsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.9") align 8 %20, ptr noundef nonnull align 8 dereferenceable(224) %.val)
          to label %bb.cn unwind label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  %i.js = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !49 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.val, i64 168 ; 3 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !49 ; 2 uses
  %i.jw = icmp eq ptr %i.jt, %i.jv
  br i1 %i.jw, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.pre390.a = load ptr, ptr %i.js, align 8, !tbaa !50 ; 2 uses
  %.pre391 = load ptr, ptr %i.ju, align 8, !tbaa !51
  %i.jx = icmp eq ptr %.pre391, %.pre390.a
  br i1 %i.jx, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge
  store ptr %.pre390.a, ptr %i.ju, align 8, !tbaa !51
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %bb.cn, %._crit_edge, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %.sroa.20.0.lcssa485 = phi ptr [ %.sroa.20.1, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ], [ %.sroa.20.1, %._crit_edge ], [ null, %bb.cn ] ; 2 uses
  %.sroa.13.0.lcssa484 = phi ptr [ %.sroa.13.1, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ], [ %.sroa.13.1, %._crit_edge ], [ null, %bb.cn ] ; 2 uses
  %.sroa.0287.0.lcssa482 = phi ptr [ %.sroa.0287.1, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ], [ %.sroa.0287.1, %._crit_edge ], [ null, %bb.cn ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.jy = ptrtoint ptr %.sroa.13.0.lcssa484 to i64
  %i.jz = ptrtoint ptr %.sroa.0287.0.lcssa482 to i64 ; 2 uses
  %i.ka = sub i64 %i.jy, %i.jz                    ; 3 uses
  %i.kb = lshr exact i64 %i.ka, 3
  %i.kc = trunc i64 %i.kb to i32
  store i32 %i.kc, ptr %i.e, align 4, !tbaa !52
  %i.kd = invoke noundef ptr @_ZN4lean16object_compactor5allocEm(ptr noundef nonnull align 8 dereferenceable(224) %.val, i64 noundef 4)
          to label %bb.cx unwind label %.loopexit.split-lp ; 0 uses

bb.co:                                            ; preds = %bb.cf
  %i.ke = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %bb.dv

bb.cp:                                            ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cg
  %i.kf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %bb.dt

bb.cq:                                            ; preds = %bb.cl, %bb.ck
  %i.kg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %bb.ds

bb.cr:                                            ; preds = %bb.cm
  %i.kh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %bb.dr

.lr.ph:                                           ; preds = %bb.cn, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.sroa.0284.0370 = phi ptr [ %i.kx, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %i.jt, %bb.cn ] ; 2 uses
  %.sroa.20.0369 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %bb.cn ] ; 5 uses
  %.sroa.13.0368 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %bb.cn ] ; 3 uses
  %.sroa.0287.0367 = phi ptr [ %.sroa.0287.1, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %bb.cn ] ; 7 uses
  %i.ki = load i64, ptr %.sroa.0284.0370, align 8, !tbaa !17
  %i.kj = sub i64 %i.ki, %i.jf                    ; 2 uses
  %.not.i.i207 = icmp eq ptr %.sroa.13.0368, %.sroa.20.0369
  br i1 %.not.i.i207, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph
  store i64 %i.kj, ptr %.sroa.13.0368, align 8, !tbaa !17
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ct:                                            ; preds = %.lr.ph
  %i.kk = ptrtoint ptr %.sroa.20.0369 to i64
  %i.kl = ptrtoint ptr %.sroa.0287.0367 to i64
  %i.km = sub i64 %i.kk, %i.kl                    ; 6 uses
  %i.kn = icmp eq i64 %i.km, 9223372036854775800
  br i1 %i.kn, label %bb.cu, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #33
          to label %.noexc209.a unwind label %.loopexit.split-lp344

.noexc209.a:                                      ; preds = %bb.cu
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ct
  %i.ko = ashr exact i64 %i.km, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ko, i64 1)
  %27 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ko ; 2 uses
  %i.kp = icmp ult i64 %27, %i.ko
  %i.kq = call i64 @llvm.umin.i64(i64 %27, i64 1152921504606846975)
  %i.kr = select i1 %i.kp, i64 1152921504606846975, i64 %i.kq ; 3 uses
  %.not.i.i.i.i208 = icmp ne i64 %i.kr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i208)
  %i.ks = shl nuw nsw i64 %i.kr, 3
  %i.kt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ks) #32
          to label %.noexc210 unwind label %.loopexit343 ; 4 uses

.noexc210:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.km ; 2 uses
  store i64 %i.kj, ptr %i.ku, align 8, !tbaa !17
  %i.kv = icmp sgt i64 %i.km, 0
  br i1 %i.kv, label %bb.cv, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.cv:                                            ; preds = %.noexc210
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kt, ptr align 8 %.sroa.0287.0367, i64 %i.km, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cv, %.noexc210
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0287.0367, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0287.0367, i64 noundef %i.km) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.cw, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.kr
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.cs
  %.sroa.0287.1 = phi ptr [ %i.kt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0287.0367, %bb.cs ] ; 3 uses
  %.pn = phi ptr [ %i.ku, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.13.0368, %bb.cs ]
  %.sroa.20.1 = phi ptr [ %i.kw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.20.0369, %bb.cs ] ; 3 uses
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0284.0370, i64 8 ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.jv
  br i1 %i.ky, label %._crit_edge, label %.lr.ph

.loopexit343:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit345 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %bb.dp

.loopexit.split-lp344:                            ; preds = %bb.cu
  %lpad.loopexit.split-lp346 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %bb.dp

bb.cx:                                            ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  %i.kz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %i.e, i64 noundef 4)
          to label %bb.cy unwind label %.loopexit.split-lp ; 0 uses

bb.cy:                                            ; preds = %bb.cx
  %i.la = icmp eq ptr %.sroa.0287.0.lcssa482, %.sroa.13.0.lcssa484
  br i1 %i.la, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.lb = invoke noundef ptr @_ZN4lean16object_compactor5allocEm(ptr noundef nonnull align 8 dereferenceable(224) %.val, i64 noundef %i.ka)
          to label %bb.da unwind label %.loopexit.split-lp ; 0 uses

bb.da:                                            ; preds = %bb.cz
  %i.lc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %.sroa.0287.0.lcssa482, i64 noundef %i.ka)
          to label %bb.db unwind label %.loopexit.split-lp ; 0 uses

.loopexit:                                        ; preds = %.lr.ph.i211, %.noexc213.a, %.noexc214.a
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %bb.do

.loopexit.split-lp:                               ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit, %bb.cx, %bb.cz, %bb.da, %_ZN4leanL14lib_table_sizeERKSt6vectorINS_8lib_infoESaIS1_EE.exit, %bb.dc, %bb.dk, %bb.dl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %bb.do

bb.db:                                            ; preds = %bb.da, %bb.cy
  %.val142 = load ptr, ptr %20, align 8, !tbaa !53 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %.val143 = load ptr, ptr %i.ld, align 8, !tbaa !53 ; 2 uses
  %i.le = icmp eq ptr %.val142, %.val143
  br i1 %i.le, label %_ZN4leanL14lib_table_sizeERKSt6vectorINS_8lib_infoESaIS1_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.db, %.lr.ph.i
  %.05.i = phi i64 [ %i.li, %.lr.ph.i ], [ 4, %bb.db ]
  %.sroa.01.04.i = phi ptr [ %i.lj, %.lr.ph.i ], [ %.val142, %bb.db ] ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 16
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !32
  %i.lh = add i64 %.05.i, 12
  %i.li = add i64 %i.lh, %i.lg                    ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 40 ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %.val143
  br i1 %i.lk, label %_ZN4leanL14lib_table_sizeERKSt6vectorINS_8lib_infoESaIS1_EE.exit, label %.lr.ph.i

_ZN4leanL14lib_table_sizeERKSt6vectorINS_8lib_infoESaIS1_EE.exit: ; preds = %.lr.ph.i, %bb.db
  %.0.lcssa.i = phi i64 [ 4, %bb.db ], [ %i.li, %.lr.ph.i ]
  %i.ll = invoke noundef ptr @_ZN4lean16object_compactor5allocEm(ptr noundef nonnull align 8 dereferenceable(224) %.val, i64 noundef %.0.lcssa.i)
          to label %bb.dc unwind label %.loopexit.split-lp ; 0 uses

bb.dc:                                            ; preds = %_ZN4leanL14lib_table_sizeERKSt6vectorINS_8lib_infoESaIS1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.lm = load ptr, ptr %i.ld, align 8, !tbaa !54
  %i.ln = load ptr, ptr %20, align 8, !tbaa !55
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = sdiv exact i64 %i.lq, 40
  %i.ls = trunc i64 %i.lr to i32
  store i32 %i.ls, ptr %i.a, align 4, !tbaa !52
  %i.lt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %.noexc212.a unwind label %.loopexit.split-lp ; 0 uses

.noexc212.a:                                      ; preds = %bb.dc
  %i.lu = load ptr, ptr %20, align 8, !tbaa !53   ; 2 uses
  %i.lv = load ptr, ptr %i.ld, align 8, !tbaa !53 ; 2 uses
  %i.lw = icmp eq ptr %i.lu, %i.lv
  br i1 %i.lw, label %.loopexit342, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %.noexc212.a, %.noexc215
  %.sroa.011.014.i = phi ptr [ %i.mh, %.noexc215 ], [ %i.lu, %.noexc212.a ] ; 4 uses
  %i.lx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %.sroa.011.014.i, i64 noundef 8)
          to label %.noexc213.a unwind label %.loopexit ; 0 uses

.noexc213.a:                                      ; preds = %.lr.ph.i211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.011.014.i, i64 16
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !32
  %i.ma = trunc i64 %i.lz to i32
  store i32 %i.ma, ptr %i.b, align 4, !tbaa !52
  %i.mb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %.noexc214.a unwind label %.loopexit ; 0 uses

.noexc214.a:                                      ; preds = %.noexc213.a
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.011.014.i, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !30
  %i.me = load i32, ptr %i.b, align 4, !tbaa !52
  %i.mf = zext i32 %i.me to i64
  %i.mg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %i.md, i64 noundef %i.mf)
          to label %.noexc215 unwind label %.loopexit ; 0 uses

.noexc215:                                        ; preds = %.noexc214.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.011.014.i, i64 40 ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.lv
  br i1 %i.mi, label %.loopexit342, label %.lr.ph.i211

.loopexit342:                                     ; preds = %.noexc215, %.noexc212.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.mj = load ptr, ptr %15, align 8, !tbaa !39
  %i.mk = getelementptr i8, ptr %i.mj, i64 -24
  %i.ml = load i64, ptr %i.mk, align 8
  %i.mm = getelementptr inbounds i8, ptr %15, i64 %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !48
  %i.mp = and i32 %i.mo, 5
  %.not336 = icmp eq i32 %i.mp, 0
  br i1 %.not336, label %bb.dk, label %bb.dd

bb.dd:                                            ; preds = %.loopexit342
  %i.mq = call ptr @__cxa_allocate_exception(i64 40) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %22, i8 0, i64 376, i1 false)
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %22)
          to label %_ZN4lean7sstreamC2Ev.exit217 unwind label %.thread328

_ZN4lean7sstreamC2Ev.exit217:                     ; preds = %bb.dd
  %i.mr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %22, ptr noundef nonnull @.str.2, i64 noundef 23)
          to label %_ZN4lean7sstreamlsIA24_cEERS0_RKT_.exit219 unwind label %.thread332 ; 0 uses

_ZN4lean7sstreamlsIA24_cEERS0_RKT_.exit219:       ; preds = %_ZN4lean7sstreamC2Ev.exit217
  %i.ms = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4lean7sstreamlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(376) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.de unwind label %.thread332 ; 2 uses

bb.de:                                            ; preds = %_ZN4lean7sstreamlsIA24_cEERS0_RKT_.exit219
  %i.mt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %i.ms, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit221 unwind label %.thread332 ; 0 uses

_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit221:        ; preds = %bb.de
  invoke void @_ZNK4lean7sstream3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(376) %i.ms)
          to label %bb.df unwind label %.thread332

bb.df:                                            ; preds = %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit221
  invoke void @_ZN4lean9throwableC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.mq, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.dg unwind label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean9exceptionE, i64 16), ptr %i.mq, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.mq, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #33
          to label %bb.fo unwind label %bb.dh

.thread328:                                       ; preds = %bb.dd
  %i.mu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %.sink.split496

.thread332:                                       ; preds = %_ZN4lean7sstreamlsIA24_cEERS0_RKT_.exit219, %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit221, %_ZN4lean7sstreamC2Ev.exit217, %bb.de
  %i.mv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
end_hunk_0
begin_hunk_1_@lean_compacted_region_save:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271: ; preds = %bb.fa
  %i.sp = load i64, ptr %i.sn, align 8, !tbaa !31
  %i.sq = add i64 %i.sp, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273: ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.sr = load ptr, ptr %9, align 8, !tbaa !12    ; 4 uses
  %i.ss = ptrtoint ptr %i.sr to i64
  %i.st = and i64 %i.ss, 1
  %.not.i.i.i274 = icmp eq i64 %i.st, 0
  br i1 %.not.i.i.i274, label %bb.fb, label %_ZN4lean10object_refD2Ev.exit276

bb.fb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273
  %i.su = load i32, ptr %i.sr, align 4, !tbaa !14 ; 3 uses
  %i.sv = icmp sgt i32 %i.su, 1
  br i1 %i.sv, label %bb.fc, label %bb.fd, !prof !15

bb.fc:                                            ; preds = %bb.fb
  %i.sw = add nsw i32 %i.su, -1
  store i32 %i.sw, ptr %i.sr, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit276

bb.fd:                                            ; preds = %bb.fb
  %.not.i.i.i.i275 = icmp eq i32 %i.su, 0
  br i1 %.not.i.i.i.i275, label %_ZN4lean10object_refD2Ev.exit276, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.sr)
          to label %_ZN4lean10object_refD2Ev.exit276 unwind label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.sx = landingpad { ptr, i32 }
          catch ptr null
  %i.sy = extractvalue { ptr, i32 } %i.sx, 0
  call void @__clang_call_terminate(ptr %i.sy) #31
  unreachable

_ZN4lean10object_refD2Ev.exit276:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, %bb.fc, %bb.fd, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.sz = load ptr, ptr %8, align 8, !tbaa !12    ; 4 uses
  %i.ta = ptrtoint ptr %i.sz to i64
  %i.tb = and i64 %i.ta, 1
  %.not.i.i.i277 = icmp eq i64 %i.tb, 0
  br i1 %.not.i.i.i277, label %bb.fg, label %_ZN4lean10object_refD2Ev.exit279

bb.fg:                                            ; preds = %_ZN4lean10object_refD2Ev.exit276
  %i.tc = load i32, ptr %i.sz, align 4, !tbaa !14 ; 3 uses
  %i.td = icmp sgt i32 %i.tc, 1
  br i1 %i.td, label %bb.fh, label %bb.fi, !prof !15

bb.fh:                                            ; preds = %bb.fg
  %i.te = add nsw i32 %i.tc, -1
  store i32 %i.te, ptr %i.sz, align 4, !tbaa !14
  br label %_ZN4lean10object_refD2Ev.exit279

bb.fi:                                            ; preds = %bb.fg
  %.not.i.i.i.i278 = icmp eq i32 %i.tc, 0
  br i1 %.not.i.i.i.i278, label %_ZN4lean10object_refD2Ev.exit279, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.sz)
          to label %_ZN4lean10object_refD2Ev.exit279 unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.tf = landingpad { ptr, i32 }
          catch ptr null
  %i.tg = extractvalue { ptr, i32 } %i.tf, 0
  call void @__clang_call_terminate(ptr %i.tg) #31
  unreachable

_ZN4lean10object_refD2Ev.exit279:                 ; preds = %_ZN4lean10object_refD2Ev.exit276, %bb.fh, %bb.fi, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret ptr %.097

bb.fl:                                            ; preds = %bb.ei, %bb.eh, %bb.ez, %bb.ew, %bb.dw
  %.merged141 = phi { ptr, i32 } [ %i.sl, %bb.ez ], [ %.pn123.pn.pn.pn.pn.pn.pn, %bb.dw ], [ %.pn115.pn.pn, %bb.ew ], [ %i.pk, %bb.ei ], [ %.pn131.pn.pn, %bb.eh ] ; 2 uses
  %i.th = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.tj = icmp eq ptr %i.th, %i.ti
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.fl
  %i.tk = load i64, ptr %i.ti, align 8, !tbaa !31
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tl) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %.merged140 = phi { ptr, i32 } [ %.pn105.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ %.merged141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ], [ %.merged141, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.fm

bb.fm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNSt6vectorIN4lean11region_viewESaIS1_EED2Ev.exit170
  %.merged137 = phi { ptr, i32 } [ %.merged140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %.pn99.pn, %_ZNSt6vectorIN4lean11region_viewESaIS1_EED2Ev.exit170 ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  resume { ptr, i32 } %.merged137

bb.fn:                                            ; preds = %bb.eh
  %i.tm = landingpad { ptr, i32 }
          catch ptr null
  %i.tn = extractvalue { ptr, i32 } %i.tm, 0
  call void @__clang_call_terminate(ptr %i.tn) #31
  unreachable

bb.fo:                                            ; preds = %bb.dg, %bb.bt
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4leanL19extract_dep_regionsEP11lean_object(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !17  ; 5 uses
  %i.b = icmp ugt i64 %.val, 384307168202282325
  br i1 %i.b, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #33
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not36 = icmp eq i64 %.val, 0
  br i1 %.not36, label %._crit_edge, label %_ZNSt12_Vector_baseIN4lean11region_viewESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4lean11region_viewESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.d = mul nuw nsw i64 %.val, 24
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #32 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !21
  store ptr %i.e, ptr %i.f, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.val ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN4lean11region_viewESaIS1_EE11_M_allocateEm.exit.i, %_ZNSt6vectorIN4lean11region_viewESaIS1_EE9push_backEOS1_.exit
  %i.j = phi ptr [ %i.g, %_ZNSt12_Vector_baseIN4lean11region_viewESaIS1_EE11_M_allocateEm.exit.i ], [ %i.al, %_ZNSt6vectorIN4lean11region_viewESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.k = phi ptr [ %i.e, %_ZNSt12_Vector_baseIN4lean11region_viewESaIS1_EE11_M_allocateEm.exit.i ], [ %i.am, %_ZNSt6vectorIN4lean11region_viewESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %.027 = phi i64 [ 0, %_ZNSt12_Vector_baseIN4lean11region_viewESaIS1_EE11_M_allocateEm.exit.i ], [ %i.an, %_ZNSt6vectorIN4lean11region_viewESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.027
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %.val15 = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %.val16 = load i64, ptr %i.o, align 8, !tbaa !17
  %i.p = ptrtoint ptr %.val15 to i64
  %i.q = sub i64 %i.p, %.val16
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr i8, ptr %i.m, i64 24
  %.val17 = load i64, ptr %i.s, align 8, !tbaa !17 ; 2 uses
  %i.t = getelementptr i8, ptr %i.m, i64 32
  %.val18 = load i64, ptr %i.t, align 8, !tbaa !17
  %i.u = inttoptr i64 %.val18 to ptr              ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.r, ptr %i.k, align 8, !tbaa !23
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val17, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !17
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.i, align 8, !tbaa !130
  br label %_ZNSt6vectorIN4lean11region_viewESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %0, align 8, !tbaa !21     ; 7 uses
  %i.x = ptrtoint ptr %i.j to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.f, label %_ZNKSt6vectorIN4lean11region_viewESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #33
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN4lean11region_viewESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ab = sdiv exact i64 %i.z, 24                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ac = icmp ult i64 %2, %i.ab
  %i.ad = tail call i64 @llvm.umin.i64(i64 %2, i64 384307168202282325)
  %i.ae = select i1 %i.ac, i64 384307168202282325, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.af = mul nuw nsw i64 %i.ae, 24
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #32
          to label %.noexc21 unwind label %.loopexit ; 4 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIN4lean11region_viewESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.z ; 4 uses
  store ptr %i.r, ptr %i.ah, align 8, !tbaa !23
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.val17, ptr %.sroa.6.0..sroa_idx23, align 8, !tbaa !17
  %.sroa.7.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx25, align 8, !tbaa !23
  %i.ai = icmp sgt i64 %i.z, 0
  br i1 %i.ai, label %bb.g, label %_ZNSt6vectorIN4lean11region_viewESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc21
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIN4lean11region_viewESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN4lean11region_viewESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %.noexc21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4lean11region_viewESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4lean11region_viewESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #34
  br label %_ZNSt6vectorIN4lean11region_viewESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4lean11region_viewESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN4lean11region_viewESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !21
  store ptr %i.aj, ptr %i.i, align 8, !tbaa !130
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ae ; 2 uses
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !22
  br label %_ZNSt6vectorIN4lean11region_viewESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN4lean11region_viewESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN4lean11region_viewESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.d
  %i.al = phi ptr [ %i.ak, %_ZNSt6vectorIN4lean11region_viewESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.j, %bb.d ]
  %i.am = phi ptr [ %i.aj, %_ZNSt6vectorIN4lean11region_viewESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.v, %bb.d ]
  %i.an = add nuw i64 %.027, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %.val
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !129

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4lean11region_viewESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4lean11region_viewESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !22
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.w to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.as) #34
  br label %_ZNSt6vectorIN4lean11region_viewESaIS1_EED2Ev.exit

_ZNSt6vectorIN4lean11region_viewESaIS1_EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4lean11region_viewESaIS1_EE9push_backEOS1_.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32   ; 7 uses
  %i.e = add i64 %i.d, %i.b                       ; 5 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !30     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  %.pre = load ptr, ptr %2, align 8, !tbaa !30    ; 4 uses
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %.pre, %i.m
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.o = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.p = load i64, ptr %i.m, align 8, !tbaa !31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.q = phi i64 [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.q
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !27
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !30   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !32   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.t, ptr %0, align 8, !tbaa !30
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !31
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !32
  store ptr %i.u, ptr %i.r, align 8, !tbaa !30
  store i64 0, ptr %i.ab, align 8, !tbaa !32
  store i8 0, ptr %i.u, align 8, !tbaa !31
  br label %bb.l

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.ae = sub i64 9223372036854775807, %i.b
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #33
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ag = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ai = phi i64 [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.e, %i.ai
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load i8, ptr %.pre, align 1, !tbaa !31
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %.pre, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

end_hunk_1
begin_hunk_2_@lean_compacted_region_read:bb.a

bb.bs:                                            ; preds = %.body277, %bb.bp
  %.pn134.pn = phi { ptr, i32 } [ %.pn134, %.body277 ], [ %i.lz, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.dk

bb.bt:                                            ; preds = %bb.bj
  %i.mg = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !17 ; 2 uses
  %i.mi = inttoptr i64 %i.mh to ptr               ; 3 uses
  %i.mj = load i32, ptr %5, align 4, !tbaa !61
  %i.mk = call ptr @mmap(ptr noundef %i.mi, i64 noundef %i.eq, i32 noundef 3, i32 noundef 1048578, i32 noundef %i.mj, i64 noundef 0) #30
  %.fr = freeze ptr %i.mk                         ; 5 uses
  %.not119 = icmp eq ptr %.fr, inttoptr (i64 -1 to ptr) ; 2 uses
  %i.ml = icmp eq ptr %.fr, %i.mi                 ; 3 uses
  %brmerge = or i1 %i.ml, %.not119
  br i1 %brmerge, label %bb.bu, label %.thread

.thread:                                          ; preds = %bb.bt
  %i.mm = call i32 @munmap(ptr noundef %.fr, i64 noundef %i.eq) #30 ; 0 uses
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %.not119.not = xor i1 %.not119, true
  %or.cond160 = and i1 %i.ml, %.not119.not        ; 2 uses
  %magicptr = ptrtoint ptr %.fr to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch = icmp ult i64 %magicptr.off, -2
  %or.cond369 = and i1 %i.ml, %switch
  br i1 %or.cond369, label %.thread363, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.thread
  %.067362 = phi i1 [ false, %.thread ], [ %or.cond160, %bb.bu ]
  %i.mn = call noalias ptr @malloc(i64 noundef %i.eq) #36 ; 3 uses
  %i.mo = load i32, ptr %5, align 4, !tbaa !61
  %i.mp = call i64 @lseek(i32 noundef %i.mo, i64 noundef 0, i32 noundef 0) #30 ; 0 uses
  %i.mq = load i32, ptr %5, align 4, !tbaa !61
  %i.mr = invoke fastcc noundef i64 @_ZN4lean12_GLOBAL__N_15readnEiPvm(i32 noundef %i.mq, ptr noundef %i.mn, i64 noundef %i.eq)
          to label %bb.bw unwind label %bb.ca     ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  %i.ms = icmp sgt i64 %i.mr, -1
  %.not121 = icmp eq i64 %i.mr, %i.eq
  %or.cond161 = select i1 %i.ms, i1 %.not121, i1 false
  br i1 %or.cond161, label %.thread363, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @free(ptr noundef %i.mn) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %20, i8 0, i64 376, i1 false)
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %20)
          to label %_ZN4lean7sstreamC2Ev.exit290 unwind label %bb.cb

_ZN4lean7sstreamC2Ev.exit290:                     ; preds = %bb.bx
  %i.mt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %20, ptr noundef nonnull @.str.9, i64 noundef 21)
          to label %_ZN4lean7sstreamlsIA22_cEERS0_RKT_.exit292 unwind label %bb.cc ; 0 uses

_ZN4lean7sstreamlsIA22_cEERS0_RKT_.exit292:       ; preds = %_ZN4lean7sstreamC2Ev.exit290
  %i.mu = load ptr, ptr %3, align 8, !tbaa !30
  %i.mv = load i64, ptr %i.l, align 8, !tbaa !32
  %i.mw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %20, ptr noundef %i.mu, i64 noundef %i.mv)
          to label %_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit294 unwind label %bb.cc ; 0 uses

_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit294: ; preds = %_ZN4lean7sstreamlsIA22_cEERS0_RKT_.exit292
  %i.mx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %20, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit unwind label %bb.cc ; 0 uses

_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit:           ; preds = %_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit294
  invoke void @_ZNK4lean7sstream3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(376) %20)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit
  %i.my = invoke noundef ptr @_ZN4lean18io_result_mk_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.bz unwind label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.mz = load ptr, ptr %19, align 8, !tbaa !30   ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296: ; preds = %bb.bz
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !31
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nd) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i297

bb.ca:                                            ; preds = %bb.bv
  %i.ne = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %bb.dk

bb.cb:                                            ; preds = %bb.bx
  %i.nf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %bb.ce

bb.cc:                                            ; preds = %_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit294, %_ZN4lean7sstreamlsIA22_cEERS0_RKT_.exit292, %_ZN4lean7sstreamC2Ev.exit290, %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit
  %i.ng = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

bb.cd:                                            ; preds = %bb.by
  %i.nh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE        ; 2 uses
  %i.ni = load ptr, ptr %19, align 8, !tbaa !30   ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299: ; preds = %bb.cd
  %i.nl = load i64, ptr %i.nj, align 8, !tbaa !31
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299, %bb.cc
  %.pn122 = phi { ptr, i32 } [ %i.ng, %bb.cc ], [ %i.nh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299 ], [ %i.nh, %bb.cd ]
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %20) #30
  br label %bb.ce

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, %bb.cb
  %.pn122.pn = phi { ptr, i32 } [ %.pn122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301 ], [ %i.nf, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.dk

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i297: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.dj

.thread363:                                       ; preds = %bb.bu, %bb.bw
  %.067361 = phi i1 [ %or.cond160, %bb.bu ], [ %.067362, %bb.bw ]
  %.1 = phi ptr [ %.fr, %bb.bu ], [ %i.mn, %bb.bw ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %i.nn = add i64 %i.eq, -88
  %i.no = icmp eq i8 %i.kf, 3
  br i1 %i.no, label %bb.cf, label %bb.cq

bb.cf:                                            ; preds = %.thread363
  %i.np = getelementptr inbounds nuw i8, ptr %.1, i64 88
  %.0.copyload20 = load i64, ptr %i.np, align 1   ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.1, i64 96
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.0.copyload20 ; 2 uses
  %.0.copyload11 = load i32, ptr %i.nr, align 1   ; 3 uses
  %.not126 = icmp eq i32 %.0.copyload11, 0
  br i1 %.not126, label %bb.cq, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ns = zext i32 %.0.copyload11 to i64
  invoke void @_ZNSt6vectorImSaImEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %i.ns)
          to label %.preheader unwind label %bb.ci

.preheader:                                       ; preds = %bb.cg
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %i.nu = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %.pre = load ptr, ptr %i.nu, align 8, !tbaa !51
  %.pre374 = load ptr, ptr %i.nv, align 16, !tbaa !62
  br label %bb.cj

bb.ch:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  invoke fastcc void @_ZN4leanL26read_lib_table_from_bufferEPKc(ptr dead_on_unwind noalias writable align 8 %22, ptr noundef nonnull %i.ou)
          to label %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit unwind label %bb.cp

bb.ci:                                            ; preds = %bb.cg
  %i.nw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %bb.dh

bb.cj:                                            ; preds = %.preheader, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.nx = phi ptr [ %.pre374, %.preheader ], [ %i.os, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.ny = phi ptr [ %.pre, %.preheader ], [ %i.ot, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %.0373 = phi i32 [ 0, %.preheader ], [ %i.ov, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %.064372 = phi ptr [ %i.nt, %.preheader ], [ %i.ou, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %.0.copyload = load i64, ptr %.064372, align 1  ; 2 uses
  %.not.i.i302 = icmp eq ptr %i.ny, %i.nx
  br i1 %.not.i.i302, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store i64 %.0.copyload, ptr %i.ny, align 8, !tbaa !17
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  store ptr %i.nz, ptr %i.nu, align 8, !tbaa !51
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.cl:                                            ; preds = %bb.cj
  %i.oa = load ptr, ptr %21, align 16, !tbaa !50  ; 4 uses
  %i.ob = ptrtoint ptr %i.nx to i64
  %i.oc = ptrtoint ptr %i.oa to i64               ; 2 uses
  %i.od = sub i64 %i.ob, %i.oc                    ; 5 uses
  %i.oe = icmp eq i64 %i.od, 9223372036854775800
  br i1 %i.oe, label %bb.cm, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #33
          to label %.noexc303 unwind label %.loopexit.split-lp

.noexc303:                                        ; preds = %bb.cm
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cl
  %i.of = ashr exact i64 %i.od, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.of, i64 1)
  %29 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.of ; 2 uses
  %i.og = icmp ult i64 %29, %i.of
  %i.oh = call i64 @llvm.umin.i64(i64 %29, i64 1152921504606846975)
  %i.oi = select i1 %i.og, i64 1152921504606846975, i64 %i.oh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.oi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.oj = shl nuw nsw i64 %i.oi, 3
  %i.ok = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oj) #32
          to label %.noexc304 unwind label %.loopexit ; 4 uses

.noexc304:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ol = getelementptr inbounds i8, ptr %i.ok, i64 %i.od ; 2 uses
  store i64 %.0.copyload, ptr %i.ol, align 8, !tbaa !17
  %i.om = icmp sgt i64 %i.od, 0
  br i1 %i.om, label %bb.cn, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.cn:                                            ; preds = %.noexc304
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ok, ptr align 8 %i.oa, i64 %i.od, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cn, %.noexc304
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.oa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.oo = load ptr, ptr %i.nv, align 16, !tbaa !62
  %i.op = ptrtoint ptr %i.oo to i64
  %i.oq = sub i64 %i.op, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %i.oa, i64 noundef %i.oq) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.co, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ok, ptr %21, align 16, !tbaa !50
  store ptr %i.on, ptr %i.nu, align 8, !tbaa !51
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %i.oi ; 2 uses
  store ptr %i.or, ptr %i.nv, align 16, !tbaa !62
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.ck
  %i.os = phi ptr [ %i.or, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.nx, %bb.ck ]
  %i.ot = phi ptr [ %i.on, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.nz, %bb.ck ]
  %i.ou = getelementptr inbounds nuw i8, ptr %.064372, i64 8 ; 2 uses
  %i.ov = add nuw i32 %.0373, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.ov, %.0.copyload11
  br i1 %exitcond.not, label %bb.ch, label %bb.cj, !llvm.loop !168

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %bb.dh

.loopexit.split-lp:                               ; preds = %bb.cm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  br label %bb.dh

_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit:        ; preds = %bb.ch
  %i.ow = load <2 x ptr>, ptr %22, align 16, !tbaa !64
  %i.ox = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.oy = load ptr, ptr %i.ox, align 16, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  %i.oz = load <2 x ptr>, ptr %21, align 16, !tbaa !49
  %.pre378 = load ptr, ptr %i.nv, align 16, !tbaa !62
  br label %bb.cq

bb.cp:                                            ; preds = %bb.ch
  %i.pa = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.dh

bb.cq:                                            ; preds = %bb.cf, %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit, %.thread363
  %i.pb = phi ptr [ null, %bb.cf ], [ %.pre378, %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit ], [ null, %.thread363 ]
  %.sroa.12.0 = phi ptr [ null, %bb.cf ], [ %i.oy, %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit ], [ null, %.thread363 ]
  %.066 = phi i64 [ 96, %bb.cf ], [ 96, %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit ], [ 88, %.thread363 ] ; 2 uses
  %.065 = phi i64 [ %.0.copyload20, %bb.cf ], [ %.0.copyload20, %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit ], [ %i.nn, %.thread363 ]
  %i.pc = phi <2 x ptr> [ splat (ptr null), %bb.cf ], [ %i.ow, %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit ], [ splat (ptr null), %.thread363 ]
  %i.pd = phi <2 x ptr> [ splat (ptr null), %bb.cf ], [ %i.oz, %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit ], [ splat (ptr null), %.thread363 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  %i.pe = getelementptr inbounds nuw i8, ptr %.1, i64 %.066
  %i.pf = getelementptr inbounds nuw i8, ptr %i.mi, i64 %.066
  %i.pg = load <2 x ptr>, ptr %4, align 16, !tbaa !19
  store <2 x ptr> %i.pg, ptr %24, align 16, !tbaa !19
  %i.ph = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.pj = load ptr, ptr %i.pi, align 16, !tbaa !22
  store ptr %i.pj, ptr %i.ph, align 16, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.pc, ptr %25, align 16, !tbaa !64
  %i.pk = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %.sroa.12.0, ptr %i.pk, align 16, !tbaa !66
  store <2 x ptr> %i.pd, ptr %26, align 16, !tbaa !49
  %i.pl = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %i.pb, ptr %i.pl, align 16, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  invoke void @_ZN4lean13region_readerC1EmPvS1_St6vectorINS_11region_viewESaIS3_EES2_ISt4pairImlESaIS7_EES2_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(144) %23, i64 noundef %.065, ptr noundef nonnull %i.pe, ptr noundef nonnull %i.pf, ptr noundef nonnull align 8 %24, ptr noundef nonnull align 8 %25, ptr noundef nonnull align 8 %26)
          to label %bb.cr unwind label %bb.da

bb.cr:                                            ; preds = %bb.cq
  %i.pn = load ptr, ptr %26, align 16, !tbaa !50  ; 3 uses
  %.not.i.i.i306 = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i306, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.po = load ptr, ptr %i.pl, align 16, !tbaa !62
  %i.pp = ptrtoint ptr %i.po to i64
  %i.pq = ptrtoint ptr %i.pn to i64
  %i.pr = sub i64 %i.pp, %i.pq
  call void @_ZdlPvm(ptr noundef nonnull %i.pn, i64 noundef %i.pr) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.cr, %bb.cs
  %i.ps = load ptr, ptr %25, align 16, !tbaa !67  ; 3 uses
  %.not.i.i.i307 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i.i307, label %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit308, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.pt = load ptr, ptr %i.pk, align 16, !tbaa !66
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = ptrtoint ptr %i.ps to i64
  %i.pw = sub i64 %i.pu, %i.pv
  call void @_ZdlPvm(ptr noundef nonnull %i.ps, i64 noundef %i.pw) #34
  br label %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit308

_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit308:     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.ct
  %i.px = load ptr, ptr %24, align 16, !tbaa !21  ; 3 uses
  %.not.i.i.i309 = icmp eq ptr %i.px, null
  br i1 %.not.i.i.i309, label %_ZNSt6vectorIN4lean11region_viewESaIS1_EED2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit308
  %i.py = load ptr, ptr %i.ph, align 16, !tbaa !22
  %i.pz = ptrtoint ptr %i.py to i64
  %i.qa = ptrtoint ptr %i.px to i64
  %i.qb = sub i64 %i.pz, %i.qa
  call void @_ZdlPvm(ptr noundef nonnull %i.px, i64 noundef %i.qb) #34
  br label %_ZNSt6vectorIN4lean11region_viewESaIS1_EED2Ev.exit

_ZNSt6vectorIN4lean11region_viewESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit308, %bb.cu
  %i.qc = invoke noundef ptr @_ZN4lean13region_reader4readEv(ptr noundef nonnull align 8 dereferenceable(144) %23)
          to label %bb.cv unwind label %bb.de     ; 2 uses

bb.cv:                                            ; preds = %_ZNSt6vectorIN4lean11region_viewESaIS1_EED2Ev.exit
  %i.qd = invoke noundef ptr @_ZN4lean11alloc_cnstrEjjj(i32 noundef 0, i32 noundef 2, i32 noundef 0)
          to label %bb.cw unwind label %bb.df     ; 3 uses

bb.cw:                                            ; preds = %bb.cv
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  store ptr %i.qc, ptr %i.qe, align 8, !tbaa !23
  %i.qf = invoke fastcc noundef ptr @_ZN4leanL19mk_compacted_regionEP11lean_objectS1_Pcmmb(ptr noundef %0, ptr noundef %i.qc, ptr noundef nonnull %.1, i64 noundef %i.mh, i64 noundef %i.eq, i1 noundef zeroext %.067361)
          to label %bb.cx unwind label %bb.df

bb.cx:                                            ; preds = %bb.cw
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  store ptr %i.qf, ptr %i.qg, align 8, !tbaa !23
  %i.qh = invoke noundef ptr @_ZN4lean15io_result_mk_okEP11lean_object(ptr noundef nonnull %i.qd)
          to label %bb.cy unwind label %bb.df

bb.cy:                                            ; preds = %bb.cx
  call void @_ZN4lean13region_readerD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  %i.qi = load ptr, ptr %21, align 16, !tbaa !50  ; 3 uses
  %.not.i.i.i310 = icmp eq ptr %i.qi, null
  br i1 %.not.i.i.i310, label %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit313, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qj = load ptr, ptr %i.pm, align 16, !tbaa !62
  %i.qk = ptrtoint ptr %i.qj to i64
  %i.ql = ptrtoint ptr %i.qi to i64
  %i.qm = sub i64 %i.qk, %i.ql
  call void @_ZdlPvm(ptr noundef nonnull %i.qi, i64 noundef %i.qm) #34
  br label %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit313

_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit313:     ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.dj

bb.da:                                            ; preds = %bb.cq
  %i.qn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4lean9exceptionE        ; 2 uses
  %i.qo = load ptr, ptr %26, align 16, !tbaa !50  ; 3 uses
  %.not.i.i.i314 = icmp eq ptr %i.qo, null
  br i1 %.not.i.i.i314, label %_ZNSt6vectorImSaImEED2Ev.exit315, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qp = load ptr, ptr %i.pl, align 16, !tbaa !62
  %i.qq = ptrtoint ptr %i.qp to i64
  %i.qr = ptrtoint ptr %i.qo to i64
  %i.qs = sub i64 %i.qq, %i.qr
  call void @_ZdlPvm(ptr noundef nonnull %i.qo, i64 noundef %i.qs) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit315

_ZNSt6vectorImSaImEED2Ev.exit315:                 ; preds = %bb.da, %bb.db
  %i.qt = load ptr, ptr %25, align 16, !tbaa !67  ; 3 uses
  %.not.i.i.i316 = icmp eq ptr %i.qt, null
  br i1 %.not.i.i.i316, label %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit317, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit315
  %i.qu = load ptr, ptr %i.pk, align 16, !tbaa !66
  %i.qv = ptrtoint ptr %i.qu to i64
  %i.qw = ptrtoint ptr %i.qt to i64
end_hunk_2
begin_hunk_3_@_ZN4leanL26read_lib_table_from_bufferEPKc:bb.a
  br i1 %i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.bz to i64
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 4
  %i.n = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = xor i64 %i.o, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.h, ptr nonnull %i.bz, i64 noundef %i.p)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.h, ptr nonnull %i.bz)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit unwind label %bb.w

bb.d:                                             ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.q = phi ptr [ null, %.preheader ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ] ; 7 uses
  %.0108 = phi ptr [ %i.b, %.preheader ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ] ; 3 uses
  %.034107 = phi i32 [ 0, %.preheader ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  %i.r = load i64, ptr %.0108, align 1            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0108, i64 8
  %.0.copyload = load i32, ptr %i.s, align 1      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0108, i64 12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.u = zext i32 %.0.copyload to i64             ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !27
  %i.v = icmp ugt i32 %.0.copyload, 15
  br i1 %i.v, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i64 %i.u, 1
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32
          to label %.noexc53 unwind label %bb.i   ; 2 uses

.noexc53:                                         ; preds = %bb.e
  store ptr %i.x, ptr %3, align 8, !tbaa !30
  store i64 %i.u, ptr %i.c, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc53, %bb.d
  %i.y = phi ptr [ %i.x, %.noexc53 ], [ %i.c, %bb.d ] ; 3 uses
  switch i32 %.0.copyload, label %bb.g [
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.t, align 1, !tbaa !31
  store i8 %i.z, ptr %i.y, align 1, !tbaa !31
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.t, i64 %i.u, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  store i64 %i.u, ptr %i.d, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u
  store i8 0, ptr %i.aa, align 1, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.ac = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.af = load i64, ptr %i.d, align 8, !tbaa !32  ; 3 uses
  %i.ag = load ptr, ptr %3, align 8
  %i.ah = icmp eq i64 %i.af, 0
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.j:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread78
  %.sroa.072.0102 = phi ptr [ %i.ac, %.lr.ph ], [ %i.as, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread78 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.072.0102, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.072.0102, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.am = icmp eq i64 %i.al, %i.af
  br i1 %i.am, label %bb.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread78

bb.k:                                             ; preds = %bb.j
  br i1 %i.ah, label %.thread83, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.k
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !30
  %bcmp.i = call i32 @bcmp(ptr %i.an, ptr %i.ag, i64 %i.af)
  %i.ao = icmp eq i32 %bcmp.i, 0
  br i1 %i.ao, label %.thread83, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread78

.thread83:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.k
  %i.ap = load i64, ptr %.sroa.072.0102, align 8, !tbaa !198
  %i.aq = sub nsw i64 %i.ap, %i.r                 ; 2 uses
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %i.q, %i.ar
  br i1 %.not.i.i, label %bb.r, label %bb.q

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread78: ; preds = %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.072.0102, i64 40 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ad
  br i1 %i.at, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread78
  %i.au = call ptr @__cxa_allocate_exception(i64 40) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %5, i8 0, i64 376, i1 false)
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
          to label %_ZN4lean7sstreamC2Ev.exit unwind label %.thread87

_ZN4lean7sstreamC2Ev.exit:                        ; preds = %._crit_edge
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull @.str.23, i64 noundef 72)
          to label %_ZN4lean7sstreamlsIA73_cEERS0_RKT_.exit unwind label %.thread91 ; 0 uses

_ZN4lean7sstreamlsIA73_cEERS0_RKT_.exit:          ; preds = %_ZN4lean7sstreamC2Ev.exit
  %i.aw = load ptr, ptr %3, align 8, !tbaa !30
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !32
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef %i.aw, i64 noundef %i.ax)
          to label %_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %.thread91 ; 0 uses

_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %_ZN4lean7sstreamlsIA73_cEERS0_RKT_.exit
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit unwind label %.thread91 ; 0 uses

_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit:           ; preds = %_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  invoke void @_ZNK4lean7sstream3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(376) %5)
          to label %bb.l unwind label %.thread91

bb.l:                                             ; preds = %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit
  invoke void @_ZN4lean9throwableC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean9exceptionE, i64 16), ptr %i.au, align 8, !tbaa !39
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #33
          to label %bb.aa unwind label %bb.n

.thread87:                                        ; preds = %._crit_edge
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread91:                                        ; preds = %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit, %_ZN4lean7sstreamC2Ev.exit, %_ZN4lean7sstreamlsIA73_cEERS0_RKT_.exit, %_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #30
  br label %.sink.split

bb.n:                                             ; preds = %bb.l, %bb.m
  %.027 = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !31
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #34
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.027, label %bb.p, label %bb.u

bb.o:                                             ; preds = %bb.n
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.027, label %bb.p, label %bb.u

.sink.split:                                      ; preds = %.thread87, %.thread91
  %.pn.pn90.ph = phi { ptr, i32 } [ %i.bb, %.thread91 ], [ %i.ba, %.thread87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn.pn90 = phi { ptr, i32 } [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bc, %bb.o ], [ %.pn.pn90.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.au) #30
  br label %bb.u

bb.q:                                             ; preds = %.thread83
  store i64 %i.r, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aq, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.bi, ptr %i.f, align 8, !tbaa !199
  br label %_ZNSt6vectorISt4pairImlESaIS1_EE9push_backEOS1_.exit

bb.r:                                             ; preds = %.thread83
  %i.bj = load ptr, ptr %0, align 8, !tbaa !67    ; 5 uses
  %i.bk = ptrtoint ptr %i.q to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775792
  br i1 %i.bn, label %bb.s, label %_ZNKSt6vectorISt4pairImlESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #33
          to label %.noexc59 unwind label %.loopexit.split-lp

.noexc59:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorISt4pairImlESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.bo = ashr exact i64 %i.bm, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %6 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bo ; 2 uses
  %i.bp = icmp ult i64 %6, %i.bo
  %i.bq = call i64 @llvm.umin.i64(i64 %6, i64 576460752303423487)
  %i.br = select i1 %i.bp, i64 576460752303423487, i64 %i.bq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bs = shl nuw nsw i64 %i.br, 4
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #32
          to label %.noexc60 unwind label %.loopexit ; 5 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorISt4pairImlESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bm ; 2 uses
  store i64 %i.r, ptr %i.bu, align 8
  %.sroa.6.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.aq, ptr %.sroa.6.0..sroa_idx69, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.q
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImlESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc60, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i ], [ %i.bt, %.noexc60 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %.noexc60 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !200
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.q
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImlESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !195

_ZNSt6vectorISt4pairImlESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc60
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bt, %.noexc60 ], [ %i.bw, %.lr.ph.i.i.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairImlESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt4pairImlESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #34
  br label %_ZNSt6vectorISt4pairImlESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairImlESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorISt4pairImlESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.bt, ptr %0, align 8, !tbaa !67
  store ptr %i.bx, ptr %i.f, align 8, !tbaa !199
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.br
  store ptr %i.by, ptr %i.g, align 8, !tbaa !66
  br label %_ZNSt6vectorISt4pairImlESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairImlESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorISt4pairImlESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.q
  %i.bz = phi ptr [ %i.bx, %_ZNSt6vectorISt4pairImlESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.bi, %bb.q ] ; 5 uses
  %i.ca = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.c
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt6vectorISt4pairImlESaIS1_EE9push_backEOS1_.exit
  %i.cc = load i64, ptr %i.c, align 8, !tbaa !31
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt6vectorISt4pairImlESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ce = add nuw i32 %.034107, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ce, %.0.copyload14
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !196

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairImlESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o, %bb.p
  %.pn47 = phi { ptr, i32 } [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn.pn90, %bb.p ], [ %i.bc, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cf = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.c
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.u
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !31
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.i
  %.pn47.pn = phi { ptr, i32 } [ %i.ai, %bb.i ], [ %.pn47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %.pn47, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.x

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %bb.b, %.noexc
  %i.cj = load ptr, ptr %2, align 8, !tbaa !55    ; 3 uses
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !54  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cj, %i.ck
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4lean8lib_infoES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, %_ZSt8_DestroyIN4lean8lib_infoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cr, %_ZSt8_DestroyIN4lean8lib_infoEEvPT_.exit.i.i.i ], [ %i.cj, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !30 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZSt8_DestroyIN4lean8lib_infoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !31
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #34
  br label %_ZSt8_DestroyIN4lean8lib_infoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4lean8lib_infoEEvPT_.exit.i.i.i:   ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cr, %i.ck
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4lean8lib_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4lean8lib_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4lean8lib_infoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN4lean8lib_infoES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4lean8lib_infoES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4lean8lib_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.cs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4lean8lib_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.cj, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4lean8lib_infoESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN4lean8lib_infoES1_EvT_S3_RSaIT0_E.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !56
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cx) #34
  br label %_ZNSt6vectorIN4lean8lib_infoESaIS1_EED2Ev.exit

_ZNSt6vectorIN4lean8lib_infoESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN4lean8lib_infoES1_EvT_S3_RSaIT0_E.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.z

bb.w:                                             ; preds = %.noexc, %bb.c
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.w
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.cy, %bb.w ]
  call void @_ZNSt6vectorIN4lean8lib_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  %.pre = load ptr, ptr %0, align 8, !tbaa !67    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not.i.i.i67 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !66
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %.pre to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.dd) #34
  br label %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit:        ; preds = %bb.x, %bb.y
  resume { ptr, i32 } %.pn47.pn.pn

bb.z:                                             ; preds = %_ZNSt6vectorIN4lean8lib_infoESaIS1_EED2Ev.exit, %bb.a
  ret void

bb.aa:                                            ; preds = %bb.m
  unreachable
}

declare void @_ZN4lean13region_readerC1EmPvS1_St6vectorINS_11region_viewESaIS3_EES2_ISt4pairImlESaIS7_EES2_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef, ptr noundef, ptr noundef, ptr noundef align 8, ptr noundef align 8, ptr noundef align 8) unnamed_addr #4

declare noundef ptr @_ZN4lean13region_reader4readEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4lean11alloc_cnstrEjjj(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl i32 %1, 3
  %i.b = add i32 %i.a, 8
  %i.c = add i32 %i.b, %2                         ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = and i64 %i.d, 4294967288
  %i.f = and i64 %i.d, 7
  %.not.i.i.i = icmp eq i64 %i.f, 0
  %i.g = select i1 %.not.i.i.i, i64 0, i64 8
  %i.h = add nuw nsw i64 %i.g, %i.e               ; 2 uses
  tail call void @lean_inc_heartbeat()
  %i.i = and i64 %i.h, 4294967288                 ; 2 uses
  %i.j = tail call noalias ptr @mi_malloc_small(i64 noundef %i.i) #30 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %_ZL23lean_alloc_small_objectj.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #33
  unreachable

_ZL23lean_alloc_small_objectj.exit.i.i:           ; preds = %bb.a
  %i.l = trunc i64 %i.h to i32                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.l, 65528                      ; 2 uses
  %i.p = and i32 %i.n, -65536
  %i.q = or disjoint i32 %i.p, %i.o
  store i32 %i.q, ptr %i.m, align 4
  %i.r = icmp ult i32 %i.c, %i.l
  br i1 %i.r, label %bb.c, label %_ZL15lean_alloc_ctorjjj.exit

bb.c:                                             ; preds = %_ZL23lean_alloc_small_objectj.exit.i.i
end_hunk_3
