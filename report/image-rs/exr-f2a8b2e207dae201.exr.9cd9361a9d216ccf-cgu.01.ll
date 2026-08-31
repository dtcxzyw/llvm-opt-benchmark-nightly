Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.01?download=true
inline.NumInlined: 354
inline.NumDeleted: 149
begin_hunk_0_@_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBM_11FlatSamplesEj4_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1S_8adapters3map3MapINtB6_8IntoIterBI_ENCNvXs5_NtBM_4cropINtBM_5LayerINtB3I_15CroppedChannelsINtBM_11AnyChannelsB1o_EEENtB3I_16ApplyCroppedView18reallocate_cropped0EEBO_:bb.a
  %i.r = add i64 %i.o, -1
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = lshr i64 -1, %i.s
  %.sroa.010.0.i = select i1 %i.q, i64 0, i64 %i.t ; 2 uses
  %i.u = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.u, label %.thread33, label %bb.d, !prof !67

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw i64 %.sroa.010.0.i, 1
  %i.w = invoke fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E8try_growBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0, i64 noundef %i.v)
          to label %bb.e unwind label %.thread30  ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 2 uses
  switch i64 %i.x, label %bb.f [
    i64 -1, label %._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge
    i64 0, label %.thread33
  ], !prof !68

._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge: ; preds = %bb.e
  %.pre = load i64, ptr %i.i, align 8, !alias.scope !69, !noalias !72
  br label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.f:                                             ; preds = %bb.e
  %i.y = extractvalue { i64, i64 } %i.w, 1
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.x, i64 noundef %i.y) #23
          to label %.noexc11 unwind label %.thread30

.noexc11:                                         ; preds = %bb.f
  unreachable

.thread33:                                        ; preds = %bb.b, %bb.c, %bb.e
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
          to label %.noexc12 unwind label %.thread30

.noexc12:                                         ; preds = %.thread33
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge, %bb.a
  %i.z = phi i64 [ %.pre, %._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge ], [ %i.j, %bb.a ] ; 3 uses
  %i.aa = icmp ugt i64 %i.z, 4
  br i1 %i.aa, label %bb.g, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit

bb.g:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !69, !noalias !72, !nonnull !14, !noundef !14
  %.pre45 = load i64, ptr %i.l, align 8
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit: ; preds = %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit, %bb.g
  %i.ad = phi i64 [ %.pre45, %bb.g ], [ %i.z, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ] ; 3 uses
  %.sink12.i = phi ptr [ %i.ac, %bb.g ], [ %i.l, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ]
  %.sink11.i = phi ptr [ %i.l, %bb.g ], [ %i.i, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ] ; 3 uses
  %.sink.i13 = phi i64 [ %i.z, %bb.g ], [ 4, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ] ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %.sink.i13
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit, %bb.v
  %.sroa.7.041 = phi i64 [ %i.ay, %bb.v ], [ %i.ad, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit ] ; 4 uses
  invoke fastcc void @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1z_11FlatSamplesEj4_ENCNvXs5_NtB1z_4cropINtB1z_5LayerINtB2H_15CroppedChannelsINtB1z_11AnyChannelsB2b_EEENtB2H_16ApplyCroppedView18reallocate_cropped0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.d, ptr noalias nofree noundef align 8 dereferenceable(448) %i.e)
          to label %bb.u unwind label %.thread

._crit_edge:                                      ; preds = %bb.v, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit
  %.sroa.7.0.lcssa = phi i64 [ %i.ad, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit ], [ %.sink.i13, %bb.v ]
  store i64 %.sroa.7.0.lcssa, ptr %.sink11.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %i.c, ptr noundef nonnull align 8 dereferenceable(448) %i.e, i64 448, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.s, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1z_11FlatSamplesEj4_ENCNvXs5_NtB1z_4cropINtB1z_5LayerINtB2H_15CroppedChannelsINtB1z_11AnyChannelsB2b_EEENtB2H_16ApplyCroppedView18reallocate_cropped0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.b, ptr noalias nofree noundef align 8 dereferenceable(448) %i.c)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.al, %bb.m ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1M_11FlatSamplesEj4_ENCNvXs5_NtB1M_4cropINtB1M_5LayerINtB2U_15CroppedChannelsINtB1M_11AnyChannelsB2o_EEENtB2U_16ApplyCroppedView18reallocate_cropped0EEB1O_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.c) #21
          to label %.thread27 unwind label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.b, align 8, !range !74, !noundef !14
  %.not = icmp eq i64 %i.ah, -1
  br i1 %.not, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  %i.ai = load i64, ptr %i.i, align 8, !alias.scope !75, !noalias !80, !noundef !14 ; 3 uses
  %i.aj = icmp ugt i64 %i.ai, 4
  br i1 %i.aj, label %bb.l, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.af, align 8, !alias.scope !75, !noalias !80, !nonnull !14, !noundef !14
  %.pre.i = load i64, ptr %i.l, align 8, !alias.scope !83, !noalias !84
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i

bb.m:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBE_11FlatSamplesEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a) #21
          to label %.body unwind label %bb.p

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i: ; preds = %bb.k, %bb.l
  %i.am = phi i64 [ %.pre.i, %bb.l ], [ %i.ai, %bb.k ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.ak, %bb.l ], [ %i.l, %bb.k ]
  %.sink11.i.i = phi ptr [ %i.l, %bb.l ], [ %i.i, %bb.k ]
  %.sink.i.i14 = phi i64 [ %i.ai, %bb.l ], [ 4, %bb.k ]
  %i.an = icmp eq i64 %i.am, %.sink.i.i14
  br i1 %i.an, label %bb.n, label %bb.s, !prof !67

bb.n:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i
  invoke fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E21reserve_one_uncheckedBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.o unwind label %bb.m, !noalias !84

bb.o:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %i.af, align 8, !alias.scope !83, !noalias !84, !nonnull !14, !noundef !14
  %.pre6.i = load i64, ptr %i.l, align 8, !alias.scope !83, !noalias !84
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.q:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1M_11FlatSamplesEj4_ENCNvXs5_NtB1M_4cropINtB1M_5LayerINtB2U_15CroppedChannelsINtB1M_11AnyChannelsB2o_EEENtB2U_16ApplyCroppedView18reallocate_cropped0EEB1O_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.s:                                             ; preds = %bb.o, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i
  %i.aq = phi i64 [ %.pre6.i, %bb.o ], [ %i.am, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i ]
  %.sroa.04.0.i = phi ptr [ %i.ao, %bb.o ], [ %.sink12.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i ]
  %.sroa.0.0.i15 = phi ptr [ %i.l, %bb.o ], [ %.sink11.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [96 x i8], ptr %.sroa.04.0.i, i64 %i.aq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ar, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  %i.as = load i64, ptr %.sroa.0.0.i15, align 8, !alias.scope !83, !noalias !84, !noundef !14
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %.sroa.0.0.i15, align 8, !alias.scope !83, !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.t:                                             ; preds = %bb.x, %.body
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

.thread:                                          ; preds = %.lr.ph
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.041, ptr %.sink11.i, align 8
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph
  %i.aw = load i64, ptr %i.d, align 8, !range !74, !noundef !14
  %.not2 = icmp eq i64 %i.aw, -1
  br i1 %.not2, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw [96 x i8], ptr %.sink12.i, i64 %.sroa.7.041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ax, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  %i.ay = add i64 %.sroa.7.041, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %.sink.i13
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %bb.u
  store i64 %.sroa.7.041, ptr %.sink11.i, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1M_11FlatSamplesEj4_ENCNvXs5_NtB1M_4cropINtB1M_5LayerINtB2U_15CroppedChannelsINtB1M_11AnyChannelsB2o_EEENtB2U_16ApplyCroppedView18reallocate_cropped0EEB1O_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.e)
  br label %bb.r

.thread27:                                        ; preds = %.body, %bb.x
  %.pn25 = phi { ptr, i32 } [ %.pn26, %bb.x ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn25

bb.x:                                             ; preds = %.thread30, %.thread
  %.pn26 = phi { ptr, i32 } [ %i.av, %.thread ], [ %lpad.thr_comm, %.thread30 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1M_11FlatSamplesEj4_ENCNvXs5_NtB1M_4cropINtB1M_5LayerINtB2U_15CroppedChannelsINtB1M_11AnyChannelsB2o_EEENtB2U_16ApplyCroppedView18reallocate_cropped0EEB1O_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.e) #21
          to label %.thread27 unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1M_8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtBP_4meta9attribute18ChannelDescriptionENCNvBL_10decompress0EEBP_(ptr noalias nofree noundef align 8 dereferenceable(304) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload23 = load ptr, ptr %1, align 8, !alias.scope !85, !nonnull !14, !noundef !14 ; 3 uses
  %.sroa.8.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload25 = load ptr, ptr %.sroa.8.0..sroa_idx24, align 8, !alias.scope !85, !nonnull !14, !noundef !14 ; 4 uses
  %.sroa.10.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.0.copyload27 = load ptr, ptr %.sroa.10.0..sroa_idx26, align 8, !alias.scope !85 ; 7 uses
  %.sroa.11.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.11.0.copyload29 = load ptr, ptr %.sroa.11.0..sroa_idx28, align 8, !alias.scope !85 ; 5 uses
  %i.a = ptrtoint ptr %.sroa.8.0.copyload25 to i64
  %i.b = ptrtoint ptr %.sroa.0.0.copyload23 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 6                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !89, !noalias !94, !noundef !14 ; 4 uses
  %i.g = icmp ugt i64 %i.f, 6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 6)
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !96
  %i.i = select i1 %i.g, i64 %.val.i, i64 %i.f    ; 3 uses
  %i.j = sub i64 %.sink.i.i, %i.i
  %.not.i = icmp ult i64 %i.j, %i.d
  br i1 %.not.i, label %bb.b, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.i, %i.d                       ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread, label %bb.c, !prof !67

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i64 %i.k, 2
  %i.n = add i64 %i.k, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = lshr i64 -1, %i.o
  %.sroa.010.0.i = select i1 %i.m, i64 0, i64 %i.p ; 2 uses
  %i.q = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.q, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit, !prof !67

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit: ; preds = %bb.c
  %i.r = add nuw i64 %.sroa.010.0.i, 1
  %i.s = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.r) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0        ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 -1, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge
    i64 0, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread
  ], !prof !68

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !97, !noalias !100
  br label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.d:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit
  %i.u = extractvalue { i64, i64 } %i.s, 1
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.t, i64 noundef %i.u) #23
  unreachable

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge, %bb.a
  %i.v = phi i64 [ %.pre, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge ], [ %i.f, %bb.a ] ; 2 uses
  %i.w = icmp ugt i64 %i.v, 6                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !14
  %.sink12.i = select i1 %i.w, ptr %i.y, ptr %i.h
  %.sink11.i = select i1 %i.w, ptr %i.h, ptr %i.e ; 4 uses
  %.sink.i9 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 6) ; 3 uses
  %i.z = load i64, ptr %.sink11.i, align 8, !noundef !14 ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sink.i9
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.11.0.copyload29, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %bb.j, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
  %.sroa.7.0.lcssa = phi i64 [ %i.z, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ], [ %.sink.i9, %bb.j ]
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.0.copyload23, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ], [ %i.bo, %bb.j ] ; 2 uses
  store i64 %.sroa.7.0.lcssa, ptr %.sink11.i, align 8
  %i.ac = icmp eq ptr %.sroa.0.0.lcssa, %.sroa.8.0.copyload25
  br i1 %i.ac, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit20, label %.lr.ph113

