Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/kernels_core?download=true
inline.NumInlined: 5883
inline.NumDeleted: 1277
loop-unroll.NumCompletelyUnrolled: 95
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN2cv6detail10MetaHelperINS_4gapi4core12GCartToPolarESt5tupleIJNS_4GMatES6_bEES5_IJS6_S6_EEE15getOutMeta_implIJLi0ELi1ELi2EEJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEENSU_IJXspT0_EEEE:bb.a
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.cy, %bb.y ], [ %i.l, %bb.e ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i30, label %_ZN2cv8GMatDescD2Ev.exit31, label %bb.z

bb.z:                                             ; preds = %.body
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !106
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.df) #22
  br label %_ZN2cv8GMatDescD2Ev.exit31

_ZN2cv8GMatDescD2Ev.exit31:                       ; preds = %bb.z, %.body, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.x ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.z ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i32, label %_ZN2cv8GMatDescD2Ev.exit33, label %bb.aa

bb.aa:                                            ; preds = %_ZN2cv8GMatDescD2Ev.exit31
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !106
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dm) #22
  br label %_ZN2cv8GMatDescD2Ev.exit33

.thread:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.ab:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i23, %.noexc.i.i.i.i.i24
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.dn = load i64, ptr %7, align 8, !tbaa !108
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !27
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 8
  invoke void %i.dp(ptr noundef nonnull %i.dq)
          to label %.loopexit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #23
  unreachable

.body28:                                          ; preds = %.thread67, %bb.s
  %i.dt = phi { ptr, i32 } [ %i.bt, %.thread67 ], [ %i.by, %bb.s ]
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !108
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !27
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 64
  invoke void %i.dx(ptr noundef nonnull %i.dy)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit35 unwind label %bb.ad

bb.ad:                                            ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit35, %.body28
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit35: ; preds = %.body28
  %i.eb = load i64, ptr %7, align 8, !tbaa !108
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !27
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 8
  invoke void %i.ed(ptr noundef nonnull %i.ee)
          to label %.loopexit unwind label %bb.ad

.loopexit:                                        ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit35, %bb.ab, %.thread
  %.pn13 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ab ], [ %lpad.thr_comm, %.thread ], [ %i.dt, %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZNSt11_Tuple_implILm0EJN2cv8GMatDescES1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #20
  br label %_ZN2cv8GMatDescD2Ev.exit33

_ZN2cv8GMatDescD2Ev.exit33:                       ; preds = %bb.aa, %_ZN2cv8GMatDescD2Ev.exit31, %.loopexit
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %.loopexit ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit31 ], [ %.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn13.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GPhaseESt5tupleIJNS_4GMatES6_bEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GPhaseESt5tupleIJNS_4GMatES6_bEES6_E15getOutMeta_implIJLi0ELi1ELi2EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GPhaseESt5tupleIJNS_4GMatES6_bEES6_E15getOutMeta_implIJLi0ELi1ELi2EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %.sroa.033 = alloca [24 x i8], align 8          ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 10 uses
  %5 = alloca %"struct.cv::GMatDesc", align 8     ; 8 uses
  %6 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.033)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.c = load ptr, ptr %2, align 8, !tbaa !100    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 2
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef 2, i64 noundef %i.g) #24
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i:     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  %i.k = call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIbEE, i64 0) #20
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.f

_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %3, align 8, !tbaa !34
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.e:                                             ; preds = %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

bb.f:                                             ; preds = %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.033, ptr noundef nonnull align 8 dereferenceable(17) %4, i64 17, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109, !noalias !618 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !105, !noalias !618 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp ugt i64 %i.s, 9223372036854775804
  br i1 %i.t, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i:                                   ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc15 unwind label %bb.y

.noexc15:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #21
          to label %.noexc16 unwind label %bb.y

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !110, !noalias !618 ; 2 uses
  %.pre1.i = load ptr, ptr %i.n, align 8, !tbaa !110, !noalias !618
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i to i64
  br label %bb.h

bb.h:                                             ; preds = %.noexc16, %bb.f
  %.pre-phi4.i = phi i64 [ %.pre3.i, %.noexc16 ], [ %i.r, %bb.f ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre2.i, %.noexc16 ], [ %i.q, %bb.f ] ; 2 uses
  %i.v = phi ptr [ %.pre.i, %.noexc16 ], [ %i.p, %bb.f ] ; 3 uses
  %i.w = phi ptr [ %i.u, %.noexc16 ], [ null, %bb.f ] ; 8 uses
  %i.x = sub i64 %.pre-phi.i, %.pre-phi4.i        ; 9 uses
  %i.y = icmp sgt i64 %i.x, 4                     ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j, !prof !111

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.w, ptr align 4 %i.v, i64 %i.x, i1 false), !noalias !618
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.z = icmp eq i64 %i.x, 4
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !29, !noalias !618
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !29, !noalias !618
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i17, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !106
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #22
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !105
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.l, %bb.m
  %i.ai = phi ptr [ %i.v, %bb.l ], [ %.pre, %bb.m ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i18 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i18, label %_ZN2cv8GMatDescD2Ev.exit19, label %bb.n

bb.n:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !106
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #22
  br label %_ZN2cv8GMatDescD2Ev.exit19

_ZN2cv8GMatDescD2Ev.exit19:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i64 1, ptr %6, align 8, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ao, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.033, i64 17, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre-phi.i, %.pre-phi4.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.o

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit19
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ar = getelementptr inbounds i8, ptr null, i64 %i.x ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !106
  br label %bb.s

bb.o:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit19
  %i.at = icmp ugt i64 %i.x, 9223372036854775804
  br i1 %i.at, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc20 unwind label %bb.ab

.noexc20:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #21
          to label %.noexc21 unwind label %bb.ab  ; 5 uses

.noexc21:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.au, ptr %i.ap, align 8, !tbaa !105
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !109
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.x ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !106
  br i1 %i.y, label %bb.p, label %bb.q, !prof !127

bb.p:                                             ; preds = %.noexc21
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 4 %i.w, i64 %i.x, i1 false)
  br label %bb.s

bb.q:                                             ; preds = %.noexc21
  %i.ay = icmp eq i64 %i.x, 4
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = load i32, ptr %i.w, align 4, !tbaa !29
  store i32 %i.az, ptr %i.au, align 4, !tbaa !29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %.thread
  %i.ba = phi ptr [ %i.aw, %bb.p ], [ %i.aw, %bb.q ], [ %i.aw, %bb.r ], [ %i.ar, %.thread ]
  %i.bb = phi ptr [ %i.av, %bb.p ], [ %i.av, %bb.q ], [ %i.av, %bb.r ], [ %i.aq, %.thread ]
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bc = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread50 ; 4 uses

.thread50:                                        ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body22

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.bc, ptr %0, align 8, !tbaa !114
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !115
  %i.bh = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %6, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bc)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 56) #22
  br label %.body22

bb.u:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !116
  %i.bk = load i64, ptr %6, align 8, !tbaa !108
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.bm(ptr noundef nonnull %i.bn)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.not.i.i.i.i24 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.s) #22
  br label %_ZN2cv8GMatDescD2Ev.exit25

_ZN2cv8GMatDescD2Ev.exit25:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.033)
  ret void

