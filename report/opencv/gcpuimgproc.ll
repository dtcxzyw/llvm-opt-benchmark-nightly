Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gcpuimgproc?download=true
inline.NumInlined: 5307
inline.NumDeleted: 1411
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv6detail10MetaHelperINS_4gapi7imgproc13GMorphologyExESt5tupleIJNS_4GMatENS_10MorphTypesENS_3MatENS_6Point_IiEEiNS_11BorderTypesENS_7Scalar_IdEEEES6_E15getOutMeta_implIJLi0ELi1ELi2ELi3ELi4ELi5ELi6EEEESt6vectorINS_4util7variantIJNSI_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISQ_EERKSS_RKSH_INS_4GArgESaISV_EENS0_3SeqIJXspT_EEEE:bb.a
  br i1 %.not.i.i.i.i26, label %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZNK2cv4GArg3getINS_3MatEEERKT_v.exit.i

_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !454
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %7, align 8, !tbaa !60, !noalias !454
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %7) #27
          to label %bb.e unwind label %bb.f, !noalias !454

bb.e:                                             ; preds = %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.f:                                             ; preds = %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !454
  br label %.body

_ZNK2cv4GArg3getINS_3MatEEERKT_v.exit.i:          ; preds = %_ZN2cv4util8any_castINS_3MatEEEPKT_PKNS0_3anyE.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.s)
          to label %_ZN2cv6detail11get_in_metaINS_3MatEEENSt9enable_ifIXsr15is_nongapi_typeIT_EE5valueES4_E4typeERKSt6vectorINS_4util7variantIJNS8_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISG_EERKS7_INS_4GArgESaISL_EEi.exit unwind label %bb.ai

_ZN2cv6detail11get_in_metaINS_3MatEEENSt9enable_ifIXsr15is_nongapi_typeIT_EE5valueES4_E4typeERKSt6vectorINS_4util7variantIJNS8_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISG_EERKS7_INS_4GArgESaISL_EEi.exit: ; preds = %_ZNK2cv4GArg3getINS_3MatEEERKT_v.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.u = load ptr, ptr %2, align 8, !tbaa !92     ; 5 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 4                   ; 3 uses
  %.not.i.i.i31 = icmp ugt i64 %i.y, 3
  br i1 %.not.i.i.i31, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i32, label %.invoke96

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i32:   ; preds = %_ZN2cv6detail11get_in_metaINS_3MatEEENSt9enable_ifIXsr15is_nongapi_typeIT_EE5valueES4_E4typeERKSt6vectorINS_4util7variantIJNS8_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISG_EERKS7_INS_4GArgESaISL_EEi.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2cv4util8any_castINS_6Point_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castINS_6Point_IiEEEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castINS_6Point_IiEEEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i32
  %i.ac = call ptr @__dynamic_cast(ptr nonnull %i.aa, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implINS_6Point_IiEEEE, i64 0) #24
  %.not.i.i.i.i33 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i33, label %_ZN2cv4util8any_castINS_6Point_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.i

_ZN2cv4util8any_castINS_6Point_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castINS_6Point_IiEEEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %6, align 8, !tbaa !60
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %6) #27
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN2cv4util8any_castINS_6Point_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.h:                                             ; preds = %_ZN2cv4util8any_castINS_6Point_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body35

bb.i:                                             ; preds = %_ZN2cv4util8any_castINS_6Point_IiEEEEPKT_PKNS0_3anyE.exit.i.i.i
  %.not.i.i.i37.not = icmp eq i64 %i.x, 64
  br i1 %.not.i.i.i37.not, label %.invoke96, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i38

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i38:   ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i38
  %i.ah = call ptr @__dynamic_cast(ptr nonnull %i.af, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIiEE, i64 0) #24
  %.not.i.i.i.i39 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i39, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.l

_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %5, align 8, !tbaa !60
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.k:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body35

bb.l:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i
  %.not.i.i.i43 = icmp ugt i64 %i.y, 5
  br i1 %.not.i.i.i43, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i44, label %.invoke96

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i44:   ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !58 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN2cv4util8any_castINS_11BorderTypesEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castINS_11BorderTypesEEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castINS_11BorderTypesEEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i44
  %i.am = call ptr @__dynamic_cast(ptr nonnull %i.ak, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implINS_11BorderTypesEEE, i64 0) #24
  %.not.i.i.i.i45 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i45, label %_ZN2cv4util8any_castINS_11BorderTypesEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.o

_ZN2cv4util8any_castINS_11BorderTypesEEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castINS_11BorderTypesEEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %4, align 8, !tbaa !60
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #27
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN2cv4util8any_castINS_11BorderTypesEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.n:                                             ; preds = %_ZN2cv4util8any_castINS_11BorderTypesEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body35

bb.o:                                             ; preds = %_ZN2cv4util8any_castINS_11BorderTypesEEEPKT_PKNS0_3anyE.exit.i.i.i
  %.not.i.i.i49.not = icmp eq i64 %i.x, 96
  br i1 %.not.i.i.i49.not, label %.invoke96, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i50

.invoke96:                                        ; preds = %bb.o, %bb.l, %bb.i, %_ZN2cv6detail11get_in_metaINS_3MatEEENSt9enable_ifIXsr15is_nongapi_typeIT_EE5valueES4_E4typeERKSt6vectorINS_4util7variantIJNS8_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISG_EERKS7_INS_4GArgESaISL_EEi.exit
  %i.ao = phi i64 [ 5, %bb.l ], [ 4, %bb.i ], [ 3, %_ZN2cv6detail11get_in_metaINS_3MatEEENSt9enable_ifIXsr15is_nongapi_typeIT_EE5valueES4_E4typeERKSt6vectorINS_4util7variantIJNS8_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISG_EERKS7_INS_4GArgESaISL_EEi.exit ], [ 6, %bb.o ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, i64 noundef %i.ao, i64 noundef %i.y) #27
          to label %.cont97 unwind label %bb.aj

.cont97:                                          ; preds = %.invoke96
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i50:   ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !58, !noalias !455 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN2cv4util8any_castINS_7Scalar_IdEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castINS_7Scalar_IdEEEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castINS_7Scalar_IdEEEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i50
  %i.as = call ptr @__dynamic_cast(ptr nonnull %i.aq, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implINS_7Scalar_IdEEEE, i64 0) #24, !noalias !455
  %.not.i.i.i.i51 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i51, label %_ZN2cv4util8any_castINS_7Scalar_IdEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.r

_ZN2cv4util8any_castINS_7Scalar_IdEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castINS_7Scalar_IdEEEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !455
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %3, align 8, !tbaa !60, !noalias !455
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
          to label %bb.p unwind label %bb.q, !noalias !455

bb.p:                                             ; preds = %_ZN2cv4util8any_castINS_7Scalar_IdEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.q:                                             ; preds = %_ZN2cv4util8any_castINS_7Scalar_IdEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24, !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !455
  br label %.body35

bb.r:                                             ; preds = %_ZN2cv4util8any_castINS_7Scalar_IdEEEEPKT_PKNS0_3anyE.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.070, ptr noundef nonnull align 8 dereferenceable(17) %9, i64 17, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !120, !noalias !456 ; 2 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !116, !noalias !456 ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = icmp ugt i64 %i.ba, 9223372036854775804
  br i1 %i.bb, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !68

.noexc.i.i.i.i:                                   ; preds = %bb.s
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc55 unwind label %bb.aj

.noexc55:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.s
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #28
          to label %.noexc56 unwind label %bb.aj

.noexc56:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.au, align 8, !tbaa !121, !noalias !456 ; 2 uses
  %.pre1.i = load ptr, ptr %i.av, align 8, !tbaa !121, !noalias !456
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i to i64
  br label %bb.t