.lr.ph113:                                        ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.11.0.copyload29, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.0.0109 = phi ptr [ %.sroa.0.0.copyload23, %.lr.ph ], [ %i.bo, %bb.j ] ; 5 uses
  %.sroa.7.0108 = phi i64 [ %i.z, %.lr.ph ], [ %i.ca, %bb.j ] ; 4 uses
  %i.af = icmp eq ptr %.sroa.0.0109, %.sroa.8.0.copyload25
  br i1 %i.af, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload27) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload29) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.ag = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !105, !noundef !14 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0109, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !102, !noalias !110, !noundef !14
  %i.aj = load i64, ptr %.sroa.11.0.copyload29, align 8, !noalias !105, !noundef !14
  %i.ak = load i64, ptr %i.ab, align 8, !noalias !105, !noundef !14
  %i.al = invoke { i64, i64 } @_RNvMsd_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_18ChannelDescription21subsampled_resolution(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.0109, i64 noundef %i.aj, i64 noundef %i.ak)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.g:                                             ; preds = %.lr.ph113, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit
  %.sroa.052.0111 = phi ptr [ %.sroa.0.0.lcssa, %.lr.ph113 ], [ %i.am, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.an = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !114, !noundef !14 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !111, !noalias !119, !noundef !14
  %i.aq = load i64, ptr %.sroa.11.0.copyload29, align 8, !noalias !114, !noundef !14
  %i.ar = load i64, ptr %i.ad, align 8, !noalias !114, !noundef !14
  %i.as = tail call { i64, i64 } @_RNvMsd_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_18ChannelDescription21subsampled_resolution(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.052.0111, i64 noundef %i.aq, i64 noundef %i.ar), !noalias !119 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 57
  %i.au = load i8, ptr %i.at, align 1, !range !120, !alias.scope !111, !noalias !119, !noundef !14
  %i.av = icmp ne i8 %i.au, 1                     ; 2 uses
  %..i.i13 = select i1 %i.av, i64 2, i64 1
  %i.aw = extractvalue { i64, i64 } %i.as, 1      ; 2 uses
  %i.ax = extractvalue { i64, i64 } %i.as, 0      ; 2 uses
  %i.ay = mul i64 %i.ax, %i.aw
  %i.az = zext i1 %i.av to i64
  %i.ba = shl i64 %i.ay, %i.az
  %i.bb = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !114, !noundef !14
  %i.bc = add i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %.sroa.10.0.copyload27, align 8, !noalias !114
  %i.bd = load i64, ptr %i.e, align 8, !alias.scope !121, !noalias !126, !noundef !14 ; 3 uses
  %i.be = icmp ugt i64 %i.bd, 6
  br i1 %i.be, label %bb.h, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.ae, align 8, !alias.scope !121, !noalias !126, !nonnull !14, !noundef !14
  %.pre118 = load i64, ptr %i.h, align 8, !alias.scope !129, !noalias !130
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i: ; preds = %bb.g, %bb.h
  %i.bg = phi i64 [ %.pre118, %bb.h ], [ %i.bd, %bb.g ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.bf, %bb.h ], [ %i.h, %bb.g ]
  %.sink11.i.i = phi ptr [ %i.h, %bb.h ], [ %i.e, %bb.g ]
  %.sink.i.i21 = phi i64 [ %i.bd, %bb.h ], [ 6, %bb.g ]
  %i.bh = icmp eq i64 %i.bg, %.sink.i.i21
  br i1 %i.bh, label %bb.i, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit, !prof !67

bb.i:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i
  tail call fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0), !noalias !130
  %i.bi = load ptr, ptr %i.ae, align 8, !alias.scope !129, !noalias !130, !nonnull !14, !noundef !14
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !129, !noalias !130
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i, %bb.i
  %i.bj = phi i64 [ %.pre.i, %bb.i ], [ %i.bg, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i ]
  %.sroa.04.0.i = phi ptr [ %i.bi, %bb.i ], [ %.sink12.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i ]
  %.sroa.0.0.i22 = phi ptr [ %i.h, %bb.i ], [ %.sink11.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %.sroa.04.0.i, i64 %i.bj ; 6 uses
  store i64 %i.ax, ptr %i.bk, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.aw, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %i.an, ptr %.sroa.565.0..sroa_idx, align 8
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i64 %i.an, ptr %.sroa.666.0..sroa_idx, align 8
  %.sroa.767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store i64 %i.ap, ptr %.sroa.767.0..sroa_idx, align 8
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store i64 %..i.i13, ptr %.sroa.868.0..sroa_idx, align 8
  %i.bl = load i64, ptr %.sroa.0.0.i22, align 8, !alias.scope !129, !noalias !130, !noundef !14
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %.sroa.0.0.i22, align 8, !alias.scope !129, !noalias !130
  %i.bn = icmp eq ptr %i.am, %.sroa.8.0.copyload25
  br i1 %i.bn, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit20, label %bb.g

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit20: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit, %._crit_edge, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit
  ret void

bb.j:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0109, i64 64 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0109, i64 57
  %i.bq = load i8, ptr %i.bp, align 1, !range !120, !alias.scope !102, !noalias !110, !noundef !14
  %i.br = icmp ne i8 %i.bq, 1                     ; 2 uses
  %..i.i = select i1 %i.br, i64 2, i64 1
  %i.bs = extractvalue { i64, i64 } %i.al, 1      ; 2 uses
  %i.bt = extractvalue { i64, i64 } %i.al, 0      ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bs
  %i.bv = zext i1 %i.br to i64
  %i.bw = shl i64 %i.bu, %i.bv
  %i.bx = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !105, !noundef !14
  %i.by = add i64 %i.bw, %i.bx
  store i64 %i.by, ptr %.sroa.10.0.copyload27, align 8, !noalias !105
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %.sink12.i, i64 %.sroa.7.0108 ; 6 uses
  store i64 %i.bt, ptr %i.bz, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.bs, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 %i.ag, ptr %.sroa.546.0..sroa_idx, align 8
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i64 %i.ag, ptr %.sroa.647.0..sroa_idx, align 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store i64 %i.ai, ptr %.sroa.748.0..sroa_idx, align 8
  %.sroa.849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store i64 %..i.i, ptr %.sroa.849.0..sroa_idx, align 8
  %i.ca = add i64 %.sroa.7.0108, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %.sink.i9
  br i1 %exitcond.not, label %._crit_edge, label %bb.e

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit: ; preds = %bb.e
  store i64 %.sroa.7.0108, ptr %.sink11.i, align 8
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit20

bb.k:                                             ; preds = %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.0108, ptr %.sink11.i, align 8
  resume { ptr, i32 } %i.cb
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1M_8adapters3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtBP_4meta9attribute18ChannelDescriptionENCNvBL_8compress0EEBP_(ptr noalias nofree noundef align 8 dereferenceable(304) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload23 = load ptr, ptr %1, align 8, !alias.scope !131, !nonnull !14, !noundef !14 ; 3 uses
  %.sroa.8.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload25 = load ptr, ptr %.sroa.8.0..sroa_idx24, align 8, !alias.scope !131, !nonnull !14, !noundef !14 ; 4 uses
  %.sroa.10.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.0.copyload27 = load ptr, ptr %.sroa.10.0..sroa_idx26, align 8, !alias.scope !131 ; 5 uses
  %.sroa.11.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.11.0.copyload29 = load ptr, ptr %.sroa.11.0..sroa_idx28, align 8, !alias.scope !131 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.8.0.copyload25 to i64
  %i.b = ptrtoint ptr %.sroa.0.0.copyload23 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 6                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !135, !noalias !140, !noundef !14 ; 4 uses
  %i.g = icmp ugt i64 %i.f, 6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 6)
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !142
  %i.i = select i1 %i.g, i64 %.val.i, i64 %i.f    ; 3 uses
  %i.j = sub i64 %.sink.i.i, %i.i
  %.not.i = icmp ult i64 %i.j, %i.d
  br i1 %.not.i, label %bb.b, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.i, %i.d                       ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread, label %bb.c, !prof !67

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i64 %i.k, 2
  %i.n = add i64 %i.k, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = lshr i64 -1, %i.o
  %.sroa.010.0.i = select i1 %i.m, i64 0, i64 %i.p ; 2 uses
  %i.q = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.q, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit, !prof !67

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit: ; preds = %bb.c
  %i.r = add nuw i64 %.sroa.010.0.i, 1
  %i.s = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.r) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0        ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 -1, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge
    i64 0, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread
  ], !prof !68

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !143, !noalias !146
  br label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.d:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit
  %i.u = extractvalue { i64, i64 } %i.s, 1
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.t, i64 noundef %i.u) #23
  unreachable

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge, %bb.a
  %i.v = phi i64 [ %.pre, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge ], [ %i.f, %bb.a ] ; 2 uses
  %i.w = icmp ugt i64 %i.v, 6                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !14
  %.sink12.i = select i1 %i.w, ptr %i.y, ptr %i.h
  %.sink11.i = select i1 %i.w, ptr %i.h, ptr %i.e ; 4 uses
  %.sink.i9 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 6) ; 3 uses
  %i.z = load i64, ptr %.sink11.i, align 8, !noundef !14 ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sink.i9
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.10.0.copyload27, i64 8
  br label %bb.e

._crit_edge:                                      ; preds = %bb.j, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
  %.sroa.7.0.lcssa = phi i64 [ %i.z, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ], [ %.sink.i9, %bb.j ]
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.0.copyload23, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ], [ %i.bk, %bb.j ] ; 2 uses
  store i64 %.sroa.7.0.lcssa, ptr %.sink11.i, align 8
  %i.ac = icmp eq ptr %.sroa.0.0.lcssa, %.sroa.8.0.copyload25
  br i1 %i.ac, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit20, label %.lr.ph113