bb.x:                                             ; preds = %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit27

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i, %bb.c
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.y ], [ %i.l, %bb.e ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i26, label %_ZN2cv8GMatDescD2Ev.exit27, label %bb.z

bb.z:                                             ; preds = %.body
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !106
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #22
  br label %_ZN2cv8GMatDescD2Ev.exit27

_ZN2cv8GMatDescD2Ev.exit27:                       ; preds = %bb.z, %.body, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.x ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit29, label %bb.aa

bb.aa:                                            ; preds = %_ZN2cv8GMatDescD2Ev.exit27
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !106
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #22
  br label %_ZN2cv8GMatDescD2Ev.exit29

_ZN2cv8GMatDescD2Ev.exit29:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit27, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN2cv8GMatDescD2Ev.exit32

bb.ab:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body22:                                          ; preds = %.thread50, %bb.t
  %i.ch = phi { ptr, i32 } [ %i.bd, %.thread50 ], [ %i.bi, %bb.t ]
  %i.ci = load i64, ptr %6, align 8, !tbaa !108
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !27
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.ck(ptr noundef nonnull %i.cl)
          to label %.loopexit unwind label %bb.ac

bb.ac:                                            ; preds = %.body22
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #23
  unreachable

.loopexit:                                        ; preds = %.body22, %bb.ab
  %.pn12 = phi { ptr, i32 } [ %i.cg, %bb.ab ], [ %i.ch, %.body22 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.not.i.i.i.i31 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i31, label %_ZN2cv8GMatDescD2Ev.exit32, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.s) #22
  br label %_ZN2cv8GMatDescD2Ev.exit32

_ZN2cv8GMatDescD2Ev.exit32:                       ; preds = %bb.ad, %.loopexit, %_ZN2cv8GMatDescD2Ev.exit29
  %.pn12.pn = phi { ptr, i32 } [ %.pn, %_ZN2cv8GMatDescD2Ev.exit29 ], [ %.pn12, %.loopexit ], [ %.pn12, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.033)
  resume { ptr, i32 } %.pn12.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGTESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGTESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGTESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109, !noalias !623 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !623 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !110, !noalias !623 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !110, !noalias !623
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !111

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !623
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !623
  store i32 %i.o, ptr %i.k, align 4, !tbaa !29, !noalias !623
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #22
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #22
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !106
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !35

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #21
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !106
  br i1 %i.m, label %bb.l, label %bb.m, !prof !127

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !29
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !115
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #22
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !116
  %i.ay = load i64, ptr %5, align 8, !tbaa !108
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !106
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #22
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !106
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #22
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !108
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #23
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #22
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLTESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLTESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLTESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109, !noalias !628 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !628 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !110, !noalias !628 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !110, !noalias !628
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !111

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !628
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !628
  store i32 %i.o, ptr %i.k, align 4, !tbaa !29, !noalias !628
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #22
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #22
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !106
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !35

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #21
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !106
  br i1 %i.m, label %bb.l, label %bb.m, !prof !127

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !29
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !115
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #22
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !116
  %i.ay = load i64, ptr %5, align 8, !tbaa !108
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !106
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #22
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !106
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #22
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !108
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #23
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #22
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGEESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109, !noalias !633 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !633 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !110, !noalias !633 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !110, !noalias !633
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !111

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !633
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !633
  store i32 %i.o, ptr %i.k, align 4, !tbaa !29, !noalias !633
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #22
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #22
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !106
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !35

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #21
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !106
  br i1 %i.m, label %bb.l, label %bb.m, !prof !127

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !29
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !115
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #22
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !116
  %i.ay = load i64, ptr %5, align 8, !tbaa !108
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !106
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #22
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !106
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #22
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !108
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #23
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #22
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLEESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109, !noalias !638 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !638 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !110, !noalias !638 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !110, !noalias !638
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !111

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !638
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !638
  store i32 %i.o, ptr %i.k, align 4, !tbaa !29, !noalias !638
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #22
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #22
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !106
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !35

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #21
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !106
  br i1 %i.m, label %bb.l, label %bb.m, !prof !127

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !29
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !115
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #22
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !116
  %i.ay = load i64, ptr %5, align 8, !tbaa !108
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !106
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #22
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !106
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #22
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !108
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #23
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #22
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpEQESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpEQESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpEQESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109, !noalias !643 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !643 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !110, !noalias !643 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !110, !noalias !643
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !111

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !643
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !643
  store i32 %i.o, ptr %i.k, align 4, !tbaa !29, !noalias !643
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #22
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #22
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !106
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !35

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #21
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !106
  br i1 %i.m, label %bb.l, label %bb.m, !prof !127

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !29
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !115
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #22
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !116
  %i.ay = load i64, ptr %5, align 8, !tbaa !108
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !106
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #22
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !106
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #22
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !108
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #23
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #22
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpNEESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpNEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpNEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109, !noalias !648 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !648 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !110, !noalias !648 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !110, !noalias !648
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !111

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !648
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !648
  store i32 %i.o, ptr %i.k, align 4, !tbaa !29, !noalias !648
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #22
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #22
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !106
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !35

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #21
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !106
  br i1 %i.m, label %bb.l, label %bb.m, !prof !127

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !29
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !115
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #22
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !116
  %i.ay = load i64, ptr %5, align 8, !tbaa !108
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !106
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #22
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !106
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #22
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !108
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #23
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #22
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv5GCall4passIJRNS_4GMatERNS_7GScalarEEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::GScalar", align 16      ; 6 uses
  %4 = alloca %"class.cv::GMat", align 16         ; 6 uses
  %5 = alloca %"class.std::vector.67", align 8    ; 13 uses
  %6 = alloca [2 x %"class.cv::GArg"], align 8    ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i32 2, ptr %6, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 14, ptr %i.a, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26, !noalias !653 ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !27, !noalias !653
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !27, !alias.scope !653
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !653
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !29, !noalias !653
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !29, !noalias !653
  br label %_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !653 ; 0 uses
  br label %_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i

_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.j = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.e unwind label %.body.thread ; 3 uses

.body.thread:                                     ; preds = %_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4GMatD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
end_hunk_0
begin_hunk_1_@_ZN2cv5GCall4passIJRNS_4GMatERNS_7GScalarEEEERS0_DpOT_:bb.a
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i.i.i.i.i16 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i16, label %_ZSt8_DestroyIN2cv4GArgEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #20, !inline_history !12
  br label %_ZSt8_DestroyIN2cv4GArgEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv4GArgEEvPT_.exit.i.i.i:         ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.av, %i.ap
  br i1 %.not.i.i.i17, label %_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2cv4GArgEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.l
  %i.aw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.an, %bb.l ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv4GArgESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !101
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #22
  br label %_ZNSt6vectorIN2cv4GArgESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv4GArgESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exit.i, %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i19, label %_ZN2cv4GArgD2Ev.exit, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i: ; preds = %_ZNSt6vectorIN2cv4GArgESaIS1_EED2Ev.exit
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) #20, !inline_history !14
  br label %_ZN2cv4GArgD2Ev.exit

_ZN2cv4GArgD2Ev.exit:                             ; preds = %_ZNSt6vectorIN2cv4GArgESaIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i19.1 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i19.1, label %_ZN2cv4GArgD2Ev.exit.1, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.1

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.1: ; preds = %_ZN2cv4GArgD2Ev.exit
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi) #20, !inline_history !14
  br label %_ZN2cv4GArgD2Ev.exit.1

_ZN2cv4GArgD2Ev.exit.1:                           ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.1, %_ZN2cv4GArgD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret ptr %0

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i21: ; preds = %.body
  %i.bm = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #20, !inline_history !14
  br label %.loopexit

bb.n:                                             ; preds = %_ZNSt6vectorIN2cv4GArgESaIS1_EEC2ESt16initializer_listIS1_ERKS2_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2cv4GArgESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  br label %.body14

.body14:                                          ; preds = %bb.k, %bb.j, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.n ], [ %i.ag, %bb.j ], [ %i.ag, %bb.k ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i23, label %_ZN2cv4GArgD2Ev.exit25, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i24

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i24: ; preds = %.body14
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !34
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br) #20, !inline_history !14
  br label %_ZN2cv4GArgD2Ev.exit25

_ZN2cv4GArgD2Ev.exit25:                           ; preds = %.body14, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i24
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i23.1 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i23.1, label %.loopexit, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i24.1

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i24.1: ; preds = %_ZN2cv4GArgD2Ev.exit25
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) #20, !inline_history !14
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN2cv4GArgD2Ev.exit25, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i24.1, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i21, %.body, %.body.thread
  %.pn.pn = phi { ptr, i32 } [ %i.z, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i21 ], [ %i.k, %.body.thread ], [ %i.z, %.body ], [ %.pn, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i24.1 ], [ %.pn, %_ZN2cv4GArgD2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = load ptr, ptr %1, align 8, !tbaa !114    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef 1, i64 noundef %i.g) #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !108
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !34
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109, !noalias !659 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !105, !noalias !659 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !110, !noalias !659 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !110, !noalias !659
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.w = icmp sgt i64 %i.v, 4                     ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i, !prof !111

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !659
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !29, !noalias !659
  store i32 %i.y, ptr %i.u, align 4, !tbaa !29, !noalias !659
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !106
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #22
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !106
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !35

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #21
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !105
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !106
  br i1 %i.w, label %bb.m, label %bb.n, !prof !127

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !29
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !115
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #22
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !116
  %i.ba = load i64, ptr %5, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !106
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !108
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #23
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = load ptr, ptr %1, align 8, !tbaa !114    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef 1, i64 noundef %i.g) #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !108
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !34
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109, !noalias !664 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !105, !noalias !664 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !110, !noalias !664 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !110, !noalias !664
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.w = icmp sgt i64 %i.v, 4                     ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i, !prof !111

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !664
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !29, !noalias !664
  store i32 %i.y, ptr %i.u, align 4, !tbaa !29, !noalias !664
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !106
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #22
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !106
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !35

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #21
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !105
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !106
  br i1 %i.w, label %bb.m, label %bb.n, !prof !127

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !29
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !115
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #22
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !116
  %i.ba = load i64, ptr %5, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !106
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !108
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #23
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = load ptr, ptr %1, align 8, !tbaa !114    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef 1, i64 noundef %i.g) #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !108
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !34
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109, !noalias !669 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !105, !noalias !669 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !110, !noalias !669 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !110, !noalias !669
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.w = icmp sgt i64 %i.v, 4                     ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i, !prof !111

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !669
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !29, !noalias !669
  store i32 %i.y, ptr %i.u, align 4, !tbaa !29, !noalias !669
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !106
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #22
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !106
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !35

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #21
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !105
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !106
  br i1 %i.w, label %bb.m, label %bb.n, !prof !127

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !29
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !115
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #22
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !116
  %i.ba = load i64, ptr %5, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !106
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !108
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #23
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = load ptr, ptr %1, align 8, !tbaa !114    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef 1, i64 noundef %i.g) #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !108
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !34
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109, !noalias !674 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !105, !noalias !674 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !110, !noalias !674 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !110, !noalias !674
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.w = icmp sgt i64 %i.v, 4                     ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i, !prof !111

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !674
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !29, !noalias !674
  store i32 %i.y, ptr %i.u, align 4, !tbaa !29, !noalias !674
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !106
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #22
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !106
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !35

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #21
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !105
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !106
  br i1 %i.w, label %bb.m, label %bb.n, !prof !127

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !29
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !115
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #22
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !116
  %i.ba = load i64, ptr %5, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !106
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !108
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #23
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpEQScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpEQScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpEQScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = load ptr, ptr %1, align 8, !tbaa !114    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef 1, i64 noundef %i.g) #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !108
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !34
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109, !noalias !679 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !105, !noalias !679 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !110, !noalias !679 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !110, !noalias !679
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.w = icmp sgt i64 %i.v, 4                     ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i, !prof !111

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !679
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !29, !noalias !679
  store i32 %i.y, ptr %i.u, align 4, !tbaa !29, !noalias !679
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !106
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #22
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !106
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !35

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #21
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !105
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !106
  br i1 %i.w, label %bb.m, label %bb.n, !prof !127

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !29
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !115
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #22
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !116
  %i.ba = load i64, ptr %5, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !106
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !108
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #23
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpNEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpNEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpNEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = load ptr, ptr %1, align 8, !tbaa !114    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef 1, i64 noundef %i.g) #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !108
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !34
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109, !noalias !684 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !105, !noalias !684 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !110, !noalias !684 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !110, !noalias !684
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.w = icmp sgt i64 %i.v, 4                     ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i, !prof !111

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !684
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !29, !noalias !684
  store i32 %i.y, ptr %i.u, align 4, !tbaa !29, !noalias !684
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !106
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #22
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !106
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !35

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #21
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !105
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !106
  br i1 %i.w, label %bb.m, label %bb.n, !prof !127

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !29
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !115
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #22
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !116
  %i.ba = load i64, ptr %5, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !106
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !108
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #23
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core4GMinESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core4GMinESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core4GMinESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.020 = alloca [24 x i8], align 8          ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 3 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.020)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.020, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 17, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !687 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109, !noalias !687 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !106, !noalias !687 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !noalias !687
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit11, label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !106
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #22
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i.i10 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i10, label %_ZN2cv8GMatDescD2Ev.exit11, label %bb.c

