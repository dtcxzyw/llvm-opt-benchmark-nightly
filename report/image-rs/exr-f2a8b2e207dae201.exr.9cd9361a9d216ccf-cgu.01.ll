Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.01?download=true
inline.NumInlined: 354
inline.NumDeleted: 149
begin_hunk_0_@_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBM_11FlatSamplesEj4_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1S_8adapters3map3MapINtB6_8IntoIterBI_ENCNvXs5_NtBM_4cropINtBM_5LayerINtB3I_15CroppedChannelsINtBM_11AnyChannelsB1o_EEENtB3I_16ApplyCroppedView18reallocate_cropped0EEBO_:bb.a
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.al, %bb.m ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCs8zlGlznUR0G_8smallvec8IntoIterAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtB1M_11FlatSamplesEj4_ENCNvXs5_NtB1M_4cropINtB1M_5LayerINtB2U_15CroppedChannelsINtB1M_11AnyChannelsB2o_EEENtB2U_16ApplyCroppedView18reallocate_cropped0EEB1O_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.c) #21
          to label %.thread27 unwind label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.b, align 8, !range !87, !noundef !4
  %.not = icmp eq i64 %i.ah, -1
  br i1 %.not, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  %i.ai = load i64, ptr %i.i, align 8, !alias.scope !88, !noalias !89, !noundef !4 ; 3 uses
  %i.aj = icmp ugt i64 %i.ai, 4
  br i1 %i.aj, label %bb.l, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.af, align 8, !alias.scope !88, !noalias !89, !nonnull !4, !noundef !4
  %.pre.i = load i64, ptr %i.l, align 8, !alias.scope !90, !noalias !91
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
  br i1 %i.an, label %bb.n, label %bb.s, !prof !5

bb.n:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E10triple_mutBN_.exit.i
  invoke fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAINtNtCsdsTQD3x2eOp_3exr5image10AnyChannelNtBL_11FlatSamplesEj4_E21reserve_one_uncheckedBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.o unwind label %bb.m, !noalias !91