.lr.ph113:                                        ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.10.0.copyload27, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.0.0109 = phi ptr [ %.sroa.0.0.copyload23, %.lr.ph ], [ %i.bk, %bb.j ] ; 5 uses
  %.sroa.7.0108 = phi i64 [ %i.z, %.lr.ph ], [ %i.by, %bb.j ] ; 4 uses
  %i.af = icmp eq ptr %.sroa.0.0109, %.sroa.8.0.copyload25
  br i1 %i.af, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload27) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.ag = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !151, !noundef !14
  %i.ah = load i64, ptr %i.ab, align 8, !noalias !151, !noundef !14
  %i.ai = invoke { i64, i64 } @_RNvMsd_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_18ChannelDescription21subsampled_resolution(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.0109, i64 noundef %i.ag, i64 noundef %i.ah)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.g:                                             ; preds = %.lr.ph113, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit
  %.sroa.052.0111 = phi ptr [ %.sroa.0.0.lcssa, %.lr.ph113 ], [ %i.aj, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.ak = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !159, !noundef !14
  %i.al = load i64, ptr %i.ad, align 8, !noalias !159, !noundef !14
  %i.am = tail call { i64, i64 } @_RNvMsd_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_18ChannelDescription21subsampled_resolution(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.052.0111, i64 noundef %i.ak, i64 noundef %i.al), !noalias !164 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 57
  %i.ao = load i8, ptr %i.an, align 1, !range !120, !alias.scope !156, !noalias !164, !noundef !14
  %i.ap = icmp ne i8 %i.ao, 1                     ; 2 uses
  %..i.i13 = select i1 %i.ap, i64 2, i64 1
  %i.aq = extractvalue { i64, i64 } %i.am, 1      ; 2 uses
  %i.ar = extractvalue { i64, i64 } %i.am, 0      ; 2 uses
  %i.as = mul i64 %i.ar, %i.aq
  %i.at = zext i1 %i.ap to i64
  %i.au = shl i64 %i.as, %i.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload29) ]
  %i.av = load i64, ptr %.sroa.11.0.copyload29, align 8, !noalias !159, !noundef !14 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !156, !noalias !164, !noundef !14
  %i.ay = add i64 %i.au, %i.av
  store i64 %i.ay, ptr %.sroa.11.0.copyload29, align 8, !noalias !159
  %i.az = load i64, ptr %i.e, align 8, !alias.scope !165, !noalias !170, !noundef !14 ; 3 uses
  %i.ba = icmp ugt i64 %i.az, 6
  br i1 %i.ba, label %bb.h, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.ae, align 8, !alias.scope !165, !noalias !170, !nonnull !14, !noundef !14
  %.pre118 = load i64, ptr %i.h, align 8, !alias.scope !173, !noalias !174
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i: ; preds = %bb.g, %bb.h
  %i.bc = phi i64 [ %.pre118, %bb.h ], [ %i.az, %bb.g ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.bb, %bb.h ], [ %i.h, %bb.g ]
  %.sink11.i.i = phi ptr [ %i.h, %bb.h ], [ %i.e, %bb.g ]
  %.sink.i.i21 = phi i64 [ %i.az, %bb.h ], [ 6, %bb.g ]
  %i.bd = icmp eq i64 %i.bc, %.sink.i.i21
  br i1 %i.bd, label %bb.i, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit, !prof !67

bb.i:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i
  tail call fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0), !noalias !174
  %i.be = load ptr, ptr %i.ae, align 8, !alias.scope !173, !noalias !174, !nonnull !14, !noundef !14
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !173, !noalias !174
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i, %bb.i
  %i.bf = phi i64 [ %.pre.i, %bb.i ], [ %i.bc, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i ]
  %.sroa.04.0.i = phi ptr [ %i.be, %bb.i ], [ %.sink12.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i ]
  %.sroa.0.0.i22 = phi ptr [ %i.h, %bb.i ], [ %.sink11.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %.sroa.04.0.i, i64 %i.bf ; 6 uses
  store i64 %i.ar, ptr %i.bg, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.aq, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %i.av, ptr %.sroa.565.0..sroa_idx, align 8
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 %i.av, ptr %.sroa.666.0..sroa_idx, align 8
  %.sroa.767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i64 %i.ax, ptr %.sroa.767.0..sroa_idx, align 8
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i64 %..i.i13, ptr %.sroa.868.0..sroa_idx, align 8
  %i.bh = load i64, ptr %.sroa.0.0.i22, align 8, !alias.scope !173, !noalias !174, !noundef !14
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %.sroa.0.0.i22, align 8, !alias.scope !173, !noalias !174
  %i.bj = icmp eq ptr %i.aj, %.sroa.8.0.copyload25
  br i1 %i.bj, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit20, label %bb.g

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit20: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit, %._crit_edge, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit
  ret void

bb.j:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0109, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0109, i64 57
  %i.bm = load i8, ptr %i.bl, align 1, !range !120, !alias.scope !148, !noalias !175, !noundef !14
  %i.bn = icmp ne i8 %i.bm, 1                     ; 2 uses
  %..i.i = select i1 %i.bn, i64 2, i64 1
  %i.bo = extractvalue { i64, i64 } %i.ai, 1      ; 2 uses
  %i.bp = extractvalue { i64, i64 } %i.ai, 0      ; 2 uses
  %i.bq = mul i64 %i.bp, %i.bo
  %i.br = zext i1 %i.bn to i64
  %i.bs = shl i64 %i.bq, %i.br
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload29) ]
  %i.bt = load i64, ptr %.sroa.11.0.copyload29, align 8, !noalias !151, !noundef !14 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0109, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !148, !noalias !175, !noundef !14
  %i.bw = add i64 %i.bs, %i.bt
  store i64 %i.bw, ptr %.sroa.11.0.copyload29, align 8, !noalias !151
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %.sink12.i, i64 %.sroa.7.0108 ; 6 uses
  store i64 %i.bp, ptr %i.bx, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.bo, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %i.bt, ptr %.sroa.546.0..sroa_idx, align 8
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i64 %i.bt, ptr %.sroa.647.0..sroa_idx, align 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i64 %i.bv, ptr %.sroa.748.0..sroa_idx, align 8
  %.sroa.849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store i64 %..i.i, ptr %.sroa.849.0..sroa_idx, align 8
  %i.by = add i64 %.sroa.7.0108, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %.sink.i9
  br i1 %exitcond.not, label %._crit_edge, label %bb.e

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit: ; preds = %bb.e
  store i64 %.sroa.7.0108, ptr %.sink11.i, align 8
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit20

bb.k:                                             ; preds = %bb.f
  %i.bz = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.0108, ptr %.sink11.i, align 8
  resume { ptr, i32 } %i.bz
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendBJ_E6extendNtNtBP_5image18FlatSampleIteratorEBP_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit.i:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsa_NtCsdsTQD3x2eOp_3exr5imageNtB5_18FlatSampleIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator9size_hint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  %i.d = load i64, ptr %i.b, align 8, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !180, !noalias !185, !noundef !14 ; 4 uses
  %i.g = icmp ugt i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %i.h, align 8
  %i.i = select i1 %i.g, i64 %.pre, i64 %i.f      ; 3 uses
  %.sink.i.i = call i64 @llvm.umax.i64(i64 %i.f, i64 8)
  %i.j = sub i64 %.sink.i.i, %i.i
  %.not.i = icmp ult i64 %i.j, %i.d
  br i1 %.not.i, label %bb.a, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.a:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit.i
  %i.k = add i64 %i.i, %i.d                       ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit.thread, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %i.k, 2
  %i.n = add i64 %i.k, -1
  %i.o = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = lshr i64 -1, %i.o
  %.sroa.010.0.i = select i1 %i.m, i64 0, i64 %i.p ; 2 uses
  %i.q = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.q, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit.thread, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit, !prof !67

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit: ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.010.0.i, 1
  %i.s = call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.r) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0        ; 2 uses
  switch i64 %i.t, label %bb.c [
    i64 -1, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge
    i64 0, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit.thread
  ], !prof !68

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit
  %.pre48 = load i64, ptr %i.e, align 8, !alias.scope !187, !noalias !190
  br label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.c:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit
  %i.u = extractvalue { i64, i64 } %i.s, 1
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.t, i64 noundef %i.u) #23
  unreachable

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit.thread: ; preds = %bb.a, %bb.b, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit.i
  %i.v = phi i64 [ %.pre48, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge ], [ %i.f, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit.i ] ; 2 uses
  %i.w = icmp ugt i64 %i.v, 8                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !14
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sink12.i = select i1 %i.w, ptr %i.z, ptr %i.aa
  %.sink11.i = select i1 %i.w, ptr %i.x, ptr %i.e ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAhj18_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendhE6extendINtNtBW_8adapters12GenericShuntINtNtB1U_3map3MapNtNtNtBY_3str4iter5CharsNCINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB37_4Text11new_or_noneReE0EINtNtBY_6option6OptionNtNtBY_7convert10InfallibleEEEB3b_:_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i
._crit_edge31:                                    ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E4pushCsdsTQD3x2eOp_3exr.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %._crit_edge31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.h:                                             ; preds = %.lr.ph
  %i.ax = extractvalue { i1, i8 } %i.ai, 0
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = extractvalue { i1, i8 } %i.ai, 1
  %i.az = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 %storemerge28
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = add i64 %storemerge28, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.h
  store i64 %storemerge28, ptr %.sink11.i, align 8
  br label %bb.g