bb.c:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !106
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %.pr to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit11

_ZN2cv8GMatDescD2Ev.exit11:                       ; preds = %bb.b, %_ZN2cv8GMatDescD2Ev.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.r, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.020, i64 17, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.t = ptrtoint ptr %i.d to i64
  %i.u = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit11
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.x = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
end_hunk_1
begin_hunk_2_@_ZN2cv6detail10MetaHelperINS_4gapi4core8GAbsDiffESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE:bb.a
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aj, ptr %0, align 8, !tbaa !114
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !115
  %i.ao = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.al, ptr noundef nonnull %i.aj)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 56) #22
  br label %.body

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !116
  %i.ar = load i64, ptr %5, align 8, !tbaa !108
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.at(ptr noundef nonnull %i.au)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i13 = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i13, label %_ZN2cv8GMatDescD2Ev.exit14, label %bb.l

bb.l:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  %i.ax = ptrtoint ptr %i.f to i64
  %i.ay = sub i64 %i.ax, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.ay) #22
  br label %_ZN2cv8GMatDescD2Ev.exit14

_ZN2cv8GMatDescD2Ev.exit14:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.020)
  ret void

bb.m:                                             ; preds = %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i15, label %_ZN2cv8GMatDescD2Ev.exit16, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !106
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #22
  br label %_ZN2cv8GMatDescD2Ev.exit16

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread32, %bb.i
  %i.bi = phi { ptr, i32 } [ %i.ak, %.thread32 ], [ %i.ap, %bb.i ]
  %i.bj = load i64, ptr %5, align 8, !tbaa !108
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bl(ptr noundef nonnull %i.bm)
          to label %.loopexit unwind label %bb.p

bb.p:                                             ; preds = %.body
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #23
  unreachable

.loopexit:                                        ; preds = %.body, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.o ], [ %i.bi, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i18 = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i18, label %_ZN2cv8GMatDescD2Ev.exit16, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.bp = ptrtoint ptr %i.f to i64
  %i.bq = sub i64 %i.bp, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.bq) #22
  br label %_ZN2cv8GMatDescD2Ev.exit16

_ZN2cv8GMatDescD2Ev.exit16:                       ; preds = %bb.q, %.loopexit, %bb.n, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.az, %bb.n ], [ %i.az, %bb.m ], [ %.pn, %.loopexit ], [ %.pn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.020)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core9GAbsDiffCESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core9GAbsDiffCESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core9GAbsDiffCESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.024 = alloca [24 x i8], align 8          ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 10 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.024)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = load ptr, ptr %1, align 8, !tbaa !114    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef 1, i64 noundef %i.g) #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !108
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !34
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.024, ptr noundef nonnull align 8 dereferenceable(17) %4, i64 17, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109, !noalias !696 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !105, !noalias !696 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i:                                   ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !110, !noalias !696 ; 2 uses
  %.pre1.i = load ptr, ptr %i.l, align 8, !tbaa !110, !noalias !696
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi4.i = phi i64 [ %.pre3.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre2.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i, %.pre-phi4.i        ; 9 uses
  %i.w = icmp sgt i64 %i.v, 4                     ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i, !prof !111

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !696
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread38, label %bb.j

.thread38:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !29, !noalias !696
  store i32 %i.y, ptr %i.u, align 4, !tbaa !29, !noalias !696
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread38, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !106
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #22
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ae, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.024, i64 17, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre-phi.i, %.pre-phi4.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !106
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc12 unwind label %bb.w

.noexc12:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #21
          to label %.noexc13 unwind label %bb.w   ; 5 uses

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !105
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !106
  br i1 %i.w, label %bb.m, label %bb.n, !prof !127

bb.m:                                             ; preds = %.noexc13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc13
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !29
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread40 ; 4 uses

.thread40:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body14

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !115
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #22
  br label %.body14

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !116
  %i.ba = load i64, ptr %5, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i16 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i16, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit17

_ZN2cv8GMatDescD2Ev.exit17:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.024)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ]
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i18, label %_ZN2cv8GMatDescD2Ev.exit19, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !106
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #22
  br label %_ZN2cv8GMatDescD2Ev.exit19

_ZN2cv8GMatDescD2Ev.exit19:                       ; preds = %.body, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body14:                                          ; preds = %.thread40, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread40 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !108
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body14
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #23
  unreachable

.loopexit:                                        ; preds = %.body14, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body14 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i21 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %_ZN2cv8GMatDescD2Ev.exit19
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZN2cv8GMatDescD2Ev.exit19 ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.024)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core4GAndESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core4GAndESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core4GAndESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.020 = alloca [24 x i8], align 8          ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 3 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.020)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.020, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 17, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !699 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109, !noalias !699 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !106, !noalias !699 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !noalias !699
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit11, label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !106
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #22
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i.i10 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i10, label %_ZN2cv8GMatDescD2Ev.exit11, label %bb.c

bb.c:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !106
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %.pr to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.q) #22
  br label %_ZN2cv8GMatDescD2Ev.exit11

_ZN2cv8GMatDescD2Ev.exit11:                       ; preds = %bb.b, %_ZN2cv8GMatDescD2Ev.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.r, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.020, i64 17, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.t = ptrtoint ptr %i.d to i64
  %i.u = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit11
end_hunk_2
begin_hunk_3_@_ZN2cv6detail10MetaHelperINS_4gapi4core10GThresholdESt5tupleIJNS_4GMatENS_7GScalarES7_iEES6_E15getOutMeta_implIJLi0ELi1ELi2ELi3EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.bo) #22
  br label %_ZN2cv8GMatDescD2Ev.exit31

_ZN2cv8GMatDescD2Ev.exit31:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.r
  ret void

bb.s:                                             ; preds = %.invoke
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.i, %bb.s, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.m, %bb.g ], [ %i.bp, %bb.s ], [ %i.aa, %bb.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i32, label %_ZN2cv8GMatDescD2Ev.exit33, label %bb.t

bb.t:                                             ; preds = %.body
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !106
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #22
  br label %_ZN2cv8GMatDescD2Ev.exit33

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body28:                                          ; preds = %.thread50, %bb.o
  %i.by = phi { ptr, i32 } [ %i.ba, %.thread50 ], [ %i.bf, %bb.o ]
  %i.bz = load i64, ptr %7, align 8, !tbaa !108
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  invoke void %i.cb(ptr noundef nonnull %i.cc)
          to label %.loopexit unwind label %bb.v

bb.v:                                             ; preds = %.body28
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #23
  unreachable

.loopexit:                                        ; preds = %.body28, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.u ], [ %i.by, %.body28 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.not.i.i.i.i35 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i35, label %_ZN2cv8GMatDescD2Ev.exit33, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %i.cf = ptrtoint ptr %i.ag to i64
  %i.cg = sub i64 %i.cf, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.cg) #22
  br label %_ZN2cv8GMatDescD2Ev.exit33

