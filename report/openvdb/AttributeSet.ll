Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/AttributeSet?download=true
inline.NumInlined: 3012
inline.NumDeleted: 1015
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7openvdb5v13_06points12AttributeSet14dropAttributesERKSt6vectorImSaImEERKNS2_10DescriptorERSt10shared_ptrIS8_E:bb.a
  %.not.i.i16.i = icmp eq ptr %i.cf, %i.bq
  br i1 %.not.i.i16.i, label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.i
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.bs
  %i.ci = getelementptr inbounds i8, ptr %i.bh, i64 %i.ch
  br label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit.i

_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit.i: ; preds = %.preheader.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.i, %bb.ac
  %.sroa.12.0.i = phi ptr [ %i.bq, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit.i ], [ %i.ci, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i ], [ %i.bq, %bb.ac ], [ %i.bq, %.preheader.i.i.i.i ] ; 2 uses
  %i.cj = load i64, ptr %i.bh, align 8, !tbaa !73
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !52
  %i.cm = load ptr, ptr %i.az, align 8, !tbaa !51
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 4
  %.not.i = icmp ult i64 %i.cj, %i.cq
  br i1 %.not.i, label %.preheader.i, label %bb.ag

.preheader.i:                                     ; preds = %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit.i
  %.not5153.i = icmp eq ptr %i.bh, %.sroa.12.0.i
  br i1 %.not5153.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %.lr.ph.i

bb.ag:                                            ; preds = %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.cr, ptr %6, align 8, !tbaa !71
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !70
  store i8 0, ptr %i.cr, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.41, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.cu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8) #33 ; 0 uses
  %i.cv = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !43
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.ap

bb.aj:                                            ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit23.i

bb.ak:                                            ; preds = %bb.ag
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ao

bb.al:                                            ; preds = %bb.ah
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.an

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn13.i = phi { ptr, i32 } [ %i.dd, %bb.am ], [ %i.dc, %bb.al ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #33
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.pn13.pn.i = phi { ptr, i32 } [ %.pn13.i, %bb.an ], [ %i.db, %bb.ak ]
  %.2.i = extractvalue { ptr, i32 } %.pn13.pn.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.de = call ptr @__cxa_begin_catch(ptr %.2.i) #33 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.df = call ptr @__cxa_allocate_exception(i64 40) #33 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.df, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %6) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_011LookupErrorE, i64 16), ptr %i.df, align 8, !tbaa !86
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIN7openvdb5v13_011LookupErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #34
          to label %bb.as unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %i.dh = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cr
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i: ; preds = %bb.aq
  %i.dj = load i64, ptr %i.cr, align 8, !tbaa !43
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit23.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.i, %.preheader.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bf) #32
  br label %_ZN7openvdb5v13_06points12_GLOBAL__N_112eraseIndicesISt10shared_ptrINS1_14AttributeArrayEEEEvRSt6vectorIT_SaIS8_EERKS7_ImSaImEE.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.i
  %.sroa.027.054.i = phi ptr [ %i.dp, %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.i ], [ %i.bh, %.preheader.i ] ; 2 uses
  %i.dl = load ptr, ptr %i.az, align 8, !tbaa !98
  %i.dm = load i64, ptr %.sroa.027.054.i, align 8, !tbaa !73
  %i.dn = getelementptr inbounds [16 x i8], ptr %i.dl, i64 %i.dm
  %i.do = invoke ptr @_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr %i.dn)
          to label %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.i unwind label %bb.ar ; 0 uses

_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit.i: ; preds = %.lr.ph.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.027.054.i, i64 8 ; 2 uses
  %.not51.i = icmp eq ptr %i.dp, %.sroa.12.0.i
  br i1 %.not51.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %.lr.ph.i, !llvm.loop !219

bb.ar:                                            ; preds = %.lr.ph.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit23.i