bb.k:                                             ; preds = %.lr.ph
  %i.bb = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge28, ptr %.sink11.i, align 8
  resume { ptr, i32 } %i.bb
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAhj18_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendhE6extendINtNtNtBW_8adapters6cloned6ClonedINtNtNtBY_5slice4iter4IterhEEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator9size_hintCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = load i64, ptr %i.b, align 8, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !224, !noalias !229, !noundef !14 ; 4 uses
  %i.h = icmp ugt i64 %i.g, 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %i.i, align 8
  %i.j = select i1 %i.h, i64 %.pre, i64 %i.g      ; 3 uses
  %.sink.i.i = call i64 @llvm.umax.i64(i64 %i.g, i64 24)
  %i.k = sub i64 %.sink.i.i, %i.j
  %.not.i = icmp ult i64 %i.k, %i.e
  br i1 %.not.i, label %bb.a, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.a:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i
  %i.l = add i64 %i.j, %i.e                       ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ult i64 %i.l, 2
  %i.o = add i64 %i.l, -1
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = lshr i64 -1, %i.p
  %.sroa.010.0.i = select i1 %i.n, i64 0, i64 %i.q ; 2 uses
  %i.r = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.r, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E11try_reserveCsdsTQD3x2eOp_3exr.exit, !prof !67

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E11try_reserveCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.010.0.i, 1
  %i.t = call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E8try_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.s) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0        ; 2 uses
  switch i64 %i.u, label %bb.c [
    i64 -1, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge
    i64 0, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread
  ], !prof !68

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E11try_reserveCsdsTQD3x2eOp_3exr.exit
  %.pre34 = load i64, ptr %i.f, align 8, !alias.scope !231, !noalias !234
  br label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.c:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E11try_reserveCsdsTQD3x2eOp_3exr.exit
  %i.v = extractvalue { i64, i64 } %i.t, 1
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.u, i64 noundef %i.v) #23
  unreachable

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread: ; preds = %bb.a, %bb.b, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E11try_reserveCsdsTQD3x2eOp_3exr.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i
  %i.w = phi i64 [ %.pre34, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge ], [ %i.g, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i ] ; 2 uses
  %i.x = icmp ugt i64 %i.w, 24                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink12.i = select i1 %i.x, ptr %i.aa, ptr %i.ab
  %.sink11.i = select i1 %i.x, ptr %i.y, ptr %i.f ; 4 uses
  %.sink.i = call i64 @llvm.umax.i64(i64 %i.w, i64 24) ; 3 uses
  %i.ac = load i64, ptr %.sink11.i, align 8, !noundef !14 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %.sink.i
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
  %storemerge.lcssa = phi i64 [ %i.ac, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ], [ %.sink.i, %bb.i ]
  store i64 %storemerge.lcssa, ptr %.sink11.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = load <2 x ptr>, ptr %i.c, align 16
  store <2 x ptr> %i.ae, ptr %i.a, align 16
  %i.af = call { i1, i8 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.ag = extractvalue { i1, i8 } %i.af, 0
  br i1 %i.ag, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.d

.lr.ph:                                           ; preds = %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit, %bb.i
  %storemerge28 = phi i64 [ %i.bc, %bb.i ], [ %i.ac, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ] ; 4 uses
  %i.ak = invoke { i1, i8 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.d:                                             ; preds = %.lr.ph30, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E4pushCsdsTQD3x2eOp_3exr.exit
  %i.al = phi { i1, i8 } [ %i.af, %.lr.ph30 ], [ %i.ax, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E4pushCsdsTQD3x2eOp_3exr.exit ]
  %i.am = extractvalue { i1, i8 } %i.al, 1
  %i.an = load i64, ptr %i.f, align 8, !alias.scope !236, !noalias !241, !noundef !14 ; 3 uses
  %i.ao = icmp ugt i64 %i.an, 24
  br i1 %i.ao, label %bb.e, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.aj, align 8, !alias.scope !236, !noalias !241, !nonnull !14, !noundef !14
  %.pre36 = load i64, ptr %i.ai, align 8, !alias.scope !243
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12: ; preds = %bb.d, %bb.e
  %i.aq = phi i64 [ %.pre36, %bb.e ], [ %i.an, %bb.d ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.ap, %bb.e ], [ %i.ah, %bb.d ]
  %.sink11.i.i13 = phi ptr [ %i.ai, %bb.e ], [ %i.f, %bb.d ]
  %.sink.i.i14 = phi i64 [ %i.an, %bb.e ], [ 24, %bb.d ]
  %i.ar = icmp eq i64 %i.aq, %.sink.i.i14
  br i1 %i.ar, label %bb.f, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E4pushCsdsTQD3x2eOp_3exr.exit, !prof !67

bb.f:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12
  call fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E21reserve_one_uncheckedCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  %i.as = load ptr, ptr %i.aj, align 8, !alias.scope !243, !nonnull !14, !noundef !14
  %.pre.i = load i64, ptr %i.ai, align 8, !alias.scope !243
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E4pushCsdsTQD3x2eOp_3exr.exit

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E4pushCsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12, %bb.f
  %i.at = phi i64 [ %.pre.i, %bb.f ], [ %i.aq, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12 ]
  %.sroa.04.0.i = phi ptr [ %i.as, %bb.f ], [ %.sink12.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12 ]
  %.sroa.0.0.i15 = phi ptr [ %i.ai, %bb.f ], [ %.sink11.i.i13, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 %i.at
  store i8 %i.am, ptr %i.au, align 1
  %i.av = load i64, ptr %.sroa.0.0.i15, align 8, !alias.scope !243, !noundef !14
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %.sroa.0.0.i15, align 8, !alias.scope !243
  %i.ax = call { i1, i8 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.ay = extractvalue { i1, i8 } %i.ax, 0
  br i1 %i.ay, label %bb.d, label %._crit_edge31

._crit_edge31:                                    ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E4pushCsdsTQD3x2eOp_3exr.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %._crit_edge31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.h:                                             ; preds = %.lr.ph
  %i.az = extractvalue { i1, i8 } %i.ak, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = extractvalue { i1, i8 } %i.ak, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 %storemerge28
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = add i64 %storemerge28, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.h
  store i64 %storemerge28, ptr %.sink11.i, align 8
  br label %bb.g

bb.k:                                             ; preds = %.lr.ph
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge28, ptr %.sink11.i, align 8
  resume { ptr, i32 } %i.bd
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAhj8_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendhE6extendINtNtNtBV_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMsf_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB2R_8TimeCode25unpack_user_data_from_u320EEB2V_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i:
  %.sroa.0.0.copyload24 = load ptr, ptr %1, align 8, !alias.scope !244 ; 3 uses
  %.sroa.6.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload26 = load i64, ptr %.sroa.6.0..sroa_idx25, align 8, !alias.scope !244 ; 4 uses
  %.sroa.9.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload28 = load i64, ptr %.sroa.9.0..sroa_idx27, align 8, !alias.scope !244 ; 4 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.9.0.copyload28, i64 %.sroa.6.0.copyload26) ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !248, !noalias !253, !noundef !14 ; 4 uses
  %i.c = icmp ugt i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %i.d, align 8
  %i.e = select i1 %i.c, i64 %.pre, i64 %i.b      ; 3 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 8)
  %i.f = sub i64 %.sink.i.i, %i.e
  %.not.i = icmp ult i64 %i.f, %spec.select.i.i
  br i1 %.not.i, label %bb.a, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.a:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i
  %i.g = add i64 %i.e, %spec.select.i.i           ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.g, 2
  %i.j = add i64 %i.g, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = lshr i64 -1, %i.k
  %.sroa.010.0.i = select i1 %i.i, i64 0, i64 %i.l ; 2 uses
  %i.m = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.m, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit, !prof !67

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  %i.n = add nuw i64 %.sroa.010.0.i, 1
  %i.o = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E8try_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n) ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0        ; 2 uses
  switch i64 %i.p, label %bb.c [
    i64 -1, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge
    i64 0, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread
  ], !prof !68

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit
  %.pre91 = load i64, ptr %i.a, align 8, !alias.scope !255, !noalias !258
  br label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.c:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit
  %i.q = extractvalue { i64, i64 } %i.o, 1
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.p, i64 noundef %i.q) #23
  unreachable

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread: ; preds = %bb.a, %bb.b, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i
  %i.r = phi i64 [ %.pre91, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge ], [ %i.b, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i ] ; 2 uses
  %i.s = icmp ugt i64 %i.r, 8
  %i.t = load ptr, ptr %0, align 8, !alias.scope !255, !noalias !258, !noundef !14 ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit

bb.e:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
  %i.v = icmp eq ptr %i.t, null
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.d, %bb.e
  %.sink12.i = phi ptr [ %i.t, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  %.sink11.i = phi ptr [ %i.u, %bb.d ], [ %i.a, %bb.e ] ; 4 uses
  %.sink.i = phi i64 [ %i.r, %bb.d ], [ 8, %bb.e ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink12.i) ]
  %i.x = load i64, ptr %.sink11.i, align 8, !noundef !14 ; 3 uses
  %i.y = icmp ult i64 %i.x, %.sink.i
  br i1 %i.y, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.6.0.copyload26, i64 %.sroa.9.0.copyload28)
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.k, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit
  %.sroa.6.0.lcssa = phi i64 [ %.sroa.6.0.copyload26, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit ], [ %i.ab, %bb.k ] ; 2 uses
  %storemerge.lcssa = phi i64 [ %i.x, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit ], [ %.sink.i, %bb.k ]
  store i64 %storemerge.lcssa, ptr %.sink11.i, align 8
  %i.z = icmp ult i64 %.sroa.6.0.lcssa, %.sroa.9.0.copyload28
  br i1 %i.z, label %.lr.ph73.split.preheader, label %.loopexit

.lr.ph73.split.preheader:                         ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %.lr.ph73.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.k
  %storemerge64 = phi i64 [ %i.bj, %bb.k ], [ %i.x, %.lr.ph.split.preheader ] ; 4 uses
  %.sroa.6.063 = phi i64 [ %i.ab, %bb.k ], [ %.sroa.6.0.copyload26, %.lr.ph.split.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.6.063, %umax
  br i1 %exitcond.not, label %.split.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.ab = add i64 %.sroa.6.063, 1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload24) ]
  %i.ac = shl i64 %.sroa.6.063, 2                 ; 3 uses
  %.val.i.i = load i32, ptr %.sroa.0.0.copyload24, align 4, !noalias !260
  %i.ad = icmp ult i64 %i.ac, 32
  br i1 %i.ad, label %.check, label %.split67.us.invoke, !prof !263

.split67.us.invoke:                               ; preds = %.check, %bb.f
  %i.ae = phi ptr [ @4, %bb.f ], [ @5, %.check ]
  %i.af = phi i64 [ 48, %bb.f ], [ 47, %.check ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24
          to label %.split67.us.cont unwind label %bb.l

.split67.us.cont:                                 ; preds = %.split67.us.invoke
  unreachable

.check:                                           ; preds = %bb.f
  %i.ag = icmp samesign ult i64 %i.ac, 29
  br i1 %i.ag, label %bb.k, label %.split67.us.invoke, !prof !263

.lr.ph73.split:                                   ; preds = %.lr.ph73.split.preheader, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E4pushCsdsTQD3x2eOp_3exr.exit
  %.sroa.441.071 = phi i64 [ %i.ah, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E4pushCsdsTQD3x2eOp_3exr.exit ], [ %.sroa.6.0.lcssa, %.lr.ph73.split.preheader ] ; 2 uses
  %i.ah = add i64 %.sroa.441.071, 1               ; 2 uses
  %i.ai = shl i64 %.sroa.441.071, 2               ; 3 uses
  %.val.i.i17 = load i32, ptr %.sroa.0.0.copyload24, align 4, !noalias !264
  %i.aj = icmp ult i64 %i.ai, 32
  br i1 %i.aj, label %.check75, label %.split77.us, !prof !263

.split77.us:                                      ; preds = %.lr.ph73.split
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !noalias !264
  unreachable

.check75:                                         ; preds = %.lr.ph73.split
  %i.ak = icmp samesign ult i64 %i.ai, 29
  br i1 %i.ak, label %bb.h, label %bb.g, !prof !263

bb.g:                                             ; preds = %.check75
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !noalias !264
  unreachable

bb.h:                                             ; preds = %.check75
  %i.al = trunc nuw nsw i64 %i.ai to i32          ; 2 uses
  %i.am = sub nuw nsw i32 28, %i.al
  %i.an = lshr i32 -1, %i.am
  %i.ao = and i32 %.val.i.i17, %i.an
  %i.ap = lshr i32 %i.ao, %i.al
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = load i64, ptr %i.a, align 8, !alias.scope !267, !noalias !272, !noundef !14 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 8
  %i.at = load ptr, ptr %0, align 8, !alias.scope !267, !noalias !272, !noundef !14 ; 2 uses
  br i1 %i.as, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = icmp eq ptr %i.at, null
  tail call void @llvm.assume(i1 %i.au)
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20: ; preds = %bb.h, %bb.i
  %.sink12.i.i = phi ptr [ %i.aa, %bb.i ], [ %i.at, %bb.h ] ; 2 uses
  %.sink11.i.i21 = phi ptr [ %i.a, %bb.i ], [ %i.aa, %bb.h ] ; 2 uses
  %.sink.i.i22 = phi i64 [ 8, %bb.i ], [ %i.ar, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink12.i.i) ]
  %i.av = load i64, ptr %.sink11.i.i21, align 8, !alias.scope !274, !noundef !14 ; 2 uses
  %i.aw = icmp eq i64 %i.av, %.sink.i.i22
  br i1 %i.aw, label %bb.j, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E4pushCsdsTQD3x2eOp_3exr.exit, !prof !67