bb.t:                                             ; preds = %.noexc56, %bb.r
  %.pre-phi4.i = phi i64 [ %.pre3.i, %.noexc56 ], [ %i.az, %bb.r ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre2.i, %.noexc56 ], [ %i.ay, %bb.r ] ; 2 uses
  %i.bd = phi ptr [ %.pre.i, %.noexc56 ], [ %i.ax, %bb.r ] ; 2 uses
  %i.be = phi ptr [ %i.bc, %.noexc56 ], [ null, %bb.r ] ; 8 uses
  %i.bf = sub i64 %.pre-phi.i, %.pre-phi4.i       ; 9 uses
  %i.bg = icmp sgt i64 %i.bf, 4                   ; 2 uses
  br i1 %i.bg, label %bb.u, label %bb.v, !prof !122

bb.u:                                             ; preds = %bb.t
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.be, ptr align 4 %i.bd, i64 %i.bf, i1 false), !noalias !456
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.bh = icmp eq i64 %i.bf, 4
  br i1 %i.bh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bi = load i32, ptr %i.bd, align 4, !tbaa !67, !noalias !456
  store i32 %i.bi, ptr %i.be, align 4, !tbaa !67, !noalias !456
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #24
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i57, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !117
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #26
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store i64 1, ptr %11, align 8, !tbaa !119
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bp, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.070, i64 17, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre-phi.i, %.pre-phi4.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.z

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bs = getelementptr inbounds i8, ptr null, i64 %i.bf ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !117
  br label %bb.ad

bb.z:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.bu = icmp ugt i64 %i.bf, 9223372036854775804
  br i1 %i.bu, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !68

.noexc.i.i.i.i.i:                                 ; preds = %bb.z
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc58 unwind label %bb.al

.noexc58:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.z
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #28
          to label %.noexc59 unwind label %bb.al  ; 5 uses

.noexc59:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.bv, ptr %i.bq, align 8, !tbaa !116
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 4 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !120
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bf ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !117
  br i1 %i.bg, label %bb.aa, label %bb.ab, !prof !147

bb.aa:                                            ; preds = %.noexc59
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr align 4 %i.be, i64 %i.bf, i1 false)
  br label %bb.ad

bb.ab:                                            ; preds = %.noexc59
  %i.bz = icmp eq i64 %i.bf, 4
  br i1 %i.bz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ca = load i32, ptr %i.be, align 4, !tbaa !67
  store i32 %i.ca, ptr %i.bv, align 4, !tbaa !67
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %.thread
  %i.cb = phi ptr [ %i.bx, %bb.aa ], [ %i.bx, %bb.ab ], [ %i.bx, %bb.ac ], [ %i.bs, %.thread ]
  %i.cc = phi ptr [ %i.bw, %bb.aa ], [ %i.bw, %bb.ab ], [ %i.bw, %bb.ac ], [ %i.br, %.thread ]
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.cd = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread94 ; 4 uses

.thread94:                                        ; preds = %bb.ad
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body60

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.ad
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %i.cd, ptr %0, align 8, !tbaa !125
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !126
  %i.ci = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %11, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cd)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 56) #26
  br label %.body60

bb.af:                                            ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !127
  %i.cl = load i64, ptr %11, align 8, !tbaa !119
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr @constinit.7, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !75
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 8
  invoke void %i.cn(ptr noundef nonnull %i.co)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #25
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %.not.i.i.i.i62 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i62, label %_ZN2cv8GMatDescD2Ev.exit63, label %bb.ah

bb.ah:                                            ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.ba) #26
  br label %_ZN2cv8GMatDescD2Ev.exit63

_ZN2cv8GMatDescD2Ev.exit63:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.070)
  ret void

bb.ai:                                            ; preds = %.invoke, %_ZNK2cv4GArg3getINS_3MatEEERKT_v.exit.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %.invoke96, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body35

.body35:                                          ; preds = %bb.k, %bb.aj, %bb.q, %bb.n, %bb.h
  %eh.lpad-body36 = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.ai, %bb.k ], [ %i.an, %bb.n ], [ %i.cs, %bb.aj ], [ %i.at, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #24
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f, %bb.ai, %.body35
  %.pn = phi { ptr, i32 } [ %eh.lpad-body36, %.body35 ], [ %i.l, %bb.c ], [ %i.cr, %bb.ai ], [ %i.r, %bb.f ]
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i64 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i64, label %_ZN2cv8GMatDescD2Ev.exit65, label %bb.ak

bb.ak:                                            ; preds = %.body
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !117
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #26
  br label %_ZN2cv8GMatDescD2Ev.exit65

_ZN2cv8GMatDescD2Ev.exit65:                       ; preds = %.body, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZN2cv8GMatDescD2Ev.exit68

bb.al:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body60:                                          ; preds = %.thread94, %bb.ae
  %i.db = phi { ptr, i32 } [ %i.ce, %.thread94 ], [ %i.cj, %bb.ae ]
  %i.dc = load i64, ptr %11, align 8, !tbaa !119
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr @constinit.7, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !75
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 8
  invoke void %i.de(ptr noundef nonnull %i.df)
          to label %.loopexit unwind label %bb.am

bb.am:                                            ; preds = %.body60
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #25
  unreachable

.loopexit:                                        ; preds = %.body60, %bb.al
  %.pn21 = phi { ptr, i32 } [ %i.da, %bb.al ], [ %i.db, %.body60 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %.not.i.i.i.i67 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i67, label %_ZN2cv8GMatDescD2Ev.exit68, label %bb.an

bb.an:                                            ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.ba) #26
  br label %_ZN2cv8GMatDescD2Ev.exit68

_ZN2cv8GMatDescD2Ev.exit68:                       ; preds = %bb.an, %.loopexit, %_ZN2cv8GMatDescD2Ev.exit65
  %.pn21.pn = phi { ptr, i32 } [ %.pn, %_ZN2cv8GMatDescD2Ev.exit65 ], [ %.pn21, %.loopexit ], [ %.pn21, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.070)
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI9GCPUSobelEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GCPUKernel", align 8    ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN2cv4gapi3cpu7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN2cv14GCPUKernelImplI9GCPUSobelNS_4gapi7imgproc6GSobelEE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GCPUKernel") align 8 %3)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc unwind label %bb.w     ; 9 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_10GCPUKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.d, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79
  store ptr %i.g, ptr %i.e, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.d, ptr noundef nonnull align 8 dereferenceable(65) %3, i64 16, i1 false), !tbaa.struct !80
  store ptr %i.i, ptr %i.j, align 8, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i

_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i: ; preds = %bb.c, %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82
  store ptr %i.n, ptr %i.l, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i4.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.not.i4.i.i.i, label %_ZN2cv10GCPUKernelD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
end_hunk_0
begin_hunk_1_@_ZN2cv6detail13OCVCallHelperI9GCPUCannySt5tupleIJNS_4GMatEddibEES3_IJS4_EEE9call_implIJLi0ELi1ELi2ELi3ELi4EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSB_IJXspT0_EEEE:bb.a

.body:                                            ; preds = %bb.h, %bb.w, %bb.ab, %bb.p, %bb.y, %bb.x, %bb.l, %bb.v, %bb.d
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.ay, %bb.v ], [ %i.t, %bb.h ], [ %i.az, %bb.w ], [ %i.aa, %bb.l ], [ %i.ba, %bb.x ], [ %.pn, %bb.ab ], [ %i.bb, %bb.y ], [ %i.ah, %bb.p ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZN2cv5CannyERKNS_11_InputArrayERKNS_12_OutputArrayEddib(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc6GCannyESt5tupleIJNS_4GMatEddibEES6_E15getOutMeta_implIJLi0ELi1ELi2ELi3ELi4EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %4 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %5 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %6 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %7 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %8 = alloca [1 x %"class.cv::util::variant"], align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = load ptr, ptr %2, align 8, !tbaa !92     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i, label %.invoke

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i:     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  %i.k = call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIdEE, i64 0) #24
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.d

_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %6, align 8, !tbaa !60
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %6) #27
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.c:                                             ; preds = %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body

bb.d:                                             ; preds = %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.i.i.i
  %.not.i.i.i16.not = icmp eq i64 %i.f, 32
  br i1 %.not.i.i.i16.not, label %.invoke, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i17

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i17:   ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i.i.i20, label %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.i.i.i18