_ZN2cv8GMatDescD2Ev.exit33:                       ; preds = %bb.w, %.loopexit, %bb.t, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.t ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.w ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GThresholdOTESt5tupleIJNS_4GMatENS_7GScalarEiEES5_IJS6_S7_EEE10getOutMetaERKSt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSB_INS_4GArgESaISP_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GThresholdOTESt5tupleIJNS_4GMatENS_7GScalarEiEES5_IJS6_S7_EEE15getOutMeta_implIJLi0ELi1ELi2EEJLi0ELi1EEEESt6vectorINS_4util7variantIJNSD_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISL_EERKSN_RKSC_INS_4GArgESaISQ_EENS0_3SeqIJXspT_EEEENSV_IJXspT0_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GThresholdOTESt5tupleIJNS_4GMatENS_7GScalarEiEES5_IJS6_S7_EEE15getOutMeta_implIJLi0ELi1ELi2EEJLi0ELi1EEEESt6vectorINS_4util7variantIJNSD_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISL_EERKSN_RKSC_INS_4GArgESaISQ_EENS0_3SeqIJXspT_EEEENSV_IJXspT0_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %4 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.030 = alloca [24 x i8], align 8          ; 5 uses
  %5 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %6 = alloca [2 x %"class.cv::util::variant.78"], align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.030)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = load ptr, ptr %1, align 8, !tbaa !114    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %.invoke

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !108
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %4, align 8, !tbaa !34
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102
  %i.m = load ptr, ptr %2, align 8, !tbaa !100    ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4                   ; 2 uses
  %.not.i.i.i13 = icmp ugt i64 %i.q, 2
  br i1 %.not.i.i.i13, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i, label %.invoke

.invoke:                                          ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, %bb.a
  %i.r = phi i64 [ 1, %bb.a ], [ 2, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ]
  %i.s = phi i64 [ %i.g, %bb.a ], [ %i.q, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef %i.r, i64 noundef %i.s) #24
          to label %.cont unwind label %bb.w

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i:     ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !94   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  %i.w = call ptr @__dynamic_cast(ptr nonnull %i.u, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIiEE, i64 0) #20
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.g

_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %3, align 8, !tbaa !34
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.f:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

bb.g:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.030, ptr noundef nonnull align 8 dereferenceable(17) %5, i64 17, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !109, !noalias !774 ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !105, !noalias !774 ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = icmp ugt i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %.noexc.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc17 unwind label %bb.w

.noexc17:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #21
          to label %.noexc18 unwind label %bb.w

.noexc18:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.y, align 8, !tbaa !110, !noalias !774 ; 2 uses
  %.pre2.i.i = load ptr, ptr %i.z, align 8, !tbaa !110, !noalias !774
  %.pre3.i.i = ptrtoint ptr %.pre2.i.i to i64
  %.pre4.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %.noexc18, %bb.g
  %.pre-phi5.i.i = phi i64 [ %.pre4.i.i, %.noexc18 ], [ %i.ad, %bb.g ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre3.i.i, %.noexc18 ], [ %i.ac, %bb.g ] ; 2 uses
  %i.ah = phi ptr [ %.pre.i.i, %.noexc18 ], [ %i.ab, %bb.g ] ; 5 uses
  %i.ai = phi ptr [ %i.ag, %.noexc18 ], [ null, %bb.g ] ; 8 uses
  %i.aj = sub i64 %.pre-phi.i.i, %.pre-phi5.i.i   ; 9 uses
  %i.ak = icmp sgt i64 %i.aj, 4                   ; 2 uses
  br i1 %i.ak, label %bb.j, label %bb.k, !prof !111

bb.j:                                             ; preds = %bb.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ah, i64 %i.aj, i1 false), !noalias !774
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = icmp eq i64 %i.aj, 4
  br i1 %i.al, label %.thread46, label %bb.l

.thread46:                                        ; preds = %bb.k
  %i.am = load i32, ptr %i.ah, align 4, !tbaa !29, !noalias !774
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !29, !noalias !774
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not.i.i.i.i19 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.thread46, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !106
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.ah to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ar) #22
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i64 1, ptr %6, align 8, !tbaa !108
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.as, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.030, i64 17, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre-phi.i.i, %.pre-phi5.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.av = getelementptr inbounds i8, ptr null, i64 %i.aj ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !106
  br label %bb.r

bb.n:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ax = icmp ugt i64 %i.aj, 9223372036854775804
  br i1 %i.ax, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc20 unwind label %bb.y

.noexc20:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #21
          to label %.noexc21 unwind label %bb.y   ; 5 uses

.noexc21:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !105
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !109
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aj ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !106
  br i1 %i.ak, label %bb.o, label %bb.p, !prof !127

bb.o:                                             ; preds = %.noexc21
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %i.ai, i64 %i.aj, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %.noexc21
  %i.bc = icmp eq i64 %i.aj, 4
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = load i32, ptr %i.ai, align 4, !tbaa !29
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !29
  br label %bb.r

bb.r:                                             ; preds = %.thread, %bb.o, %bb.p, %bb.q
  %i.be = phi ptr [ %i.ba, %bb.o ], [ %i.ba, %bb.p ], [ %i.ba, %bb.q ], [ %i.av, %.thread ]
  %i.bf = phi ptr [ %i.az, %bb.o ], [ %i.az, %bb.p ], [ %i.az, %bb.q ], [ %i.au, %.thread ]
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !109
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 2, ptr %i.bg, align 8, !tbaa !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bh = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body22

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 112
  store ptr %i.bh, ptr %0, align 8, !tbaa !114
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !115
  %i.bm = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %6, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bh)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 112) #22
  br label %.body22

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !116
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !108
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 64
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.t
  %i.bw = load i64, ptr %6, align 8, !tbaa !108
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit.1 unwind label %bb.u

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit.1: ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN2cv8GMatDescELb0EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit.1
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ae) #22
  br label %_ZNSt10_Head_baseILm0EN2cv8GMatDescELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN2cv8GMatDescELb0EED2Ev.exit: ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit.1, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.030)
  ret void

bb.w:                                             ; preds = %.invoke, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.f, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.ca, %bb.w ], [ %i.x, %bb.f ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit25, label %bb.x

bb.x:                                             ; preds = %.body
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !106
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #22
  br label %_ZN2cv8GMatDescD2Ev.exit25

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body22:                                          ; preds = %.thread48, %bb.s
  %i.cj = phi { ptr, i32 } [ %i.bi, %.thread48 ], [ %i.bn, %bb.s ]
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !108
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !27
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 64
  invoke void %i.cn(ptr noundef nonnull %i.co)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit27 unwind label %bb.z

bb.z:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit27, %.body22
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit27: ; preds = %.body22
  %i.cr = load i64, ptr %6, align 8, !tbaa !108
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !27
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.ct(ptr noundef nonnull %i.cu)
          to label %.loopexit unwind label %bb.z

.loopexit:                                        ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit27, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.y ], [ %i.cj, %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit27 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.not.i.i.i.i.i28 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit25, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ae) #22
  br label %_ZN2cv8GMatDescD2Ev.exit25

_ZN2cv8GMatDescD2Ev.exit25:                       ; preds = %bb.aa, %.loopexit, %bb.x, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.x ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.030)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core8GInRangeESt5tupleIJNS_4GMatENS_7GScalarES7_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core8GInRangeESt5tupleIJNS_4GMatENS_7GScalarES7_EES6_E15getOutMeta_implIJLi0ELi1ELi2EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv5GCall4passIJRNS_4GMatERNS_7GScalarES5_EEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::GScalar", align 16      ; 6 uses
  %5 = alloca %"class.cv::GScalar", align 16      ; 6 uses
  %6 = alloca %"class.cv::GMat", align 16         ; 6 uses
  %7 = alloca %"class.std::vector.67", align 8    ; 13 uses
  %8 = alloca [3 x %"class.cv::GArg"], align 8    ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store i32 2, ptr %8, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 14, ptr %i.a, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26, !noalias !781 ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !27, !noalias !781
  store <2 x ptr> %i.d, ptr %6, align 16, !tbaa !27, !alias.scope !781
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !781
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !29, !noalias !781
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !29, !noalias !781
  br label %_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !781 ; 0 uses
  br label %_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i

_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.j = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.e unwind label %.body.thread ; 3 uses

.body.thread:                                     ; preds = %_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i
end_hunk_3
begin_hunk_4_@_ZN2cv5GCall4passIJRNS_4GMatERNS_7GScalarES5_EEERS0_DpOT_:bb.a
  br label %_ZN2cv4GArgD2Ev.exit.2

_ZN2cv4GArgD2Ev.exit.2:                           ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.2, %_ZN2cv4GArgD2Ev.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret ptr %0

.body:                                            ; preds = %bb.i, %bb.n
  %.08.lpad-body = phi ptr [ %i.ad, %bb.n ], [ %i.o, %bb.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %i.z, %bb.i ]
  br label %bb.t