bb.j:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20
  tail call fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E21reserve_one_uncheckedCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !274, !nonnull !14, !noundef !14
  %.pre.i = load i64, ptr %i.aa, align 8, !alias.scope !274
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E4pushCsdsTQD3x2eOp_3exr.exit

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E4pushCsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20, %bb.j
  %i.ay = phi i64 [ %.pre.i, %bb.j ], [ %i.av, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20 ]
  %.sroa.04.0.i = phi ptr [ %i.ax, %bb.j ], [ %.sink12.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20 ]
  %.sroa.0.0.i23 = phi ptr [ %i.aa, %bb.j ], [ %.sink11.i.i21, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 %i.ay
  store i8 %i.aq, ptr %i.az, align 1
  %i.ba = load i64, ptr %.sroa.0.0.i23, align 8, !alias.scope !274, !noundef !14
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %.sroa.0.0.i23, align 8, !alias.scope !274
  %exitcond90.not = icmp eq i64 %i.ah, %.sroa.9.0.copyload28
  br i1 %exitcond90.not, label %.loopexit, label %.lr.ph73.split, !llvm.loop !275

.loopexit:                                        ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E4pushCsdsTQD3x2eOp_3exr.exit, %._crit_edge, %.split.us
  ret void

bb.k:                                             ; preds = %.check
  %i.bc = trunc nuw nsw i64 %i.ac to i32          ; 2 uses
  %i.bd = sub nuw nsw i32 28, %i.bc
  %i.be = lshr i32 -1, %i.bd
  %i.bf = and i32 %.val.i.i, %i.be
  %i.bg = lshr i32 %i.bf, %i.bc
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 %storemerge64
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = add i64 %storemerge64, 1                ; 2 uses
  %exitcond89.not = icmp eq i64 %i.bj, %.sink.i
  br i1 %exitcond89.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !277

.split.us:                                        ; preds = %.lr.ph.split
  store i64 %storemerge64, ptr %.sink11.i, align 8
  br label %.loopexit

bb.l:                                             ; preds = %.split67.us.invoke
  %i.bk = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge64, ptr %.sink11.i, align 8
  resume { ptr, i32 } %i.bk
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAjj8_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendjE6extendINtNtNtBV_8adapters3map3MapINtNtNtBX_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvMNtNtB2N_5block5linesNtB3K_9LineIndex14lines_in_block0EEB2N_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload24 = load ptr, ptr %1, align 8, !alias.scope !278, !nonnull !14, !noundef !14 ; 3 uses
  %.sroa.8.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload26 = load ptr, ptr %.sroa.8.0..sroa_idx25, align 8, !alias.scope !278, !nonnull !14, !noundef !14 ; 4 uses
  %.sroa.1028.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.1028.0.copyload30 = load i64, ptr %.sroa.1028.0..sroa_idx29, align 8, !alias.scope !278 ; 2 uses
  %i.a = ptrtoint ptr %.sroa.8.0.copyload26 to i64
  %i.b = ptrtoint ptr %.sroa.0.0.copyload24 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 6                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !282, !noalias !287, !noundef !14 ; 4 uses
  %i.g = icmp ugt i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 8)
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !289
  %i.i = select i1 %i.g, i64 %.val.i, i64 %i.f    ; 3 uses
  %i.j = sub i64 %.sink.i.i, %i.i
  %.not.i = icmp ult i64 %i.j, %i.d
  br i1 %.not.i, label %bb.b, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.i, %i.d                       ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread, label %bb.c, !prof !67

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i64 %i.k, 2
  %i.n = add i64 %i.k, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = lshr i64 -1, %i.o
  %.sroa.010.0.i = select i1 %i.m, i64 0, i64 %i.p ; 2 uses
  %i.q = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.q, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit, !prof !67

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.c
  %i.r = add nuw i64 %.sroa.010.0.i, 1
  %i.s = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E8try_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.r) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0        ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 -1, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge
    i64 0, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread
  ], !prof !68

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !290, !noalias !293
  br label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.d:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit
  %i.u = extractvalue { i64, i64 } %i.s, 1
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.t, i64 noundef %i.u) #23
  unreachable

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge, %bb.a
  %i.v = phi i64 [ %.pre, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge ], [ %i.f, %bb.a ] ; 2 uses
  %i.w = icmp ugt i64 %i.v, 8                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !14
  %.sink12.i = select i1 %i.w, ptr %i.y, ptr %i.h
  %.sink11.i = select i1 %i.w, ptr %i.h, ptr %i.e ; 3 uses
  %.sink.i14 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 8) ; 3 uses
  %i.z = load i64, ptr %.sink11.i, align 8, !noundef !14 ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sink.i14
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.0.copyload24, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ], [ %i.au, %bb.h ] ; 2 uses
  %storemerge.lcssa = phi i64 [ %i.z, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ], [ %.sink.i14, %bb.h ]
  store i64 %storemerge.lcssa, ptr %.sink11.i, align 8
  %i.ab = icmp eq ptr %.sroa.0.0.lcssa, %.sroa.8.0.copyload26
  br i1 %i.ab, label %.loopexit, label %.lr.ph70

.lr.ph70:                                         ; preds = %._crit_edge
end_hunk_1
begin_hunk_2_@_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAmj2_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendmE6extendINtNtNtBV_8adapters6cloned6ClonedINtNtNtBX_5slice4iter4ItermEEECsdsTQD3x2eOp_3exr:_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = load <2 x ptr>, ptr %i.c, align 16
  store <2 x ptr> %i.ae, ptr %i.a, align 16
  %i.af = call { i32, i32 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.ag = extractvalue { i32, i32 } %i.af, 0
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.f

.lr.ph:                                           ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit, %bb.k
  %storemerge28 = phi i64 [ %i.be, %bb.k ], [ %i.ac, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit ] ; 4 uses
  %i.aj = invoke { i32, i32 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.j unwind label %bb.m       ; 2 uses

bb.f:                                             ; preds = %.lr.ph30, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E4pushCsdsTQD3x2eOp_3exr.exit
  %i.ak = phi { i32, i32 } [ %i.af, %.lr.ph30 ], [ %i.ax, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E4pushCsdsTQD3x2eOp_3exr.exit ]
  %i.al = extractvalue { i32, i32 } %i.ak, 1
  %i.am = load i64, ptr %i.f, align 8, !alias.scope !321, !noalias !326, !noundef !14 ; 2 uses
  %i.an = icmp ugt i64 %i.am, 2
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !321, !noalias !326, !noundef !14 ; 2 uses
  br i1 %i.an, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp eq ptr %i.ao, null
  call void @llvm.assume(i1 %i.ap)
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12: ; preds = %bb.f, %bb.g
  %.sink12.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.ao, %bb.f ] ; 2 uses
  %.sink11.i.i13 = phi ptr [ %i.f, %bb.g ], [ %i.ai, %bb.f ] ; 2 uses
  %.sink.i.i14 = phi i64 [ 2, %bb.g ], [ %i.am, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink12.i.i) ]
  %i.aq = load i64, ptr %.sink11.i.i13, align 8, !alias.scope !328, !noundef !14 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %.sink.i.i14
  br i1 %i.ar, label %bb.h, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E4pushCsdsTQD3x2eOp_3exr.exit, !prof !67

