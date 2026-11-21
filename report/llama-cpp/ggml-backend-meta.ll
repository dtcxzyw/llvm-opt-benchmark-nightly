Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-backend-meta?download=true
inline.NumInlined: 2841
inline.NumDeleted: 1289
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZL38ggml_backend_meta_buffer_memset_tensorP19ggml_backend_bufferP11ggml_tensorhmm:bb.a

.preheader231.us:                                 ; preds = %.lr.ph238.split.us, %.preheader231.us
  %.0134235.us = phi i64 [ %i.hu, %.preheader231.us ], [ %i.hh, %.lr.ph238.split.us ] ; 2 uses
  %i.ht = mul i64 %.0134235.us, %i.hr
  tail call void @ggml_backend_tensor_memset(ptr noundef nonnull %i.ho, i8 noundef zeroext %2, i64 noundef %i.ht, i64 noundef %i.hr)
  %i.hu = add nsw i64 %.0134235.us, 1             ; 2 uses
  %i.hv = icmp slt i64 %i.hu, %i.hm
  br i1 %i.hv, label %.preheader231.us, label %..loopexit232_crit_edge.us, !llvm.loop !612

..loopexit232_crit_edge.us:                       ; preds = %.preheader231.us, %.lr.ph238.split.us
  %i.hw = add nuw i64 %.0135237.us, 1             ; 2 uses
  %exitcond275.not = icmp eq i64 %i.hw, %i.l
  br i1 %exitcond275.not, label %_ZNSt6vectorImSaImEED2Ev.exit213, label %.lr.ph238.split.us, !llvm.loop !613

.lr.ph238.split:                                  ; preds = %.lr.ph238, %.lr.ph238.split
  %.0135237 = phi i64 [ %i.hy, %.lr.ph238.split ], [ 0, %.lr.ph238 ] ; 2 uses
  %i.hx = tail call fastcc noundef ptr @_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm(ptr noundef nonnull %1, i64 noundef %.0135237) ; 0 uses
  %i.hy = add nuw i64 %.0135237, 1                ; 2 uses
  %exitcond273.not = icmp eq i64 %i.hy, %i.l
  br i1 %exitcond273.not, label %_ZNSt6vectorImSaImEED2Ev.exit213, label %.lr.ph238.split, !llvm.loop !613

bb.an:                                            ; preds = %bb.ah
  %i.hz = icmp eq i8 %2, 0
  br i1 %i.hz, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1401, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.116) #26
  unreachable

bb.ap:                                            ; preds = %bb.an, %bb.ah
  %.not261 = icmp eq ptr %i.g, %i.h
  br i1 %.not261, label %_ZNSt6vectorImSaImEED2Ev.exit213, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ap, %.lr.ph
  %.0234 = phi i64 [ %i.ib, %.lr.ph ], [ 0, %bb.ap ] ; 2 uses
  %i.ia = tail call fastcc noundef ptr @_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm(ptr noundef nonnull %1, i64 noundef %.0234)
  tail call void @ggml_backend_tensor_memset(ptr noundef %i.ia, i8 noundef zeroext %2, i64 noundef %3, i64 noundef %4)
  %i.ib = add nuw i64 %.0234, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ib, %i.l
  br i1 %exitcond.not, label %_ZNSt6vectorImSaImEED2Ev.exit213, label %.lr.ph, !llvm.loop !614

bb.aq:                                            ; preds = %bb.ah
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1411, ptr noundef nonnull @.str.9) #26
  unreachable

_ZNSt6vectorImSaImEED2Ev.exit213:                 ; preds = %.lr.ph, %.lr.ph238.split, %..loopexit232_crit_edge.us, %bb.ap, %bb.am, %bb.ag, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL35ggml_backend_meta_buffer_set_tensorP19ggml_backend_bufferP11ggml_tensorPKvmm(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.ggml_backend_meta_split_state, align 8 ; 11 uses
  %6 = alloca %"class.std::vector.220", align 8   ; 12 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %ggml_backend_buffer_is_meta.exit.thread.i, label %ggml_backend_buffer_is_meta.exit.i

ggml_backend_buffer_is_meta.exit.i:               ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !182
  %i.c = icmp eq ptr %i.b, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.c, label %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit, label %ggml_backend_buffer_is_meta.exit.thread.i

ggml_backend_buffer_is_meta.exit.thread.i:        ; preds = %ggml_backend_buffer_is_meta.exit.i, %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 463, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.43) #26
  unreachable