_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.i.i.i18: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i17
  %i.p = call ptr @__dynamic_cast(ptr nonnull %i.n, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIdEE, i64 0) #24
  %.not.i.i.i.i19 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i.i.i20, label %bb.g

_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i.i.i20: ; preds = %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.i.i.i18, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %5, align 8, !tbaa !60
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i.i.i20
  unreachable

bb.f:                                             ; preds = %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i.i.i20
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body

bb.g:                                             ; preds = %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.i.i.i18
  %.not.i.i.i25 = icmp ugt i64 %i.g, 3
  br i1 %.not.i.i.i25, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i26, label %.invoke

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i26:   ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i26
  %i.u = call ptr @__dynamic_cast(ptr nonnull %i.s, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIiEE, i64 0) #24
  %.not.i.i.i.i27 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i27, label %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.j

_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %4, align 8, !tbaa !60
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #27
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.i:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

bb.j:                                             ; preds = %_ZN2cv4util8any_castIiEEPKT_PKNS0_3anyE.exit.i.i.i
  %.not.i.i.i31.not = icmp eq i64 %i.f, 64
  br i1 %.not.i.i.i31.not, label %.invoke, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i32

.invoke:                                          ; preds = %bb.j, %bb.g, %bb.d, %bb.a
  %i.w = phi i64 [ 3, %bb.g ], [ 2, %bb.d ], [ 1, %bb.a ], [ 4, %bb.j ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, i64 noundef %i.w, i64 noundef %i.g) #27
          to label %.cont unwind label %bb.ac

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i32:   ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i32
  %i.aa = call ptr @__dynamic_cast(ptr nonnull %i.y, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIbEE, i64 0) #24
  %.not.i.i.i.i33 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i33, label %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.m

_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %3, align 8, !tbaa !60
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.l:                                             ; preds = %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.body

bb.m:                                             ; preds = %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.i.i.i
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx, i64 9, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !120, !noalias !516 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !116, !noalias !516 ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = icmp ugt i64 %i.ai, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !68

.noexc.i.i.i.i.i:                                 ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc37 unwind label %bb.ac

.noexc37:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #28
          to label %.noexc38 unwind label %bb.ac

.noexc38:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.ac, align 8, !tbaa !121, !noalias !516 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.ad, align 8, !tbaa !121, !noalias !516
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.o

bb.o:                                             ; preds = %.noexc38, %bb.m
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc38 ], [ %i.ah, %bb.m ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc38 ], [ %i.ag, %bb.m ] ; 2 uses
  %i.al = phi ptr [ %.pre.i.i, %.noexc38 ], [ %i.af, %bb.m ] ; 5 uses
  %i.am = phi ptr [ %i.ak, %.noexc38 ], [ null, %bb.m ] ; 8 uses
  %i.an = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i  ; 9 uses
  %i.ao = icmp sgt i64 %i.an, 4                   ; 2 uses
  br i1 %i.ao, label %bb.p, label %bb.q, !prof !122

bb.p:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.am, ptr align 4 %i.al, i64 %i.an, i1 false), !noalias !516
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %.thread78, label %bb.r

.thread78:                                        ; preds = %bb.q
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !67, !noalias !516
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !67, !noalias !516
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not.i.i.i.i39 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i39, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %.thread78, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !117
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.al to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.av) #26
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store i64 1, ptr %8, align 8, !tbaa !119
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.aw, align 8
  %.sroa.6.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 1, ptr %.sroa.6.0..sroa_idx56, align 4
  %.sroa.7.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, i64 9, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i40 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i40, label %.thread, label %bb.t

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.az = getelementptr inbounds i8, ptr null, i64 %i.an ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !117
  br label %bb.x

bb.t:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.bb = icmp ugt i64 %i.an, 9223372036854775804
  br i1 %i.bb, label %.noexc.i.i.i.i.i42, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i41, !prof !68

.noexc.i.i.i.i.i42:                               ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc43 unwind label %bb.ae

.noexc43:                                         ; preds = %.noexc.i.i.i.i.i42
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i41: ; preds = %bb.t
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #28
          to label %.noexc44 unwind label %bb.ae  ; 5 uses

.noexc44:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i41
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !116
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !120
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.an ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !117
  br i1 %i.ao, label %bb.u, label %bb.v, !prof !147

bb.u:                                             ; preds = %.noexc44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr align 4 %i.am, i64 %i.an, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %.noexc44
  %i.bg = icmp eq i64 %i.an, 4
  br i1 %i.bg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bh = load i32, ptr %i.am, align 4, !tbaa !67
  store i32 %i.bh, ptr %i.bc, align 4, !tbaa !67
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %.thread
  %i.bi = phi ptr [ %i.be, %bb.u ], [ %i.be, %bb.v ], [ %i.be, %bb.w ], [ %i.az, %.thread ]
  %i.bj = phi ptr [ %i.bd, %bb.u ], [ %i.bd, %bb.v ], [ %i.bd, %bb.w ], [ %i.ay, %.thread ]
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bk = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread80 ; 4 uses

.thread80:                                        ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body45

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %i.bk, ptr %0, align 8, !tbaa !125
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !126
  %i.bp = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %8, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bk)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 56) #26
  br label %.body45

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !127
  %i.bs = load i64, ptr %8, align 8, !tbaa !119
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @constinit.7, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !75
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 8
  invoke void %i.bu(ptr noundef nonnull %i.bv)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #25
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.not.i.i.i.i47 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i47, label %_ZN2cv8GMatDescD2Ev.exit48, label %bb.ab

bb.ab:                                            ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ai) #26
  br label %_ZN2cv8GMatDescD2Ev.exit48

_ZN2cv8GMatDescD2Ev.exit48:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.ac:                                            ; preds = %.invoke, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.ac, %bb.l, %bb.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.q, %bb.f ], [ %i.v, %bb.i ], [ %i.by, %bb.ac ], [ %i.ab, %bb.l ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i49, label %_ZN2cv8GMatDescD2Ev.exit50, label %bb.ad

bb.ad:                                            ; preds = %.body
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !117
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #26
  br label %_ZN2cv8GMatDescD2Ev.exit50

bb.ae:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i41, %.noexc.i.i.i.i.i42
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body45:                                          ; preds = %.thread80, %bb.y
  %i.ch = phi { ptr, i32 } [ %i.bl, %.thread80 ], [ %i.bq, %bb.y ]
  %i.ci = load i64, ptr %8, align 8, !tbaa !119
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @constinit.7, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !75
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8
  invoke void %i.ck(ptr noundef nonnull %i.cl)
          to label %.loopexit unwind label %bb.af

bb.af:                                            ; preds = %.body45
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #25
  unreachable

.loopexit:                                        ; preds = %.body45, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.ae ], [ %i.ch, %.body45 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.not.i.i.i.i52 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i52, label %_ZN2cv8GMatDescD2Ev.exit50, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ai) #26
  br label %_ZN2cv8GMatDescD2Ev.exit50

_ZN2cv8GMatDescD2Ev.exit50:                       ; preds = %bb.ag, %.loopexit, %bb.ad, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.ad ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI16GCPUGoodFeaturesEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GCPUKernel", align 8    ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN2cv4gapi3cpu7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN2cv14GCPUKernelImplI16GCPUGoodFeaturesNS_4gapi7imgproc13GGoodFeaturesEE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GCPUKernel") align 8 %3)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc unwind label %bb.w     ; 9 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_10GCPUKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.d, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79
  store ptr %i.g, ptr %i.e, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.d, ptr noundef nonnull align 8 dereferenceable(65) %3, i64 16, i1 false), !tbaa.struct !80
  store ptr %i.i, ptr %i.j, align 8, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i

_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i: ; preds = %bb.c, %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82
  store ptr %i.n, ptr %i.l, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i4.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.not.i4.i.i.i, label %_ZN2cv10GCPUKernelD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 16, i1 false), !tbaa.struct !80
  store ptr %i.p, ptr %i.r, align 8, !tbaa !50
  br label %_ZN2cv10GCPUKernelD2Ev.exit