bb.h:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12
  call void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E21reserve_one_uncheckedCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.as = load ptr, ptr %0, align 8, !alias.scope !328, !nonnull !14, !noundef !14
  %.pre.i = load i64, ptr %i.ai, align 8, !alias.scope !328
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E4pushCsdsTQD3x2eOp_3exr.exit

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E4pushCsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12, %bb.h
  %i.at = phi i64 [ %.pre.i, %bb.h ], [ %i.aq, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12 ]
  %.sroa.04.0.i = phi ptr [ %i.as, %bb.h ], [ %.sink12.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12 ]
  %.sroa.0.0.i15 = phi ptr [ %i.ai, %bb.h ], [ %.sink11.i.i13, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.0.i, i64 %i.at
  store i32 %i.al, ptr %i.au, align 4
  %i.av = load i64, ptr %.sroa.0.0.i15, align 8, !alias.scope !328, !noundef !14
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %.sroa.0.0.i15, align 8, !alias.scope !328
  %i.ax = call { i32, i32 } @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.ay = extractvalue { i32, i32 } %i.ax, 0
  %i.az = trunc i32 %i.ay to i1
  br i1 %i.az, label %bb.f, label %._crit_edge31

._crit_edge31:                                    ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E4pushCsdsTQD3x2eOp_3exr.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %._crit_edge31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.j:                                             ; preds = %.lr.ph
  %i.ba = extractvalue { i32, i32 } %i.aj, 0
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = extractvalue { i32, i32 } %i.aj, 1
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sink12.i, i64 %storemerge28
  store i32 %i.bc, ptr %i.bd, align 4
  %i.be = add i64 %storemerge28, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  store i64 %storemerge28, ptr %.sink11.i, align 8
  br label %bb.i

bb.m:                                             ; preds = %.lr.ph
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge28, ptr %.sink11.i, align 8
  resume { ptr, i32 } %i.bf
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E21reserve_one_uncheckedBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !329, !noalias !332, !noundef !14 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4
  br i1 %i.c, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E6tripleBN_.exit, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E6tripleBN_.exit.thread

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E6tripleBN_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !329, !noalias !332, !noundef !14 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E6tripleBN_.exit.thread, !prof !334

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E6tripleBN_.exit.thread: ; preds = %bb.a, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E6tripleBN_.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E6tripleBN_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !67

bb.b:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E6tripleBN_.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E8try_growBN_(ptr noalias nofree noundef align 8 dereferenceable(400) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
    i64 0, label %bb.d
  ], !prof !335

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E6tripleBN_.exit.thread, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E6tripleBN_.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E8try_growBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 6 uses
  %i.d = icmp ult i64 %i.c, 5                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 4                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !67

bb.a:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #24
  unreachable

bb.b:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit
  %i.j = icmp ult i64 %1, 5
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 96                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 96076792050570581
  br i1 %or.cond.not, label %bb.l, label %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBG_11FlatSamplesEEBI_.exit, !prof !336

_RINvCs8zlGlznUR0G_8smallvec12layout_arrayINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBG_11FlatSamplesEEBI_.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBG_11FlatSamplesEEBI_.exit
  %i.l = mul i64 %.sink.i, 96                     ; 2 uses
  %or.cond65.not = icmp ugt i64 %i.c, 96076792050570581
  br i1 %or.cond65.not, label %bb.l, label %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBG_11FlatSamplesEEBI_.exit48, !prof !336

bb.g:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBG_11FlatSamplesEEBI_.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.m = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #25 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCs8zlGlznUR0G_8smallvec12layout_arrayINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBG_11FlatSamplesEEBI_.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #25 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBG_11FlatSamplesEEBI_.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBG_11FlatSamplesEEBI_.exit48 ]
  %2 = ptrtoint ptr %.sroa.031.0 to i64
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 96                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 96076792050570581
  br i1 %or.cond.not.i, label %bb.k, label %_RINvCs8zlGlznUR0G_8smallvec10deallocateINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBE_11FlatSamplesEEBG_.exit, !prof !336

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !337
  store i64 0, ptr %i.a, align 8, !noalias !337
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !337
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !337
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10deallocateINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBE_11FlatSamplesEEBG_.exit: ; preds = %bb.j
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBG_11FlatSamplesEEBI_.exit48, %bb.g, %_RINvCs8zlGlznUR0G_8smallvec10deallocateINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBE_11FlatSamplesEEBG_.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs8zlGlznUR0G_8smallvec10deallocateINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBE_11FlatSamplesEEBG_.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBG_11FlatSamplesEEBI_.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs8zlGlznUR0G_8smallvec10deallocateINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBE_11FlatSamplesEEBG_.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBG_11FlatSamplesEEBI_.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !340, !noalias !343, !noundef !14 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 6
  br i1 %i.c, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E6tripleBO_.exit, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E6tripleBO_.exit.thread

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E6tripleBO_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !340, !noalias !343, !noundef !14 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E6tripleBO_.exit.thread, !prof !334

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E6tripleBO_.exit.thread: ; preds = %bb.a, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E6tripleBO_.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E6tripleBO_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !67

bb.b:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E6tripleBO_.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E8try_growBO_(ptr noalias nofree noundef align 8 dereferenceable(304) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
    i64 0, label %bb.d
  ], !prof !335

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E6tripleBO_.exit.thread, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E6tripleBO_.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 6 uses
  %i.d = icmp ult i64 %i.c, 7                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 6                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 6) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !67

bb.a:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #24
  unreachable

bb.b:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit
  %i.j = icmp ult i64 %1, 7
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 48                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 192153584101141162
  br i1 %or.cond.not, label %bb.l, label %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBJ_.exit, !prof !336

_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBJ_.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBJ_.exit
  %i.l = mul i64 %.sink.i, 48                     ; 2 uses
  %or.cond65.not = icmp ugt i64 %i.c, 192153584101141162
  br i1 %or.cond65.not, label %bb.l, label %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBJ_.exit48, !prof !336

bb.g:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBJ_.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.m = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #25 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBJ_.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #25 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBJ_.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBJ_.exit48 ]
  %2 = ptrtoint ptr %.sroa.031.0 to i64
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 48                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 192153584101141162
  br i1 %or.cond.not.i, label %bb.k, label %_RINvCs8zlGlznUR0G_8smallvec10deallocateNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBH_.exit, !prof !336

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !345
  store i64 0, ptr %i.a, align 8, !noalias !345
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !345
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !345
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10deallocateNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBH_.exit: ; preds = %bb.j
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBJ_.exit48, %bb.g, %_RINvCs8zlGlznUR0G_8smallvec10deallocateNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBH_.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs8zlGlznUR0G_8smallvec10deallocateNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBH_.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBJ_.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs8zlGlznUR0G_8smallvec10deallocateNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBH_.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataEBJ_.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !348, !noalias !351, !noundef !14 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8
  br i1 %i.c, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E6tripleBO_.exit, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E6tripleBO_.exit.thread

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E6tripleBO_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !348, !noalias !351, !noundef !14 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E6tripleBO_.exit.thread, !prof !334

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E6tripleBO_.exit.thread: ; preds = %bb.a, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E6tripleBO_.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E6tripleBO_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !67

bb.b:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E6tripleBO_.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E8try_growBO_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
    i64 0, label %bb.d
  ], !prof !335

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E6tripleBO_.exit.thread, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E6tripleBO_.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 6 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.i ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val74 = load i64, ptr %i.b, align 8
  %i.j = select i1 %i.e, i64 %.val, i64 %.val74   ; 5 uses
  %.not = icmp ult i64 %1, %i.j
  br i1 %.not, label %bb.a, label %bb.b, !prof !67

bb.a:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #24
  unreachable

bb.b:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit
  %i.k = icmp ult i64 %1, 9
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not48 = icmp eq i64 %i.c, %1
  br i1 %.not48, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.l = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBJ_.exit, label %bb.l, !prof !353

_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBJ_.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBJ_.exit
  %or.cond69 = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond69, label %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBJ_.exit50, label %bb.l, !prof !353

bb.g:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBJ_.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.m = tail call noundef align 4 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef 4) #25 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBJ_.exit50: ; preds = %bb.f
  %i.o = shl nuw nsw i64 %.sink.i, 3
  %i.p = tail call noundef align 4 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.o, i64 noundef 4, i64 noundef %i.l) #25 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBJ_.exit50, %bb.i
  %.sroa.032.0 = phi ptr [ %i.m, %bb.i ], [ %i.p, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBJ_.exit50 ]
  %2 = ptrtoint ptr %.sroa.032.0 to i64
  store i32 1, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.542.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.r = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %.sink12.i, i64 %i.r, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i32 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4.0..sroa_idx, ptr nonnull align 4 %.sink12.i, i64 %i.s, i1 false)
  store i64 %i.j, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCs8zlGlznUR0G_8smallvec10deallocateNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBH_.exit, label %bb.k, !prof !353

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !354
  store i64 0, ptr %i.a, align 8, !noalias !354
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !354
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10deallocateNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBH_.exit: ; preds = %bb.j
  %i.t = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.t, i64 noundef 4) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBJ_.exit50, %bb.g, %_RINvCs8zlGlznUR0G_8smallvec10deallocateNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBH_.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs8zlGlznUR0G_8smallvec10deallocateNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBH_.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.l, %bb.g ], [ undef, %bb.d ], [ %i.l, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBJ_.exit50 ], [ undef, %bb.f ], [ undef, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs8zlGlznUR0G_8smallvec10deallocateNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBH_.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 4, %bb.g ], [ -1, %bb.d ], [ 4, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayNtNtNtCsdsTQD3x2eOp_3exr5block7samples6SampleEBJ_.exit50 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E21reserve_one_uncheckedCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !357, !noalias !360, !noundef !14 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 24
  br i1 %i.c, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsdsTQD3x2eOp_3exr.exit, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsdsTQD3x2eOp_3exr.exit.thread

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !357, !noalias !360, !noundef !14 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsdsTQD3x2eOp_3exr.exit.thread, !prof !334

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsdsTQD3x2eOp_3exr.exit.thread: ; preds = %bb.a, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsdsTQD3x2eOp_3exr.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsdsTQD3x2eOp_3exr.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !67

bb.b:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsdsTQD3x2eOp_3exr.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E8try_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(40) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
    i64 0, label %bb.d
  ], !prof !335

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsdsTQD3x2eOp_3exr.exit.thread, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsdsTQD3x2eOp_3exr.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E8try_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 4 uses
  %i.d = icmp ult i64 %i.c, 25                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 24                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.i ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 24) ; 6 uses
  %.val = load i64, ptr %i.f, align 8
  %.val71 = load i64, ptr %i.b, align 8
  %i.j = select i1 %i.e, i64 %.val, i64 %.val71   ; 5 uses
  %.not = icmp ult i64 %1, %i.j
  br i1 %.not, label %bb.a, label %bb.b, !prof !67

bb.a:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #24
  unreachable

bb.b:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit
  %i.k = icmp ult i64 %1, 25
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not48 = icmp eq i64 %i.c, %1
  br i1 %.not48, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.l = icmp sgt i64 %1, -1
  br i1 %i.l, label %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit, label %bb.l

_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit
  %i.m = icmp sgt i64 %.sink.i, -1
  br i1 %i.m, label %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit52, label %bb.l

bb.g:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.n = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef 1) #25 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.l, label %bb.i

_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit52: ; preds = %bb.f
  %i.p = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %.sink.i, i64 noundef 1, i64 noundef %1) #25 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit52, %bb.i
  %.sroa.032.0 = phi ptr [ %i.n, %bb.i ], [ %i.p, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit52 ]
  %2 = ptrtoint ptr %.sroa.032.0 to i64
  store i8 1, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.542.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.sink12.i, i64 %i.j, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i8 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.4.0..sroa_idx, ptr nonnull align 1 %.sink12.i, i64 %i.j, i1 false)
  store i64 %i.j, ptr %i.b, align 8
  %i.r = icmp sgt i64 %.sink.i, -1
  br i1 %i.r, label %_RINvCs8zlGlznUR0G_8smallvec10deallocatehECsdsTQD3x2eOp_3exr.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !362
  store i64 0, ptr %i.a, align 8, !noalias !362
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i, ptr %i.s, align 8, !noalias !362
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !362
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10deallocatehECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.j
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %.sink.i, i64 noundef 1) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit52, %bb.g, %_RINvCs8zlGlznUR0G_8smallvec10deallocatehECsdsTQD3x2eOp_3exr.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs8zlGlznUR0G_8smallvec10deallocatehECsdsTQD3x2eOp_3exr.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %1, %bb.g ], [ undef, %bb.d ], [ %1, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit52 ], [ %1, %bb.e ], [ %.sink.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs8zlGlznUR0G_8smallvec10deallocatehECsdsTQD3x2eOp_3exr.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 1, %bb.g ], [ -1, %bb.d ], [ 1, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit52 ], [ 0, %bb.e ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10into_innerCsdsTQD3x2eOp_3exr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 9)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !14
  %.not = icmp eq i64 %i.b, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %.sroa.4.0.copyload, ptr %i.d, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E21reserve_one_uncheckedCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !365, !noalias !368, !noundef !14 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8
  br i1 %i.c, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E6tripleCsdsTQD3x2eOp_3exr.exit, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E6tripleCsdsTQD3x2eOp_3exr.exit.thread

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E6tripleCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !365, !noalias !368, !noundef !14 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E6tripleCsdsTQD3x2eOp_3exr.exit.thread, !prof !334

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E6tripleCsdsTQD3x2eOp_3exr.exit.thread: ; preds = %bb.a, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E6tripleCsdsTQD3x2eOp_3exr.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E6tripleCsdsTQD3x2eOp_3exr.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !67

