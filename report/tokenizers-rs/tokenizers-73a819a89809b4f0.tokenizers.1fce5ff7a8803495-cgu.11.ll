Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.11?download=true
inline.NumInlined: 1144
inline.NumDeleted: 559
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1N_8Encoding3pads0_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3H_8for_each4callmNCINvMsj_B33_INtB33_3VecmE14extend_trustedBO_E0E0EB1R_:bb.a

.lr.ph.i.preheader17:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.410.0.copyload, %vector.memcheck ], [ %.sroa.410.0.copyload, %.lr.ph.i.preheader ], [ %i.n, %middle.block ]
  %.ph18 = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader17, %.lr.ph.i
  %i.w = phi i64 [ %i.ab, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader17 ] ; 2 uses
  %i.x = phi ptr [ %i.y, %.lr.ph.i ], [ %.ph18, %.lr.ph.i.preheader17 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.x, align 4, !noalias !698, !noundef !5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.611.0.copyload, i64 %i.w
  store i32 %i.z, ptr %i.aa, align 4, !noalias !699
  %i.ab = add i64 %i.w, 1                         ; 2 uses
  %i.ac = icmp eq ptr %i.y, %.sroa.4.0.copyload
  br i1 %i.ac, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !693

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.d
  %.val7.i = phi i64 [ %.sroa.410.0.copyload, %bb.d ], [ %i.n, %middle.block ], [ %i.ab, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.0.copyload) ]
  store i64 %.val7.i, ptr %.sroa.09.0.copyload, align 8, !noalias !700
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4callmNCINvMsj_B8_INtB8_3VecmE14extend_trustedINtNtNtBR_8adapters5chain5ChainINtNtB2U_3map3MapINtNtNtBT_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB48_8Encoding3pads0_0EB3_EE0E0EB4c_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !701, !noundef !5 ; 4 uses
  %i.af = icmp ult i64 %i.ae, 2305843009213693952
  tail call void @llvm.assume(i1 %i.af)
  %.not3.i.i.i.i.i = icmp eq i64 %.sroa.6.0.copyload, %i.ae
  br i1 %.not3.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ag = add i64 %i.ae, %.sroa.7.0.copyload
  store i64 %i.ag, ptr %i.ad, align 8, !noalias !701
  br label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4callmNCINvMsj_B8_INtB8_3VecmE14extend_trustedINtNtNtBR_8adapters5chain5ChainINtNtB2U_3map3MapINtNtNtBT_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB48_8Encoding3pads0_0EB3_EE0E0EB4c_.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !701, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sroa.6.0.copyload
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ae
  %i.al = shl i64 %.sroa.7.0.copyload, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr nonnull align 4 %i.aj, i64 %i.al, i1 false), !noalias !701
  br label %bb.f

bb.h:                                             ; preds = %bb.c
  %.val7 = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load i64, ptr %i.am, align 8, !noundef !5
  store i64 %.val8, ptr %.val7, align 8
  br label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4callmNCINvMsj_B8_INtB8_3VecmE14extend_trustedINtNtNtBR_8adapters5chain5ChainINtNtB2U_3map3MapINtNtNtBT_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB48_8Encoding3pads0_0EB3_EE0E0EB4c_.exit

_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4callmNCINvMsj_B8_INtB8_3VecmE14extend_trustedINtNtNtBR_8adapters5chain5ChainINtNtB2U_3map3MapINtNtNtBT_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB48_8Encoding3pads0_0EB3_EE0E0EB4c_.exit: ; preds = %._crit_edge.i, %bb.f, %bb.h
  ret void

bb.i:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.ao, align 8, !noundef !5
  store i64 %.val6, ptr %.val, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !noundef !5
  %.not12 = icmp eq ptr %i.aq, null
  br i1 %.not12, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  resume { ptr, i32 } %i.an

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(40) %i.ap) #30
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1N_8Encoding3pads1_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtB35_6string6StringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callB3E_NCINvMsj_B33_INtB33_3VecB3E_E14extend_trustedBO_E0E0EB1R_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i = alloca [16 x i8], align 8        ; 4 uses
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !5
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2F_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB3N_3vecINtB4t_3VecB3J_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB4t_5drain5DrainB3J_EEE0E0EB1y_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !5
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !713, !noalias !714, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i = load ptr, ptr %i.a, align 8, !alias.scope !713, !noalias !714 ; 2 uses
  %i.g = icmp eq ptr %.promoted.i, %i.f
  br i1 %i.g, label %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i, label %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i