bb.t:                                             ; preds = %.body, %_ZN2cv4GArgD2Ev.exit30
  %i.ce = phi ptr [ %.08.lpad-body, %.body ], [ %i.cf, %_ZN2cv4GArgD2Ev.exit30 ] ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -16 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i28, label %_ZN2cv4GArgD2Ev.exit30, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i29

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i29: ; preds = %bb.t
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch) #20, !inline_history !14
  br label %_ZN2cv4GArgD2Ev.exit30

_ZN2cv4GArgD2Ev.exit30:                           ; preds = %bb.t, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i29
  %i.cl = icmp eq ptr %i.cf, %8
  br i1 %i.cl, label %.loopexit, label %bb.t

bb.u:                                             ; preds = %_ZNSt6vectorIN2cv4GArgESaIS1_EEC2ESt16initializer_listIS1_ERKS2_.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2cv4GArgESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  br label %.body22

.body22:                                          ; preds = %bb.q, %bb.p, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.u ], [ %i.at, %bb.p ], [ %i.at, %bb.q ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i31, label %_ZN2cv4GArgD2Ev.exit33, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i32

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i32: ; preds = %.body22
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !34
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.co) #20, !inline_history !14
  br label %_ZN2cv4GArgD2Ev.exit33

_ZN2cv4GArgD2Ev.exit33:                           ; preds = %.body22, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i32
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i31.1 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i31.1, label %_ZN2cv4GArgD2Ev.exit33.1, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i32.1

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i32.1: ; preds = %_ZN2cv4GArgD2Ev.exit33
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !34
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #20, !inline_history !14
  br label %_ZN2cv4GArgD2Ev.exit33.1

_ZN2cv4GArgD2Ev.exit33.1:                         ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i32.1, %_ZN2cv4GArgD2Ev.exit33
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i31.2 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i31.2, label %.loopexit, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i32.2

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i32.2: ; preds = %_ZN2cv4GArgD2Ev.exit33.1
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !34
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cy) #20, !inline_history !14
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN2cv4GArgD2Ev.exit30, %_ZN2cv4GArgD2Ev.exit33.1, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i32.2, %.body.thread
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN2cv4GArgD2Ev.exit33.1 ], [ %i.k, %.body.thread ], [ %.pn, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i32.2 ], [ %eh.lpad-body, %_ZN2cv4GArgD2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core8GInRangeESt5tupleIJNS_4GMatENS_7GScalarES7_EES6_E15getOutMeta_implIJLi0ELi1ELi2EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %4 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %5 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %6 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = load ptr, ptr %1, align 8, !tbaa !114    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %.invoke

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !108
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %4, align 8, !tbaa !34
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.not.i.i.i12.not = icmp eq i64 %i.f, 112
  br i1 %.not.i.i.i12.not, label %.invoke, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i13

.invoke:                                          ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, %bb.a
  %i.k = phi i64 [ 1, %bb.a ], [ 2, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef %i.k, i64 noundef %i.g) #24
          to label %.cont unwind label %bb.w

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i13: ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !108
  %.not.i.i14 = icmp eq i64 %i.m, 2
  br i1 %.not.i.i14, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !34
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i13
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx, i64 9, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109, !noalias !788 ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !105, !noalias !788 ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18
  %i.v = icmp ugt i64 %i.u, 9223372036854775804
  br i1 %i.v, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc19 unwind label %bb.w

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #21
          to label %.noexc20 unwind label %bb.w

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !110, !noalias !788 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.p, align 8, !tbaa !110, !noalias !788
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %.noexc20, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc20 ], [ %i.t, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18 ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc20 ], [ %i.s, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18 ] ; 2 uses
  %i.x = phi ptr [ %.pre.i.i, %.noexc20 ], [ %i.r, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18 ] ; 5 uses
  %i.y = phi ptr [ %i.w, %.noexc20 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18 ] ; 8 uses
  %i.z = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.aa = icmp sgt i64 %i.z, 4                    ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !111

bb.j:                                             ; preds = %bb.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.x, i64 %i.z, i1 false), !noalias !788
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %i.z, 4
  br i1 %i.ab, label %.thread55, label %bb.l

.thread55:                                        ; preds = %bb.k
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !29, !noalias !788
  store i32 %i.ac, ptr %i.y, align 4, !tbaa !29, !noalias !788
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.thread55, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !106
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.x to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ah) #22
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i64 1, ptr %6, align 8, !tbaa !108
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ai, align 8
  %.sroa.6.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 1, ptr %.sroa.6.0..sroa_idx37, align 4
  %.sroa.7.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx39, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, i64 9, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i21 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i21, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.al = getelementptr inbounds i8, ptr null, i64 %i.z ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store ptr %i.al, ptr %i.am, align 8, !tbaa !106
  br label %bb.r

bb.n:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.an = icmp ugt i64 %i.z, 9223372036854775804
  br i1 %i.an, label %.noexc.i.i.i.i.i23, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i22, !prof !35

.noexc.i.i.i.i.i23:                               ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc24 unwind label %bb.y

.noexc24:                                         ; preds = %.noexc.i.i.i.i.i23
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i22: ; preds = %bb.n
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #21
          to label %.noexc25 unwind label %bb.y   ; 5 uses

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i22
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !105
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !109
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.z ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !106
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !127

bb.o:                                             ; preds = %.noexc25
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %i.y, i64 %i.z, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %.noexc25
  %i.as = icmp eq i64 %i.z, 4
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = load i32, ptr %i.y, align 4, !tbaa !29
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %.thread
  %i.au = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %bb.p ], [ %i.aq, %bb.q ], [ %i.al, %.thread ]
  %i.av = phi ptr [ %i.ap, %bb.o ], [ %i.ap, %bb.p ], [ %i.ap, %bb.q ], [ %i.ak, %.thread ]
  store ptr %i.au, ptr %i.av, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aw = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread57 ; 4 uses

.thread57:                                        ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body26

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.aw, ptr %0, align 8, !tbaa !114
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !115
  %i.bb = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %6, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.aw)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 56) #22
  br label %.body26

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !116
  %i.be = load i64, ptr %6, align 8, !tbaa !108
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.bg(ptr noundef nonnull %i.bh)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.not.i.i.i.i28 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit29, label %bb.v

bb.v:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.u) #22
  br label %_ZN2cv8GMatDescD2Ev.exit29

_ZN2cv8GMatDescD2Ev.exit29:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.w:                                             ; preds = %.invoke, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.g, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.bk, %bb.w ], [ %i.n, %bb.g ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i30, label %_ZN2cv8GMatDescD2Ev.exit31, label %bb.x

bb.x:                                             ; preds = %.body
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !106
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #22
  br label %_ZN2cv8GMatDescD2Ev.exit31

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i22, %.noexc.i.i.i.i.i23
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body26:                                          ; preds = %.thread57, %bb.s
  %i.bt = phi { ptr, i32 } [ %i.ax, %.thread57 ], [ %i.bc, %bb.s ]
  %i.bu = load i64, ptr %6, align 8, !tbaa !108
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.bw(ptr noundef nonnull %i.bx)
          to label %.loopexit unwind label %bb.z

bb.z:                                             ; preds = %.body26
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #23
  unreachable

.loopexit:                                        ; preds = %.body26, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.y ], [ %i.bt, %.body26 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.not.i.i.i.i33 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i33, label %_ZN2cv8GMatDescD2Ev.exit31, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.u) #22
  br label %_ZN2cv8GMatDescD2Ev.exit31

_ZN2cv8GMatDescD2Ev.exit31:                       ; preds = %bb.aa, %.loopexit, %bb.x, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.x ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core7GSplit3ESt5tupleIJNS_4GMatEEES5_IJS6_S6_S6_EEE10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core7GSplit3ESt5tupleIJNS_4GMatEEES5_IJS6_S6_S6_EEE15getOutMeta_implIJLi0EEJLi0ELi1ELi2EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEENSU_IJXspT0_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv12GKernelTypeMINS_4gapi4core7GSplit3ESt8functionIFSt5tupleIJNS_4GMatES6_S6_EES6_EEE5yieldIJLi0ELi1ELi2EEEES7_RNS_5GCallENS_6detail3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::GMat", align 16         ; 6 uses
  %3 = alloca %"class.cv::GMat", align 16         ; 6 uses
  %4 = alloca %"class.cv::GMat", align 16         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN2cv5GCall5yieldEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::GMat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN2cv5GCall5yieldEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::GMat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1)
          to label %_ZN2cv6detail5YieldINS_4GMatEE5yieldERNS_5GCallEi.exit unwind label %bb.b

_ZN2cv6detail5YieldINS_4GMatEE5yieldERNS_5GCallEi.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN2cv5GCall5yieldEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::GMat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2)
          to label %_ZN2cv4GMatD2Ev.exit16 unwind label %bb.c