bb.o:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %i.af, align 8, !alias.scope !90, !noalias !91, !nonnull !4, !noundef !4
  %.pre6.i = load i64, ptr %i.l, align 8, !alias.scope !90, !noalias !91
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
  %i.as = load i64, ptr %.sroa.0.0.i15, align 8, !alias.scope !90, !noalias !91, !noundef !4
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %.sroa.0.0.i15, align 8, !alias.scope !90, !noalias !91
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
  %i.aw = load i64, ptr %i.d, align 8, !range !87, !noundef !4
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
  %.sroa.0.0.copyload23 = load ptr, ptr %1, align 8, !alias.scope !121, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.8.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload25 = load ptr, ptr %.sroa.8.0..sroa_idx24, align 8, !alias.scope !121, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.10.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.0.copyload27 = load ptr, ptr %.sroa.10.0..sroa_idx26, align 8, !alias.scope !121 ; 8 uses
  %.sroa.11.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.11.0.copyload29 = load ptr, ptr %.sroa.11.0..sroa_idx28, align 8, !alias.scope !121 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.8.0.copyload25 to i64
  %i.b = ptrtoint ptr %.sroa.0.0.copyload23 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 6                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !122, !noalias !123, !noundef !4 ; 4 uses
  %i.g = icmp ugt i64 %i.f, 6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 6)
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !124
  %i.i = select i1 %i.g, i64 %.val.i, i64 %i.f    ; 3 uses
  %i.j = sub i64 %.sink.i.i, %i.i
  %.not.i = icmp ult i64 %i.j, %i.d
  br i1 %.not.i, label %bb.b, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.i, %i.d                       ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i64 %i.k, 2
  %i.n = add i64 %i.k, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = lshr i64 -1, %i.o
  %.sroa.010.0.i = select i1 %i.m, i64 0, i64 %i.p ; 2 uses
  %i.q = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.q, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit, !prof !5

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit: ; preds = %bb.c
  %i.r = add nuw i64 %.sroa.010.0.i, 1
  %i.s = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.r) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0        ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 -1, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge
    i64 0, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread
  ], !prof !6

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !125, !noalias !126
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
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4
  %.sink12.i = select i1 %i.w, ptr %i.y, ptr %i.h
  %.sink11.i = select i1 %i.w, ptr %i.h, ptr %i.e ; 4 uses
  %.sink.i9 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 6) ; 3 uses
  %i.z = load i64, ptr %.sink11.i, align 8, !noundef !4 ; 3 uses
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload27), "nonnull"(ptr %.sroa.11.0.copyload29) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.11.0.copyload29, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.0.0109 = phi ptr [ %.sroa.0.0.copyload23, %.lr.ph ], [ %i.bo, %bb.j ] ; 5 uses
  %.sroa.7.0108 = phi i64 [ %i.z, %.lr.ph ], [ %i.ca, %bb.j ] ; 4 uses
  %i.af = icmp eq ptr %.sroa.0.0109, %.sroa.8.0.copyload25
  br i1 %i.af, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload27), "nonnull"(ptr %.sroa.11.0.copyload29) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.ag = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !128, !noundef !4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0109, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !127, !noalias !129, !noundef !4
  %i.aj = load i64, ptr %.sroa.11.0.copyload29, align 8, !noalias !128, !noundef !4
  %i.ak = load i64, ptr %i.ab, align 8, !noalias !128, !noundef !4
  %i.al = invoke { i64, i64 } @_RNvMsd_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_18ChannelDescription21subsampled_resolution(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.0109, i64 noundef %i.aj, i64 noundef %i.ak)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.g:                                             ; preds = %.lr.ph113, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit
  %.sroa.052.0111 = phi ptr [ %.sroa.0.0.lcssa, %.lr.ph113 ], [ %i.am, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.an = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !131, !noundef !4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !130, !noalias !132, !noundef !4
  %i.aq = load i64, ptr %.sroa.11.0.copyload29, align 8, !noalias !131, !noundef !4
  %i.ar = load i64, ptr %i.ad, align 8, !noalias !131, !noundef !4
  %i.as = tail call { i64, i64 } @_RNvMsd_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_18ChannelDescription21subsampled_resolution(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.052.0111, i64 noundef %i.aq, i64 noundef %i.ar), !noalias !132 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 57
  %i.au = load i8, ptr %i.at, align 1, !range !7, !alias.scope !130, !noalias !132, !noundef !4
  %i.av = icmp ne i8 %i.au, 1                     ; 2 uses
  %..i.i13 = select i1 %i.av, i64 2, i64 1
  %i.aw = extractvalue { i64, i64 } %i.as, 1      ; 2 uses
  %i.ax = extractvalue { i64, i64 } %i.as, 0      ; 2 uses
  %i.ay = mul i64 %i.ax, %i.aw
  %i.az = zext i1 %i.av to i64
  %i.ba = shl i64 %i.ay, %i.az
  %i.bb = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !131, !noundef !4
  %i.bc = add i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %.sroa.10.0.copyload27, align 8, !noalias !131
  %i.bd = load i64, ptr %i.e, align 8, !alias.scope !133, !noalias !134, !noundef !4 ; 3 uses
  %i.be = icmp ugt i64 %i.bd, 6
  br i1 %i.be, label %bb.h, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.ae, align 8, !alias.scope !133, !noalias !134, !nonnull !4, !noundef !4
  %.pre118 = load i64, ptr %i.h, align 8, !alias.scope !135, !noalias !136
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i: ; preds = %bb.g, %bb.h
  %i.bg = phi i64 [ %.pre118, %bb.h ], [ %i.bd, %bb.g ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.bf, %bb.h ], [ %i.h, %bb.g ]
  %.sink11.i.i = phi ptr [ %i.h, %bb.h ], [ %i.e, %bb.g ]
  %.sink.i.i21 = phi i64 [ %i.bd, %bb.h ], [ 6, %bb.g ]
  %i.bh = icmp eq i64 %i.bg, %.sink.i.i21
  br i1 %i.bh, label %bb.i, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit, !prof !5

bb.i:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i
  tail call fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0), !noalias !136
  %i.bi = load ptr, ptr %i.ae, align 8, !alias.scope !135, !noalias !136, !nonnull !4, !noundef !4
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !135, !noalias !136
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
  %i.bl = load i64, ptr %.sroa.0.0.i22, align 8, !alias.scope !135, !noalias !136, !noundef !4
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %.sroa.0.0.i22, align 8, !alias.scope !135, !noalias !136
  %i.bn = icmp eq ptr %i.am, %.sroa.8.0.copyload25
  br i1 %i.bn, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit20, label %bb.g

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit20: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit, %._crit_edge, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz10decompress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit
  ret void