_ZN2cv10GCPUKernelD2Ev.exit:                      ; preds = %bb.d, %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.u = load i8, ptr %i.t, align 8, !tbaa !85, !range !86, !noundef !69
  store i8 %i.u, ptr %i.s, align 8, !tbaa !85
  store ptr %i.c, ptr %2, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.w, align 8
end_hunk_1
begin_hunk_2_@_ZN2cv14GCPUKernelImplI16GCPUEqualizeHistNS_4gapi7imgproc7GEqHistEE6kernelEv:_ZNSt8functionIFvRN2cv11GCPUContextEEEC2IPS3_vEEOT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  %.not.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %.not.i6 = icmp eq ptr %i.s, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit5
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit5, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc7GEqHistESt5tupleIJNS_4GMatEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc7GEqHistESt5tupleIJNS_4GMatEEES6_E15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCVCallHelperI16GCPUEqualizeHistSt5tupleIJNS_4GMatEEES5_E4callERNS_11GCPUContextE(ptr noundef nonnull align 8 dereferenceable(96) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCVCallHelperI16GCPUEqualizeHistSt5tupleIJNS_4GMatEEES5_E9call_implIJLi0EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSA_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCVCallHelperI16GCPUEqualizeHistSt5tupleIJNS_4GMatEEES5_E9call_implIJLi0EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSA_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"struct.cv::detail::tracked_cv_mat", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv11GCPUContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 0), !noalias !530
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.b = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv11GCPUContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  store ptr %i.e, ptr %i.c, align 8, !tbaa !103, !alias.scope !531
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.g, align 4, !tbaa !107
  store i32 16842752, ptr %2, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %4, ptr %i.h, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.j, align 8
  store i32 33619968, ptr %3, align 8, !tbaa !109
  store ptr %5, ptr %i.i, align 8, !tbaa !110
  invoke void @_ZN2cv12equalizeHistERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !103
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %_ZN2cv6detail13OCVCallHelperI16GCPUEqualizeHistSt5tupleIJNS_4GMatEEES5_E20call_and_postprocessIJNS_3MatEEE4callIJNS0_14tracked_cv_matEEEEvOS8_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1)
          to label %.noexc7 unwind label %bb.g

.noexc7:                                          ; preds = %bb.c
  invoke void @_ZN2cv4util11throw_errorISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc7
  unreachable

bb.e:                                             ; preds = %.noexc7
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.body

_ZN2cv6detail13OCVCallHelperI16GCPUEqualizeHistSt5tupleIJNS_4GMatEEES5_E20call_and_postprocessIJNS_3MatEEE4callIJNS0_14tracked_cv_matEEEEvOS8_DpOT_.exit: ; preds = %.noexc6
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(216) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %.noexc, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.n, %bb.e ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(216) %5) #24
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.o, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv12equalizeHistERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc7GEqHistESt5tupleIJNS_4GMatEEES6_E15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 6 uses
  %4 = alloca [1 x %"class.cv::util::variant"], align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx, i64 9, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120, !noalias !536 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !116, !noalias !536 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !68

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !121, !noalias !536 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !121, !noalias !536
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %.noexc8, %bb.a
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc8 ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc8 ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc8 ], [ %i.d, %bb.a ] ; 5 uses
  %i.k = phi ptr [ %i.i, %.noexc8 ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e, !prof !122

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !536
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %.thread39, label %bb.f

.thread39:                                        ; preds = %bb.e
  %i.o = load i32, ptr %i.j, align 4, !tbaa !67, !noalias !536
  store i32 %i.o, ptr %i.k, align 4, !tbaa !67, !noalias !536
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.thread39, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !117
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.t) #26
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 1, ptr %4, align 8, !tbaa !119
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 1, ptr %.sroa.6.0..sroa_idx23, align 4
  %.sroa.7.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx25, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, i64 9, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i9 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i9, label %.thread, label %bb.h

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr %i.x, ptr %i.y, align 8, !tbaa !117
  br label %bb.l

bb.h:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.z = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.z, label %.noexc.i.i.i.i.i11, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10, !prof !68

.noexc.i.i.i.i.i11:                               ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc12 unwind label %bb.s

.noexc12:                                         ; preds = %.noexc.i.i.i.i.i11
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10: ; preds = %bb.h
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28
          to label %.noexc13 unwind label %bb.s   ; 5 uses

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !120
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.l ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !117
  br i1 %i.m, label %bb.i, label %bb.j, !prof !147

bb.i:                                             ; preds = %.noexc13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %.noexc13
  %i.ae = icmp eq i64 %i.l, 4
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.k, align 4, !tbaa !67
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !67
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %.thread
  %i.ag = phi ptr [ %i.ac, %bb.i ], [ %i.ac, %bb.j ], [ %i.ac, %bb.k ], [ %i.x, %.thread ]
  %i.ah = phi ptr [ %i.ab, %bb.i ], [ %i.ab, %bb.j ], [ %i.ab, %bb.k ], [ %i.w, %.thread ]
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ai = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread41 ; 4 uses

.thread41:                                        ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.ai, ptr %0, align 8, !tbaa !125
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !126
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %4, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 56) #26
  br label %.body

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !127
  %i.aq = load i64, ptr %4, align 8, !tbaa !119
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @constinit.7, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.as(ptr noundef nonnull %i.at)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #25
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i.i.i14 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.p

bb.p:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #26
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i16, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #26
  br label %_ZN2cv8GMatDescD2Ev.exit17

bb.s:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10, %.noexc.i.i.i.i.i11
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread41, %bb.m
  %i.be = phi { ptr, i32 } [ %i.aj, %.thread41 ], [ %i.ao, %bb.m ]
  %i.bf = load i64, ptr %4, align 8, !tbaa !119
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @constinit.7, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.bh(ptr noundef nonnull %i.bi)
          to label %.loopexit unwind label %bb.t

bb.t:                                             ; preds = %.body
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #25
  unreachable

.loopexit:                                        ; preds = %.body, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %i.be, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i.i.i19 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.u

bb.u:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #26
  br label %_ZN2cv8GMatDescD2Ev.exit17

_ZN2cv8GMatDescD2Ev.exit17:                       ; preds = %bb.u, %.loopexit, %bb.r, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.r ], [ %i.aw, %bb.q ], [ %.pn, %.loopexit ], [ %.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI16GCPUFindContoursEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GCPUKernel", align 8    ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN2cv4gapi3cpu7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN2cv14GCPUKernelImplI16GCPUFindContoursNS_4gapi7imgproc13GFindContoursEE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GCPUKernel") align 8 %3)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc unwind label %bb.w     ; 9 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_10GCPUKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.d, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79
  store ptr %i.g, ptr %i.e, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.d, ptr noundef nonnull align 8 dereferenceable(65) %3, i64 16, i1 false), !tbaa.struct !80
  store ptr %i.i, ptr %i.j, align 8, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i

_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i: ; preds = %bb.c, %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82
  store ptr %i.n, ptr %i.l, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i4.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.not.i4.i.i.i, label %_ZN2cv10GCPUKernelD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 16, i1 false), !tbaa.struct !80
  store ptr %i.p, ptr %i.r, align 8, !tbaa !50
  br label %_ZN2cv10GCPUKernelD2Ev.exit