_ZNSt6vectorImSaImEED2Ev.exit23.i:                ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i, %bb.aj
  %.pn14.i = phi { ptr, i32 } [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i ], [ %i.dq, %bb.ar ], [ %i.da, %bb.aj ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bf) #32
  br label %common.resume

bb.as:                                            ; preds = %bb.ap
  unreachable

_ZN7openvdb5v13_06points12_GLOBAL__N_112eraseIndicesISt10shared_ptrINS1_14AttributeArrayEEEEvRSt6vectorIT_SaIS8_EERKS7_ImSaImEE.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEaSERKS5_.exit, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.dr = load ptr, ptr %0, align 8, !tbaa !41
  call void @_ZN7openvdb5v13_06points12AttributeSet10Descriptor24pruneUnusedDefaultValuesEv(ptr noundef nonnull align 8 dereferenceable(240) %i.dr)
  br label %bb.at

bb.at:                                            ; preds = %bb.a, %_ZN7openvdb5v13_06points12_GLOBAL__N_112eraseIndicesISt10shared_ptrINS1_14AttributeArrayEEEEvRSt6vectorIT_SaIS8_EERKS7_ImSaImEE.exit
  ret void

bb.au:                                            ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points12AttributeSet10Descriptor24pruneUnusedDefaultValuesEv(ptr noundef nonnull align 8 dereferenceable(240) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::vector.54", align 8    ; 13 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.not72 = icmp eq ptr %i.f, %i.g
  br i1 %.not72, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pre = load ptr, ptr %1, align 8, !tbaa !133   ; 3 uses
  %.pre81 = load ptr, ptr %i.p, align 8, !tbaa !133 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not5974 = icmp eq ptr %.pre, %.pre81
  br i1 %.not5974, label %._crit_edge78, label %.lr.ph77

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.sroa.054.073 = phi ptr [ %i.f, %.lr.ph ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.054.073, i64 32
  store ptr %i.h, ptr %2, align 8, !tbaa !71
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.054.073, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !70   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 %i.w, ptr %i.c, align 8, !tbaa !73
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.y, ptr %2, align 8, !tbaa !69
  %i.z = load i64, ptr %i.c, align 8, !tbaa !73
  store i64 %i.z, ptr %i.h, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.b
  %i.aa = phi ptr [ %i.y, %.noexc ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.w, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %._crit_edge.i.i21
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !43
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !43
  br label %._crit_edge.i.i21

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %._crit_edge.i.i21

._crit_edge.i.i21:                                ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !73  ; 2 uses
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !70
  %i.ad = load ptr, ptr %2, align 8, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %i.j, ptr %3, align 8, !tbaa !71
  store i64 4212110802899330404, ptr %i.j, align 8
  store i64 8, ptr %i.k, align 8, !tbaa !70
  store i8 0, ptr %i.r, align 8, !tbaa !43
  %.val18 = load i64, ptr %i.i, align 8, !tbaa !70 ; 4 uses
  %i.af = icmp eq i64 %.val18, 0
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread112, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread112: ; preds = %._crit_edge.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.p

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %._crit_edge.i.i21
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val18, i64 8)
  %.val = load ptr, ptr %2, align 8
  %bcmp.i = call i32 @bcmp(ptr readonly %.val, ptr nonnull readonly %i.j, i64 %spec.select.i.i.i)
  %.not.i.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ag = icmp ugt i64 %.val18, 7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.p

bb.e:                                             ; preds = %.noexc.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ai = load i64, ptr %i.v, align 8, !tbaa !70
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.aj = add i64 %i.ai, -8
  store ptr %i.l, ptr %4, align 8, !tbaa !71, !alias.scope !223
  %i.ak = load ptr, ptr %2, align 8, !tbaa !69, !noalias !223
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = add i64 %.val18, -8
  %spec.select.i.i.i27 = call noundef i64 @llvm.umin.i64(i64 %i.aj, i64 %i.am) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !223
  store i64 %spec.select.i.i.i27, ptr %i.b, align 8, !tbaa !73, !noalias !223
  %i.an = icmp ugt i64 %spec.select.i.i.i27, 15
  br i1 %i.an, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc29 unwind label %.loopexit ; 2 uses

.noexc29:                                         ; preds = %.noexc10.i.i
  store ptr %i.ao, ptr %4, align 8, !tbaa !69, !alias.scope !223
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !73, !noalias !223
  store i64 %i.ap, ptr %i.l, align 8, !tbaa !43, !alias.scope !223
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.aq = phi ptr [ %i.ao, %.noexc29 ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i27, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !43
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !43
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 1 %i.al, i64 %spec.select.i.i.i27, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.as = load i64, ptr %i.b, align 8, !tbaa !73, !noalias !223 ; 2 uses
  store i64 %i.as, ptr %i.m, align 8, !tbaa !70, !alias.scope !223
  %i.at = load ptr, ptr %4, align 8, !tbaa !69, !alias.scope !223
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33, !noalias !223
  %i.av = load ptr, ptr %i.n, align 8, !tbaa !94  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.aw = load i64, ptr %i.m, align 8, !tbaa !70  ; 4 uses
  %i.ax = load ptr, ptr %4, align 8               ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !70 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.az) ; 2 uses
  %i.ba = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ba, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !69
  %i.bd = call i32 @memcmp(ptr noundef %i.bc, ptr noundef %i.ax, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.i
  %i.be = sub i64 %i.az, %i.aw
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.be, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bf = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.bf, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.bf, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.i, !llvm.loop !15

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bg = icmp eq ptr %.19.i.i.i, %i.o
  br i1 %i.bg, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !70 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.aw) ; 2 uses
  %i.bj = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !69
  %i.bm = call i32 @memcmp(ptr noundef %i.ax, ptr noundef %i.bl, i64 noundef %.sroa.speculated.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.j
  %i.bn = sub i64 %i.aw, %i.bi
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bn, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bo = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bo, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.h, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !135 ; 8 uses
  %i.bq = load ptr, ptr %i.q, align 8, !tbaa !136
  %.not.i = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !71
  %i.bs = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !70  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.bt, ptr %i.a, align 8, !tbaa !73
  %i.bu = icmp ugt i64 %i.bt, 15
  br i1 %i.bu, label %.noexc.i.i, label %._crit_edge.i.i.i30

.noexc.i.i:                                       ; preds = %bb.k
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc31 unwind label %bb.o   ; 2 uses

.noexc31:                                         ; preds = %.noexc.i.i
  store ptr %i.bv, ptr %i.bp, align 8, !tbaa !69
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !73
  store i64 %i.bw, ptr %i.br, align 8, !tbaa !43
  br label %._crit_edge.i.i.i30

._crit_edge.i.i.i30:                              ; preds = %.noexc31, %bb.k
  %i.bx = phi ptr [ %i.bv, %.noexc31 ], [ %i.br, %bb.k ] ; 2 uses
  switch i64 %i.bt, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i30
  %i.by = load i8, ptr %i.bs, align 1, !tbaa !43
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.m:                                             ; preds = %._crit_edge.i.i.i30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.bs, i64 %i.bt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i30
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !73  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !70
  %i.cb = load ptr, ptr %i.bp, align 8, !tbaa !69
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store i8 0, ptr %i.cc, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !135
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store ptr %i.ce, ptr %i.p, align 8, !tbaa !135
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.n:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.o

.loopexit:                                        ; preds = %.noexc10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.o:                                             ; preds = %bb.n, %.noexc.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %4, align 8, !tbaa !69    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.l
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.n, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit
  %i.ci = load ptr, ptr %4, align 8, !tbaa !69    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.l
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.ck = load i64, ptr %i.l, align 8, !tbaa !43
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.cm = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.h
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.p
  %i.co = load i64, ptr %i.h, align 8, !tbaa !43
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.cq = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.054.073) #35 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.o
  %i.cr = load i64, ptr %i.l, align 8, !tbaa !43
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.o, %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  %.pn12.pn = phi { ptr, i32 } [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %lpad.loopexit, %.loopexit ], [ %i.cf, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.ct = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.h
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.cv = load i64, ptr %i.h, align 8, !tbaa !43
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.e
  %.pn12.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.e ], [ %.pn12.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %.pn12.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.t

._crit_edge78.loopexit:                           ; preds = %bb.r
  %.pre82 = load ptr, ptr %1, align 8, !tbaa !137
  %.pre83 = load ptr, ptr %i.s, align 8, !tbaa !135
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %._crit_edge
  %5 = phi ptr [ %.pre83, %._crit_edge78.loopexit ], [ %.pre81, %._crit_edge ] ; 2 uses
  %6 = phi ptr [ %.pre82, %._crit_edge78.loopexit ], [ %.pre, %._crit_edge ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %6, %5
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i45

.lr.ph.i.i.i45:                                   ; preds = %._crit_edge78, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %6, %._crit_edge78 ] ; 3 uses
  %i.cx = load ptr, ptr %.05.i.i.i, align 8, !tbaa !69 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i45
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !43
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.dc, %5
  br i1 %.not.i.i.i46, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i45, !llvm.loop !16

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !137
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge78
  %7 = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %6, %._crit_edge78 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %7, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !136
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %7 to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef %i.dh) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

.lr.ph77:                                         ; preds = %._crit_edge, %bb.r
  %.sroa.047.075 = phi ptr [ %i.di, %bb.r ], [ %.pre, %._crit_edge ] ; 2 uses
  invoke void @_ZN7openvdb5v13_07MetaMap10removeMetaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.047.075)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph77
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.047.075, i64 32 ; 2 uses
  %.not59 = icmp eq ptr %i.di, %.pre81
  br i1 %.not59, label %._crit_edge78.loopexit, label %.lr.ph77

bb.s:                                             ; preds = %.lr.ph77
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn12.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn12.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.dj, %bb.s ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.pn12.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points12AttributeSet16renameAttributesERKNS2_10DescriptorERKSt10shared_ptrIS3_E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = tail call noundef zeroext i1 @_ZNK7openvdb5v13_06points12AttributeSet10DescriptoreqERKS3_(ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef nonnull align 8 dereferenceable(240) %1)
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !70
  store i8 0, ptr %i.c, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.3, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #33 ; 0 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !69     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !43
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.m, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.l, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.o = call ptr @__cxa_begin_catch(ptr %.1) #33 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = call ptr @__cxa_allocate_exception(i64 40) #33 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %3) #33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_011LookupErrorE, i64 16), ptr %i.p, align 8, !tbaa !86
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN7openvdb5v13_011LookupErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #34
          to label %bb.w unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %3, align 8, !tbaa !69     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.c
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.k
  %i.t = load i64, ptr %i.c, align 8, !tbaa !43
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.q

bb.l:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %2, align 8, !tbaa !41
  store ptr %i.v, ptr %0, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42   ; 4 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEaSERKS5_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not7.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !44
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !44
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !42
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %i.af = phi ptr [ %i.z, %bb.m ], [ %i.z, %bb.o ], [ %.pr.pre.i.i.i, %bb.p ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ag, align 8, !tbaa !91
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !92
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !86
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #33, !inline_history !10
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !86
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #33, !inline_history !10
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i9.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i9.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i = phi i32 [ %i.aj, %bb.t ], [ %i.at, %bb.u ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.au, label %bb.v, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !93

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #33
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.y, ptr %i.w, align 8, !tbaa !42
  br label %_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEaSERKS5_.exit

_ZNSt10shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorEEaSERKS5_.exit: ; preds = %bb.l, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
end_hunk_0