_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.d, %bb.e
  %i.h = phi i64 [ %i.l, %bb.e ], [ %.sroa.4.0.copyload, %bb.d ] ; 3 uses
  %i.i = phi ptr [ %i.j, %bb.e ], [ %.promoted.i, %bb.d ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %.sroa.0.0.copyload6.i = load i64, ptr %i.i, align 8, !noalias !716 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload6.i, -1
  br i1 %.not.i, label %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.sink.split, label %bb.e

bb.e:                                             ; preds = %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx7.i, i64 16, i1 false), !noalias !717
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload, i64 %i.h ; 2 uses
  store i64 %.sroa.0.0.copyload6.i, ptr %i.k, align 8, !noalias !718
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.i, i64 16, i1 false), !noalias !718
  %i.l = add i64 %i.h, 1                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i)
  %i.m = icmp eq ptr %i.j, %i.f
  br i1 %i.m, label %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.sink.split, label %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i

_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.sink.split: ; preds = %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i, %bb.e
  %.val5.i.ph = phi i64 [ %i.l, %bb.e ], [ %i.h, %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i ]
  store ptr %i.j, ptr %i.a, align 8, !alias.scope !713, !noalias !714
  br label %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i

_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i: ; preds = %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.sink.split, %bb.d
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.d ], [ %.val5.i.ph, %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.sink.split ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !717
  call void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %.val7 = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load i64, ptr %i.n, align 8, !noundef !5
  store i64 %.val8, ptr %.val7, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i
  ret void

bb.h:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.p, align 8, !noundef !5
  store i64 %.val6, ptr %.val, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !noundef !5
  %.not16 = icmp eq ptr %i.r, null
  br i1 %.not16, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j, %bb.h
  resume { ptr, i32 } %i.o

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1N_8Encoding3pads2_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainINtNtBb_6option6OptionmEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4callB3E_NCINvMsj_B33_INtB33_3VecB3E_E14extend_trustedBO_E0E0EB1R_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads2_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2F_8for_each4callINtNtBc_6option6OptionmENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4g_3VecB3J_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB4g_5drain5DrainB3J_EEE0E0EB1y_(i64 noundef %i.d, i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noundef !5 ; 10 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.49.0.copyload = load i64, ptr %.sroa.49.0..sroa_idx, align 8 ; 6 uses
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.610.0.copyload = load ptr, ptr %.sroa.610.0..sroa_idx, align 8 ; 5 uses
  %i.i = icmp eq ptr %i.h, %.sroa.4.0.copyload
  br i1 %i.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %2 = ptrtoaddr ptr %.sroa.4.0.copyload to i64
  %3 = ptrtoaddr ptr %i.h to i64
  %i.j = add i64 %2, -8
  %i.k = sub i64 %i.j, %3                         ; 3 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 136
  br i1 %min.iters.check, label %.lr.ph.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.n = shl i64 %.sroa.49.0.copyload, 3          ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.610.0.copyload, i64 %i.n
  %i.o = and i64 %i.k, -8                         ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.610.0.copyload, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  %scevgep14 = getelementptr i8, ptr %i.q, i64 8
  %i.r = getelementptr i8, ptr %i.h, i64 %i.o
  %scevgep15 = getelementptr i8, ptr %i.r, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep15
  %bound1 = icmp ult ptr %i.h, %scevgep14
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4611686018427387900      ; 4 uses
  %i.s = add i64 %.sroa.49.0.copyload, %n.vec     ; 2 uses
  %i.t = shl i64 %n.vec, 3
  %i.u = getelementptr i8, ptr %i.h, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = add i64 %.sroa.49.0.copyload, %index     ; 2 uses
  %i.w = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.w
  %i.x = getelementptr i8, ptr %i.h, i64 %i.w
  %next.gep16 = getelementptr i8, ptr %i.x, i64 16
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !737, !noalias !738
  %wide.vec18 = load <4 x i32>, ptr %next.gep16, align 4, !alias.scope !737, !noalias !738
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.610.0.copyload, i64 %i.v
  %i.z = getelementptr [8 x i8], ptr %.sroa.610.0.copyload, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  store <4 x i32> %wide.vec, ptr %i.y, align 4, !alias.scope !739, !noalias !740
  store <4 x i32> %wide.vec18, ptr %i.aa, align 4, !alias.scope !739, !noalias !740
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !731

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader23

.lr.ph.i.preheader23:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.49.0.copyload, %vector.memcheck ], [ %.sroa.49.0.copyload, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  %.ph24 = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader23, %.lr.ph.i
  %i.ac = phi i64 [ %i.ah, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader23 ] ; 2 uses
  %i.ad = phi ptr [ %i.ae, %.lr.ph.i ], [ %.ph24, %.lr.ph.i.preheader23 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.610.0.copyload, i64 %i.ac
  %i.ag = load <2 x i32>, ptr %i.ad, align 4, !noalias !738
  store <2 x i32> %i.ag, ptr %i.af, align 4, !noalias !740
  %i.ah = add i64 %i.ac, 1                        ; 2 uses
  %i.ai = icmp eq ptr %i.ae, %.sroa.4.0.copyload
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !732

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.d
  %.val9.i = phi i64 [ %.sroa.49.0.copyload, %bb.d ], [ %i.s, %middle.block ], [ %i.ah, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload) ]
  store i64 %.val9.i, ptr %.sroa.08.0.copyload, align 8, !noalias !741
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtNtBO_4iter6traits8iterator8Iterator4folduNCINvNvB1o_8for_each4callBJ_NCINvMsj_B8_INtB8_3VecBJ_E14extend_trustedINtNtNtB1u_8adapters5chain5ChainINtNtB3m_3map3MapINtNtNtBO_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4B_8Encoding3pads2_0EB3_EE0E0EB4F_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !742, !noundef !5 ; 4 uses
  %i.al = icmp ult i64 %i.ak, 1152921504606846976
  tail call void @llvm.assume(i1 %i.al)
  %.not3.i.i.i.i.i = icmp eq i64 %.sroa.6.0.copyload, %i.ak
  br i1 %.not3.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.am = add i64 %i.ak, %.sroa.7.0.copyload
  store i64 %i.am, ptr %i.aj, align 8, !noalias !742
  br label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtNtBO_4iter6traits8iterator8Iterator4folduNCINvNvB1o_8for_each4callBJ_NCINvMsj_B8_INtB8_3VecBJ_E14extend_trustedINtNtNtB1u_8adapters5chain5ChainINtNtB3m_3map3MapINtNtNtBO_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4B_8Encoding3pads2_0EB3_EE0E0EB4F_.exit

bb.g:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !742, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.sroa.6.0.copyload
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ak
  %i.ar = shl i64 %.sroa.7.0.copyload, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr nonnull align 4 %i.ap, i64 %i.ar, i1 false), !noalias !742
  br label %bb.f

bb.h:                                             ; preds = %bb.c
  %.val6 = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.as, align 8, !noundef !5
  store i64 %.val7, ptr %.val6, align 8
  br label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtNtBO_4iter6traits8iterator8Iterator4folduNCINvNvB1o_8for_each4callBJ_NCINvMsj_B8_INtB8_3VecBJ_E14extend_trustedINtNtNtB1u_8adapters5chain5ChainINtNtB3m_3map3MapINtNtNtBO_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4B_8Encoding3pads2_0EB3_EE0E0EB4F_.exit

_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtNtBO_4iter6traits8iterator8Iterator4folduNCINvNvB1o_8for_each4callBJ_NCINvMsj_B8_INtB8_3VecBJ_E14extend_trustedINtNtNtB1u_8adapters5chain5ChainINtNtB3m_3map3MapINtNtNtBO_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4B_8Encoding3pads2_0EB3_EE0E0EB4F_.exit: ; preds = %._crit_edge.i, %bb.f, %bb.h
  ret void

bb.i:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.au, align 8, !noundef !5
  store i64 %.val5, ptr %.val, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !5
  %.not11 = icmp eq ptr %i.aw, null
  br i1 %.not11, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  resume { ptr, i32 } %i.at

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(40) %i.av) #30
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1N_8Encoding3pads3_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3H_8for_each4callmNCINvMsj_B33_INtB33_3VecmE14extend_trustedBO_E0E0EB1R_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads3_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2F_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3T_3VecmE14extend_trustedINtNtB8_5chain5ChainBN_INtNtB3T_5drain5DrainmEEE0E0EB1y_(i64 noundef %i.d, i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noundef !5 ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.49.0.copyload = load i64, ptr %.sroa.49.0..sroa_idx, align 8 ; 6 uses
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.610.0.copyload = load ptr, ptr %.sroa.610.0..sroa_idx, align 8 ; 3 uses
  %.sroa.610.0.copyload13 = ptrtoaddr ptr %.sroa.610.0.copyload to i64
  %i.j = icmp eq ptr %i.h, %.sroa.4.0.copyload
  br i1 %i.j, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.k = ptrtoaddr ptr %.sroa.4.0.copyload to i64
  %i.l = add i64 %i.k, -4
  %i.m = sub i64 %i.l, %i.i                       ; 2 uses
  %i.n = lshr i64 %i.m, 2
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 60
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.p = shl i64 %.sroa.49.0.copyload, 2
  %i.q = add i64 %i.p, %.sroa.610.0.copyload13
  %i.r = sub i64 %i.i, %i.q
  %diff.check = icmp ugt i64 %i.r, -32
  br i1 %diff.check, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, 9223372036854775800      ; 4 uses
  %i.s = add i64 %.sroa.49.0.copyload, %n.vec     ; 2 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %i.h, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %.sroa.610.0.copyload, i64 %.sroa.49.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !noalias !758
  %wide.load14 = load <4 x i32>, ptr %i.x, align 4, !noalias !758
  %i.y = getelementptr [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %wide.load, ptr %i.y, align 4, !noalias !759
  store <4 x i32> %wide.load14, ptr %i.z, align 4, !noalias !759
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !752

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.49.0.copyload, %vector.memcheck ], [ %.sroa.49.0.copyload, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
end_hunk_0
begin_hunk_1_@_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1N_8Encoding3pads3_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3H_8for_each4callmNCINvMsj_B33_INtB33_3VecmE14extend_trustedBO_E0E0EB1R_:bb.a
_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4callmNCINvMsj_B8_INtB8_3VecmE14extend_trustedINtNtNtBR_8adapters5chain5ChainINtNtB2U_3map3MapINtNtNtBT_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB48_8Encoding3pads3_0EB3_EE0E0EB4c_.exit: ; preds = %._crit_edge.i, %bb.f, %bb.h
  ret void

bb.i:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.at, align 8, !noundef !5
  store i64 %.val5, ptr %.val, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !noundef !5
  %.not11 = icmp eq ptr %i.av, null
  br i1 %.not11, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  resume { ptr, i32 } %i.as

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(40) %i.au) #30
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1N_8Encoding3pads4_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3H_8for_each4callmNCINvMsj_B33_INtB33_3VecmE14extend_trustedBO_E0E0EB1R_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads4_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2F_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3T_3VecmE14extend_trustedINtNtB8_5chain5ChainBN_INtNtB3T_5drain5DrainmEEE0E0EB1y_(i64 noundef %i.d, i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noundef !5 ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.49.0.copyload = load i64, ptr %.sroa.49.0..sroa_idx, align 8 ; 6 uses
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.610.0.copyload = load ptr, ptr %.sroa.610.0..sroa_idx, align 8 ; 3 uses
  %.sroa.610.0.copyload13 = ptrtoaddr ptr %.sroa.610.0.copyload to i64
  %i.j = icmp eq ptr %i.h, %.sroa.4.0.copyload
  br i1 %i.j, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.k = ptrtoaddr ptr %.sroa.4.0.copyload to i64
  %i.l = add i64 %i.k, -4
  %i.m = sub i64 %i.l, %i.i                       ; 2 uses
  %i.n = lshr i64 %i.m, 2
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 60
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.p = shl i64 %.sroa.49.0.copyload, 2
  %i.q = add i64 %i.p, %.sroa.610.0.copyload13
  %i.r = sub i64 %i.i, %i.q
  %diff.check = icmp ugt i64 %i.r, -32
  br i1 %diff.check, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, 9223372036854775800      ; 4 uses
  %i.s = add i64 %.sroa.49.0.copyload, %n.vec     ; 2 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %i.h, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %.sroa.610.0.copyload, i64 %.sroa.49.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !noalias !777
  %wide.load14 = load <4 x i32>, ptr %i.x, align 4, !noalias !777
  %i.y = getelementptr [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %wide.load, ptr %i.y, align 4, !noalias !778
  store <4 x i32> %wide.load14, ptr %i.z, align 4, !noalias !778
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !771

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.49.0.copyload, %vector.memcheck ], [ %.sroa.49.0.copyload, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  %.ph17 = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader16, %.lr.ph.i
  %i.ab = phi i64 [ %i.ag, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader16 ] ; 2 uses
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i ], [ %.ph17, %.lr.ph.i.preheader16 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !noalias !777, !noundef !5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.610.0.copyload, i64 %i.ab
  store i32 %i.ae, ptr %i.af, align 4, !noalias !778
  %i.ag = add i64 %i.ab, 1                        ; 2 uses
  %i.ah = icmp eq ptr %i.ad, %.sroa.4.0.copyload
  br i1 %i.ah, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !772

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.d
  %.val7.i = phi i64 [ %.sroa.49.0.copyload, %bb.d ], [ %i.s, %middle.block ], [ %i.ag, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload) ]
  store i64 %.val7.i, ptr %.sroa.08.0.copyload, align 8, !noalias !779
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4callmNCINvMsj_B8_INtB8_3VecmE14extend_trustedINtNtNtBR_8adapters5chain5ChainINtNtB2U_3map3MapINtNtNtBT_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB48_8Encoding3pads4_0EB3_EE0E0EB4c_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !780, !noundef !5 ; 4 uses
  %i.ak = icmp ult i64 %i.aj, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ak)
  %.not3.i.i.i.i.i = icmp eq i64 %.sroa.6.0.copyload, %i.aj
  br i1 %.not3.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.al = add i64 %i.aj, %.sroa.7.0.copyload
  store i64 %i.al, ptr %i.ai, align 8, !noalias !780
  br label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4callmNCINvMsj_B8_INtB8_3VecmE14extend_trustedINtNtNtBR_8adapters5chain5ChainINtNtB2U_3map3MapINtNtNtBT_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB48_8Encoding3pads4_0EB3_EE0E0EB4c_.exit

bb.g:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !780, !nonnull !5, !noundef !5 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.6.0.copyload
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aj
  %i.aq = shl i64 %.sroa.7.0.copyload, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr nonnull align 4 %i.ao, i64 %i.aq, i1 false), !noalias !780
  br label %bb.f