_ZN2cv10GCPUKernelD2Ev.exit:                      ; preds = %bb.d, %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.u = load i8, ptr %i.t, align 8, !tbaa !85, !range !86, !noundef !69
  store i8 %i.u, ptr %i.s, align 8, !tbaa !85
  store ptr %i.c, ptr %2, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc13GFindContoursESt5tupleIJNS_4GMatENS_14RetrievalModesENS_25ContourApproximationModesENS_7GOpaqueINS_6Point_IiEEEEEENS_6GArrayINSE_ISB_EEEEE10getOutMetaERKSt6vectorINS_4util7variantIJNSJ_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISR_EERKSI_INS_4GArgESaISW_EE, ptr %i.v, align 8, !tbaa !75
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.x, align 8, !tbaa !88
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.y, align 8, !tbaa !50
end_hunk_2
begin_hunk_3_@_ZN2cv14GCPUKernelImplI12GCPUBGR2GrayNS_4gapi7imgproc9GBGR2GrayEE6kernelEv:_ZNSt8functionIFvRN2cv11GCPUContextEEEC2IPS3_vEEOT_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  %.not.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %.not.i6 = icmp eq ptr %i.s, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit5
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit5, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc9GBGR2GrayESt5tupleIJNS_4GMatEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc9GBGR2GrayESt5tupleIJNS_4GMatEEES6_E15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCVCallHelperI12GCPUBGR2GraySt5tupleIJNS_4GMatEEES5_E4callERNS_11GCPUContextE(ptr noundef nonnull align 8 dereferenceable(96) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCVCallHelperI12GCPUBGR2GraySt5tupleIJNS_4GMatEEES5_E9call_implIJLi0EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSA_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCVCallHelperI12GCPUBGR2GraySt5tupleIJNS_4GMatEEES5_E9call_implIJLi0EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSA_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"struct.cv::detail::tracked_cv_mat", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv11GCPUContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 0), !noalias !753
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.b = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv11GCPUContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  store ptr %i.e, ptr %i.c, align 8, !tbaa !103, !alias.scope !754
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.g, align 4, !tbaa !107
  store i32 16842752, ptr %2, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %4, ptr %i.h, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.j, align 8
  store i32 33619968, ptr %3, align 8, !tbaa !109
  store ptr %5, ptr %i.i, align 8, !tbaa !110
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 6, i32 noundef 0, i32 noundef 0)
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !103
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %_ZN2cv6detail13OCVCallHelperI12GCPUBGR2GraySt5tupleIJNS_4GMatEEES5_E20call_and_postprocessIJNS_3MatEEE4callIJNS0_14tracked_cv_matEEEEvOS8_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1)
          to label %.noexc7 unwind label %bb.g

.noexc7:                                          ; preds = %bb.c
  invoke void @_ZN2cv4util11throw_errorISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc7
  unreachable

bb.e:                                             ; preds = %.noexc7
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.body

_ZN2cv6detail13OCVCallHelperI12GCPUBGR2GraySt5tupleIJNS_4GMatEEES5_E20call_and_postprocessIJNS_3MatEEE4callIJNS0_14tracked_cv_matEEEEvOS8_DpOT_.exit: ; preds = %.noexc6
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(216) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %.noexc, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.n, %bb.e ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(216) %5) #24
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.o, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc9GBGR2GrayESt5tupleIJNS_4GMatEEES6_E15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 6 uses
  %4 = alloca [1 x %"class.cv::util::variant"], align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx, i64 9, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120, !noalias !759 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !116, !noalias !759 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !68

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !121, !noalias !759 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !121, !noalias !759
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %.noexc8, %bb.a
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc8 ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc8 ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc8 ], [ %i.d, %bb.a ] ; 5 uses
  %i.k = phi ptr [ %i.i, %.noexc8 ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e, !prof !122

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !759
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %.thread39, label %bb.f

.thread39:                                        ; preds = %bb.e
  %i.o = load i32, ptr %i.j, align 4, !tbaa !67, !noalias !759
  store i32 %i.o, ptr %i.k, align 4, !tbaa !67, !noalias !759
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.thread39, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !117
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.t) #26
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 1, ptr %4, align 8, !tbaa !119
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 1, ptr %.sroa.6.0..sroa_idx23, align 4
  %.sroa.7.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx25, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, i64 9, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i9 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i9, label %.thread, label %bb.h

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr %i.x, ptr %i.y, align 8, !tbaa !117
  br label %bb.l

bb.h:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.z = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.z, label %.noexc.i.i.i.i.i11, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10, !prof !68

.noexc.i.i.i.i.i11:                               ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc12 unwind label %bb.s

.noexc12:                                         ; preds = %.noexc.i.i.i.i.i11
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10: ; preds = %bb.h
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28
          to label %.noexc13 unwind label %bb.s   ; 5 uses

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !120
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.l ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !117
  br i1 %i.m, label %bb.i, label %bb.j, !prof !147

bb.i:                                             ; preds = %.noexc13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %.noexc13
  %i.ae = icmp eq i64 %i.l, 4
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.k, align 4, !tbaa !67
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !67
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %.thread
  %i.ag = phi ptr [ %i.ac, %bb.i ], [ %i.ac, %bb.j ], [ %i.ac, %bb.k ], [ %i.x, %.thread ]
  %i.ah = phi ptr [ %i.ab, %bb.i ], [ %i.ab, %bb.j ], [ %i.ab, %bb.k ], [ %i.w, %.thread ]
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ai = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread41 ; 4 uses

.thread41:                                        ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.ai, ptr %0, align 8, !tbaa !125
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !126
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %4, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 56) #26
  br label %.body

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !127
  %i.aq = load i64, ptr %4, align 8, !tbaa !119
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @constinit.7, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.as(ptr noundef nonnull %i.at)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #25
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i.i.i14 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.p

bb.p:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #26
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i16, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #26
  br label %_ZN2cv8GMatDescD2Ev.exit17

bb.s:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10, %.noexc.i.i.i.i.i11
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread41, %bb.m
  %i.be = phi { ptr, i32 } [ %i.aj, %.thread41 ], [ %i.ao, %bb.m ]
  %i.bf = load i64, ptr %4, align 8, !tbaa !119
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @constinit.7, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.bh(ptr noundef nonnull %i.bi)
          to label %.loopexit unwind label %bb.t

bb.t:                                             ; preds = %.body
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #25
  unreachable

.loopexit:                                        ; preds = %.body, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %i.be, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i.i.i19 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.u

bb.u:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #26
  br label %_ZN2cv8GMatDescD2Ev.exit17

_ZN2cv8GMatDescD2Ev.exit17:                       ; preds = %bb.u, %.loopexit, %bb.r, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.r ], [ %i.aw, %bb.q ], [ %.pn, %.loopexit ], [ %.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI12GCPURGB2GrayEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GCPUKernel", align 8    ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN2cv4gapi3cpu7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN2cv14GCPUKernelImplI12GCPURGB2GrayNS_4gapi7imgproc9GRGB2GrayEE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GCPUKernel") align 8 %3)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc unwind label %bb.w     ; 9 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_10GCPUKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.d, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79
  store ptr %i.g, ptr %i.e, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.d, ptr noundef nonnull align 8 dereferenceable(65) %3, i64 16, i1 false), !tbaa.struct !80
  store ptr %i.i, ptr %i.j, align 8, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i

_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i: ; preds = %bb.c, %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82
  store ptr %i.n, ptr %i.l, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i4.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.not.i4.i.i.i, label %_ZN2cv10GCPUKernelD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 16, i1 false), !tbaa.struct !80
  store ptr %i.p, ptr %i.r, align 8, !tbaa !50
  br label %_ZN2cv10GCPUKernelD2Ev.exit