bb.j:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0109, i64 64 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0109, i64 57
  %i.bq = load i8, ptr %i.bp, align 1, !range !7, !alias.scope !127, !noalias !129, !noundef !4
  %i.br = icmp ne i8 %i.bq, 1                     ; 2 uses
  %..i.i = select i1 %i.br, i64 2, i64 1
  %i.bs = extractvalue { i64, i64 } %i.al, 1      ; 2 uses
  %i.bt = extractvalue { i64, i64 } %i.al, 0      ; 2 uses
  %i.bu = mul i64 %i.bt, %i.bs
  %i.bv = zext i1 %i.br to i64
  %i.bw = shl i64 %i.bu, %i.bv
  %i.bx = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !128, !noundef !4
  %i.by = add i64 %i.bw, %i.bx
  store i64 %i.by, ptr %.sroa.10.0.copyload27, align 8, !noalias !128
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
  %.sroa.0.0.copyload23 = load ptr, ptr %1, align 8, !alias.scope !166, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.8.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload25 = load ptr, ptr %.sroa.8.0..sroa_idx24, align 8, !alias.scope !166, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.10.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.0.copyload27 = load ptr, ptr %.sroa.10.0..sroa_idx26, align 8, !alias.scope !166 ; 6 uses
  %.sroa.11.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.11.0.copyload29 = load ptr, ptr %.sroa.11.0..sroa_idx28, align 8, !alias.scope !166 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.8.0.copyload25 to i64
  %i.b = ptrtoint ptr %.sroa.0.0.copyload23 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 6                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !167, !noalias !168, !noundef !4 ; 4 uses
  %i.g = icmp ugt i64 %i.f, 6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 6)
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !169
  %i.i = select i1 %i.g, i64 %.val.i, i64 %i.f    ; 3 uses
  %i.j = sub i64 %.sink.i.i, %i.i
  %.not.i = icmp ult i64 %i.j, %i.d
  br i1 %.not.i, label %bb.b, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.i, %i.d                       ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i64 %i.k, 2
  %i.n = add i64 %i.k, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = lshr i64 -1, %i.o
  %.sroa.010.0.i = select i1 %i.m, i64 0, i64 %i.p ; 2 uses
  %i.q = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.q, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit, !prof !5

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit: ; preds = %bb.c
  %i.r = add nuw i64 %.sroa.010.0.i, 1
  %i.s = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %i.r) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0        ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 -1, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge
    i64 0, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit.thread
  ], !prof !6

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E11try_reserveBO_.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !170, !noalias !171
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
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4
  %.sink12.i = select i1 %i.w, ptr %i.y, ptr %i.h
  %.sink11.i = select i1 %i.w, ptr %i.h, ptr %i.e ; 4 uses
  %.sink.i9 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 6) ; 3 uses
  %i.z = load i64, ptr %.sink11.i, align 8, !noundef !4 ; 3 uses
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload27) ]
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.ag = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !173, !noundef !4
  %i.ah = load i64, ptr %i.ab, align 8, !noalias !173, !noundef !4
  %i.ai = invoke { i64, i64 } @_RNvMsd_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_18ChannelDescription21subsampled_resolution(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0.0109, i64 noundef %i.ag, i64 noundef %i.ah)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.g:                                             ; preds = %.lr.ph113, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit
  %.sroa.052.0111 = phi ptr [ %.sroa.0.0.lcssa, %.lr.ph113 ], [ %i.aj, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.ak = load i64, ptr %.sroa.10.0.copyload27, align 8, !noalias !175, !noundef !4
  %i.al = load i64, ptr %i.ad, align 8, !noalias !175, !noundef !4
  %i.am = tail call { i64, i64 } @_RNvMsd_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_18ChannelDescription21subsampled_resolution(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.052.0111, i64 noundef %i.ak, i64 noundef %i.al), !noalias !176 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload29) ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 57
  %i.ao = load i8, ptr %i.an, align 1, !range !7, !alias.scope !174, !noalias !176, !noundef !4
  %i.ap = icmp ne i8 %i.ao, 1                     ; 2 uses
  %..i.i13 = select i1 %i.ap, i64 2, i64 1
  %i.aq = extractvalue { i64, i64 } %i.am, 1      ; 2 uses
  %i.ar = extractvalue { i64, i64 } %i.am, 0      ; 2 uses
  %i.as = mul i64 %i.ar, %i.aq
  %i.at = zext i1 %i.ap to i64
  %i.au = shl i64 %i.as, %i.at
  %i.av = load i64, ptr %.sroa.11.0.copyload29, align 8, !noalias !175, !noundef !4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.052.0111, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !174, !noalias !176, !noundef !4
  %i.ay = add i64 %i.au, %i.av
  store i64 %i.ay, ptr %.sroa.11.0.copyload29, align 8, !noalias !175
  %i.az = load i64, ptr %i.e, align 8, !alias.scope !177, !noalias !178, !noundef !4 ; 3 uses
  %i.ba = icmp ugt i64 %i.az, 6
  br i1 %i.ba, label %bb.h, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.ae, align 8, !alias.scope !177, !noalias !178, !nonnull !4, !noundef !4
  %.pre118 = load i64, ptr %i.h, align 8, !alias.scope !179, !noalias !180
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i: ; preds = %bb.g, %bb.h
  %i.bc = phi i64 [ %.pre118, %bb.h ], [ %i.az, %bb.g ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.bb, %bb.h ], [ %i.h, %bb.g ]
  %.sink11.i.i = phi ptr [ %i.h, %bb.h ], [ %i.e, %bb.g ]
  %.sink.i.i21 = phi i64 [ %i.az, %bb.h ], [ 6, %bb.g ]
  %i.bd = icmp eq i64 %i.bc, %.sink.i.i21
  br i1 %i.bd, label %bb.i, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit, !prof !5