bb.h:                                             ; preds = %bb.c
  %.val6 = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.ar, align 8, !noundef !5
  store i64 %.val7, ptr %.val6, align 8
  br label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4callmNCINvMsj_B8_INtB8_3VecmE14extend_trustedINtNtNtBR_8adapters5chain5ChainINtNtB2U_3map3MapINtNtNtBT_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB48_8Encoding3pads4_0EB3_EE0E0EB4c_.exit

_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4callmNCINvMsj_B8_INtB8_3VecmE14extend_trustedINtNtNtBR_8adapters5chain5ChainINtNtB2U_3map3MapINtNtNtBT_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB48_8Encoding3pads4_0EB3_EE0E0EB4c_.exit: ; preds = %._crit_edge.i, %bb.f, %bb.h
  ret void

bb.i:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.at, align 8, !noundef !5
  store i64 %.val5, ptr %.val, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !noundef !5
  %.not11 = icmp eq ptr %i.av, null
  br i1 %.not11, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  resume { ptr, i32 } %i.as

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(40) %i.au) #30
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1N_8Encoding3pads5_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callB3E_NCINvMsj_B33_INtB33_3VecB3E_E14extend_trustedBO_E0E0EB1R_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads5_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2F_8for_each4callTjjENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3W_3VecB3J_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB3W_5drain5DrainB3J_EEE0E0EB1y_(i64 noundef %i.d, i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noundef !5 ; 10 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.49.0.copyload = load i64, ptr %.sroa.49.0..sroa_idx, align 8 ; 6 uses
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.610.0.copyload = load ptr, ptr %.sroa.610.0..sroa_idx, align 8 ; 5 uses
  %i.i = icmp eq ptr %i.h, %.sroa.4.0.copyload
  br i1 %i.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %2 = ptrtoaddr ptr %.sroa.4.0.copyload to i64
  %3 = ptrtoaddr ptr %i.h to i64
  %i.j = add i64 %2, -16
  %i.k = sub i64 %i.j, %3                         ; 3 uses
  %i.l = lshr i64 %i.k, 4
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 272
  br i1 %min.iters.check, label %.lr.ph.i.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.n = shl i64 %.sroa.49.0.copyload, 4          ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.610.0.copyload, i64 %i.n
  %i.o = and i64 %i.k, -16                        ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.610.0.copyload, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  %scevgep14 = getelementptr i8, ptr %i.q, i64 16
  %i.r = getelementptr i8, ptr %i.h, i64 %i.o
  %scevgep15 = getelementptr i8, ptr %i.r, i64 16
  %bound0 = icmp ult ptr %scevgep, %scevgep15
  %bound1 = icmp ult ptr %i.h, %scevgep14
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 2305843009213693950      ; 4 uses
  %i.s = add i64 %.sroa.49.0.copyload, %n.vec     ; 2 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.h, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = add i64 %.sroa.49.0.copyload, %index     ; 2 uses
  %i.w = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.w
  %i.x = getelementptr i8, ptr %i.h, i64 %i.w
  %next.gep16 = getelementptr i8, ptr %i.x, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !800, !noalias !801
  %wide.load17 = load <2 x i64>, ptr %next.gep16, align 8, !alias.scope !800, !noalias !801
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.610.0.copyload, i64 %i.v
  %i.z = getelementptr [16 x i8], ptr %.sroa.610.0.copyload, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  store <2 x i64> %wide.load, ptr %i.y, align 8, !alias.scope !802, !noalias !803
  store <2 x i64> %wide.load17, ptr %i.aa, align 8, !alias.scope !802, !noalias !803
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !794

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader19

.lr.ph.i.preheader19:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.49.0.copyload, %vector.memcheck ], [ %.sroa.49.0.copyload, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  %.ph20 = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader19, %.lr.ph.i
  %i.ac = phi i64 [ %i.ah, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader19 ] ; 2 uses
  %i.ad = phi ptr [ %i.ae, %.lr.ph.i ], [ %.ph20, %.lr.ph.i.preheader19 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sroa.610.0.copyload, i64 %i.ac
  %i.ag = load <2 x i64>, ptr %i.ad, align 8, !noalias !801
  store <2 x i64> %i.ag, ptr %i.af, align 8, !noalias !804
  %i.ah = add i64 %i.ac, 1                        ; 2 uses
  %i.ai = icmp eq ptr %i.ae, %.sroa.4.0.copyload
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !795

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.d
  %.val5.i = phi i64 [ %.sroa.49.0.copyload, %bb.d ], [ %i.s, %middle.block ], [ %i.ah, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.08.0.copyload, align 8, !noalias !805
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvBO_8for_each4callBJ_NCINvMsj_B8_INtB8_3VecBJ_E14extend_trustedINtNtNtBU_8adapters5chain5ChainINtNtB31_3map3MapINtNtNtBW_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4f_8Encoding3pads5_0EB3_EE0E0EB4j_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !806, !noundef !5 ; 4 uses
  %i.al = icmp ult i64 %i.ak, 576460752303423488
  tail call void @llvm.assume(i1 %i.al)
  %.not3.i.i.i.i.i = icmp eq i64 %.sroa.6.0.copyload, %i.ak
  br i1 %.not3.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.am = add i64 %i.ak, %.sroa.7.0.copyload
  store i64 %i.am, ptr %i.aj, align 8, !noalias !806
  br label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvBO_8for_each4callBJ_NCINvMsj_B8_INtB8_3VecBJ_E14extend_trustedINtNtNtBU_8adapters5chain5ChainINtNtB31_3map3MapINtNtNtBW_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4f_8Encoding3pads5_0EB3_EE0E0EB4j_.exit

bb.g:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !806, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.sroa.6.0.copyload
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ak
  %i.ar = shl i64 %.sroa.7.0.copyload, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr nonnull align 8 %i.ap, i64 %i.ar, i1 false), !noalias !806
  br label %bb.f

bb.h:                                             ; preds = %bb.c
  %.val6 = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.as, align 8, !noundef !5
  store i64 %.val7, ptr %.val6, align 8
  br label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvBO_8for_each4callBJ_NCINvMsj_B8_INtB8_3VecBJ_E14extend_trustedINtNtNtBU_8adapters5chain5ChainINtNtB31_3map3MapINtNtNtBW_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4f_8Encoding3pads5_0EB3_EE0E0EB4j_.exit

_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvBO_8for_each4callBJ_NCINvMsj_B8_INtB8_3VecBJ_E14extend_trustedINtNtNtBU_8adapters5chain5ChainINtNtB31_3map3MapINtNtNtBW_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4f_8Encoding3pads5_0EB3_EE0E0EB4j_.exit: ; preds = %._crit_edge.i, %bb.f, %bb.h
  ret void

bb.i:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.au, align 8, !noundef !5
  store i64 %.val5, ptr %.val, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !5
  %.not11 = icmp eq ptr %i.aw, null
  br i1 %.not11, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  resume { ptr, i32 } %i.at

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainTjjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(40) %i.av) #30
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1N_8Encoding3pads_0EINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainmEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3G_8for_each4callmNCINvMsj_B32_INtB32_3VecmE14extend_trustedBO_E0E0EB1R_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2E_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3S_3VecmE14extend_trustedINtNtB8_5chain5ChainBN_INtNtB3S_5drain5DrainmEEE0E0EB1y_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !noundef !5 ; 7 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.not4 = icmp eq ptr %i.c, null
  br i1 %.not4, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.09.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.410.0.copyload = load i64, ptr %.sroa.410.0..sroa_idx, align 8 ; 6 uses
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.611.0.copyload = load ptr, ptr %.sroa.611.0..sroa_idx, align 8 ; 3 uses
  %.sroa.611.0.copyload14 = ptrtoaddr ptr %.sroa.611.0.copyload to i64
  %i.e = icmp eq ptr %i.c, %.sroa.4.0.copyload
  br i1 %i.e, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.f = ptrtoaddr ptr %.sroa.4.0.copyload to i64
  %i.g = add i64 %i.f, -4
  %i.h = sub i64 %i.g, %i.d                       ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 60
  br i1 %min.iters.check, label %.lr.ph.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.k = shl i64 %.sroa.410.0.copyload, 2
  %i.l = add i64 %i.k, %.sroa.611.0.copyload14
  %i.m = sub i64 %i.d, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  br i1 %diff.check, label %.lr.ph.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 9223372036854775800      ; 4 uses
  %i.n = add i64 %.sroa.410.0.copyload, %n.vec    ; 2 uses
  %i.o = shl i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr [4 x i8], ptr %.sroa.611.0.copyload, i64 %.sroa.410.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !noalias !822
  %wide.load15 = load <4 x i32>, ptr %i.s, align 4, !noalias !822
  %i.t = getelementptr [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %wide.load, ptr %i.t, align 4, !noalias !823
  store <4 x i32> %wide.load15, ptr %i.u, align 4, !noalias !823
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !816

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader17

.lr.ph.i.preheader17:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.410.0.copyload, %vector.memcheck ], [ %.sroa.410.0.copyload, %.lr.ph.i.preheader ], [ %i.n, %middle.block ]
  %.ph18 = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader17, %.lr.ph.i
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBU_14UnigramTrainer21prune_sentence_pieces0INtB6_5FnMutTRSTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEE8call_mutB10_:bb.a
  store i64 %i.cr, ptr %i.ck, align 8, !alias.scope !2433, !noalias !2421
  call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  call void @llvm.experimental.noalias.scope.decl(metadata !2435)
  %i.cs = load ptr, ptr %i.b, align 8, !alias.scope !2436, !noalias !2421, !nonnull !5, !noundef !5 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !2437, !noundef !5
  %i.cu = add i64 %i.ct, -1                       ; 2 uses
  store i64 %i.cu, ptr %i.cs, align 8, !noalias !2437
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit21.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit21.i unwind label %bb.r, !noalias !2421

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit21.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2421
  %i.cw = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2438, !noalias !2421, !nonnull !5, !noundef !5
  %i.cx = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2438, !noalias !2421, !nonnull !5, !noundef !5 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cw
  br i1 %i.cy, label %._crit_edge.i, label %.lr.ph.i

bb.ac:                                            ; preds = %bb.d, %bb.k, %bb.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB25_.exit.i
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.ac, %bb.c, %bb.j
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2421
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.d
  resume { ptr, i32 } %.pn.pn.pn.pn.i

_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer21prune_sentence_pieces0Bc_.exit: ; preds = %bb.t, %bb.g
  %.sroa.0.0.lcssa.i = phi double [ 0.000000e+00, %bb.g ], [ %i.be, %bb.t ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !2439
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !2439
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.0.0.lcssa.i, ptr %i.db, align 8, !alias.scope !2418, !noalias !2439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2421
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBU_14UnigramTrainer21prune_sentence_piecess0_0INtB6_5FnMutTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB2P_IB2P_jEEEB2M_EE8call_mutB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  call fastcc void @_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer21prune_sentence_piecess0_0Bc_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtCseKCDlm5CXZl_4rand5distr7uniformNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !9, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 9, i64 10
  %.1 = select i1 %i.b, ptr @126, ptr @125
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB5_26UnigramTrainerBuilderErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !11, !noundef !5
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @129)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.b, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 18, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @127)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtCsgo2jZVVEzqi_9indicatif5styleNtB5_13TemplateErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @131, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtCsgo2jZVVEzqi_9indicatif5styleNtB5_5StateNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !23, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsp_NtCsgo2jZVVEzqi_9indicatif5styleNtB5_5StateNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsp_NtCsgo2jZVVEzqi_9indicatif5styleNtB5_5StateNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.186, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBQ_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 576460752303423488) i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringdEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 5
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterdENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutTjjEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainer19UnigramTrainerErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionBa_(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @144, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainer19UnigramTrainerErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeBa_(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainer19UnigramTrainerErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceBa_(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainer19UnigramTrainerErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideBa_(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainer19UnigramTrainerErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @145, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_11descriptionCs2JiOgHzbbc7_10tokenizers(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr @144, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_6sourceCs2JiOgHzbbc7_10tokenizers(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_7provideCs2JiOgHzbbc7_10tokenizers(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_7type_idCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @146, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTRcRjENCINvMB6_SBT_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1H_10BpeTrainer16compute_alphabets_0E0EB1N_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRcRjENCINvMB8_SB1m_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2b_10BpeTrainer16compute_alphabets_0E0EB2h_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTRcRjENCINvMB6_SBT_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1H_10BpeTrainer16compute_alphabets0_0E0EB1N_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRcRjENCINvMB8_SB1m_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2b_10BpeTrainer16compute_alphabets0_0E0EB2h_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtNtNtCseKCDlm5CXZl_4rand5distr7uniform5floatINtB6_12UniformFloatdENtB8_14UniformSampler3newddECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), double noundef, double noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #18

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullEBK_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXNtNtBW_14pre_tokenizers4bertNtB54_16BertPreTokenizerNtBU_12PreTokenizer12pre_tokenize0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXNtNtBW_14pre_tokenizers4bertNtB54_16BertPreTokenizerNtBU_12PreTokenizer12pre_tokenizes_0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXs0_NtNtBW_14pre_tokenizers10byte_levelNtB57_9ByteLevelNtBU_12PreTokenizer12pre_tokenize0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXs0_NtNtBW_14pre_tokenizers10whitespaceNtB57_15WhitespaceSplitNtBU_12PreTokenizer12pre_tokenize0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXs0_NtNtBW_14pre_tokenizers11punctuationNtB57_11PunctuationNtBU_12PreTokenizer12pre_tokenize0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXs0_NtNtBW_14pre_tokenizers6digitsNtB57_6DigitsNtBU_12PreTokenizer12pre_tokenize0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXs0_NtNtBW_14pre_tokenizers6digitsNtB57_6DigitsNtBU_12PreTokenizer12pre_tokenizes_0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXs0_NtNtNtBW_14pre_tokenizers15unicode_scripts13pre_tokenizerNtB57_14UnicodeScriptsNtBU_12PreTokenizer12pre_tokenize0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXs2_NtNtBW_14pre_tokenizers9metaspaceNtB57_9MetaspaceNtBU_12PreTokenizer12pre_tokenize0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXs4_NtNtBW_14pre_tokenizers5splitNtB57_5SplitNtBU_12PreTokenizer12pre_tokenize0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXs4_NtNtBW_14pre_tokenizers5splitNtB57_5SplitNtBU_12PreTokenizer12pre_tokenizes_0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXs_NtNtBW_14pre_tokenizers10whitespaceNtB56_10WhitespaceNtBU_12PreTokenizer12pre_tokenize0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXs_NtNtBW_14pre_tokenizers12fixed_lengthNtB56_11FixedLengthNtBU_12PreTokenizer12pre_tokenize0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtBU_10normalizer16NormalizedStringENCINvMs0_BS_NtBS_18PreTokenizedString5splitNCNvXs_NtNtBW_14pre_tokenizers9delimiterNtB56_18CharDelimiterSplitNtBU_12PreTokenizer12pre_tokenize0IBH_B3G_EB3G_E0EE11spec_extendBW_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtCshgwszQZps6S_11compact_str13CompactStringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTmmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRhECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRjECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB29_14UnigramTrainer14required_chars0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenNtNtNtBc_3str4iter5CharsuNCINvNvXsi_B4v_B4I_B3G_4fold7flattenB5p_uQNCINvB6_8map_foldcB1o_uNCB24_s_0NCIB6x_B1o_TB1o_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7s_7HashSetB1o_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB3K_7collect6ExtendB1o_E6extendIBO_INtNtB8_5chain5ChainINtB4v_7FlatMapBX_B5p_B22_EINtNtB8_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6R_EE0NCINvNvB3G_8for_each4callB7b_NCINvXs1i_NtB7u_3mapINtBcw_7HashMapB1o_uB8f_EIB96_B7b_E6extendIBO_B9F_B7j_EE0E0E0E0E0E0EB2f_(ptr noundef nonnull, ptr noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs2AWtUsOyxgP_3std3env4__var(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_INtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEENtNtNtB11_3ops4drop4Drop4dropB1F_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_jEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBJ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtBX_3ops4drop4Drop4dropB1B_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCshgwszQZps6S_11compact_str13CompactStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainer5MergeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtB7_6string6StringRyEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRcRjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTTmmEmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTciEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecThciEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjRTNtNtB7_6string6StringmEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjcEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_2