bb.b:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E6tripleCsdsTQD3x2eOp_3exr.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E8try_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
    i64 0, label %bb.d
  ], !prof !335

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E6tripleCsdsTQD3x2eOp_3exr.exit.thread, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E6tripleCsdsTQD3x2eOp_3exr.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E8try_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 3 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8
  %i.f = load ptr, ptr %0, align 8, !alias.scope !370, !noalias !373, !noundef !14 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.f, null
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b, %bb.c
  %.sink12.i = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ] ; 5 uses
  %.sink11.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ]
  %.sink.i = phi i64 [ %i.c, %bb.b ], [ 8, %bb.c ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink12.i) ]
  %i.j = load i64, ptr %.sink11.i, align 8, !noundef !14 ; 5 uses
  %.not = icmp ult i64 %1, %i.j
  br i1 %.not, label %bb.d, label %bb.e, !prof !67

bb.d:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #24
  unreachable

bb.e:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit
  %i.k = icmp ult i64 %1, 9
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not46 = icmp eq i64 %1, %.sink.i
  br i1 %.not46, label %bb.o, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.d, label %bb.o, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.l = icmp sgt i64 %1, -1
  br i1 %i.l, label %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit, label %bb.o

_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.h
  br i1 %i.d, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit
  %i.m = icmp sgt i64 %.sink.i, -1
  br i1 %i.m, label %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit50, label %bb.o

bb.j:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.n = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef 1) #25 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.o, label %bb.l

_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit50: ; preds = %bb.i
  %i.p = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %.sink.i, i64 noundef 1, i64 noundef %1) #25 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit50, %bb.l
  %.sroa.031.0 = phi ptr [ %i.n, %bb.l ], [ %i.p, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit50 ]
  %2 = ptrtoint ptr %.sroa.031.0 to i64
  store i64 %2, ptr %0, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.439.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.sink12.i, i64 %i.j, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.0..sroa_idx, ptr nonnull align 1 %.sink12.i, i64 %i.j, i1 false)
  store i64 %i.j, ptr %i.b, align 8
  %i.r = icmp sgt i64 %.sink.i, -1
  br i1 %i.r, label %_RINvCs8zlGlznUR0G_8smallvec10deallocatehECsdsTQD3x2eOp_3exr.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !375
  store i64 0, ptr %i.a, align 8, !noalias !375
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i, ptr %i.s, align 8, !noalias !375
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !375
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10deallocatehECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.m
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %.sink.i, i64 noundef 1) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.h, %bb.g, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit50, %bb.j, %_RINvCs8zlGlznUR0G_8smallvec10deallocatehECsdsTQD3x2eOp_3exr.exit, %bb.k, %bb.f
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs8zlGlznUR0G_8smallvec10deallocatehECsdsTQD3x2eOp_3exr.exit ], [ undef, %bb.f ], [ undef, %bb.k ], [ %1, %bb.j ], [ undef, %bb.g ], [ %1, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit50 ], [ %1, %bb.h ], [ %.sink.i, %bb.i ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs8zlGlznUR0G_8smallvec10deallocatehECsdsTQD3x2eOp_3exr.exit ], [ -1, %bb.f ], [ -1, %bb.k ], [ 1, %bb.j ], [ -1, %bb.g ], [ 1, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayhECsdsTQD3x2eOp_3exr.exit50 ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E21reserve_one_uncheckedCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !378, !noalias !381, !noundef !14 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8
  br i1 %i.c, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E6tripleCsdsTQD3x2eOp_3exr.exit, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E6tripleCsdsTQD3x2eOp_3exr.exit.thread

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E6tripleCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !378, !noalias !381, !noundef !14 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E6tripleCsdsTQD3x2eOp_3exr.exit.thread, !prof !334

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E6tripleCsdsTQD3x2eOp_3exr.exit.thread: ; preds = %bb.a, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E6tripleCsdsTQD3x2eOp_3exr.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E6tripleCsdsTQD3x2eOp_3exr.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !67

bb.b:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E6tripleCsdsTQD3x2eOp_3exr.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E8try_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(80) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
    i64 0, label %bb.d
  ], !prof !335

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E6tripleCsdsTQD3x2eOp_3exr.exit.thread, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E6tripleCsdsTQD3x2eOp_3exr.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E8try_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 6 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !67

bb.a:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #24
  unreachable

bb.b:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit
  %i.j = icmp ult i64 %1, 9
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayjECsdsTQD3x2eOp_3exr.exit, label %bb.l, !prof !353

_RINvCs8zlGlznUR0G_8smallvec12layout_arrayjECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayjECsdsTQD3x2eOp_3exr.exit
  %or.cond67 = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond67, label %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayjECsdsTQD3x2eOp_3exr.exit48, label %bb.l, !prof !353

bb.g:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayjECsdsTQD3x2eOp_3exr.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.l = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.i

_RINvCs8zlGlznUR0G_8smallvec12layout_arrayjECsdsTQD3x2eOp_3exr.exit48: ; preds = %bb.f
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.k) #25 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayjECsdsTQD3x2eOp_3exr.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.l, %bb.i ], [ %i.o, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayjECsdsTQD3x2eOp_3exr.exit48 ]
  %2 = ptrtoint ptr %.sroa.031.0 to i64
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCs8zlGlznUR0G_8smallvec10deallocatejECsdsTQD3x2eOp_3exr.exit, label %bb.k, !prof !353

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !383
  store i64 0, ptr %i.a, align 8, !noalias !383
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !383
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10deallocatejECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.j
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayjECsdsTQD3x2eOp_3exr.exit48, %bb.g, %_RINvCs8zlGlznUR0G_8smallvec10deallocatejECsdsTQD3x2eOp_3exr.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs8zlGlznUR0G_8smallvec10deallocatejECsdsTQD3x2eOp_3exr.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayjECsdsTQD3x2eOp_3exr.exit48 ], [ undef, %bb.f ], [ undef, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs8zlGlznUR0G_8smallvec10deallocatejECsdsTQD3x2eOp_3exr.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCs8zlGlznUR0G_8smallvec12layout_arrayjECsdsTQD3x2eOp_3exr.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E21reserve_one_uncheckedCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !386, !noalias !389, !noundef !14 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  br i1 %i.c, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.thread

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !386, !noalias !389, !noundef !14 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.thread, !prof !334

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.thread: ; preds = %bb.a, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !67

bb.b:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E8try_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
    i64 0, label %bb.d
  ], !prof !335

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit.thread, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E6tripleCsdsTQD3x2eOp_3exr.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E8try_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 3 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !391, !noalias !394, !noundef !14 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.f, null
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b, %bb.c
  %.sink12.i = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ] ; 5 uses
  %.sink11.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ]
  %.sink.i = phi i64 [ %i.c, %bb.b ], [ 2, %bb.c ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink12.i) ]
  %i.j = load i64, ptr %.sink11.i, align 8, !noundef !14 ; 5 uses
  %.not = icmp ult i64 %1, %i.j
  br i1 %.not, label %bb.d, label %bb.e, !prof !67

bb.d:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #24
  unreachable

bb.e:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAmj2_E10triple_mutCsdsTQD3x2eOp_3exr.exit
  %i.k = icmp ult i64 %1, 3
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not46 = icmp eq i64 %1, %.sink.i
  br i1 %.not46, label %bb.o, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.d, label %bb.o, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.l = shl nuw nsw i64 %1, 2                    ; 4 uses
  %or.cond = icmp ult i64 %1, 2305843009213693952
  br i1 %or.cond, label %_RINvCs8zlGlznUR0G_8smallvec12layout_arraymECsdsTQD3x2eOp_3exr.exit, label %bb.o, !prof !353

_RINvCs8zlGlznUR0G_8smallvec12layout_arraymECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.h
  br i1 %i.d, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arraymECsdsTQD3x2eOp_3exr.exit
  %or.cond67 = icmp ult i64 %.sink.i, 2305843009213693952
  br i1 %or.cond67, label %_RINvCs8zlGlznUR0G_8smallvec12layout_arraymECsdsTQD3x2eOp_3exr.exit48, label %bb.o, !prof !353

bb.j:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arraymECsdsTQD3x2eOp_3exr.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.m = tail call noundef align 4 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef 4) #25 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.o, label %bb.l

_RINvCs8zlGlznUR0G_8smallvec12layout_arraymECsdsTQD3x2eOp_3exr.exit48: ; preds = %bb.i
  %i.o = shl nuw nsw i64 %.sink.i, 2
  %i.p = tail call noundef align 4 ptr @_RNvCshxk5dXoXnx9_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.o, i64 noundef 4, i64 noundef %i.l) #25 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_RINvCs8zlGlznUR0G_8smallvec12layout_arraymECsdsTQD3x2eOp_3exr.exit48, %bb.l
  %.sroa.031.0 = phi ptr [ %i.m, %bb.l ], [ %i.p, %_RINvCs8zlGlznUR0G_8smallvec12layout_arraymECsdsTQD3x2eOp_3exr.exit48 ]
  %2 = ptrtoint ptr %.sroa.031.0 to i64
  store i64 %2, ptr %0, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.439.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %.sink12.i, i64 %i.r, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.0..sroa_idx, ptr nonnull align 4 %.sink12.i, i64 %i.s, i1 false)
  store i64 %i.j, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %.sink.i, 2305843009213693952
  br i1 %or.cond.i, label %_RINvCs8zlGlznUR0G_8smallvec10deallocatemECsdsTQD3x2eOp_3exr.exit, label %bb.n, !prof !353

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !396
  store i64 0, ptr %i.a, align 8, !noalias !396
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !396
  unreachable