_ZN2cv10GCPUKernelD2Ev.exit:                      ; preds = %bb.d, %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.u = load i8, ptr %i.t, align 8, !tbaa !85, !range !86, !noundef !69
  store i8 %i.u, ptr %i.s, align 8, !tbaa !85
  store ptr %i.c, ptr %2, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc9GRGB2GrayESt5tupleIJNS_4GMatEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE, ptr %i.v, align 8, !tbaa !75
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.x, align 8, !tbaa !88
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.y, align 8, !tbaa !50
end_hunk_3
begin_hunk_4_@_ZN2cv14GCPUKernelImplI12GCPURGB2GrayNS_4gapi7imgproc9GRGB2GrayEE6kernelEv:_ZNSt8functionIFvRN2cv11GCPUContextEEEC2IPS3_vEEOT_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  %.not.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %.not.i6 = icmp eq ptr %i.s, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit5
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit5, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc9GRGB2GrayESt5tupleIJNS_4GMatEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc9GRGB2GrayESt5tupleIJNS_4GMatEEES6_E15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCVCallHelperI12GCPURGB2GraySt5tupleIJNS_4GMatEEES5_E4callERNS_11GCPUContextE(ptr noundef nonnull align 8 dereferenceable(96) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCVCallHelperI12GCPURGB2GraySt5tupleIJNS_4GMatEEES5_E9call_implIJLi0EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSA_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCVCallHelperI12GCPURGB2GraySt5tupleIJNS_4GMatEEES5_E9call_implIJLi0EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSA_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"struct.cv::detail::tracked_cv_mat", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv11GCPUContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 0), !noalias !764
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.b = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv11GCPUContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  store ptr %i.e, ptr %i.c, align 8, !tbaa !103, !alias.scope !765
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.g, align 4, !tbaa !107
  store i32 16842752, ptr %2, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %4, ptr %i.h, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.j, align 8
  store i32 33619968, ptr %3, align 8, !tbaa !109
  store ptr %5, ptr %i.i, align 8, !tbaa !110
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 7, i32 noundef 0, i32 noundef 0)
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !103
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %_ZN2cv6detail13OCVCallHelperI12GCPURGB2GraySt5tupleIJNS_4GMatEEES5_E20call_and_postprocessIJNS_3MatEEE4callIJNS0_14tracked_cv_matEEEEvOS8_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1)
          to label %.noexc7 unwind label %bb.g

.noexc7:                                          ; preds = %bb.c
  invoke void @_ZN2cv4util11throw_errorISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc7
  unreachable

bb.e:                                             ; preds = %.noexc7
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.body

_ZN2cv6detail13OCVCallHelperI12GCPURGB2GraySt5tupleIJNS_4GMatEEES5_E20call_and_postprocessIJNS_3MatEEE4callIJNS0_14tracked_cv_matEEEEvOS8_DpOT_.exit: ; preds = %.noexc6
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(216) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %.noexc, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.n, %bb.e ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(216) %5) #24
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.o, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc9GRGB2GrayESt5tupleIJNS_4GMatEEES6_E15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 6 uses
  %4 = alloca [1 x %"class.cv::util::variant"], align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx, i64 9, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120, !noalias !770 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !116, !noalias !770 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !68

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !121, !noalias !770 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !121, !noalias !770
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %.noexc8, %bb.a
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc8 ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc8 ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc8 ], [ %i.d, %bb.a ] ; 5 uses
  %i.k = phi ptr [ %i.i, %.noexc8 ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e, !prof !122

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !770
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %.thread39, label %bb.f

.thread39:                                        ; preds = %bb.e
  %i.o = load i32, ptr %i.j, align 4, !tbaa !67, !noalias !770
  store i32 %i.o, ptr %i.k, align 4, !tbaa !67, !noalias !770
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.thread39, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !117
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.t) #26
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 1, ptr %4, align 8, !tbaa !119
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 1, ptr %.sroa.6.0..sroa_idx23, align 4
  %.sroa.7.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx25, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, i64 9, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i9 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i9, label %.thread, label %bb.h

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr %i.x, ptr %i.y, align 8, !tbaa !117
  br label %bb.l

bb.h:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.z = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.z, label %.noexc.i.i.i.i.i11, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10, !prof !68

.noexc.i.i.i.i.i11:                               ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc12 unwind label %bb.s

.noexc12:                                         ; preds = %.noexc.i.i.i.i.i11
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10: ; preds = %bb.h
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28
          to label %.noexc13 unwind label %bb.s   ; 5 uses

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !120
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.l ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !117
  br i1 %i.m, label %bb.i, label %bb.j, !prof !147

bb.i:                                             ; preds = %.noexc13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %.noexc13
  %i.ae = icmp eq i64 %i.l, 4
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.k, align 4, !tbaa !67
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !67
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %.thread
  %i.ag = phi ptr [ %i.ac, %bb.i ], [ %i.ac, %bb.j ], [ %i.ac, %bb.k ], [ %i.x, %.thread ]
  %i.ah = phi ptr [ %i.ab, %bb.i ], [ %i.ab, %bb.j ], [ %i.ab, %bb.k ], [ %i.w, %.thread ]
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ai = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread41 ; 4 uses

.thread41:                                        ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.ai, ptr %0, align 8, !tbaa !125
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !126
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %4, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 56) #26
  br label %.body

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !127
  %i.aq = load i64, ptr %4, align 8, !tbaa !119
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @constinit.7, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.as(ptr noundef nonnull %i.at)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #25
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i.i.i14 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.p

bb.p:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #26
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i16, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #26
  br label %_ZN2cv8GMatDescD2Ev.exit17

bb.s:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10, %.noexc.i.i.i.i.i11
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread41, %bb.m
  %i.be = phi { ptr, i32 } [ %i.aj, %.thread41 ], [ %i.ao, %bb.m ]
  %i.bf = load i64, ptr %4, align 8, !tbaa !119
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @constinit.7, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.bh(ptr noundef nonnull %i.bi)
          to label %.loopexit unwind label %bb.t

bb.t:                                             ; preds = %.body
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #25
  unreachable

.loopexit:                                        ; preds = %.body, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %i.be, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i.i.i19 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.u

bb.u:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #26
  br label %_ZN2cv8GMatDescD2Ev.exit17

_ZN2cv8GMatDescD2Ev.exit17:                       ; preds = %bb.u, %.loopexit, %bb.r, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.r ], [ %i.aw, %bb.q ], [ %.pn, %.loopexit ], [ %.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI18GCPURGB2GrayCustomEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GCPUKernel", align 8    ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN2cv4gapi3cpu7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN2cv14GCPUKernelImplI18GCPURGB2GrayCustomNS_4gapi7imgproc15GRGB2GrayCustomEE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GCPUKernel") align 8 %3)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc unwind label %bb.w     ; 9 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_10GCPUKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.d, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79
  store ptr %i.g, ptr %i.e, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.d, ptr noundef nonnull align 8 dereferenceable(65) %3, i64 16, i1 false), !tbaa.struct !80
  store ptr %i.i, ptr %i.j, align 8, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i

_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i: ; preds = %bb.c, %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82
  store ptr %i.n, ptr %i.l, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i4.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.not.i4.i.i.i, label %_ZN2cv10GCPUKernelD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 16, i1 false), !tbaa.struct !80
  store ptr %i.p, ptr %i.r, align 8, !tbaa !50
  br label %_ZN2cv10GCPUKernelD2Ev.exit

_ZN2cv10GCPUKernelD2Ev.exit:                      ; preds = %bb.d, %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.u = load i8, ptr %i.t, align 8, !tbaa !85, !range !86, !noundef !69
  store i8 %i.u, ptr %i.s, align 8, !tbaa !85
  store ptr %i.c, ptr %2, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc15GRGB2GrayCustomESt5tupleIJNS_4GMatEfffEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE, ptr %i.v, align 8, !tbaa !75
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.x, align 8, !tbaa !88
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.y, align 8, !tbaa !50
end_hunk_4
begin_hunk_5_@_ZN18GCPURGB2GrayCustom3runERKN2cv3MatEfffRS1_:bb.a
bb.r:                                             ; preds = %bb.q, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.q ], [ %i.aa, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %8) #24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.r ], [ %i.z, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.h
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.s ], [ %i.y, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 416
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.af) #24
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ag) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #13

declare void @_ZN2cvplERKNS_7MatExprES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #13

declare void @_ZN2cvmlERKNS_3MatEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), double noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc15GRGB2GrayCustomESt5tupleIJNS_4GMatEfffEES6_E15getOutMeta_implIJLi0ELi1ELi2ELi3EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %4 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %5 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %6 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %7 = alloca [1 x %"class.cv::util::variant"], align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = load ptr, ptr %2, align 8, !tbaa !92     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i, label %.invoke

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i:     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  %i.k = call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIfEE, i64 0) #24
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.d

_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %5, align 8, !tbaa !60
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.c:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body