bb.i:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E10triple_mutBO_.exit.i
  tail call fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %0), !noalias !180
  %i.be = load ptr, ptr %i.ae, align 8, !alias.scope !179, !noalias !180, !nonnull !4, !noundef !4
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !179, !noalias !180
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
  %i.bh = load i64, ptr %.sroa.0.0.i22, align 8, !alias.scope !179, !noalias !180, !noundef !4
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %.sroa.0.0.i22, align 8, !alias.scope !179, !noalias !180
  %i.bj = icmp eq ptr %i.aj, %.sroa.8.0.copyload25
  br i1 %i.bj, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit20, label %bb.g

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit20: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr11compression3piz11ChannelDataj6_E4pushBO_.exit, %._crit_edge, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvNtNtB1s_11compression3piz8compress0ENtNtNtB9_6traits8iterator8Iterator4nextB1s_.exit
  ret void

bb.j:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload29) ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0109, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0109, i64 57
  %i.bm = load i8, ptr %i.bl, align 1, !range !7, !alias.scope !172, !noalias !181, !noundef !4
  %i.bn = icmp ne i8 %i.bm, 1                     ; 2 uses
  %..i.i = select i1 %i.bn, i64 2, i64 1
  %i.bo = extractvalue { i64, i64 } %i.ai, 1      ; 2 uses
  %i.bp = extractvalue { i64, i64 } %i.ai, 0      ; 2 uses
  %i.bq = mul i64 %i.bp, %i.bo
  %i.br = zext i1 %i.bn to i64
  %i.bs = shl i64 %i.bq, %i.br
  %i.bt = load i64, ptr %.sroa.11.0.copyload29, align 8, !noalias !173, !noundef !4 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0109, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !172, !noalias !181, !noundef !4
  %i.bw = add i64 %i.bs, %i.bt
  store i64 %i.bw, ptr %.sroa.11.0.copyload29, align 8, !noalias !173
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsa_NtCsdsTQD3x2eOp_3exr5imageNtB5_18FlatSampleIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator9size_hint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  %i.d = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !199, !noalias !200, !noundef !4 ; 4 uses
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
  br i1 %i.l, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit.thread, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %i.k, 2
  %i.n = add i64 %i.k, -1
  %i.o = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = lshr i64 -1, %i.o
  %.sroa.010.0.i = select i1 %i.m, i64 0, i64 %i.p ; 2 uses
  %i.q = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.q, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit.thread, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit, !prof !5

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit: ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.010.0.i, 1
  %i.s = call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E8try_growBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.r) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0        ; 2 uses
  switch i64 %i.t, label %bb.c [
    i64 -1, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge
    i64 0, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit.thread
  ], !prof !6

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E11try_reserveBO_.exit
  %.pre48 = load i64, ptr %i.e, align 8, !alias.scope !201, !noalias !202
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
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sink12.i = select i1 %i.w, ptr %i.z, ptr %i.aa
  %.sink11.i = select i1 %i.w, ptr %i.x, ptr %i.e ; 4 uses
  %.sink.i = call i64 @llvm.umax.i64(i64 %i.v, i64 8) ; 3 uses
  %i.ab = load i64, ptr %.sink11.i, align 8, !noundef !4 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, %.sink.i
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
  %storemerge.lcssa = phi i64 [ %i.ab, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ], [ %.sink.i, %bb.i ]
  store i64 %storemerge.lcssa, ptr %.sink11.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.ad = call i64 @_RNvXsa_NtCsdsTQD3x2eOp_3exr5imageNtB5_18FlatSampleIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  %i.ae = and i64 %i.ad, 65535
  %.not42 = icmp eq i64 %i.ae, 65535
  br i1 %.not42, label %._crit_edge45, label %.lr.ph44

.lr.ph44:                                         ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.d