_RINvCs8zlGlznUR0G_8smallvec10deallocatemECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.m
  %i.t = shl nuw nsw i64 %.sink.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.t, i64 noundef 4) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.h, %bb.g, %_RINvCs8zlGlznUR0G_8smallvec12layout_arraymECsdsTQD3x2eOp_3exr.exit48, %bb.j, %_RINvCs8zlGlznUR0G_8smallvec10deallocatemECsdsTQD3x2eOp_3exr.exit, %bb.k, %bb.f
  %.sroa.7.1 = phi i64 [ undef, %_RINvCs8zlGlznUR0G_8smallvec10deallocatemECsdsTQD3x2eOp_3exr.exit ], [ undef, %bb.f ], [ undef, %bb.k ], [ %i.l, %bb.j ], [ undef, %bb.g ], [ %i.l, %_RINvCs8zlGlznUR0G_8smallvec12layout_arraymECsdsTQD3x2eOp_3exr.exit48 ], [ undef, %bb.i ], [ undef, %bb.h ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCs8zlGlznUR0G_8smallvec10deallocatemECsdsTQD3x2eOp_3exr.exit ], [ -1, %bb.f ], [ -1, %bb.k ], [ 4, %bb.j ], [ -1, %bb.g ], [ 4, %_RINvCs8zlGlznUR0G_8smallvec12layout_arraymECsdsTQD3x2eOp_3exr.exit48 ], [ 0, %bb.i ], [ 0, %bb.h ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10from_sliceCsdsTQD3x2eOp_3exr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %2, 25
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !399
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 25, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !399
  %i.c = load i64, ptr %i.a, align 8, !range !403, !noalias !399, !noundef !14
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !404, !noalias !399, !noundef !14 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.c, label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr.exit, !prof !67

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !noalias !399
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #23, !noalias !399
  unreachable

_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !noalias !399, !nonnull !14, !noundef !14 ; 2 uses
  %i.j = icmp samesign ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !399
  %3 = ptrtoint ptr %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 range(i64 25, -9223372036854775808) %2, i1 false), !noalias !405
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %i.k, align 8
  store i8 1, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.4.0..sroa_idx, ptr nonnull align 1 %1, i64 %2, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.l, align 8
  store i8 0, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1z_11FlatSamplesEj4_ENCNvXs5_NtB1z_4cropINtB1z_5LayerINtB2H_15CroppedChannelsINtB1z_11AnyChannelsB2b_EEENtB2H_16ApplyCroppedView18reallocate_cropped0ENtNtNtB9_6traits8iterator8Iterator4nextB1B_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(448) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4.i = alloca [24 x i8], align 8          ; 4 uses
  %i.g = alloca [96 x i8], align 8                ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !406, !noalias !409, !noundef !14 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !406, !noalias !409, !noundef !14
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %_RNvXsG_Cs8zlGlznUR0G_8smallvecINtB5_8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_ENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextBN_.exit.thread, label %_RNvXsG_Cs8zlGlznUR0G_8smallvecINtB5_8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_ENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextBN_.exit

_RNvXsG_Cs8zlGlznUR0G_8smallvecINtB5_8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_ENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextBN_.exit: ; preds = %bb.a
  %i.m = add i64 %i.i, 1
  store i64 %i.m, ptr %i.h, align 8, !alias.scope !406, !noalias !409
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !411, !noalias !414, !noundef !14
  %i.p = icmp ugt i64 %i.o, 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !14
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sink13.i.i = select i1 %i.p, ptr %i.r, ptr %i.s
  %i.t = getelementptr inbounds nuw [96 x i8], ptr %.sink13.i.i, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.t, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %_RNvXsG_Cs8zlGlznUR0G_8smallvecINtB5_8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_ENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextBN_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXsG_Cs8zlGlznUR0G_8smallvecINtB5_8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_ENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextBN_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx2, i64 88, i1 false)
  store i64 %.sroa.0.0.copyload1, ptr %i.g, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 3 uses
  switch i64 %.sroa.0.0.copyload1, label %default.unreachable11.i [
    i64 0, label %bb.d
    i64 1, label %bb.i
    i64 2, label %bb.l
  ]

default.unreachable11.i:                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !421
  %i.z = load ptr, ptr %i.u, align 8, !alias.scope !416, !noalias !423, !nonnull !14, !align !424, !noundef !14
  %i.aa = load i64, ptr %i.z, align 8, !noalias !421, !noundef !14
  %i.ab = load ptr, ptr %i.v, align 8, !alias.scope !416, !noalias !423, !nonnull !14, !align !424, !noundef !14
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !421, !noundef !14
  %i.ad = load ptr, ptr %i.w, align 8, !alias.scope !416, !noalias !423, !nonnull !14, !align !424, !noundef !14 ; 2 uses
  %.val9.i = load i64, ptr %i.ad, align 8, !alias.scope !425, !noalias !421, !noundef !14
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val10.i = load i64, ptr %i.ae, align 8, !alias.scope !428, !noalias !421, !noundef !14
  %i.af = load ptr, ptr %i.x, align 8, !alias.scope !416, !noalias !423, !nonnull !14, !align !424, !noundef !14
  %i.ag = load i64, ptr %i.af, align 8, !noalias !421, !noundef !14
  invoke void @_RINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtBc_5LayerINtBa_15CroppedChannelsINtBc_11AnyChannelsNtBc_11FlatSamplesEEENtBa_16ApplyCroppedView18reallocate_cropped012crop_samplesNtNtCs51eXCul1Ifq_4half8binary163f16EBe_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.aa, i64 noundef %i.ac, i64 noundef %.val9.i, i64 noundef %.val10.i, i64 noundef %i.ag)
          to label %bb.e unwind label %bb.c, !noalias !421

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !421
  br label %_RNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB9_5LayerINtB7_15CroppedChannelsINtB9_11AnyChannelsNtB9_11FlatSamplesEEENtB7_16ApplyCroppedView18reallocate_cropped0Bb_.exit

bb.f:                                             ; preds = %bb.k, %bb.h, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.y, %bb.c ], [ %i.aj, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEBH_(ptr noalias nofree noundef readonly align 8 dereferenceable(40) %i.ah) #21
          to label %bb.n unwind label %bb.g, !noalias !431

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !noalias !421
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !421
  %i.ak = load ptr, ptr %i.u, align 8, !alias.scope !416, !noalias !423, !nonnull !14, !align !424, !noundef !14
  %i.al = load i64, ptr %i.ak, align 8, !noalias !421, !noundef !14
  %i.am = load ptr, ptr %i.v, align 8, !alias.scope !416, !noalias !423, !nonnull !14, !align !424, !noundef !14
  %i.an = load i64, ptr %i.am, align 8, !noalias !421, !noundef !14
  %i.ao = load ptr, ptr %i.w, align 8, !alias.scope !416, !noalias !423, !nonnull !14, !align !424, !noundef !14 ; 2 uses
  %.val7.i = load i64, ptr %i.ao, align 8, !alias.scope !425, !noalias !421, !noundef !14
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val8.i = load i64, ptr %i.ap, align 8, !alias.scope !428, !noalias !421, !noundef !14
  %i.aq = load ptr, ptr %i.x, align 8, !alias.scope !416, !noalias !423, !nonnull !14, !align !424, !noundef !14
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !421, !noundef !14
  invoke void @_RINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtBc_5LayerINtBa_15CroppedChannelsINtBc_11AnyChannelsNtBc_11FlatSamplesEEENtBa_16ApplyCroppedView18reallocate_cropped012crop_samplesfEBe_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.al, i64 noundef %i.an, i64 noundef %.val7.i, i64 noundef %.val8.i, i64 noundef %i.ar)
          to label %bb.j unwind label %bb.h, !noalias !421

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !421
  br label %_RNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB9_5LayerINtB7_15CroppedChannelsINtB9_11AnyChannelsNtB9_11FlatSamplesEEENtB7_16ApplyCroppedView18reallocate_cropped0Bb_.exit

bb.k:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !421
  %i.at = load ptr, ptr %i.u, align 8, !alias.scope !416, !noalias !423, !nonnull !14, !align !424, !noundef !14
  %i.au = load i64, ptr %i.at, align 8, !noalias !421, !noundef !14
  %i.av = load ptr, ptr %i.v, align 8, !alias.scope !416, !noalias !423, !nonnull !14, !align !424, !noundef !14
  %i.aw = load i64, ptr %i.av, align 8, !noalias !421, !noundef !14
  %i.ax = load ptr, ptr %i.w, align 8, !alias.scope !416, !noalias !423, !nonnull !14, !align !424, !noundef !14 ; 2 uses
  %.val.i = load i64, ptr %i.ax, align 8, !alias.scope !425, !noalias !421, !noundef !14
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val6.i = load i64, ptr %i.ay, align 8, !alias.scope !428, !noalias !421, !noundef !14
  %i.az = load ptr, ptr %i.x, align 8, !alias.scope !416, !noalias !423, !nonnull !14, !align !424, !noundef !14
  %i.ba = load i64, ptr %i.az, align 8, !noalias !421, !noundef !14
  invoke void @_RINvNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtBc_5LayerINtBa_15CroppedChannelsINtBc_11AnyChannelsNtBc_11FlatSamplesEEENtBa_16ApplyCroppedView18reallocate_cropped012crop_samplesmEBe_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.au, i64 noundef %i.aw, i64 noundef %.val.i, i64 noundef %.val6.i, i64 noundef %i.ba)
          to label %bb.m unwind label %bb.k, !noalias !421

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !421
  br label %_RNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB9_5LayerINtB7_15CroppedChannelsINtB9_11AnyChannelsNtB9_11FlatSamplesEEENtB7_16ApplyCroppedView18reallocate_cropped0Bb_.exit

bb.n:                                             ; preds = %bb.f
  resume { ptr, i32 } %.pn.i

_RNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB9_5LayerINtB7_15CroppedChannelsINtB9_11AnyChannelsNtB9_11FlatSamplesEEENtB7_16ApplyCroppedView18reallocate_cropped0Bb_.exit: ; preds = %bb.e, %bb.j, %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.bd = load i8, ptr %i.bc, align 8, !range !432, !alias.scope !419, !noalias !431, !noundef !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = load <2 x i64>, ptr %i.be, align 8, !alias.scope !419, !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, i64 24, i1 false)
  store <2 x i64> %i.bf, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.bd, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.o

_RNvXsG_Cs8zlGlznUR0G_8smallvecINtB5_8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_ENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextBN_.exit.thread: ; preds = %bb.a, %_RNvXsG_Cs8zlGlznUR0G_8smallvecINtB5_8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_ENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextBN_.exit
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %_RNvXsG_Cs8zlGlznUR0G_8smallvecINtB5_8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_ENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextBN_.exit.thread, %_RNCNvXs5_NtNtCsdsTQD3x2eOp_3exr5image4cropINtB9_5LayerINtB7_15CroppedChannelsINtB9_11AnyChannelsNtB9_11FlatSamplesEEENtB7_16ApplyCroppedView18reallocate_cropped0Bb_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtCs8zlGlznUR0G_8smallvec8SmallVecAhj10_ENtB6_5Debug3fmtCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !14, !align !424, !noundef !14 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !436
end_hunk_2