_ZN2cv4GMatD2Ev.exit16:                           ; preds = %_ZN2cv6detail5YieldINS_4GMatEE5yieldERNS_5GCallEi.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %i.a = load <2 x ptr>, ptr %4, align 16, !tbaa !27, !noalias !791
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !27, !alias.scope !791
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <2 x ptr>, ptr %3, align 16, !tbaa !27, !noalias !791
  store <2 x ptr> %i.c, ptr %i.b, align 8, !tbaa !27, !alias.scope !791
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load <2 x ptr>, ptr %2, align 16, !tbaa !27, !noalias !791
  store <2 x ptr> %i.e, ptr %i.d, align 8, !tbaa !27, !alias.scope !791
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN2cv6detail5YieldINS_4GMatEE5yieldERNS_5GCallEi.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN2cv4GMatD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN2cv4GMatD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core7GSplit3ESt5tupleIJNS_4GMatEEES5_IJS6_S6_S6_EEE15getOutMeta_implIJLi0EEJLi0ELi1ELi2EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEENSU_IJXspT0_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.125", align 8    ; 17 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 6 uses
  %5 = alloca [3 x %"class.cv::util::variant.78"], align 8 ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv4gapi4core7GSplit37outMetaENS_8GMatDescE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.125") align 8 %3, ptr noundef nonnull align 8 %4)
          to label %bb.b unwind label %bb.y

end_hunk_4
begin_hunk_5_@_ZN2cv5GCall4passIJRNS_4GMatERNS_5Rect_IiEEEEERS0_DpOT_:bb.a
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #20, !inline_history !12
  br label %_ZSt8_DestroyIN2cv4GArgEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv4GArgEEvPT_.exit.i.i.i:         ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.ak, %i.ae
  br i1 %.not.i.i.i13, label %_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2cv4GArgEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.i
  %i.al = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %bb.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv4GArgESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !101
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #22
  br label %_ZNSt6vectorIN2cv4GArgESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv4GArgESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPN2cv4GArgES1_EvT_S3_RSaIT0_E.exit.i, %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i15, label %_ZN2cv4GArgD2Ev.exit, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i: ; preds = %_ZNSt6vectorIN2cv4GArgESaIS1_EED2Ev.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #20, !inline_history !14
  br label %_ZN2cv4GArgD2Ev.exit

_ZN2cv4GArgD2Ev.exit:                             ; preds = %_ZNSt6vectorIN2cv4GArgESaIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i15.1 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i15.1, label %_ZN2cv4GArgD2Ev.exit.1, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.1

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.1: ; preds = %_ZN2cv4GArgD2Ev.exit
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #20, !inline_history !14
  br label %_ZN2cv4GArgD2Ev.exit.1

_ZN2cv4GArgD2Ev.exit.1:                           ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.1, %_ZN2cv4GArgD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret ptr %0

_ZN2cv4GArgD2Ev.exit18:                           ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #20, !inline_history !14
  br label %.loopexit

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv4GArgESaIS1_EEC2ESt16initializer_listIS1_ERKS2_.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2cv4GArgESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  br label %.body10

.body10:                                          ; preds = %bb.h, %bb.g, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.k ], [ %i.v, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i19, label %_ZN2cv4GArgD2Ev.exit21, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i20

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i20: ; preds = %.body10
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #20, !inline_history !14
  br label %_ZN2cv4GArgD2Ev.exit21

_ZN2cv4GArgD2Ev.exit21:                           ; preds = %.body10, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i20
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i19.1 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i19.1, label %.loopexit, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i20.1

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i20.1: ; preds = %_ZN2cv4GArgD2Ev.exit21
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm) #20, !inline_history !14
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN2cv4GArgD2Ev.exit21, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i20.1, %_ZN2cv4GArgD2Ev.exit18, %.body.thread
  %.pn.pn = phi { ptr, i32 } [ %i.bb, %_ZN2cv4GArgD2Ev.exit18 ], [ %i.k, %.body.thread ], [ %.pn, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i20.1 ], [ %.pn, %_ZN2cv4GArgD2Ev.exit21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core5GCropESt5tupleIJNS_4GMatENS_5Rect_IiEEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSD_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISL_EERKSN_RKSC_INS_4GArgESaISQ_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 8 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 18 uses
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.c = load ptr, ptr %2, align 8, !tbaa !100    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef 1, i64 noundef %i.g) #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i:     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  %i.k = call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implINS_5Rect_IiEEEE, i64 0) #20 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.e

_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %3, align 8, !tbaa !34
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.d:                                             ; preds = %_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body

bb.e:                                             ; preds = %_ZN2cv4util8any_castINS_5Rect_IiEEEEPKT_PKNS0_3anyE.exit.i.i.i
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !29
  %i.m = load i64, ptr %4, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load i8, ptr %.sroa.6.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109, !noalias !866 ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !105, !noalias !866 ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp ugt i64 %i.u, 9223372036854775804
  br i1 %i.v, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc12 unwind label %bb.u

.noexc12:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #21
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !110, !noalias !866 ; 2 uses
  %.pre2.i.i = load ptr, ptr %i.p, align 8, !tbaa !110, !noalias !866
  %.pre3.i.i = ptrtoint ptr %.pre2.i.i to i64
  %.pre4.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc13, %bb.e
  %.pre-phi5.i.i = phi i64 [ %.pre4.i.i, %.noexc13 ], [ %i.t, %bb.e ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre3.i.i, %.noexc13 ], [ %i.s, %bb.e ] ; 2 uses
  %i.x = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.r, %bb.e ] ; 5 uses
  %i.y = phi ptr [ %i.w, %.noexc13 ], [ null, %bb.e ] ; 8 uses
  %i.z = sub i64 %.pre-phi.i.i, %.pre-phi5.i.i    ; 9 uses
  %i.aa = icmp sgt i64 %i.z, 4                    ; 2 uses
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !111

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.x, i64 %i.z, i1 false), !noalias !866
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.z, 4
  br i1 %i.ab, label %.thread49, label %bb.j

.thread49:                                        ; preds = %bb.i
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !29, !noalias !866
  store i32 %i.ac, ptr %i.y, align 4, !tbaa !29, !noalias !866
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i14 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread49, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !106
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.x to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ah) #22
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.m, ptr %i.ai, align 8
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.5.0..sroa_idx30, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 %i.n, ptr %.sroa.6.0..sroa_idx32, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i15 = icmp eq i64 %.pre-phi.i.i, %.pre-phi5.i.i
  br i1 %.not.i.i.i.i.i.i.i15, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.al = getelementptr inbounds i8, ptr null, i64 %i.z ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store ptr %i.al, ptr %i.am, align 8, !tbaa !106
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.an = icmp ugt i64 %i.z, 9223372036854775804
  br i1 %i.an, label %.noexc.i.i.i.i.i17, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i16, !prof !35

.noexc.i.i.i.i.i17:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc18 unwind label %bb.w

.noexc18:                                         ; preds = %.noexc.i.i.i.i.i17
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i16: ; preds = %bb.l
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #21
          to label %.noexc19 unwind label %bb.w   ; 5 uses

.noexc19:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i16
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !105
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !109
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.z ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !106
  br i1 %i.aa, label %bb.m, label %bb.n, !prof !127

bb.m:                                             ; preds = %.noexc19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %i.y, i64 %i.z, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc19
  %i.as = icmp eq i64 %i.z, 4
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = load i32, ptr %i.y, align 4, !tbaa !29
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.au = phi ptr [ %i.aq, %bb.m ], [ %i.aq, %bb.n ], [ %i.aq, %bb.o ], [ %i.al, %.thread ]
  %i.av = phi ptr [ %i.ap, %bb.m ], [ %i.ap, %bb.n ], [ %i.ap, %bb.o ], [ %i.ak, %.thread ]
  store ptr %i.au, ptr %i.av, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aw = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread51 ; 4 uses

.thread51:                                        ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aw, ptr %0, align 8, !tbaa !114
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !115
  %i.bb = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.aw)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 56) #22
  br label %.body20

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !116
  %i.be = load i64, ptr %5, align 8, !tbaa !108
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bg(ptr noundef nonnull %i.bh)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i22 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i22, label %_ZN2cv8GMatDescD2Ev.exit23, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.u) #22
  br label %_ZN2cv8GMatDescD2Ev.exit23

_ZN2cv8GMatDescD2Ev.exit23:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bk, %bb.u ], [ %i.l, %bb.d ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit25, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !106
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #22
  br label %_ZN2cv8GMatDescD2Ev.exit25

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i16, %.noexc.i.i.i.i.i17
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body20:                                          ; preds = %.thread51, %bb.q
  %i.bt = phi { ptr, i32 } [ %i.ax, %.thread51 ], [ %i.bc, %bb.q ]
  %i.bu = load i64, ptr %5, align 8, !tbaa !108
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bw(ptr noundef nonnull %i.bx)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body20
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #23
  unreachable

.loopexit:                                        ; preds = %.body20, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.w ], [ %i.bt, %.body20 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i27 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i27, label %_ZN2cv8GMatDescD2Ev.exit25, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.u) #22
  br label %_ZN2cv8GMatDescD2Ev.exit25