.lr.ph:                                           ; preds = %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit, %bb.i
  %storemerge41 = phi i64 [ %i.ay, %bb.i ], [ %i.ab, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ] ; 4 uses
  %i.ai = invoke i64 @_RNvXsa_NtCsdsTQD3x2eOp_3exr5imageNtB5_18FlatSampleIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.d:                                             ; preds = %.lr.ph44, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E4pushBO_.exit
  %i.aj = phi i64 [ %i.ad, %.lr.ph44 ], [ %i.au, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E4pushBO_.exit ]
  %i.ak = load i64, ptr %i.e, align 8, !alias.scope !203, !noalias !204, !noundef !4 ; 3 uses
  %i.al = icmp ugt i64 %i.ak, 8
  br i1 %i.al, label %bb.e, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit.i26

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.ah, align 8, !alias.scope !203, !noalias !204, !nonnull !4, !noundef !4
  %.pre50 = load i64, ptr %i.ag, align 8, !alias.scope !205
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit.i26

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit.i26: ; preds = %bb.d, %bb.e
  %i.an = phi i64 [ %.pre50, %bb.e ], [ %i.ak, %bb.d ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.am, %bb.e ], [ %i.af, %bb.d ]
  %.sink11.i.i27 = phi ptr [ %i.ag, %bb.e ], [ %i.e, %bb.d ]
  %.sink.i.i28 = phi i64 [ %i.ak, %bb.e ], [ 8, %bb.d ]
  %i.ao = icmp eq i64 %i.an, %.sink.i.i28
  br i1 %i.ao, label %bb.f, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E4pushBO_.exit, !prof !5