_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit: ; preds = %ggml_backend_buffer_is_meta.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !150  ; 5 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !137  ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call fastcc void @_ZL33ggml_backend_meta_get_split_stateR41ggml_backend_meta_simple_tensor_containerPK11ggml_tensorb(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull %1, i1 noundef zeroext false), !inline_history !7
  %i.n = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %1)
  %i.o = load i32, ptr %5, align 8                ; 5 uses
  %i.p = icmp eq i32 %i.o, 10
  %or.cond = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1419, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.105) #26
  unreachable

bb.c:                                             ; preds = %_ZL31ggml_backend_meta_buffer_n_bufsP19ggml_backend_buffer.exit
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 2120
  %i.r = load i32, ptr %i.q, align 8, !tbaa !160  ; 5 uses
  %i.s = icmp ne i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 2056 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp ne i32 %i.u, 1
  %or.cond6 = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond6, label %bb.d, label %bb.af

bb.d:                                             ; preds = %bb.c
  %or.cond9 = icmp ult i32 %i.o, 4
  br i1 %or.cond9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1422, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.106) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not225 = icmp eq i32 %i.u, 0
  br i1 %.not225, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1423, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.107) #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !77
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.8, i32 noundef 1424, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.108) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.m, 1152921504606846975
  br i1 %i.z, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #26
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.j
  %.not.i.i.i.i.not = icmp eq ptr %i.h, %i.i      ; 3 uses
  br i1 %.not.i.i.i.i.not, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.noexc240

.noexc240:                                        ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28 ; 3 uses
  %i.ab = add i64 %i.j, -8
  %i.ac = sub i64 %i.ab, %i.k
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aa, i8 0, i64 %i.ae, i1 false), !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.l
  %i.ag = ptrtoint ptr %i.af to i64
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %.noexc240, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ag, %.noexc240 ] ; 2 uses
  %.sroa.0302.0 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.aa, %.noexc240 ] ; 8 uses
  switch i32 %i.o, label %.split368.us.invoke [
    i32 0, label %bb.k
    i32 1, label %bb.v
  ]

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !77
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %.split368.us.invoke

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !77 ; 4 uses
  %i.an = urem i64 %3, %i.am
  %i.ao = udiv i64 %3, %i.am                      ; 2 uses
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %bb.m, label %.split368.us.invoke

bb.m:                                             ; preds = %bb.l
  %i.aq = urem i64 %4, %i.am
  %i.ar = udiv i64 %4, %i.am                      ; 3 uses
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %bb.n, label %.split368.us.invoke

bb.n:                                             ; preds = %bb.m
  %i.at = add nsw i64 %i.ar, %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !77
  %.not231 = icmp sgt i64 %i.at, %i.av
  br i1 %.not231, label %.split368.us.invoke, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load i32, ptr %1, align 8, !tbaa !212
  %i.ax = invoke i64 @ggml_blck_size(i32 noundef %i.aw)
          to label %.preheader315 unwind label %bb.ac ; 2 uses

.preheader315:                                    ; preds = %bb.o
  %i.ay = zext i32 %i.r to i64
  %.not404 = icmp eq i32 %i.r, 0
  br i1 %.not404, label %._crit_edge394, label %.preheader314.lr.ph

.preheader314.lr.ph:                              ; preds = %.preheader315
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %umax428 = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  br i1 %.not.i.i.i.i.not, label %._crit_edge394, label %.preheader314