_ZN2cv8GMatDescD2Ev.exit25:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4util3any11holder_implINS_5Rect_IiEEE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_5Rect_IiEEEE, i64 16), ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !867
  store ptr %i.a, ptr %0, align 8, !tbaa !94
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util3any11holder_implINS_5Rect_IiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core10GConcatHorESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core10GConcatHorESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core10GConcatHorESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7 = alloca [12 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 9 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 6 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !148, !noalias !874
  %i.c = load i64, ptr %3, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(5) %.sroa.7.0..sroa_idx, i64 5, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109, !noalias !875 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !105, !noalias !875 ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 9223372036854775804
  br i1 %i.k, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #21
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !110, !noalias !875 ; 2 uses
  %.pre3.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !110, !noalias !875
  %.pre4.i.i.i = ptrtoint ptr %.pre3.i.i.i to i64
  %.pre5.i.i.i = ptrtoint ptr %.pre.i.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi6.i.i.i = phi i64 [ %.pre5.i.i.i, %.noexc13 ], [ %i.i, %bb.b ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ %.pre4.i.i.i, %.noexc13 ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.pre.i.i.i, %.noexc13 ], [ %i.g, %bb.b ] ; 3 uses
  %i.n = phi ptr [ %i.l, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.o = sub i64 %.pre-phi.i.i.i, %.pre-phi6.i.i.i ; 9 uses
  %i.p = icmp sgt i64 %i.o, 4                     ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f, !prof !111

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.n, ptr align 4 %i.m, i64 %i.o, i1 false), !noalias !875
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq i64 %i.o, 4
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.m, align 4, !tbaa !29, !noalias !875
  store i32 %i.r, ptr %i.n, align 4, !tbaa !29, !noalias !875
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.s = add nsw i32 %.sroa.5.0.copyload, %i.b
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !106
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #22
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !105
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.aa = phi ptr [ %i.m, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !106
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #22
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.c, ptr %i.ag, align 8
  %.sroa.5.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.s, ptr %.sroa.5.0..sroa_idx28, align 8
  %.sroa.7.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %5, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %.sroa.7.0..sroa_idx30, ptr noundef nonnull align 4 dereferenceable(5) %.sroa.7, i64 5, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre-phi.i.i.i, %.pre-phi6.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aj = getelementptr inbounds i8, ptr null, i64 %i.o ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !106
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.al = icmp ugt i64 %i.o, 9223372036854775804
  br i1 %i.al, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc16 unwind label %bb.x

.noexc16:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21
          to label %.noexc17 unwind label %bb.x   ; 5 uses

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !109
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.o ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !106
  br i1 %i.p, label %bb.l, label %bb.m, !prof !127

bb.l:                                             ; preds = %.noexc17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %i.n, i64 %i.o, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc17
  %i.aq = icmp eq i64 %i.o, 4
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = load i32, ptr %i.n, align 4, !tbaa !29
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.as = phi ptr [ %i.ao, %bb.l ], [ %i.ao, %bb.m ], [ %i.ao, %bb.n ], [ %i.aj, %.thread ]
  %i.at = phi ptr [ %i.an, %bb.l ], [ %i.an, %bb.m ], [ %i.an, %bb.n ], [ %i.ai, %.thread ]
  store ptr %i.as, ptr %i.at, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.au = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread46 ; 4 uses

.thread46:                                        ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.au, ptr %0, align 8, !tbaa !114
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !115
  %i.az = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.au)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 56) #22
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !116
  %i.bc = load i64, ptr %5, align 8, !tbaa !108
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.be(ptr noundef nonnull %i.bf)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i18 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i18, label %_ZN2cv8GMatDescD2Ev.exit19, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.j) #22
  br label %_ZN2cv8GMatDescD2Ev.exit19

_ZN2cv8GMatDescD2Ev.exit19:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit21

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i20, label %_ZN2cv8GMatDescD2Ev.exit21, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !106
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #22
  br label %_ZN2cv8GMatDescD2Ev.exit21

_ZN2cv8GMatDescD2Ev.exit21:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.t ], [ %i.bj, %bb.u ], [ %i.bj, %bb.v ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i22, label %_ZN2cv8GMatDescD2Ev.exit23, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit21
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !106
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #22
  br label %_ZN2cv8GMatDescD2Ev.exit23

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread46, %bb.p
  %i.bz = phi { ptr, i32 } [ %i.av, %.thread46 ], [ %i.ba, %bb.p ]
  %i.ca = load i64, ptr %5, align 8, !tbaa !108
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !27
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.cc(ptr noundef nonnull %i.cd)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #23
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.by, %bb.x ], [ %i.bz, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i25 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit23, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.j) #22
  br label %_ZN2cv8GMatDescD2Ev.exit23

_ZN2cv8GMatDescD2Ev.exit23:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit21
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit21 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core11GConcatVertESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core11GConcatVertESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core11GConcatVertESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.027 = alloca [12 x i8], align 8          ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 9 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 6 uses
  %5 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.027)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149, !noalias !882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.027, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i8, ptr %.sroa.7.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109, !noalias !883 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !105, !noalias !883 ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 9223372036854775804
  br i1 %i.k, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #21
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !110, !noalias !883 ; 2 uses
  %.pre3.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !110, !noalias !883
  %.pre4.i.i.i = ptrtoint ptr %.pre3.i.i.i to i64
  %.pre5.i.i.i = ptrtoint ptr %.pre.i.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi6.i.i.i = phi i64 [ %.pre5.i.i.i, %.noexc13 ], [ %i.i, %bb.b ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ %.pre4.i.i.i, %.noexc13 ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.pre.i.i.i, %.noexc13 ], [ %i.g, %bb.b ] ; 3 uses
  %i.n = phi ptr [ %i.l, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.o = sub i64 %.pre-phi.i.i.i, %.pre-phi6.i.i.i ; 9 uses
  %i.p = icmp sgt i64 %i.o, 4                     ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f, !prof !111

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.n, ptr align 4 %i.m, i64 %i.o, i1 false), !noalias !883
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq i64 %i.o, 4
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.m, align 4, !tbaa !29, !noalias !883
  store i32 %i.r, ptr %i.n, align 4, !tbaa !29, !noalias !883
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.s = add nsw i32 %.sroa.5.0.copyload, %i.b
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !106
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #22
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !105
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.aa = phi ptr [ %i.m, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !106
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #22
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 1, ptr %5, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.027, i64 12, i1 false)
  %.sroa.5.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.s, ptr %.sroa.5.0..sroa_idx28, align 4
  %.sroa.7.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 %i.c, ptr %.sroa.7.0..sroa_idx30, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre-phi.i.i.i, %.pre-phi6.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aj = getelementptr inbounds i8, ptr null, i64 %i.o ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !106
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.al = icmp ugt i64 %i.o, 9223372036854775804
  br i1 %i.al, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc16 unwind label %bb.x

.noexc16:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21
          to label %.noexc17 unwind label %bb.x   ; 5 uses

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !109
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.o ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !106
  br i1 %i.p, label %bb.l, label %bb.m, !prof !127

bb.l:                                             ; preds = %.noexc17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %i.n, i64 %i.o, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc17
  %i.aq = icmp eq i64 %i.o, 4
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = load i32, ptr %i.n, align 4, !tbaa !29
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.as = phi ptr [ %i.ao, %bb.l ], [ %i.ao, %bb.m ], [ %i.ao, %bb.n ], [ %i.aj, %.thread ]
  %i.at = phi ptr [ %i.an, %bb.l ], [ %i.an, %bb.m ], [ %i.an, %bb.n ], [ %i.ai, %.thread ]
  store ptr %i.as, ptr %i.at, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.au = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread46 ; 4 uses

.thread46:                                        ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.au, ptr %0, align 8, !tbaa !114
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !115
  %i.az = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.au)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 56) #22
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !116
  %i.bc = load i64, ptr %5, align 8, !tbaa !108
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.be(ptr noundef nonnull %i.bf)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i18 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i18, label %_ZN2cv8GMatDescD2Ev.exit19, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.j) #22
  br label %_ZN2cv8GMatDescD2Ev.exit19

_ZN2cv8GMatDescD2Ev.exit19:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit21

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i20, label %_ZN2cv8GMatDescD2Ev.exit21, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !106
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #22
  br label %_ZN2cv8GMatDescD2Ev.exit21

_ZN2cv8GMatDescD2Ev.exit21:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.t ], [ %i.bj, %bb.u ], [ %i.bj, %bb.v ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i22, label %_ZN2cv8GMatDescD2Ev.exit23, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit21
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !106
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #22
  br label %_ZN2cv8GMatDescD2Ev.exit23

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread46, %bb.p
  %i.bz = phi { ptr, i32 } [ %i.av, %.thread46 ], [ %i.ba, %bb.p ]
  %i.ca = load i64, ptr %5, align 8, !tbaa !108
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !27
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.cc(ptr noundef nonnull %i.cd)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #23
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.by, %bb.x ], [ %i.bz, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i.i25 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit23, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.j) #22
  br label %_ZN2cv8GMatDescD2Ev.exit23

_ZN2cv8GMatDescD2Ev.exit23:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit21
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit21 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core4GLUTESt5tupleIJNS_4GMatENS_3MatEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core4GLUTESt5tupleIJNS_4GMatENS_3MatEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv5GCall4passIJRNS_4GMatERNS_3MatEEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::GMat", align 16         ; 6 uses
  %5 = alloca %"class.std::vector.67", align 8    ; 13 uses
  %6 = alloca [2 x %"class.cv::GArg"], align 8    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i32 2, ptr %6, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 14, ptr %i.a, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26, !noalias !886 ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !27, !noalias !886
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !27, !alias.scope !886
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !886
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !29, !noalias !886
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !29, !noalias !886
  br label %_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !886 ; 0 uses
  br label %_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i