bb.f:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit.i26
  call fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
  %i.ap = load ptr, ptr %i.ah, align 8, !alias.scope !205, !nonnull !4, !noundef !4
  %.pre.i = load i64, ptr %i.ag, align 8, !alias.scope !205
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E4pushBO_.exit

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E4pushBO_.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit.i26, %bb.f
  %i.aq = phi i64 [ %.pre.i, %bb.f ], [ %i.an, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit.i26 ]
  %.sroa.04.0.i = phi ptr [ %i.ag, %bb.f ], [ %.sink11.i.i27, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit.i26 ] ; 2 uses
  %.sroa.08.0.i = phi ptr [ %i.ap, %bb.f ], [ %.sink12.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E10triple_mutBO_.exit.i26 ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.08.0.i, i64 %i.aq
  store i64 %i.aj, ptr %i.ar, align 4
  %i.as = load i64, ptr %.sroa.04.0.i, align 8, !alias.scope !205, !noundef !4
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %.sroa.04.0.i, align 8, !alias.scope !205
  %i.au = call i64 @_RNvXsa_NtCsdsTQD3x2eOp_3exr5imageNtB5_18FlatSampleIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  %i.av = and i64 %i.au, 65535
  %.not = icmp eq i64 %i.av, 65535
  br i1 %.not, label %._crit_edge45, label %bb.d

._crit_edge45:                                    ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr5block7samples6Samplej8_E4pushBO_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %._crit_edge45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.h:                                             ; preds = %.lr.ph
  %i.aw = and i64 %i.ai, 65535
  %.not20 = icmp eq i64 %i.aw, 65535
  br i1 %.not20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sink12.i, i64 %storemerge41
  store i64 %i.ai, ptr %i.ax, align 4
  %i.ay = add i64 %storemerge41, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.h
  store i64 %storemerge41, ptr %.sink11.i, align 8
  br label %bb.g

bb.k:                                             ; preds = %.lr.ph
  %i.az = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge41, ptr %.sink11.i, align 8
  resume { ptr, i32 } %i.az
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAhj18_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendhE6extendINtNtBW_8adapters12GenericShuntINtNtB1U_3map3MapNtNtNtBY_3str4iter5CharsNCINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB37_4Text11new_or_noneReE0EINtNtBY_6option6OptionNtNtBY_7convert10InfallibleEEEB3b_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
end_hunk_0
begin_hunk_1_@_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAhj18_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendhE6extendINtNtNtBW_8adapters6cloned6ClonedINtNtNtBY_5slice4iter4IterhEEECsdsTQD3x2eOp_3exr:_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i
  %.sink.i = call i64 @llvm.umax.i64(i64 %i.w, i64 24) ; 3 uses
  %i.ac = load i64, ptr %.sink11.i, align 8, !noundef !4 ; 3 uses
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
  %i.an = load i64, ptr %i.f, align 8, !alias.scope !247, !noalias !248, !noundef !4 ; 3 uses
  %i.ao = icmp ugt i64 %i.an, 24
  br i1 %i.ao, label %bb.e, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.aj, align 8, !alias.scope !247, !noalias !248, !nonnull !4, !noundef !4
  %.pre36 = load i64, ptr %i.ai, align 8, !alias.scope !249
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12: ; preds = %bb.d, %bb.e
  %i.aq = phi i64 [ %.pre36, %bb.e ], [ %i.an, %bb.d ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.ap, %bb.e ], [ %i.ah, %bb.d ]
  %.sink11.i.i13 = phi ptr [ %i.ai, %bb.e ], [ %i.f, %bb.d ]
  %.sink.i.i14 = phi i64 [ %i.an, %bb.e ], [ 24, %bb.d ]
  %i.ar = icmp eq i64 %i.aq, %.sink.i.i14
  br i1 %i.ar, label %bb.f, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E4pushCsdsTQD3x2eOp_3exr.exit, !prof !5

bb.f:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12
  call fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E21reserve_one_uncheckedCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  %i.as = load ptr, ptr %i.aj, align 8, !alias.scope !249, !nonnull !4, !noundef !4
  %.pre.i = load i64, ptr %i.ai, align 8, !alias.scope !249
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E4pushCsdsTQD3x2eOp_3exr.exit

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E4pushCsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12, %bb.f
  %i.at = phi i64 [ %.pre.i, %bb.f ], [ %i.aq, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12 ]
  %.sroa.04.0.i = phi ptr [ %i.as, %bb.f ], [ %.sink12.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12 ]
  %.sroa.0.0.i15 = phi ptr [ %i.ai, %bb.f ], [ %.sink11.i.i13, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i12 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 %i.at
  store i8 %i.am, ptr %i.au, align 1
  %i.av = load i64, ptr %.sroa.0.0.i15, align 8, !alias.scope !249, !noundef !4
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %.sroa.0.0.i15, align 8, !alias.scope !249
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
  %.sroa.0.0.copyload24 = load ptr, ptr %1, align 8, !alias.scope !272 ; 4 uses
  %.sroa.6.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload26 = load i64, ptr %.sroa.6.0..sroa_idx25, align 8, !alias.scope !272 ; 4 uses
  %.sroa.9.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload28 = load i64, ptr %.sroa.9.0..sroa_idx27, align 8, !alias.scope !272 ; 4 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.9.0.copyload28, i64 %.sroa.6.0.copyload26) ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !273, !noalias !274, !noundef !4 ; 4 uses
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
  br i1 %i.h, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.g, 2
  %i.j = add i64 %i.g, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = lshr i64 -1, %i.k
  %.sroa.010.0.i = select i1 %i.i, i64 0, i64 %i.l ; 2 uses
  %i.m = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.m, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit, !prof !5

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  %i.n = add nuw i64 %.sroa.010.0.i, 1
  %i.o = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E8try_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n) ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0        ; 2 uses
  switch i64 %i.p, label %bb.c [
    i64 -1, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge
    i64 0, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread
  ], !prof !6

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit
  %.pre91 = load i64, ptr %i.a, align 8, !alias.scope !275, !noalias !276
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
  %i.t = load ptr, ptr %0, align 8, !alias.scope !275, !noalias !276, !noundef !4 ; 2 uses
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
  %i.x = load i64, ptr %.sink11.i, align 8, !noundef !4 ; 3 uses
  %i.y = icmp ult i64 %i.x, %.sink.i
  br i1 %i.y, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.6.0.copyload26, i64 %.sroa.9.0.copyload28)
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.k, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit
  %.sroa.6.0.lcssa = phi i64 [ %.sroa.6.0.copyload26, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit ], [ %2, %bb.k ] ; 2 uses
  %storemerge.lcssa = phi i64 [ %i.x, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit ], [ %.sink.i, %bb.k ]
  store i64 %storemerge.lcssa, ptr %.sink11.i, align 8
  %i.z = icmp ult i64 %.sroa.6.0.lcssa, %.sroa.9.0.copyload28
  br i1 %i.z, label %.lr.ph73.split.preheader, label %.loopexit

.lr.ph73.split.preheader:                         ; preds = %._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload24) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %.lr.ph73.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.k
  %storemerge64 = phi i64 [ %i.bi, %bb.k ], [ %i.x, %.lr.ph.split.preheader ] ; 4 uses
  %.sroa.6.063 = phi i64 [ %2, %bb.k ], [ %.sroa.6.0.copyload26, %.lr.ph.split.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.6.063, %umax
  br i1 %exitcond.not, label %.split.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload24) ]
  %2 = add i64 %.sroa.6.063, 1                    ; 2 uses
  %i.ab = shl i64 %.sroa.6.063, 2                 ; 3 uses
  %.val.i.i = load i32, ptr %.sroa.0.0.copyload24, align 4, !noalias !277
  %i.ac = icmp ult i64 %i.ab, 32
  br i1 %i.ac, label %.check, label %.split67.us.invoke, !prof !278