.preheader314:                                    ; preds = %.preheader314.lr.ph, %._crit_edge384
  %.0186393 = phi i64 [ %.1187.lcssa, %._crit_edge384 ], [ 0, %.preheader314.lr.ph ] ; 2 uses
  %.0196392 = phi i64 [ %i.ds, %._crit_edge384 ], [ 0, %.preheader314.lr.ph ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.0196392
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !161 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %.not406 = icmp eq i32 %i.bc, 0
  br i1 %.not406, label %._crit_edge384, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader314
  %i.be = mul i64 %.0196392, %i.m
  %i.bf = getelementptr [8 x i8], ptr %i.ba, i64 %i.be
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge380.us
  %.1187383.us = phi i64 [ %i.dl, %._crit_edge380.us ], [ %.0186393, %.preheader.lr.ph ]
  %.0195382.us = phi i64 [ %i.dp, %._crit_edge380.us ], [ 0, %.preheader.lr.ph ]
  br label %bb.p

bb.p:                                             ; preds = %.preheader.us, %bb.u
  %.2378.us = phi i64 [ %.1187383.us, %.preheader.us ], [ %i.dl, %bb.u ] ; 2 uses
  %.0194377.us = phi i64 [ 0, %.preheader.us ], [ %i.do, %bb.u ] ; 5 uses
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !178 ; 3 uses
  %.not.i.i241.us = icmp eq ptr %i.bg, null
  br i1 %.not.i.i241.us, label %.split368.us.invoke, label %ggml_backend_buffer_is_meta.exit.i242.us

ggml_backend_buffer_is_meta.exit.i242.us:         ; preds = %bb.p
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !182
  %i.bi = icmp eq ptr %i.bh, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.bi, label %bb.q, label %.split368.us.invoke

bb.q:                                             ; preds = %ggml_backend_buffer_is_meta.exit.i242.us
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !184 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 224
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !150
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !137
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = icmp ult i64 %.0194377.us, %i.bs
  br i1 %i.bt, label %bb.r, label %.split368.us.invoke

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !29 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %.not10.i.i.i.i.i.us = icmp eq ptr %i.bv, null
  br i1 %.not10.i.i.i.i.i.us, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us, label %.lr.ph.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.us:                              ; preds = %bb.r, %.lr.ph.i.i.i.i.i.us
  %.012.i.i.i.i.i.us = phi ptr [ %.1.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.us ], [ %i.bv, %bb.r ] ; 3 uses
  %.0811.i.i.i.i.i.us = phi ptr [ %.19.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.us ], [ %i.bw, %bb.r ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !174
  %i.bz = icmp ult ptr %i.by, %1                  ; 2 uses
  %.19.i.i.i.i.i.us = select i1 %i.bz, ptr %.0811.i.i.i.i.i.us, ptr %.012.i.i.i.i.i.us ; 3 uses
  %.1.in.v.i.i.i.i.i.us = select i1 %i.bz, i64 24, i64 16
  %.1.in.i.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us, i64 %.1.in.v.i.i.i.i.i.us
  %.1.i.i.i.i.i.us = load ptr, ptr %.1.in.i.i.i.i.i.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i.i.us = icmp eq ptr %.1.i.i.i.i.i.us, null
  br i1 %.not.i.i.i.i.i.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.us
  %i.ca = icmp eq ptr %.19.i.i.i.i.i.us, %i.bw
  br i1 %i.ca, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us: ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.us, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !174
  %i.cd = icmp ult ptr %1, %i.cc
  br i1 %i.cd, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us, label %.lr.ph.i.i.i.preheader.i.us

_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us: ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.us, %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 216
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !202
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [72 x i8], ptr %i.ce, i64 %i.ch ; 2 uses
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %.pre.i.us = load ptr, ptr %.phi.trans.insert.i.us, align 8, !tbaa !29 ; 2 uses
  %.not10.i.i.i.i.us = icmp eq ptr %.pre.i.us, null
  br i1 %.not10.i.i.i.i.us, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us, label %.lr.ph.i.i.i.preheader.i.us

.lr.ph.i.i.i.preheader.i.us:                      ; preds = %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us
  %.pn.i.us = phi ptr [ %i.ci, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us ], [ %i.bk, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us ]
  %i.cj = phi ptr [ %.pre.i.us, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us ], [ %i.bv, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i.us ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 32 ; 2 uses
  br label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %.lr.ph.i.i.i.i.us, %.lr.ph.i.i.i.preheader.i.us
  %.012.i.i.i.i.us = phi ptr [ %.1.i.i.i.i.us, %.lr.ph.i.i.i.i.us ], [ %i.cj, %.lr.ph.i.i.i.preheader.i.us ] ; 3 uses
  %.0811.i.i.i.i.us = phi ptr [ %.19.i.i.i.i.us, %.lr.ph.i.i.i.i.us ], [ %i.ck, %.lr.ph.i.i.i.preheader.i.us ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.us, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !174
  %i.cn = icmp ult ptr %i.cm, %1                  ; 2 uses
  %.19.i.i.i.i.us = select i1 %i.cn, ptr %.0811.i.i.i.i.us, ptr %.012.i.i.i.i.us ; 4 uses
  %.1.in.v.i.i.i.i.us = select i1 %i.cn, i64 24, i64 16
  %.1.in.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.us, i64 %.1.in.v.i.i.i.i.us
  %.1.i.i.i.i.us = load ptr, ptr %.1.in.i.i.i.i.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i244.us = icmp eq ptr %.1.i.i.i.i.us, null
  br i1 %.not.i.i.i.i244.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us, label %.lr.ph.i.i.i.i.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.us
  %i.co = icmp eq ptr %.19.i.i.i.i.us, %i.ck
  br i1 %i.co, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us: ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.us, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !174
  %i.cr = icmp ult ptr %1, %i.cq
  br i1 %i.cr, label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us, label %bb.s

bb.s:                                             ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.us, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !125
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.0194377.us
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !174
  br label %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us

_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us: ; preds = %bb.s, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us
  %.0.i.us = phi ptr [ %i.cv, %bb.s ], [ null, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.us ], [ null, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i.us ], [ null, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.us ] ; 2 uses
  %i.cw = getelementptr [8 x i8], ptr %i.bf, i64 %.0194377.us
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !77 ; 2 uses
  %i.cy = srem i64 %i.cx, %i.ax
  %i.cz = sdiv i64 %i.cx, %i.ax
  %i.da = icmp eq i64 %i.cy, 0
  br i1 %i.da, label %bb.t, label %.split368.us.invoke

bb.t:                                             ; preds = %_ZL38ggml_backend_meta_buffer_simple_tensorPK11ggml_tensorm.exit.us
  %i.db = load i64, ptr %i.ak, align 8, !tbaa !77
  %i.dc = mul i64 %i.db, %i.cz                    ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %.2378.us
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0302.0, i64 %.0194377.us ; 3 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !77
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.us, i64 56
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !77 ; 2 uses
  %i.di = mul i64 %i.dh, %i.ao
  %i.dj = add i64 %i.di, %i.df
  %i.dk = load i64, ptr %i.al, align 8, !tbaa !77
  invoke void @ggml_backend_tensor_set_2d(ptr noundef nonnull %.0.i.us, ptr noundef %i.dd, i64 noundef %i.dj, i64 noundef %i.dc, i64 noundef %i.ar, i64 noundef %i.dh, i64 noundef %i.dk)
          to label %bb.u unwind label %.thread.loopexit.split-lp.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.dl = add i64 %i.dc, %.2378.us                ; 3 uses
  %i.dm = load i64, ptr %i.de, align 8, !tbaa !77
  %i.dn = add i64 %i.dm, %i.dc
  store i64 %i.dn, ptr %i.de, align 8, !tbaa !77
  %i.do = add nuw i64 %.0194377.us, 1             ; 2 uses
  %exitcond429.not = icmp eq i64 %i.do, %umax428
  br i1 %exitcond429.not, label %._crit_edge380.us, label %bb.p, !llvm.loop !615

._crit_edge380.us:                                ; preds = %bb.u
  %i.dp = add nuw nsw i64 %.0195382.us, 1         ; 2 uses
  %exitcond430.not = icmp eq i64 %i.dp, %i.bd
  br i1 %exitcond430.not, label %._crit_edge384, label %.preheader.us, !llvm.loop !616

._crit_edge394.loopexit:                          ; preds = %._crit_edge384
  %i.dq = mul i64 %.1187.lcssa, %i.ar
  br label %._crit_edge394

._crit_edge394:                                   ; preds = %._crit_edge394.loopexit, %.preheader314.lr.ph, %.preheader315
  %.0186.lcssa = phi i64 [ 0, %.preheader315 ], [ %i.dq, %._crit_edge394.loopexit ], [ 0, %.preheader314.lr.ph ]
  %i.dr = icmp eq i64 %.0186.lcssa, %4
  br i1 %i.dr, label %bb.ad, label %.split368.us.invoke

._crit_edge384:                                   ; preds = %._crit_edge380.us, %.preheader314
  %.1187.lcssa = phi i64 [ %.0186393, %.preheader314 ], [ %i.dl, %._crit_edge380.us ] ; 2 uses
  %i.ds = add nuw nsw i64 %.0196392, 1            ; 2 uses
  %exitcond431.not = icmp eq i64 %i.ds, %i.ay
  br i1 %exitcond431.not, label %._crit_edge394.loopexit, label %.preheader314, !llvm.loop !617

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !77 ; 4 uses
  %i.dv = urem i64 %3, %i.du
  %i.dw = udiv i64 %3, %i.du                      ; 2 uses
  %i.dx = icmp eq i64 %i.dv, 0
  br i1 %i.dx, label %bb.w, label %.split368.us.invoke

bb.w:                                             ; preds = %bb.v
  %i.dy = urem i64 %4, %i.du
  %i.dz = udiv i64 %4, %i.du                      ; 3 uses
  %i.ea = icmp eq i64 %i.dy, 0
  br i1 %i.ea, label %bb.x, label %.split368.us.invoke

bb.x:                                             ; preds = %bb.w
  %i.eb = add nsw i64 %i.dz, %i.dw
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !77
  %.not226 = icmp sgt i64 %i.eb, %i.ed
  br i1 %.not226, label %.split368.us.invoke, label %.preheader318

.preheader318:                                    ; preds = %bb.x
  %i.ee = zext i32 %i.r to i64
  %.not401 = icmp eq i32 %i.r, 0
  br i1 %.not401, label %._crit_edge373, label %.preheader317.lr.ph

.preheader317.lr.ph:                              ; preds = %.preheader318
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 56
  br i1 %.not.i.i.i.i.not, label %._crit_edge373, label %.preheader317.us

.preheader317.us:                                 ; preds = %.preheader317.lr.ph, %._crit_edge365.split.us.us
  %.3372.us = phi i64 [ %.4.lcssa.us, %._crit_edge365.split.us.us ], [ 0, %.preheader317.lr.ph ] ; 2 uses
  %.0193371.us = phi i64 [ %i.gu, %._crit_edge365.split.us.us ], [ 0, %.preheader317.lr.ph ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.0193371.us
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !161 ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %.not403 = icmp eq i32 %i.ej, 0
  br i1 %.not403, label %._crit_edge365.split.us.us, label %.preheader316.lr.ph.us

.preheader316.lr.ph.us:                           ; preds = %.preheader317.us
  %i.el = mul i64 %.0193371.us, %i.m
  %i.em = getelementptr [8 x i8], ptr %i.eg, i64 %i.el
  br label %.preheader316.us.us

.preheader316.us.us:                              ; preds = %._crit_edge361.us.us, %.preheader316.lr.ph.us
  %.4364.us.us = phi i64 [ %.3372.us, %.preheader316.lr.ph.us ], [ %i.gp, %._crit_edge361.us.us ]
  %.0192363.us.us = phi i64 [ 0, %.preheader316.lr.ph.us ], [ %i.gt, %._crit_edge361.us.us ]
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %.preheader316.us.us
  %.5359.us.us = phi i64 [ %.4364.us.us, %.preheader316.us.us ], [ %i.gp, %bb.ab ] ; 2 uses
  %.0191358.us.us = phi i64 [ 0, %.preheader316.us.us ], [ %i.gs, %bb.ab ] ; 5 uses
  %i.en = load ptr, ptr %i.ef, align 8, !tbaa !178 ; 3 uses
  %.not.i.i247.us.us = icmp eq ptr %i.en, null
  br i1 %.not.i.i247.us.us, label %.split368.us.invoke, label %ggml_backend_buffer_is_meta.exit.i248.us.us

ggml_backend_buffer_is_meta.exit.i248.us.us:      ; preds = %bb.y
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !182
  %i.ep = icmp eq ptr %i.eo, @_ZL36ggml_backend_meta_buffer_free_bufferP19ggml_backend_buffer
  br i1 %i.ep, label %bb.z, label %.split368.us.invoke

bb.z:                                             ; preds = %ggml_backend_buffer_is_meta.exit.i248.us.us
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !184 ; 7 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 224
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 232
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !150
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !137
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = ashr exact i64 %i.ey, 3
  %i.fa = icmp ult i64 %.0191358.us.us, %i.ez
  br i1 %i.fa, label %bb.aa, label %.split368.us.invoke

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !29 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 32 ; 2 uses
  %.not10.i.i.i.i.i250.us.us = icmp eq ptr %i.fc, null
  br i1 %.not10.i.i.i.i.i250.us.us, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i275.us.us, label %.lr.ph.i.i.i.i.i251.us.us

.lr.ph.i.i.i.i.i251.us.us:                        ; preds = %bb.aa, %.lr.ph.i.i.i.i.i251.us.us
  %.012.i.i.i.i.i252.us.us = phi ptr [ %.1.i.i.i.i.i257.us.us, %.lr.ph.i.i.i.i.i251.us.us ], [ %i.fc, %bb.aa ] ; 3 uses
  %.0811.i.i.i.i.i253.us.us = phi ptr [ %.19.i.i.i.i.i254.us.us, %.lr.ph.i.i.i.i.i251.us.us ], [ %i.fd, %bb.aa ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i252.us.us, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !174
  %i.fg = icmp ult ptr %i.ff, %1                  ; 2 uses
  %.19.i.i.i.i.i254.us.us = select i1 %i.fg, ptr %.0811.i.i.i.i.i253.us.us, ptr %.012.i.i.i.i.i252.us.us ; 3 uses
  %.1.in.v.i.i.i.i.i255.us.us = select i1 %i.fg, i64 24, i64 16
  %.1.in.i.i.i.i.i256.us.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i252.us.us, i64 %.1.in.v.i.i.i.i.i255.us.us
  %.1.i.i.i.i.i257.us.us = load ptr, ptr %.1.in.i.i.i.i.i256.us.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i.i258.us.us = icmp eq ptr %.1.i.i.i.i.i257.us.us, null
  br i1 %.not.i.i.i.i.i258.us.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i259.us.us, label %.lr.ph.i.i.i.i.i251.us.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i259.us.us: ; preds = %.lr.ph.i.i.i.i.i251.us.us
  %i.fh = icmp eq ptr %.19.i.i.i.i.i254.us.us, %i.fd
  br i1 %i.fh, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i275.us.us, label %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i260.us.us

_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i260.us.us: ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i259.us.us
  %i.fi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i254.us.us, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !174
  %i.fk = icmp ult ptr %1, %i.fj
  br i1 %i.fk, label %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i275.us.us, label %.lr.ph.i.i.i.preheader.i262.us.us

_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i275.us.us: ; preds = %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i260.us.us, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i259.us.us, %bb.aa
  %i.fl = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.fm = getelementptr inbounds nuw i8, ptr %i.er, i64 216
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !202
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [72 x i8], ptr %i.fl, i64 %i.fo ; 2 uses
  %.phi.trans.insert.i276.us.us = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %.pre.i277.us.us = load ptr, ptr %.phi.trans.insert.i276.us.us, align 8, !tbaa !29, !nonnull !82, !noundef !82
  br label %.lr.ph.i.i.i.preheader.i262.us.us

.lr.ph.i.i.i.preheader.i262.us.us:                ; preds = %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i275.us.us, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i260.us.us
  %.pn.i263.us.us = phi ptr [ %i.fp, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i275.us.us ], [ %i.er, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i260.us.us ]
  %i.fq = phi ptr [ %.pre.i277.us.us, %_ZN32ggml_backend_meta_buffer_context27get_simple_tensor_containerEPK11ggml_tensor.exit.i275.us.us ], [ %i.fc, %_ZNSt3mapIPK11ggml_tensorSt6vectorIPS0_SaIS4_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE4findERSA_.exit.i.i260.us.us ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.pn.i263.us.us, i64 32 ; 2 uses
  br label %.lr.ph.i.i.i.i264.us.us

.lr.ph.i.i.i.i264.us.us:                          ; preds = %.lr.ph.i.i.i.i264.us.us, %.lr.ph.i.i.i.preheader.i262.us.us
  %.012.i.i.i.i265.us.us = phi ptr [ %.1.i.i.i.i270.us.us, %.lr.ph.i.i.i.i264.us.us ], [ %i.fq, %.lr.ph.i.i.i.preheader.i262.us.us ] ; 3 uses
  %.0811.i.i.i.i266.us.us = phi ptr [ %.19.i.i.i.i267.us.us, %.lr.ph.i.i.i.i264.us.us ], [ %i.fr, %.lr.ph.i.i.i.preheader.i262.us.us ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i265.us.us, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !174
  %i.fu = icmp ult ptr %i.ft, %1                  ; 2 uses
  %.19.i.i.i.i267.us.us = select i1 %i.fu, ptr %.0811.i.i.i.i266.us.us, ptr %.012.i.i.i.i265.us.us ; 4 uses
  %.1.in.v.i.i.i.i268.us.us = select i1 %i.fu, i64 24, i64 16
  %.1.in.i.i.i.i269.us.us = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i265.us.us, i64 %.1.in.v.i.i.i.i268.us.us
  %.1.i.i.i.i270.us.us = load ptr, ptr %.1.in.i.i.i.i269.us.us, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i271.us.us = icmp eq ptr %.1.i.i.i.i270.us.us, null
  br i1 %.not.i.i.i.i271.us.us, label %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i272.us.us, label %.lr.ph.i.i.i.i264.us.us, !llvm.loop !8

_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i272.us.us: ; preds = %.lr.ph.i.i.i.i264.us.us
  %i.fv = icmp ne ptr %.19.i.i.i.i267.us.us, %i.fr
  tail call void @llvm.assume(i1 %i.fv)
  %i.fw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i267.us.us, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !174
  %i.fy = icmp uge ptr %1, %i.fx
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i267.us.us, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !125
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.0191358.us.us
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !174 ; 2 uses
  %i.gd = getelementptr [8 x i8], ptr %i.em, i64 %.0191358.us.us
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !77
  %i.gf = load i64, ptr %i.eh, align 8, !tbaa !77
  %i.gg = mul i64 %i.gf, %i.ge                    ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 %.5359.us.us
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0302.0, i64 %.0191358.us.us ; 3 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !77
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 64
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !77 ; 2 uses
  %i.gm = mul i64 %i.gl, %i.dw
  %i.gn = add i64 %i.gm, %i.gj
  %i.go = load i64, ptr %i.dt, align 8, !tbaa !77
  invoke void @ggml_backend_tensor_set_2d(ptr noundef nonnull %i.gc, ptr noundef %i.gh, i64 noundef %i.gn, i64 noundef %i.gg, i64 noundef %i.dz, i64 noundef %i.gl, i64 noundef %i.go)
          to label %bb.ab unwind label %.thread.loopexit.split-lp.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i272.us.us
  %i.gp = add i64 %i.gg, %.5359.us.us             ; 3 uses
  %i.gq = load i64, ptr %i.gi, align 8, !tbaa !77
  %i.gr = add i64 %i.gq, %i.gg
  store i64 %i.gr, ptr %i.gi, align 8, !tbaa !77
  %i.gs = add nuw i64 %.0191358.us.us, 1          ; 2 uses
  %exitcond425.not = icmp eq i64 %i.gs, %i.m
  br i1 %exitcond425.not, label %._crit_edge361.us.us, label %bb.y, !llvm.loop !618

._crit_edge361.us.us:                             ; preds = %bb.ab
  %i.gt = add nuw nsw i64 %.0192363.us.us, 1      ; 2 uses
  %exitcond426.not = icmp eq i64 %i.gt, %i.ek
  br i1 %exitcond426.not, label %._crit_edge365.split.us.us, label %.preheader316.us.us, !llvm.loop !619

._crit_edge365.split.us.us:                       ; preds = %._crit_edge361.us.us, %.preheader317.us
  %.4.lcssa.us = phi i64 [ %.3372.us, %.preheader317.us ], [ %i.gp, %._crit_edge361.us.us ] ; 2 uses
  %i.gu = add nuw nsw i64 %.0193371.us, 1         ; 2 uses
  %exitcond427.not = icmp eq i64 %i.gu, %i.ee
  br i1 %exitcond427.not, label %._crit_edge373.loopexit, label %.preheader317.us, !llvm.loop !620

.thread.loopexit.split-lp.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %_ZNSt8_Rb_treeIPK11ggml_tensorSt4pairIKS2_St6vectorIPS0_SaIS6_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i272.us.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

._crit_edge373.loopexit:                          ; preds = %._crit_edge365.split.us.us
  %i.gv = mul i64 %.4.lcssa.us, %i.dz
  br label %._crit_edge373

._crit_edge373:                                   ; preds = %.preheader317.lr.ph, %._crit_edge373.loopexit, %.preheader318
  %.3.lcssa = phi i64 [ 0, %.preheader318 ], [ %i.gv, %._crit_edge373.loopexit ], [ 0, %.preheader317.lr.ph ]
  %i.gw = icmp eq i64 %.3.lcssa, %4
  br i1 %i.gw, label %bb.ad, label %.split368.us.invoke

end_hunk_0