bb.d:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i
  %.not.i.i.i14.not = icmp eq i64 %i.f, 32
  br i1 %.not.i.i.i14.not, label %.invoke, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i15

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i15:   ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i18, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i16

_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i16: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i15
  %i.p = call ptr @__dynamic_cast(ptr nonnull %i.n, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIfEE, i64 0) #24
  %.not.i.i.i.i17 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i17, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i18, label %bb.g

_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i18: ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i16, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %4, align 8, !tbaa !60
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #27
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i18
  unreachable

bb.f:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i18
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

bb.g:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i16
  %.not.i.i.i23 = icmp ugt i64 %i.g, 3
  br i1 %.not.i.i.i23, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i24, label %.invoke

.invoke:                                          ; preds = %bb.g, %bb.d, %bb.a
  %i.r = phi i64 [ 2, %bb.d ], [ 1, %bb.a ], [ 3, %bb.g ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, i64 noundef %i.r, i64 noundef %i.g) #27
          to label %.cont unwind label %bb.z

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i24:   ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i27, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i25

_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i25: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i24
  %i.v = call ptr @__dynamic_cast(ptr nonnull %i.t, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIfEE, i64 0) #24
  %.not.i.i.i.i26 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i26, label %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i27, label %bb.j

_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i27: ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i25, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %3, align 8, !tbaa !60
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i27
  unreachable

bb.i:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.thread.i.i.i27
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.body

bb.j:                                             ; preds = %_ZN2cv4util8any_castIfEEPKT_PKNS0_3anyE.exit.i.i.i25
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx, i64 9, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !120, !noalias !788 ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !116, !noalias !788 ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp ugt i64 %i.ad, 9223372036854775804
  br i1 %i.ae, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !68

.noexc.i.i.i.i.i:                                 ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc32 unwind label %bb.z

.noexc32:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #28
          to label %.noexc33 unwind label %bb.z

.noexc33:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !121, !noalias !788 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.y, align 8, !tbaa !121, !noalias !788
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.l

bb.l:                                             ; preds = %.noexc33, %bb.j
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc33 ], [ %i.ac, %bb.j ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc33 ], [ %i.ab, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %.pre.i.i, %.noexc33 ], [ %i.aa, %bb.j ] ; 5 uses
  %i.ah = phi ptr [ %i.af, %.noexc33 ], [ null, %bb.j ] ; 8 uses
  %i.ai = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i  ; 9 uses
  %i.aj = icmp sgt i64 %i.ai, 4                   ; 2 uses
  br i1 %i.aj, label %bb.m, label %bb.n, !prof !122

bb.m:                                             ; preds = %bb.l
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ah, ptr align 4 %i.ag, i64 %i.ai, i1 false), !noalias !788
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ak = icmp eq i64 %i.ai, 4
  br i1 %i.ak, label %.thread71, label %bb.o

.thread71:                                        ; preds = %bb.n
  %i.al = load i32, ptr %i.ag, align 4, !tbaa !67, !noalias !788
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !67, !noalias !788
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not.i.i.i.i34 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i34, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.thread71, %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !117
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.ag to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aq) #26
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i64 1, ptr %7, align 8, !tbaa !119
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 1, ptr %.sroa.6.0..sroa_idx51, align 4
  %.sroa.7.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx53, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, i64 9, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i35 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i35, label %.thread, label %bb.q

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.au = getelementptr inbounds i8, ptr null, i64 %i.ai ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store ptr %i.au, ptr %i.av, align 8, !tbaa !117
  br label %bb.u

bb.q:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aw = icmp ugt i64 %i.ai, 9223372036854775804
  br i1 %i.aw, label %.noexc.i.i.i.i.i37, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i36, !prof !68

.noexc.i.i.i.i.i37:                               ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc38 unwind label %bb.ab

.noexc38:                                         ; preds = %.noexc.i.i.i.i.i37
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i36: ; preds = %bb.q
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #28
          to label %.noexc39 unwind label %bb.ab  ; 5 uses

.noexc39:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i36
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !116
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !120
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ai ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !117
  br i1 %i.aj, label %bb.r, label %bb.s, !prof !147

bb.r:                                             ; preds = %.noexc39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr align 4 %i.ah, i64 %i.ai, i1 false)
  br label %bb.u

bb.s:                                             ; preds = %.noexc39
  %i.bb = icmp eq i64 %i.ai, 4
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bc = load i32, ptr %i.ah, align 4, !tbaa !67
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !67
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %.thread
  %i.bd = phi ptr [ %i.az, %bb.r ], [ %i.az, %bb.s ], [ %i.az, %bb.t ], [ %i.au, %.thread ]
  %i.be = phi ptr [ %i.ay, %bb.r ], [ %i.ay, %bb.s ], [ %i.ay, %bb.t ], [ %i.at, %.thread ]
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bf = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread73 ; 4 uses

.thread73:                                        ; preds = %bb.u
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body40

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.bf, ptr %0, align 8, !tbaa !125
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !126
  %i.bk = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %7, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bf)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 56) #26
  br label %.body40

bb.w:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !127
  %i.bn = load i64, ptr %7, align 8, !tbaa !119
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @constinit.7, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !75
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  invoke void %i.bp(ptr noundef nonnull %i.bq)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #25
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.not.i.i.i.i42 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i42, label %_ZN2cv8GMatDescD2Ev.exit43, label %bb.y

bb.y:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ad) #26
  br label %_ZN2cv8GMatDescD2Ev.exit43

_ZN2cv8GMatDescD2Ev.exit43:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.z:                                             ; preds = %.invoke, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i, %bb.z, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.q, %bb.f ], [ %i.bt, %bb.z ], [ %i.w, %bb.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i44, label %_ZN2cv8GMatDescD2Ev.exit45, label %bb.aa

bb.aa:                                            ; preds = %.body
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !117
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #26
  br label %_ZN2cv8GMatDescD2Ev.exit45

bb.ab:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i36, %.noexc.i.i.i.i.i37
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body40:                                          ; preds = %.thread73, %bb.v
  %i.cc = phi { ptr, i32 } [ %i.bg, %.thread73 ], [ %i.bl, %bb.v ]
  %i.cd = load i64, ptr %7, align 8, !tbaa !119
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr @constinit.7, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !75
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
  invoke void %i.cf(ptr noundef nonnull %i.cg)
          to label %.loopexit unwind label %bb.ac

bb.ac:                                            ; preds = %.body40
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #25
  unreachable

.loopexit:                                        ; preds = %.body40, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %i.cc, %.body40 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.not.i.i.i.i47 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i47, label %_ZN2cv8GMatDescD2Ev.exit45, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ad) #26
  br label %_ZN2cv8GMatDescD2Ev.exit45

_ZN2cv8GMatDescD2Ev.exit45:                       ; preds = %bb.ad, %.loopexit, %bb.aa, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.aa ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI15GCPUBayerGR2RGBEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GCPUKernel", align 8    ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN2cv4gapi3cpu7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN2cv14GCPUKernelImplI15GCPUBayerGR2RGBNS_4gapi7imgproc12GBayerGR2RGBEE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GCPUKernel") align 8 %3)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc unwind label %bb.w     ; 9 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_10GCPUKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.d, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79
  store ptr %i.g, ptr %i.e, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.d, ptr noundef nonnull align 8 dereferenceable(65) %3, i64 16, i1 false), !tbaa.struct !80
  store ptr %i.i, ptr %i.j, align 8, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i

_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i: ; preds = %bb.c, %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82
  store ptr %i.n, ptr %i.l, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i4.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.not.i4.i.i.i, label %_ZN2cv10GCPUKernelD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 16, i1 false), !tbaa.struct !80
  store ptr %i.p, ptr %i.r, align 8, !tbaa !50
  br label %_ZN2cv10GCPUKernelD2Ev.exit

_ZN2cv10GCPUKernelD2Ev.exit:                      ; preds = %bb.d, %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.u = load i8, ptr %i.t, align 8, !tbaa !85, !range !86, !noundef !69
  store i8 %i.u, ptr %i.s, align 8, !tbaa !85
  store ptr %i.c, ptr %2, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.w, align 8