.split67.us.invoke:                               ; preds = %.check, %bb.f
  %i.ad = phi ptr [ @4, %bb.f ], [ @5, %.check ]
  %i.ae = phi i64 [ 48, %bb.f ], [ 47, %.check ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24
          to label %.split67.us.cont unwind label %bb.l

.split67.us.cont:                                 ; preds = %.split67.us.invoke
  unreachable

.check:                                           ; preds = %bb.f
  %i.af = icmp samesign ult i64 %i.ab, 29
  br i1 %i.af, label %bb.k, label %.split67.us.invoke, !prof !278

.lr.ph73.split:                                   ; preds = %.lr.ph73.split.preheader, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E4pushCsdsTQD3x2eOp_3exr.exit
  %.sroa.441.071 = phi i64 [ %i.ag, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E4pushCsdsTQD3x2eOp_3exr.exit ], [ %.sroa.6.0.lcssa, %.lr.ph73.split.preheader ] ; 2 uses
  %i.ag = add i64 %.sroa.441.071, 1               ; 2 uses
  %i.ah = shl i64 %.sroa.441.071, 2               ; 3 uses
  %.val.i.i17 = load i32, ptr %.sroa.0.0.copyload24, align 4, !noalias !279
  %i.ai = icmp ult i64 %i.ah, 32
  br i1 %i.ai, label %.check75, label %.split77.us, !prof !278

.split77.us:                                      ; preds = %.lr.ph73.split
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !noalias !279
  unreachable

.check75:                                         ; preds = %.lr.ph73.split
  %i.aj = icmp samesign ult i64 %i.ah, 29
  br i1 %i.aj, label %bb.h, label %bb.g, !prof !278

bb.g:                                             ; preds = %.check75
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !noalias !279
  unreachable

bb.h:                                             ; preds = %.check75
  %i.ak = trunc nuw nsw i64 %i.ah to i32          ; 2 uses
  %i.al = sub nuw nsw i32 28, %i.ak
  %i.am = lshr i32 -1, %i.al
  %i.an = and i32 %.val.i.i17, %i.am
  %i.ao = lshr i32 %i.an, %i.ak
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = load i64, ptr %i.a, align 8, !alias.scope !280, !noalias !281, !noundef !4 ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 8
  %i.as = load ptr, ptr %0, align 8, !alias.scope !280, !noalias !281, !noundef !4 ; 2 uses
  br i1 %i.ar, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = icmp eq ptr %i.as, null
  tail call void @llvm.assume(i1 %i.at)
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20: ; preds = %bb.h, %bb.i
  %.sink12.i.i = phi ptr [ %i.aa, %bb.i ], [ %i.as, %bb.h ] ; 2 uses
  %.sink11.i.i21 = phi ptr [ %i.a, %bb.i ], [ %i.aa, %bb.h ] ; 2 uses
  %.sink.i.i22 = phi i64 [ 8, %bb.i ], [ %i.aq, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink12.i.i) ]
  %i.au = load i64, ptr %.sink11.i.i21, align 8, !alias.scope !282, !noundef !4 ; 2 uses
  %i.av = icmp eq i64 %i.au, %.sink.i.i22
  br i1 %i.av, label %bb.j, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E4pushCsdsTQD3x2eOp_3exr.exit, !prof !5