_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.j = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.e unwind label %.body.thread ; 5 uses

.body.thread:                                     ; preds = %_ZN2cv6detail9WrapValueINS_4GMatEvE4wrapERKS2_.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4GMatD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
end_hunk_5
begin_hunk_6_@_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EE5resetINS1_8TypeHintINS0_7Point3_IfEEEEEENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPSC_:bb.a
          to label %_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EEC2INS1_8TypeHintINS0_7Point3_IfEEEEvEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #20 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 8) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #24
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #23
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EEC2INS1_8TypeHintINS0_7Point3_IfEEEEvEEPT_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !32
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv6detail8TypeHintINS0_7Point3_IfEEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.k, align 8, !tbaa !208
  store ptr %1, ptr %0, align 8, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 8 uses
  store ptr %i.a, ptr %i.l, align 8, !tbaa !26
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EEC2INS1_8TypeHintINS0_7Point3_IfEEEEvEEPT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.n, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !32
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #20, !inline_history !10
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #20, !inline_history !10
  br label %_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.l ], [ %i.aa, %bb.m ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.n, label %_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !35

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #20
  br label %_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EEC2INS1_8TypeHintINS0_7Point3_IfEEEEvEEPT_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv6detail8TypeHintINS0_7Point3_IfEEEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv6detail8TypeHintINS0_7Point3_IfEEEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !208  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv6detail8TypeHintINS0_7Point3_IfEEEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv6detail8TypeHintINS0_7Point3_IfEEEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6detail8TypeHintINS_7Point3_IfEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core10GTransposeESt5tupleIJNS_4GMatEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi4core10GTransposeESt5tupleIJNS_4GMatEEES6_E15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core10GTransposeESt5tupleIJNS_4GMatEEES6_E15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 9 uses
  %4 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 18 uses
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !149, !noalias !1002 ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !148, !noalias !1002 ; 2 uses
  %i.e = load i64, ptr %3, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load i8, ptr %.sroa.6.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109, !noalias !1003 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !105, !noalias !1003 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.m, 9223372036854775804
  br i1 %i.n, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !35

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #21
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !110, !noalias !1003 ; 2 uses
  %.pre2.i.i = load ptr, ptr %i.h, align 8, !tbaa !110, !noalias !1003
  %.pre3.i.i = ptrtoint ptr %.pre2.i.i to i64
  %.pre4.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %.noexc8, %bb.a
  %.pre-phi5.i.i = phi i64 [ %.pre4.i.i, %.noexc8 ], [ %i.l, %bb.a ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre3.i.i, %.noexc8 ], [ %i.k, %bb.a ] ; 2 uses
  %i.p = phi ptr [ %.pre.i.i, %.noexc8 ], [ %i.j, %bb.a ] ; 5 uses
  %i.q = phi ptr [ %i.o, %.noexc8 ], [ null, %bb.a ] ; 8 uses
  %i.r = sub i64 %.pre-phi.i.i, %.pre-phi5.i.i    ; 9 uses
  %i.s = icmp sgt i64 %i.r, 4                     ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e, !prof !111

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.q, ptr align 4 %i.p, i64 %i.r, i1 false), !noalias !1003
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %i.r, 4
  br i1 %i.t, label %.thread38, label %bb.f

.thread38:                                        ; preds = %bb.e
  %i.u = load i32, ptr %i.p, align 4, !tbaa !29, !noalias !1003
  store i32 %i.u, ptr %i.q, align 4, !tbaa !29, !noalias !1003
  %.sroa.2.0.insert.ext.i39 = zext i32 %i.d to i64
  %.sroa.2.0.insert.shift.i40 = shl nuw i64 %.sroa.2.0.insert.ext.i39, 32
  %.sroa.0.0.insert.ext.i41 = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i42 = or disjoint i64 %.sroa.2.0.insert.shift.i40, %.sroa.0.0.insert.ext.i41
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.2.0.insert.ext.i = zext i32 %i.d to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.thread38, %bb.f
  %.sroa.0.0.insert.insert.i44 = phi i64 [ %.sroa.0.0.insert.insert.i42, %.thread38 ], [ %.sroa.0.0.insert.insert.i, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !106
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.p to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.z) #22
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.f, %bb.g
  %.sroa.0.0.insert.insert.i45 = phi i64 [ %.sroa.0.0.insert.insert.i, %bb.f ], [ %.sroa.0.0.insert.insert.i44, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i64 1, ptr %4, align 8, !tbaa !108
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.aa, align 8
  %.sroa.5.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.sroa.0.0.insert.insert.i45, ptr %.sroa.5.0..sroa_idx22, align 8
  %.sroa.6.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.f, ptr %.sroa.6.0..sroa_idx24, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i9 = icmp eq i64 %.pre-phi.i.i, %.pre-phi5.i.i
  br i1 %.not.i.i.i.i.i.i.i9, label %.thread, label %bb.h

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = getelementptr inbounds i8, ptr null, i64 %i.r ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !106
  br label %bb.l

bb.h:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.af = icmp ugt i64 %i.r, 9223372036854775804
  br i1 %i.af, label %.noexc.i.i.i.i.i11, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10, !prof !35

.noexc.i.i.i.i.i11:                               ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc12 unwind label %bb.s

.noexc12:                                         ; preds = %.noexc.i.i.i.i.i11
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10: ; preds = %bb.h
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #21
          to label %.noexc13 unwind label %bb.s   ; 5 uses

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !105
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !109
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.r ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !106
  br i1 %i.s, label %bb.i, label %bb.j, !prof !127

bb.i:                                             ; preds = %.noexc13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr align 4 %i.q, i64 %i.r, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %.noexc13
  %i.ak = icmp eq i64 %i.r, 4
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load i32, ptr %i.q, align 4, !tbaa !29
  store i32 %i.al, ptr %i.ag, align 4, !tbaa !29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %.thread
  %i.am = phi ptr [ %i.ai, %bb.i ], [ %i.ai, %bb.j ], [ %i.ai, %bb.k ], [ %i.ad, %.thread ]
  %i.an = phi ptr [ %i.ah, %bb.i ], [ %i.ah, %bb.j ], [ %i.ah, %bb.k ], [ %i.ac, %.thread ]
  store ptr %i.am, ptr %i.an, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ao = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread46 ; 4 uses

.thread46:                                        ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.ao, ptr %0, align 8, !tbaa !114
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !115
  %i.at = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %4, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ao)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 56) #22
  br label %.body

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.av, align 8, !tbaa !116
  %i.aw = load i64, ptr %4, align 8, !tbaa !108
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.ay(ptr noundef nonnull %i.az)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.not.i.i.i.i14 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.p

bb.p:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.m) #22
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.p
  ret void

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i16, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !106
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #22
  br label %_ZN2cv8GMatDescD2Ev.exit17

bb.s:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10, %.noexc.i.i.i.i.i11
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread46, %bb.m
  %i.bk = phi { ptr, i32 } [ %i.ap, %.thread46 ], [ %i.au, %bb.m ]
  %i.bl = load i64, ptr %4, align 8, !tbaa !108
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.bn(ptr noundef nonnull %i.bo)
          to label %.loopexit unwind label %bb.t

bb.t:                                             ; preds = %.body
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #23
  unreachable

.loopexit:                                        ; preds = %.body, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.s ], [ %i.bk, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.not.i.i.i.i19 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.u

bb.u:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.m) #22
  br label %_ZN2cv8GMatDescD2Ev.exit17

_ZN2cv8GMatDescD2Ev.exit17:                       ; preds = %bb.u, %.loopexit, %bb.r, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.r ], [ %i.bc, %bb.q ], [ %.pn, %.loopexit ], [ %.pn, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi9streaming5GSizeESt5tupleIJNS_4GMatEEENS_7GOpaqueINS_5Size_IiEEEEE10getOutMetaERKSt6vectorINS_4util7variantIJNSE_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISM_EERKSD_INS_4GArgESaISR_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi9streaming5GSizeESt5tupleIJNS_4GMatEEENS_7GOpaqueINS_5Size_IiEEEEE15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSF_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISN_EERKSP_RKSE_INS_4GArgESaISS_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi9streaming5GSizeESt5tupleIJNS_4GMatEEENS_7GOpaqueINS_5Size_IiEEEEE15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSF_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISN_EERKSP_RKSE_INS_4GArgESaISS_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %4 = alloca [1 x %"class.cv::util::variant.78"], align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i64 4, ptr %4, align 8, !tbaa !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 4 uses

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.h, ptr %0, align 8, !tbaa !114
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !115
  %i.m = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %4, ptr noundef nonnull %i.j, ptr noundef nonnull %i.h)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 56) #22
  br label %.body

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !116
  %i.p = load i64, ptr %4, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @constinit.15, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.r(ptr noundef nonnull %i.s)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

end_hunk_6