end_hunk_5
begin_hunk_6_@_ZN2cv14GCPUKernelImplI15GCPUBayerGR2RGBNS_4gapi7imgproc12GBayerGR2RGBEE6kernelEv:_ZNSt8functionIFvRN2cv11GCPUContextEEEC2IPS3_vEEOT_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  %.not.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %.not.i6 = icmp eq ptr %i.s, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit5
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit5, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc12GBayerGR2RGBESt5tupleIJNS_4GMatEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc12GBayerGR2RGBESt5tupleIJNS_4GMatEEES6_E15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind writable sret(%"class.std::vector.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCVCallHelperI15GCPUBayerGR2RGBSt5tupleIJNS_4GMatEEES5_E4callERNS_11GCPUContextE(ptr noundef nonnull align 8 dereferenceable(96) %0) #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv6detail13OCVCallHelperI15GCPUBayerGR2RGBSt5tupleIJNS_4GMatEEES5_E9call_implIJLi0EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSA_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13OCVCallHelperI15GCPUBayerGR2RGBSt5tupleIJNS_4GMatEEES5_E9call_implIJLi0EEJLi0EEEEvRNS_11GCPUContextENS0_3SeqIJXspT_EEEENSA_IJXspT0_EEEE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"struct.cv::detail::tracked_cv_mat", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv11GCPUContext5inMatEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 0), !noalias !793
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.b = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv11GCPUContext7outMatREi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(216) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101
  store ptr %i.e, ptr %i.c, align 8, !tbaa !103, !alias.scope !794
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.g, align 4, !tbaa !107
  store i32 16842752, ptr %2, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %4, ptr %i.h, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.j, align 8
  store i32 33619968, ptr %3, align 8, !tbaa !109
  store ptr %5, ptr %i.i, align 8, !tbaa !110
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 47, i32 noundef 0, i32 noundef 0)
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !103
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i, label %_ZN2cv6detail13OCVCallHelperI15GCPUBayerGR2RGBSt5tupleIJNS_4GMatEEES5_E20call_and_postprocessIJNS_3MatEEE4callIJNS0_14tracked_cv_matEEEEvOS8_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1)
          to label %.noexc7 unwind label %bb.g

.noexc7:                                          ; preds = %bb.c
  invoke void @_ZN2cv4util11throw_errorISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc7
  unreachable

bb.e:                                             ; preds = %.noexc7
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.body

_ZN2cv6detail13OCVCallHelperI15GCPUBayerGR2RGBSt5tupleIJNS_4GMatEEES5_E20call_and_postprocessIJNS_3MatEEE4callIJNS0_14tracked_cv_matEEEEvOS8_DpOT_.exit: ; preds = %.noexc6
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(216) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %.noexc, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.n, %bb.e ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(216) %5) #24
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.o, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc12GBayerGR2RGBESt5tupleIJNS_4GMatEEES6_E15getOutMeta_implIJLi0EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 6 uses
  %4 = alloca [1 x %"class.cv::util::variant"], align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx, i64 9, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120, !noalias !799 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !116, !noalias !799 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !68

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !121, !noalias !799 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !121, !noalias !799
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %.noexc8, %bb.a
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc8 ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc8 ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc8 ], [ %i.d, %bb.a ] ; 5 uses
  %i.k = phi ptr [ %i.i, %.noexc8 ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e, !prof !122

bb.d:                                             ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !799
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %.thread39, label %bb.f

.thread39:                                        ; preds = %bb.e
  %i.o = load i32, ptr %i.j, align 4, !tbaa !67, !noalias !799
  store i32 %i.o, ptr %i.k, align 4, !tbaa !67, !noalias !799
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.thread39, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !117
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.t) #26
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 1, ptr %4, align 8, !tbaa !119
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 3, ptr %.sroa.6.0..sroa_idx23, align 4
  %.sroa.7.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx25, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, i64 9, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i9 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i9, label %.thread, label %bb.h

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr %i.x, ptr %i.y, align 8, !tbaa !117
  br label %bb.l

bb.h:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.z = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.z, label %.noexc.i.i.i.i.i11, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10, !prof !68

.noexc.i.i.i.i.i11:                               ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc12 unwind label %bb.s

.noexc12:                                         ; preds = %.noexc.i.i.i.i.i11
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10: ; preds = %bb.h
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28
          to label %.noexc13 unwind label %bb.s   ; 5 uses

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !116
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !120
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.l ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !117
  br i1 %i.m, label %bb.i, label %bb.j, !prof !147

bb.i:                                             ; preds = %.noexc13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %.noexc13
  %i.ae = icmp eq i64 %i.l, 4
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.k, align 4, !tbaa !67
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !67
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %.thread
  %i.ag = phi ptr [ %i.ac, %bb.i ], [ %i.ac, %bb.j ], [ %i.ac, %bb.k ], [ %i.x, %.thread ]
  %i.ah = phi ptr [ %i.ab, %bb.i ], [ %i.ab, %bb.j ], [ %i.ab, %bb.k ], [ %i.w, %.thread ]
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ai = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread41 ; 4 uses

.thread41:                                        ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.ai, ptr %0, align 8, !tbaa !125
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !126
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %4, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 56) #26
  br label %.body

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !127
  %i.aq = load i64, ptr %4, align 8, !tbaa !119
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @constinit.7, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.as(ptr noundef nonnull %i.at)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #25
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i.i.i14 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.p

bb.p:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #26
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i16, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #26
  br label %_ZN2cv8GMatDescD2Ev.exit17

bb.s:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i10, %.noexc.i.i.i.i.i11
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread41, %bb.m
  %i.be = phi { ptr, i32 } [ %i.aj, %.thread41 ], [ %i.ao, %bb.m ]
  %i.bf = load i64, ptr %4, align 8, !tbaa !119
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @constinit.7, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !75
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.bh(ptr noundef nonnull %i.bi)
          to label %.loopexit unwind label %bb.t

bb.t:                                             ; preds = %.body
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #25
  unreachable

.loopexit:                                        ; preds = %.body, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %i.be, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i.i.i19 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.u

bb.u:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #26
  br label %_ZN2cv8GMatDescD2Ev.exit17

_ZN2cv8GMatDescD2Ev.exit17:                       ; preds = %bb.u, %.loopexit, %bb.r, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.r ], [ %i.aw, %bb.q ], [ %.pn, %.loopexit ], [ %.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperI11GCPURGB2HSVEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GCPUKernel", align 8    ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair.8", align 8      ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN2cv4gapi3cpu7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZN2cv14GCPUKernelImplI11GCPURGB2HSVNS_4gapi7imgproc8GRGB2HSVEE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GCPUKernel") align 8 %3)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc unwind label %bb.w     ; 9 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_10GCPUKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.d, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79
  store ptr %i.g, ptr %i.e, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.d, ptr noundef nonnull align 8 dereferenceable(65) %3, i64 16, i1 false), !tbaa.struct !80
  store ptr %i.i, ptr %i.j, align 8, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i

_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i: ; preds = %bb.c, %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82
  store ptr %i.n, ptr %i.l, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i4.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.not.i4.i.i.i, label %_ZN2cv10GCPUKernelD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 16, i1 false), !tbaa.struct !80
  store ptr %i.p, ptr %i.r, align 8, !tbaa !50
  br label %_ZN2cv10GCPUKernelD2Ev.exit

_ZN2cv10GCPUKernelD2Ev.exit:                      ; preds = %bb.d, %_ZNSt8functionIFvRN2cv11GCPUContextEEEC2EOS4_.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.u = load i8, ptr %i.t, align 8, !tbaa !85, !range !86, !noundef !69
  store i8 %i.u, ptr %i.s, align 8, !tbaa !85
  store ptr %i.c, ptr %2, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc8GRGB2HSVESt5tupleIJNS_4GMatEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE, ptr %i.v, align 8, !tbaa !75
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.x, align 8, !tbaa !88
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.y, align 8, !tbaa !50
end_hunk_6