bb.j:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20
  tail call fastcc void @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E21reserve_one_uncheckedCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !282, !nonnull !4, !noundef !4
  %.pre.i = load i64, ptr %i.aa, align 8, !alias.scope !282
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E4pushCsdsTQD3x2eOp_3exr.exit

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E4pushCsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20, %bb.j
  %i.ax = phi i64 [ %.pre.i, %bb.j ], [ %i.au, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20 ]
  %.sroa.04.0.i = phi ptr [ %i.aw, %bb.j ], [ %.sink12.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20 ]
  %.sroa.0.0.i23 = phi ptr [ %i.aa, %bb.j ], [ %.sink11.i.i21, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E10triple_mutCsdsTQD3x2eOp_3exr.exit.i20 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 %i.ax
  store i8 %i.ap, ptr %i.ay, align 1
  %i.az = load i64, ptr %.sroa.0.0.i23, align 8, !alias.scope !282, !noundef !4
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %.sroa.0.0.i23, align 8, !alias.scope !282
  %exitcond90.not = icmp eq i64 %i.ag, %.sroa.9.0.copyload28
  br i1 %exitcond90.not, label %.loopexit, label %.lr.ph73.split, !llvm.loop !270

.loopexit:                                        ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj8_E4pushCsdsTQD3x2eOp_3exr.exit, %._crit_edge, %.split.us
  ret void

bb.k:                                             ; preds = %.check
  %i.bb = trunc nuw nsw i64 %i.ab to i32          ; 2 uses
  %i.bc = sub nuw nsw i32 28, %i.bb
  %i.bd = lshr i32 -1, %i.bc
  %i.be = and i32 %.val.i.i, %i.bd
  %i.bf = lshr i32 %i.be, %i.bb
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink12.i, i64 %storemerge64
  store i8 %i.bg, ptr %i.bh, align 1
  %i.bi = add i64 %storemerge64, 1                ; 2 uses
  %exitcond89.not = icmp eq i64 %i.bi, %.sink.i
  br i1 %exitcond89.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !271

.split.us:                                        ; preds = %.lr.ph.split
  store i64 %storemerge64, ptr %.sink11.i, align 8
  br label %.loopexit

bb.l:                                             ; preds = %.split67.us.invoke
  %i.bj = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge64, ptr %.sink11.i, align 8
  resume { ptr, i32 } %i.bj
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAjj8_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendjE6extendINtNtNtBV_8adapters3map3MapINtNtNtBX_5slice4iter4IterNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionENCNvMNtNtB2N_5block5linesNtB3K_9LineIndex14lines_in_block0EEB2N_(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload24 = load ptr, ptr %1, align 8, !alias.scope !304, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.8.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload26 = load ptr, ptr %.sroa.8.0..sroa_idx25, align 8, !alias.scope !304, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.1028.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.1028.0.copyload30 = load i64, ptr %.sroa.1028.0..sroa_idx29, align 8, !alias.scope !304 ; 2 uses
  %i.a = ptrtoint ptr %.sroa.8.0.copyload26 to i64
  %i.b = ptrtoint ptr %.sroa.0.0.copyload24 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 6                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !305, !noalias !306, !noundef !4 ; 4 uses
  %i.g = icmp ugt i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 8)
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !307
  %i.i = select i1 %i.g, i64 %.val.i, i64 %i.f    ; 3 uses
  %i.j = sub i64 %.sink.i.i, %i.i
  %.not.i = icmp ult i64 %i.j, %i.d
  br i1 %.not.i, label %bb.b, label %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.i, %i.d                       ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i64 %i.k, 2
  %i.n = add i64 %i.k, -1
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.p = lshr i64 -1, %i.o
  %.sroa.010.0.i = select i1 %i.m, i64 0, i64 %i.p ; 2 uses
  %i.q = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.q, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit, !prof !5

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.c
  %i.r = add nuw i64 %.sroa.010.0.i, 1
  %i.s = tail call fastcc { i64, i64 } @_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E8try_growCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.r) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0        ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 -1, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge
    i64 0, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit.thread
  ], !prof !6

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit._RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit_crit_edge: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E11try_reserveCsdsTQD3x2eOp_3exr.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !308, !noalias !309
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
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4
  %.sink12.i = select i1 %i.w, ptr %i.y, ptr %i.h
  %.sink11.i = select i1 %i.w, ptr %i.h, ptr %i.e ; 3 uses
  %.sink.i14 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 8) ; 3 uses
  %i.z = load i64, ptr %.sink11.i, align 8, !noundef !4 ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sink.i14
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.0.copyload24, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ], [ %i.au, %bb.h ] ; 2 uses
  %storemerge.lcssa = phi i64 [ %i.z, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ], [ %.sink.i14, %bb.h ]
  store i64 %storemerge.lcssa, ptr %.sink11.i, align 8
  %i.ab = icmp eq ptr %.sroa.0.0.lcssa, %.sroa.8.0.copyload26
  br i1 %i.ab, label %.loopexit, label %.lr.ph70

.lr.ph70:                                         ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.e

.lr.ph:                                           ; preds = %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit, %bb.h
  %storemerge66 = phi i64 [ %i.ba, %bb.h ], [ %i.z, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ] ; 3 uses
  %.sroa.0.065 = phi ptr [ %i.au, %bb.h ], [ %.sroa.0.0.copyload24, %_RINvCs8zlGlznUR0G_8smallvec10infallibleuECsdsTQD3x2eOp_3exr.exit ] ; 3 uses
  %i.ad = icmp eq ptr %.sroa.0.065, %.sroa.8.0.copyload26
  br i1 %i.ad, label %bb.i, label %bb.h

bb.e:                                             ; preds = %.lr.ph70, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E4pushCsdsTQD3x2eOp_3exr.exit
  %.sroa.043.068 = phi ptr [ %.sroa.0.0.lcssa, %.lr.ph70 ], [ %i.ae, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAjj8_E4pushCsdsTQD3x2eOp_3exr.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.043.068, i64 64 ; 2 uses
end_hunk_1
